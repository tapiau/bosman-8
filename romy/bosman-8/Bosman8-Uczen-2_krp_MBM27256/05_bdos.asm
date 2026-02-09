; =============================================================================
; MODULE 5: BDOS (Basic Disk Operating System) DISPATCHER AND CHARACTER I/O
; Bosman-8 "Uczen-2" Polish Educational Computer -- CPM/R v2.5
; Address range: 0x0CC9 - 0x0DF1
; =============================================================================
;
; This module contains the BDOS entry point and dispatcher for the Bosman-8
; computer running CPM/R v2.5 (a Polish CP/M 2.2 variant). It is the main
; operating system API, called via the standard CP/M entry at 0x0005:
;   JP bdos_main (0x0CC9)
;
; Contents:
;   0x0CC9-0x0CEF  bdos_main: Primary BDOS entry (called from 0x0005)
;   0x0CF0-0x0CFE  Character I/O path (functions 0x00-0x0C, light stack)
;   0x0CFF-0x0D38  bdos_alt_entry: Alternate BDOS entry (internal use)
;   0x0D39-0x0D53  char_io_dispatch: Character I/O function dispatcher
;   0x0D54-0x0D59  char_io_epilog: Return handler for char I/O functions
;   0x0D5A-0x0D9F  disk_fn_dispatch: Disk function dispatcher + epilog
;   0x0DA0-0x0DF1  bdos_fn_table: BDOS function dispatch table (41 entries)
;   0x0DF2-0x0EF0  Character I/O function implementations:
;       0x0DF2       BDOS 1:  Console input (CONIN with echo)
;       0x0DFF       Console output helper (with ctrl char handling)
;       0x0E0E       BDOS 2:  Console output (CONOUT)
;       0x0E14       Tab expansion (output spaces to next 8-col boundary)
;       0x0E21       Check if character is control/printable
;       0x0E30       Console status check with Ctrl+S/Ctrl+C handling
;       0x0E53       Output CR+LF sequence
;       0x0E5A       Core character output (CONOUT + optional LIST echo)
;       0x0E90       BDOS 3:  Reader input (READER)
;       0x0E96       BDOS 6:  Direct console I/O
;       0x0EB1       Console status (check type-ahead buffer first)
;       0x0EB9       Console input (check type-ahead buffer first)
;       0x0EC4       BDOS 7:  Get I/O byte
;       0x0ECD       BDOS 8:  Set I/O byte
;       0x0ED2       BDOS 9:  Print string ($-terminated)
;       0x0EE2       BDOS 10: Read console buffer (buffered line input)
;
; Calling convention (standard CP/M):
;   Entry: C = function number (0-40), DE = parameter
;   Exit:  A = result (low byte), BA = result (16-bit), HL = result (16-bit)
;
; Stack switching:
;   Functions 0x00-0x0C (char I/O): uses light stack at 0xF160
;   Functions 0x0D+    (disk ops):  uses full stack at 0xF180
;   The caller's SP is saved and restored around the call.
;
; Key RAM variables:
;   0xF039  = Current drive number (for disk operations)
;   0xF03E  = Error flag (set on disk operation errors)
;   0xF03F  = Error detail byte
;   0xF040  = Drive number for error recovery
;   0xF050  = DE parameter save (disk functions)
;   0xF052  = Return value (HL) for disk functions
;   0xF054  = Saved SP for disk function stack switching
;   0xF056  = Output suppress flag (nonzero = suppress CONOUT to device)
;   0xF057  = Starting column position (for line editing erase)
;   0xF058  = Current column position (cursor X position)
;   0xF059  = Type-ahead character buffer (0 = empty)
;   0xF05A  = DE parameter save (char I/O functions)
;   0xF05C  = Return value (HL) for char I/O functions
;   0xF05E  = Saved SP for char I/O stack switching
;   0xFFB0  = BDOS state flags:
;               bit 0: BDOS active (disk operation in progress)
;               bit 1: deferred call flag (call sub_46a2h on exit)
;
; BIOS jump table (in RAM at 0xF200):
;   0xF203 = Warm boot (BIOS function 1)
;   0xF206 = CONST - console status
;   0xF209 = CONIN - console input
;   0xF20C = CONOUT - console output
;   0xF20F = LIST - printer output
;   0xF212 = PUNCH - punch output
;   0xF215 = READER - reader input
;   0xF26B = System flags byte (bit 6 = serial echo enabled)
;
; Other routines referenced:
;   sub_0011h (0x0011) = Read byte at (HL) via bank-switched memory
;   sub_46a2h (0x46A2) = Deferred system function (called when bit 1 of 0xFFB0 set)
;   sub_1014h (0x1014) = Disk function: select disk / compare drive
;   0xF00B             = Return from alternate BDOS entry (jump target in RAM)
;
; =============================================================================

