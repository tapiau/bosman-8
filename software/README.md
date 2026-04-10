# Obrazy dyskietek dla komputera Bosman 8

Gotowe do użycia, przetestowane i podzielone tematycznie na obrazy dyskietek CF2 (3", SS/DD, 200kb). Działają z Bosmanem 8 z połączonym Gotekiem z firmwarem HxC. Obrazy są ponumerowane, więc są również wygodne do użycia z Gotekiem bez wyświetlacza OLED (w takim przypadku należy umieścić plik konfiguracyjny Indexed mode w głównym katalogu nośnika danych z obrazami).

W razie wąpliwości, pytań, chęci uzupełnień o inne odnalezione kawałki oprogramowania lub w dowolnym innym temacie dotyczącym Bosmana 8 i nie tylko - zapraszam do kontaktu: maciej.grzeszczuk@fhkd.pl / +48 737 300 000.

W szczególności jakby ktoś natrafił na Bosmana 8 w wersji sieciowej, to bardzo szukam takiego i również proszę o informację. Na pewno się nie zmarnuje.

## DSKA0000_B8_UTIL.hfe

* edytor tekstowy ED.COM
* wszystkie formatery jakie zebrałem
* PIP.COM, dla tradycjonalistów
* TESTRAM.COM
* TURBO.COM i przyległości, czyli Turbo Pascal 3.0
* UNERASE.COM

## DSKA0001_B8_GRY_COM.hfe

* BLOCK - Tetris, wspiera joystick (wymaga ANG-3001, software 1987 lub 1990).
* CATCHUM - CP/Mowy klon Pac-Mana
* LADDER - klasyka a'la Lode Runner
* SOKOBAN - magazynier (wymaga ANG-3001, software 1990).
* SZACHY - szachy ;)

## DSKA0002_B8_GRY_PASCAL.hfe

* kompilator/edytor Turbo Pascal 3.0
* gomoku.pas
* lunar.pas
* reversi.pas
* robak.pas

## DSKA0003_B8_GRY_BASIC.hfe

* MBASIC.COM - interpeter Microsoft BASIC dla CP/M 2.2
* bridge.bas
* tysiac.bas

## DSKA0004_B8_TALE_OF_ANCIENT_LAND.hfe

Party version gry Tale of the Ancient Land autorstwa dely/NG, wystawione na FOReVER Party 2025 w Sucha nad Parnou, Słowacja.

# Inne przydatne informacje

## Konfiguracja zworek wyboru stacji w Bosman 8

4 zworki znajdują się w okolicy 74LS03 i CD4724, niedaleko złącza taśmy od napędów FDD.

### ZWRK1

* Lokalizacja: pierwsza zworka od strony CD4724.
* Funkcja:
  * rozwarta - testowane są oba napędy FDD
  * zwarta - testowany jest jeden napęd FDD

### ZWRK2 + ZWRK3

* Lokalizacja: kolejne dwie zworki za ZWRK1
* Funkcja: wybór konfiguracji napędów wg poniższej tabeli:

| ZWRK2    | ZWRK3    | Napęd B                  | Napęd C                  |
|----------|----------|--------------------------|--------------------------|
| rozwarta | rozwarta | jednostronny, 40 ścieżek | jednostronny, 40 ścieżek |
| zwarta   | rozwarta | dwustronny, 40 ścieżek   | dwustronny, 40 ścieżek   |
| rozwarta | zwarta   | dwustronny, 80 ścieżek   | dwustronny, 80 ścieżek   |
| zwarta   | zwarta   | dwustronny, 80 ścieżek   | jednostronny, 40 ścieżek |"


* Napęd A to RAM-dysk.

## Konfiguracja do HxC

```
	- Track type: MFM
	- Bitrate: 250000
	- RPM: 300
	- Number of Track: 40
	- Sector per track: 5
	- Sector ID start: 17
	- Interleave: 1
	- Skew: 0
	- Total Sector: 200
	- Number of side: 1
	- Sector size: 1024
	- Total Size: 204800
	- Format value: 246
	- Auto GAP3 zaznaczone, reszta odznaczona (czyli Tracks of a side... / Reverse side).
```

## Konfiguracja do cpmtools

```
# Bosman 8 - 200KB SS 3"
diskdef bosman8
  seclen 1024
  tracks 40 
  sectrk 5
  blocksize 1024
  maxdir 64
  skewtab 0,1,2,3,4
  boottrk 0
  os 2.2
end
```

## Przykłady kopiowania do/z imagu z poziomu cpmtools

```
# kopiowanie z obrazu na swiat:

$ cpmcp -f bosman8 DSKA0000_HFE.img 0:turbo.com turbo-0.com

# kopiowanie ze świata na obraz:

$ cpmcp -f bosman8 DSKA0000_HFE.img turbo.com 0:turbo-0.com

# listowanie zawartosci obrazu:

$ cpmls -f bosman8 DSKA0000_HFE.img
```

## Podziękowania

* Konrad Nowakowski i Paweł Nowakowski (Koszalińskie Muzeum Elektroniki Komputerowej ELKON)
* Zbigniew 'zibi' Jarosik (tapiau)
* Marcin Robert Kaźmierczak (Polskie Komputery)

---
-- krap/NG,FHKD (https://fhkd.pl/) (2026.03.08)