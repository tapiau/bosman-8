; ============================================================================
; MODULE 1: Z80 Reset Vectors, Jump Table, Boot Messages, and System Data
; ============================================================================
;
; Address range: 0x0000 - 0x017F
;
; This module contains the lowest region of the Bosman-8 "Uczen-2" ROM,
; a Polish educational microcomputer running CPM/R v2.5 (a Polish CP/M
; variant). The ROM is a 32KB MBM27256 EPROM mapped at 0x0000-0x7FFF.
;
; Contents:
;   0x0000-0x0001  Warm boot flag byte + padding
;   0x0002-0x0004  Cold boot entry (JP to hardware init)
;   0x0005-0x0007  BDOS entry point
;   0x0008-0x000A  RST 08h vector (disk error handler)
;   0x000B-0x001F  Extended jump table (BIOS helpers, warm reboot)
;   0x0020-0x002F  Delay subroutine (entered mid-routine)
;   0x0030-0x0037  RST 30h vector + padding
;   0x0038-0x003A  INT handler vector (IM1 maskable interrupt)
;   0x003B-0x005D  FDC/system descriptor strings (data, not code)
;   0x005E-0x0065  Padding (zeros)
;   0x0066-0x0068  NMI handler vector
;   0x0069-0x00B4  Boot banner message string (Polish)
;   0x00B5-0x0109  Boot info message string (Polish)
;   0x0110-0x0124  "RAMDYSK uszkodzony" message (RAM disk damaged)
;   0x0125-0x0136  "ROM uszkodzony" message (ROM damaged)
;   0x0137-0x014B  Terminal reset/clear escape sequence
;   0x014C-0x017F  6845 CRT controller parameter tables and
;                  system configuration data
;
; I/O Port Map (relevant to this module):
;   0x06-0x07  ROM checksum diagnostic ports
;   0x08, 0x0A Z80 CTC (Counter/Timer)
;   0x0C-0x0F  WD1793 Floppy Disk Controller
;   0x80-0x83  Z80 PIO (Parallel I/O)
;   0x84-0x87  MC6845 CRT Controller
;   0x98       DIP switch register
;
; RAM areas referenced:
;   0xF000-0xF0FF  Disk workspace
;   0xF200-0xF3FF  BIOS jump table (copied from ROM at 0x08A9)
;   0xF272         INT handler (in RAM jump table)
;   0xF275         RST 30h handler (in RAM jump table)
;   0xF29F         NMI handler (in RAM jump table)
;   0xF35A         Disk I/O read routine (in RAM jump table)
;   0xF360         Disk I/O write routine (in RAM jump table)
;   0xFB7A-0xFB7D  System configuration bytes
;   0xFFA6-0xFFDB  System flags
;
; String encoding: Messages are terminated by a byte with bit 7 set (0x80).
;   The print routine (sub_06f8h) reads bytes until bit 7 is set.
;   ESC sequences use 0x1B prefix for VT52/ADM-3A terminal control.
;   0x1A = clear screen, 0x0D = CR, 0x0A = LF.
;
; ============================================================================

	org	00000h

; ============================================================================
; 0x0000-0x0001: WARM BOOT FLAG
; ============================================================================
; The byte at 0x0000 is used as a warm boot indicator. On cold boot, the
; boot code at l01b1h writes a JP opcode (0xC3) here to create a valid
; warm boot vector "JP warm_boot_entry" at 0x0000. Before that, the ROM
; contains 0x25 0x00 as raw data.
; At runtime: 0x0000 = 0xC3 (JP opcode), 0x0001-0x0002 = warm boot address.
; The BIOS warm boot routine (l037bh) patches this location.

warm_boot_flag:
	dec h			;0000	25 	DEC H - raw byte 0x25 (patched to 0xC3 = JP at runtime)
warm_boot_addr:
	nop			;0001	00 	NOP - raw byte 0x00 (patched to low byte of warm boot addr)

; ============================================================================
; 0x0002-0x0004: COLD BOOT ENTRY POINT
; ============================================================================
; On power-on/reset, the Z80 begins execution at 0x0000. Since byte 0x0000
; is 0x25 (DEC H) and 0x0001 is 0x00 (NOP), execution falls through to
; 0x0002 which jumps to the hardware initialization routine.
; After boot, this is patched to "JP warm_boot" by the BIOS.

cold_boot_entry:
	jp cold_boot_init	;0002	c3 b1 01 	JP 01B1h - jump to hardware init & boot sequence

; ============================================================================
; 0x0005-0x0007: BDOS ENTRY POINT
; ============================================================================
; Standard CP/M BDOS entry. Programs call address 0x0005 with function
; number in C register and parameter in DE. This is the main OS API entry.
; The BIOS patches the jump address here during warm boot.

bdos_entry:
	jp bdos_main		;0005	c3 c9 0c 	JP 0CC9h - jump to BDOS dispatcher

