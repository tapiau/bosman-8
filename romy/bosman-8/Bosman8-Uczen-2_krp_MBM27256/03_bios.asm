; =============================================================================
; MODULE 3: CP/M BIOS CORE ROUTINES
; Bosman-8 "Uczen-2" Polish Educational Computer
; Address range: 0x0365 - 0x08A8
; =============================================================================
;
; This module contains the core CP/M BIOS implementation for the Bosman-8
; computer. It provides:
;   - BIOS initialization and warm boot setup (vectors at 0000h, 0005h, etc.)
;   - Disk I/O: SELDSK (drive select), READ, WRITE sector operations
;   - Logical-to-physical sector address computation
;   - Console output (CONOUT) via serial port and CRT
;   - Console input (CONIN) from keyboard or READER device
;   - Console status (CONST) polling
;   - READER device input (from file/tape)
;   - Character translation tables (Polish charset mappings)
;   - Interactive menu/prompt system for disk operations
;   - Print string utility (with escape sequence positioning)
;   - Keyboard input via PIO port A
;   - FDC (WD1793) low-level access routines (via RAM-based drivers)
;   - Disk track/sector formatting support stubs
;
; I/O Port Map:
;   0x0C = WD1793 FDC command/status register
;   0x0D = WD1793 FDC track register
;   0x0E = WD1793 FDC sector register
;   0x0F = WD1793 FDC data register
;   0x80 = PIO port A data (keyboard data)
;   0x81 = PIO port A control
;   0x82 = PIO port B data (keyboard status, drive control)
;   0x83 = PIO port B control
;   0x84 = CRT 6845 address register
;   0x85 = CRT 6845 data register
;   0x86-0x87 = CRT extra control registers
;   0x08/0x0A = CTC timer channels
;   0x98 = DIP switch / serial port status+data
;
; Key RAM Variables:
;   0xF000-0xF00F = BIOS disk workspace (disk parameters, sector table)
;   0xF060-0xF06F = Disk Parameter Header (DPH) area
;   0xF200-0xF3FF = BIOS jump table (copied from ROM at 0x08A9)
;   0xF26B      = System flags byte:
;                   bit 0 = tab expansion mode
;                   bit 1 = strip high bit from chars
;                   bit 2 = READER device active (file input)
;                   bit 3 = printer offline flag
;                   bit 4 = Polish-to-ASCII translation active
;                   bit 5 = ASCII-to-Polish translation active
;                   bit 6 = serial output enabled
;                   bit 7 = disk system initialized / motor on
;   0xF273      = Pointer to current disk routine
;   0xF290      = Sectors remaining on current track
;   0xF298      = Current disk configuration/geometry byte
;   0xF2AB      = Current selected drive number
;   0xF2AC      = Current track number (set by SETTRK)
;   0xF2AD      = Current track+sector combined (for address calc)
;   0xF2AE      = Current sector number (set by SETSEC)
;   0xF2AF      = DMA address (set by SETDMA)
;   0xF2B1      = Pointer to disk parameter block (DPB)
;   0xF2B6      = Column position counter (for tab expansion)
;   0xF2B7      = Drive online bitmap (bit 0=A, bit 1=B, etc.)
;   0xF604-0xF61C = FDC command routine workspace (copied from ROM)
;   0xF6F9      = READER record index
;   0xF6FB      = READER byte pointer (current position in record)
;   0xF6FD      = READER current disk number
;   0xF6FE      = READER bytes remaining count
;   0xF9A0      = Temporary 128-byte sector buffer
;   0xFB7B      = Saved track count / disk capacity
;   0xFB7C      = Disk state flags (bit 0=drive ready, bit 7=motor on)
;
; The disk I/O uses a RAM-resident driver model: FDC command sequences
; are copied from ROM tables (at 0x0868 and 0x0881) into RAM (0xF604),
; then executed via calls to 0xF98C. This allows the BIOS to handle
; timing-critical FDC operations from fast RAM.
; =============================================================================

