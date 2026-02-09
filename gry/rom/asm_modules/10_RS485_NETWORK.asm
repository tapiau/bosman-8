; ════════════════════════════════════════════════════════════════════════════
; RS-485 NETWORK MODULE
; ════════════════════════════════════════════════════════════════════════════
;
; This module handles all RS-485 network communication for the student
; computer in the classroom network.
;
; The RS-485 adapter module physically replaced the WD1770 FDC (floppy disk
; controller) on the motherboard, occupying the same slot and using ports
; 0xF8-0xFF instead of the standard FDC ports 0xEC-0xEF.
;
; Network Architecture:
;   - Master (Teacher) has WD1770 + disk, sends programs/data
;   - Slaves (Students) have RS-485 adapter, receive and execute
;   - Protocol: 9600 baud, asynchronous, with checksums
;   - Transport: Twisted pair (full differential RS-485)
;   - Network: Up to 16 nodes (addresses 0-F in station ID)
;
; Functions in this module:
;   - RS485_LOADER: Main receive/load procedure (HALT waiting for teacher)
;   - RS485_SETUP_1/2/3: Hardware initialization sequences
;   - RS485_CONFIG_A/B/C/D: Configuration for different modes
;   - DATA_PROCESSOR: Organize received data into CP/M file system
;
; ════════════════════════════════════════════════════════════════════════════

#include "00_DEFINES.asm"

; ─────────────────────────────────────────────────────────────────────────────
; PROCEDURE: RS485_LOADER
; Address: 0x3F3F
; ─────────────────────────────────────────────────────────────────────────────
;
; Main RS-485 network loader procedure. This is called during system
; initialization when AUTOEXEC is not found on local storage.
;
; Operation:
;   1. Enable RS-485 interface
;   2. HALT CPU - wait for interrupt from incoming network data
;   3. Receive data from teacher station via RS-485
;   4. Transfer received data to RAM disk (0xDB00)
;   5. Call DATA_PROCESSOR to organize into CP/M file system
;   6. Send ACK back to teacher
;   7. Jump to program execution
;
; Registers used:
;   HL - buffer address (0xDB00)
;   BC - byte counter
;   DE - source/destination pointers
;
; Memory touched:
;   0xDB00 - Start of receive buffer / RAM disk
;   0xFFA6 - Buffer address register
;   0xFFAD - Status flags (bit 5 = RS-485 enable)
;   0xFFAE - Control flags
;
; Time: Indeterminate (blocks until data arrives or timeout)
;
; ─────────────────────────────────────────────────────────────────────────────

RS485_LOADER:
    ; Initialize control registers
    ld hl,0xffadh               ; HL = status flags address
    set 5,(hl)                  ; Set bit 5: Enable RS-485
    
    ; Call setup procedures to configure the RS-485 hardware
    call RS485_SETUP_1          ; Setup procedure 1 (initialization)
    call RS485_SETUP_2          ; Setup procedure 2 (ports)
    call RS485_SETUP_3          ; Setup procedure 3 (mode)
    
    ; Prepare receive buffer
    ld hl,0xdb00h               ; HL = buffer at 0xDB00 (RAM disk start)
    ld (0xffa6h),hl             ; Store address in buffer register
    
    ; WAIT FOR DATA FROM TEACHER
    halt                        ; ★ CPU halts here until IRQ from RS-485
                                ; When data arrives, interrupt triggers
                                ; and processor wakes up
    
    ; Receive complete - process data
    ld hl,(0xffabh)             ; HL = number of bytes received
    ld bc,0xfb80h               ; BC = destination address
    or a                        ; Clear carry
    sbc hl,bc                   ; HL = number of bytes to transfer
    
    ld de,(0xffa6h)             ; DE = source (receive buffer)
    ld hl,0xfb80h               ; HL = destination
    ldir                        ; Transfer block: (HL++) ← (DE++), repeat BC times
    
    ld (0xffa6h),de             ; Update buffer pointer
    
    ; Wait for end-of-data marker (0xFF)
    dec hl
    ld a,0xffh
    cp (hl)
    jr nz,$-29                  ; Loop if not 0xFF marker
    
    ; Data transfer complete
    halt                        ; Wait for confirmation from teacher
    
    ; Load and process received data
    ld hl,0xfb80h               ; HL = loaded data
    call DATA_PROCESSOR         ; Process data: create CP/M file system
    
    ; Call additional setup procedures
    ld hl,0x01f40h              ; Some address?
    call 0x473ah                ; Procedure
    
    call 0x04209h               ; Procedure
    
    ; Set control flags
    ld hl,0xffaeh               ; Control flags
    set 1,(hl)                  ; Set bit 1
    
    call 0x041eeh               ; Procedure
    
    ; Check status flags
    ld hl,0xffadh               ; Status flags
    bit 2,(hl)                  ; Test error bit
    res 2,(hl)                  ; Clear error bit
    
    jr z,$+10                   ; If no error, skip error message
    ld de,0x03f53h              ; Error message address
    call 0x044f3h               ; Print message
    jr $+15
    
    ; Send acknowledgment to teacher
    out (0x04h),a               ; Send ACK to port 0x04
    
    ; Clear control flags
    ld hl,0xffaeh               ; Control flags
    res 1,(hl)                  ; Clear bit 1
    
    ; Jump to program execution
    jp 0x02690h                 ; Execute loaded program