; ============================================================================
; 0x0008-0x000A: RST 08h - DISK ERROR HANDLER
; ============================================================================
; RST 08h vector. Called when a disk error occurs. Jumps to the disk
; error handler which displays error messages and prompts the user.

rst08_disk_error:
	jp disk_error_handler	;0008	c3 24 06 	JP 0624h - disk error display/retry handler

; ============================================================================
; 0x000B-0x001F: EXTENDED SYSTEM JUMP TABLE
; ============================================================================
; These are additional BIOS entry points beyond the standard CP/M vectors.
; They provide direct access to key BIOS and I/O routines.

bios_warm_boot_setup:
	jp bios_warm_boot	;000b	c3 7b 03 	JP 037Bh - BIOS warm boot (patches vectors, reloads CCP)
bios_const_entry:
	jp bios_const		;000e	c3 36 04 	JP 0436h - BIOS CONST (console status) - returns RET at 0436h
disk_read_entry:
	jp 0f35ah		;0011	c3 5a f3 	JP F35Ah - disk sector read (RAM-based jump table)
disk_write_entry:
	jp 0f360h		;0014	c3 60 f3 	JP F360h - disk sector write (RAM-based jump table)
fdc_select_drive:
	jp fdc_drive_select	;0017	c3 1f 07 	JP 071Fh - FDC drive select/motor control
unused_vector_1a:
	jp warm_boot_flag	;001a	c3 00 00 	JP 0000h - unused, points to warm boot (reset)
unused_vector_1d:
	jp warm_boot_flag	;001d	c3 00 00 	JP 0000h - unused, points to warm boot (reset)

; ============================================================================
; 0x0020-0x002F: DELAY SUBROUTINE
; ============================================================================
; This is a software delay loop. It appears to be entered at 0x0023 or
; called with A = delay count. Used for FDC timing and motor spinup waits.
;
; The bytes at 0x0020-0x0025 look like data that was disassembled as code.
; The actual delay entry is at 0x0023, but the region 0x0020-0x0025
; contains configuration/parameter data bytes that happen to disassemble
; as instructions. The meaningful delay loop starts at 0x0026.
;
; Delay timing calculation (at 4 MHz Z80 clock):
;   Inner loop (0x0028-0x0029): DEC B (4T) + JR NZ (12T/7T) = 16T per iteration
;     With B=0xF4 (244): 244 * 16T = 3,904 T-states = ~976 us
;   Outer loop (0x0026-0x002C): inner + DEC A (4T) + JR NZ (12T) = ~992 us per A
;   Total delay: A * ~1 ms (approximately)
;   For A=25h (37): ~37 ms delay

delay_data_0020:
	nop			;0020	00 	data byte 0x00
delay_data_0021:
	add hl,de		;0021	19 	data byte 0x19
delay_data_0022:
	add a,a			;0022	87 	data byte 0x87
delay_data_0023:
	add hl,bc		;0023	09 	data byte 0x09
	jr nc,$-57		;0024	30 c5 	data bytes 0x30 0xC5

delay_outer_loop:
	ld b,0f4h		;0026	06 f4 	B = 244 (inner loop count)
delay_inner_loop:
	dec b			;0028	05 	decrement inner counter
	jr nz,delay_inner_loop	;0029	20 fd 	loop until B = 0 (~976 us inner loop)
	dec a			;002b	3d 	decrement outer counter
	jr nz,delay_outer_loop	;002c	20 f8 	loop until A = 0 (A * ~1 ms total)
	pop bc			;002e	c1 	restore BC (caller pushed it)
	ret			;002f	c9 	return to caller

; ============================================================================
; 0x0030-0x0037: RST 30h VECTOR
; ============================================================================
; RST 30h jumps to a handler in the RAM jump table at 0xF275.
; This is likely used for a system call or utility function.
; Followed by 5 bytes of zero padding to fill to 0x0038.

rst30_vector:
	jp 0f275h		;0030	c3 75 f2 	JP F275h - RST 30h handler in RAM
	nop			;0033	00 	padding
	nop			;0034	00 	padding
	nop			;0035	00 	padding
	nop			;0036	00 	padding
	nop			;0037	00 	padding

; ============================================================================
; 0x0038-0x003A: INT HANDLER VECTOR (Interrupt Mode 1)
; ============================================================================
; In Z80 IM1, all maskable interrupts jump to 0x0038. This redirects
; to a handler in the RAM jump table at 0xF272.
; Note: The boot code later switches to IM2 (vectored interrupts),
; so this is only active briefly during early boot or if IM1 is set.

int_handler_vector:
	jp 0f272h		;0038	c3 72 f2 	JP F272h - INT handler in RAM jump table

