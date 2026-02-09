; ════════════════════════════════════════════════════════════════════════════
; BOSMAN-8 ROM - GLOBAL DEFINITIONS & CONSTANTS
; ════════════════════════════════════════════════════════════════════════════
; 
; This file contains all global constants, memory locations, and port
; definitions used throughout the ROM code.
;
; Organization:
;   - Port I/O definitions
;   - Memory map
;   - System constants
;   - Error codes
;
; Author: UNIMOR (Polska, 1980s)
; Platform: Bosman-8 (TRS-80 Model II clone)
; Processor: Zilog Z80
; System: CP/M v2.5 compatible
;
; ════════════════════════════════════════════════════════════════════════════

; ─────────────────────────────────────────────────────────────────────────────
; PORT I/O DEFINITIONS
; ─────────────────────────────────────────────────────────────────────────────

; System ports (standard I/O)
STATUS_PORT_INPUT   EQU 0x80    ; Input status port
CONTROL_PORT_1      EQU 0x82    ; Output control port 1
CONTROL_PORT_2      EQU 0x83    ; Output control port 2
CONTROL_PORT_3      EQU 0x85    ; Output control port 3
CONTROL_PORT_4      EQU 0x86    ; Output control port 4
CONTROL_PORT_5      EQU 0x87    ; Output control port 5

; Joystick/Input port (multiplexed)
; This port supports:
;   - Joystick (4 directions + fire)
;   - Graphics tablet
;   - Mouse
JOYSTICK_INPUT_PORT EQU 0x98

; RS-485 Network module (replaced WD1770 FDC slot)
RS485_CTRL_PORT_A   EQU 0xF8    ; Control port A
RS485_CTRL_PORT_B   EQU 0xF9    ; Control port B
RS485_CTRL_STATUS   EQU 0xFA    ; Control/Status port
RS485_DATA_ADDR     EQU 0xFB    ; Data/Address port
RS485_CONFIG_CTRL   EQU 0xFC    ; Configuration/Control
RS485_CONFIG_STATUS EQU 0xFD    ; Configuration/Status
RS485_MODE_STATUS   EQU 0xFE    ; Mode/Status
RS485_SELECT_ENABLE EQU 0xFF    ; Select/Enable

; Acknowledgment port
RS485_ACK_PORT      EQU 0x04    ; Send ACK to teacher

; ─────────────────────────────────────────────────────────────────────────────
; MEMORY MAP (RAM)
; ─────────────────────────────────────────────────────────────────────────────

; System stack (grows downward from high memory)
SYSTEM_STACK        EQU 0x3038  ; Stack pointer initialization

; RS-485 Network subsystem
RS485_BUFFER_ADDR   EQU 0xFFA6  ; Address of receive buffer
RS485_TIMER_CNT     EQU 0xFFA8  ; Timer/counter register
RS485_BYTES_REC     EQU 0xFFAB  ; Count of bytes received
RS485_STATUS_FLAGS  EQU 0xFFAD  ; Status flags (bit 5=enable, bit 2=error)
RS485_CTRL_FLAGS    EQU 0xFFAE  ; Control flags (bit 1=enable)
RS485_STATION_ID    EQU 0xFFDB  ; Network station ID (0-F for up to 16 nodes)
                                ; Set by procedure 0x3EF6
                                ; Source: hardware jumper, CLI input, or ROM byte
                                ; Identifies this student's computer on network

; RAM Disk (B: drive in CP/M)
RAMDISK_START       EQU 0xDB00  ; RAM disk begins here
RAMDISK_BUFFER_1    EQU 0xDA00  ; Possible interim buffer
RAMDISK_CATALOG_OFF EQU 0x0013  ; Offset to first catalog entry
RAMDISK_ENTRY_SIZE  EQU 0x0014  ; Size of each directory entry (20 bytes)

; Transient Program Area (TPA) - user program space
TPA_START           EQU 0x0100  ; Programs load here (CP/M standard)
TPA_SIZE            EQU 0xF0KB  ; 60 KB available for programs

; ─────────────────────────────────────────────────────────────────────────────
; SYSTEM CONSTANTS
; ─────────────────────────────────────────────────────────────────────────────

