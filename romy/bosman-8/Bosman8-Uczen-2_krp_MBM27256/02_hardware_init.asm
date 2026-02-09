; ============================================================================
; MODULE 2: Hardware Initialization, Cold Boot, and Disk Probing
; Bosman-8 "Uczen-2" Polish Educational Computer
; ============================================================================
;
; Address range: 0x0180 - 0x0364
;
; This module contains the hardware initialization and cold boot sequence
; for the Bosman-8 "Uczen-2" microcomputer. It is called from the cold
; boot entry point at 0x0002 (JP cold_boot_init = JP 0x01B1).
;
; Contents:
;   0x0180-0x01B0  crt_init_and_flags - CRT controller init, IM2 setup,
;                  PIO/CTC configuration, system flags clear
;   0x01B1-0x0304  cold_boot_init - Main cold boot sequence:
;                  ROM checksum, BIOS table copy, chip init, DIP switch
;                  read, CRT mode setup, disk probing, RAM disk check,
;                  boot messages display, warm boot handoff
;   0x0305-0x032A  warm_boot_reentry - Warm boot re-entry point (from
;                  disk errors or manual reset)
;   0x032B-0x0364  disk_probe_drive - Probe a floppy drive for presence
;                  by writing test patterns and reading back
;
; I/O Port Map (used in this module):
;   0x04       Z80 CTC channel 0 (timer tick output)
;   0x06       ROM checksum result output (diagnostic)
;   0x07       ROM checksum start trigger (diagnostic)
;   0x08       Z80 CTC channel 2 (baud rate generator)
;   0x0A       Z80 CTC channel 3 (baud rate generator)
;   0x0E       Bank select / ROM disable (write = switch to RAM)
;   0x0F       Bank select / ROM enable (write = switch to ROM)
;   0x80       Z80 PIO port A data (keyboard data in)
;   0x82       Z80 PIO port B data (drive control, status)
;   0x83       Z80 PIO port B control
;   0x85       MC6845 CRT data register
;   0x87       Z80 CTC control register (mode/vector setup)
;   0x98       DIP switch register (active-low, bits 3,5,6 used)
;
; RAM areas referenced:
;   0xF000-0xF00F  Disk workspace (cleared and initialized)
;   0xF13A         Current drive number flag
;   0xF200-0xF5FF  BIOS jump table area (target for ROM copy)
;   0xF26B         System flags byte
;   0xF290         Sectors remaining on track
;   0xF296         Disk geometry parameter
;   0xF298         Disk configuration byte
;   0xFB7A         RAM disk error count / status
;   0xFB7B         Saved track count / disk capacity
;   0xFB7C         Disk state flags
;   0xFB7D         DIP switch configuration byte (workstation number)
;   0xFFAA         Keyboard flags
;   0xFFAD         System mode flag
;   0xFFAE         Hardware state flags
;   0xFFB0         BDOS state flags
;
; Boot sequence overview:
;   1. Trigger ROM checksum hardware (port 0x07)
;   2. Set up stack at 0xF200
;   3. Compute ROM checksum (sum all bytes 0x0000-0x3FFF)
;   4. Output checksum to diagnostic port 0x06
;   5. Copy BIOS jump table from ROM (0x08A9) to RAM (0xF200), 1024 bytes
;   6. Initialize Z80 CTC (channels 0-3, baud rate timers)
;   7. Initialize Z80 PIO (port B mode, interrupt vectors)
;   8. Initialize MC6845 CRT controller
;   9. Read DIP switches at port 0x98 to determine workstation number
;  10. Call crt_init_and_flags to finish CRT setup and clear flags
;  11. Patch cold boot entry to warm boot (0x0003 = 0xD5, 0x0004 = 0x00)
;  12. Clear disk workspace 0xF000-0xF0FF
;  13. Call BIOS init (sub_0365h) to set up DPH/vectors
;  14. Probe disk drives A: and B: for presence
;  15. Determine CRT video mode from drive geometry
;  16. Read disk sector to verify RAM disk
;  17. Display boot banner and system info
;  18. Print terminal reset sequence
;  19. Jump to CCP (l1a35h) to start command processor
;
; ============================================================================

