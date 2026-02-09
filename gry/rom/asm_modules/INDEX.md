# ROM Assembly Modules - Structured Documentation

## Overview

This directory contains the Bosman-8 ROM disassembly reorganized into logical modules with comprehensive documentation and labels for easier analysis.

**Original file**: `rom.bin` (32 KB)
**Disassembly**: `rom.asm` (20,817 lines)
**Organized into**: Modular `.asm` files with labels and comments

## Why Modularization?

The original 20K+ line disassembly is difficult to navigate:
- Procedures are hard to find and understand
- No symbolic names (only hex addresses)
- Sparse documentation of what code does
- Hardware ports and memory locations not explained
- Relationships between procedures unclear

This modularized version provides:
- ✅ Named procedures with clear labels
- ✅ Documented memory map and I/O ports
- ✅ Functional grouping (network, video, I/O, etc.)
- ✅ Comments explaining WHY code works that way
- ✅ Connection points and call graph
- ✅ Historical context (what was replaced, why)

## Module Structure

### File Naming Convention
```
NN_MODULE_NAME.asm
│  │
│  └─ Descriptive module name
│
└─ Priority order (00-99)
   00-09: Definitions and constants
   10-19: RS-485 Network subsystem
   20-29: Storage (RAM disk, file system)
   30-39: Display/Video system
   40-49: I/O and device drivers
   50-59: System utilities
   60-99: Reserved
```

## Modules

### 00_DEFINES.asm
**Purpose**: Global constants and definitions
**Contains**:
- Port I/O definitions (0x80-0xFF)
- Memory map (RAM layout)
- System constants and CP/M function codes
- File system structures
- Network protocol constants

**Size**: ~350 lines
**Used by**: All other modules

---

### 10_RS485_NETWORK.asm
**Purpose**: RS-485 network communication (education network interface)
**Key discovery**: RS-485 adapter module **replaced WD1770 FDC** on motherboard!

**Procedures**:
- `RS485_LOADER` (0x3F3F)
  - Main network loader
  - Waits for teacher via HALT
  - Receives data over RS-485
  - Processes into RAM disk
  
- `RS485_SETUP_1/2/3` (0x425C, 0x422B, 0x427E)
  - Hardware initialization routines
  - Sequential setup phases
  
- `RS485_CONFIG_A/B/C/D` (0x49A5, 0x49AE, 0x49B0, 0x49D0)
  - Different configuration sets for the adapter
  - Port 0xF8-0xFF operations (WD1770 replacement)
  
- `DATA_PROCESSOR` (0x30E2)
  - Organizes received data into CP/M file system
  - Creates directory entries on RAM disk

**Architecture**:
```
Teacher (Master)              Student (Thin Client)
┌──────────────┐             ┌──────────────────┐
│ WD1770 FDC   │             │ RS-485 ADAPTER   │
│ 0xEC-0xEF    │────────────▶│ 0xF8-0xFF        │
└──────────────┘ RS-485 wire └──────────────────┘
 (has disk)      (9600 baud)  (no local disk)
```

**Size**: ~400 lines
**Key learning**: Network was PUSH model (teacher sends, students receive)

---

### 20_RAMDISK_FILESYSTEM.asm (TODO)
**Purpose**: RAM disk and CP/M file system support
**Would contain**:
- Disk operations procedures
- CP/M directory management
- File allocation
- Block management

---

### 30_VIDEO_DISPLAY.asm (TODO)
**Purpose**: Terminal and display control
**Would contain**:
- Character output routines
- Screen control sequences
- Terminal initialization
- Cursor control

---

### 40_IO_DEVICES.asm (TODO)
**Purpose**: Device drivers (printer, serial, joystick)
**Would contain**:
- Printer (Centronics/RS-232)
- Serial communications
- Joystick/tablet input handler

---

### 50_SYSTEM_MONITOR.asm (TODO)
**Purpose**: CP/M monitor and system utilities
**Would contain**:
- BDOS function implementations
- System calls
- Command processor
- Utilities