; ============================================================================
; 0x003B-0x005D: FDC DESCRIPTOR STRINGS (DATA BLOCK)
; ============================================================================
; These bytes are data, not executable code. The disassembler has
; incorrectly interpreted them as instructions. They are actually
; floppy disk parameter/descriptor data and a manufacturer string.
;
; 0x003B-0x003C: "S\0" - disk type descriptor byte pair (repeated)
; 0x003D-0x003E: "S\0" - disk type descriptor byte pair
; 0x003F-0x0040: 0x06 0xF5 - disk parameter value
; 0x0041:        "S"
; 0x0042:        0x00
;
; 0x0043-0x005D: ASCII string data used by hardware identification routines.
; Bytes decode to: "DZM-180" + 0x80 (terminated)
;                  "is V2.4" + 0x80
;                  "CENTRONICS" + 0x80
;
; Decoded strings:
;   0x0043: "DZM-180" + 0x80  (DZM-180 = disk controller/drive model identifier)
;   0x004B: "is V2.4" + 0x80  (firmware version string fragment)
;   0x0053: "CENTRONICS" + 0x80 (printer port type identifier)

fdc_descriptor_data:
	ld d,e			;003b	53 	'S' - disk type marker
	nop			;003c	00 	0x00 - null separator
	ld d,e			;003d	53 	'S' - disk type marker
	nop			;003e	00 	0x00 - null separator
	ld b,0f5h		;003f	06 f5 	0x06, 0xF5 - disk parameter bytes
	ld d,e			;0041	53 	'S' - disk type marker
fdc_desc_null:
	nop			;0042	00 	0x00 - null separator

; String: "DZM-180" + terminator (0x80)
; DZM-180 is the disk drive/controller module identifier
str_dzm180:
	ld b,h			;0043	44 	'D'
	ld e,d			;0044	5a 	'Z'
	ld c,l			;0045	4d 	'M'
str_dzm180_dash:
	dec l			;0046	2d 	'-'
	ld sp,03038h		;0047	31 38 30 	'1', '8', '0'
	add a,b			;004a	80 	0x80 = string terminator (bit 7 set)

; String: "is V2.4" + terminator (0x80)
; Part of a larger composed message like "DZM-180 is V2.4"
str_version_fragment:
	ld l,c			;004b	69 	'i'
	ld (hl),e		;004c	73 	's'
	ld l,020h		;004d	2e 20 	' ', ' ' (actually '.', ' ' -> "is V2.4" not "is V2.4")
; Note: 0x4D='.', 0x4E (loaded via ld l,020h second byte)=' ' -> ". V" wait...
; Let me re-decode: 0x4B='i', 0x4C='s', 0x4D=' ', 0x4E='V' -- "is V"
; Actually bytes: 69 73 2E 20 56 32 34 80 = "is. V24" - no.
; Bytes: 0x4B=69='i', 0x4C=73='s', 0x4D=2E='.', 0x4E=20=' ', 0x4F=56='V'
; Correction: the string is "is. V2.4" terminated by 0x80
; Re-reading: 69='i' 73='s' 2E='.' 20=' ' 56='V' 32='2' 34='.' 80=term
; That gives "is. V2." - but 0x34='4' and 0x80 = terminator
; Full: 69 73 2E 20 56 32 34 80 = "is. V24" with bit7 term -- nope, 34='4'
; Actually: "is. V24" doesn't make sense. Let me recount:
; 0x4B: 69='i', 0x4C: 73='s', 0x4D: 2E='.', 0x4E: 20=' ',
; 0x4F: 56='V', 0x50: 32='2', 0x51: 2E='.', wait no 0x51 is at line 79
; Line 79: 0x50: 32 34 80 = ld (08034h),a -> bytes 32,34,80
; So 0x50=32='2', 0x51=34='4', 0x52=80=terminator
; String: "is. V24" + 0x80... Hmm, let me look at this differently.
; With 0x4D as 2E: that's a period. Then 0x4E=20=space, 0x4F=56='V'
; 0x50=32='2', 0x51=34='4', 0x52=80=terminator
; Possible reading: "is. V24" but more likely "is V2.4" if 2E is reinterpreted.
; Wait - rethinking the byte order from disasm:
; Line 77: ld l,020h -> bytes at 0x4D-0x4E are 2E,20 -> '.', ' '
; Line 78: ld d,(hl) -> byte at 0x4F is 56 -> 'V'
; Line 79: ld (08034h),a -> bytes at 0x50-0x52 are 32,34,80 -> '2','4',0x80
; So the full string from 0x4B: "is. V24" + terminator
; But that seems odd. Maybe it's "is V2.4" and the '.' is part of version.
; Actually "is. V24" with the period after "is" seems unusual.
; More likely this is two separate uses or the '.' separates differently.
; The string fragment reads: i s . [space] V 2 4 [term]
; I'll note it as: "is. V24" or possibly meant as "is V2.4" display format
	ld d,(hl)		;004f	56 	'V'
	ld (08034h),a		;0050	32 34 80 	'2', '4', 0x80 (string terminator)