; ============================================================================
; CRT_INIT_AND_FLAGS (0x0180) - Initialize CRT and Clear System Flags
; ============================================================================
; Called from cold_boot_init after DIP switch reading (at 0x021F).
; Initializes the MC6845 CRT controller with parameters from a table,
; sets up Z80 IM2 interrupt mode, configures PIO port B for output,
; and clears several system flag bytes.
;
; Entry: Table at (HL) = 14 bytes of CRT register data (set up by caller)
;        0xFB7D already holds the DIP switch config byte
; Exit:  CRT initialized, IM2 enabled, PIO configured, flags cleared
;
; The CRT register loading uses OTIR: BC = 0x830E means port 0x83,
; count 14 (0x0E). This loads 14 register values into the 6845.
; Then register 6 is manually set to the cursor start value from 0xFB7D.
; ============================================================================

crt_init_and_flags:
	ld (hl),b		;0180	70	Store B (0) into CRT param table entry
	ld bc,0830eh		;0181	01 0e 83	BC = port 0x83 (CRT ctrl), count 14
	ld b,00eh		;0184	06 0e		B = 14 registers to load
crt_load_regs:
	otir		;0186	ed b3		Output 14 bytes from (HL) to port 0x83 (6845 regs)
	ld a,006h		;0188	3e 06		A = CRT register 6 (cursor start / vert displayed)
	out (083h),a		;018a	d3 83		Select CRT register 6
	ld a,(0fb7dh)		;018c	3a 7d fb	A = DIP switch config byte
	out (083h),a		;018f	d3 83		Write config value to CRT register 6

; --- Set up Z80 IM2 (vectored interrupts) ---
	ld a,0f3h		;0191	3e f3		A = 0xF3 = high byte of interrupt vector table
	ld i,a		;0193	ed 47		I register = 0xF3 (vector table at 0xF300)
	im 2		;0195	ed 5e		Switch to Interrupt Mode 2

; --- Configure Z80 CTC channel 3 ---
; CTC control word 0xB7 = interrupt enable, timer mode, prescaler 256,
; falling edge, time constant follows
	ld a,0b7h		;0197	3e b7		A = CTC control word
	out (087h),a		;0199	d3 87		Output to CTC (channel 3 via port 0x87)
	ld a,020h		;019b	3e 20		A = time constant 32 (baud rate divisor)
	out (086h),a		;019d	d3 86		Load time constant to CTC
	ld a,000h		;019f	3e 00		A = 0 (second time constant or reset)
	out (086h),a		;01a1	d3 86		Load to CTC

; --- Clear system flags ---
	xor a			;01a3	af		A = 0
	ld (0ffadh),a		;01a4	32 ad ff	Clear system mode flag
	ld (0ffaah),a		;01a7	32 aa ff	Clear keyboard flags
	ld (0ffaeh),a		;01aa	32 ae ff	Clear hardware state flags
	ld (0ffb0h),a		;01ad	32 b0 ff	Clear BDOS state flags
	ret			;01b0	c9		Return to caller

; ============================================================================
; COLD_BOOT_INIT (0x01B1) - Main Cold Boot Entry Point
; ============================================================================
; This is the main boot routine, jumped to from cold_boot_entry (0x0002).
; It performs complete hardware initialization and starts the CP/M system.
;
; The routine:
;  1. Triggers ROM checksum verification via diagnostic port
;  2. Sets up stack pointer
;  3. Computes a software checksum of ROM (0x0000-0x3FFF, 16KB)
;  4. Copies BIOS jump table (1KB) from ROM 0x08A9 to RAM 0xF200
;  5. Initializes Z80 CTC (3 channels for baud rate generation)
;  6. Initializes Z80 PIO port B (mode 3, bidirectional I/O)
;  7. Initializes MC6845 CRT controller (cursor position)
;  8. Reads PIO port A (clears any pending data)
;  9. Reads DIP switches at port 0x98 to build workstation config
; 10. Calls crt_init_and_flags for CRT register loading
; 11. Patches cold boot vector to prevent re-running cold boot
; 12. Clears 256 bytes of disk workspace at 0xF000
; 13. Initializes BIOS (sub_0365h)
; 14. Probes floppy drives to detect which are present
; 15. Determines video mode based on disk geometry
; 16. Verifies RAM disk integrity
; 17. Displays boot messages
; 18. Hands off to CCP
; ============================================================================