; CP/M BDOS function codes (called via INT 5)
BDOS_CONSOLE_INPUT  EQU 0x01    ; Read character from console
BDOS_CONSOLE_OUTPUT EQU 0x02    ; Write character to console
BDOS_READER_INPUT   EQU 0x03    ; Read from reader device
BDOS_PUNCH_OUTPUT   EQU 0x04    ; Write to punch device
BDOS_PRINTER_OUTPUT EQU 0x05    ; Write to printer
BDOS_DIRECT_CONSOLE EQU 0x06    ; Direct console I/O
BDOS_GET_IO_BYTE    EQU 0x07    ; Get I/O byte
BDOS_SET_IO_BYTE    EQU 0x08    ; Set I/O byte
BDOS_PRINT_STRING   EQU 0x09    ; Print string ($-terminated)
BDOS_READ_LINE      EQU 0x0A    ; Read line into buffer
BDOS_CONSOLE_STATUS EQU 0x0B    ; Check console input status
BDOS_GET_VERSION    EQU 0x0C    ; Get CP/M version
BDOS_RESET_DISK     EQU 0x0D    ; Reset disk system
BDOS_SELECT_DISK    EQU 0x0E    ; Select disk A-P
BDOS_OPEN_FILE      EQU 0x0F    ; Open file
BDOS_CLOSE_FILE     EQU 0x10    ; Close file
BDOS_SEARCH_FIRST   EQU 0x11    ; Search first matching file
BDOS_SEARCH_NEXT    EQU 0x12    ; Search next matching file
BDOS_DELETE_FILE    EQU 0x13    ; Delete file
BDOS_READ_SEQ       EQU 0x14    ; Read sequential record
BDOS_WRITE_SEQ      EQU 0x15    ; Write sequential record
BDOS_CREATE_FILE    EQU 0x16    ; Create file
BDOS_RENAME_FILE    EQU 0x17    ; Rename file
BDOS_GET_LOGIN_VEC  EQU 0x18    ; Get login vector
BDOS_GET_CURRENT_DK EQU 0x19    ; Get current disk
BDOS_SET_DMA_ADDR   EQU 0x1A    ; Set DMA address
BDOS_GET_ALLOC_VEC  EQU 0x1B    ; Get allocation vector
BDOS_WRITE_PROTECT  EQU 0x1C    ; Write protect disk
BDOS_GET_RO_VECTOR  EQU 0x1D    ; Get read-only vector
BDOS_SET_FILE_ATTR  EQU 0x1E    ; Set file attributes
BDOS_GET_DISK_PARMS EQU 0x1F    ; Get disk parameters
BDOS_GET_USER       EQU 0x20    ; Get/set user number
BDOS_READ_RANDOM    EQU 0x21    ; Read random record
BDOS_WRITE_RANDOM   EQU 0x22    ; Write random record
BDOS_GET_FILE_SIZE  EQU 0x23    ; Get file size

; Special markers
EOF_MARKER          EQU 0xFF    ; End-of-file marker (used in network transfers)
SUCCESS             EQU 0x00    ; Operation successful
ERROR_FLAG          EQU 0xFF    ; Error indicator

; ─────────────────────────────────────────────────────────────────────────────
; RS-485 NETWORK PROTOCOL CONSTANTS
; ─────────────────────────────────────────────────────────────────────────────

; Network message format:
;   [Header] [Data] [Checksum] [0xFF terminator]

RS485_BUFFER_SIZE   EQU 0x0DB00 ; ~55 KB receive buffer
RS485_TIMEOUT_TICKS EQU 0x0F4   ; Timeout counter (244 loops)
RS485_BAUD_DEFAULT  EQU 0x09600 ; Default baud rate (9600 baud)

; Status flags (RS485_STATUS_FLAGS at 0xFFAD)
RS485_BIT_ENABLE    EQU 5       ; Bit 5: RS-485 enabled
RS485_BIT_ERROR     EQU 2       ; Bit 2: Error occurred

; Control flags (RS485_CTRL_FLAGS at 0xFFAE)
RS485_CTRL_ENABLE   EQU 1       ; Bit 1: Enable transmission

; ─────────────────────────────────────────────────────────────────────────────
; CP/M FILE SYSTEM CONSTANTS
; ─────────────────────────────────────────────────────────────────────────────

; CP/M directory entry structure (32 bytes each)
DIR_USER_OFFSET     EQU 0x00    ; User number (1 byte)
DIR_NAME_OFFSET     EQU 0x01    ; Filename (8 bytes)
DIR_EXT_OFFSET      EQU 0x09    ; Extension (3 bytes)
DIR_EXTENT_OFFSET   EQU 0x0C    ; Extent counter (1 byte)
DIR_S2_OFFSET       EQU 0x0D    ; Reserved (1 byte)
DIR_RECCOUNT_OFFSET EQU 0x0E    ; Record count (1 byte)
DIR_BLOCKS_OFFSET   EQU 0x10    ; Block map (16 bytes)
DIR_ENTRY_SIZE      EQU 32      ; Total entry size

; File attributes
ATTR_READ_ONLY      EQU 0x80    ; Read-only
ATTR_SYSTEM         EQU 0x40    ; System file
ATTR_ARCHIVE        EQU 0x20    ; Archive bit
ATTR_HIDDEN         EQU 0x10    ; Hidden file

; ─────────────────────────────────────────────────────────────────────────────
; STRING/MESSAGE CONSTANTS (for reference)
; ─────────────────────────────────────────────────────────────────────────────

; Network messages
MSG_ACK_WAIT        EQU "Brak potwierdzenia ze stanowiska nauczycielskiego"
MSG_IN_TRANSMIT     EQU "PB|`d w transmisji ze stanowiskiem nauczycielskim"
MSG_LINE_BUSY       EQU "Linia zajęta !!!"

; System messages
MSG_RAMDISK_ERROR   EQU "RAMDYSK uszkodzony"
MSG_ROM_ERROR       EQU "ROM uszkodzony"

; ════════════════════════════════════════════════════════════════════════════
; END OF DEFINITIONS
; ════════════════════════════════════════════════════════════════════════════