; =============================================================================
; BIOS_INIT (sub_0365h) - BIOS Cold/Warm Boot Initialization
; Called during system startup to copy disk parameter tables from ROM
; to RAM and set up CP/M low-memory vectors.
;
; Copies:
;   ROM 0x0CA9 (16 bytes) -> RAM 0xF060 (Disk Parameter Header)
;   ROM 0x0CB9 (16 bytes) -> RAM 0xF000 (Disk workspace)
; Then falls through to set up jump vectors.
; =============================================================================
sub_0365h:
	ld hl,l0ca9h		;0365	21 a9 0c 	! . .  ; HL = source: DPH template in ROM
	ld de,0f060h		;0368	11 60 f0 	. ` .  ; DE = dest: DPH area in RAM
	ld bc,l000eh+2		;036b	01 10 00 	. . .  ; BC = 16 bytes to copy
	ldir		;036e	ed b0 	. .            ; Copy DPH template to RAM
	ld hl,l0cb9h		;0370	21 b9 0c 	! . .  ; HL = source: disk workspace template in ROM
	ld de,0f000h		;0373	11 00 f0 	. . .  ; DE = dest: disk workspace in RAM
	ld bc,l000eh+2		;0376	01 10 00 	. . .  ; BC = 16 bytes to copy
	ldir		;0379	ed b0 	. .            ; Copy disk workspace template to RAM

; =============================================================================
; BIOS_SETUP_VECTORS (l037bh) - Set up CP/M low-memory jump vectors
; Sets up the standard CP/M entry points:
;   0000h: JP to warm boot (via RAM jump table at F203h)
;   0005h: JP to BDOS entry (via RAM at F006h)
;   0030h: JP to user-defined RST 30h handler (F275h)
;   0038h: JP to RST 38h / interrupt handler (F272h)
; All vectors use 0xC3 (JP instruction opcode).
; =============================================================================
l037bh:
	ld a,0c3h		;037b	3e c3 	> .    ; A = 0xC3 = JP opcode
	ld (l0000h),a		;037d	32 00 00 	2 . .  ; Store JP at address 0000h (warm boot vector)
	ld (l0005h),a		;0380	32 05 00 	2 . .  ; Store JP at address 0005h (BDOS entry)
	ld (l0030h),a		;0383	32 30 00 	2 0 .  ; Store JP at address 0030h (RST 30h)
	ld (l0038h),a		;0386	32 38 00 	2 8 .  ; Store JP at address 0038h (RST 38h)
	ld hl,0f203h		;0389	21 03 f2 	! . .  ; Warm boot entry in RAM jump table
	ld (l0001h),hl		;038c	22 01 00 	" . .  ; Set address for JP at 0001h (warm boot target)
	ld hl,0f006h		;038f	21 06 f0 	! . .  ; BDOS entry point in RAM
	ld (l0005h+1),hl		;0392	22 06 00 	" . .  ; Set address for JP at 0006h (BDOS target)
	ld hl,0f275h		;0395	21 75 f2 	! u .  ; RST 30h handler in RAM
	ld (l0030h+1),hl		;0398	22 31 00 	" 1 .  ; Set address for JP at 0031h
	ld hl,0f272h		;039b	21 72 f2 	! r .  ; RST 38h handler in RAM
	ld (l0038h+1),hl		;039e	22 39 00 	" 9 .  ; Set address for JP at 0039h
	ret			;03a1	c9 	.

; =============================================================================
; BIOS_SELDSK (sub_03a2h) - Select Disk Drive
; CP/M BIOS function: SELDSK
; Entry: C = drive number (0=A, 1=B, 2=C, 3=D)
; Exit:  HL = address of DPH for selected drive, or 0000h if invalid
;        A = 0 if drive invalid (stored at 0004h = current drive)
;
; Checks the drive online bitmap at (0xF2B7) to verify the drive exists.
; If valid, stores drive number, computes DPH address from drive number
; (each DPH is 16 bytes, base at 0xF27B), and loads the DPB pointer.
; =============================================================================
sub_03a2h:
	ld a,c			;03a2	79 	y      ; A = requested drive number
	cp 004h		;03a3	fe 04 	. .    ; Check if drive >= 4
	jr nc,l03cfh		;03a5	30 28 	0 (    ; If so, invalid drive -> return error
	ld l,c			;03a7	69 	i      ; L = drive number (0-3)
	inc l			;03a8	2c 	,      ; L = drive number + 1 (for loop count)
	ld a,(0f2b7h)		;03a9	3a b7 f2 	: . .  ; A = drive online bitmap (bit0=A, bit1=B...)
l03ach:
	rrca			;03ac	0f 	.      ; Rotate right, test next drive bit
	dec l			;03ad	2d 	-      ; Decrement counter
	jr nz,l03ach		;03ae	20 fc 	  .    ; Loop until we've checked the requested drive
	jr nc,l03cfh		;03b0	30 1d 	0 .    ; If carry clear, drive not online -> error
	; Drive is valid and online
	ld a,c			;03b2	79 	y      ; A = drive number
	ld (0f2abh),a		;03b3	32 ab f2 	2 . .  ; Store as current selected drive (F2AB)
	rlca			;03b6	07 	.      ; A = drive * 2
	rlca			;03b7	07 	.      ; A = drive * 4
	rlca			;03b8	07 	.      ; A = drive * 8
	rlca			;03b9	07 	.      ; A = drive * 16 (each DPH is 16 bytes)
	ld l,a			;03ba	6f 	o      ; L = offset into DPH array
	ld h,000h		;03bb	26 00 	& .    ; HL = offset (0, 16, 32, or 48)
	ld de,0f27bh		;03bd	11 7b f2 	. { .  ; DE = base of DPH array in RAM
	add hl,de			;03c0	19 	.      ; HL = address of selected drive's DPH
	push hl			;03c1	e5 	.      ; Save DPH address
	ld de,l0008h+2		;03c2	11 0a 00 	. . .  ; DE = offset 10 (DPB pointer field in DPH)
	add hl,de			;03c5	19 	.      ; HL points to DPB pointer within DPH
	ld a,(hl)			;03c6	7e 	~      ; Load DPB address low byte
	inc hl			;03c7	23 	#
	ld h,(hl)			;03c8	66 	f      ; Load DPB address high byte
	ld l,a			;03c9	6f 	o      ; HL = DPB address
	ld (0f2b1h),hl		;03ca	22 b1 f2 	" . .  ; Store DPB address (F2B1)
	pop hl			;03cd	e1 	.      ; Restore HL = DPH address
	ret			;03ce	c9 	.      ; Return with HL = DPH

; --- SELDSK error: drive not valid ---
l03cfh:
	ld hl,l0000h		;03cf	21 00 00 	! . .  ; HL = 0 (no valid DPH)
	xor a			;03d2	af 	.      ; A = 0
	ld (l0002h+2),a		;03d3	32 04 00 	2 . .  ; Clear current drive at addr 0004h
	ret			;03d6	c9 	.

; =============================================================================
; BIOS_READ (sub_03d7h) - Read Disk Sector
; CP/M BIOS function: READ
; Reads a 128-byte sector from disk into the DMA buffer.
;
; Flow:
;   1. Jump to BIOS_READ_IMPL (l03ddh)
;   2. Save DMA data to temp buffer at 0xF9A0
;   3. Compute physical disk address (sub_0421h)
;   4. Call RAM-based FDC read routine (0xF321) to read sector
;   5. Copy 128 bytes from read position to DMA address
;   6. Deselect bank (call 0xF321 with A=0xFF)
;   7. Return A=0 on success
; =============================================================================
sub_03d7h:
	jp l03ddh		;03d7	c3 dd 03 	. . .  ; Jump to READ implementation

; =============================================================================
; BIOS_WRITE (sub_03dah) - Write Disk Sector
; CP/M BIOS function: WRITE
; Writes a 128-byte sector from DMA buffer to disk.
;
; Flow:
;   1. Jump to BIOS_WRITE_IMPL (l03ffh)
;   2. Compute physical disk address (sub_0421h)
;   3. Call RAM-based FDC routine to select bank (0xF321)
;   4. Copy 128 bytes from DMA to sector position in buffer
;   5. Call 0xF321 with A=0xFF to flush/write sector
;   6. Copy DMA data back from temp buffer
;   7. Return A=0 on success
; =============================================================================
sub_03dah:
	jp l03ffh		;03da	c3 ff 03 	. . .  ; Jump to WRITE implementation

; --- READ implementation ---
l03ddh:
	ld hl,(0f2afh)		;03dd	2a af f2 	* . .  ; HL = DMA address (F2AF)
	ld de,0f9a0h		;03e0	11 a0 f9 	. . .  ; DE = temp sector buffer
	ld bc,l0080h		;03e3	01 80 00 	. . .  ; BC = 128 bytes (CP/M sector size)
	call 0f347h		;03e6	cd 47 f3 	. G .  ; Save DMA area: copy (HL) -> (DE), 128 bytes
	call sub_0421h		;03e9	cd 21 04 	. ! .  ; Compute physical disk address -> HL
	call 0f321h		;03ec	cd 21 f3 	. ! .  ; Select memory bank / prepare for FDC read (A=bank)
	ex de,hl			;03ef	eb 	.      ; DE = computed disk address
	ld hl,0f9a0h		;03f0	21 a0 f9 	! . .  ; HL = temp buffer
	ld bc,l0080h		;03f3	01 80 00 	. . .  ; BC = 128 bytes
	ldir		;03f6	ed b0 	. .            ; Copy sector data from disk buffer to temp buffer
	ld a,0ffh		;03f8	3e ff 	> .    ; A = 0xFF (deselect/flush command)
	call 0f321h		;03fa	cd 21 f3 	. ! .  ; Deselect memory bank
l03fdh:
	xor a			;03fd	af 	.      ; A = 0 (success)
	ret			;03fe	c9 	.

; --- WRITE implementation ---
l03ffh:
	call sub_0421h		;03ff	cd 21 04 	. ! .  ; Compute physical disk address -> HL
	call 0f321h		;0402	cd 21 f3 	. ! .  ; Select memory bank for write
	ld de,0f9a0h		;0405	11 a0 f9 	. . .  ; DE = temp buffer
	ld bc,l0080h		;0408	01 80 00 	. . .  ; BC = 128 bytes
	call 0f347h		;040b	cd 47 f3 	. G .  ; Save: copy sector from disk addr to temp buffer
	ld a,0ffh		;040e	3e ff 	> .    ; A = 0xFF
	call 0f321h		;0410	cd 21 f3 	. ! .  ; Flush / write back to disk
	ld hl,(0f2afh)		;0413	2a af f2 	* . .  ; HL = DMA address
	ex de,hl			;0416	eb 	.      ; DE = DMA address
	ld hl,0f9a0h		;0417	21 a0 f9 	! . .  ; HL = temp buffer (holds sector data)
	ld bc,l0080h		;041a	01 80 00 	. . .  ; BC = 128 bytes
	ldir		;041d	ed b0 	. .            ; Copy from temp buffer to DMA address
	xor a			;041f	af 	.      ; A = 0 (success)
	ret			;0420	c9 	.

; =============================================================================
; CALC_DISK_ADDRESS (sub_0421h) - Compute Physical Disk Address
; Converts the current track/sector (F2AD) into a physical memory address.
;
; The address is computed as:
;   Start with track/sector value from (F2AD), clear low byte
;   Shift right by 1 (divide by 2) to get byte offset
;   Check disk geometry (F2AC XOR 0x0E) to determine side
;   If second side, add 0x7800 offset
;   Result in HL = physical address of sector data
; =============================================================================
sub_0421h:
	ld hl,(0f2adh)		;0421	2a ad f2 	* . .  ; HL = track/sector value
	ld l,000h		;0424	2e 00 	. .    ; Clear low byte (track only in H)
	srl h		;0426	cb 3c 	. <    ; Shift H right (divide track by 2)
	rr l		;0428	cb 1d 	. .    ; Rotate into L (HL = track * 128)
	ld de,l7800h		;042a	11 00 78 	. . x  ; DE = 0x7800 (second side offset)
	ld a,(0f2ach)		;042d	3a ac f2 	: . .  ; A = current track number
	xor 00eh		;0430	ee 0e 	. .    ; XOR with geometry mask (determines side)
	rrca			;0432	0f 	.      ; Shift bit 0 into carry
	ret nc			;0433	d0 	.      ; If carry clear, single side - return HL as is
	add hl,de			;0434	19 	.      ; Add second-side offset: HL += 0x7800
	ret			;0435	c9 	.

; =============================================================================
; BIOS_LISTST (l0436h) - List Device Status (stub)
; CP/M BIOS function: LISTST
; Returns immediately - list device always ready.
; =============================================================================
l0436h:
	ret			;0436	c9 	.

; =============================================================================
; READ_IOBYTE (sub_0437h) - Read I/O Byte from address 0003h
; The IOBYTE at address 0003h controls device assignments.
; Uses bank-switching (0xF35A) to read from low memory safely.
; Entry: none
; Exit:  A = IOBYTE value
; =============================================================================
sub_0437h:
	push hl			;0437	e5 	.
	ld hl,l0002h+1		;0438	21 03 00 	! . .  ; HL = 0003h (IOBYTE address)
	call 0f35ah		;043b	cd 5a f3 	. Z .  ; Read byte at (HL) via bank switch
	pop hl			;043e	e1 	.
	ret			;043f	c9 	.

; =============================================================================
; Anonymous routine at 0440h - Mask/combine IOBYTE with B,C
; Reads the IOBYTE, ANDs with B, ORs with C, stores back.
; Used to update specific device assignment fields.
; =============================================================================
	call sub_0437h		;0440	cd 37 04 	. 7 .  ; Read current IOBYTE into A
	and b			;0443	a0 	.      ; Mask with B (keep specified bits)
	or c			;0444	b1 	.      ; Set bits from C
	ld (l0002h+1),a		;0445	32 03 00 	2 . .  ; Store updated IOBYTE at 0003h
	ret			;0448	c9 	.

; =============================================================================
; STRING: msg_disk_first_prompt (l0449h)
; Polish text: " Drukarka drukuje - przerwij (P)  kontynuuj (K)  ? "
; Translation: " Printer is printing - interrupt (P)  continue (K)  ? "
; Displayed when a print operation is in progress and user action is needed.
; Bytes 0x80 mark end-of-string (high bit set on last char).
; =============================================================================
l0449h:
	jr nz,l048fh		;0449	20 44 	  D    ; " D" (ASCII string data)
	ld (hl),d			;044b	72 	r      ; "r"
	ld (hl),l			;044c	75 	u      ; "u"
	ld l,e			;044d	6b 	k      ; "k"
	ld h,c			;044e	61 	a      ; "a"
	ld (hl),d			;044f	72 	r      ; "r"
	ld l,e			;0450	6b 	k      ; "k"
	ld h,c			;0451	61 	a      ; "a"
	jr nz,l04b8h		;0452	20 64 	  d    ; " d"
	ld (hl),d			;0454	72 	r      ; "r"
	ld (hl),l			;0455	75 	u      ; "u"
	ld l,e			;0456	6b 	k      ; "k"
	ld (hl),l			;0457	75 	u      ; "u"
	ld l,d			;0458	6a 	j      ; "j"
	ld h,l			;0459	65 	e      ; "e"
	jr nz,l0489h		;045a	20 2d 	  -    ; " -"
	jr nz,$+114		;045c	20 70 	  p    ; " p"
	ld (hl),d			;045e	72 	r      ; "r"
	ld a,d			;045f	7a 	z      ; "z"
	ld h,l			;0460	65 	e      ; "e"
	ld (hl),d			;0461	72 	r      ; "r"
	ld (hl),a			;0462	77 	w      ; "w"
	ld l,c			;0463	69 	i      ; "i"
	ld l,d			;0464	6a 	j      ; "j"
	jr nz,l048fh		;0465	20 28 	  (    ; " ("
	ld d,b			;0467	50 	P      ; "P"
	add hl,hl			;0468	29 	)      ; ")"
	jr nz,l048bh		;0469	20 20 	       ; "  "
	ld l,e			;046b	6b 	k      ; "k"
	ld l,a			;046c	6f 	o      ; "o"
	ld l,(hl)			;046d	6e 	n      ; "n"
	ld (hl),h			;046e	74 	t      ; "t"
	ld a,c			;046f	79 	y      ; "y"
	ld l,(hl)			;0470	6e 	n      ; "n"
	ld (hl),l			;0471	75 	u      ; "u"
	ld (hl),l			;0472	75 	u      ; "u"
	ld l,d			;0473	6a 	j      ; "j"
	jr nz,l049eh		;0474	20 28 	  (    ; " ("
	ld c,e			;0476	4b 	K      ; "K"
	add hl,hl			;0477	29 	)      ; ")"
	jr nz,$+34		;0478	20 20 	       ; "  "
	ccf			;047a	3f 	?      ; "?"
	jr nz,l03fdh		;047b	20 80 	  .    ; " " + 0x80 (end marker)
; --- Menu option codes for first prompt ---
	ld c,e			;047d	4b 	K      ; 'K' = continue
	ld d,b			;047e	50 	P      ; 'P' = interrupt
	add a,b			;047f	80 	.      ; 0x80 = end of option list

; =============================================================================
; STRING: msg_disk_not_ready (l0480h)
; Polish text: " Drukarka\0niegotowa - wy\x08\x06cz (W)  powt\x07rz (P)  zmie\x04 (Z)  ? "
; Translation: " Printer not ready - turn off (W)  retry (P)  change (Z)  ? "
; Control codes 0x08, 0x06, 0x07, 0x04 are Polish special characters.
; =============================================================================
l0480h:
	jr nz,$+70		;0480	20 44 	  D    ; " D"
	ld (hl),d			;0482	72 	r      ; "r"
	ld (hl),l			;0483	75 	u      ; "u"
	ld l,e			;0484	6b 	k      ; "k"
	ld h,c			;0485	61 	a      ; "a"
	ld (hl),d			;0486	72 	r      ; "r"
	ld l,e			;0487	6b 	k      ; "k"
	ld h,c			;0488	61 	a      ; "a"
l0489h:
	nop			;0489	00 	.      ; NUL separator
	ld l,(hl)			;048a	6e 	n      ; "n"
l048bh:
	ld l,c			;048b	69 	i      ; "i"
	ld h,l			;048c	65 	e      ; "e"
	ld h,a			;048d	67 	g      ; "g"
	ld l,a			;048e	6f 	o      ; "o"
l048fh:
	ld (hl),h			;048f	74 	t      ; "t"
	ld l,a			;0490	6f 	o      ; "o"
	ld (hl),a			;0491	77 	w      ; "w"
	ld h,c			;0492	61 	a      ; "a"
	jr nz,l04c2h		;0493	20 2d 	  -    ; " -"
	jr nz,$+121		;0495	20 77 	  w    ; " w"
	ld a,c			;0497	79 	y      ; "y"
	ex af,af'			;0498	08 	.      ; 0x08 (Polish special char)
	ld b,063h		;0499	06 63 	. c    ; 0x06 + "c" (Polish special char)
	ld a,d			;049b	7a 	z      ; "z"
	jr nz,$+42		;049c	20 28 	  (    ; " ("
l049eh:
	ld d,a			;049e	57 	W      ; "W"
	add hl,hl			;049f	29 	)      ; ")"
	jr nz,l04c2h		;04a0	20 20 	       ; "  "
	ld (hl),b			;04a2	70 	p      ; "p"
	ld l,a			;04a3	6f 	o      ; "o"
	ld (hl),a			;04a4	77 	w      ; "w"
	ld (hl),h			;04a5	74 	t      ; "t"
	rlca			;04a6	07 	.      ; 0x07 (Polish special char 'o with accent')
	ld (hl),d			;04a7	72 	r      ; "r"
	ld a,d			;04a8	7a 	z      ; "z"
	jr nz,l04d3h		;04a9	20 28 	  (    ; " ("
	ld d,b			;04ab	50 	P      ; "P"
	add hl,hl			;04ac	29 	)      ; ")"
	jr nz,l04cfh		;04ad	20 20 	       ; "  "
	ld a,d			;04af	7a 	z      ; "z"
	ld l,l			;04b0	6d 	m      ; "m"
	ld l,c			;04b1	69 	i      ; "i"
	ld h,l			;04b2	65 	e      ; "e"
	inc b			;04b3	04 	.      ; 0x04 (Polish special char 'n with accent')
	jr nz,$+42		;04b4	20 28 	  (    ; " ("
	ld e,d			;04b6	5a 	Z      ; "Z"
	add hl,hl			;04b7	29 	)      ; ")"
l04b8h:
	jr nz,$+34		;04b8	20 20 	       ; "  "
	ccf			;04ba	3f 	?      ; "?"
	jr nz,$-126		;04bb	20 80 	  .    ; " " + 0x80 (end marker)
; --- Menu option codes for second prompt ---
	ld d,a			;04bd	57 	W      ; 'W' = turn off
	ld d,b			;04be	50 	P      ; 'P' = retry
	ld d,b			;04bf	50 	P      ; 'P' (duplicate)
	ld e,d			;04c0	5a 	Z      ; 'Z' = change
	add a,b			;04c1	80 	.      ; 0x80 = end of option list

; =============================================================================
; BIOS_CONOUT (l04c2h) - Console Output Character
; CP/M BIOS function: CONOUT
; Entry: C = character to output
;
; Flow:
;   1. Check system flags (F26B) bit 2 - if READER active, display
;      the "printer busy" prompt and handle user response
;   2. If no READER, proceed to character output
;   3. Track column position for tab expansion (F2B6)
;   4. Optionally strip high bit (based on flag bit 1)
;   5. Read IOBYTE to determine output device:
;      - If bit 6 set: output via serial port (0x98)
;      - Otherwise: jump to CRT output routine at F500h
;   6. For serial output: wait for TX ready on port 0x98,
;      then perform character translation and send
; =============================================================================
l04c2h:
	ld a,(0f26bh)		;04c2	3a 6b f2 	: k .  ; A = system flags (F26B)
	bit 2,a		;04c5	cb 57 	. W    ; Test bit 2: READER device active?
	jr z,l04d8h		;04c7	28 0f 	( .    ; If not active, skip prompt
	; READER is active - show printer prompt
	ld hl,l0449h		;04c9	21 49 04 	! I .  ; HL = "Drukarka drukuje..." prompt string
	call l0624h		;04cc	cd 24 06 	. $ .  ; Display interactive prompt, get response
l04cfh:
	ld hl,0f26bh		;04cf	21 6b f2 	! k .  ; HL = system flags address
	or a			;04d2	b7 	.      ; Test A (response code from prompt)
l04d3h:
	jp z,l0572h		;04d3	ca 72 05 	. r .  ; If response=0 (continue), go to set flags
	res 2,(hl)		;04d6	cb 96 	. .    ; Clear bit 2 (READER active flag)
l04d8h:
	push bc			;04d8	c5 	.      ; Save character
	ld bc,02500h		;04d9	01 00 25 	. . %  ; B=0, C=0x25 (timeout counter = 0x2500)
l04dch:
	call sub_0580h		;04dc	cd 80 05 	. . .  ; Check console status (is device ready?)
	jr nz,l04fbh		;04df	20 1a 	  .    ; If ready (NZ), proceed to output
	; Not ready - wait with timeout
	ld a,001h		;04e1	3e 01 	> .    ; A = 1 (short delay parameter)
	call 00025h		;04e3	cd 25 00 	. % .  ; Call delay routine at 0025h
	dec bc			;04e6	0b 	.      ; Decrement timeout counter
	ld a,b			;04e7	78 	x
	or c			;04e8	b1 	.      ; Check if counter reached zero
	jr nz,l04dch		;04e9	20 f1 	  .    ; If not zero, keep waiting
	; Timeout - device not responding
	pop bc			;04eb	c1 	.      ; Restore character
	ld hl,l0480h		;04ec	21 80 04 	! . .  ; HL = "Drukarka niegotowa..." (not ready) prompt
	call l0624h		;04ef	cd 24 06 	. $ .  ; Display prompt, get user response
	ld hl,0f26bh		;04f2	21 6b f2 	! k .  ; HL = system flags
	or a			;04f5	b7 	.      ; Test response
	jp z,l0572h		;04f6	ca 72 05 	. r .  ; If 0, go set flags (give up)
	jr l04d8h		;04f9	18 dd 	. .    ; Otherwise retry the output

; --- Device is ready, output the character ---
l04fbh:
	pop bc			;04fb	c1 	.      ; Restore C = character to output
l04fch:
	ld a,c			;04fc	79 	y      ; A = character
	cp 020h		;04fd	fe 20 	.      ; Is it a control char (< 0x20)?
	ld a,000h		;04ff	3e 00 	> .    ; Prepare A=0 (reset column if control char)
	jr c,l0507h		;0501	38 04 	8 .    ; If control char, reset column counter
	; Printable character - increment column counter
	ld a,(0f2b6h)		;0503	3a b6 f2 	: . .  ; A = current column position
	inc a			;0506	3c 	<      ; Increment column
l0507h:
	ld (0f2b6h),a		;0507	32 b6 f2 	2 . .  ; Store updated column position
	ld a,(0f26bh)		;050a	3a 6b f2 	: k .  ; A = system flags
	bit 1,a		;050d	cb 4f 	. O    ; Test bit 1: strip high bit?
	jr z,l0513h		;050f	28 02 	( .    ; If not set, keep char as-is
	res 7,c		;0511	cb b9 	. .    ; Strip bit 7 from character (make 7-bit ASCII)
l0513h:
	call sub_0437h		;0513	cd 37 04 	. 7 .  ; Read IOBYTE
	bit 6,a		;0516	cb 77 	. w    ; Test bit 6: serial output enabled?
	jp z,0f500h		;0518	ca 00 f5 	. . .  ; If not serial, jump to CRT output (RAM routine)

; --- Serial port output ---
l051bh:
	in a,(098h)		;051b	db 98 	. .    ; Read serial port status (DIP switch port 0x98)
	rlca			;051d	07 	.      ; Rotate bit 7 (TX ready) into carry
	jr nc,l051bh		;051e	30 fb 	0 .    ; Wait until TX ready (bit 7 = 1)
	call sub_0528h		;0520	cd 28 05 	. ( .  ; Perform character translation if needed
	ld a,c			;0523	79 	y      ; A = (possibly translated) character
sub_0524h:
	nop			;0524	00 	.      ; NOP (timing/alignment)
	out (098h),a		;0525	d3 98 	. .    ; Send character to serial port (0x98)
	ret			;0527	c9 	.

; =============================================================================
; CHAR_TRANSLATE (sub_0528h) - Translate Character for Output
; Handles Polish character set translation based on system flags.
;   Flag bit 4: translate Polish -> ASCII (using table at l0548h)
;   Flag bit 5: translate ASCII -> Polish (using table at l055dh)
; The translation tables are pairs: [input_char, output_char, ...]
; terminated by 0x00.
; Entry: C = character
; Exit:  C = translated character (or unchanged)
; =============================================================================
sub_0528h:
	ld a,(0f26bh)		;0528	3a 6b f2 	: k .  ; A = system flags
	bit 4,a		;052b	cb 67 	. g    ; Test bit 4: Polish->ASCII translation?
	jr z,l0540h		;052d	28 11 	( .    ; If not set, check reverse direction
	; Polish -> ASCII translation mode
	bit 5,a		;052f	cb 6f 	. o    ; Also check bit 5 (both directions?)
	ret nz			;0531	c0 	.      ; If both set, skip (conflict)
	ld hl,l0548h		;0532	21 48 05 	! H .  ; HL = Polish->ASCII translation table
l0535h:
	ld a,(hl)			;0535	7e 	~      ; A = table entry (input char)
	or a			;0536	b7 	.      ; End of table?
	ret z			;0537	c8 	.      ; If zero, no translation needed - return
	cp c			;0538	b9 	.      ; Does it match our character?
	inc hl			;0539	23 	#      ; Point to replacement char
	ld a,(hl)			;053a	7e 	~      ; A = replacement char
	inc hl			;053b	23 	#      ; Point to next pair
	jr nz,l0535h		;053c	20 f7 	  .    ; If no match, check next pair
	ld c,a			;053e	4f 	O      ; Match found: C = translated character
	ret			;053f	c9 	.

l0540h:
	; ASCII -> Polish translation mode
	bit 5,a		;0540	cb 6f 	. o    ; Test bit 5: ASCII->Polish?
	ret z			;0542	c8 	.      ; If not set, no translation
	ld hl,l055dh		;0543	21 5d 05 	! ] .  ; HL = ASCII->Polish translation table
	jr l0535h		;0546	18 ed 	. .    ; Use same lookup logic

; =============================================================================
; Translation Table: Polish -> ASCII (l0548h)
; Format: pairs of [Polish_char, ASCII_replacement], terminated by 0x00
; Maps Polish special characters to their ASCII equivalents:
;   0x60 -> 0x61 ('a' with ogonek -> 'a')
;   0x40 -> 0x65 (some Polish char -> 'e')
;   0x7E -> 0x63 ('c' with accent -> 'c')
;   0x5E -> 0x73 ('s' with accent -> 's')
;   0x7D -> 0x7A ('z' with accent -> 'z')
;   0x5D -> 0x6E ('n' with accent -> 'n')
;   0x7B -> 0x6F ('o' with accent -> 'o')
;   0x5B -> 0x7A ('z' with dot -> 'z')
;   0x7C -> 0x6C ('l' with stroke -> 'l')
;   0x5C -> 0x4C ('L' with stroke -> 'L')
; =============================================================================
l0548h:
	ld h,b			;0548	60 	`      ; 0x60 (Polish 'a' ogonek)
	ld h,c			;0549	61 	a      ; -> 0x61 'a'
	ld b,b			;054a	40 	@      ; 0x40 (Polish 'e' ogonek)
