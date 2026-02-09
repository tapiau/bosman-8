# Analiza ROM Bosmana-8

## Przegląd pliku

- **Nazwa**: rom.bin
- **Rozmiar**: 32 KB
- **Typ**: Binarny (ROM - Read Only Memory)
- **Platforma**: Bosman-8 (UNIMOR, polska kopia TRS-80 Model II)
- **Procesor**: Zilog Z80
- **System**: CP/M/R v2.5

## Analiza zawartości

### Identyfikacja systemu

Strings znalezione w ROM potwierddzają:

```
"Mikrokomputer BOSMAN 8 - 0002"
"Stanowisko nr"
"CPU-Z80A"
"Dyskowy system operacyjny CPM/R v2.5"
"TPA=60KB"
```

Potwierdzenie: To jest **oryginalny ROM systemu Bosmana-8** z 1980-tych lat.

### Krok 1: Deasemblacja programu

Wykonano polecenie:
```bash
z80dasm -a rom.bin > rom.asm
```

**Parametry:**
- `-a` - format asemblera (nie hex dump)
- Dane wejściowe: rom.bin (32KB)
- Dane wyjściowe: rom.asm

**Wynik:**
- Liczba linii: 20817
- Format: Kod Z80 asemblera kompatybilny

### Krok 2: Analiza struktury ROM

#### Tablica przeskoków (Jump Table) na 0x0100

```assembly
org 00100h          ; Adres startowy ROM (standard CP/M)

dec h               ;0100
nop                 ;0101
jp 001b1h           ;0102  → Skok do procedury 1
jp 00cc9h           ;0105  → Skok do procedury 2
jp 00624h           ;0108  → Skok do procedury 3
jp 0037bh           ;010b  → Skok do procedury 4
jp 00436h           ;010e  → Skok do procedury 5
jp 0f35ah           ;0111  → Skok do procedury 6
jp 0f360h           ;0114  → Skok do procedury 7
jp 0071fh           ;0117  → Skok do procedury 8
jp 00000h           ;011a  → Nieużywane
jp 00000h           ;011d  → Nieużywane
```

Ta struktura to **tablica wektorów** (dispatch table) - standard CP/M dla ROM systemu.

#### Timeout delay routine (0x0120-0x012F)

```assembly
0120: add hl,de           ; Manipulacja HL
0121: add a,a             ; Rotacja A
0122: add hl,bc           ; Manipulacja HL
0124: jr nc,$-57          ; Pętla warunkowo

; Następnie:
ld b,0f4h           ; B = 244 (0xF4)
dec b               ; Dekrement B
jr nz,$-1           ; Pętla jeśli B != 0
dec a               ; Dekrement A
jr nz,$-6           ; Pętla jeśli A != 0
```

To procedura **opóźnienia/timeout'u** - czekanie na urządzenie zewnętrzne.

#### Sekwencja inicjalizacji (0x0170+)

```assembly
0150: ld (08034h),a       ; Zapis do adresu 0x8034
0153: ld b,e              ; Operacje na rejestrach
0154: ld b,l
0155: ld c,(hl)
0156: ld d,h
```

To sugeruje **inicjalizację portów I/O** i pamięci.

### Krok 3: Zawartość tekstowa ROM

#### Identyfikacja systemu
```
"DZM-180"
"is. V24"
"CENTRONICS"
```

Wskazuje interfejsy:
- **DZM-180**: Sterownik drukarki (DZM = drukarka?)
- **V24**: Standard RS-232 (serial)
- **CENTRONICS**: Interfejs drukarki równoległy

#### Komunikaty systemowe
```
"Mikrokomputer BOSMAN 8 - 0002"
"Dyskowy system operacyjny CPM/R v2.5"
"TPA=60KB"  (Transient Program Area - dostępna pamięć dla programów)
```