cold_boot_init:
	out (007h),a		;01b1	d3 07		Trigger ROM checksum hardware (diagnostic)
	ld sp,0f200h		;01b3	31 00 f2	Set stack pointer to 0xF200 (top of disk workspace)

; --- Software ROM checksum calculation ---
; Sum all bytes from 0x0000 to 0x3FFF (16KB ROM). When bit 6 of H is set,
; address >= 0x4000 and we've covered the entire ROM area.
	ld hl,l0000h		;01b6	21 00 00	HL = 0x0000 (start of ROM)
	xor a			;01b9	af		A = 0 (checksum accumulator)
rom_checksum_loop:
	add a,(hl)		;01ba	86		Add byte at (HL) to checksum
	inc hl			;01bb	23		Next byte
	bit 6,h		;01bc	cb 74		Test bit 6 of H (true when H >= 0x40)
	jr z,rom_checksum_loop	;01be	28 fa		Loop until HL >= 0x4000
	or a			;01c0	b7		Set flags based on checksum
	out (006h),a		;01c1	d3 06		Output checksum to diagnostic port 0x06
	ex af,af'		;01c3	08		Save checksum result in AF' for later

; --- Copy BIOS jump table from ROM to RAM ---
; Copy 1024 bytes (0x400) from ROM at 0x08A9 to RAM at 0xF200.
; This is the BIOS vector table that gets patched at runtime.
	ld hl,l08a9h		;01c4	21 a9 08	HL = source: BIOS jump table in ROM
	ld de,0f200h		;01c7	11 00 f2	DE = dest: RAM jump table area
	ld bc,00400h		;01ca	01 00 04	BC = 1024 bytes to copy
	ldir		;01cd	ed b0		Copy ROM BIOS table to RAM

; --- Initialize Z80 CTC (Counter/Timer Circuit) ---
; CTC has 4 channels at ports 0x84-0x87 (but also aliased).
; Here channels are programmed for baud rate generation.
;
; Channel setup: control word, then time constant
; 0x35 = counter mode, prescaler 16, no interrupt, time constant follows
; 0x76 = time constant
; 0xB6 = timer mode, prescaler 256, interrupt, time constant follows
	ld a,035h		;01cf	3e 35		CTC ch0 control: counter mode, prescaler 16
	out (087h),a		;01d1	d3 87		Program CTC channel
	ld a,076h		;01d3	3e 76		CTC ch0 time constant: 118
	out (087h),a		;01d5	d3 87		Load time constant
	ld a,0b6h		;01d7	3e b6		CTC ch1 control: timer, prescaler 256, interrupt
	out (087h),a		;01d9	d3 87		Program CTC channel

; --- Initialize Z80 PIO port B ---
; PIO port B at 0x82 (data), 0x83 (control)
; Mode 3 = bit mode (each bit individually input or output)
; 0x03 = select register 3 (mode control)
; 0xE1 = I/O direction mask (bits: 1=input, 0=output)
;         0xE1 = 11100001b: bits 7,6,5,0=input, bits 4,3,2,1=output
; 0x04 = interrupt control register select
; 0x0C = interrupt control word
; 0x05 = select register 5 (interrupt mask)
; 0xE8 = interrupt mask value
	ld a,003h		;01db	3e 03		PIO control: mode register select
	out (082h),a		;01dd	d3 82		Write to PIO port B control
	ld a,0e1h		;01df	3e e1		PIO I/O direction: 11100001b
	out (082h),a		;01e1	d3 82		Set direction mask
	ld a,004h		;01e3	3e 04		PIO control: interrupt control select
	out (082h),a		;01e5	d3 82		Write to PIO port B control
	ld a,00ch		;01e7	3e 0c		PIO interrupt control word
	out (082h),a		;01e9	d3 82		Set interrupt control
	ld a,005h		;01eb	3e 05		PIO control: interrupt mask select
	out (082h),a		;01ed	d3 82		Write to PIO port B control
	ld a,0e8h		;01ef	3e e8		PIO interrupt mask value
	out (082h),a		;01f1	d3 82		Set interrupt mask