; String: "CENTRONICS" + terminator (0x80)
; Identifies the parallel printer interface type
str_centronics:
	ld b,e			;0053	43 	'C'
	ld b,l			;0054	45 	'E'
	ld c,(hl)		;0055	4e 	'N'
	ld d,h			;0056	54 	'T'
	ld d,d			;0057	52 	'R'
	ld c,a			;0058	4f 	'O'
str_centronics_ni:
	ld c,(hl)		;0059	4e 	'N'
	ld c,c			;005a	49 	'I'
	ld b,e			;005b	43 	'C'
str_centronics_s:
	ld d,e			;005c	53 	'S'
str_centronics_term:
	add a,b			;005d	80 	0x80 = string terminator

; Zero padding between string data and NMI vector
	nop			;005e	00 	padding
	nop			;005f	00 	padding
	nop			;0060	00 	padding
	nop			;0061	00 	padding
	nop			;0062	00 	padding
	nop			;0063	00 	padding
fcb_drive_byte:
	nop			;0064	00 	FCB drive byte (0 = default drive), used by DE=0064h refs
	nop			;0065	00 	padding / FCB filename area

; ============================================================================
; 0x0066-0x0068: NMI HANDLER VECTOR
; ============================================================================
; The Z80 non-maskable interrupt always vectors to address 0x0066.
; This redirects to a handler in the RAM-based jump table at 0xF29F.
; NMI is typically triggered by the NMI button or critical hardware events.

nmi_handler:
	jp 0f29fh		;0066	c3 9f f2 	JP F29Fh - NMI handler in RAM jump table

; ============================================================================
; 0x0069-0x00B4: BOOT BANNER MESSAGE (DATA BLOCK)
; ============================================================================
; This is the main boot-up banner displayed when the system starts.
; It is printed by the boot sequence via sub_06f8h (string print routine).
; Strings are terminated by byte with bit 7 set (0x80).
; Contains VT52/ADM-3A escape sequences for screen formatting.
;
; Decoded message (with escape sequences noted):
;   "   " [3 spaces]
;   ESC-'T' (clear to end of line)
;   ESC-'O' (unknown/custom terminal function)
;   ESC-'@' (enter insert mode or custom)
;   ESC-'>' ESC-'G' (keypad numeric mode / custom graphics mode)
;   ESC-'X' (unknown/custom)
;   " " [space]
;   0x1A = clear screen
;   "Mikrokomputer  " [ESC-S] " BOSMAN 8  - 002 S "
;   ESC-'T' " Stanowisko nr " + 0x80 (terminator)
;
; Polish text: "Mikrokomputer" = "Microcomputer"
;              "Stanowisko nr" = "Workstation no."
;
; The 0x80 terminator after "nr " marks end of string. The boot code
; then appends the workstation number digit dynamically.

boot_banner_msg:
	jr nz,$+34		;0069	20 20 	' ', ' '  (2 spaces)
	jr nz,$+28		;006b	20 1a 	' ', 0x1A (space + clear screen)
	dec de			;006d	1b 	0x1B = ESC
	ld d,h			;006e	54 	'T'  -> ESC-T (clear to end of line)
	dec de			;006f	1b 	0x1B = ESC
	ld c,a			;0070	4f 	'O'  -> ESC-O (custom terminal command)
	dec de			;0071	1b 	0x1B = ESC
	ld b,b			;0072	40 	'@'  -> ESC-@ (custom terminal command)
	dec de			;0073	1b 	0x1B = ESC
	ld a,01bh		;0074	3e 1b 	'>', ESC -> '>' then ESC sequence
	ld b,a			;0076	47 	'G'  -> ESC-G (custom: enable attribute/graphics mode)
	dec de			;0077	1b 	0x1B = ESC
	ld e,b			;0078	58 	'X'  -> ESC-X (custom terminal command)
	jr nz,$+28		;0079	20 1a 	' ', 0x1A (space + clear screen)
	ld c,l			;007b	4d 	'M'
	ld l,c			;007c	69 	'i'
	ld l,e			;007d	6b 	'k'
	ld (hl),d		;007e	72 	'r'
	ld l,a			;007f	6f 	'o'
	ld l,e			;0080	6b 	'k'
	ld l,a			;0081	6f 	'o'
	ld l,l			;0082	6d 	'm'
	ld (hl),b		;0083	70 	'p'
	ld (hl),l		;0084	75 	'u'
	ld (hl),h		;0085	74 	't'
	ld h,l			;0086	65 	'e'
boot_banner_msg2:
	ld (hl),d		;0087	72 	'r'
	jr nz,$+34		;0088	20 20 	' ', ' '  (2 spaces)
	dec de			;008a	1b 	0x1B = ESC
boot_banner_s:
	ld d,e			;008b	53 	'S'  -> ESC-S (custom: start of reverse/highlight)