; =============================================================================
; bdos_main - Primary BDOS entry point
; =============================================================================
; Called from address 0x0005 (JP 0x0CC9). This is the main CP/M system call
; entry. All user programs invoke BDOS functions through this entry.
;
; Entry: C = BDOS function number (0-40)
;        DE = parameter (meaning depends on function)
; Exit:  A = return value (low byte)
;        B = return value (high byte), BA = 16-bit result
;        HL = same as BA for compatibility
;
; The dispatcher first checks if the function is a character I/O function
; (0x00-0x0C) or a disk/file function (0x0D+). Disk functions require a
; heavier stack and set the "BDOS active" flag at 0xFFB0 bit 0. Character
; I/O functions use a lighter stack at 0xF160.
; =============================================================================

bdos_main:
	ld a,c			;0cc9	79	; A = BDOS function number
	cp 00dh			;0cca	fe 0d	; Is function < 13 (0x0D)?
	jr c,bdos_char_io	;0ccc	38 22	; Yes: branch to char I/O path (lighter stack)

	; --- Disk/file function path (function >= 0x0D) ---
	ld (disk_saved_sp),sp	;0cce	ed 73 54 f0	; Save caller's stack pointer
	ld sp,0f180h		;0cd2	31 80 f1	; Switch to BDOS disk operations stack

	push hl			;0cd5	e5		; Preserve HL
	ld hl,0ffb0h		;0cd6	21 b0 ff	; HL -> BDOS state flags
	set 0,(hl)		;0cd9	cb c6		; Set bit 0: "BDOS disk op active"
	pop hl			;0cdb	e1		; Restore HL

	call disk_fn_dispatch	;0cdc	cd 5a 0d	; Dispatch the disk function

	ld sp,(disk_saved_sp)	;0cdf	ed 7b 54 f0	; Restore caller's stack pointer

	push hl			;0ce3	e5		; Preserve return value in HL
	ld hl,0ffb0h		;0ce4	21 b0 ff	; HL -> BDOS state flags
	res 0,(hl)		;0ce7	cb 86		; Clear bit 0: "BDOS no longer active"
	bit 1,(hl)		;0ce9	cb 4e		; Test bit 1: deferred call pending?
	pop hl			;0ceb	e1		; Restore return value
	call nz,sub_46a2h	;0cec	c4 a2 46	; If bit 1 set, call deferred handler
	ret			;0cef	c9		; Return to caller

; =============================================================================
; bdos_char_io - Character I/O entry path (functions 0x00-0x0C)
; =============================================================================
; Uses a lighter stack at 0xF160 since character I/O functions don't need
; the full disk workspace. Saves/restores caller's SP separately.
; =============================================================================

bdos_char_io:
	ld (char_saved_sp),sp	;0cf0	ed 73 5e f0	; Save caller's stack pointer
	ld sp,0f160h		;0cf4	31 60 f1	; Switch to char I/O stack
	call char_io_dispatch	;0cf7	cd 39 0d	; Dispatch the character I/O function
	ld sp,(char_saved_sp)	;0cfa	ed 7b 5e f0	; Restore caller's stack pointer
	ret			;0cfe	c9		; Return to caller

; =============================================================================
; bdos_alt_entry - Alternate BDOS entry point (internal use)
; =============================================================================
; This is an alternate BDOS entry used internally (e.g., by the CCP or other
; system code). It works like bdos_main but returns via JP 0xF00B instead of
; RET, allowing a RAM-based hook to intercept the return.
;
; Entry/Exit: same as bdos_main
; =============================================================================

bdos_alt_entry:
	ld a,c			;0cff	79		; A = BDOS function number
	cp 00dh			;0d00	fe 0d		; Is function < 13?
	jr c,bdos_alt_char_io	;0d02	38 24		; Yes: branch to char I/O path

	; --- Disk/file function path (alternate entry) ---
	ld (disk_saved_sp),sp	;0d04	ed 73 54 f0	; Save caller's stack pointer
	ld sp,0f180h		;0d08	31 80 f1	; Switch to BDOS disk stack

bdos_alt_set_active:
	push hl			;0d0b	e5		; Preserve HL
	ld hl,0ffb0h		;0d0c	21 b0 ff	; HL -> BDOS state flags
	set 0,(hl)		;0d0f	cb c6		; Set bit 0: "BDOS disk op active"
	pop hl			;0d11	e1		; Restore HL

	call disk_fn_dispatch	;0d12	cd 5a 0d	; Dispatch the disk function

	ld sp,(disk_saved_sp)	;0d15	ed 7b 54 f0	; Restore caller's stack pointer

bdos_alt_clear_active:
	push hl			;0d19	e5		; Preserve return value in HL
	ld hl,0ffb0h		;0d1a	21 b0 ff	; HL -> BDOS state flags
	res 0,(hl)		;0d1d	cb 86		; Clear bit 0: "BDOS no longer active"
	bit 1,(hl)		;0d1f	cb 4e		; Test bit 1: deferred call pending?
	pop hl			;0d21	e1		; Restore return value
	call nz,sub_46a2h	;0d22	c4 a2 46	; If bit 1 set, call deferred handler

bdos_alt_return:
	jp 0f00bh		;0d25	c3 0b f0	; Return via RAM jump (system hook)