; --- Initialize MC6845 CRT controller ---
; Set cursor position registers (R14=cursor addr high, R15=cursor addr low)
; Register 14 (0x14) = cursor address high byte
; Register 15 is implied by second write
	ld a,014h		;01f3	3e 14		CRT register 14 (cursor address high)
	out (085h),a		;01f5	d3 85		Select register 14
	ld a,000h		;01f7	3e 00		Cursor position high = 0
	out (085h),a		;01f9	d3 85		Write cursor high byte

; --- Read PIO port A to clear pending data ---
	in a,(080h)		;01fb	db 80		Read PIO port A (keyboard), discard

; --- Brief delay for hardware settle ---
	ld a,001h		;01fd	3e 01		A = 1 (short delay count)
	call 00025h		;01ff	cd 25 00	Call delay subroutine (delay_data_0023 area)

; --- Read PIO port A again after settle ---
	in a,(080h)		;0202	db 80		Read PIO port A again, discard

; --- Read DIP switches and build workstation config byte ---
; DIP switches at port 0x98 encode the workstation number.
; Bits 3, 5, 6 are read (active low? active high?) and mapped
; to bits 0, 1, 2 of the config byte B.
; Finally B is incremented to make it 1-based workstation number.
	xor a			;0204	af		A = 0
	ld b,a			;0205	47		B = 0 (config byte accumulator)
	in a,(098h)		;0206	db 98		Read DIP switch register
	bit 6,a		;0208	cb 77		Test DIP switch bit 6
	jr z,dip_skip_bit2	;020a	28 02		Skip if bit 6 = 0
	set 2,b		;020c	cb d0		Set bit 2 in config (value += 4)
dip_skip_bit2:
	bit 5,a		;020e	cb 6f		Test DIP switch bit 5
	jr z,dip_skip_bit1	;0210	28 02		Skip if bit 5 = 0
	set 1,b		;0212	cb c8		Set bit 1 in config (value += 2)
dip_skip_bit1:
	bit 3,a		;0214	cb 5f		Test DIP switch bit 3
	jr z,dip_skip_bit0	;0216	28 02		Skip if bit 3 = 0
	set 0,b		;0218	cb c0		Set bit 0 in config (value += 1)
dip_skip_bit0:
	inc b			;021a	04		Increment to make 1-based (station 1-8)
	ld a,b			;021b	78		A = workstation number
	ld (0fb7dh),a		;021c	32 7d fb	Store workstation number in config byte

; --- Call CRT init with DIP-based parameters ---
	call 0017eh		;021f	cd 7e 01	Call crt_init_and_flags (0x017E area, enters at 0x0180)

; --- Patch cold boot entry to prevent re-initialization ---
; Write 0xD5 to address 0x0003 and 0x00 to 0x0004.
; This changes the JP target at 0x0002 from cold_boot_init to
; an address starting with 0x00D5, effectively disabling cold boot
; on subsequent resets (warm boot path takes over).
	ld a,0d5h		;0222	3e d5		A = 0xD5 (new low byte of jump target)
	ld (l0002h+1),a		;0224	32 03 00	Store at 0x0003 (JP target low byte)
	xor a			;0227	af		A = 0
	ld (l0002h+2),a		;0228	32 04 00	Store at 0x0004 (JP target high byte)