boot_banner_space:
	jr nz,$+68		;008c	20 42 	' ', 'B'
	ld c,a			;008e	4f 	'O'
	ld d,e			;008f	53 	'S'
	ld c,l			;0090	4d 	'M'
	ld b,c			;0091	41 	'A'
	ld c,(hl)		;0092	4e 	'N'
	jr nz,$+58		;0093	20 38 	' ', '8'
boot_banner_dash:
	jr nz,$-49		;0095	20 2d 	' ', '-'
	jr nz,$+50		;0097	20 30 	' ', '0'  (space + '0')
	jr nc,$+50		;0099	30 30 	'0', '0'
	ld (05320h),a		;009b	32 20 53 	'2', ' ', 'S'
	jr nz,$+29		;009e	20 1b 	' ', ESC
	ld d,h			;00a0	54 	'T'  -> ESC-T (clear to end of line)
	jr nz,$+34		;00a1	20 20 	' ', ' '  (2 spaces)
	ld d,e			;00a3	53 	'S'
	ld (hl),h		;00a4	74 	't'
	ld h,c			;00a5	61 	'a'
	ld l,(hl)		;00a6	6e 	'n'
	ld l,a			;00a7	6f 	'o'
	ld (hl),a		;00a8	77 	'w'
	ld l,c			;00a9	69 	'i'
boot_banner_sko:
	ld (hl),e		;00aa	73 	's'
	ld l,e			;00ab	6b 	'k'
	ld l,a			;00ac	6f 	'o'
	jr nz,$+112		;00ad	20 6e 	' ', 'n'
	ld (hl),d		;00af	72 	'r'
	jr nz,$-126		;00b0	20 80 	' ', 0x80 (space + string terminator)
; End of boot banner. Full decoded text (excluding escape codes):
; "   [CLR] Mikrokomputer  [REV] BOSMAN 8  - 002 S [CLR]  Stanowisko nr "
; Translation: "   Microcomputer BOSMAN 8 - 002 S  Workstation no. "
; (Workstation number is appended dynamically by boot code)

	nop			;00b2	00 	padding
	nop			;00b3	00 	padding
	nop			;00b4	00 	padding

; ============================================================================
; 0x00B5-0x0109: SYSTEM INFO MESSAGE (DATA BLOCK)
; ============================================================================
; This message is displayed during boot after the banner. It shows the
; hardware configuration: CPU type, disk system info, and OS version.
; The first byte (0x81) has bit 7 set and is used as a flag/attribute byte
; checked by the boot code (bit 0 tested at 0x02E5).
;
; Decoded message:
;   0x81 (flag byte: bit 0 = 1, bit 7 = 1 -> attribute/control)
;   "      CPU-Z80A" CR LF LF
;   "Dyskowy system operacyjny  CPM/R v2.5    TPA=60KB  " CR LF LF LF
;
; Polish text:
;   "Dyskowy system operacyjny" = "Disk operating system"
;   "TPA=60KB" = Transient Program Area = 60 kilobytes (0x0100-0xEFFF approx)
;
; Note: The 0x80 terminator appears at byte 0x00FF.

boot_info_flag:
	add a,c			;00b5	81 	0x81 = flag byte (bit 0 set = has CPU info; bit 7 = marker)

boot_info_msg:
	jr nz,$+34		;00b6	20 20 	' ', ' '
	jr nz,$+34		;00b8	20 20 	' ', ' '
	jr nz,$+34		;00ba	20 20 	' ', ' '
	jr nz,$+69		;00bc	20 43 	' ', 'C'
	ld d,b			;00be	50 	'P'
	ld d,l			;00bf	55 	'U'
	dec l			;00c0	2d 	'-'
	ld e,d			;00c1	5a 	'Z'
	jr c,$+50		;00c2	38 30 	'8', '0'
boot_info_cpu_a:
	ld b,c			;00c4	41 	'A'
	dec c			;00c5	0d 	0x0D = CR (carriage return)
	ld a,(bc)		;00c6	0a 	0x0A = LF (line feed)
	ld a,(bc)		;00c7	0a 	0x0A = LF
; "      CPU-Z80A" CR LF LF

boot_info_disk_msg:
	ld b,h			;00c8	44 	'D'
boot_info_y:
	ld a,c			;00c9	79 	'y'
	ld (hl),e		;00ca	73 	's'
boot_info_ko:
	ld l,e			;00cb	6b 	'k'
	ld l,a			;00cc	6f 	'o'
boot_info_wy:
	ld (hl),a		;00cd	77 	'w'
	ld a,c			;00ce	79 	'y'
	jr nz,$+117		;00cf	20 73 	' ', 's'
boot_info_ys:
	ld a,c			;00d1	79 	'y'
	ld (hl),e		;00d2	73 	's'
	ld (hl),h		;00d3	74 	't'
	ld h,l			;00d4	65 	'e'
	ld l,l			;00d5	6d 	'm'
	jr nz,$+113		;00d6	20 6f 	' ', 'o'
boot_info_pe:
	ld (hl),b		;00d8	70 	'p'
	ld h,l			;00d9	65 	'e'