; --- Character I/O path for alternate entry ---
bdos_alt_char_io:
	ld (char_saved_sp),sp	;0d28	ed 73 5e f0	; Save caller's stack pointer
	ld sp,0f160h		;0d2c	31 60 f1	; Switch to char I/O stack
	call char_io_dispatch	;0d2f	cd 39 0d	; Dispatch the character I/O function
	ld sp,(char_saved_sp)	;0d32	ed 7b 5e f0	; Restore caller's stack pointer
	jp 0f00bh		;0d36	c3 0b f0	; Return via RAM jump (system hook)

; =============================================================================
; char_io_dispatch - Dispatcher for character I/O functions (0x00-0x0C)
; =============================================================================
; Looks up the function handler address from bdos_fn_table and jumps to it.
; The return address (char_io_epilog) is pushed on the stack so the handler
; returns here automatically.
;
; Entry: C = function number (0x00-0x0C), E = parameter
; Exit:  A = result, HL = result (via char_io_epilog)
; =============================================================================

char_io_dispatch:
	ld (char_io_param),de	;0d39	ed 53 5a f0	; Save DE parameter
	ld hl,0000h		;0d3d	21 00 00	; HL = 0 (default return value)
	ld (char_io_result),hl	;0d40	22 5c f0	; Initialize return value to 0
	ld hl,char_io_epilog	;0d43	21 54 0d	; HL = return address after function
	push hl			;0d46	e5		; Push return address on stack

	ld hl,bdos_fn_table	;0d47	21 a0 0d	; HL -> function dispatch table
	ld b,000h		;0d4a	06 00		; B = 0 (BC = function number as 16-bit)
	add hl,bc		;0d4c	09		; HL += function number
	add hl,bc		;0d4d	09		; HL += function number (each entry = 2 bytes)
	ld a,(hl)		;0d4e	7e		; A = low byte of handler address
	inc hl			;0d4f	23		; Point to high byte
	ld h,(hl)		;0d50	66		; H = high byte of handler address

char_io_jump:
	ld l,a			;0d51	6f		; L = low byte; HL = handler address
	ld c,e			;0d52	4b		; C = E (parameter byte for handler)
	jp (hl)			;0d53	e9		; Jump to function handler

; =============================================================================
; char_io_epilog - Return handler for character I/O functions
; =============================================================================
; Called when a char I/O function handler returns. Retrieves the return
; value from 0xF05C and returns it in A, B, HL.
;
; Exit: A = low byte of result
;       B = high byte of result
;       HL = result word
; =============================================================================

char_io_epilog:
	ld hl,(char_io_result)	;0d54	2a 5c f0	; HL = return value from function
	ld b,h			;0d57	44		; B = high byte of result
	ld a,l			;0d58	7d		; A = low byte of result
	ret			;0d59	c9		; Return to char_io_dispatch caller

; =============================================================================
; disk_fn_dispatch - Dispatcher for disk/file functions (0x0D-0x28)
; =============================================================================
; Similar to char_io_dispatch but with additional setup for disk operations.
; Saves parameters, initializes error flags, and validates function number
; (must be < 0x29 = 41). After the function returns, checks for disk errors
; and may call sub_1014h for drive reselection if needed.
;
; Entry: C = function number (0x0D-0x28), DE = parameter (e.g., FCB pointer)
; Exit:  A = result, B = high byte, HL = result
; =============================================================================

disk_fn_dispatch:
	ld (disk_fn_param),de	;0d5a	ed 53 50 f0	; Save DE parameter (typically FCB pointer)
	ld a,e			;0d5e	7b		; A = low byte of parameter
	ld (0f039h),a		;0d5f	32 39 f0	; Store as current drive number / FCB drive
	ld hl,0000h		;0d62	21 00 00	; HL = 0 (default return value)
	ld (disk_fn_result),hl	;0d65	22 52 f0	; Initialize return value to 0
	ld (0f03eh),hl		;0d68	22 3e f0	; Clear error flag and detail bytes
	ld b,h			;0d6b	44		; B = 0

	ld hl,disk_fn_epilog	;0d6c	21 7f 0d	; HL = return address after function
	push hl			;0d6f	e5		; Push return address on stack

	ld a,c			;0d70	79		; A = function number
	cp 029h			;0d71	fe 29		; Is function >= 41 (0x29)?
	ret nc			;0d73	d0		; Yes: invalid, return immediately (no-op)

	ld hl,bdos_fn_table	;0d74	21 a0 0d	; HL -> function dispatch table
	add hl,bc		;0d77	09		; HL += function number
	add hl,bc		;0d78	09		; HL += function number (2 bytes per entry)
	ld a,(hl)		;0d79	7e		; A = low byte of handler address
	inc hl			;0d7a	23		; Point to high byte
	ld h,(hl)		;0d7b	66		; H = high byte of handler address
	ld l,a			;0d7c	6f		; L = low byte; HL = handler address
	ld c,e			;0d7d	4b		; C = E (low byte of parameter)
	jp (hl)			;0d7e	e9		; Jump to function handler

; =============================================================================
; disk_fn_epilog - Return handler for disk/file functions
; =============================================================================
; Called when a disk function handler returns. Checks if an error occurred
; during the operation. If error flag (0xF03E) is set, it zeros the FCB
; pointed to by the original DE parameter, and optionally calls the disk
; selector (sub_1014h) for drive recovery.
;
; Exit: A = low byte of result
;       B = high byte of result
;       HL = result word
; =============================================================================