; --- Clear disk workspace (256 bytes at 0xF000) ---
	ld hl,0f000h		;022b	21 00 f0	HL = 0xF000 (disk workspace start)
	ld b,000h		;022e	06 00		B = 0 (means 256 iterations via DJNZ wrap)
clear_disk_workspace:
	ld (hl),a		;0230	77		Store 0 at (HL)
	inc hl			;0231	23		Next byte
	djnz clear_disk_workspace	;0232	10 fc	Loop 256 times

; --- Set current drive to A: ---
	ld a,001h		;0234	3e 01		A = 1 (drive A:)
	ld (0f13ah),a		;0236	32 3a f1	Set current drive number

; --- Initialize BIOS tables ---
	call sub_0365h		;0239	cd 65 03	Call BIOS init (copy DPH/DPB to RAM, set vectors)

; --- Probe disk drives ---
; disk_probe_drive is called with B = drive number (4 = drive B:, 0 = drive A:)
; Returns A = probe result (0=not found, 1=single-density, 2=double-density)
; The results determine the CRT video mode and disk configuration.
	ld b,004h		;023c	06 04		B = 4 (probe drive B: first, track 4)
	call sub_032bh		;023e	cd 2b 03	Probe drive B:
	add a,a			;0241	87		A = result * 2 (shift left for table index)
	push af			;0242	f5		Save drive B: result
	ld b,000h		;0243	06 00		B = 0 (probe drive A:, track 0)
	call sub_032bh		;0245	cd 2b 03	Probe drive A:
	dec a			;0248	3d		Adjust result (0-based)
	pop bc			;0249	c1		B = drive B: result * 2
	add a,b			;024a	80		A = combined drive config index
	add a,a			;024b	87		A = index * 2
	ld c,a			;024c	4f		C = config index

; --- Select CRT video mode based on disk config ---
; The CRT parameter table at 0x014C has entries of 3 bytes each.
; Index into table: HL = 0x014C + C*3
	ld b,000h		;024d	06 00		B = 0 (BC = C for 16-bit add)
	ld hl,l014ch		;024f	21 4c 01	HL = CRT parameter table base
	add hl,bc		;0252	09		HL += BC (offset by config)
	add hl,bc		;0253	09		HL += BC (x2)
	add hl,bc		;0254	09		HL += BC (x3, total = index * 3)
	ld d,(hl)		;0255	56		D = first param byte (sector count adjustment)
	inc hl			;0256	23		Next byte
	ld e,(hl)		;0257	5e		E = second param byte (sectors per track)

; --- Configure disk geometry ---
setup_disk_geometry:
	inc hl			;0258	23		Point to third param byte
	push hl			;0259	e5		Save pointer to CRT register data

; Update disk sectors on track: add D to current value
	ld a,(0f298h)		;025a	3a 98 f2	A = current disk config byte
	ld b,a			;025d	47		B = old config
	add a,d			;025e	82		A = old + adjustment D
	ld (0f298h),a		;025f	32 98 f2	Store updated config byte

; Calculate sectors remaining on track:
; formula: B*15 - E (old_config * 15 - sectors_per_track)
; B*16 - B = B*15, then subtract E
	ld a,b			;0262	78		A = old config
	add a,a			;0263	87		A *= 2
	add a,a			;0264	87		A *= 4
	add a,a			;0265	87		A *= 8
	add a,a			;0266	87		A *= 16
	sub b			;0267	90		A = B*16 - B = B*15
	sub e			;0268	93		A = B*15 - E (sectors remaining)
	jr c,sectors_underflow	;0269	38 01	If negative, clamp to 0
	xor a			;026b	af		A = 0 (no sectors remaining)
sectors_underflow:
	neg		;026c	ed 44		A = -A (convert to positive count)
	ld (0f290h),a		;026e	32 90 f2	Store sectors remaining on track

; --- Read and verify disk sector (RAM disk check) ---
; Select drive configuration for disk read
	ld c,000h		;0271	0e 00		C = 0 (drive A:)
	ld a,(0f296h)		;0273	3a 96 f2	A = disk geometry parameter
	ld b,a			;0276	47		B = geometry param
	ld a,(0f298h)		;0277	3a 98 f2	A = disk config byte
	xor 00eh		;027a	ee 0e		Toggle bits 1,2,3 (format bits)