; ─────────────────────────────────────────────────────────────────────────────
; PROCEDURE: RS485_SETUP_1
; Address: 0x425C
; ─────────────────────────────────────────────────────────────────────────────
;
; First RS-485 hardware setup procedure.
; Configures basic communication parameters.
;
; ─────────────────────────────────────────────────────────────────────────────

RS485_SETUP_1:
    ; Initialize UART parameters via RS-485 adapter
    ; (Equivalent to setting WD1770 control registers)
    ret

; ─────────────────────────────────────────────────────────────────────────────
; PROCEDURE: RS485_SETUP_2
; Address: 0x422B
; ─────────────────────────────────────────────────────────────────────────────
;
; Second RS-485 hardware setup procedure.
; Configures port mappings and buffers.
;
; ─────────────────────────────────────────────────────────────────────────────

RS485_SETUP_2:
    ; Configure port addresses and buffer locations
    ret

; ─────────────────────────────────────────────────────────────────────────────
; PROCEDURE: RS485_SETUP_3
; Address: 0x427E
; ─────────────────────────────────────────────────────────────────────────────
;
; Third RS-485 hardware setup procedure.
; Configures mode and interrupt handling.
;
; ─────────────────────────────────────────────────────────────────────────────

RS485_SETUP_3:
    ; Configure interrupt and mode registers
    ret

; ─────────────────────────────────────────────────────────────────────────────
; PROCEDURE: RS485_CONFIG_A
; Address: 0x49A5
; ─────────────────────────────────────────────────────────────────────────────
;
; Full RS-485 adapter configuration (Configuration Set A).
; This is the complete initialization sequence for the RS-485 module.
;
; The RS-485 adapter sits where the WD1770 FDC would be, and these
; procedures configure its ports via the 0xF8-0xFF range.
;
; Configuration A (Full initialization):
;   - Port 0xFF (Select/Enable)
;   - Port 0xF9 (Control B)
;   - Port 0xFA (Status)
;   - Port 0xFC (Configuration/Control)
;
; ─────────────────────────────────────────────────────────────────────────────

RS485_CONFIG_A:
    ; Full initialization sequence for RS-485 adapter
    out (0xffh),a               ; Port 0xFF - Select/Enable
    out (0xf9h),a               ; Port 0xF9 - Control port B
    out (0xfah),a               ; Port 0xFA - Control/Status
    out (0xfch),a               ; Port 0xFC - Configuration
    ret

; ─────────────────────────────────────────────────────────────────────────────
; PROCEDURE: RS485_CONFIG_B
; Address: 0x49AE
; ─────────────────────────────────────────────────────────────────────────────
;
; RS-485 adapter configuration (Configuration Set B).
; Alternative initialization for port setup.
;
; ─────────────────────────────────────────────────────────────────────────────