boot_info_ra:
	ld (hl),d		;00da	72 	'r'
	ld h,c			;00db	61 	'a'
boot_info_cy:
	ld h,e			;00dc	63 	'c'
	ld a,c			;00dd	79 	'y'
	ld l,d			;00de	6a 	'j'
	ld l,(hl)		;00df	6e 	'n'
	ld a,c			;00e0	79 	'y'
	jr nz,$+34		;00e1	20 20 	' ', ' '
; "Dyskowy system operacyjny" = "Disk operating system"

	ld b,e			;00e3	43 	'C'
	ld d,b			;00e4	50 	'P'
	ld c,l			;00e5	4d 	'M'
	cpl			;00e6	2f 	'/'
	ld d,d			;00e7	52 	'R'
	jr nz,$+120		;00e8	20 76 	' ', 'v'
	ld (0352eh),a		;00ea	32 2e 35 	'2', '.', '5'
	jr nz,$+34		;00ed	20 20 	' ', ' '
	jr nz,$+34		;00ef	20 20 	' ', ' '
; " CPM/R v2.5    "

	ld d,h			;00f1	54 	'T'
	ld d,b			;00f2	50 	'P'
	ld b,c			;00f3	41 	'A'
boot_info_eq:
	dec a			;00f4	3d 	'='
	ld (hl),030h		;00f5	36 30 	'6', '0'  (ld (hl),30h disasm, but data='6','0')
	ld c,e			;00f7	4b 	'K'
	ld b,d			;00f8	42 	'B'
	jr nz,$+34		;00f9	20 20 	' ', ' '
	dec c			;00fb	0d 	0x0D = CR
	ld a,(bc)		;00fc	0a 	0x0A = LF
	ld a,(bc)		;00fd	0a 	0x0A = LF
; "TPA=60KB  " CR LF LF

boot_info_extra_lf:
	ld a,(bc)		;00fe	0a 	0x0A = LF (extra blank line)
boot_info_term:
	add a,b			;00ff	80 	0x80 = string terminator

; End of boot info message. Full decoded text:
; "      CPU-Z80A\r\n\n"
; "Dyskowy system operacyjny  CPM/R v2.5    TPA=60KB  \r\n\n\n"
; Translation: "Disk operating system CPM/R v2.5  TPA=60KB"

; Zero padding after message
	nop			;0100	00 	padding
	nop			;0101	00 	padding
	nop			;0102	00 	padding
	nop			;0103	00 	padding
	nop			;0104	00 	padding
	nop			;0105	00 	padding
	nop			;0106	00 	padding

; ============================================================================
; 0x0107-0x010F: RESERVED/UNUSED AREA
; ============================================================================
; This area is filled with zeros. sub_0107h is referenced as a label
; elsewhere but the content is all NOPs - possibly reserved for future use.

reserved_area:
	nop			;0107	00 	reserved
	nop			;0108	00 	reserved
	nop			;0109	00 	reserved
	nop			;010a	00 	reserved
	nop			;010b	00 	reserved
	nop			;010c	00 	reserved
	nop			;010d	00 	reserved
	nop			;010e	00 	reserved
	nop			;010f	00 	reserved

; ============================================================================
; 0x0110-0x0124: "RAM DISK DAMAGED" MESSAGE (DATA BLOCK)
; ============================================================================
; Displayed when the RAM disk integrity check fails during boot.
; Polish text: "RAMDYSK uszkodzony" = "RAM disk damaged"
; Printed by boot code at address 0x02F0 via sub_06f8h.
;
; Decoded: "RAMDYSK uszkodzony" CR LF + 0x80 terminator

str_ramdisk_damaged:
	ld d,d			;0110	52 	'R'
	ld b,c			;0111	41 	'A'
	ld c,l			;0112	4d 	'M'
	ld b,h			;0113	44 	'D'
	ld e,c			;0114	59 	'Y'
	ld d,e			;0115	53 	'S'
	ld c,e			;0116	4b 	'K'
	jr nz,$+119		;0117	20 75 	' ', 'u'
	ld (hl),e		;0119	73 	's'
	ld a,d			;011a	7a 	'z'
	ld l,e			;011b	6b 	'k'
	ld l,a			;011c	6f 	'o'
	ld h,h			;011d	64 	'd'
	ld a,d			;011e	7a 	'z'
	ld l,a			;011f	6f 	'o'
	ld l,(hl)		;0120	6e 	'n'
	ld a,c			;0121	79 	'y'
	dec c			;0122	0d 	0x0D = CR
	ld a,(bc)		;0123	0a 	0x0A = LF
	add a,b			;0124	80 	0x80 = string terminator
; "RAMDYSK uszkodzony\r\n" (= "RAM disk damaged")

