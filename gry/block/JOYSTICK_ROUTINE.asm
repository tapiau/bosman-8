; ============================================================================
; BLOCK.COM - Joystick Input Handler Routine
; Location: 0x20FF
; Platform: CP/M on Z80
; Hardware: Multiplexed Joystick on Port 0x98
; ============================================================================

; Called from main game loop at addresses:
; 0x9FAA, 0x9FC7, 0xA04F

; ============================================================================
; JOYSTICK_HANDLER at 0x20FF
; ============================================================================

JOYSTICK_HANDLER:
    ld bc,0000ah        ; BC = 0x0A (init counter)
    ld hl,0e792h        ; HL = address of joystick buffer
    call 00508h         ; Initialize buffer

    ; Clear accumulator for joystick bits
    ld c,000h           ; C = 0 (will hold joystick state bits)

    ; ========================================================================
    ; SCAN DIRECTION 0 (Bit 0)
    ; ========================================================================
    ld a,000h           ; Select direction 0
    out (098h),a        ; Write to joystick multiplexer port
    in a,(098h)         ; Read joystick status from port 0x98
    bit 4,a             ; Test bit 4 (joystick button/direction line)
    jr z,$+4            ; If bit 4 = 0, skip set
    set 0,c             ; Bit 4 was 1, so set bit 0 in C

    ; ========================================================================
    ; SCAN DIRECTION 1 (Bit 1)
    ; ========================================================================
    ld a,001h           ; Select direction 1
    out (098h),a        ; Write to multiplexer
    in a,(098h)         ; Read input
    bit 4,a             ; Check bit 4
    jr z,$+4            ; Skip if 0
    set 1,c             ; Set bit 1 in C

    ; ========================================================================
    ; SCAN DIRECTION 2 (Bit 2)
    ; ========================================================================
    ld a,002h           ; Select direction 2
    out (098h),a
    in a,(098h)
    bit 4,a
    jr z,$+4
    set 2,c             ; Set bit 2 in C

    ; ========================================================================
    ; SCAN DIRECTION 3 (Bit 3)
    ; ========================================================================
    ld a,003h           ; Select direction 3
    out (098h),a
    in a,(098h)
    bit 4,a
    jr z,$+4
    set 3,c             ; Set bit 3 in C

    ; ========================================================================
    ; SCAN BUTTON 4 (Bit 4 - Fire Button)
    ; ========================================================================
    ld a,004h           ; Select button 4
    out (098h),a
    in a,(098h)
    bit 4,a
    jr z,$+4
    set 4,c             ; Set bit 4 in C

    ; ========================================================================
    ; SAVE JOYSTICK STATE
    ; ========================================================================
    ld a,c              ; Load accumulated joystick bits
    ld (0e792h),a       ; Store to joystick state variable at 0xE792

    nop                 ; No operation (padding)

    ; Read back the state
    ld hl,(0e792h)      ; Load joystick state
    ld h,000h           ; Clear high byte (keep only low byte)
    ld a,l              ; Load L into A
    ld (0e79bh),a       ; Store to backup variable at 0xE79B

    ; Read backup
    ld hl,(0e79bh)      ; Load from backup
    ld h,000h           ; Clear high byte

    ; ========================================================================
    ; Prepare for next routine (eXX = alternate register set)
    ; ========================================================================
    exx                 ; Exchange BC, DE, HL with BC', DE', HL'
    ld bc,0000ah        ; Load counter
    ld de,0e792h        ; Load data address
    jp 00522h           ; Jump to next processing routine

    ; ========================================================================
    ; JOYSTICK STATE BITFIELD (at 0xE792)
    ; ========================================================================
    ; Bit 0: Direction 0 (UP?)
    ; Bit 1: Direction 1 (DOWN?)
    ; Bit 2: Direction 2 (LEFT?)
    ; Bit 3: Direction 3 (RIGHT?)
    ; Bit 4: Button 4 (FIRE/ACTION?)

    ; ========================================================================
    ; HARDWARE INTERFACE
    ; ========================================================================
    ; Port 0x98 acts as a multiplexer:
    ;   - Write 0-4 to select which direction/button to read
    ;   - Read bit 4 to get the current state of that direction
    ;   - High (1) = button pressed / direction activated
    ;   - Low (0) = button not pressed

    ; This is typical Atari/Amstrad/Spectrum style joystick interface

; ============================================================================
; DATA MEMORY MAP
; ============================================================================
; 0xE792 - Current joystick state (5 bits used)
; 0xE79B - Backup/copy of joystick state
; 0xE790 - Value buffer 1
; 0xE791 - Value buffer 2
; 0xE788 - Additional processing buffer
; 0xE77E - Secondary buffer

; ============================================================================
; CALLED PROCEDURES
; ============================================================================
; 0x00508 - Buffer initialization routine
; 0x01722 - Game action processor (executes moves based on joystick state)
; 0x00522 - Routine continuation/return

; ============================================================================
; CALLING CONVENTION
; ============================================================================
; This routine is called from the main game loop approximately 3 times:
; 1. From 0x9FAA - Primary input check
; 2. From 0x9FC7 - Secondary input check
; 3. From 0xA04F - Tertiary input check
;
; This suggests the game polls joystick input multiple times per frame
; for responsiveness.