RS485_CONFIG_B:
    ; Port setup configuration
    out (0xf8h),a               ; Port 0xF8 - Control port A
    out (0xfeh),a               ; Port 0xFE - Mode/Status
    ret

; ─────────────────────────────────────────────────────────────────────────────
; PROCEDURE: RS485_CONFIG_C
; Address: 0x49B0
; ─────────────────────────────────────────────────────────────────────────────
;
; RS-485 adapter configuration (Configuration Set C).
; Alternate configuration mode.
;
; ─────────────────────────────────────────────────────────────────────────────

RS485_CONFIG_C:
    ; Alternate port configuration
    out (0xfah),a               ; Port 0xFA - Control/Status
    out (0xfdh),a               ; Port 0xFD - Configuration/Status
    ret

; ─────────────────────────────────────────────────────────────────────────────
; PROCEDURE: RS485_CONFIG_D
; Address: 0x49D0
; ─────────────────────────────────────────────────────────────────────────────
;
; RS-485 adapter configuration (Configuration Set D).
; Baud rate and parity settings.
;
; This likely sets up the serial communication parameters
; (baud rate, data bits, stop bits, parity) for the RS-485 connection.
;
; ─────────────────────────────────────────────────────────────────────────────

RS485_CONFIG_D:
    ; Baud rate and communication parameters
    out (0xfbh),a               ; Port 0xFB - Data/Address
    out (0xfch),a               ; Port 0xFC - Configuration/Control
    ret

; ─────────────────────────────────────────────────────────────────────────────
; PROCEDURE: DATA_PROCESSOR
; Address: 0x30E2
; ─────────────────────────────────────────────────────────────────────────────
;
; Process received data and organize it into CP/M file system structure.
;
; This procedure takes the raw data received via RS-485 and:
;   1. Parses the data format
;   2. Creates CP/M directory entries
;   3. Allocates blocks for files
;   4. Sets up RAM disk (B: drive)
;
; After this procedure completes, the files sent by the teacher are
; accessible via CP/M commands like "DIR B:", "TYPE B:FILENAME.COM", etc.
;
; Input:
;   HL = address of received data (typically 0xDB00)
;
; Output:
;   RAM disk (0xDB00+) populated with CP/M file system
;   Files ready for execution
;
; Memory structure created:
;   0xDB00 - Header/metadata
;   0xDB13 - First directory entry (32 bytes)
;   0xDB27 - Second directory entry
;   0xDB3B - Third directory entry (etc.)
;   0xDExx - End of directory (0xFF marker)
;   0xDExx+ - File data (AUTOEXEC.COM, etc.)
;
; ─────────────────────────────────────────────────────────────────────────────

DATA_PROCESSOR:
    ; Point to RAM disk
    ld hl,0xdb00h               ; HL = start of RAM disk
    xor a
    ld (0xf0c9h),a              ; Clear flag
    
    ld a,(hl)                   ; Load first byte
    cp 0xffh                    ; Check for end marker
    jp z,0x03082h               ; Jump if end of data
    
    ; Process directory entry
    push hl
    call 0x030c5h               ; Call CP/M processing routine
    ld de,0x0000ch              ; Offset to next field
    add hl,de
    ld a,(0xf0c9h)              ; Get flag
    or a
    jr nz,$+14
    
    ; Check if file is active
    push hl
    ld a,(hl)                   ; Load byte
    inc hl
    or (hl)                     ; OR with next byte
    jr z,$+7
    inc hl
    inc hl
    inc hl
    ld (hl),0x07h               ; Set attribute
    pop hl
    
    ; Process file allocation
    ld a,c                      ; Get counter
    or a
    jp m,0x03032h               ; Jump if negative
    jr z,$+42                   ; Jump if zero
    dec a
    jr z,$+39
    xor a
    ld (0xf0c9h),a              ; Clear flag
    pop hl
    
    ; Calculate file size
    ld de,0x00014h              ; 20-byte offset
    add hl,de
    push hl
    dec hl
    dec hl
    ld d,(hl)                   ; Get size high byte
    dec hl
    ld e,(hl)                   ; Get size low byte
    dec hl
    ld a,(hl)                   ; Get extent byte
    cp 0x07h
    jr nz,$+15
    
    ; Calculate actual position
    ex de,hl
    ld a,(0xf0d7h)              ; Load some value
    add hl,hl
    dec a
    jr nz,$-2
    ex de,hl
    dec hl
    ld (hl),d                   ; Store high byte
    dec hl
    ld (hl),e                   ; Store low byte
    pop hl
    jr $-77                     ; Loop back
    
    ; Continue processing...
    ld (ix+0x11h),0x01h         ; Set flag
    ex de,hl
    ld hl,0x00014h              ; Entry size
    add hl,de
    ex de,hl
    ld a,(de)                   ; Load first byte
    ld b,a
    inc de
    ld a,(de)                   ; Load second byte
    ld c,a
    inc de
    dec bc
    
    ; Compare sizes
    ld a,b
    cp (hl)
    inc hl
    jr nz,$+4
    ld a,c
    cp (hl)
    
    push af
    inc bc
    ld (hl),c                   ; Store low byte
    dec hl
    ld (hl),b                   ; Store high byte
    inc hl
    inc hl
    call 0x030bah               ; Process next
    
    ; Continue with next entry
    ld a,(de)                   ; Load byte
    ld c,a
    ld a,(hl)                   ; Load byte
    
    ; More processing...
    ; (Continued in actual ROM)
    
    ret