; Determine read start address based on format
	ld hl,l0000h		;027c	21 00 00	HL = 0x0000 (default read addr)
	or a			;027f	b7		Test config
	rra			;0280	1f		Rotate right (test bit 0)
	jr nc,ramdisk_read_setup	;0281	30 03	Skip if bit 0 clear
ramdisk_alt_addr:
	ld hl,l7800h		;0283	21 00 78	HL = 0x7800 (alternative read address)
ramdisk_read_setup:
	ld de,0fa20h		;0286	11 20 fa	DE = 0xFA20 (DMA buffer for sector read)
	push bc			;0289	c5		Save BC
	call 0f321h		;028a	cd 21 f3	Call disk select routine (RAM jump table)
	pop bc			;028d	c1		Restore BC
	push hl			;028e	e5		Save HL (read address)
	push bc			;028f	c5		Save BC

; --- Verify RAM disk by reading and comparing sectors ---
ramdisk_verify_loop:
	push bc			;0290	c5		Save loop counter
	call 0f34eh		;0291	cd 4e f3	Read sector via RAM BIOS routine
	ld c,a			;0294	4f		C = byte read from disk
	ld a,(de)		;0295	1a		A = byte from comparison buffer
	inc de			;0296	13		Next buffer byte
	cp c			;0297	b9		Compare disk byte with buffer byte
	pop bc			;0298	c1		Restore counter
	jr z,ramdisk_byte_ok	;0299	28 01	Skip if match
	inc c			;029b	0c		Increment error counter (in C)
ramdisk_byte_ok:
	djnz ramdisk_verify_loop	;029c	10 f2	Loop for B bytes

; Store RAM disk error count
	ld a,c			;029e	79		A = error count
	ld (0fb7ah),a		;029f	32 7a fb	Store RAM disk status (0 = OK)
	pop bc			;02a2	c1		Restore BC
	pop hl			;02a3	e1		Restore HL

; --- Check if RAM disk needs formatting ---
; If error count >= 4, the RAM disk is corrupt -> format it
	cp 004h		;02a4	fe 04		Compare errors with threshold 4
	jr c,ramdisk_ok		;02a6	38 18	If < 4 errors, RAM disk is OK

; --- Format RAM disk (too many errors) ---
; Fill 128 bytes with 0xE5 (CP/M empty directory marker), repeated B times
ramdisk_format:
	ld c,080h		;02a8	0e 80		C = 128 bytes per block
	ld a,040h		;02aa	3e 40		A = 64 (delay for motor spinup)
	call 00025h		;02ac	cd 25 00	Delay subroutine
ramdisk_fill_block:
	ld (hl),0e5h		;02af	36 e5		Fill with 0xE5 (empty directory entry)
ramdisk_fill_byte:
	inc hl			;02b1	23		Next byte
	dec c			;02b2	0d		Decrement byte counter
	jr nz,ramdisk_fill_block	;02b3	20 fa	Loop for 128 bytes
	djnz ramdisk_format	;02b5	10 f1	Loop for B blocks

; Clear RAM disk status after formatting
	xor a			;02b7	af		A = 0
	ld (0fb7ah),a		;02b8	32 7a fb	Clear RAM disk error status
	ld (0fb7ch),a		;02bb	32 7c fb	Clear disk state flags
	jr boot_store_capacity	;02be	18 0d	Jump to store capacity

; --- RAM disk is OK - check capacity ---
ramdisk_ok:
	ld a,(0f290h)		;02c0	3a 90 f2	A = sectors remaining
	ld b,a			;02c3	47		B = sectors remaining
	ld a,(0fb7bh)		;02c4	3a 7b fb	A = saved track count
	cp b			;02c7	b8		Compare saved vs current
	jr nc,boot_store_capacity	;02c8	30 03	If saved >= current, keep saved
	ld (0f290h),a		;02ca	32 90 f2	Use saved value (smaller capacity)

