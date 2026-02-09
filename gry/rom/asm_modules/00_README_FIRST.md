# 🔧 Bosman-8 ROM Assembly - Modular Documentation

## What is this?

This directory contains the **Bosman-8 ROM disassembly reorganized into logical modules** with comprehensive documentation, labels, and comments.

Instead of 20,000+ lines of hex addresses and cryptic instructions, you now have:

✅ **Named procedures** (BOOTSTRAP_INIT, RS485_LOADER, etc.)  
✅ **Documented memory map** (what lives where)  
✅ **Port I/O definitions** (what each port does)  
✅ **Historical context** (why things were designed this way)  
✅ **Educational value** (learn how 1980s systems worked)

---

## Quick Start

### 1. Start Here: Read This First 📖
1. Read `INDEX.md` - Overview of all modules
2. Read `00_DEFINES.asm` - Memory and port definitions
3. Read `10_RS485_NETWORK.asm` - Main functionality (network loader)

### 2. Then Explore Specific Areas 🔍
- **Want to understand networking?** → `10_RS485_NETWORK.asm`
- **Want to understand storage?** → `20_RAMDISK_FILESYSTEM.asm`
- **Want to understand display?** → `30_VIDEO_DISPLAY.asm`
- **Want to understand devices?** → `40_IO_DEVICES.asm`
- **Want to understand system?** → `50_SYSTEM_MONITOR.asm`

### 3. Reference Original Assembly 📄
- Original: `../rom.asm` (20,817 lines of raw Z80 assembly)
- Use when you need the ACTUAL bytecode

---

## File Structure

```
asm_modules/
├── 00_README_FIRST.md          ← YOU ARE HERE
├── INDEX.md                     ← Overview of all modules
├── 00_DEFINES.asm             ← Constants, ports, memory map
├── 10_RS485_NETWORK.asm       ← Network loader (MAIN!)
├── 20_RAMDISK_FILESYSTEM.asm  ← Disk operations
├── 30_VIDEO_DISPLAY.asm       ← Terminal control
├── 40_IO_DEVICES.asm          ← Joystick, printer, serial
└── 50_SYSTEM_MONITOR.asm      ← CP/M monitor
```

---

## The Bosman-8 Story 🇵🇱

### What is Bosman-8?
- **Polish computer** made by UNIMOR (1980s)
- **Clone of TRS-80 Model II** (but with innovations!)
- **Used in Polish schools** as an educational network
- **Processor**: Zilog Z80 (3.5 MHz)
- **System**: CP/M v2.5 (like thousands of other 8-bit computers)

### What's Unique About This One?
**This particular Bosman-8 has NO FLOPPY DISK DRIVE!**

Instead, it has an **RS-485 network adapter** that sits in the slot where the WD1770 floppy controller would normally be.

### The Classroom Network
```
Teacher's Desk                    Student Desks
┌──────────────┐                ┌──────────────┐
│  Bosman-8    │                │  Bosman-8    │
│  + WD1770    │ ────RS-485───→ │  + RS-485    │
│  + Disk      │  (Network)     │  (No disk)   │
│  = Master    │                │  = Thin      │
│              │                │    Client    │
└──────────────┘                └──────────────┘
                    Up to 16 students connected!
```

---

## Key Technical Innovations

### 1. RS-485 Adapter (Replaces WD1770)
The RS-485 module physically occupies the **FDC slot** on the motherboard:
- Uses ports **0xF8-0xFF** (instead of 0xEC-0xEF for disk)
- Implements **9600 baud differential serial** (RS-485)
- Allows up to **16 nodes** on one network
- Economical (no disk drives needed for students)

### 2. Thin Client Architecture (Late 1980s!)
- No local storage (or minimal)
- Everything loaded from network
- Teacher has complete control
- Perfect for schools (prevent cheating, centralize updates)

### 3. Multiplexed Input Port (0x98)
A single port handles:
- Joystick (4 directions + fire)
- Graphics tablet (position x,y)
- Mouse (position + buttons)
- **All through one port!** (selected via selector)

---

## Memory Map Reference

```
Address     Size    Purpose
─────────────────────────────────────────
0x0000-100  256B    CP/M vectors / bootloader
0x0100-8000 32KB    ROM (this code!)
────────────────────────────────────────
0x0000-DB00 220KB   User RAM / TPA
0xDB00-DFFF 16KB    RAM Disk (B: drive)
0xFFA0-FFFF 96B     System registers
```