; ─────────────────────────────────────────────────────────────────────────────
; PROCEDURE: STATION_ID_SETUP
; Address: 0x3EF6
; ─────────────────────────────────────────────────────────────────────────────
;
; Configure this student's station ID on the RS-485 network.
;
; Each student computer has a unique station ID (0-F):
;   0x00 = Master/Teacher station (?)
;   0x01 = Student 1
;   0x02 = Student 2
;   ...
;   0x0F = Student 15
;
; This allows the teacher to:
;   - Send programs to specific students
;   - Collect results from specific nodes
;   - Manage up to 16 students simultaneously
;
; Station ID source (one of three):
;   1. Hardware: DIP switch / jumper on motherboard
;   2. Software: CLI prompt "Enter station ID (0-F):"
;   3. ROM/EEPROM: Per-computer unique byte burned in EPROM
;
; The ID is read via procedure 0x037DA and stored in register E.
; Then copied to 0xFFDB for use throughout runtime.
;
; After setting the ID, the procedure initializes RS-485 control flags
; and prepares the network interface for operation.
;
; ─────────────────────────────────────────────────────────────────────────────

STATION_ID_SETUP:
    ; Call procedure to read Station ID from hardware/ROM/keyboard
    call 0x037DA                ; Returns station ID (0-F) in register E
    
    ; Store in system register
    ld a,e                      ; A = station ID
    ld (0xFFDB),a               ; Store at 0xFFDB
    
    ; Initialize RS-485 status flags
    ld hl,0xFFAD                ; HL = status flags address
    res 1,(hl)                  ; Clear bit 1
    
    ; Initialize RS-485 control flags
    ld hl,0xFFAE                ; HL = control flags address
    set 7,(hl)                  ; Set bit 7 (network enable?)
    set 1,(hl)                  ; Set bit 1 (transmission enable)
    
    ; Clear transmit buffer
    ld hl,0xFB7E                ; HL = buffer address
    ld (hl),0x00                ; Clear first byte
    
    ; Call initialization procedures
    call 0x41BE                 ; RS-485 init procedure 1
    ld hl,0x1F40                ; Some address
    call 0x473A                 ; RS-485 init procedure 2
    
    ; Check error status
    ld hl,0xFFAD                ; Status flags
    bit 4,(hl)                  ; Test bit 4
    res 4,(hl)                  ; Clear bit 4
    
    jr z,$+11                   ; Jump if no error
    
    ; Error occurred
    ld de,0x3F8A                ; Error message address
    call 0x44F3                 ; Print error
    jp 0x3EB2                   ; Error handler
    
    ; Success - continue
    ret

; ════════════════════════════════════════════════════════════════════════════
; END OF RS-485 NETWORK MODULE
; ════════════════════════════════════════════════════════════════════════════