l054bh:
	ld h,l			;054b	65 	e      ; -> 0x65 'e'
	ld a,(hl)			;054c	7e 	~      ; 0x7E (Polish 'c' accent)
	ld h,e			;054d	63 	c      ; -> 0x63 'c'
	ld e,(hl)			;054e	5e 	^      ; 0x5E (Polish 's' accent)
	ld (hl),e			;054f	73 	s      ; -> 0x73 's'
	ld a,l			;0550	7d 	}      ; 0x7D (Polish 'z' accent)
	ld a,d			;0551	7a 	z      ; -> 0x7A 'z'
	ld e,l			;0552	5d 	]      ; 0x5D (Polish 'n' accent)
	ld l,(hl)			;0553	6e 	n      ; -> 0x6E 'n'
	ld a,e			;0554	7b 	{      ; 0x7B (Polish 'o' accent)
	ld l,a			;0555	6f 	o      ; -> 0x6F 'o'
	ld e,e			;0556	5b 	[      ; 0x5B (Polish 'z' dot)
	ld a,d			;0557	7a 	z      ; -> 0x7A 'z'
sub_0558h:
	ld a,h			;0558	7c 	|      ; 0x7C (Polish 'l' stroke)
	ld l,h			;0559	6c 	l      ; -> 0x6C 'l'
	ld e,h			;055a	5c 	\      ; 0x5C (Polish 'L' stroke)
	ld c,h			;055b	4c 	L      ; -> 0x4C 'L'
	nop			;055c	00 	.      ; End of table

; =============================================================================
; Translation Table: ASCII -> Polish (l055dh)
; Format: pairs of [ASCII_char, Polish_replacement], terminated by 0x00
; Maps ASCII characters to Polish equivalents:
;   0x60 -> 0x20 (backtick -> space)
;   0x40 -> 0x20 (@ -> space)
;   0x7E -> 0x20 (tilde -> space)
;   0x5E -> 0x20 (caret -> space)
;   0x7D -> 0x20 (right brace -> space)
;   0x5D -> 0x20 (right bracket -> space)
;   0x7B -> 0x20 (left brace -> space)
;   0x5B -> 0x20 (left bracket -> space)
;   0x7C -> 0x20 (pipe -> space)
;   0x5C -> 0x20 (backslash -> space)
; Effectively strips special chars to spaces when Polish mode is off.
; =============================================================================
l055dh:
	ld h,b			;055d	60 	`      ; 0x60
	jr nz,l05a0h		;055e	20 40 	  @    ; -> 0x20 (space); next: 0x40
	jr nz,l05e0h		;0560	20 7e 	  ~    ; -> 0x20; next: 0x7E
	jr nz,$+96		;0562	20 5e 	  ^    ; -> 0x20; next: 0x5E
	jr nz,l05e3h		;0564	20 7d 	  }    ; -> 0x20; next: 0x7D
	jr nz,$+95		;0566	20 5d 	  ]    ; -> 0x20; next: 0x5D
	jr nz,$+125		;0568	20 7b 	  {    ; -> 0x20; next: 0x7B
	jr nz,$+93		;056a	20 5b 	  [    ; -> 0x20; next: 0x5B
	jr nz,$+126		;056c	20 7c 	  |    ; -> 0x20; next: 0x7C
	jr nz,$+94		;056e	20 5c 	  \    ; -> 0x20; next: 0x5C
	jr nz,l0572h		;0570	20 00 	  .    ; -> 0x20; 0x00 = end of table

; =============================================================================
; SET_READER_FLAGS (l0572h) - Set system flags for reader/disk mode
; Sets bit 3 (printer offline) and clears bit 6 (serial output) in flags.
; =============================================================================
l0572h:
	set 3,(hl)		;0572	cb de 	. .    ; Set bit 3: printer offline flag
	res 6,(hl)		;0574	cb b6 	. .    ; Clear bit 6: disable serial output
	ret			;0576	c9 	.

; =============================================================================
; BIOS_CONST (sub_0577h) - Console Status Check
; CP/M BIOS function: CONST
; Returns A=0xFF if a character is available, A=0x00 if not.
;
; If READER device is active (flag bit 2), always returns 0 (no char).
; Otherwise falls through to actual status check.
; =============================================================================
sub_0577h:
	ld a,(0f26bh)		;0577	3a 6b f2 	: k .  ; A = system flags
	bit 2,a		;057a	cb 57 	. W    ; Test bit 2: READER active?
	jr z,sub_0580h		;057c	28 02 	( .    ; If not, check actual console status
	xor a			;057e	af 	.      ; A = 0 (no character available)
	ret			;057f	c9 	.

; =============================================================================
; CHECK_OUTPUT_READY (sub_0580h) - Check if Output Device is Ready
; Reads IOBYTE to determine device, then checks status.
; For serial: reads port 0x98 status, returns NZ if byte available.
; For CRT: jumps to RAM routine at F503h.
; Exit: Z flag = not ready, NZ = ready; A = 0xFF if ready, 0 if not
; =============================================================================
sub_0580h:
	call sub_0437h		;0580	cd 37 04 	. 7 .  ; Read IOBYTE
	bit 6,a		;0583	cb 77 	. w    ; Test bit 6: serial device?
	jp z,0f503h		;0585	ca 03 f5 	. . .  ; If CRT, jump to CRT status check in RAM
	; Serial port status check
	in a,(098h)		;0588	db 98 	. .    ; Read serial port status (port 0x98)
	rlca			;058a	07 	.      ; Rotate bit 7 into carry
	sbc a,a			;058b	9f 	.      ; A = 0xFF if carry (ready), 0x00 if not
	ret			;058c	c9 	.

; =============================================================================
; BIOS_READER (sub_058dh) - Read Character from READER Device
; CP/M BIOS function: READER
; Reads the next character from the READER device (file/tape input).
;
; First checks if data is available. If not, loads next record from disk.
; Handles:
;   - Decrementing byte counter (F6FE)
;   - Advancing byte pointer (F6FB)
;   - End-of-file detection (0x1A = CP/M EOF)
;   - Tab expansion (converting 0x09 to spaces)
;   - Loading next disk record when current one is exhausted
; =============================================================================
sub_058dh:
	call sub_0580h		;058d	cd 80 05 	. . .  ; Check if device is ready
	ret z			;0590	c8 	.      ; If not ready, return (no data)

l0591h:
	ld hl,(0f6feh)		;0591	2a fe f6 	* . .  ; HL = bytes remaining in current record
	ld a,l			;0594	7d 	}
	or h			;0595	b4 	.      ; Check if zero
	jr z,l05ech		;0596	28 54 	( T    ; If no bytes left, load next record
	; Bytes available - read next one
	dec hl			;0598	2b 	+      ; Decrement bytes remaining
	ld (0f6feh),hl		;0599	22 fe f6 	" . .  ; Store updated count
	ld hl,(0f6fbh)		;059c	2a fb f6 	* . .  ; HL = current byte pointer
	inc hl			;059f	23 	#      ; Advance pointer
l05a0h:
	ld (0f6fbh),hl		;05a0	22 fb f6 	" . .  ; Store updated pointer
	dec hl			;05a3	2b 	+      ; Point back to current byte
	ld a,(0f6fdh)		;05a4	3a fd f6 	: . .  ; A = current disk/bank number
sub_05a7h:
	call 0f321h		;05a7	cd 21 f3 	. ! .  ; Select memory bank
	call 0f35ah		;05aa	cd 5a f3 	. Z .  ; Read byte at (HL) via bank switch
	push af			;05ad	f5 	.      ; Save the byte
	ld a,0ffh		;05ae	3e ff 	> .    ; A = 0xFF
	call 0f321h		;05b0	cd 21 f3 	. ! .  ; Deselect memory bank
	pop af			;05b3	f1 	.      ; Restore the byte
	ld c,a			;05b4	4f 	O      ; C = character read
	cp 01ah		;05b5	fe 1a 	. .    ; Is it EOF (0x1A)?
	jr z,l05e3h		;05b7	28 2a 	( *    ; If EOF, handle end of file
	cp 009h		;05b9	fe 09 	. .    ; Is it TAB (0x09)?
	jp nz,l04fch		;05bb	c2 fc 04 	. . .  ; If not TAB, go to output character
	; Handle TAB character
	ld a,(0f26bh)		;05be	3a 6b f2 	: k .  ; A = system flags
sub_05c1h:
	bit 0,a		;05c1	cb 47 	. G    ; Test bit 0: tab expansion mode?
	jp nz,l04fch		;05c3	c2 fc 04 	. . .  ; If tab expansion off, output TAB as-is
	; Expand TAB to spaces
	ld c,020h		;05c6	0e 20 	.      ; C = space character
	ld a,(0f2b6h)		;05c8	3a b6 f2 	: . .  ; A = current column position
	and 007h		;05cb	e6 07 	. .    ; Column mod 8
	cp 007h		;05cd	fe 07 	. .    ; At tab stop already?
	jp z,l04fch		;05cf	ca fc 04 	. . .  ; If at tab stop, just output one space
	; Output more spaces and track bytes remaining
	ld hl,(0f6feh)		;05d2	2a fe f6 	* . .  ; HL = bytes remaining
	inc hl			;05d5	23 	#      ; Add one back (we consumed one for the TAB)
	ld (0f6feh),hl		;05d6	22 fe f6 	" . .  ; Store updated count
	ld hl,(0f6fbh)		;05d9	2a fb f6 	* . .  ; HL = byte pointer
	dec hl			;05dc	2b 	+      ; Back up one position
	ld (0f6fbh),hl		;05dd	22 fb f6 	" . .  ; Store (will re-read TAB next time)
l05e0h:
	jp l04fch		;05e0	c3 fc 04 	. . .  ; Output the space character

; --- EOF detected ---
l05e3h:
	ld a,(0f26bh)		;05e3	3a 6b f2 	: k .  ; A = system flags
	res 2,a		;05e6	cb 97 	. .    ; Clear bit 2: READER no longer active
	ld (0f26bh),a		;05e8	32 6b f2 	2 k .  ; Store updated flags
	ret			;05eb	c9 	.

; =============================================================================
; READER_LOAD_NEXT_RECORD (l05ech) - Load Next Record from Disk
; Called when the current READER buffer is exhausted.
; Reads the next pair of bytes from the file allocation table at 0xF67F
; to determine the disk address and sector count for the next record.
; =============================================================================
l05ech:
	ld hl,0f67fh		;05ec	21 7f f6 	!  .  ; HL = base of file allocation table
	ld a,(0f6f9h)		;05ef	3a f9 f6 	: . .  ; A = current record index
	inc a			;05f2	3c 	<      ; Advance to next record pair
	inc a			;05f3	3c 	<      ; (2 bytes per entry)
	ld (0f6f9h),a		;05f4	32 f9 f6 	2 . .  ; Store updated index
sub_05f7h:
	add a,l			;05f7	85 	.      ; Add index to base low byte
	ld l,a			;05f8	6f 	o      ; HL = address of current entry
	ld b,(hl)			;05f9	46 	F      ; B = second byte (sector count / flags)
	dec hl			;05fa	2b 	+      ; Point to first byte
	ld a,(hl)			;05fb	7e 	~      ; A = first byte (disk address / flags)
	or a			;05fc	b7 	.      ; Is it zero?
	jp z,l05e3h		;05fd	ca e3 05 	. . .  ; If zero, end of file - set EOF
l0600h:
	and 007h		;0600	e6 07 	. .    ; Low 3 bits = disk number
	ld (0f6fdh),a		;0602	32 fd f6 	2 . .  ; Store current disk number
	ld a,(hl)			;0605	7e 	~      ; Reload first byte
	and 0f8h		;0606	e6 f8 	. .    ; High 5 bits = address field
	ld h,a			;0608	67 	g      ; H = address high byte
	ld l,000h		;0609	2e 00 	. .    ; L = 0
	ld (0f6fbh),hl		;060b	22 fb f6 	" . .  ; Store byte pointer = start of sector
	or a			;060e	b7 	.      ; Clear carry for RR
	ld h,b			;060f	60 	`      ; H = sector count byte
	rr h		;0610	cb 1c 	. .    ; Shift right through carry
	rr l		;0612	cb 1d 	. .    ; HL = byte count (sectors * 128)
	ld (0f6feh),hl		;0614	22 fe f6 	" . .  ; Store bytes remaining
	ld a,(0f6f9h)		;0617	3a f9 f6 	: . .  ; A = record index
	cp 002h		;061a	fe 02 	. .    ; Is this the first record (index=2)?
	jp nz,l0591h		;061c	c2 91 05 	. . .  ; If not first, go read the byte normally
	; First record - send CR to start new line
	ld c,00dh		;061f	0e 0d 	. .    ; C = CR (carriage return)
	jp l04fch		;0621	c3 fc 04 	. . .  ; Output CR

; =============================================================================
; INTERACTIVE_PROMPT (l0624h) - Display Menu Prompt and Get User Response
; Displays a text string with embedded menu options and waits for the user
; to select one by pressing a key.
;
; String format:
;   - Printable chars (< 0x80): displayed as-is
;   - 0x7E: replaced by drive letter from stack
;   - 0x00: marks position where device info is displayed (from IOBYTE)
;   - Char with bit 7 set: marks end of display text
;   - Followed by option characters (valid keys), terminated by 0x80
;
; Uses ESC-X-col sequences to position cursor on each line.
; After displaying, waits for user to press a valid key.
;
; Entry: HL = pointer to prompt string
; Exit:  A = option index (0-based) of selected key
; =============================================================================
l0624h:
	push hl			;0624	e5 	.      ; Save string pointer
	push bc			;0625	c5 	.      ; Save BC
	push hl			;0626	e5 	.      ; Save string pointer again (for later)
	ld hl,l06eeh		;0627	21 ee 06 	! . .  ; HL = ESC sequence to clear/position cursor
	call sub_06f8h		;062a	cd f8 06 	. . .  ; Print the ESC sequence string
	pop hl			;062d	e1 	.      ; Restore string pointer
	ld c,007h		;062e	0e 07 	. .    ; C = BEL character (beep)
	call sub_0702h		;0630	cd 02 07 	. . .  ; Output BEL
	ld b,020h		;0633	06 20 	.      ; B = column counter (start at column 0x20 = 32)

; --- Main display loop ---
l0635h:
	call sub_068bh		;0635	cd 8b 06 	. . .  ; Output ESC-X-col positioning sequence
	ld c,(hl)			;0638	4e 	N      ; C = next character from string
	ld a,c			;0639	79 	y      ; A = character
	or a			;063a	b7 	.      ; Is it zero?
l063bh:
	jr z,l064fh		;063b	28 12 	( .    ; If zero, handle device info display
	cp 07eh		;063d	fe 7e 	. ~    ; Is it 0x7E (drive letter placeholder)?
	jr nz,l0644h		;063f	20 03 	  .    ; If not, display normally
	; Replace 0x7E with drive letter from stack
	ex (sp),hl			;0641	e3 	.      ; Get saved value from stack into HL
	ld c,l			;0642	4d 	M      ; C = drive letter character
	ex (sp),hl			;0643	e3 	.      ; Restore HL
l0644h:
	inc hl			;0644	23 	#      ; Advance string pointer
	bit 7,c		;0645	cb 79 	. y    ; Is bit 7 set (end of text)?
	jr nz,l0699h		;0647	20 50 	  P    ; If so, go to option handling
	call sub_0702h		;0649	cd 02 07 	. . .  ; Output the character
	inc b			;064c	04 	.      ; Increment column
	jr l0635h		;064d	18 e6 	. .    ; Continue display loop

; --- Handle 0x00: display device info from IOBYTE ---
l064fh:
	ld c,020h		;064f	0e 20 	.      ; C = space
	call sub_0702h		;0651	cd 02 07 	. . .  ; Output space
	inc hl			;0654	23 	#      ; Skip the 0x00 byte
	inc b			;0655	04 	.      ; Increment column
	push hl			;0656	e5 	.      ; Save string pointer
	ld hl,l0002h+1		;0657	21 03 00 	! . .  ; HL = 0003h (IOBYTE address)
	call 0f35ah		;065a	cd 5a f3 	. Z .  ; Read IOBYTE value
	rlca			;065d	07 	.      ; Shift to get device field
	rlca			;065e	07 	.
	rlca			;065f	07 	.
	and 006h		;0660	e6 06 	. .    ; Isolate 2-bit device field (shifted)
	ld hl,l003bh		;0662	21 3b 00 	! ; .  ; HL = 003Bh (device name table)
	add a,l			;0665	85 	.      ; Add offset
	ld l,a			;0666	6f 	o      ; HL = pointer to device name address
	ld a,(hl)			;0667	7e 	~      ; Load device name string address low
	inc hl			;0668	23 	#
	ld h,(hl)			;0669	66 	f      ; Load high byte
	ld l,a			;066a	6f 	o      ; HL = device name string
	push de			;066b	d5 	.      ; Save DE
	ld e,00ch		;066c	1e 0c 	. .    ; E = 12 (max chars to display)
l066eh:
	call sub_068bh		;066e	cd 8b 06 	. . .  ; Position cursor
	ld c,(hl)			;0671	4e 	N      ; C = next char of device name
	inc hl			;0672	23 	#
	bit 7,c		;0673	cb 79 	. y    ; End of name (bit 7 set)?
	jr nz,l0681h		;0675	20 0a 	  .    ; If so, done with name
	call sub_0702h		;0677	cd 02 07 	. . .  ; Output character
	inc b			;067a	04 	.      ; Increment column
	dec e			;067b	1d 	.      ; Decrement character count
	jr nz,l066eh		;067c	20 f0 	  .    ; Continue if more chars
	call sub_068bh		;067e	cd 8b 06 	. . .  ; Final positioning
l0681h:
	ld c,020h		;0681	0e 20 	.      ; C = space
	call sub_0702h		;0683	cd 02 07 	. . .  ; Output trailing space
	inc b			;0686	04 	.      ; Increment column
	pop de			;0687	d1 	.      ; Restore DE
	pop hl			;0688	e1 	.      ; Restore string pointer
	jr l0635h		;0689	18 aa 	. .    ; Continue main display loop

; =============================================================================
; EMIT_ESC_POSITION (sub_068bh) - Output ESC X <col> Cursor Positioning
; Sends ESC, 'X', and the current column value (in B) to move cursor.
; Entry: B = column position
; =============================================================================
sub_068bh:
	ld c,01bh		;068b	0e 1b 	. .    ; C = ESC (0x1B)
	call sub_0702h		;068d	cd 02 07 	. . .  ; Output ESC
	ld c,058h		;0690	0e 58 	. X    ; C = 'X' (cursor position command)
	call sub_0702h		;0692	cd 02 07 	. . .  ; Output 'X'
	ld c,b			;0695	48 	H      ; C = column value
	jp sub_0702h		;0696	c3 02 07 	. . .  ; Output column and return

; --- End of displayed text, handle option selection ---
l0699h:
	ld c,020h		;0699	0e 20 	.      ; C = space
	call sub_0702h		;069b	cd 02 07 	. . .  ; Output trailing space
	xor a			;069e	af 	.      ; A = 0 (option index)
	bit 7,(hl)		;069f	cb 7e 	. ~    ; Check if already at options list end
	jr nz,l06dbh		;06a1	20 38 	  8    ; If bit 7 set, return immediately

; --- Wait for user to press a valid option key ---
l06a3h:
	ld b,0fah		;06a3	06 fa 	. .    ; B = timeout counter (250 iterations)
l06a5h:
	call sub_070ah		;06a5	cd 0a 07 	. . .  ; Check keyboard status (PIO port B bit 0)
	jr nz,l06bbh		;06a8	20 11 	  .    ; If key pressed, go read it
	ld a,004h		;06aa	3e 04 	> .    ; A = 4 (delay parameter)
	call 00025h		;06ac	cd 25 00 	. % .  ; Short delay
	djnz l06a5h		;06af	10 f4 	. .    ; Repeat until timeout
	; Timeout - beep and retry
	push hl			;06b1	e5 	.
	ld hl,l06f3h		;06b2	21 f3 06 	! . .  ; HL = beep ESC sequence
	call sub_06f8h		;06b5	cd f8 06 	. . .  ; Output beep sequence
	pop hl			;06b8	e1 	.
	jr l06a3h		;06b9	18 e8 	. .    ; Retry waiting for key

; --- Key pressed, read it and check against valid options ---
l06bbh:
	call sub_070fh		;06bb	cd 0f 07 	. . .  ; Read key from keyboard (with uppercase conversion)
	ld c,a			;06be	4f 	O      ; C = key pressed
	ld b,000h		;06bf	06 00 	. .    ; B = option index counter
	push hl			;06c1	e5 	.      ; Save options pointer
l06c2h:
	ld a,(hl)			;06c2	7e 	~      ; A = next valid option char
	cp c			;06c3	b9 	.      ; Does it match pressed key?
	jr z,l06d3h		;06c4	28 0d 	( .    ; If match, found the option
	cp 07eh		;06c6	fe 7e 	. ~    ; Is it 0x7E (wildcard/drive letter)?
	jr z,l06d3h		;06c8	28 09 	( .    ; If wildcard, also matches
	inc b			;06ca	04 	.      ; Increment option index
	inc hl			;06cb	23 	#      ; Next option char
	bit 7,(hl)		;06cc	cb 7e 	. ~    ; End of options (bit 7 set)?
	jr z,l06c2h		;06ce	28 f2 	( .    ; If not end, check next option
	; Key not valid
	pop hl			;06d0	e1 	.      ; Restore options pointer
	jr l06a3h		;06d1	18 d0 	. .    ; Wait for another key

; --- Valid option selected ---
l06d3h:
	pop hl			;06d3	e1 	.      ; Clean up stack
	ld hl,l06eeh		;06d4	21 ee 06 	! . .  ; HL = clear/position ESC sequence
	call sub_06f8h		;06d7	cd f8 06 	. . .  ; Clear the prompt line
	ld a,b			;06da	78 	x      ; A = option index
l06dbh:
	pop bc			;06db	c1 	.      ; Restore BC
	pop hl			;06dc	e1 	.      ; Restore HL
	cp 003h		;06dd	fe 03 	. .    ; Is option index >= 3?
	ret c			;06df	d8 	.      ; If < 3, return with index in A
	; Option >= 3: update IOBYTE device assignment
	push hl			;06e0	e5 	.
	ld hl,l0002h+1		;06e1	21 03 00 	! . .  ; HL = 0003h (IOBYTE)
	call 0f35ah		;06e4	cd 5a f3 	. Z .  ; Read current IOBYTE
	add a,040h		;06e7	c6 40 	. @    ; Cycle to next device (add 0x40)
	ld (hl),a			;06e9	77 	w      ; Store updated IOBYTE
	pop hl			;06ea	e1 	.
	jp l0624h		;06eb	c3 24 06 	. $ .  ; Re-display prompt with new device

; =============================================================================
; ESC Sequence Data: Clear prompt area (l06eeh)
; Sends: ESC, 'X', ' ', 0x1A (clear to end of line)
; Then byte 0x80 terminates the string.
; =============================================================================
l06eeh:
	dec de			;06ee	1b 	.      ; 0x1B = ESC
	ld e,b			;06ef	58 	X      ; 'X' = cursor position command
	jr nz,l070ch		;06f0	20 1a 	  .    ; 0x20 = column (space), 0x1A = clear to EOL
	add a,b			;06f2	80 	.      ; 0x80 = end of string

; =============================================================================
; ESC Sequence Data: Beep sequence (l06f3h)
; Sends: ESC, 'X', 'z', ' '
; Then byte 0x80 terminates the string.
; Used to beep when waiting for input times out.
; =============================================================================
l06f3h:
	dec de			;06f3	1b 	.      ; 0x1B = ESC
	ld e,b			;06f4	58 	X      ; 'X' = cursor position
l06f5h:
	ld a,d			;06f5	7a 	z      ; 'z' = column (bottom of screen)
l06f6h:
	jr nz,$-126		;06f6	20 80 	  .    ; 0x20 = space, 0x80 = end of string

; =============================================================================
; PRINT_STRING (sub_06f8h) - Print Null/High-Bit Terminated String
; Outputs characters from (HL) until a byte with bit 7 set is found.
; Characters with bit 7 set terminate the string (the char itself is NOT printed).
; Entry: HL = pointer to string
; =============================================================================
sub_06f8h:
	ld c,(hl)			;06f8	4e 	N      ; C = next character
	bit 7,c		;06f9	cb 79 	. y    ; Is bit 7 set (end marker)?
	ret nz			;06fb	c0 	.      ; If yes, return
	inc hl			;06fc	23 	#      ; Advance pointer
	call sub_0702h		;06fd	cd 02 07 	. . .  ; Output the character
	jr sub_06f8h		;0700	18 f6 	. .    ; Continue with next character

; =============================================================================
; OUTPUT_CHAR_WAIT (sub_0702h) - Output Character with Wait
; Waits until the output device is ready, then sends character.
; Uses RAM-based CRT routines:
;   0xF381 = check CRT ready (returns NZ when ready)
;   0xF39A = write character to CRT
; Entry: C = character to output
; =============================================================================
sub_0702h:
	call 0f381h		;0702	cd 81 f3 	. . .  ; Check if CRT is ready (RAM routine)
	jr z,sub_0702h		;0705	28 fb 	( .    ; If not ready (Z), keep waiting
	jp 0f39ah		;0707	c3 9a f3 	. . .  ; Output character via CRT (RAM routine)

; =============================================================================
; CHECK_KBD_STATUS (sub_070ah) - Check Keyboard Data Available
; Reads PIO port B (0x82) and tests bit 0 (keyboard data ready).
; Exit: Z=no key, NZ=key available
; =============================================================================
sub_070ah:
	in a,(082h)		;070a	db 82 	. .    ; Read PIO port B data (keyboard status)
l070ch:
	and 001h		;070c	e6 01 	. .    ; Test bit 0: keyboard data ready?
	ret			;070e	c9 	.      ; Return Z/NZ

; =============================================================================
; READ_KBD_KEY (sub_070fh) - Read Key from Keyboard with Case Conversion
; Waits for a key press, reads it from PIO port A (0x80),
; and converts lowercase letters to uppercase.
; Exit: A = key code (uppercase if alphabetic)
; =============================================================================
sub_070fh:
	call sub_070ah		;070f	cd 0a 07 	. . .  ; Check keyboard status
	jr z,sub_070fh		;0712	28 fb 	( .    ; Wait until key is available
	in a,(080h)		;0714	db 80 	. .    ; Read key from PIO port A data
	cp 061h		;0716	fe 61 	. a    ; Is it >= 'a' (lowercase)?
	ret c			;0718	d8 	.      ; If < 'a', return as-is
	cp 07bh		;0719	fe 7b 	. {    ; Is it > 'z'?
	ret nc			;071b	d0 	.      ; If > 'z', return as-is
	and 05fh		;071c	e6 5f 	. _    ; Convert to uppercase (clear bit 5)
	ret			;071e	c9 	.

; =============================================================================
; DISK_MOTOR_CONTROL (l071fh) - Disk Drive Motor On/Off and Initialization
; Main entry point for disk motor control and FDC initialization.
; Called with A indicating the operation:
;   A = -1 (0xFF): Motor off / shutdown (l07e7h)
;   A = 0: Motor on / cold start initialization
;   A > 0: Hot start / track setup
;
; Uses:
;   0xFB7C = disk state flags (bit 0=ready, bit 7=motor on)
;   0xF26B = system flags (bit 7=disk initialized)
;   0xF290 = sectors remaining on track
;   FDC ports 0x0C (command), 0x0D (track register)
;
; For motor-on (A=0):
;   1. If motor already on (FB7C bit 7), check if init needed
;   2. Copy FDC command sequences to RAM workspace
;   3. Write to FDC track register (port 0x0D)
;   4. Issue FDC restore command (port 0x0C)
;
; For hot start (A>0):
;   1. Read current disk state from WD1793
;   2. Validate track/sector parameters
;   3. If new track has available sectors, set up for access
;   4. Copy FDC driver routines to RAM and execute
; =============================================================================
l071fh:
	ld hl,0fb7ch		;071f	21 7c fb 	! | .  ; HL = disk state flags
	inc a			;0722	3c 	<      ; Test if A was 0xFF (-1)
	jp z,l07e7h		;0723	ca e7 07 	. . .  ; If was 0xFF, go to motor off routine
	dec a			;0726	3d 	=      ; Restore A; test if A was 0
	jp nz,l0767h		;0727	c2 67 07 	. g .  ; If A > 0, go to hot start / track setup

	; --- A=0: Motor on / cold start ---
	bit 7,(hl)		;072a	cb 7e 	. ~    ; Is motor already on? (FB7C bit 7)
	jr z,l0756h		;072c	28 28 	( (    ; If not, go to cold motor start
	; Motor is already on - check if disk system needs init
	ld hl,0f26bh		;072e	21 6b f2 	! k .  ; HL = system flags
	bit 7,(hl)		;0731	cb 7e 	. ~    ; Is disk system initialized? (bit 7)
	jr z,l074ch		;0733	28 17 	( .    ; If not initialized, skip to minimal setup
l0735h:
	; Disk system is initialized and motor is on
	res 7,(hl)		;0735	cb be 	. .    ; Clear disk-initialized flag (re-init required)
	; Load FDC "write track register" command sequence into RAM
	ld hl,l0881h		;0737	21 81 08 	! . .  ; HL = FDC write-track-reg command template
	call sub_083fh		;073a	cd 3f 08 	. ? .  ; Copy command sequence to RAM (F604)
	call sub_0848h		;073d	cd 48 08 	. H .  ; Copy execution routine to RAM (F98C)
	call sub_0830h		;0740	cd 30 08 	. 0 .  ; Execute the FDC command via RAM driver
	; Load FDC "read track register" command sequence
	ld hl,l0868h		;0743	21 68 08 	! h .  ; HL = FDC read-track-reg command template
	call sub_083fh		;0746	cd 3f 08 	. ? .  ; Copy to RAM workspace
	call sub_0848h		;0749	cd 48 08 	. H .  ; Copy execution routine
l074ch:
	ld hl,0fb7ch		;074c	21 7c fb 	! | .  ; HL = disk state flags
	bit 0,(hl)		;074f	cb 46 	. F    ; Test bit 0: drive ready?
	call z,l07e7h		;0751	cc e7 07 	. . .  ; If not ready, try motor off/on sequence
	jr l0763h		;0754	18 0d 	. .    ; Go to issue FDC restore command

; --- Cold motor start (motor was off) ---
l0756h:
	res 0,(hl)		;0756	cb 86 	. .    ; Clear drive-ready bit (FB7C bit 0)
	ld hl,0f26bh		;0758	21 6b f2 	! k .  ; HL = system flags
	res 7,(hl)		;075b	cb be 	. .    ; Clear disk-initialized flag
	; Set disk routine pointer to default
	ld hl,0f2e7h		;075d	21 e7 f2 	! . .  ; HL = default disk routine in RAM
	ld (0f273h),hl		;0760	22 73 f2 	" s .  ; Store as current disk routine pointer

; --- Issue FDC restore command ---
l0763h:
	out (00ch),a		;0763	d3 0c 	. .    ; Write to FDC command register (port 0x0C)
	                                           ; A=0 here = RESTORE command (seek to track 0)
	or a			;0765	b7 	.      ; Clear carry (indicate success)
	ret			;0766	c9 	.

; =============================================================================
; DISK_HOT_START (l0767h) - Track Setup / Hot Start
; Called when A > 0 (motor already on, setting up a new track).
; Validates the WD1793 status and attempts to configure the disk
; for the requested track.
;
; Reads current disk geometry from (F290, F298) and the WD1793 status.
; Calculates if the requested number of sectors fits on the track.
; If not, reports an error via the "Bank 1 zajety" prompt.
; =============================================================================
l0767h:
	bit 7,(hl)		;0767	cb 7e 	. ~    ; Check FB7C bit 7: motor on?
	jp nz,l07c5h		;0769	c2 c5 07 	. . .  ; If motor on, skip to FDC register update
	; Motor not on - need full setup
	res 0,(hl)		;076c	cb 86 	. .    ; Clear drive-ready flag
	call sub_089ah		;076e	cd 9a 08 	. . .  ; Read disk geometry -> A = computed address
	cp 0d1h		;0771	fe d1 	. .    ; Compare with max value (0xD1)
	jp nz,l0812h		;0773	c2 12 08 	. . .  ; If not expected, error
	; Calculate available sectors
	ld a,00ch		;0776	3e 0c 	> .    ; A = 12 (max sectors?)
	sub c			;0778	91 	.      ; Subtract requested sector count
	ld c,a			;0779	4f 	O      ; C = remaining sectors
	jp c,l0812h		;077a	da 12 08 	. . .  ; If underflow (carry), error
sub_077dh:
	jp z,l0812h		;077d	ca 12 08 	. . .  ; If zero remaining, error
	; Calculate bit position for sector allocation
	add a,a			;0780	87 	.      ; A = remaining * 2
	add a,a			;0781	87 	.      ; A = remaining * 4
	add a,a			;0782	87 	.      ; A = remaining * 8
	add a,a			;0783	87 	.      ; A = remaining * 16
	sub c			;0784	91 	.      ; Adjust by sector count
	; Calculate byte position in allocation bitmap
	ld hl,0fa40h		;0785	21 40 fa 	! @ .  ; HL = allocation bitmap base address
l0788h:
	sub 008h		;0788	d6 08 	. .    ; Subtract 8 (one byte = 8 sectors)
	jr c,l078fh		;078a	38 03 	8 .    ; If underflow, found the byte
	inc hl			;078c	23 	#      ; Next byte in bitmap
	jr l0788h		;078d	18 f9 	. .    ; Continue
l078fh:
	add a,008h		;078f	c6 08 	. .    ; Restore bit position within byte
	xor 007h		;0791	ee 07 	. .    ; Invert (bit 0 = MSB, bit 7 = LSB)
	inc a			;0793	3c 	<      ; Adjust for 1-based
sub_0794h:
	ld b,a			;0794	47 	G      ; B = bit position
	ld a,01eh		;0795	3e 1e 	> .    ; A = 30 (total allocation size)
	sub b			;0797	90 	.      ; A = remaining bits to check
	ld c,a			;0798	4f 	O      ; C = count of bytes to verify
	xor a			;0799	af 	.      ; A = 0
l079ah:
	scf			;079a	37 	7      ; Set carry
	rla			;079b	17 	.      ; Rotate left through carry (build bit mask)
	djnz l079ah		;079c	10 fc 	. .    ; Repeat B times
	; A now has a bit mask for the starting position
	and (hl)			;079e	a6 	.      ; Test against allocation bitmap
	jp nz,l0812h		;079f	c2 12 08 	. . .  ; If any bits set, sectors in use -> error
	; Check subsequent bytes are all zero (free)
	inc hl			;07a2	23 	#
l07a3h:
	ld a,c			;07a3	79 	y      ; A = bytes remaining to check
	or a			;07a4	b7 	.
	jr z,l07b3h		;07a5	28 0c 	( .    ; If zero, all free -> success
	ld a,(hl)			;07a7	7e 	~      ; Read next allocation byte
	or a			;07a8	b7 	.
	jp nz,l0812h		;07a9	c2 12 08 	. . .  ; If any bits set, sectors in use -> error
	inc hl			;07ac	23 	#      ; Next byte
	ld a,c			;07ad	79 	y
	sub 008h		;07ae	d6 08 	. .    ; Subtract 8 bits
	ld c,a			;07b0	4f 	O
	jr nc,l07a3h		;07b1	30 f0 	0 .    ; Continue if more bytes

; --- Sectors are available, update track position ---
l07b3h:
	ld a,(0f290h)		;07b3	3a 90 f2 	: . .  ; A = current sectors remaining
	sub 01eh		;07b6	d6 1e 	. .    ; Subtract 30 (one track worth)
	ld (0f290h),a		;07b8	32 90 f2 	2 . .  ; Store updated remaining count
sub_07bbh:
	ld (0fb7bh),a		;07bb	32 7b fb 	2 { .  ; Also store in backup (FB7B)
	ld hl,0fb7ch		;07be	21 7c fb 	! | .  ; HL = disk state flags
	set 7,(hl)		;07c1	cb fe 	. .    ; Set bit 7: motor is now on
	res 0,(hl)		;07c3	cb 86 	. .    ; Clear bit 0: need to re-initialize

; --- Update FDC registers via RAM-based driver ---
l07c5h:
	ld hl,0f26bh		;07c5	21 6b f2 	! k .  ; HL = system flags
	bit 7,(hl)		;07c8	cb 7e 	. ~    ; Disk initialized?
	jr nz,l07dah		;07ca	20 0e 	  .    ; If yes, skip init
	; Initialize: copy FDC driver routines to RAM
	set 7,(hl)		;07cc	cb fe 	. .    ; Mark as initialized
	ld hl,l0868h		;07ce	21 68 08 	! h .  ; HL = FDC "read track reg" command template
	call sub_083fh		;07d1	cd 3f 08 	. ? .  ; Copy command to RAM workspace (F604)
	call sub_0848h		;07d4	cd 48 08 	. H .  ; Copy execution routine to RAM (F98C)
	call sub_0830h		;07d7	cd 30 08 	. 0 .  ; Execute FDC command (read track register)
l07dah:
	; Load write-track-register command and execute
	ld hl,l0881h		;07da	21 81 08 	! . .  ; HL = FDC "write track reg" command template
	call sub_083fh		;07dd	cd 3f 08 	. ? .  ; Copy command to RAM
	call sub_0848h		;07e0	cd 48 08 	. H .  ; Copy execution routine
	out (00dh),a		;07e3	d3 0d 	. .    ; Write A to FDC track register (port 0x0D)
	or a			;07e5	b7 	.      ; Clear carry (success)
	ret			;07e6	c9 	.

; =============================================================================
; DISK_MOTOR_OFF (l07e7h) - Turn Off Disk Motor / Shutdown
; Called with A=0xFF to shut down the disk system.
; If motor is on (FB7C bit 7), performs orderly shutdown:
;   1. Clears motor-on flag
;   2. Resets drive state via l0756h
;   3. Copies and executes FDC "read track" command
;   4. Reads disk geometry to determine remaining capacity
;   5. Updates sector count (F290) with remaining sectors
; =============================================================================
l07e7h:
	bit 7,(hl)		;07e7	cb 7e 	. ~    ; Is motor on? (FB7C bit 7)
	ret z			;07e9	c8 	.      ; If motor already off, nothing to do
	res 7,(hl)		;07ea	cb be 	. .    ; Clear motor-on flag
	call l0756h		;07ec	cd 56 07 	. V .  ; Reset drive state (cold start init)
	; Read current track register from FDC
	ld hl,l0868h		;07ef	21 68 08 	! h .  ; HL = FDC "read track reg" template
	call sub_083fh		;07f2	cd 3f 08 	. ? .  ; Copy to RAM
	call sub_0848h		;07f5	cd 48 08 	. H .  ; Copy execution routine
	; Determine remaining capacity
	call sub_089ah		;07f8	cd 9a 08 	. . .  ; Read disk geometry -> A
	ld b,01eh		;07fb	06 1e 	. .    ; B = 30 (sectors per track)
sub_07fdh:
	cp 0b3h		;07fd	fe b3 	. .    ; Compare geometry value with 0xB3
	jr z,l0807h		;07ff	28 06 	( .    ; If equal, use B as-is
	ret c			;0801	d8 	.      ; If less, return (error?)
	ld b,a			;0802	47 	G      ; B = geometry value
	ld a,0d1h		;0803	3e d1 	> .    ; A = max value 0xD1
	sub b			;0805	90 	.      ; A = remaining = max - current
	ld b,a			;0806	47 	G      ; B = remaining sectors
l0807h:
	ld a,(0f290h)		;0807	3a 90 f2 	: . .  ; A = current sectors remaining
	add a,b			;080a	80 	.      ; Add back the sectors from this track
	ld (0f290h),a		;080b	32 90 f2 	2 . .  ; Store updated total
	ld (0fb7bh),a		;080e	32 7b fb 	2 { .  ; Also update backup
	ret			;0811	c9 	.

; =============================================================================
; DISK_ERROR (l0812h) - Display "Bank 1 zajety" Error Message
; Shows error message when disk track/sector allocation fails.
; Displays the interactive prompt and returns with carry set (error).
; =============================================================================
l0812h:
	ld hl,l081ah		;0812	21 1a 08 	! . .  ; HL = error message string
	call l0624h		;0815	cd 24 06 	. $ .  ; Display interactive prompt
	scf			;0818	37 	7      ; Set carry flag (error)
	ret			;0819	c9 	.

; =============================================================================
; STRING: msg_bank_occupied (l081ah)
; Polish text: " Bank 1 zajety  ( )"
; Translation: " Bank 1 occupied  ( )"
; Displayed when requested disk track is already in use.
; Ends with 0x80 marker. Contains "~" (0x7E) as drive letter placeholder.
; =============================================================================
l081ah:
	jr nz,l085eh		;081a	20 42 	  B    ; " B"
	ld h,c			;081c	61 	a      ; "a"
	ld l,(hl)			;081d	6e 	n      ; "n"
	ld l,e			;081e	6b 	k      ; "k"
	jr nz,$+51		;081f	20 31 	  1    ; " 1"
	jr nz,l089dh		;0821	20 7a 	  z    ; " z"
	ld h,c			;0823	61 	a      ; "a"
	ld l,d			;0824	6a 	j      ; "j"
	ld bc,l7974h		;0825	01 74 79 	. t y  ; 0x01 "ty"
	jr nz,$+34		;0828	20 20 	       ; "  "
	jr z,$+34		;082a	28 20 	(      ; "( "
	add hl,hl			;082c	29 	)      ; ")"
	add a,b			;082d	80 	.      ; 0x80 = end marker
; --- Data following the string (referenced as part of message area) ---
l082eh:
	ld a,(hl)			;082e	7e 	~      ; 0x7E = drive letter placeholder
	add a,b			;082f	80 	.      ; 0x80 = end of options

; =============================================================================
; FDC_EXECUTE_COMMAND (sub_0830h) - Execute FDC Command via RAM Driver
; Iterates 256 times, calling the RAM-based FDC execution routine
; for each byte. Used to perform timed FDC operations.
;
; The RAM routine at 0xF98C is set up by sub_0848h and calls back
; to 0xF35A (read byte) for each iteration.
; Entry: none (uses previously set up RAM routines)
; =============================================================================
sub_0830h:
	ld hl,l0000h		;0830	21 00 00 	! . .  ; HL = address counter (start at 0)
	ld b,000h		;0833	06 00 	. .    ; B = 0 (loop 256 times)
l0835h:
	call 0f35ah		;0835	cd 5a f3 	. Z .  ; Read byte at (HL) via bank switch
	call 0f98ch		;0838	cd 8c f9 	. . .  ; Execute RAM-based FDC routine
	inc hl			;083b	23 	#      ; Advance address
	djnz l0835h		;083c	10 f7 	. .    ; Repeat 256 times
	ret			;083e	c9 	.

; =============================================================================
; COPY_FDC_CMD_TO_RAM (sub_083fh) - Copy FDC Command Template to RAM
; Copies 25 bytes from (HL) to RAM workspace at 0xF604.
; This sets up the FDC command sequence that will be executed.
; Entry: HL = source address of FDC command template
; =============================================================================
sub_083fh:
	ld de,0f604h		;083f	11 04 f6 	. . .  ; DE = RAM FDC workspace
	ld bc,sub_0017h+2		;0842	01 19 00 	. . .  ; BC = 25 bytes
	ldir		;0845	ed b0 	. .            ; Copy command template to RAM
	ret			;0847	c9 	.

; =============================================================================
; COPY_FDC_EXEC_TO_RAM (sub_0848h) - Copy FDC Execution Routine to RAM
; Copies the 20-byte FDC execution stub (at l0854h) to RAM at 0xF98C.
; This stub contains JP instructions that call the FDC command routines
; in the RAM workspace (F604, F60C, F614, F61C).
; Entry: none
; =============================================================================
sub_0848h:
	ld hl,l0854h		;0848	21 54 08 	! T .  ; HL = FDC execution stub in ROM
	ld de,0f98ch		;084b	11 8c f9 	. . .  ; DE = RAM execution address
	ld bc,l0014h		;084e	01 14 00 	. . .  ; BC = 20 bytes
	ldir		;0851	ed b0 	. .            ; Copy execution stub to RAM
	ret			;0853	c9 	.

; =============================================================================
; FDC Execution Stub Template (l0854h)
; This 20-byte block is copied to RAM at 0xF98C and provides the
; entry points for FDC operations. It contains JP instructions to
; the FDC command routines that were previously copied to F604.
;
; Layout at F98C:
;   F98C: JP F604  (FDC operation 1: write/read command register)
;   F98F: NOP, NOP
;   F991: JP F60C  (FDC operation 2: write/read track register)
;   F994: NOP, NOP
;   F996: NOP
;   F997: JP F614  (FDC operation 3: write/read sector register)
;   F99A: NOP, NOP
;   F99C: NOP, NOP, NOP, NOP, NOP, NOP
; =============================================================================
l0854h:
	jp 0f604h		;0854	c3 04 f6 	. . .  ; -> FDC cmd routine slot 1
	nop			;0857	00 	.
	nop			;0858	00 	.
	jp 0f60ch		;0859	c3 0c f6 	. . .  ; -> FDC cmd routine slot 2
	nop			;085c	00 	.
	nop			;085d	00 	.
l085eh:
	nop			;085e	00 	.
	jp 0f614h		;085f	c3 14 f6 	. . .  ; -> FDC cmd routine slot 3
	nop			;0862	00 	.
	nop			;0863	00 	.
	nop			;0864	00 	.
	nop			;0865	00 	.
	nop			;0866	00 	.
	nop			;0867	00 	.

; =============================================================================
; FDC Command Template: Read Track Register (l0868h)
; 25-byte template copied to RAM at F604 by sub_083fh.
; This sequence reads the FDC track register:
;   DI                    ; Disable interrupts for timing
;   OUT (0Dh), A          ; Write A to FDC track register (port 0x0D)
;   LD (HL), A            ; Store value at (HL)
;   OUT (0Ch), A          ; Write to FDC command register (port 0x0C)
;   EI                    ; Re-enable interrupts
;   RET
;
; Second part (at F60C offset):
;   DI
;   OUT (0Dh), A          ; Write to track register
;   LD A, (HL)            ; Read value from (HL)
;   OUT (0Ch), A          ; Write to command register
;   EI
;   RET
;
; Third part (at F614 offset): Data/sector register operations
;   OUT (0Fh), A          ; Write to FDC data register (port 0x0F)
;   CALL F61C             ; Call helper
;   OUT (0Eh), A          ; Write to FDC sector register (port 0x0E)
;   RET
;
; Last part (at F61C):
;   JP (HL)               ; Execute from HL address
; =============================================================================
l0868h:
	di			;0868	f3 	.      ; Disable interrupts
	out (00dh),a		;0869	d3 0d 	. .    ; Write A to FDC track register (port 0x0D)
	ld (hl),a			;086b	77 	w      ; Store A at (HL)
	out (00ch),a		;086c	d3 0c 	. .    ; Write to FDC command register (port 0x0C)
	ei			;086e	fb 	.      ; Enable interrupts
	ret			;086f	c9 	.
	; --- Second FDC sub-routine ---
	di			;0870	f3 	.      ; Disable interrupts
	out (00dh),a		;0871	d3 0d 	. .    ; Write to FDC track register
	ld a,(hl)			;0873	7e 	~      ; Read byte from (HL)
sub_0874h:
	out (00ch),a		;0874	d3 0c 	. .    ; Write to FDC command register
	ei			;0876	fb 	.      ; Enable interrupts
	ret			;0877	c9 	.
	; --- Third FDC sub-routine: data/sector register ---
	out (00fh),a		;0878	d3 0f 	. .    ; Write A to FDC data register (port 0x0F)
	call 0f61ch		;087a	cd 1c f6 	. . .  ; Call RAM helper (at offset F61C)
	out (00eh),a		;087d	d3 0e 	. .    ; Write A to FDC sector register (port 0x0E)
	ret			;087f	c9 	.
	; --- JP (HL) trampoline ---
	jp (hl)			;0880	e9 	.      ; Jump to address in HL

; =============================================================================
; FDC Command Template: Write Track Register (l0881h)
; 25-byte template copied to RAM at F604 by sub_083fh.
; This sequence writes to the FDC track register:
;   DI
;   OUT (0Ch), A          ; Write to FDC command register (port 0x0C)
;   LD (HL), A            ; Store at (HL)
;   OUT (0Dh), A          ; Write to FDC track register (port 0x0D)
;   EI
;   RET
;
; Second part:
;   DI
;   OUT (0Ch), A          ; Write to command register
;   LD A, (HL)            ; Read from (HL)
;   OUT (0Dh), A          ; Write to track register
;   EI
;   RET
;
; Third part:
;   OUT (0Fh), A          ; Write to FDC data register
;   CALL F61C             ; Call helper
;   OUT (0Eh), A          ; Write to sector register
;   RET
;
; Last:
;   JP (HL)               ; Trampoline
; =============================================================================
l0881h:
	di			;0881	f3 	.      ; Disable interrupts
	out (00ch),a		;0882	d3 0c 	. .    ; Write to FDC command register (port 0x0C)
	ld (hl),a			;0884	77 	w      ; Store A at (HL)
	out (00dh),a		;0885	d3 0d 	. .    ; Write to FDC track register (port 0x0D)
	ei			;0887	fb 	.      ; Enable interrupts
	ret			;0888	c9 	.
	; --- Second sub-routine ---
	di			;0889	f3 	.      ; Disable interrupts
	out (00ch),a		;088a	d3 0c 	. .    ; Write to FDC command register
sub_088ch:
	ld a,(hl)			;088c	7e 	~      ; Read byte from (HL)
	out (00dh),a		;088d	d3 0d 	. .    ; Write to FDC track register
	ei			;088f	fb 	.      ; Enable interrupts
	ret			;0890	c9 	.
	; --- Third sub-routine: data/sector register ---
	out (00fh),a		;0891	d3 0f 	. .    ; Write A to FDC data register (port 0x0F)
	call 0f61ch		;0893	cd 1c f6 	. . .  ; Call RAM helper
sub_0896h:
	out (00eh),a		;0896	d3 0e 	. .    ; Write to FDC sector register (port 0x0E)
	ret			;0898	c9 	.
	; --- Trampoline ---
	jp (hl)			;0899	e9 	.      ; Jump to address in HL

; =============================================================================
; READ_DISK_GEOMETRY (sub_089ah) - Compute Disk Address from Geometry
; Reads the disk geometry parameters and computes a combined address value.
;
; Calculation:
;   A = (F290)                    ; Sectors remaining on track
;   B = A                         ; Save in B
;   A = (F298)                    ; Disk configuration byte
;   C = A                         ; Save in C
;   A = C * 15 + B               ; = (config * 16 - config) + remaining
;                                 ; This gives: config*15 + remaining
;
; Entry: none
; Exit: A = computed geometry value, B = sectors remaining, C = config byte
; =============================================================================
sub_089ah:
	ld a,(0f290h)		;089a	3a 90 f2 	: . .  ; A = sectors remaining on track
l089dh:
	ld b,a			;089d	47 	G      ; B = sectors remaining
	ld a,(0f298h)		;089e	3a 98 f2 	: . .  ; A = disk configuration byte
	ld c,a			;08a1	4f 	O      ; C = config
	add a,a			;08a2	87 	.      ; A = config * 2
	add a,a			;08a3	87 	.      ; A = config * 4
	add a,a			;08a4	87 	.      ; A = config * 8
	add a,a			;08a5	87 	.      ; A = config * 16
	sub c			;08a6	91 	.      ; A = config * 16 - config = config * 15
	add a,b			;08a7	80 	.      ; A = config * 15 + sectors remaining
sub_08a8h:
	ret			;08a8	c9 	.      ; Return with combined value in A