disk_fn_epilog:
	ld a,(0f03eh)		;0d7f	3a 3e f0	; A = error flag
	or a			;0d82	b7		; Test if error occurred
	jr z,disk_fn_return	;0d83	28 15		; No error: skip to normal return

	; --- Error recovery path ---
	ld hl,(disk_fn_param)	;0d85	2a 50 f0	; HL -> original DE param (FCB pointer)
	ld (hl),000h		;0d88	36 00		; Zero first byte of FCB (clear drive field)

	ld a,(0f03fh)		;0d8a	3a 3f f0	; A = error detail byte
	or a			;0d8d	b7		; Is there additional error info?
	jr z,disk_fn_return	;0d8e	28 0a		; No: just return

	ld (hl),a		;0d90	77		; Store error detail into FCB byte 0
	ld a,(0f040h)		;0d91	3a 40 f0	; A = drive number for error recovery
	ld (0f039h),a		;0d94	32 39 f0	; Set as current drive
	call sub_1014h		;0d97	cd 14 10	; Call disk selector for drive reselection

disk_fn_return:
	ld hl,(disk_fn_result)	;0d9a	2a 52 f0	; HL = return value from function
	ld a,l			;0d9d	7d		; A = low byte of result

disk_fn_set_b:
	ld b,h			;0d9e	44		; B = high byte of result
	ret			;0d9f	c9		; Return to disk_fn_dispatch caller

; =============================================================================
; bdos_fn_table - BDOS Function Dispatch Table
; =============================================================================
; Table of 41 two-byte addresses (low byte, high byte) for BDOS functions
; 0x00 through 0x28. Used by both char_io_dispatch and disk_fn_dispatch.
;
; Functions 0x00-0x0C: Character I/O (dispatched via char_io_dispatch)
; Functions 0x0D-0x28: Disk/file ops (dispatched via disk_fn_dispatch)
; =============================================================================

bdos_fn_table:
	; --- Character I/O functions (0x00-0x0C) ---
	dw 0f203h		;0da0	03 f2	; Func 00: System Reset     -> 0xF203 (BIOS warm boot)
	dw bdos_fn01_conin	;0da2	f2 0d	; Func 01: Console Input    -> 0x0DF2 (CONIN with echo)
	dw bdos_fn02_conout	;0da4	0e 0e	; Func 02: Console Output   -> 0x0E0E (CONOUT)
	dw bdos_fn03_reader	;0da6	90 0e	; Func 03: Reader Input     -> 0x0E90 (AUX/Reader in)
	dw 0f212h		;0da8	12 f2	; Func 04: Punch Output     -> 0xF212 (BIOS PUNCH direct)
	dw 0f20fh		;0daa	0f f2	; Func 05: List Output      -> 0xF20F (BIOS LIST direct)
	dw bdos_fn06_directio	;0dac	96 0e	; Func 06: Direct Console   -> 0x0E96 (direct I/O)
	dw bdos_fn07_getiobyte	;0dae	c4 0e	; Func 07: Get I/O Byte     -> 0x0EC4
	dw bdos_fn08_setiobyte	;0db0	cd 0e	; Func 08: Set I/O Byte     -> 0x0ECD
	dw bdos_fn09_print	;0db2	d2 0e	; Func 09: Print String     -> 0x0ED2
	dw bdos_fn10_readbuf	;0db4	e2 0e	; Func 10: Read Con Buffer  -> 0x0EE2 (buffered input)
	dw 0x0FF1		;0db6	f1 0f	; Func 11: Console Status   -> 0x0FF1 (in CCP module)
	dw 0x0FF8		;0db8	f8 0f	; Func 12: Version Number   -> 0x0FF8 (returns 0x25)

	; --- Disk/file functions (0x0D-0x28) ---
	dw 0x0FFC		;0dba	fc 0f	; Func 13: Reset Disk Sys   -> 0x0FFC
	dw 0x1014		;0dbc	14 10	; Func 14: Select Disk      -> 0x1014
	dw 0x10F5		;0dbe	f5 10	; Func 15: Open File        -> 0x10F5
	dw 0x1139		;0dc0	39 11	; Func 16: Close File       -> 0x1139
	dw 0x11DD		;0dc2	dd 11	; Func 17: Search First     -> 0x11DD
	dw 0x11FC		;0dc4	fc 11	; Func 18: Search Next      -> 0x11FC
	dw 0x1215		;0dc6	15 12	; Func 19: Delete File      -> 0x1215
	dw 0x1241		;0dc8	41 12	; Func 20: Read Sequential  -> 0x1241
	dw 0x1286		;0dca	86 12	; Func 21: Write Sequential -> 0x1286
	dw 0x13CB		;0dcc	cb 13	; Func 22: Make File        -> 0x13CB
	dw 0x140D		;0dce	0d 14	; Func 23: Rename File      -> 0x140D
	dw 0x1438		;0dd0	38 14	; Func 24: Return Login Vec -> 0x1438
	dw 0x143D		;0dd2	3d 14	; Func 25: Return Cur Disk  -> 0x143D
	dw 0x1443		;0dd4	43 14	; Func 26: Set DMA Address  -> 0x1443
	dw 0x1454		;0dd6	54 14	; Func 27: Get Alloc Vector -> 0x1454
	dw 0x1459		;0dd8	59 14	; Func 28: Write Prot Disk  -> 0x1459
	dw 0x146F		;0dda	6f 14	; Func 29: Get R/O Vector   -> 0x146F
	dw 0x1474		;0ddc	74 14	; Func 30: Set File Attribs -> 0x1474
	dw 0x148E		;0dde	8e 14	; Func 31: Get DPB Address  -> 0x148E
	dw 0x1495		;0de0	95 14	; Func 32: Get/Set User     -> 0x1495
	dw 0x14A8		;0de2	a8 14	; Func 33: Read Random      -> 0x14A8
	dw 0x14B5		;0de4	b5 14	; Func 34: Write Random     -> 0x14B5
	dw 0x14C2		;0de6	c2 14	; Func 35: Compute FileSize -> 0x14C2
	dw 0x150A		;0de8	0a 15	; Func 36: Set Random Rec   -> 0x150A
	dw 0x151D		;0dea	1d 15	; Func 37: Reset Drive      -> 0x151D
	dw 0x153D		;0dec	3d 15	; Func 38: (unused/stub)    -> 0x153D
	dw 0x153D		;0dee	3d 15	; Func 39: (unused/stub)    -> 0x153D
	dw 0x153E		;0df0	3e 15	; Func 40: Write Rand Zero  -> 0x153E