; --- Store disk capacity and continue boot ---
boot_store_capacity:
	xor a			;02cd	af		A = 0
	call 0f321h		;02ce	cd 21 f3	Call disk select (deselect / reset)

; --- Restore checksum result and display boot messages ---
	ex af,af'		;02d1	08		Restore ROM checksum from AF'

; Print boot banner ("Mikrokomputer BOSMAN 8 - Stanowisko nr")
	ld hl,l0069h		;02d2	21 69 00	HL = boot banner message
	call sub_06f8h		;02d5	cd f8 06	Print string (bit7-terminated)

; Append workstation number digit to banner
	ld a,(0fb7dh)		;02d8	3a 7d fb	A = workstation number (1-8)
	add a,030h		;02db	c6 30		Convert to ASCII digit ('0' + number)
	ld c,a			;02dd	4f		C = ASCII digit character
	call sub_0702h		;02de	cd 02 07	Output character with wait

; --- Display system info (CPU, OS version) ---
	pop hl			;02e1	e1		Restore HL (from earlier push)
	ld a,(l00b5h)		;02e2	3a b5 00	A = boot info flag byte (0x81)
	bit 0,a		;02e5	cb 47		Test bit 0 (has CPU info?)
	call z,sub_06f8h	;02e7	cc f8 06	If bit 0 = 0, print CPU info string
	ld hl,l00b6h		;02ea	21 b6 00	HL = boot info message (OS version)
	call sub_06f8h		;02ed	cd f8 06	Print "Dyskowy system operacyjny CPM/R v2.5..."

; --- Display RAM disk status if errors detected ---
	ld hl,l0110h		;02f0	21 10 01	HL = "RAMDYSK uszkodzony" message
	ld a,(0fb7ah)		;02f3	3a 7a fb	A = RAM disk error count
	or a			;02f6	b7		Test if any errors
	call nz,sub_06f8h	;02f7	c4 f8 06	If errors > 0, print "RAM disk damaged"
	jr boot_finalize	;02fa	18 13		Jump to finalize boot

; --- ROM checksum failed path (jumped to from elsewhere) ---
; Display "ROM uszkodzony" and halt
rom_checksum_failed:
	ld hl,l0125h		;02fc	21 25 01	HL = "ROM uszkodzony" message
	call sub_06f8h		;02ff	cd f8 06	Print "ROM damaged" message
	jp 0f36ah		;0302	c3 6a f3	Jump to halt/reset routine

; ============================================================================
; WARM_BOOT_REENTRY (0x0305) - Warm Boot Re-entry Point
; ============================================================================
; Called after disk errors or when the system needs to restart without
; full hardware re-initialization. Resets stack, deselects drives,
; re-initializes BIOS, and continues to boot_finalize.
; ============================================================================

warm_boot_reentry:
	ld sp,0f200h		;0305	31 00 f2	Reset stack pointer
	xor a			;0308	af		A = 0 (deselect all drives)
	call l071fh		;0309	cd 1f 07	Deselect drives / motor off
	call sub_0365h		;030c	cd 65 03	Re-initialize BIOS tables

; --- Finalize boot sequence ---
boot_finalize:
; Store final disk capacity
	ld a,(0f290h)		;030f	3a 90 f2	A = sectors remaining
	ld (0fb7bh),a		;0312	32 7b fb	Save as disk capacity

; Send terminal reset/clear sequence
	ld hl,l0137h		;0315	21 37 01	HL = terminal reset escape sequence
	call sub_06f8h		;0318	cd f8 06	Print terminal reset string

; Clear bit 3 of system flags (disk system ready flag?)
	ld hl,0f26bh		;031b	21 6b f2	HL = system flags byte
	res 3,(hl)		;031e	cb 9e		Clear bit 3 (printer offline flag)

; Read first sector of system disk to load CCP/BDOS
	ld hl,l0002h+2		;0320	21 04 00	HL = 0x0004 (JP target address)
	call 0f35ah		;0323	cd 5a f3	Read disk sector via RAM routine
	ld c,a			;0326	4f		C = result