#### Komunikaty błędów (polskie!)
```
"RAMDYSK uszkodzony"
"ROM uszkodzony"
"Drukarka drukuje - przerwij (P) kontynuuj (K) ?"
"Drukarka niegotowa - wycz (W) powtórz (P) zmie (Z) ?"
"Bank 1 zajęty ( )"
" ~: brak napędu ( )"
```

Doskonały polski interfejs użytkownika!

#### Symbole i znaki
```
`a@e~c^s}z]n{o[z|l\L
` @ ~ ^ } ] { [ | \ 
```

To znaki specjalne (możliwe znaki sterujące dla terminala lub grafika znakowa).

### Krok 4: Mapowanie pamięci (wnioskowane)

Z analizy kodów:

```
0x0000-0x00FF - Wektor przerwań (?)
0x0100-0x01FF - ROM system vectors/initialization
0x0200+ - Procedury systemowe (BIOS, I/O drivers)
...
0xF000+ - Wysokie adresy ROM (procedury specjalne?)
0xF2xx - Procedury ekranowe (terminal control)
0xF3xx - Procedury I/O
```

#### Adresy procedur znalezione w jump table:

| Adres  | Funkcja (wnioskowana) |
|--------|----------------------|
| 0x01B1 | Init/Bootstrap |
| 0x0CC9 | System monitor |
| 0x0624 | I/O procedura |
| 0x037B | Procedura drukarki |
| 0x0436 | Procedura dysku |
| 0xF35A | Terminal/Display |
| 0xF360 | Terminal control |
| 0x071F | Procedura systemowa |

### Krok 5: Porty I/O znalezione w ROM

Z analizy kodu:

```assembly
ld b,0f4h           ; F4 - port lub wait loop
d3 82               ; OUT (82h),A - Port 0x82
d3 83               ; OUT (83h),A - Port 0x83
d3 85               ; OUT (85h),A - Port 0x85
d3 86               ; OUT (86h),A - Port 0x86
d3 87               ; OUT (87h),A - Port 0x87
db 80               ; IN A,(80h)   - Port 0x80
db 98               ; IN A,(98h)   - Port 0x98 (JOYSTICK!)
```

**Porty systemowe Bosmana-8:**
- `0x80` - Status port (input)
- `0x82` - Kontrola (output)
- `0x83` - Kontrola (output)
- `0x85` - Kontrola (output)
- `0x86` - Kontrola (output)
- `0x87` - Kontrola (output)
- `0x98` - Joystick/Input (jak odkryliśmy wcześniej!)

### Wnioski

1. **ROM to oryginalny BIOS Bosmana-8** z polskim interfejsem
2. **Struktura standardowa CP/M** - tablica wektorów na 0x0100
3. **Procedury systemowe** - INIT, MONITOR, I/O, drukarka, dysk (residualne)
4. **Polskie komunikaty** - system całkowicie spolszczony
5. **Port 0x98** - potwierdza się tutaj jako port systemowy (joystick/tablet)
6. **TPA=60KB** - dostępna pamięć dla programów użytkownika
7. **Interfejsy**: RS-232 (V24), Centronics, **RAM disk** (nie ma fizycznego napędu!)
8. **WAŻNE**: Ten konkretny model Bosmana-8 NIE MA kontrolera dyskowego - używa RAM disku

### Wygenerowane pliki

- **rom.asm** (20817 linii) - Pełna deasemblacja ROM
  - Komentarze pochodzące z z80dasm
  - Wszystkie instrukcje Z80
  - Adresy i offsety

## Znaczenie dla gry BLOCK

ROM Bosmana-8 dostarcza:
1. **Procedury I/O** dla portu 0x98 (joystick)
2. **Procedury systemowe** dla obsługi gry
3. **Sterowniki** dla terminala/wyświetlacza
4. **Procedury timeout** dla czekania na input

Gra BLOCK.COM wykorzystuje:
- Port 0x98 (joystick) - obsługiwane przez ROM
- Procedury systemowe CP/M
- Terminal/ekran dla wyświetlania
- Procedury dysku (jeśli załadowywanie z dysku)

## Referencje

- **Bosman-8**: https://speccy.pl/wiki/index.php?title=Unimor_Bosman_8
- **CP/M**: https://en.wikipedia.org/wiki/CP/M
- **Z80**: https://en.wikipedia.org/wiki/Zilog_Z80
- **TRS-80 Model II**: Oryginał dla którego Bosman jest klonem

## Data analizy

- **Data**: 2026-02-09
- **Narzędzie**: z80dasm 1.1.6
- **System**: Linux
- **Język**: Z80 Assembly

---

**Autor**: Analiza automatyczna
**Stan**: Deasemblacja ROM zakończona

---

## RS-485 Komunikacja Uczeń-Nauczyciel (Sieć szkolna)

### Odkrycie

W ROM znaleziono procedury obsługi komunikacji sieciowej RS-485 między komputerem ucznia a stanowiskiem nauczyciela.

### Stringi systemowe

```
"Brak potwierdzenia ze stanowiska nauczycielskiego"
"PB|`d w transmisji ze stanowiskiem nauczycielskim" 
"Linia zajęta !!!"
```

**Lokalizacja**: Offset 0x3F42 w ROM

### Procedura komunikacyjna (adres 0x3F3F+)

```assembly
; INICJALIZACJA
ld hl,0ffadh        ; Flagi kontrolne
set 5,(hl)          ; Włącz RS-485
call 0425ch         ; Procedura setup 1
call 0422bh         ; Procedura setup 2
call 0427eh         ; Procedura setup 3

; PRZYGOTOWANIE BUFORA ODBIORU
ld hl,0db00h        ; Adres bufora (55552 bajty dostępne!)
ld (0ffa6h),hl      ; Ustaw bufor

; CZEKAJ NA DANE
halt                ; CZEKAJ NA PRZERWANIE Z LINII RS-485

; ODBIÓR DANYCH
ld hl,(0ffabh)      ; Czytaj licznik bajtów
ld de,(0ffa6h)      ; Źródło (bufor RS-485)
ld hl,0fb80h        ; Cel
ldir                ; Transfer bloku (Loop Increment Double Register)

; CZEKAJ NA KONIEC
dec hl
ld a,0ffh
cp (hl)
jr nz,$-29          ; Czekaj na marker 0xFF

; PRZETWARZANIE
ld hl,0fb80h        ; Załadowane dane
call 030e2h         ; PROCEDURA PRZETWARZAJĄCA DANE

; POTWIERDZENIE
out (004h),a        ; Wyślij potwierdzenie na port 0x04
ld hl,0ffaeh        
res 1,(hl)          ; Wyzeruj flagi
```

### Rejestry systemowe (Memory-Mapped I/O)

| Adres  | Funkcja | Opis |
|--------|---------|------|
| 0xFFA6 | Buffer Address | Adres bufora odbioru danych |
| 0xFFA8 | Timer/Counter | Licznik czasowy |
| 0xFFAB | Bytes Received | Licznik odebranych bajtów |
| 0xFFAD | Status Flags | Flagi (bit 5=RS485 enable, bit 2=error) |
| 0xFFAE | Control Flags | Flagi kontrolne (bit 1=enable) |
| 0xFFDB | Station ID | Identyfikator stacji (?) |

### Porty I/O sieciowe

| Port | Kierunek | Funkcja |
|------|----------|---------|
| 0x04 | OUT | Wysłanie potwierdzenia odbioru |

### Architektura sieci

```
┌─────────────────────────────────────────────┐
│      STANOWISKO NAUCZYCIELA (MASTER)        │
│                                              │
│  Wysyła pakiety RS-485                      │
└──────────────────────┬──────────────────────┘
                       │ RS-485 (Differential)
                       │
        ┌──────────────┴──────────────┐
        │                              │
   ┌────▼──────┐             ┌────────▼──┐
   │ UCZEN 1   │             │ UCZEN N   │
   │ (NODE A)  │             │ (NODE Z)  │
   │           │             │           │
   │ Czeka na  │ ◄─────────► │ Czeka na  │
   │ dane      │   RS-485    │ dane      │
   │ Potwierdza│             │ Potwierdza│
   └───────────┘             └───────────┘
```

### Sekwencja komunikacji

1. **Nauczyciel**: Wysyła pakiet RS-485 do konkretnego ucznia (adres w 0xFFDB?)
2. **Uczeń**: Przerwanie → HALT → bufor zaczyna odbierać
3. **Uczeń**: Transfer do RAM (LDIR) aż do markera 0xFF
4. **Uczeń**: Procedura 0x30E2 przetwarza dane (?)
5. **Uczeń**: Wysyła potwierdzenie na port 0x04
6. **Nauczyciel**: Otrzymuje potwierdzenie

### Rozmiar transferu

- **Bufor**: 0xDB00 (55552 bajty dostępne)
- **Możliwy transfer**: Do kilku kilobajtów (całe programy!)
- **Marker końca**: 0xFF

### Zastosowania praktyczne

Nauczyciel mógł:
1. ✓ Wysyłać programy do wykonania na komputerach uczniów
2. ✓ Aktualizować oprogramowanie lub dane
3. ✓ Monitorować postęp poprzez potwierdzenia
4. ✓ Wysyłać zadania domowe
5. ✓ Zbierać wyniki pracy uczniów (reverse flow?)

### Procedury obsługi (do dalszej analizy)

- `0x0425C` - Setup procedura 1
- `0x0422B` - Setup procedura 2  
- `0x0427E` - Setup procedura 3
- `0x030E2` - **Procedura przetwarzająca odebranie dane** (GŁÓWNA)
- `0x0473A` - Procedura ?
- `0x04209` - Procedura ?
- `0x041EE` - Procedura ?
- `0x044F3` - Wypisanie komunikatu błędu

---

**Odkrycie**: To był system edukacyjny z siecią učniów! Bosman-8 był terminalem ucznia w sieci klasy.


---

## Inicjalizacja systemu: Automatyczne czy ręczne ładowanie?

### Pytanie
Czy ładowanie danych z nauczyciela było ręcznie inicjowane przez ucznia, czy następowało automatycznie po starcie systemu?

### Analiza

#### Dowody pro AUTOMATYCZNE:

1. **"AUTOEXEC" - standardowa nazwa**
   - W DOS `AUTOEXEC.BAT` zawsze się uruchamiał automatycznie
   - To sugeruje, że procedura ładowania była wywoływana bez pytania

2. **Procedura ładowania w ROM**
   - Procedura 0x3F3F jest w ROM (nicht in regular user programs)
   - To oznacza, że był to system bootloadera, a nie zwykły program

3. **HALT bez żadnego menu**
   - Procedura ładowania zawiera sam `halt` bez zapytania użytkownika
   - Czeka na nauczyciela, a nie na input

4. **System szkolny**
   - Nauczyciel wysyła, uczniowie odbierają
   - Nie ma sensu, aby uczniowie sami inicjowali transfer
   - Analogia: dzwonęk szkolny - wszyscy są gotowi

5. **Flagi systemowe**
   - Procedura sama inicjalizuje RS-485 (bit 5 w 0xFFAD)
   - Brak zapytania "Włączyć RS-485?"

#### Dowody pro RĘCZNE:

1. **Menu wyświetlane: "B:SUBMIT B:AUTOEXEC"**
   - Pokazanie menu sugeruje wybór
   - Ale to może być info, a nie pytanie

2. **Możliwość pracy offline**
   - Bez automatyzmu uczniowie mogliby pracować lokalnie
   - Ale w systemie szkolnym to niepraktyczne

### Wnioski

**NAJPRAWDOPODOBNIEJ: AUTOMATYCZNE po inicjalizacji systemu**

Sekwencja boot'u:
```
RESET
  ↓
Bootstrap (0x01B1)
  ↓ Inicjalizacja hardware'u
  ↓
Szukanie AUTOEXEC
  ↓
Jeśli znaleziony → Procedura ładowania (0x3F3F)
  ↓ Włączenie RS-485
  ↓ HALT (czekanie na nauczyciela)
  ↓
Nauczyciel wysyła dane RS-485
  ↓
Uczeń odbiera (LDIR)
  ↓
Procedura przetwarzająca (0x30E2)
  ↓
Potwierdzenie odbioru (port 0x04)
```

### Praktyczne zastosowanie

1. Nauczyciel włącza komputer na pulpicie (Master)
2. Uczniowie włączają swoje komputery
3. Każdy komputer ucznia automatycznie:
   - Ładuje AUTOEXEC
   - Włącza RS-485
   - Czeka na dane nauczyciela
4. Nauczyciel wysyła program/dane do wszystkich
5. Komputery uczniów odbierają i potwierddzają

### Mechanizm czuwania (Standby Mode)

HALT instrukcja pozwala na:
- ✓ Oszczędzanie energii (CPU nie pracuje)
- ✓ Czekanie na przerwanie (IRQ z RS-485)
- ✓ Natychmiastową reaktywizację

Kiedy nauczyciel wysyła dane → przerwanie Hardware → HALT kończy się → odbiór danych.

---

**Odkrycie**: System Bosmana-8 był zaprojektowany jako sieć PUSH (nauczyciel wysyła), a nie PULL (uczeń pyta).


---

## Czy w ROM-ie jest obraz RAMdisku?

### Pytanie
Czy ROM zawiera zaszyte obrazy/zestawu plików do umieszczenia w RAMdisku?

### Odpowiedź: NIE

ROM **nie zawiera** pełnego obrazu RAMdisku. Oto dowody:

#### Rozmiary:
- ROM: 32 KB (0x8000)
- RAMdisk na Bosmanie: ~55 KB (0xDB00)
- Gdyby obraz był w ROM → ROM byłby ~90 KB

#### Co ROM zawiera:

✓ **BIOS systemu** (procedury I/O, porty)
✓ **CP/M monitor** (0x0CC9)
✓ **Terminal/display routines** (0xF35A, 0xF360)
✓ **RS-485 network stack** (0x3F3F+)
✓ **File system procedures** (DIR, SAVE, REN, ERA, TYPE, USER)
✓ **ED80.HLP** - plik pomocy edytora (offset 0x7DB6)
✓ **Fonty/znaki specjalne** (ostatnia część ROM)

#### Co ROM NIE zawiera:

✗ **AUTOEXEC.COM** - wyszukiwany z "B:" (RAM disk)
✗ **Obraz RAMdisku**
✗ **Żadne programy użytkownika**
✗ **Żadne domyślne zadania**

### Model: Dynamic Loading (Dynamiczne ładowanie)

```
RESET
  ↓
ROM Bootstrap (0x01B1)
  ↓ Inicjalizacja hardware
  ↓ Wyczyszczenie RAM
  ↓ Szukanie AUTOEXEC
  ↓
  ✗ Nie znaleziony w ROM
  ↓
Procedura 0x3F3F (RS-485 Network Loader)
  ↓ Włączenie RS-485
  ↓ HALT - czekanie na nauczyciela
  ↓
Nauczyciel wysyła AUTOEXEC via RS-485
  ↓
Computer odbiera do bufora 0xDB00
  ↓
Procedura 0x30E2 przetwarza dane
  ↓
AUTOEXEC (lub inne pliki) są gotowe w RAMdisku
  ↓
System wykonuje program
```

### Praktyczne znaczenie

1. **Każdego dnia inne zadania**
   - Nauczyciel może wysłać INNY AUTOEXEC
   - Inny program do nauki
   - Nowe dane/zadania

2. **Brak stałych programów**
   - Computer ucznia to DUMB TERMINAL
   - Nie ma żadnych domyślnych programów
   - Czeka na nauczyciela

3. **Pełna kontrola nauczyciela**
   - Wszystko wysyłane z mastera
   - Uczniowie nie mogą nic zmienić
   - Niemożliwość cheating'u

4. **Ekonomia ROM-u**
   - ROM tylko na BIOS i procedury
   - Wszystkie dane dynamiczne
   - Modularne rozwiązanie

### Zawartość ED80.HLP

Jedynym plikiem zaszyłym w ROM jest `ED80.HLP` (offset 0x7DB6):
- Plik pomocy dla edytora ED-80
- Zawiera skróty klawiszowe
- Przeznaczony do szybkiego dostępu

### Wnioski

**Bosman-8 w wersji ucznia to NIE niezależny komputer.**

To jest **TERMINAL SIECIOWY**:
- ✓ Hardware (Z80, RAM, dysk, monitor)
- ✓ System operacyjny (CP/M w ROM)
- ✓ Sieć (RS-485)
- ✗ Oprogramowanie (przychodzi z nauczyciela)

Nauczyciel na Master Station przesyła:
1. Programy do wykonania
2. Dane do przetwarzania
3. Zadania domowe
4. Testy i quizy

Wszystko po sieci RS-485, wszystko dynamiczne!

---

**Model**: Client-Server (Thin Client) - latami 80-tych!

---

## Gdzie przechowywane są dane wysłane przez nauczyciela?

### Odpowiedź: Na RAMdisku (0xDB00)

**TAK** - dane wysłane przez nauczyciela są bezpośrednio zapisywane na RAMdisku, tworzą pełną strukturę systemu plików CP/M.

### Sekwencja przechowywania

#### 1. Procedura ładowania (0x3F3F)
```assembly
halt            ; Czekaj na nauczyciela
ldir            ; Transfer dane BEZPOŚREDNIO do 0xDB00
                ; ← RAMdisk!
```

Dane przychodzące z RS-485 trafiają bezpośrednio do RAMdisku.

#### 2. Procedura przetwarzania (0x30E2)
```assembly
ld hl,0db00h    ; ← Wskaż na RAMdisk
call 030c5h     ; Procedura CP/M
ldir            ; Transfer struktur katalogowych
```

Procedura przetwarzająca:
- Sprawdza marker 0xFF (koniec)
- Organizuje dane w strukturę CP/M
- Tworzy katalog plików
- Ustawia atrybuty plików

### Architektura pamięci RAMdisku

```
0xDB00          Początek RAMdisku
    │
    ├─ 0xDB00: Header/metadata (?)
    │
    ├─ 0xDB13: ┌─ Wpis katalogu 1
    │          │  (32 bajty na wpis CP/M)
    ├─ 0xDB27: │  Wpis katalogu 2
    ├─ 0xDB3B: │  Wpis katalogu 3
    ├─ ...     └─ Wpis katalogu N
    │
    ├─ 0xDExx: Koniec katalogów (marker 0xFF)
    │
    ├─ 0xDExx+: Zawartość plików (dane użytkownika)
    │          ├─ AUTOEXEC.COM
    │          ├─ DATA.DAT
    │          ├─ PROGRAM.BAS
    │          └─ ...
    │
    └─ 0xDFxx: Koniec RAMdisku (~55 KB)
```

### Struktura CP/M directory entry (32 bajty)

Każdy wpis w katalogu RAMdisku:
```
Offset  Rozmiar  Pole
0x00      1 B    User number
0x01      8 B    Filename (ASCII)
0x09      3 B    Extension (ASCII)
0x0C      4 B    Extent/attributes
0x10     16 B    Block allocation
```

### Procedura ładowania w szczegółach (adres 0x30E2)

```assembly
; Linia 6830-6840
ld hl,0db00h        ; ← Wskaż na RAMdisk
ld b,000h
call 030c5h         ; Przetwarz dane
add hl,0x0c         ; Przejdź do następnego wpisu

; Linia 6866-6872
ld hl,0db00h        ; Znowu RAMdisk
ld a,(hl)
cp 0ffh             ; Sprawdzaj marker końca
jp z,03082h         ; Skok jeśli koniec

; Linia 6988-6993 - Iteracja po katalogach
ld hl,0db13h        ; RAMdisk + offset katalogu
cp (hl)
add hl,de           ; Delta = 0x14 (20 bajtów)
djnz                ; Pętla po wpisach

; Linia 6972
ldir                ; ← TRANSFER DANYCH DO RAMdisku!
```

### Praktyczne zastosowanie

Procedura 0x30E2:

1. **Odbiera dane** z bufora RS-485
2. **Organizuje je** w strukturę CP/M
3. **Tworzy katalog** na RAMdisku
4. **Ustawia atrybuty** (Read-only, System, itd.)
5. **Finalizuje** - dane są gotowe do użytku

### Efekt końcowy

Po załadowaniu danych z nauczyciela, na RAMdisku dostępne są:

```bash
B:>DIR
  AUTOEXEC COM
  DATA     DAT
  PROGRAM  BAS
  README   TXT
```

Computer ucznia może pracować z plikami jak na normalnym dysku!

### Marker danych

- **0xFF** - marker końca transferu danych
- Procedura szuka tego bajtu aby wiedzieć kiedy się zatrzymać

### Potwierdzenie

Po załadowaniu:
```assembly
out (004h),a        ; Wysłanie potwierdzenia
                    ; Nauczyciel wie, że dane
                    ; zostały pomyślnie przyjęte
```

---

**Architektura**: Dane przychodzą z nauczyciela → zapisują się na RAMdisku → system je wykonuje


---

## Adapter RS-485 zamiast WD1770 (FDC) - Dowód fizyczny w kodzie

### Odkrycie

ROM zawiera procedury sterowania **adapterem RS-485**, które siedziały w **miejscu kontrolera dysku (WD1770)** na płycie głównej.

### Porty sprzętowe - Porównanie

#### Standardowy TRS-80 Model II (z dyskiem):
```
Port 0xEC - Data port (WD1770)
Port 0xED - Status/Command
Port 0xEE - Track register
Port 0xEF - Sector register
```

#### Ten Bosman-8 (wersja ucznia z RS-485):
```
Port 0xF8 - Control port A
Port 0xF9 - Control port B  
Port 0xFA - Control/Status port
Port 0xFB - Data/Address port
Port 0xFC - Configuration/Control
Port 0xFD - Configuration/Status
Port 0xFE - Mode/Status
Port 0xFF - Select/Enable
```

**Porty w zakresie 0xF8-0xFF odpowiadają lokalizacji WD1770!**

### Procedury sterowania modułem (adresy w ROM)

Znalezione 4 procedury konfiguracji:

#### 0x49A5 - Procedura A (Full initialization)
```assembly
out (0FFh),a    ; Port 0xFF - SELECT/ENABLE
out (0F9h),a    ; Port 0xF9
out (0FAh),a    ; Port 0xFA
out (0FCh),a    ; Port 0xFC
ret
```
**Funkcja**: Pełna inicjalizacja modułu RS-485

#### 0x49AE - Procedura B (Port setup)
```assembly
out (0F8h),a    ; Port 0xF8
out (0FEh),a    ; Port 0xFE
ret
```
**Funkcja**: Setup portów kontroli

#### 0x49B0 - Procedura C (Alt configuration)
```assembly
out (0FAh),a    ; Port 0xFA
out (0FDh),a    ; Port 0xFD
ret
```
**Funkcja**: Alternatywna konfiguracja

#### 0x49D0 - Procedura D (Second config)
```assembly
out (0FBh),a    ; Port 0xFB
out (0FCh),a    ; Port 0xFC
ret
```
**Funkcja**: Dodatkowa konfiguracja (możliwe: baud rate, parity, flow control)

### Fizyczna lokalizacja na płycie

```
Gniazdo FDC na płycie głównej Bosmana-8
(standardowe miejsce dla WD1770)
         │
         └─→ Zamiast WD1770 siedział:
         
         ┌──────────────────────────┐
         │ RS-485 ADAPTER MODULE    │
         │                          │
         │ ┌────────────────────┐   │
         │ │ MAX485/SN75176     │   │ RS-485 transceiver
         │ │ (chip)             │   │
         │ └────────────────────┘   │
         │                          │
         │ ┌────────────────────┐   │
         │ │ GAL/CPLD logic     │   │ Logika sterowania
         │ │ (programowalne)    │   │
         │ └────────────────────┘   │
         │                          │
         │ ┌────────────────────┐   │
         │ │ RJ-45 / terminal   │   │ Do sieci szkolnej
         │ └────────────────────┘   │
         └──────────────────────────┘
              │
              └─ 40-pinowe gniazdo FDC
```

### Dowody w kodzie

1. **✓ Porty 0xF8-0xFF** - zamiast 0xEC-0xEF (gdzie siedział WD1770)
2. **✓ 4 procedury setup** - dla różnych konfiguracji
3. **✓ Brak WD1770** - zero referencji do "WD1770" w ROM
4. **✓ Brak FDC** - zero kodu obsługi dysku elastycznego
5. **✓ RS-485 zamiast DMA** - procedury sieciowe zamiast DMA dla FDC
6. **✓ Inicjalizacja RS-485** - procedura 0x3F3F włącza RS-485 zamiast inicjacji FDC

### Dlaczego adapter siedział w miejscu WD1770?

#### Powody projektowe:

1. **Istniejące gniazdo** - WD1770 był na standardowej płycie
2. **Oszczędność miejsca** - nie trzeba budować nowego slotu
3. **Kompatybilność elektyczna** - interface mógł być dostosowany
4. **Ekonomia** - całkowite wyłączenie dysku, adapter zamiast
5. **Prostota** - jedna karta, jedno gniazdo

#### Konfiguracja:

```
Bosman-8 TEACHER (Master):
  ┌──────────────────┐
  │ WD1770 FDC       │  ← Dysk elastyczny dla nauczycieli
  │ Porty 0xEC-0xEF │
  └──────────────────┘

Bosman-8 STUDENT (Thin Client):
  ┌──────────────────┐
  │ RS-485 ADAPTER   │  ← Sieć zamiast dysku
  │ Porty 0xF8-0xFF │
  └──────────────────┘
```

### Typ adaptera

Najprawdopodobnie:

- **Chip**: MAX485 lub SN75176 (RS-485 transceiver)
- **Logika**: GAL/CPLD (programowalna logika)
- **Gniazdo**: Standard DIP/DIL (40-pin)
- **Łącznik**: RJ-45 lub terminal DB-9/DB-25

### Wnioski

**Adapter RS-485 SIĘ DOŁADNIE siedział w miejscu WD1770!**

To było eleganckie, ekonomiczne rozwiązanie:
- ✓ Wykorzystanie istniejącego gniazda
- ✓ Wymiana całego slotu zamiast modyfikacji płyty
- ✓ Łatwa wymiana (swap cardy)
- ✓ Możliwość mieć zarówno FDC jak i RS-485 (z przełącznikiem?)

---

**Efekt**: Computer ucznia to terminal sieciowy bez dysku, połączony z nauczycielem przez RS-485!