; =============================================================================
; bdos_fn01_conin - BDOS Function 1: Console Input with Echo
; =============================================================================
; Reads a character from the console and echoes it. If the character is a
; printable or control character, it is echoed via bdos_fn02_conout.
; The result is stored to 0xF05C for char_io_epilog.
;
; Entry: (none)
; Exit:  A = character read from console
; =============================================================================

bdos_fn01_conin:
	call conin_buffered	;0df2	cd b9 0e	; Read character (from buffer or BIOS CONIN)
	call check_ctrl_char	;0df5	cd 21 0e	; Check if char is control/special
	ld (char_io_result),a	;0df8	32 5c f0	; Store character as return value
	ld c,a			;0dfb	4f		; C = character for echo
	jr nc,bdos_fn02_conout	;0dfc	30 10		; If printable (carry clear): echo directly
	ret			;0dfe	c9		; Control char: return without echo

; =============================================================================
; conout_with_ctrl - Console output with control character handling
; =============================================================================
; Outputs a character. If the character is a control character (< 0x20) and
; not CR/LF/TAB/BS, it is displayed as ^X (caret + letter). Used for echoing
; typed characters during line editing.
;
; Entry: C = character to output
; Exit:  (character output to console)
; =============================================================================

conout_with_ctrl:
	ld a,c			;0dff	79		; A = character to output
	call check_ctrl_char	;0e00	cd 21 0e	; Check if it's a control character
	jr nc,bdos_fn02_conout	;0e03	30 09		; Printable: output normally

	; --- Control character: display as ^X ---
	push bc			;0e05	c5		; Save original character
	ld c,05eh		;0e06	0e 5e		; C = '^' (caret prefix)
	call conout_core	;0e08	cd 5a 0e	; Output '^'
	pop bc			;0e0b	c1		; Restore original character
	set 6,c			;0e0c	cb f1		; Convert ctrl char to printable (add 0x40)
						;		; e.g. Ctrl+A (0x01) -> 'A' (0x41)

; =============================================================================
; bdos_fn02_conout - BDOS Function 2: Console Output
; =============================================================================
; Outputs a character to the console. Handles tab expansion (TAB = 0x09
; expands to spaces up to next 8-column boundary).
;
; Entry: C = character to output
; Exit:  (character output to console)
; =============================================================================

bdos_fn02_conout:
	ld a,c			;0e0e	79		; A = character to output
	cp 009h			;0e0f	fe 09		; Is it a TAB character?
	jp nz,conout_core	;0e11	c2 5a 0e	; No: output character directly

; --- Tab expansion: output spaces to next 8-column boundary ---
tab_expand_loop:
	ld c,020h		;0e14	0e 20		; C = space character
	call conout_core	;0e16	cd 5a 0e	; Output one space
	ld a,(cursor_column)	;0e19	3a 58 f0	; A = current column position
	and 007h		;0e1c	e6 07		; Column mod 8
	jr nz,tab_expand_loop	;0e1e	20 f4		; Loop until at 8-column boundary
	ret			;0e20	c9		; Tab expansion complete

; =============================================================================
; check_ctrl_char - Check if character is a control or special character
; =============================================================================
; Tests whether the character in A is a "special" character that needs
; special handling during I/O. CR, LF, TAB, and BS are considered special
; (return with Z flag set). Characters >= 0x20 (space) return with carry
; clear (printable). Characters < 0x20 that are not CR/LF/TAB/BS return
; with carry set (control characters to display as ^X).
;
; Entry: A = character to test
; Exit:  Z set if char is CR, LF, TAB, or BS
;        C (carry) set if char is other control character (< 0x20)
;        C (carry) clear if char is printable (>= 0x20)
; =============================================================================