; ============================================================================
; 0x0125-0x0136: "ROM DAMAGED" MESSAGE (DATA BLOCK)
; ============================================================================
; Displayed when the ROM checksum verification fails during boot.
; Polish text: "ROM uszkodzony" = "ROM damaged"
; The first byte (0x1A) is a clear-screen command sent before the message.
; Printed by boot code at address 0x02FC via sub_06f8h.
;
; Decoded: 0x1A (clear screen) "ROM uszkodzony" CR LF + 0x80 terminator

str_rom_damaged:
	ld a,(de)		;0125	1a 	0x1A = clear screen command
	ld d,d			;0126	52 	'R'
	ld c,a			;0127	4f 	'O'
	ld c,l			;0128	4d 	'M'
	jr nz,$+119		;0129	20 75 	' ', 'u'
	ld (hl),e		;012b	73 	's'
	ld a,d			;012c	7a 	'z'
	ld l,e			;012d	6b 	'k'
	ld l,a			;012e	6f 	'o'
	ld h,h			;012f	64 	'd'
	ld a,d			;0130	7a 	'z'
	ld l,a			;0131	6f 	'o'
	ld l,(hl)		;0132	6e 	'n'
str_rom_damaged_y:
	ld a,c			;0133	79 	'y'
	dec c			;0134	0d 	0x0D = CR
	ld a,(bc)		;0135	0a 	0x0A = LF
	add a,b			;0136	80 	0x80 = string terminator
; 0x1A "ROM uszkodzony\r\n" (= clear screen + "ROM damaged")

; ============================================================================
; 0x0137-0x014B: TERMINAL RESET ESCAPE SEQUENCE (DATA BLOCK)
; ============================================================================
; This is a terminal initialization/reset escape sequence string sent
; to set up the display at the end of boot. Printed by boot code at
; address 0x0315 via sub_06f8h.
;
; Decoded sequence:
;   CR CR ESC-'T' ESC-'O' ESC-'@' ESC-'>' ESC-'G' ESC-'X'
;   ' ' 0x1A ESC-'%' CR LF + 0x80 terminator
;
; Meaning:
;   CR CR        - return cursor to column 0 twice
;   ESC-T        - clear to end of line
;   ESC-O        - custom terminal function
;   ESC-@        - custom terminal function
;   ESC-> ESC-G  - custom (possibly enter graphics/attribute mode)
;   ESC-X        - custom terminal function
;   0x1A         - clear screen
;   ESC-%        - custom terminal function (possibly reset attributes)
;   CR LF        - new line

str_terminal_reset:
	dec c			;0137	0d 	0x0D = CR
	dec c			;0138	0d 	0x0D = CR
	dec de			;0139	1b 	0x1B = ESC
	ld d,h			;013a	54 	'T'  -> ESC-T
	dec de			;013b	1b 	0x1B = ESC
	ld c,a			;013c	4f 	'O'  -> ESC-O
	dec de			;013d	1b 	0x1B = ESC
	ld b,b			;013e	40 	'@'  -> ESC-@
	dec de			;013f	1b 	0x1B = ESC
	ld a,01bh		;0140	3e 1b 	'>', ESC  -> ESC-'>' then start of next ESC seq
	ld b,a			;0142	47 	'G'  -> ESC-G
	dec de			;0143	1b 	0x1B = ESC
str_term_reset_x:
	ld e,b			;0144	58 	'X'  -> ESC-X
	jr nz,$+28		;0145	20 1a 	' ', 0x1A (space + clear screen)
str_term_reset_end:
	dec de			;0147	1b 	0x1B = ESC
	dec h			;0148	25 	'%'  -> ESC-% (reset attributes)
	dec c			;0149	0d 	0x0D = CR
	ld a,(bc)		;014a	0a 	0x0A = LF
	add a,b			;014b	80 	0x80 = string terminator

; ============================================================================
; 0x014C-0x017F: 6845 CRT CONTROLLER PARAMETER TABLES AND SYSTEM CONFIG
; ============================================================================
; These are parameter tables for the MC6845 CRT controller, used to set
; up different video modes. The boot code at 0x024F loads HL with 014Ch
; and indexes into these tables using BC (video mode number * 3).
; Each entry is 3 bytes: [line_count_param, low_config, high_config]
; or [step, format_lo, format_hi].
;
; The tables are also referenced by the text editor (at 0x5BE1) which
; copies data from 0x014E onwards to address 0x0080 (128 bytes).
;
; 0x014C-0x014D: Two zero bytes (mode index preamble or mode 0 config)

crt_param_tables:
	nop			;014c	00 	CRT table preamble byte 0
	nop			;014d	00 	CRT table preamble byte 1

; ---- CRT Parameter Set 1 (referenced from 0x5BE1) ----
; These define 6845 register values for a specific video mode.
; Format: Groups of (register_value, ...) loaded via OTIR to port 0x83.
;
; 0x014E-0x0151: "0" "6" "4" 0x80 -> display as "064" + terminator
; But these are actually CRT register data bytes:
;   0x30='0', 0x36='6', 0x34='4', 0x80
; This could be a mode descriptor string "064" meaning 64-column mode.