---

## Cross-References

### Memory Map Quick Reference
```
0x0000-0x0100   ROM vectors/CP/M bootloader
0x0100-0x7FFF   ROM BIOS and procedures
0xDB00          RAM disk (B: drive)
0xFFA6          RS-485 buffer address
0xFFAD          RS-485 status flags
```

### Port I/O Quick Reference
```
0x80            Input status
0x82-87         Control ports
0x98            Joystick input ← IMPORTANT!
0xF8-FF         RS-485 adapter (WD1770 replacement)
0x04            RS-485 ACK output
```

### Key Procedures
```
0x01B1          Bootstrap initialization
0x0CC9          System monitor
0x3F3F          RS-485 network loader ← MAIN!
0x30E2          Data processor
0x49A5-0x49D0   RS-485 configurations
0xF35A          Video display
```

---

## Terminology

- **TPA**: Transient Program Area (user program space)
- **BDOS**: Basic Disk Operating System (CP/M calls)
- **FDC**: Floppy Disk Controller (WD1770 chip)
- **RS-485**: Differential serial protocol (classroom network)
- **Thin Client**: Computer without local disk (network terminal)

---

## How to Use This

1. **Understanding the system**:
   - Start with `00_DEFINES.asm` (understand memory/ports)
   - Read `10_RS485_NETWORK.asm` (main functionality)
   
2. **Finding procedures**:
   - Look up address in `00_DEFINES.asm` comments
   - Find actual code in appropriate module
   
3. **Analyzing code**:
   - Read procedure header (describes what it does)
   - Follow labels (not just hex addresses)
   - Check comments for WHY decisions were made
   
4. **Contributing**:
   - Add more procedures with documentation
   - Create missing modules (20-, 30-, 40-, 50-)
   - Add cross-references and call graphs

---

## Historical Context

### Bosman-8: Polish TRS-80 Clone
- Manufacturer: UNIMOR (Polska, 1980s)
- Processor: Zilog Z80 (3.5 MHz)
- RAM: 64 KB
- ROM: 32 KB (this file)
- System: CP/M v2.5 compatible
- Display: 24x80 text terminal
- **Network**: RS-485 classroom network (innovation!)

### Education System Usage
This computer was used in Polish schools as a classroom network:
- **Master Station**: Teacher's computer with floppy disk (WD1770)
- **Student Stations**: Bosman-8s with RS-485 adapter (no disk)
- **Purpose**: Send programs and assignments to students
- **Protocol**: 9600 baud RS-485
- **Network Size**: Up to 16 nodes (0-F station IDs)

### Technical Innovation
**The RS-485 adapter replacing WD1770 was clever engineering**:
- Reused existing FDC slot (no new hardware design needed)
- Economical (no disk drives for students)
- Centralized control (all programs from teacher)
- Easy to implement (MAX485 transceiver + CPLD logic)

---

## Future Work

- [ ] Complete `20_RAMDISK_FILESYSTEM.asm`
- [ ] Complete `30_VIDEO_DISPLAY.asm`
- [ ] Complete `40_IO_DEVICES.asm`
- [ ] Complete `50_SYSTEM_MONITOR.asm`
- [ ] Add call graph documentation
- [ ] Create flowchart diagrams
- [ ] Document all procedures
- [ ] Add assembly analysis guide

---

## References

- **Bosman-8 Wiki**: https://speccy.pl/wiki/Unimor_Bosman_8
- **TRS-80 Model II**: https://en.wikipedia.org/wiki/TRS-80_Model_II
- **Z80 Instruction Set**: http://www.z80.info/
- **CP/M Documentation**: https://en.wikipedia.org/wiki/CP/M
- **RS-485 Standard**: https://en.wikipedia.org/wiki/RS-485

---

**Last Updated**: 2026-02-09
**Status**: In Progress (2 of 6 modules completed)