check_ctrl_char:
	cp 00dh			;0e21	fe 0d		; Is it CR (0x0D)?
	ret z			;0e23	c8		; Yes: return (Z set, not ctrl display)
	cp 00ah			;0e24	fe 0a		; Is it LF (0x0A)?
	ret z			;0e26	c8		; Yes: return (Z set)
	cp 009h			;0e27	fe 09		; Is it TAB (0x09)?
	ret z			;0e29	c8		; Yes: return (Z set)
	cp 008h			;0e2a	fe 08		; Is it BS (0x08)?
	ret z			;0e2c	c8		; Yes: return (Z set)
	cp 020h			;0e2d	fe 20		; Is it >= SPACE (0x20)?
	ret			;0e2f	c9		; Return: carry set if < 0x20 (ctrl char)

; =============================================================================
; console_status_check - Check console status with Ctrl+S/Ctrl+C handling
; =============================================================================
; Polls the console for pending input. Implements flow control:
;   - If Ctrl+S (0x13) is pressed, waits for another keypress
;   - If Ctrl+C (0x03) is pressed after Ctrl+S, triggers warm boot
;   - Any other character after Ctrl+S is discarded (resume output)
;   - Characters other than Ctrl+S are saved in the type-ahead buffer
;
; Also checks the type-ahead buffer first; if a character is already
; buffered, returns "character available" immediately.
;
; Entry: (none)
; Exit:  A = 0 if no character available
;        A = 1 if character available (or was buffered)
; =============================================================================

console_status_check:
	ld a,(typeahead_char)	;0e30	3a 59 f0	; Check type-ahead buffer
	or a			;0e33	b7		; Is there a buffered character?
	jr nz,status_char_ready	;0e34	20 1a		; Yes: return "ready"

	call 0f206h		;0e36	cd 06 f2	; Call BIOS CONST (console status)
	and 001h		;0e39	e6 01		; Isolate ready bit
	ret z			;0e3b	c8		; No character available: return 0

	; --- Character is available ---
	call 0f209h		;0e3c	cd 09 f2	; Call BIOS CONIN (read the character)
	cp 013h			;0e3f	fe 13		; Is it Ctrl+S (XOFF / pause)?
	jr nz,status_save_char	;0e41	20 0a		; No: save it in type-ahead buffer

	; --- Ctrl+S pressed: pause output, wait for any key ---
	call 0f209h		;0e43	cd 09 f2	; Call BIOS CONIN (wait for resume key)
	cp 003h			;0e46	fe 03		; Is it Ctrl+C (abort)?
	jp z,0f203h		;0e48	ca 03 f2	; Yes: jump to BIOS warm boot (system reset)
	xor a			;0e4b	af		; No: discard the key, return "no char"
	ret			;0e4c	c9		; Return A=0 (output resumed, no buffered char)

status_save_char:
	ld (typeahead_char),a	;0e4d	32 59 f0	; Save character in type-ahead buffer

status_char_ready:
	ld a,001h		;0e50	3e 01		; A = 1 (character available)
	ret			;0e52	c9		; Return

; =============================================================================
; output_crlf - Output CR+LF sequence
; =============================================================================
; Outputs a carriage return followed by a line feed.
;
; Entry: (none)
; Exit:  (CR+LF sent to console)
; =============================================================================

output_crlf:
	ld c,00dh		;0e53	0e 0d		; C = CR (0x0D)

; =============================================================================
; output_cr_then_lf - Output CR then fall through to LF
; =============================================================================

output_cr_then_lf:
	call conout_core	;0e55	cd 5a 0e	; Output CR

; =============================================================================
; output_lf - Output LF character
; =============================================================================

output_lf:
	ld c,00ah		;0e58	0e 0a		; C = LF (0x0A)
	; Fall through to conout_core

; =============================================================================
; conout_core - Core character output routine
; =============================================================================
; The main low-level character output for BDOS. Sends the character in C to
; the console via BIOS CONOUT. Also:
;   - Checks for Ctrl+S/Ctrl+C flow control before output
;   - Optionally echoes to LIST device (printer) if serial echo is enabled
;     (bit 6 of system flags at 0xF26B)
;   - Tracks the cursor column position at 0xF058
;   - If output suppress flag (0xF056) is nonzero, skips actual device output
;     but still tracks the column position
;
; Entry: C = character to output
; Exit:  (character sent to console, column position updated)
; =============================================================================

conout_core:
	ld a,(output_suppress)	;0e5a	3a 56 f0	; Check output suppress flag
	or a			;0e5d	b7		; Is output suppressed?
	jr nz,conout_track_col	;0e5e	20 14		; Yes: skip device output, just track column

	; --- Output to device ---
	push bc			;0e60	c5		; Save character
	call console_status_check ;0e61 cd 30 0e	; Check for Ctrl+S/Ctrl+C flow control
	pop bc			;0e64	c1		; Restore character
	push bc			;0e65	c5		; Save character again