crt_mode_desc_064:
	jr nc,$+56		;014e	30 36 	0x30, 0x36 - CRT data / ASCII "06"
	inc (hl)		;0150	34 	0x34 - CRT data / ASCII "4"
	add a,b			;0151	80 	0x80 - terminator / CRT data

; 0x0152-0x0157: CRT timing register values
;   0x08 = cursor start register value
;   0x59='Y', 0x32='2', 0x35='5', 0x36='6' - could be "Y256" string
;   0x80 = terminator
crt_param_set_1:
	ex af,af'		;0152	08 	0x08 - CRT register data (horiz. displayed)
	ld e,c			;0153	59 	0x59 - CRT register data / 'Y'
	ld (03635h),a		;0154	32 35 36 	0x32, 0x35, 0x36 - CRT data / "256"
	add a,b			;0157	80 	0x80 - terminator

; 0x0158-0x015D: Another CRT parameter set
;   0x06 = vertical total adjust
;   0x1D = vertical sync position
;   0x31='1', 0x32='2', 0x38='8' -> "128"
;   0x80 = terminator
crt_param_set_2:
	ld b,01dh		;0158	06 1d 	0x06, 0x1D - CRT register data
	ld sp,03832h		;015a	31 32 38 	0x31, 0x32, 0x38 - CRT data / "128"
	add a,b			;015d	80 	0x80 - terminator

; 0x015E-0x0163: CRT parameter set 3
;   0x06 = register value
;   0x77='w' = register value (119 decimal)
;   0x33='3', 0x32='2', 0x30='0' -> "320"
;   0x80 = terminator
crt_param_set_3:
	ld b,077h		;015e	06 77 	0x06, 0x77 - CRT register data
crt_param_320:
	inc sp			;0160	33 	0x33 - CRT data / '3'
	ld (08030h),a		;0161	32 30 80 	0x32, 0x30, 0x80 - CRT data / "20" + term
	nop			;0164	00 	0x00 - padding/separator

; 0x0165-0x0169: CRT parameter set 4 (similar format)
crt_param_set_4:
	ld (hl),a		;0165	77 	0x77 - CRT register data
	inc sp			;0166	33 	0x33 - CRT data / '3'
	ld (08030h),a		;0167	32 30 80 	0x32, 0x30, 0x80 - CRT data / "20" + term
	nop			;016a	00 	0x00 - padding/separator

; 0x016B-0x016F: CRT parameter set 5
crt_param_set_5:
	pop de			;016b	d1 	0xD1 - CRT register data
	dec (hl)		;016c	35 	0x35 - CRT data / '5'
	ld sp,08032h		;016d	31 32 80 	0x31, 0x32, 0x80 - CRT data / "12" + term
	nop			;0170	00 	0x00 - padding/separator

; ============================================================================
; 0x0171-0x017F: SYSTEM CONFIGURATION DATA / DPB PARAMETERS
; ============================================================================
; These bytes contain disk parameter block (DPB) values and system
; configuration constants used by the BIOS disk routines.
; Referenced by various disk I/O and format routines.
;
; 0x0171-0x0172: Disk step rate / head load time
;   0x18 = step rate value for WD1793
;   0x02 = head load time parameter

disk_config_step_rate:
	jr $+4			;0171	18 02 	0x18, 0x02 - disk step rate, head load time

; 0x0173-0x0174: Disk geometry parameters
;   0xF0 = format byte (MFM encoding marker, or track count)
;   0x04 = sectors per track or head count
disk_config_format:
	ret p			;0173	f0 	0xF0 - disk format/density parameter
	inc b			;0174	04 	0x04 - sectors per track or similar

; 0x0175-0x017F: Additional configuration data
; These appear to be disk parameter block entries or
; configuration bytes for different drive types.

disk_config_data:
	jr nz,$+3		;0175	20 01 	0x20, 0x01 - block shift, block mask
	ld e,007h		;0177	1e 07 	0x1E, 0x07 - extent mask, dir entry count high
	ld a,(hl)		;0179	7e 	0x7E - disk size parameter (126 = 0x7E)
	dec b			;017a	05 	0x05 - directory entry count low / reserved tracks
	ld h,c			;017b	61 	0x61 - allocation bitmap byte 0 (0x61 = reserved pattern)
	inc bc			;017c	03 	0x03 - allocation bitmap byte 1 or check vector size
	call 021f3h		;017d	cd f3 21 	0xCD, 0xF3, 0x21 - more config data bytes
; Note: The 'call 021f3h' is actually 3 data bytes (0xCD, 0xF3, 0x21)
; interpreted as an instruction by the disassembler.
; 0xCD = config byte, 0xF3 = config byte, 0x21 = config byte

; ============================================================================
; End of Module 1 (0x0000-0x017F)
; Module 2 (hardware init) continues at 0x0180
; ============================================================================