---

## Port I/O Reference

```
Port    Direction   Purpose
─────────────────────────────────────
0x80    IN          Status input
0x82-87 OUT         System control
0x98    IN/OUT      Joystick (multiplexed)
0xF8-FF IN/OUT      RS-485 adapter (WD1770 replacement!)
0x04    OUT         RS-485 ACK/confirmation
```

---

## Key Procedures

| Address | Procedure | Purpose |
|---------|-----------|---------|
| 0x01B1  | BOOTSTRAP_INIT | System startup |
| 0x0CC9  | SYSTEM_MONITOR | CP/M monitor |
| **0x3F3F** | **RS485_LOADER** | **MAIN: Wait for teacher, receive program** |
| 0x30E2  | DATA_PROCESSOR | Organize received data into CP/M format |
| 0x49A5  | RS485_CONFIG_A | Network adapter full init |
| 0xF35A  | VIDEO_DISPLAY | Terminal output |

---

## How Data Flows (Boot Sequence)

```
1. POWER ON
   ↓
2. ROM Bootstrap (0x01B1)
   - Initialize CPU/RAM/hardware
   ↓
3. AUTOEXEC not found (no disk!)
   ↓
4. System enters waiting mode
   ↓
5. Teacher sends AUTOEXEC via RS-485
   ↓
6. RS485_LOADER (0x3F3F) activates
   - Enables RS-485 port
   - HALT CPU (waits for interrupt)
   ↓
7. Data arrives → Interrupt → CPU wakes
   ↓
8. ldir (block transfer) to RAM disk (0xDB00)
   ↓
9. DATA_PROCESSOR (0x30E2) organizes files
   ↓
10. "B:DIR" now shows files sent by teacher!
   ↓
11. Execute AUTOEXEC.COM → Run student assignment
```

---

## Terminology

| Term | Meaning |
|------|---------|
| **CP/M** | 8-bit operating system (like DOS for early microcomputers) |
| **BDOS** | Basic Disk Operating System (CP/M system calls) |
| **TPA** | Transient Program Area (user program space) |
| **FDC** | Floppy Disk Controller (WD1770 chip) |
| **RS-485** | Differential serial protocol (long distance, robust) |
| **Thin Client** | Computer with minimal storage, depends on network |
| **Z80** | 8-bit CPU made by Zilog |
| **Linia** | Polish for "line" (in error messages) |
| **Nauczyciel** | Polish for "teacher" |
| **Uczen** | Polish for "student" |

---

## How to Read Assembly Code

### If you see this:
```assembly
    ld hl,0xdb00h        ; Load address into HL register
    halt                 ; Wait for interrupt
    ldir                 ; Transfer block of data
    call 0x30e2h         ; Jump to procedure and return
```

### Read it as:
```
1. "Put address 0xDB00 into HL register"
2. "Pause CPU (waits for teacher to send data)"
3. "Transfer data block (using HL/DE/BC for source/dest/count)"
4. "Call the DATA_PROCESSOR procedure"
```

---

## Contributing

Want to improve this documentation?

1. **Add comments** to procedures (describe WHAT and WHY)
2. **Create flowcharts** (ASCII art or diagrams)
3. **Document missing procedures** (see TODO items)
4. **Add examples** (how procedures interact)
5. **Fix errors** (these docs are from reverse engineering!)

---

## Resources

- **Bosman-8 Wikipedia** (Polish): https://speccy.pl/wiki/Unimor_Bosman_8
- **Z80 Instruction Reference**: http://www.z80.info/
- **CP/M Information**: https://en.wikipedia.org/wiki/CP/M
- **RS-485 Standard**: https://en.wikipedia.org/wiki/RS-485

---

## Questions?

- **How do I find a procedure?** → Check `00_DEFINES.asm` for address
- **What does this port do?** → Check port list in `00_DEFINES.asm`
- **What's at this memory address?** → Check memory map in `00_DEFINES.asm`
- **How does RS-485 work?** → Read `10_RS485_NETWORK.asm`

---

**Last Updated**: 2026-02-09  
**Status**: Work in Progress (2/6 modules documented, 4 to go)  
**Original ROM**: 32 KB binary  
**Disassembly**: 20,817 lines of Z80 assembly  
**Modules**: 6 structural, 15+ procedures documented  

Enjoy exploring this piece of Polish computing history! 🇵🇱