conout_to_device:
	call 0f20ch		;0e66	cd 0c f2	; Call BIOS CONOUT (output char in C)
	pop bc			;0e69	c1		; Restore character
	push bc			;0e6a	c5		; Save character

	; --- Check if serial/printer echo is enabled ---
	ld a,(0f26bh)		;0e6b	3a 6b f2	; A = system flags byte
	bit 6,a			;0e6e	cb 77		; Test bit 6: serial echo enabled?
	call nz,0f20fh		;0e70	c4 0f f2	; If yes: call BIOS LIST (echo to printer)
	pop bc			;0e73	c1		; Restore character

; --- Track cursor column position ---
conout_track_col:
	ld a,c			;0e74	79		; A = character that was output
	ld hl,cursor_column	;0e75	21 58 f0	; HL -> current column position

	cp 07fh			;0e78	fe 7f		; Is it DEL (0x7F)?
	ret z			;0e7a	c8		; Yes: DEL doesn't move cursor, return

	inc (hl)		;0e7b	34		; Assume printable: increment column
	cp 020h			;0e7c	fe 20		; Is it >= SPACE (printable)?
	ret nc			;0e7e	d0		; Yes: column increment is correct, return

	; --- Control character: undo the increment ---
	dec (hl)		;0e7f	35		; Undo increment (ctrl chars don't advance)
	ld a,(hl)		;0e80	7e		; A = current column position
	or a			;0e81	b7		; Is column already at 0?
	ret z			;0e82	c8		; Yes: can't go further left, return

	ld a,c			;0e83	79		; A = character code
	cp 008h			;0e84	fe 08		; Is it BS (backspace)?
	jr nz,conout_check_lf	;0e86	20 02		; No: check for LF

; --- Backspace: decrement column ---
conout_backspace:
	dec (hl)		;0e88	35		; Decrement column position

conout_done:
	ret			;0e89	c9		; Return

conout_check_lf:
	cp 00ah			;0e8a	fe 0a		; Is it LF (line feed)?
	ret nz			;0e8c	c0		; No: other ctrl char, column unchanged

	; --- Line feed: reset column to 0 ---
	ld (hl),000h		;0e8d	36 00		; Column = 0 (new line)
	ret			;0e8f	c9		; Return

; =============================================================================
; bdos_fn03_reader - BDOS Function 3: Reader Input
; =============================================================================
; Reads a character from the READER (auxiliary input) device via BIOS.
; Stores result for return via char_io_epilog.
;
; Entry: (none)
; Exit:  A = character read from READER device
; =============================================================================

bdos_fn03_reader:
	call 0f215h		;0e90	cd 15 f2	; Call BIOS READER (auxiliary input)
	jp store_char_result	;0e93	c3 f4 0f	; Store A in return value and return

; =============================================================================
; bdos_fn06_directio - BDOS Function 6: Direct Console I/O
; =============================================================================
; Direct console I/O without Ctrl+S/Ctrl+C processing.
;   C = 0xFF: Input - read character if available (return 0 if none)
;   C = 0xFE: Status - return console status (A=0 or A=char)
;   C = other: Output - send character C directly to BIOS CONOUT
;
; Entry: C = 0xFF (input), 0xFE (status), or character to output
; Exit:  A = character read (input mode), or 0 (no char / output mode)
; =============================================================================

bdos_fn06_directio:
	ld a,c			;0e96	79		; A = parameter
	inc a			;0e97	3c		; A+1: if C was 0xFF, A is now 0
	jr z,directio_input	;0e98	28 0a		; C=0xFF: go to input mode

	inc a			;0e9a	3c		; A+1 again: if C was 0xFE, A is now 0
	jp nz,0f20ch		;0e9b	c2 0c f2	; C=other: call BIOS CONOUT directly, return

	; --- C = 0xFE: Console status mode ---
	call console_status_raw	;0e9e	cd b1 0e	; Get raw console status
	jp store_char_result	;0ea1	c3 f4 0f	; Store and return

directio_input:
	; --- C = 0xFF: Input mode ---
	call console_status_raw	;0ea4	cd b1 0e	; Check if character available
	or a			;0ea7	b7		; Any character?
	jp z,store_char_result	;0ea8	ca f4 0f	; No: return 0

	call conin_buffered	;0eab	cd b9 0e	; Yes: read the character
	jp store_char_result	;0eae	c3 f4 0f	; Store and return

; =============================================================================
; console_status_raw - Raw console status (check type-ahead first)
; =============================================================================
; Returns console status without Ctrl+S/Ctrl+C handling.
; Checks type-ahead buffer first, then falls through to BIOS CONST.
;
; Entry: (none)
; Exit:  A = 0 if no character, nonzero if character available
; =============================================================================

console_status_raw:
	ld a,(typeahead_char)	;0eb1	3a 59 f0	; Check type-ahead buffer
	or a			;0eb4	b7		; Is there a buffered character?
	ret nz			;0eb5	c0		; Yes: return nonzero (char available)
	jp 0f206h		;0eb6	c3 06 f2	; No: call BIOS CONST and return its result

; =============================================================================
; conin_buffered - Console input with type-ahead buffer
; =============================================================================
; Returns a character from the type-ahead buffer if one is available,
; otherwise reads from BIOS CONIN. Clears the type-ahead buffer after use.
;
; Entry: (none)
; Exit:  A = character read
; =============================================================================

conin_buffered:
	ld hl,typeahead_char	;0eb9	21 59 f0	; HL -> type-ahead buffer
	ld a,(hl)		;0ebc	7e		; A = buffered character (or 0)
	ld (hl),000h		;0ebd	36 00		; Clear the type-ahead buffer
	or a			;0ebf	b7		; Was there a buffered character?
	ret nz			;0ec0	c0		; Yes: return it in A
	jp 0f209h		;0ec1	c3 09 f2	; No: call BIOS CONIN (wait for input)

; =============================================================================
; bdos_fn07_getiobyte - BDOS Function 7: Get I/O Byte
; =============================================================================
; Returns the IOBYTE from address 0x0003 (standard CP/M IOBYTE location).
; The IOBYTE controls device assignment for CON, RDR, PUN, LST.
;
; Entry: (none)
; Exit:  A = IOBYTE value
; =============================================================================

bdos_fn07_getiobyte:
	ld hl,00003h		;0ec4	21 03 00	; HL -> IOBYTE at address 0x0003
	call sub_0011h		;0ec7	cd 11 00	; Read byte via bank switch: A = (HL)
	jp store_char_result	;0eca	c3 f4 0f	; Store A as return value

; =============================================================================
; bdos_fn08_setiobyte - BDOS Function 8: Set I/O Byte
; =============================================================================
; Sets the IOBYTE at address 0x0003 to the value in C.
;
; Entry: C = new IOBYTE value
; Exit:  (IOBYTE updated)
; =============================================================================

bdos_fn08_setiobyte:
	ld hl,00003h		;0ecd	21 03 00	; HL -> IOBYTE at address 0x0003
	ld (hl),c		;0ed0	71		; Store new IOBYTE value
	ret			;0ed1	c9		; Return

; =============================================================================
; bdos_fn09_print - BDOS Function 9: Print String
; =============================================================================
; Outputs a $-terminated string to the console. The string address is
; passed in DE. Each character is output through bdos_fn02_conout (which
; handles tab expansion and column tracking).
;
; Entry: DE = address of $-terminated string
; Exit:  (string output to console)
; =============================================================================

bdos_fn09_print:
	ex de,hl		;0ed2	eb		; HL = string address (from DE)

print_loop:
	call sub_0011h		;0ed3	cd 11 00	; Read byte via bank switch: A = (HL)
	cp 024h			;0ed6	fe 24		; Is it '$' (string terminator)?
	ret z			;0ed8	c8		; Yes: done, return

	inc hl			;0ed9	23		; Advance to next character
	push hl			;0eda	e5		; Save string pointer
	ld c,a			;0edb	4f		; C = character to output
	call bdos_fn02_conout	;0edc	cd 0e 0e	; Output character (with tab expansion)
	pop hl			;0edf	e1		; Restore string pointer
	jr print_loop		;0ee0	18 f1		; Continue with next character

; =============================================================================
; bdos_fn10_readbuf - BDOS Function 10: Read Console Buffer (Buffered Input)
; =============================================================================
; Reads a line of input from the console into a buffer. The buffer is
; pointed to by DE with the following structure:
;   DE+0: Maximum character count (set by caller)
;   DE+1: Actual character count (set by this function on return)
;   DE+2: Character data begins here
;
; This function saves the current column position, reads the buffer size,
; then enters the main input loop in the CCP module (at 0x0EF3/0x0EF5).
;
; Editing keys supported (handled by code in CCP module):
;   BS/DEL (0x08/0x7F): Delete last character
;   Ctrl+E (0x05): Physical end of line (CR+LF, continue input)
;   Ctrl+P (0x10): Toggle printer echo
;   Ctrl+R (0x12): Retype line
;   Ctrl+U (0x15): Cancel line
;   Ctrl+X (0x18): Backspace to start of line
;   CR/LF  (0x0D/0x0A): Accept line
;
; Entry: DE = buffer address (DE+0 = max count, DE+1 = actual count)
; Exit:  Buffer filled with typed characters, DE+1 = actual count
; =============================================================================

bdos_fn10_readbuf:
	ld a,(cursor_column)	;0ee2	3a 58 f0	; Get current column position
	ld (start_column),a	;0ee5	32 57 f0	; Save as starting column (for line editing)

	ld hl,(char_io_param)	;0ee8	2a 5a f0	; HL = buffer address (original DE)
	call sub_0011h		;0eeb	cd 11 00	; Read max char count: A = (HL) = buffer size
	ld c,a			;0eee	4f		; C = max character count
	inc hl			;0eef	23		; HL -> actual count byte (DE+1)
	push hl			;0ef0	e5		; Save pointer to count byte
	ld b,000h		;0ef1	06 00		; B = 0 (current character count)

	; The input loop continues in the CCP module at 0x0EF3
	; (this code falls through into the next module's code)