; Enable interrupts and jump to CCP
	ei			;0327	fb		Enable interrupts
	jp l1a35h		;0328	c3 35 1a	Jump to CCP entry point

; ============================================================================
; DISK_PROBE_DRIVE (sub_032bh) - Probe Floppy Drive for Presence
; ============================================================================
; Probes a floppy drive by writing test patterns (0x55 and 0xAA) to a
; sector and reading them back. This determines if a drive is present
; and what density format it uses.
;
; Entry: B = track number to probe (0 = drive A:, 4 = drive B:)
; Exit:  A = probe result:
;          0 = drive not present (no response)
;          1 = drive present, first pattern (0x55) matched
;          2 = drive present, second pattern (0xAA) matched
;
; Algorithm:
;   1. Select track B
;   2. Read sector at track B, get value in D
;   3. Write 0x55 to that sector
;   4. Select track B+1
;   5. Read sector at track B+1, get value in E
;   6. Write 0xAA to track B+1
;   7. Re-select track B, read back
;   8. If readback == 0x55, drive present with pattern 1 -> restore both sectors
;   9. If readback == 0xAA, drive present with pattern 2 (may indicate density)
;  10. Otherwise, drive not present -> return 0
; ============================================================================

sub_032bh:
	ld a,b			;032b	78		A = track number
disk_probe_select:
	call 0f321h		;032c	cd 21 f3	Select disk track (RAM routine)
	ld hl,l0000h		;032f	21 00 00	HL = address 0x0000 (sector buffer)
	call 0f35ah		;0332	cd 5a f3	Read sector from disk
	ld d,a			;0335	57		D = original sector data
	ld (hl),055h		;0336	36 55		Write test pattern 0x55

; Select next track (B+1) and save its original data
	ld a,b			;0338	78		A = track number
	inc a			;0339	3c		A = track + 1
	call 0f321h		;033a	cd 21 f3	Select next track
	call 0f35ah		;033d	cd 5a f3	Read sector from next track
	ld e,a			;0340	5f		E = original data from track B+1
	ld (hl),0aah		;0341	36 aa		Write test pattern 0xAA

; Re-select original track and read back to verify
	ld a,b			;0343	78		A = original track number
	call 0f321h		;0344	cd 21 f3	Re-select original track
	call 0f35ah		;0347	cd 5a f3	Read sector back

; Compare readback with first test pattern (0x55)
	cp 055h		;034a	fe 55		Did we read back 0x55?
	jr z,probe_pattern1_match	;034c	28 09	Yes - drive present, pattern 1

; Compare readback with second test pattern (0xAA)
	cp 0aah		;034e	fe aa		Did we read back 0xAA?
	ld a,000h		;0350	3e 00		A = 0 (drive not found, tentative)
	ret nz			;0352	c0		If not 0xAA either, drive not present

; Pattern 0xAA matched (written to track B+1, read from track B?)
; This may indicate a different density or interleave
	ld (hl),d		;0353	72		Restore original data to sector
	ld a,001h		;0354	3e 01		A = 1 (drive present, density type 1)
	ret			;0356	c9		Return

; --- Pattern 0x55 matched - drive confirmed present ---
probe_pattern1_match:
; Restore both tracks to their original data
	ld a,b			;0357	78		A = track number
	inc a			;0358	3c		A = track + 1
	call 0f321h		;0359	cd 21 f3	Select track B+1
	ld (hl),e		;035c	73		Restore original data (saved in E)

	ld a,b			;035d	78		A = original track number
	call 0f321h		;035e	cd 21 f3	Select original track
	ld (hl),d		;0361	72		Restore original data (saved in D)

	ld a,002h		;0362	3e 02		A = 2 (drive present, density type 2)
	ret			;0364	c9		Return

; ============================================================================
; End of Module 2 (0x0180-0x0364)
; Module 3 (BIOS core routines) continues at 0x0365
; ============================================================================
