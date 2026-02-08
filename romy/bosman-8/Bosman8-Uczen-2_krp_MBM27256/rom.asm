; z80dasm 1.1.6
; command line: z80dasm -a -t -g 0x0000 -l -o /home/zibi/Workspace/github/tapiau/bosman-8/romy/bosman-8/Bosman8-Uczen-2_krp_MBM27256/rom.asm /home/zibi/Workspace/github/tapiau/bosman-8/romy/bosman-8/Bosman8-Uczen-2_krp_MBM27256/rom.bin

	org	00000h

l0000h:
	dec h			;0000	25 	% 
l0001h:
	nop			;0001	00 	. 
l0002h:
	jp l01b1h		;0002	c3 b1 01 	. . . 
l0005h:
	jp l0cc9h		;0005	c3 c9 0c 	. . . 
l0008h:
	jp l0624h		;0008	c3 24 06 	. $ . 
l000bh:
	jp l037bh		;000b	c3 7b 03 	. { . 
l000eh:
	jp l0436h		;000e	c3 36 04 	. 6 . 
sub_0011h:
	jp 0f35ah		;0011	c3 5a f3 	. Z . 
l0014h:
	jp 0f360h		;0014	c3 60 f3 	. ` . 
sub_0017h:
	jp l071fh		;0017	c3 1f 07 	. . . 
l001ah:
	jp l0000h		;001a	c3 00 00 	. . . 
	jp l0000h		;001d	c3 00 00 	. . . 
l0020h:
	nop			;0020	00 	. 
l0021h:
	add hl,de			;0021	19 	. 
l0022h:
	add a,a			;0022	87 	. 
l0023h:
	add hl,bc			;0023	09 	. 
	jr nc,$-57		;0024	30 c5 	0 . 
l0026h:
	ld b,0f4h		;0026	06 f4 	. . 
l0028h:
	dec b			;0028	05 	. 
	jr nz,l0028h		;0029	20 fd 	  . 
	dec a			;002b	3d 	= 
	jr nz,l0026h		;002c	20 f8 	  . 
	pop bc			;002e	c1 	. 
	ret			;002f	c9 	. 
l0030h:
	jp 0f275h		;0030	c3 75 f2 	. u . 
	nop			;0033	00 	. 
	nop			;0034	00 	. 
	nop			;0035	00 	. 
	nop			;0036	00 	. 
	nop			;0037	00 	. 
l0038h:
	jp 0f272h		;0038	c3 72 f2 	. r . 
l003bh:
	ld d,e			;003b	53 	S 
	nop			;003c	00 	. 
	ld d,e			;003d	53 	S 
	nop			;003e	00 	. 
	ld b,0f5h		;003f	06 f5 	. . 
	ld d,e			;0041	53 	S 
l0042h:
	nop			;0042	00 	. 
l0043h:
	ld b,h			;0043	44 	D 
l0044h:
	ld e,d			;0044	5a 	Z 
	ld c,l			;0045	4d 	M 
l0046h:
	dec l			;0046	2d 	- 
	ld sp,03038h		;0047	31 38 30 	1 8 0 
	add a,b			;004a	80 	. 
l004bh:
	ld l,c			;004b	69 	i 
	ld (hl),e			;004c	73 	s 
	ld l,020h		;004d	2e 20 	.   
	ld d,(hl)			;004f	56 	V 
	ld (08034h),a		;0050	32 34 80 	2 4 . 
l0053h:
	ld b,e			;0053	43 	C 
	ld b,l			;0054	45 	E 
	ld c,(hl)			;0055	4e 	N 
	ld d,h			;0056	54 	T 
	ld d,d			;0057	52 	R 
	ld c,a			;0058	4f 	O 
l0059h:
	ld c,(hl)			;0059	4e 	N 
	ld c,c			;005a	49 	I 
	ld b,e			;005b	43 	C 
l005ch:
	ld d,e			;005c	53 	S 
l005dh:
	add a,b			;005d	80 	. 
	nop			;005e	00 	. 
	nop			;005f	00 	. 
	nop			;0060	00 	. 
	nop			;0061	00 	. 
	nop			;0062	00 	. 
	nop			;0063	00 	. 
l0064h:
	nop			;0064	00 	. 
	nop			;0065	00 	. 
	jp 0f29fh		;0066	c3 9f f2 	. . . 
l0069h:
	jr nz,l008bh		;0069	20 20 	    
	jr nz,l0087h		;006b	20 1a 	  . 
	dec de			;006d	1b 	. 
	ld d,h			;006e	54 	T 
	dec de			;006f	1b 	. 
	ld c,a			;0070	4f 	O 
	dec de			;0071	1b 	. 
	ld b,b			;0072	40 	@ 
	dec de			;0073	1b 	. 
	ld a,01bh		;0074	3e 1b 	> . 
	ld b,a			;0076	47 	G 
	dec de			;0077	1b 	. 
	ld e,b			;0078	58 	X 
	jr nz,l0095h		;0079	20 1a 	  . 
	ld c,l			;007b	4d 	M 
l007ch:
	ld l,c			;007c	69 	i 
	ld l,e			;007d	6b 	k 
	ld (hl),d			;007e	72 	r 
l007fh:
	ld l,a			;007f	6f 	o 
l0080h:
	ld l,e			;0080	6b 	k 
l0081h:
	ld l,a			;0081	6f 	o 
	ld l,l			;0082	6d 	m 
	ld (hl),b			;0083	70 	p 
	ld (hl),l			;0084	75 	u 
	ld (hl),h			;0085	74 	t 
	ld h,l			;0086	65 	e 
l0087h:
	ld (hl),d			;0087	72 	r 
	jr nz,l00aah		;0088	20 20 	    
	dec de			;008a	1b 	. 
l008bh:
	ld d,e			;008b	53 	S 
l008ch:
	jr nz,$+68		;008c	20 42 	  B 
	ld c,a			;008e	4f 	O 
	ld d,e			;008f	53 	S 
	ld c,l			;0090	4d 	M 
	ld b,c			;0091	41 	A 
	ld c,(hl)			;0092	4e 	N 
	jr nz,l00cdh		;0093	20 38 	  8 
l0095h:
	jr nz,l00c4h		;0095	20 2d 	  - 
	jr nz,l00c9h		;0097	20 30 	  0 
	jr nc,l00cbh		;0099	30 30 	0 0 
	ld (l5320h),a		;009b	32 20 53 	2   S 
	jr nz,$+29		;009e	20 1b 	  . 
	ld d,h			;00a0	54 	T 
	jr nz,$+34		;00a1	20 20 	    
	ld d,e			;00a3	53 	S 
	ld (hl),h			;00a4	74 	t 
	ld h,c			;00a5	61 	a 
	ld l,(hl)			;00a6	6e 	n 
	ld l,a			;00a7	6f 	o 
	ld (hl),a			;00a8	77 	w 
	ld l,c			;00a9	69 	i 
l00aah:
	ld (hl),e			;00aa	73 	s 
	ld l,e			;00ab	6b 	k 
	ld l,a			;00ac	6f 	o 
	jr nz,l011dh		;00ad	20 6e 	  n 
	ld (hl),d			;00af	72 	r 
	jr nz,$-126		;00b0	20 80 	  . 
	nop			;00b2	00 	. 
	nop			;00b3	00 	. 
	nop			;00b4	00 	. 
l00b5h:
	add a,c			;00b5	81 	. 
l00b6h:
	jr nz,l00d8h		;00b6	20 20 	    
	jr nz,l00dah		;00b8	20 20 	    
	jr nz,l00dch		;00ba	20 20 	    
	jr nz,l0101h		;00bc	20 43 	  C 
	ld d,b			;00be	50 	P 
	ld d,l			;00bf	55 	U 
	dec l			;00c0	2d 	- 
	ld e,d			;00c1	5a 	Z 
	jr c,l00f4h		;00c2	38 30 	8 0 
l00c4h:
	ld b,c			;00c4	41 	A 
	dec c			;00c5	0d 	. 
	ld a,(bc)			;00c6	0a 	. 
	ld a,(bc)			;00c7	0a 	. 
l00c8h:
	ld b,h			;00c8	44 	D 
l00c9h:
	ld a,c			;00c9	79 	y 
	ld (hl),e			;00ca	73 	s 
l00cbh:
	ld l,e			;00cb	6b 	k 
	ld l,a			;00cc	6f 	o 
l00cdh:
	ld (hl),a			;00cd	77 	w 
	ld a,c			;00ce	79 	y 
	jr nz,l0144h		;00cf	20 73 	  s 
l00d1h:
	ld a,c			;00d1	79 	y 
	ld (hl),e			;00d2	73 	s 
	ld (hl),h			;00d3	74 	t 
	ld h,l			;00d4	65 	e 
	ld l,l			;00d5	6d 	m 
	jr nz,l0147h		;00d6	20 6f 	  o 
l00d8h:
	ld (hl),b			;00d8	70 	p 
	ld h,l			;00d9	65 	e 
l00dah:
	ld (hl),d			;00da	72 	r 
	ld h,c			;00db	61 	a 
l00dch:
	ld h,e			;00dc	63 	c 
	ld a,c			;00dd	79 	y 
	ld l,d			;00de	6a 	j 
	ld l,(hl)			;00df	6e 	n 
	ld a,c			;00e0	79 	y 
	jr nz,l0103h		;00e1	20 20 	    
	ld b,e			;00e3	43 	C 
	ld d,b			;00e4	50 	P 
	ld c,l			;00e5	4d 	M 
	cpl			;00e6	2f 	/ 
	ld d,d			;00e7	52 	R 
	jr nz,l0160h		;00e8	20 76 	  v 
	ld (0352eh),a		;00ea	32 2e 35 	2 . 5 
	jr nz,l010fh		;00ed	20 20 	    
	jr nz,l0111h		;00ef	20 20 	    
	ld d,h			;00f1	54 	T 
	ld d,b			;00f2	50 	P 
	ld b,c			;00f3	41 	A 
l00f4h:
	dec a			;00f4	3d 	= 
	ld (hl),030h		;00f5	36 30 	6 0 
	ld c,e			;00f7	4b 	K 
	ld b,d			;00f8	42 	B 
	jr nz,l011bh		;00f9	20 20 	    
	dec c			;00fb	0d 	. 
	ld a,(bc)			;00fc	0a 	. 
	ld a,(bc)			;00fd	0a 	. 
l00feh:
	ld a,(bc)			;00fe	0a 	. 
l00ffh:
	add a,b			;00ff	80 	. 
l0100h:
	nop			;0100	00 	. 
l0101h:
	nop			;0101	00 	. 
	nop			;0102	00 	. 
l0103h:
	nop			;0103	00 	. 
	nop			;0104	00 	. 
	nop			;0105	00 	. 
	nop			;0106	00 	. 
sub_0107h:
	nop			;0107	00 	. 
	nop			;0108	00 	. 
	nop			;0109	00 	. 
	nop			;010a	00 	. 
	nop			;010b	00 	. 
	nop			;010c	00 	. 
	nop			;010d	00 	. 
	nop			;010e	00 	. 
l010fh:
	nop			;010f	00 	. 
l0110h:
	ld d,d			;0110	52 	R 
l0111h:
	ld b,c			;0111	41 	A 
	ld c,l			;0112	4d 	M 
	ld b,h			;0113	44 	D 
	ld e,c			;0114	59 	Y 
	ld d,e			;0115	53 	S 
	ld c,e			;0116	4b 	K 
	jr nz,$+119		;0117	20 75 	  u 
	ld (hl),e			;0119	73 	s 
	ld a,d			;011a	7a 	z 
l011bh:
	ld l,e			;011b	6b 	k 
	ld l,a			;011c	6f 	o 
l011dh:
	ld h,h			;011d	64 	d 
	ld a,d			;011e	7a 	z 
	ld l,a			;011f	6f 	o 
	ld l,(hl)			;0120	6e 	n 
	ld a,c			;0121	79 	y 
	dec c			;0122	0d 	. 
	ld a,(bc)			;0123	0a 	. 
	add a,b			;0124	80 	. 
l0125h:
	ld a,(de)			;0125	1a 	. 
	ld d,d			;0126	52 	R 
	ld c,a			;0127	4f 	O 
	ld c,l			;0128	4d 	M 
	jr nz,$+119		;0129	20 75 	  u 
	ld (hl),e			;012b	73 	s 
	ld a,d			;012c	7a 	z 
	ld l,e			;012d	6b 	k 
	ld l,a			;012e	6f 	o 
	ld h,h			;012f	64 	d 
	ld a,d			;0130	7a 	z 
	ld l,a			;0131	6f 	o 
	ld l,(hl)			;0132	6e 	n 
l0133h:
	ld a,c			;0133	79 	y 
	dec c			;0134	0d 	. 
	ld a,(bc)			;0135	0a 	. 
	add a,b			;0136	80 	. 
l0137h:
	dec c			;0137	0d 	. 
	dec c			;0138	0d 	. 
	dec de			;0139	1b 	. 
	ld d,h			;013a	54 	T 
	dec de			;013b	1b 	. 
	ld c,a			;013c	4f 	O 
	dec de			;013d	1b 	. 
	ld b,b			;013e	40 	@ 
	dec de			;013f	1b 	. 
	ld a,01bh		;0140	3e 1b 	> . 
	ld b,a			;0142	47 	G 
	dec de			;0143	1b 	. 
l0144h:
	ld e,b			;0144	58 	X 
	jr nz,l0161h		;0145	20 1a 	  . 
l0147h:
	dec de			;0147	1b 	. 
	dec h			;0148	25 	% 
	dec c			;0149	0d 	. 
	ld a,(bc)			;014a	0a 	. 
	add a,b			;014b	80 	. 
l014ch:
	nop			;014c	00 	. 
	nop			;014d	00 	. 
l014eh:
	jr nc,l0186h		;014e	30 36 	0 6 
	inc (hl)			;0150	34 	4 
	add a,b			;0151	80 	. 
	ex af,af'			;0152	08 	. 
	ld e,c			;0153	59 	Y 
	ld (l3635h),a		;0154	32 35 36 	2 5 6 
	add a,b			;0157	80 	. 
	ld b,01dh		;0158	06 1d 	. . 
	ld sp,l3832h		;015a	31 32 38 	1 2 8 
	add a,b			;015d	80 	. 
	ld b,077h		;015e	06 77 	. w 
l0160h:
	inc sp			;0160	33 	3 
l0161h:
	ld (08030h),a		;0161	32 30 80 	2 0 . 
	nop			;0164	00 	. 
	ld (hl),a			;0165	77 	w 
	inc sp			;0166	33 	3 
	ld (08030h),a		;0167	32 30 80 	2 0 . 
	nop			;016a	00 	. 
	pop de			;016b	d1 	. 
	dec (hl)			;016c	35 	5 
	ld sp,08032h		;016d	31 32 80 	1 2 . 
	nop			;0170	00 	. 
	jr l0175h		;0171	18 02 	. . 
	ret p			;0173	f0 	. 
	inc b			;0174	04 	. 
l0175h:
	jr nz,$+3		;0175	20 01 	  . 
	ld e,007h		;0177	1e 07 	. . 
	ld a,(hl)			;0179	7e 	~ 
	dec b			;017a	05 	. 
	ld h,c			;017b	61 	a 
	inc bc			;017c	03 	. 
	call 021f3h		;017d	cd f3 21 	. . ! 
	ld (hl),b			;0180	70 	p 
	ld bc,0830eh		;0181	01 0e 83 	. . . 
	ld b,00eh		;0184	06 0e 	. . 
l0186h:
	otir		;0186	ed b3 	. . 
	ld a,006h		;0188	3e 06 	> . 
	out (083h),a		;018a	d3 83 	. . 
	ld a,(0fb7dh)		;018c	3a 7d fb 	: } . 
	out (083h),a		;018f	d3 83 	. . 
	ld a,0f3h		;0191	3e f3 	> . 
	ld i,a		;0193	ed 47 	. G 
	im 2		;0195	ed 5e 	. ^ 
	ld a,0b7h		;0197	3e b7 	> . 
	out (087h),a		;0199	d3 87 	. . 
	ld a,020h		;019b	3e 20 	>   
	out (086h),a		;019d	d3 86 	. . 
	ld a,000h		;019f	3e 00 	> . 
	out (086h),a		;01a1	d3 86 	. . 
	xor a			;01a3	af 	. 
	ld (0ffadh),a		;01a4	32 ad ff 	2 . . 
	ld (0ffaah),a		;01a7	32 aa ff 	2 . . 
	ld (0ffaeh),a		;01aa	32 ae ff 	2 . . 
	ld (0ffb0h),a		;01ad	32 b0 ff 	2 . . 
	ret			;01b0	c9 	. 
l01b1h:
	out (007h),a		;01b1	d3 07 	. . 
	ld sp,0f200h		;01b3	31 00 f2 	1 . . 
	ld hl,l0000h		;01b6	21 00 00 	! . . 
	xor a			;01b9	af 	. 
l01bah:
	add a,(hl)			;01ba	86 	. 
	inc hl			;01bb	23 	# 
	bit 6,h		;01bc	cb 74 	. t 
	jr z,l01bah		;01be	28 fa 	( . 
	or a			;01c0	b7 	. 
	out (006h),a		;01c1	d3 06 	. . 
	ex af,af'			;01c3	08 	. 
	ld hl,l08a9h		;01c4	21 a9 08 	! . . 
	ld de,0f200h		;01c7	11 00 f2 	. . . 
	ld bc,l03ffh+1		;01ca	01 00 04 	. . . 
	ldir		;01cd	ed b0 	. . 
	ld a,035h		;01cf	3e 35 	> 5 
	out (087h),a		;01d1	d3 87 	. . 
	ld a,076h		;01d3	3e 76 	> v 
	out (087h),a		;01d5	d3 87 	. . 
	ld a,0b6h		;01d7	3e b6 	> . 
	out (087h),a		;01d9	d3 87 	. . 
	ld a,003h		;01db	3e 03 	> . 
	out (082h),a		;01dd	d3 82 	. . 
	ld a,0e1h		;01df	3e e1 	> . 
	out (082h),a		;01e1	d3 82 	. . 
	ld a,004h		;01e3	3e 04 	> . 
	out (082h),a		;01e5	d3 82 	. . 
	ld a,00ch		;01e7	3e 0c 	> . 
	out (082h),a		;01e9	d3 82 	. . 
	ld a,005h		;01eb	3e 05 	> . 
	out (082h),a		;01ed	d3 82 	. . 
	ld a,0e8h		;01ef	3e e8 	> . 
	out (082h),a		;01f1	d3 82 	. . 
	ld a,014h		;01f3	3e 14 	> . 
	out (085h),a		;01f5	d3 85 	. . 
	ld a,000h		;01f7	3e 00 	> . 
	out (085h),a		;01f9	d3 85 	. . 
	in a,(080h)		;01fb	db 80 	. . 
	ld a,001h		;01fd	3e 01 	> . 
	call 00025h		;01ff	cd 25 00 	. % . 
	in a,(080h)		;0202	db 80 	. . 
	xor a			;0204	af 	. 
	ld b,a			;0205	47 	G 
	in a,(098h)		;0206	db 98 	. . 
	bit 6,a		;0208	cb 77 	. w 
	jr z,l020eh		;020a	28 02 	( . 
	set 2,b		;020c	cb d0 	. . 
l020eh:
	bit 5,a		;020e	cb 6f 	. o 
	jr z,l0214h		;0210	28 02 	( . 
	set 1,b		;0212	cb c8 	. . 
l0214h:
	bit 3,a		;0214	cb 5f 	. _ 
	jr z,l021ah		;0216	28 02 	( . 
	set 0,b		;0218	cb c0 	. . 
l021ah:
	inc b			;021a	04 	. 
	ld a,b			;021b	78 	x 
	ld (0fb7dh),a		;021c	32 7d fb 	2 } . 
	call 0017eh		;021f	cd 7e 01 	. ~ . 
	ld a,0d5h		;0222	3e d5 	> . 
	ld (l0002h+1),a		;0224	32 03 00 	2 . . 
	xor a			;0227	af 	. 
	ld (l0002h+2),a		;0228	32 04 00 	2 . . 
	ld hl,0f000h		;022b	21 00 f0 	! . . 
	ld b,000h		;022e	06 00 	. . 
l0230h:
	ld (hl),a			;0230	77 	w 
	inc hl			;0231	23 	# 
	djnz l0230h		;0232	10 fc 	. . 
	ld a,001h		;0234	3e 01 	> . 
	ld (0f13ah),a		;0236	32 3a f1 	2 : . 
	call sub_0365h		;0239	cd 65 03 	. e . 
	ld b,004h		;023c	06 04 	. . 
	call sub_032bh		;023e	cd 2b 03 	. + . 
	add a,a			;0241	87 	. 
	push af			;0242	f5 	. 
	ld b,000h		;0243	06 00 	. . 
	call sub_032bh		;0245	cd 2b 03 	. + . 
	dec a			;0248	3d 	= 
	pop bc			;0249	c1 	. 
	add a,b			;024a	80 	. 
	add a,a			;024b	87 	. 
	ld c,a			;024c	4f 	O 
	ld b,000h		;024d	06 00 	. . 
	ld hl,l014ch		;024f	21 4c 01 	! L . 
	add hl,bc			;0252	09 	. 
	add hl,bc			;0253	09 	. 
	add hl,bc			;0254	09 	. 
	ld d,(hl)			;0255	56 	V 
	inc hl			;0256	23 	# 
	ld e,(hl)			;0257	5e 	^ 
l0258h:
	inc hl			;0258	23 	# 
	push hl			;0259	e5 	. 
	ld a,(0f298h)		;025a	3a 98 f2 	: . . 
	ld b,a			;025d	47 	G 
	add a,d			;025e	82 	. 
	ld (0f298h),a		;025f	32 98 f2 	2 . . 
	ld a,b			;0262	78 	x 
	add a,a			;0263	87 	. 
	add a,a			;0264	87 	. 
	add a,a			;0265	87 	. 
	add a,a			;0266	87 	. 
	sub b			;0267	90 	. 
	sub e			;0268	93 	. 
	jr c,l026ch		;0269	38 01 	8 . 
	xor a			;026b	af 	. 
l026ch:
	neg		;026c	ed 44 	. D 
	ld (0f290h),a		;026e	32 90 f2 	2 . . 
	ld c,000h		;0271	0e 00 	. . 
	ld a,(0f296h)		;0273	3a 96 f2 	: . . 
	ld b,a			;0276	47 	G 
	ld a,(0f298h)		;0277	3a 98 f2 	: . . 
	xor 00eh		;027a	ee 0e 	. . 
	ld hl,l0000h		;027c	21 00 00 	! . . 
	or a			;027f	b7 	. 
	rra			;0280	1f 	. 
	jr nc,l0286h		;0281	30 03 	0 . 
l0283h:
	ld hl,l7800h		;0283	21 00 78 	! . x 
l0286h:
	ld de,0fa20h		;0286	11 20 fa 	.   . 
	push bc			;0289	c5 	. 
	call 0f321h		;028a	cd 21 f3 	. ! . 
	pop bc			;028d	c1 	. 
	push hl			;028e	e5 	. 
	push bc			;028f	c5 	. 
l0290h:
	push bc			;0290	c5 	. 
	call 0f34eh		;0291	cd 4e f3 	. N . 
	ld c,a			;0294	4f 	O 
	ld a,(de)			;0295	1a 	. 
	inc de			;0296	13 	. 
	cp c			;0297	b9 	. 
	pop bc			;0298	c1 	. 
	jr z,l029ch		;0299	28 01 	( . 
	inc c			;029b	0c 	. 
l029ch:
	djnz l0290h		;029c	10 f2 	. . 
	ld a,c			;029e	79 	y 
	ld (0fb7ah),a		;029f	32 7a fb 	2 z . 
	pop bc			;02a2	c1 	. 
	pop hl			;02a3	e1 	. 
	cp 004h		;02a4	fe 04 	. . 
	jr c,l02c0h		;02a6	38 18 	8 . 
l02a8h:
	ld c,080h		;02a8	0e 80 	. . 
	ld a,040h		;02aa	3e 40 	> @ 
	call 00025h		;02ac	cd 25 00 	. % . 
l02afh:
	ld (hl),0e5h		;02af	36 e5 	6 . 
l02b1h:
	inc hl			;02b1	23 	# 
	dec c			;02b2	0d 	. 
	jr nz,l02afh		;02b3	20 fa 	  . 
	djnz l02a8h		;02b5	10 f1 	. . 
	xor a			;02b7	af 	. 
	ld (0fb7ah),a		;02b8	32 7a fb 	2 z . 
	ld (0fb7ch),a		;02bb	32 7c fb 	2 | . 
	jr l02cdh		;02be	18 0d 	. . 
l02c0h:
	ld a,(0f290h)		;02c0	3a 90 f2 	: . . 
	ld b,a			;02c3	47 	G 
	ld a,(0fb7bh)		;02c4	3a 7b fb 	: { . 
	cp b			;02c7	b8 	. 
	jr nc,l02cdh		;02c8	30 03 	0 . 
	ld (0f290h),a		;02ca	32 90 f2 	2 . . 
l02cdh:
	xor a			;02cd	af 	. 
	call 0f321h		;02ce	cd 21 f3 	. ! . 
	ex af,af'			;02d1	08 	. 
	ld hl,l0069h		;02d2	21 69 00 	! i . 
	call sub_06f8h		;02d5	cd f8 06 	. . . 
	ld a,(0fb7dh)		;02d8	3a 7d fb 	: } . 
	add a,030h		;02db	c6 30 	. 0 
	ld c,a			;02dd	4f 	O 
	call sub_0702h		;02de	cd 02 07 	. . . 
	pop hl			;02e1	e1 	. 
	ld a,(l00b5h)		;02e2	3a b5 00 	: . . 
	bit 0,a		;02e5	cb 47 	. G 
	call z,sub_06f8h		;02e7	cc f8 06 	. . . 
	ld hl,l00b6h		;02ea	21 b6 00 	! . . 
	call sub_06f8h		;02ed	cd f8 06 	. . . 
	ld hl,l0110h		;02f0	21 10 01 	! . . 
	ld a,(0fb7ah)		;02f3	3a 7a fb 	: z . 
	or a			;02f6	b7 	. 
	call nz,sub_06f8h		;02f7	c4 f8 06 	. . . 
	jr l030fh		;02fa	18 13 	. . 
	ld hl,l0125h		;02fc	21 25 01 	! % . 
	call sub_06f8h		;02ff	cd f8 06 	. . . 
	jp 0f36ah		;0302	c3 6a f3 	. j . 
l0305h:
	ld sp,0f200h		;0305	31 00 f2 	1 . . 
	xor a			;0308	af 	. 
	call l071fh		;0309	cd 1f 07 	. . . 
	call sub_0365h		;030c	cd 65 03 	. e . 
l030fh:
	ld a,(0f290h)		;030f	3a 90 f2 	: . . 
	ld (0fb7bh),a		;0312	32 7b fb 	2 { . 
	ld hl,l0137h		;0315	21 37 01 	! 7 . 
	call sub_06f8h		;0318	cd f8 06 	. . . 
	ld hl,0f26bh		;031b	21 6b f2 	! k . 
	res 3,(hl)		;031e	cb 9e 	. . 
	ld hl,l0002h+2		;0320	21 04 00 	! . . 
	call 0f35ah		;0323	cd 5a f3 	. Z . 
	ld c,a			;0326	4f 	O 
	ei			;0327	fb 	. 
	jp l1a35h		;0328	c3 35 1a 	. 5 . 
sub_032bh:
	ld a,b			;032b	78 	x 
sub_032ch:
	call 0f321h		;032c	cd 21 f3 	. ! . 
	ld hl,l0000h		;032f	21 00 00 	! . . 
	call 0f35ah		;0332	cd 5a f3 	. Z . 
	ld d,a			;0335	57 	W 
	ld (hl),055h		;0336	36 55 	6 U 
	ld a,b			;0338	78 	x 
	inc a			;0339	3c 	< 
	call 0f321h		;033a	cd 21 f3 	. ! . 
	call 0f35ah		;033d	cd 5a f3 	. Z . 
	ld e,a			;0340	5f 	_ 
	ld (hl),0aah		;0341	36 aa 	6 . 
	ld a,b			;0343	78 	x 
	call 0f321h		;0344	cd 21 f3 	. ! . 
	call 0f35ah		;0347	cd 5a f3 	. Z . 
	cp 055h		;034a	fe 55 	. U 
	jr z,l0357h		;034c	28 09 	( . 
	cp 0aah		;034e	fe aa 	. . 
	ld a,000h		;0350	3e 00 	> . 
	ret nz			;0352	c0 	. 
	ld (hl),d			;0353	72 	r 
	ld a,001h		;0354	3e 01 	> . 
	ret			;0356	c9 	. 
l0357h:
	ld a,b			;0357	78 	x 
	inc a			;0358	3c 	< 
	call 0f321h		;0359	cd 21 f3 	. ! . 
	ld (hl),e			;035c	73 	s 
	ld a,b			;035d	78 	x 
	call 0f321h		;035e	cd 21 f3 	. ! . 
	ld (hl),d			;0361	72 	r 
	ld a,002h		;0362	3e 02 	> . 
	ret			;0364	c9 	. 
sub_0365h:
	ld hl,l0ca9h		;0365	21 a9 0c 	! . . 
	ld de,0f060h		;0368	11 60 f0 	. ` . 
	ld bc,l000eh+2		;036b	01 10 00 	. . . 
	ldir		;036e	ed b0 	. . 
	ld hl,l0cb9h		;0370	21 b9 0c 	! . . 
	ld de,0f000h		;0373	11 00 f0 	. . . 
	ld bc,l000eh+2		;0376	01 10 00 	. . . 
	ldir		;0379	ed b0 	. . 
l037bh:
	ld a,0c3h		;037b	3e c3 	> . 
	ld (l0000h),a		;037d	32 00 00 	2 . . 
	ld (l0005h),a		;0380	32 05 00 	2 . . 
	ld (l0030h),a		;0383	32 30 00 	2 0 . 
	ld (l0038h),a		;0386	32 38 00 	2 8 . 
	ld hl,0f203h		;0389	21 03 f2 	! . . 
	ld (l0001h),hl		;038c	22 01 00 	" . . 
	ld hl,0f006h		;038f	21 06 f0 	! . . 
	ld (l0005h+1),hl		;0392	22 06 00 	" . . 
	ld hl,0f275h		;0395	21 75 f2 	! u . 
	ld (l0030h+1),hl		;0398	22 31 00 	" 1 . 
	ld hl,0f272h		;039b	21 72 f2 	! r . 
	ld (l0038h+1),hl		;039e	22 39 00 	" 9 . 
	ret			;03a1	c9 	. 
sub_03a2h:
	ld a,c			;03a2	79 	y 
	cp 004h		;03a3	fe 04 	. . 
	jr nc,l03cfh		;03a5	30 28 	0 ( 
	ld l,c			;03a7	69 	i 
	inc l			;03a8	2c 	, 
	ld a,(0f2b7h)		;03a9	3a b7 f2 	: . . 
l03ach:
	rrca			;03ac	0f 	. 
	dec l			;03ad	2d 	- 
	jr nz,l03ach		;03ae	20 fc 	  . 
	jr nc,l03cfh		;03b0	30 1d 	0 . 
	ld a,c			;03b2	79 	y 
	ld (0f2abh),a		;03b3	32 ab f2 	2 . . 
	rlca			;03b6	07 	. 
	rlca			;03b7	07 	. 
	rlca			;03b8	07 	. 
	rlca			;03b9	07 	. 
	ld l,a			;03ba	6f 	o 
	ld h,000h		;03bb	26 00 	& . 
	ld de,0f27bh		;03bd	11 7b f2 	. { . 
	add hl,de			;03c0	19 	. 
	push hl			;03c1	e5 	. 
	ld de,l0008h+2		;03c2	11 0a 00 	. . . 
	add hl,de			;03c5	19 	. 
	ld a,(hl)			;03c6	7e 	~ 
	inc hl			;03c7	23 	# 
	ld h,(hl)			;03c8	66 	f 
	ld l,a			;03c9	6f 	o 
	ld (0f2b1h),hl		;03ca	22 b1 f2 	" . . 
	pop hl			;03cd	e1 	. 
	ret			;03ce	c9 	. 
l03cfh:
	ld hl,l0000h		;03cf	21 00 00 	! . . 
	xor a			;03d2	af 	. 
	ld (l0002h+2),a		;03d3	32 04 00 	2 . . 
	ret			;03d6	c9 	. 
sub_03d7h:
	jp l03ddh		;03d7	c3 dd 03 	. . . 
sub_03dah:
	jp l03ffh		;03da	c3 ff 03 	. . . 
l03ddh:
	ld hl,(0f2afh)		;03dd	2a af f2 	* . . 
	ld de,0f9a0h		;03e0	11 a0 f9 	. . . 
	ld bc,l0080h		;03e3	01 80 00 	. . . 
	call 0f347h		;03e6	cd 47 f3 	. G . 
	call sub_0421h		;03e9	cd 21 04 	. ! . 
	call 0f321h		;03ec	cd 21 f3 	. ! . 
	ex de,hl			;03ef	eb 	. 
	ld hl,0f9a0h		;03f0	21 a0 f9 	! . . 
	ld bc,l0080h		;03f3	01 80 00 	. . . 
	ldir		;03f6	ed b0 	. . 
	ld a,0ffh		;03f8	3e ff 	> . 
	call 0f321h		;03fa	cd 21 f3 	. ! . 
l03fdh:
	xor a			;03fd	af 	. 
	ret			;03fe	c9 	. 
l03ffh:
	call sub_0421h		;03ff	cd 21 04 	. ! . 
	call 0f321h		;0402	cd 21 f3 	. ! . 
	ld de,0f9a0h		;0405	11 a0 f9 	. . . 
	ld bc,l0080h		;0408	01 80 00 	. . . 
	call 0f347h		;040b	cd 47 f3 	. G . 
	ld a,0ffh		;040e	3e ff 	> . 
	call 0f321h		;0410	cd 21 f3 	. ! . 
	ld hl,(0f2afh)		;0413	2a af f2 	* . . 
	ex de,hl			;0416	eb 	. 
	ld hl,0f9a0h		;0417	21 a0 f9 	! . . 
	ld bc,l0080h		;041a	01 80 00 	. . . 
	ldir		;041d	ed b0 	. . 
	xor a			;041f	af 	. 
	ret			;0420	c9 	. 
sub_0421h:
	ld hl,(0f2adh)		;0421	2a ad f2 	* . . 
	ld l,000h		;0424	2e 00 	. . 
	srl h		;0426	cb 3c 	. < 
	rr l		;0428	cb 1d 	. . 
	ld de,l7800h		;042a	11 00 78 	. . x 
	ld a,(0f2ach)		;042d	3a ac f2 	: . . 
	xor 00eh		;0430	ee 0e 	. . 
	rrca			;0432	0f 	. 
	ret nc			;0433	d0 	. 
	add hl,de			;0434	19 	. 
	ret			;0435	c9 	. 
l0436h:
	ret			;0436	c9 	. 
sub_0437h:
	push hl			;0437	e5 	. 
	ld hl,l0002h+1		;0438	21 03 00 	! . . 
	call 0f35ah		;043b	cd 5a f3 	. Z . 
	pop hl			;043e	e1 	. 
	ret			;043f	c9 	. 
	call sub_0437h		;0440	cd 37 04 	. 7 . 
	and b			;0443	a0 	. 
	or c			;0444	b1 	. 
	ld (l0002h+1),a		;0445	32 03 00 	2 . . 
	ret			;0448	c9 	. 
l0449h:
	jr nz,l048fh		;0449	20 44 	  D 
	ld (hl),d			;044b	72 	r 
	ld (hl),l			;044c	75 	u 
	ld l,e			;044d	6b 	k 
	ld h,c			;044e	61 	a 
	ld (hl),d			;044f	72 	r 
	ld l,e			;0450	6b 	k 
	ld h,c			;0451	61 	a 
	jr nz,l04b8h		;0452	20 64 	  d 
	ld (hl),d			;0454	72 	r 
	ld (hl),l			;0455	75 	u 
	ld l,e			;0456	6b 	k 
	ld (hl),l			;0457	75 	u 
	ld l,d			;0458	6a 	j 
	ld h,l			;0459	65 	e 
	jr nz,l0489h		;045a	20 2d 	  - 
	jr nz,$+114		;045c	20 70 	  p 
	ld (hl),d			;045e	72 	r 
	ld a,d			;045f	7a 	z 
	ld h,l			;0460	65 	e 
	ld (hl),d			;0461	72 	r 
	ld (hl),a			;0462	77 	w 
	ld l,c			;0463	69 	i 
	ld l,d			;0464	6a 	j 
	jr nz,l048fh		;0465	20 28 	  ( 
	ld d,b			;0467	50 	P 
	add hl,hl			;0468	29 	) 
	jr nz,l048bh		;0469	20 20 	    
	ld l,e			;046b	6b 	k 
	ld l,a			;046c	6f 	o 
	ld l,(hl)			;046d	6e 	n 
	ld (hl),h			;046e	74 	t 
	ld a,c			;046f	79 	y 
	ld l,(hl)			;0470	6e 	n 
	ld (hl),l			;0471	75 	u 
	ld (hl),l			;0472	75 	u 
	ld l,d			;0473	6a 	j 
	jr nz,l049eh		;0474	20 28 	  ( 
	ld c,e			;0476	4b 	K 
	add hl,hl			;0477	29 	) 
	jr nz,$+34		;0478	20 20 	    
	ccf			;047a	3f 	? 
	jr nz,l03fdh		;047b	20 80 	  . 
	ld c,e			;047d	4b 	K 
	ld d,b			;047e	50 	P 
	add a,b			;047f	80 	. 
l0480h:
	jr nz,$+70		;0480	20 44 	  D 
	ld (hl),d			;0482	72 	r 
	ld (hl),l			;0483	75 	u 
	ld l,e			;0484	6b 	k 
	ld h,c			;0485	61 	a 
	ld (hl),d			;0486	72 	r 
	ld l,e			;0487	6b 	k 
	ld h,c			;0488	61 	a 
l0489h:
	nop			;0489	00 	. 
	ld l,(hl)			;048a	6e 	n 
l048bh:
	ld l,c			;048b	69 	i 
	ld h,l			;048c	65 	e 
	ld h,a			;048d	67 	g 
	ld l,a			;048e	6f 	o 
l048fh:
	ld (hl),h			;048f	74 	t 
	ld l,a			;0490	6f 	o 
	ld (hl),a			;0491	77 	w 
	ld h,c			;0492	61 	a 
	jr nz,l04c2h		;0493	20 2d 	  - 
	jr nz,$+121		;0495	20 77 	  w 
	ld a,c			;0497	79 	y 
	ex af,af'			;0498	08 	. 
	ld b,063h		;0499	06 63 	. c 
	ld a,d			;049b	7a 	z 
	jr nz,$+42		;049c	20 28 	  ( 
l049eh:
	ld d,a			;049e	57 	W 
	add hl,hl			;049f	29 	) 
	jr nz,l04c2h		;04a0	20 20 	    
	ld (hl),b			;04a2	70 	p 
	ld l,a			;04a3	6f 	o 
	ld (hl),a			;04a4	77 	w 
	ld (hl),h			;04a5	74 	t 
	rlca			;04a6	07 	. 
	ld (hl),d			;04a7	72 	r 
	ld a,d			;04a8	7a 	z 
	jr nz,l04d3h		;04a9	20 28 	  ( 
	ld d,b			;04ab	50 	P 
	add hl,hl			;04ac	29 	) 
	jr nz,l04cfh		;04ad	20 20 	    
	ld a,d			;04af	7a 	z 
	ld l,l			;04b0	6d 	m 
	ld l,c			;04b1	69 	i 
	ld h,l			;04b2	65 	e 
	inc b			;04b3	04 	. 
	jr nz,$+42		;04b4	20 28 	  ( 
	ld e,d			;04b6	5a 	Z 
	add hl,hl			;04b7	29 	) 
l04b8h:
	jr nz,$+34		;04b8	20 20 	    
	ccf			;04ba	3f 	? 
	jr nz,$-126		;04bb	20 80 	  . 
	ld d,a			;04bd	57 	W 
	ld d,b			;04be	50 	P 
	ld d,b			;04bf	50 	P 
	ld e,d			;04c0	5a 	Z 
	add a,b			;04c1	80 	. 
l04c2h:
	ld a,(0f26bh)		;04c2	3a 6b f2 	: k . 
	bit 2,a		;04c5	cb 57 	. W 
	jr z,l04d8h		;04c7	28 0f 	( . 
	ld hl,l0449h		;04c9	21 49 04 	! I . 
	call l0624h		;04cc	cd 24 06 	. $ . 
l04cfh:
	ld hl,0f26bh		;04cf	21 6b f2 	! k . 
	or a			;04d2	b7 	. 
l04d3h:
	jp z,l0572h		;04d3	ca 72 05 	. r . 
	res 2,(hl)		;04d6	cb 96 	. . 
l04d8h:
	push bc			;04d8	c5 	. 
	ld bc,02500h		;04d9	01 00 25 	. . % 
l04dch:
	call sub_0580h		;04dc	cd 80 05 	. . . 
	jr nz,l04fbh		;04df	20 1a 	  . 
	ld a,001h		;04e1	3e 01 	> . 
	call 00025h		;04e3	cd 25 00 	. % . 
	dec bc			;04e6	0b 	. 
	ld a,b			;04e7	78 	x 
	or c			;04e8	b1 	. 
	jr nz,l04dch		;04e9	20 f1 	  . 
	pop bc			;04eb	c1 	. 
	ld hl,l0480h		;04ec	21 80 04 	! . . 
	call l0624h		;04ef	cd 24 06 	. $ . 
	ld hl,0f26bh		;04f2	21 6b f2 	! k . 
	or a			;04f5	b7 	. 
	jp z,l0572h		;04f6	ca 72 05 	. r . 
	jr l04d8h		;04f9	18 dd 	. . 
l04fbh:
	pop bc			;04fb	c1 	. 
l04fch:
	ld a,c			;04fc	79 	y 
	cp 020h		;04fd	fe 20 	.   
	ld a,000h		;04ff	3e 00 	> . 
	jr c,l0507h		;0501	38 04 	8 . 
	ld a,(0f2b6h)		;0503	3a b6 f2 	: . . 
	inc a			;0506	3c 	< 
l0507h:
	ld (0f2b6h),a		;0507	32 b6 f2 	2 . . 
	ld a,(0f26bh)		;050a	3a 6b f2 	: k . 
	bit 1,a		;050d	cb 4f 	. O 
	jr z,l0513h		;050f	28 02 	( . 
	res 7,c		;0511	cb b9 	. . 
l0513h:
	call sub_0437h		;0513	cd 37 04 	. 7 . 
	bit 6,a		;0516	cb 77 	. w 
	jp z,0f500h		;0518	ca 00 f5 	. . . 
l051bh:
	in a,(098h)		;051b	db 98 	. . 
	rlca			;051d	07 	. 
	jr nc,l051bh		;051e	30 fb 	0 . 
	call sub_0528h		;0520	cd 28 05 	. ( . 
	ld a,c			;0523	79 	y 
sub_0524h:
	nop			;0524	00 	. 
	out (098h),a		;0525	d3 98 	. . 
	ret			;0527	c9 	. 
sub_0528h:
	ld a,(0f26bh)		;0528	3a 6b f2 	: k . 
	bit 4,a		;052b	cb 67 	. g 
	jr z,l0540h		;052d	28 11 	( . 
	bit 5,a		;052f	cb 6f 	. o 
	ret nz			;0531	c0 	. 
	ld hl,l0548h		;0532	21 48 05 	! H . 
l0535h:
	ld a,(hl)			;0535	7e 	~ 
	or a			;0536	b7 	. 
	ret z			;0537	c8 	. 
	cp c			;0538	b9 	. 
	inc hl			;0539	23 	# 
	ld a,(hl)			;053a	7e 	~ 
	inc hl			;053b	23 	# 
	jr nz,l0535h		;053c	20 f7 	  . 
	ld c,a			;053e	4f 	O 
	ret			;053f	c9 	. 
l0540h:
	bit 5,a		;0540	cb 6f 	. o 
	ret z			;0542	c8 	. 
	ld hl,l055dh		;0543	21 5d 05 	! ] . 
	jr l0535h		;0546	18 ed 	. . 
l0548h:
	ld h,b			;0548	60 	` 
	ld h,c			;0549	61 	a 
	ld b,b			;054a	40 	@ 
l054bh:
	ld h,l			;054b	65 	e 
	ld a,(hl)			;054c	7e 	~ 
	ld h,e			;054d	63 	c 
	ld e,(hl)			;054e	5e 	^ 
	ld (hl),e			;054f	73 	s 
	ld a,l			;0550	7d 	} 
	ld a,d			;0551	7a 	z 
	ld e,l			;0552	5d 	] 
	ld l,(hl)			;0553	6e 	n 
	ld a,e			;0554	7b 	{ 
	ld l,a			;0555	6f 	o 
	ld e,e			;0556	5b 	[ 
	ld a,d			;0557	7a 	z 
sub_0558h:
	ld a,h			;0558	7c 	| 
	ld l,h			;0559	6c 	l 
	ld e,h			;055a	5c 	\ 
	ld c,h			;055b	4c 	L 
	nop			;055c	00 	. 
l055dh:
	ld h,b			;055d	60 	` 
	jr nz,l05a0h		;055e	20 40 	  @ 
	jr nz,l05e0h		;0560	20 7e 	  ~ 
	jr nz,$+96		;0562	20 5e 	  ^ 
	jr nz,l05e3h		;0564	20 7d 	  } 
	jr nz,$+95		;0566	20 5d 	  ] 
	jr nz,$+125		;0568	20 7b 	  { 
	jr nz,$+93		;056a	20 5b 	  [ 
	jr nz,$+126		;056c	20 7c 	  | 
	jr nz,$+94		;056e	20 5c 	  \ 
	jr nz,l0572h		;0570	20 00 	  . 
l0572h:
	set 3,(hl)		;0572	cb de 	. . 
	res 6,(hl)		;0574	cb b6 	. . 
	ret			;0576	c9 	. 
sub_0577h:
	ld a,(0f26bh)		;0577	3a 6b f2 	: k . 
	bit 2,a		;057a	cb 57 	. W 
	jr z,sub_0580h		;057c	28 02 	( . 
	xor a			;057e	af 	. 
	ret			;057f	c9 	. 
sub_0580h:
	call sub_0437h		;0580	cd 37 04 	. 7 . 
	bit 6,a		;0583	cb 77 	. w 
	jp z,0f503h		;0585	ca 03 f5 	. . . 
	in a,(098h)		;0588	db 98 	. . 
	rlca			;058a	07 	. 
	sbc a,a			;058b	9f 	. 
	ret			;058c	c9 	. 
sub_058dh:
	call sub_0580h		;058d	cd 80 05 	. . . 
	ret z			;0590	c8 	. 
l0591h:
	ld hl,(0f6feh)		;0591	2a fe f6 	* . . 
	ld a,l			;0594	7d 	} 
	or h			;0595	b4 	. 
	jr z,l05ech		;0596	28 54 	( T 
	dec hl			;0598	2b 	+ 
	ld (0f6feh),hl		;0599	22 fe f6 	" . . 
	ld hl,(0f6fbh)		;059c	2a fb f6 	* . . 
	inc hl			;059f	23 	# 
l05a0h:
	ld (0f6fbh),hl		;05a0	22 fb f6 	" . . 
	dec hl			;05a3	2b 	+ 
	ld a,(0f6fdh)		;05a4	3a fd f6 	: . . 
sub_05a7h:
	call 0f321h		;05a7	cd 21 f3 	. ! . 
	call 0f35ah		;05aa	cd 5a f3 	. Z . 
	push af			;05ad	f5 	. 
	ld a,0ffh		;05ae	3e ff 	> . 
	call 0f321h		;05b0	cd 21 f3 	. ! . 
	pop af			;05b3	f1 	. 
	ld c,a			;05b4	4f 	O 
	cp 01ah		;05b5	fe 1a 	. . 
	jr z,l05e3h		;05b7	28 2a 	( * 
	cp 009h		;05b9	fe 09 	. . 
	jp nz,l04fch		;05bb	c2 fc 04 	. . . 
	ld a,(0f26bh)		;05be	3a 6b f2 	: k . 
sub_05c1h:
	bit 0,a		;05c1	cb 47 	. G 
	jp nz,l04fch		;05c3	c2 fc 04 	. . . 
	ld c,020h		;05c6	0e 20 	.   
	ld a,(0f2b6h)		;05c8	3a b6 f2 	: . . 
	and 007h		;05cb	e6 07 	. . 
	cp 007h		;05cd	fe 07 	. . 
	jp z,l04fch		;05cf	ca fc 04 	. . . 
	ld hl,(0f6feh)		;05d2	2a fe f6 	* . . 
	inc hl			;05d5	23 	# 
	ld (0f6feh),hl		;05d6	22 fe f6 	" . . 
	ld hl,(0f6fbh)		;05d9	2a fb f6 	* . . 
	dec hl			;05dc	2b 	+ 
	ld (0f6fbh),hl		;05dd	22 fb f6 	" . . 
l05e0h:
	jp l04fch		;05e0	c3 fc 04 	. . . 
l05e3h:
	ld a,(0f26bh)		;05e3	3a 6b f2 	: k . 
	res 2,a		;05e6	cb 97 	. . 
	ld (0f26bh),a		;05e8	32 6b f2 	2 k . 
	ret			;05eb	c9 	. 
l05ech:
	ld hl,0f67fh		;05ec	21 7f f6 	!  . 
	ld a,(0f6f9h)		;05ef	3a f9 f6 	: . . 
	inc a			;05f2	3c 	< 
	inc a			;05f3	3c 	< 
	ld (0f6f9h),a		;05f4	32 f9 f6 	2 . . 
sub_05f7h:
	add a,l			;05f7	85 	. 
	ld l,a			;05f8	6f 	o 
	ld b,(hl)			;05f9	46 	F 
	dec hl			;05fa	2b 	+ 
	ld a,(hl)			;05fb	7e 	~ 
	or a			;05fc	b7 	. 
	jp z,l05e3h		;05fd	ca e3 05 	. . . 
l0600h:
	and 007h		;0600	e6 07 	. . 
	ld (0f6fdh),a		;0602	32 fd f6 	2 . . 
	ld a,(hl)			;0605	7e 	~ 
	and 0f8h		;0606	e6 f8 	. . 
	ld h,a			;0608	67 	g 
	ld l,000h		;0609	2e 00 	. . 
	ld (0f6fbh),hl		;060b	22 fb f6 	" . . 
	or a			;060e	b7 	. 
	ld h,b			;060f	60 	` 
	rr h		;0610	cb 1c 	. . 
	rr l		;0612	cb 1d 	. . 
	ld (0f6feh),hl		;0614	22 fe f6 	" . . 
	ld a,(0f6f9h)		;0617	3a f9 f6 	: . . 
	cp 002h		;061a	fe 02 	. . 
	jp nz,l0591h		;061c	c2 91 05 	. . . 
	ld c,00dh		;061f	0e 0d 	. . 
	jp l04fch		;0621	c3 fc 04 	. . . 
l0624h:
	push hl			;0624	e5 	. 
	push bc			;0625	c5 	. 
	push hl			;0626	e5 	. 
	ld hl,l06eeh		;0627	21 ee 06 	! . . 
	call sub_06f8h		;062a	cd f8 06 	. . . 
	pop hl			;062d	e1 	. 
	ld c,007h		;062e	0e 07 	. . 
	call sub_0702h		;0630	cd 02 07 	. . . 
	ld b,020h		;0633	06 20 	.   
l0635h:
	call sub_068bh		;0635	cd 8b 06 	. . . 
	ld c,(hl)			;0638	4e 	N 
	ld a,c			;0639	79 	y 
	or a			;063a	b7 	. 
l063bh:
	jr z,l064fh		;063b	28 12 	( . 
	cp 07eh		;063d	fe 7e 	. ~ 
	jr nz,l0644h		;063f	20 03 	  . 
	ex (sp),hl			;0641	e3 	. 
	ld c,l			;0642	4d 	M 
	ex (sp),hl			;0643	e3 	. 
l0644h:
	inc hl			;0644	23 	# 
	bit 7,c		;0645	cb 79 	. y 
	jr nz,l0699h		;0647	20 50 	  P 
	call sub_0702h		;0649	cd 02 07 	. . . 
	inc b			;064c	04 	. 
	jr l0635h		;064d	18 e6 	. . 
l064fh:
	ld c,020h		;064f	0e 20 	.   
	call sub_0702h		;0651	cd 02 07 	. . . 
	inc hl			;0654	23 	# 
	inc b			;0655	04 	. 
	push hl			;0656	e5 	. 
	ld hl,l0002h+1		;0657	21 03 00 	! . . 
	call 0f35ah		;065a	cd 5a f3 	. Z . 
	rlca			;065d	07 	. 
	rlca			;065e	07 	. 
	rlca			;065f	07 	. 
	and 006h		;0660	e6 06 	. . 
	ld hl,l003bh		;0662	21 3b 00 	! ; . 
	add a,l			;0665	85 	. 
	ld l,a			;0666	6f 	o 
	ld a,(hl)			;0667	7e 	~ 
	inc hl			;0668	23 	# 
	ld h,(hl)			;0669	66 	f 
	ld l,a			;066a	6f 	o 
	push de			;066b	d5 	. 
	ld e,00ch		;066c	1e 0c 	. . 
l066eh:
	call sub_068bh		;066e	cd 8b 06 	. . . 
	ld c,(hl)			;0671	4e 	N 
	inc hl			;0672	23 	# 
	bit 7,c		;0673	cb 79 	. y 
	jr nz,l0681h		;0675	20 0a 	  . 
	call sub_0702h		;0677	cd 02 07 	. . . 
	inc b			;067a	04 	. 
	dec e			;067b	1d 	. 
	jr nz,l066eh		;067c	20 f0 	  . 
	call sub_068bh		;067e	cd 8b 06 	. . . 
l0681h:
	ld c,020h		;0681	0e 20 	.   
	call sub_0702h		;0683	cd 02 07 	. . . 
	inc b			;0686	04 	. 
	pop de			;0687	d1 	. 
	pop hl			;0688	e1 	. 
	jr l0635h		;0689	18 aa 	. . 
sub_068bh:
	ld c,01bh		;068b	0e 1b 	. . 
	call sub_0702h		;068d	cd 02 07 	. . . 
	ld c,058h		;0690	0e 58 	. X 
	call sub_0702h		;0692	cd 02 07 	. . . 
	ld c,b			;0695	48 	H 
	jp sub_0702h		;0696	c3 02 07 	. . . 
l0699h:
	ld c,020h		;0699	0e 20 	.   
	call sub_0702h		;069b	cd 02 07 	. . . 
	xor a			;069e	af 	. 
	bit 7,(hl)		;069f	cb 7e 	. ~ 
	jr nz,l06dbh		;06a1	20 38 	  8 
l06a3h:
	ld b,0fah		;06a3	06 fa 	. . 
l06a5h:
	call sub_070ah		;06a5	cd 0a 07 	. . . 
	jr nz,l06bbh		;06a8	20 11 	  . 
	ld a,004h		;06aa	3e 04 	> . 
	call 00025h		;06ac	cd 25 00 	. % . 
	djnz l06a5h		;06af	10 f4 	. . 
	push hl			;06b1	e5 	. 
	ld hl,l06f3h		;06b2	21 f3 06 	! . . 
	call sub_06f8h		;06b5	cd f8 06 	. . . 
	pop hl			;06b8	e1 	. 
	jr l06a3h		;06b9	18 e8 	. . 
l06bbh:
	call sub_070fh		;06bb	cd 0f 07 	. . . 
	ld c,a			;06be	4f 	O 
	ld b,000h		;06bf	06 00 	. . 
	push hl			;06c1	e5 	. 
l06c2h:
	ld a,(hl)			;06c2	7e 	~ 
	cp c			;06c3	b9 	. 
	jr z,l06d3h		;06c4	28 0d 	( . 
	cp 07eh		;06c6	fe 7e 	. ~ 
	jr z,l06d3h		;06c8	28 09 	( . 
	inc b			;06ca	04 	. 
	inc hl			;06cb	23 	# 
	bit 7,(hl)		;06cc	cb 7e 	. ~ 
	jr z,l06c2h		;06ce	28 f2 	( . 
	pop hl			;06d0	e1 	. 
	jr l06a3h		;06d1	18 d0 	. . 
l06d3h:
	pop hl			;06d3	e1 	. 
	ld hl,l06eeh		;06d4	21 ee 06 	! . . 
	call sub_06f8h		;06d7	cd f8 06 	. . . 
	ld a,b			;06da	78 	x 
l06dbh:
	pop bc			;06db	c1 	. 
	pop hl			;06dc	e1 	. 
	cp 003h		;06dd	fe 03 	. . 
	ret c			;06df	d8 	. 
	push hl			;06e0	e5 	. 
	ld hl,l0002h+1		;06e1	21 03 00 	! . . 
	call 0f35ah		;06e4	cd 5a f3 	. Z . 
	add a,040h		;06e7	c6 40 	. @ 
	ld (hl),a			;06e9	77 	w 
	pop hl			;06ea	e1 	. 
	jp l0624h		;06eb	c3 24 06 	. $ . 
l06eeh:
	dec de			;06ee	1b 	. 
	ld e,b			;06ef	58 	X 
	jr nz,l070ch		;06f0	20 1a 	  . 
	add a,b			;06f2	80 	. 
l06f3h:
	dec de			;06f3	1b 	. 
	ld e,b			;06f4	58 	X 
	ld a,d			;06f5	7a 	z 
l06f6h:
	jr nz,$-126		;06f6	20 80 	  . 
sub_06f8h:
	ld c,(hl)			;06f8	4e 	N 
	bit 7,c		;06f9	cb 79 	. y 
	ret nz			;06fb	c0 	. 
	inc hl			;06fc	23 	# 
	call sub_0702h		;06fd	cd 02 07 	. . . 
	jr sub_06f8h		;0700	18 f6 	. . 
sub_0702h:
	call 0f381h		;0702	cd 81 f3 	. . . 
	jr z,sub_0702h		;0705	28 fb 	( . 
	jp 0f39ah		;0707	c3 9a f3 	. . . 
sub_070ah:
	in a,(082h)		;070a	db 82 	. . 
l070ch:
	and 001h		;070c	e6 01 	. . 
	ret			;070e	c9 	. 
sub_070fh:
	call sub_070ah		;070f	cd 0a 07 	. . . 
	jr z,sub_070fh		;0712	28 fb 	( . 
	in a,(080h)		;0714	db 80 	. . 
	cp 061h		;0716	fe 61 	. a 
	ret c			;0718	d8 	. 
	cp 07bh		;0719	fe 7b 	. { 
	ret nc			;071b	d0 	. 
	and 05fh		;071c	e6 5f 	. _ 
	ret			;071e	c9 	. 
l071fh:
	ld hl,0fb7ch		;071f	21 7c fb 	! | . 
	inc a			;0722	3c 	< 
	jp z,l07e7h		;0723	ca e7 07 	. . . 
	dec a			;0726	3d 	= 
	jp nz,l0767h		;0727	c2 67 07 	. g . 
	bit 7,(hl)		;072a	cb 7e 	. ~ 
	jr z,l0756h		;072c	28 28 	( ( 
	ld hl,0f26bh		;072e	21 6b f2 	! k . 
	bit 7,(hl)		;0731	cb 7e 	. ~ 
	jr z,l074ch		;0733	28 17 	( . 
l0735h:
	res 7,(hl)		;0735	cb be 	. . 
	ld hl,l0881h		;0737	21 81 08 	! . . 
	call sub_083fh		;073a	cd 3f 08 	. ? . 
	call sub_0848h		;073d	cd 48 08 	. H . 
	call sub_0830h		;0740	cd 30 08 	. 0 . 
	ld hl,l0868h		;0743	21 68 08 	! h . 
	call sub_083fh		;0746	cd 3f 08 	. ? . 
	call sub_0848h		;0749	cd 48 08 	. H . 
l074ch:
	ld hl,0fb7ch		;074c	21 7c fb 	! | . 
	bit 0,(hl)		;074f	cb 46 	. F 
	call z,l07e7h		;0751	cc e7 07 	. . . 
	jr l0763h		;0754	18 0d 	. . 
l0756h:
	res 0,(hl)		;0756	cb 86 	. . 
	ld hl,0f26bh		;0758	21 6b f2 	! k . 
	res 7,(hl)		;075b	cb be 	. . 
	ld hl,0f2e7h		;075d	21 e7 f2 	! . . 
	ld (0f273h),hl		;0760	22 73 f2 	" s . 
l0763h:
	out (00ch),a		;0763	d3 0c 	. . 
	or a			;0765	b7 	. 
	ret			;0766	c9 	. 
l0767h:
	bit 7,(hl)		;0767	cb 7e 	. ~ 
	jp nz,l07c5h		;0769	c2 c5 07 	. . . 
	res 0,(hl)		;076c	cb 86 	. . 
	call sub_089ah		;076e	cd 9a 08 	. . . 
	cp 0d1h		;0771	fe d1 	. . 
	jp nz,l0812h		;0773	c2 12 08 	. . . 
	ld a,00ch		;0776	3e 0c 	> . 
	sub c			;0778	91 	. 
	ld c,a			;0779	4f 	O 
	jp c,l0812h		;077a	da 12 08 	. . . 
sub_077dh:
	jp z,l0812h		;077d	ca 12 08 	. . . 
	add a,a			;0780	87 	. 
	add a,a			;0781	87 	. 
	add a,a			;0782	87 	. 
	add a,a			;0783	87 	. 
	sub c			;0784	91 	. 
	ld hl,0fa40h		;0785	21 40 fa 	! @ . 
l0788h:
	sub 008h		;0788	d6 08 	. . 
	jr c,l078fh		;078a	38 03 	8 . 
	inc hl			;078c	23 	# 
	jr l0788h		;078d	18 f9 	. . 
l078fh:
	add a,008h		;078f	c6 08 	. . 
	xor 007h		;0791	ee 07 	. . 
	inc a			;0793	3c 	< 
sub_0794h:
	ld b,a			;0794	47 	G 
	ld a,01eh		;0795	3e 1e 	> . 
	sub b			;0797	90 	. 
	ld c,a			;0798	4f 	O 
	xor a			;0799	af 	. 
l079ah:
	scf			;079a	37 	7 
	rla			;079b	17 	. 
	djnz l079ah		;079c	10 fc 	. . 
	and (hl)			;079e	a6 	. 
	jp nz,l0812h		;079f	c2 12 08 	. . . 
	inc hl			;07a2	23 	# 
l07a3h:
	ld a,c			;07a3	79 	y 
	or a			;07a4	b7 	. 
	jr z,l07b3h		;07a5	28 0c 	( . 
	ld a,(hl)			;07a7	7e 	~ 
	or a			;07a8	b7 	. 
	jp nz,l0812h		;07a9	c2 12 08 	. . . 
	inc hl			;07ac	23 	# 
	ld a,c			;07ad	79 	y 
	sub 008h		;07ae	d6 08 	. . 
	ld c,a			;07b0	4f 	O 
	jr nc,l07a3h		;07b1	30 f0 	0 . 
l07b3h:
	ld a,(0f290h)		;07b3	3a 90 f2 	: . . 
	sub 01eh		;07b6	d6 1e 	. . 
	ld (0f290h),a		;07b8	32 90 f2 	2 . . 
sub_07bbh:
	ld (0fb7bh),a		;07bb	32 7b fb 	2 { . 
	ld hl,0fb7ch		;07be	21 7c fb 	! | . 
	set 7,(hl)		;07c1	cb fe 	. . 
	res 0,(hl)		;07c3	cb 86 	. . 
l07c5h:
	ld hl,0f26bh		;07c5	21 6b f2 	! k . 
	bit 7,(hl)		;07c8	cb 7e 	. ~ 
	jr nz,l07dah		;07ca	20 0e 	  . 
	set 7,(hl)		;07cc	cb fe 	. . 
	ld hl,l0868h		;07ce	21 68 08 	! h . 
	call sub_083fh		;07d1	cd 3f 08 	. ? . 
	call sub_0848h		;07d4	cd 48 08 	. H . 
	call sub_0830h		;07d7	cd 30 08 	. 0 . 
l07dah:
	ld hl,l0881h		;07da	21 81 08 	! . . 
	call sub_083fh		;07dd	cd 3f 08 	. ? . 
	call sub_0848h		;07e0	cd 48 08 	. H . 
	out (00dh),a		;07e3	d3 0d 	. . 
	or a			;07e5	b7 	. 
	ret			;07e6	c9 	. 
l07e7h:
	bit 7,(hl)		;07e7	cb 7e 	. ~ 
	ret z			;07e9	c8 	. 
	res 7,(hl)		;07ea	cb be 	. . 
	call l0756h		;07ec	cd 56 07 	. V . 
	ld hl,l0868h		;07ef	21 68 08 	! h . 
	call sub_083fh		;07f2	cd 3f 08 	. ? . 
	call sub_0848h		;07f5	cd 48 08 	. H . 
	call sub_089ah		;07f8	cd 9a 08 	. . . 
	ld b,01eh		;07fb	06 1e 	. . 
sub_07fdh:
	cp 0b3h		;07fd	fe b3 	. . 
	jr z,l0807h		;07ff	28 06 	( . 
	ret c			;0801	d8 	. 
	ld b,a			;0802	47 	G 
	ld a,0d1h		;0803	3e d1 	> . 
	sub b			;0805	90 	. 
	ld b,a			;0806	47 	G 
l0807h:
	ld a,(0f290h)		;0807	3a 90 f2 	: . . 
	add a,b			;080a	80 	. 
	ld (0f290h),a		;080b	32 90 f2 	2 . . 
	ld (0fb7bh),a		;080e	32 7b fb 	2 { . 
	ret			;0811	c9 	. 
l0812h:
	ld hl,l081ah		;0812	21 1a 08 	! . . 
	call l0624h		;0815	cd 24 06 	. $ . 
	scf			;0818	37 	7 
	ret			;0819	c9 	. 
l081ah:
	jr nz,l085eh		;081a	20 42 	  B 
	ld h,c			;081c	61 	a 
	ld l,(hl)			;081d	6e 	n 
	ld l,e			;081e	6b 	k 
	jr nz,$+51		;081f	20 31 	  1 
	jr nz,l089dh		;0821	20 7a 	  z 
	ld h,c			;0823	61 	a 
	ld l,d			;0824	6a 	j 
	ld bc,l7974h		;0825	01 74 79 	. t y 
	jr nz,$+34		;0828	20 20 	    
	jr z,$+34		;082a	28 20 	(   
	add hl,hl			;082c	29 	) 
	add a,b			;082d	80 	. 
l082eh:
	ld a,(hl)			;082e	7e 	~ 
	add a,b			;082f	80 	. 
sub_0830h:
	ld hl,l0000h		;0830	21 00 00 	! . . 
	ld b,000h		;0833	06 00 	. . 
l0835h:
	call 0f35ah		;0835	cd 5a f3 	. Z . 
	call 0f98ch		;0838	cd 8c f9 	. . . 
	inc hl			;083b	23 	# 
	djnz l0835h		;083c	10 f7 	. . 
	ret			;083e	c9 	. 
sub_083fh:
	ld de,0f604h		;083f	11 04 f6 	. . . 
	ld bc,sub_0017h+2		;0842	01 19 00 	. . . 
	ldir		;0845	ed b0 	. . 
	ret			;0847	c9 	. 
sub_0848h:
	ld hl,l0854h		;0848	21 54 08 	! T . 
	ld de,0f98ch		;084b	11 8c f9 	. . . 
	ld bc,l0014h		;084e	01 14 00 	. . . 
	ldir		;0851	ed b0 	. . 
	ret			;0853	c9 	. 
l0854h:
	jp 0f604h		;0854	c3 04 f6 	. . . 
	nop			;0857	00 	. 
	nop			;0858	00 	. 
	jp 0f60ch		;0859	c3 0c f6 	. . . 
	nop			;085c	00 	. 
	nop			;085d	00 	. 
l085eh:
	nop			;085e	00 	. 
	jp 0f614h		;085f	c3 14 f6 	. . . 
	nop			;0862	00 	. 
	nop			;0863	00 	. 
	nop			;0864	00 	. 
	nop			;0865	00 	. 
	nop			;0866	00 	. 
	nop			;0867	00 	. 
l0868h:
	di			;0868	f3 	. 
	out (00dh),a		;0869	d3 0d 	. . 
	ld (hl),a			;086b	77 	w 
	out (00ch),a		;086c	d3 0c 	. . 
	ei			;086e	fb 	. 
	ret			;086f	c9 	. 
	di			;0870	f3 	. 
	out (00dh),a		;0871	d3 0d 	. . 
	ld a,(hl)			;0873	7e 	~ 
sub_0874h:
	out (00ch),a		;0874	d3 0c 	. . 
	ei			;0876	fb 	. 
	ret			;0877	c9 	. 
	out (00fh),a		;0878	d3 0f 	. . 
	call 0f61ch		;087a	cd 1c f6 	. . . 
	out (00eh),a		;087d	d3 0e 	. . 
	ret			;087f	c9 	. 
	jp (hl)			;0880	e9 	. 
l0881h:
	di			;0881	f3 	. 
	out (00ch),a		;0882	d3 0c 	. . 
	ld (hl),a			;0884	77 	w 
	out (00dh),a		;0885	d3 0d 	. . 
	ei			;0887	fb 	. 
	ret			;0888	c9 	. 
	di			;0889	f3 	. 
	out (00ch),a		;088a	d3 0c 	. . 
sub_088ch:
	ld a,(hl)			;088c	7e 	~ 
	out (00dh),a		;088d	d3 0d 	. . 
	ei			;088f	fb 	. 
	ret			;0890	c9 	. 
	out (00fh),a		;0891	d3 0f 	. . 
	call 0f61ch		;0893	cd 1c f6 	. . . 
sub_0896h:
	out (00eh),a		;0896	d3 0e 	. . 
	ret			;0898	c9 	. 
	jp (hl)			;0899	e9 	. 
sub_089ah:
	ld a,(0f290h)		;089a	3a 90 f2 	: . . 
l089dh:
	ld b,a			;089d	47 	G 
	ld a,(0f298h)		;089e	3a 98 f2 	: . . 
	ld c,a			;08a1	4f 	O 
	add a,a			;08a2	87 	. 
	add a,a			;08a3	87 	. 
	add a,a			;08a4	87 	. 
	add a,a			;08a5	87 	. 
	sub c			;08a6	91 	. 
	add a,b			;08a7	80 	. 
sub_08a8h:
	ret			;08a8	c9 	. 
l08a9h:
	jp 0f2e7h		;08a9	c3 e7 f2 	. . . 
	jp 0f2e7h		;08ac	c3 e7 f2 	. . . 
	jp 0f373h		;08af	c3 73 f3 	. s . 
	jp 0f36bh		;08b2	c3 6b f3 	. k . 
	jp 0f390h		;08b5	c3 90 f3 	. . . 
	jp 0f3cfh		;08b8	c3 cf f3 	. . . 
	jp 0f3ceh		;08bb	c3 ce f3 	. . . 
	jp 0f3c9h		;08be	c3 c9 f3 	. . . 
	jp 0f2ech		;08c1	c3 ec f2 	. . . 
	jp 0f2b8h		;08c4	c3 b8 f2 	. . . 
	jp 0f2f5h		;08c7	c3 f5 f2 	. . . 
	jp 0f2fah		;08ca	c3 fa f2 	. . . 
	jp 0f2ffh		;08cd	c3 ff f2 	. . . 
	jp 0f318h		;08d0	c3 18 f3 	. . . 
	jp 0f30fh		;08d3	c3 0f f3 	. . . 
	jp 0f3deh		;08d6	c3 de f3 	. . . 
	jp 0f305h		;08d9	c3 05 f3 	. . . 
	jp 0f381h		;08dc	c3 81 f3 	. . . 
	jp 0f3c5h		;08df	c3 c5 f3 	. . . 
	jp 0f3cah		;08e2	c3 ca f3 	. . . 
	nop			;08e5	00 	. 
	nop			;08e6	00 	. 
	ret			;08e7	c9 	. 
	nop			;08e8	00 	. 
	nop			;08e9	00 	. 
	ret			;08ea	c9 	. 
	nop			;08eb	00 	. 
	nop			;08ec	00 	. 
	ret			;08ed	c9 	. 
	nop			;08ee	00 	. 
	nop			;08ef	00 	. 
	ret			;08f0	c9 	. 
	nop			;08f1	00 	. 
	nop			;08f2	00 	. 
	ret			;08f3	c9 	. 
	nop			;08f4	00 	. 
	nop			;08f5	00 	. 
	ret			;08f6	c9 	. 
	nop			;08f7	00 	. 
	nop			;08f8	00 	. 
	ret			;08f9	c9 	. 
	nop			;08fa	00 	. 
	nop			;08fb	00 	. 
	ret			;08fc	c9 	. 
	jp 0f321h		;08fd	c3 21 f3 	. ! . 
	nop			;0900	00 	. 
	nop			;0901	00 	. 
	ret			;0902	c9 	. 
	nop			;0903	00 	. 
	nop			;0904	00 	. 
	ret			;0905	c9 	. 
	nop			;0906	00 	. 
	nop			;0907	00 	. 
	ret			;0908	c9 	. 
	nop			;0909	00 	. 
	nop			;090a	00 	. 
	ret			;090b	c9 	. 
	nop			;090c	00 	. 
	nop			;090d	00 	. 
	ret			;090e	c9 	. 
	nop			;090f	00 	. 
	nop			;0910	00 	. 
	ld bc,0f2b5h		;0911	01 b5 f2 	. . . 
	ld (bc),a			;0914	02 	. 
	nop			;0915	00 	. 
	nop			;0916	00 	. 
	ret			;0917	c9 	. 
	nop			;0918	00 	. 
	nop			;0919	00 	. 
l091ah:
	ret			;091a	c9 	. 
	jp 0f2e7h		;091b	c3 e7 f2 	. . . 
	jp 0f366h		;091e	c3 66 f3 	. f . 
	jp 0f36ah		;0921	c3 6a f3 	. j . 
	nop			;0924	00 	. 
	nop			;0925	00 	. 
	nop			;0926	00 	. 
	nop			;0927	00 	. 
	nop			;0928	00 	. 
	nop			;0929	00 	. 
	nop			;092a	00 	. 
	nop			;092b	00 	. 
	add a,b			;092c	80 	. 
	pop af			;092d	f1 	. 
	adc a,e			;092e	8b 	. 
	jp p,0fa20h		;092f	f2 20 fa 	.   . 
	ld b,b			;0932	40 	@ 
	jp m,000f0h		;0933	fa f0 00 	. . . 
	inc b			;0936	04 	. 
	rrca			;0937	0f 	. 
	ld bc,l00d1h		;0938	01 d1 00 	. . . 
	ld a,a			;093b	7f 	 
	nop			;093c	00 	. 
	ret nz			;093d	c0 	. 
	nop			;093e	00 	. 
	jr nz,l0941h		;093f	20 00 	  . 
l0941h:
	nop			;0941	00 	. 
	nop			;0942	00 	. 
	ld bc,l0001h		;0943	01 01 00 	. . . 
	nop			;0946	00 	. 
	nop			;0947	00 	. 
	jp l0000h		;0948	c3 00 00 	. . . 
	nop			;094b	00 	. 
	nop			;094c	00 	. 
	ld bc,l0000h		;094d	01 00 00 	. . . 
	add a,b			;0950	80 	. 
	ei			;0951	fb 	. 
	adc a,e			;0952	8b 	. 
	jp p,l0000h		;0953	f2 00 00 	. . . 
	nop			;0956	00 	. 
	nop			;0957	00 	. 
	nop			;0958	00 	. 
	nop			;0959	00 	. 
	adc a,e			;095a	8b 	. 
	jp p,l0000h		;095b	f2 00 00 	. . . 
	ld bc,l0100h		;095e	01 00 01 	. . . 
l0961h:
	call 0f2d6h		;0961	cd d6 f2 	. . . 
	call sub_03a2h		;0964	cd a2 03 	. . . 
	ex de,hl			;0967	eb 	. 
	ld hl,(0fb78h)		;0968	2a 78 fb 	* x . 
	ld (hl),e			;096b	73 	s 
	inc hl			;096c	23 	# 
	ld (hl),d			;096d	72 	r 
	push af			;096e	f5 	. 
	ld a,(0fb7ah)		;096f	3a 7a fb 	: z . 
	cp 025h		;0972	fe 25 	. % 
	jr z,l0978h		;0974	28 02 	( . 
	out (00fh),a		;0976	d3 0f 	. . 
l0978h:
	pop af			;0978	f1 	. 
	ld sp,(0fb78h)		;0979	ed 7b 78 fb 	. { x . 
	pop hl			;097d	e1 	. 
	ret			;097e	c9 	. 
	ex (sp),hl			;097f	e3 	. 
	ld a,(l0000h)		;0980	3a 00 00 	: . . 
	ld (0fb7ah),a		;0983	32 7a fb 	2 z . 
	ld (0fb78h),sp		;0986	ed 73 78 fb 	. s x . 
	ld sp,0fb78h		;098a	31 78 fb 	1 x . 
	out (00eh),a		;098d	d3 0e 	. . 
	jp (hl)			;098f	e9 	. 
	out (00eh),a		;0990	d3 0e 	. . 
	jp l0305h		;0992	c3 05 03 	. . . 
	ld a,(0f2b4h)		;0995	3a b4 f2 	: . . 
	or a			;0998	b7 	. 
	ret nz			;0999	c0 	. 
sub_099ah:
	ld (0f2b3h),a		;099a	32 b3 f2 	2 . . 
	ret			;099d	c9 	. 
	ld a,c			;099e	79 	y 
	ld (0f2ach),a		;099f	32 ac f2 	2 . . 
	ret			;09a2	c9 	. 
	ld a,c			;09a3	79 	y 
	ld (0f2aeh),a		;09a4	32 ae f2 	2 . . 
	ret			;09a7	c9 	. 
	ld l,c			;09a8	69 	i 
	ld h,b			;09a9	60 	` 
	ld (0f2afh),hl		;09aa	22 af f2 	" . . 
	ret			;09ad	c9 	. 
	ld l,c			;09ae	69 	i 
	ld h,b			;09af	60 	` 
	ld a,d			;09b0	7a 	z 
	or e			;09b1	b3 	. 
	ret z			;09b2	c8 	. 
	add hl,de			;09b3	19 	. 
	ld l,(hl)			;09b4	6e 	n 
	ld h,000h		;09b5	26 00 	& . 
	ret			;09b7	c9 	. 
	call 0f2d6h		;09b8	cd d6 f2 	. . . 
	call sub_03d7h		;09bb	cd d7 03 	. . . 
	jp 0f2c5h		;09be	c3 c5 f2 	. . . 
	call 0f2d6h		;09c1	cd d6 f2 	. . . 
	call sub_03dah		;09c4	cd da 03 	. . . 
	jp 0f2c5h		;09c7	c3 c5 f2 	. . . 
	inc a			;09ca	3c 	< 
	jr z,l09e4h		;09cb	28 17 	( . 
	dec a			;09cd	3d 	= 
	ld c,006h		;09ce	0e 06 	. . 
	rrca			;09d0	0f 	. 
	rl c		;09d1	cb 11 	. . 
	out (c),a		;09d3	ed 79 	. y 
l09d5h:
	ld c,004h		;09d5	0e 04 	. . 
	rrca			;09d7	0f 	. 
	rl c		;09d8	cb 11 	. . 
	out (c),a		;09da	ed 79 	. y 
	ld c,005h		;09dc	0e 05 	. . 
	rrca			;09de	0f 	. 
l09dfh:
	rl c		;09df	cb 11 	. . 
	out (c),a		;09e1	ed 79 	. y 
	ret			;09e3	c9 	. 
l09e4h:
	out (008h),a		;09e4	d3 08 	. . 
	out (00ah),a		;09e6	d3 0a 	. . 
	ld c,006h		;09e8	0e 06 	. . 
	ld a,(0f26bh)		;09ea	3a 6b f2 	: k . 
	rlca			;09ed	07 	. 
	jr l09dfh		;09ee	18 ef 	. . 
	out (00fh),a		;09f0	d3 0f 	. . 
	ldir		;09f2	ed b0 	. . 
	out (00eh),a		;09f4	d3 0e 	. . 
	ret			;09f6	c9 	. 
	xor a			;09f7	af 	. 
	ld b,080h		;09f8	06 80 	. . 
	out (00fh),a		;09fa	d3 0f 	. . 
l09fch:
	add a,(hl)			;09fc	86 	. 
	inc hl			;09fd	23 	# 
	djnz l09fch		;09fe	10 fc 	. . 
	out (00eh),a		;0a00	d3 0e 	. . 
	ret			;0a02	c9 	. 
	out (00fh),a		;0a03	d3 0f 	. . 
	ld a,(hl)			;0a05	7e 	~ 
	out (00eh),a		;0a06	d3 0e 	. . 
	ret			;0a08	c9 	. 
	out (00fh),a		;0a09	d3 0f 	. . 
	ld a,(de)			;0a0b	1a 	. 
	out (00eh),a		;0a0c	d3 0e 	. . 
	ret			;0a0e	c9 	. 
	ret			;0a0f	c9 	. 
	nop			;0a10	00 	. 
	nop			;0a11	00 	. 
	nop			;0a12	00 	. 
	ret			;0a13	c9 	. 
l0a14h:
	call 0f373h		;0a14	cd 73 f3 	. s . 
	jr z,l0a14h		;0a17	28 fb 	( . 
l0a19h:
	in a,(080h)		;0a19	db 80 	. . 
	ret			;0a1b	c9 	. 
	call 0f3b4h		;0a1c	cd b4 f3 	. . . 
	call 0f39eh		;0a1f	cd 9e f3 	. . . 
	in a,(082h)		;0a22	db 82 	. . 
	and 001h		;0a24	e6 01 	. . 
l0a26h:
	ret z			;0a26	c8 	. 
	ld a,0ffh		;0a27	3e ff 	> . 
	ret			;0a29	c9 	. 
	call 0f39eh		;0a2a	cd 9e f3 	. . . 
	ld a,001h		;0a2d	3e 01 	> . 
	di			;0a2f	f3 	. 
	out (082h),a		;0a30	d3 82 	. . 
	in a,(082h)		;0a32	db 82 	. . 
	ei			;0a34	fb 	. 
	and 001h		;0a35	e6 01 	. . 
	jr l0a26h		;0a37	18 ed 	. . 
l0a39h:
	call 0f381h		;0a39	cd 81 f3 	. . . 
	jr nz,l0a43h		;0a3c	20 05 	  . 
	call 0f3b4h		;0a3e	cd b4 f3 	. . . 
	jr l0a39h		;0a41	18 f6 	. . 
l0a43h:
	ld a,c			;0a43	79 	y 
	out (080h),a		;0a44	d3 80 	. . 
l0a46h:
	ret			;0a46	c9 	. 
	ld a,010h		;0a47	3e 10 	> . 
	out (082h),a		;0a49	d3 82 	. . 
	in a,(082h)		;0a4b	db 82 	. . 
	bit 7,a		;0a4d	cb 7f 	.  
	ret z			;0a4f	c8 	. 
l0a50h:
	ld a,010h		;0a50	3e 10 	> . 
	out (082h),a		;0a52	d3 82 	. . 
	in a,(082h)		;0a54	db 82 	. . 
	bit 7,a		;0a56	cb 7f 	.  
	jr nz,l0a50h		;0a58	20 f6 	  . 
sub_0a5ah:
	in a,(080h)		;0a5a	db 80 	. . 
	ret			;0a5c	c9 	. 
	ld a,(0f26bh)		;0a5d	3a 6b f2 	: k . 
	bit 2,a		;0a60	cb 57 	. W 
	ret z			;0a62	c8 	. 
	call 0f2d6h		;0a63	cd d6 f2 	. . . 
	push bc			;0a66	c5 	. 
	call sub_058dh		;0a67	cd 8d 05 	. . . 
	pop bc			;0a6a	c1 	. 
	jp 0f2c5h		;0a6b	c3 c5 f2 	. . . 
sub_0a6eh:
	ld a,0ffh		;0a6e	3e ff 	> . 
	or a			;0a70	b7 	. 
	ret			;0a71	c9 	. 
	ret			;0a72	c9 	. 
	ld a,0ffh		;0a73	3e ff 	> . 
	or a			;0a75	b7 	. 
	ret			;0a76	c9 	. 
sub_0a77h:
	ret			;0a77	c9 	. 
	ld a,(0f26bh)		;0a78	3a 6b f2 	: k . 
	bit 3,a		;0a7b	cb 5f 	. _ 
	ret nz			;0a7d	c0 	. 
	call 0f2d6h		;0a7e	cd d6 f2 	. . . 
	call l04c2h		;0a81	cd c2 04 	. . . 
	jp 0f2c5h		;0a84	c3 c5 f2 	. . . 
	ld a,(0f26bh)		;0a87	3a 6b f2 	: k . 
	bit 3,a		;0a8a	cb 5f 	. _ 
	ld a,0ffh		;0a8c	3e ff 	> . 
	ret nz			;0a8e	c0 	. 
	call 0f2d6h		;0a8f	cd d6 f2 	. . . 
	call sub_0577h		;0a92	cd 77 05 	. w . 
	jp 0f2c5h		;0a95	c3 c5 f2 	. . . 
	nop			;0a98	00 	. 
	ret m			;0a99	f8 	. 
	di			;0a9a	f3 	. 
	ld e,0f4h		;0a9b	1e f4 	. . 
	daa			;0a9d	27 	' 
	call p,0f484h		;0a9e	f4 84 f4 	. . . 
	push af			;0aa1	f5 	. 
	bit 2,(hl)		;0aa2	cb 56 	. V 
	jr nz,l0abbh		;0aa4	20 15 	  . 
	ld a,d			;0aa6	7a 	z 
	or e			;0aa7	b3 	. 
	jr z,l0ab3h		;0aa8	28 09 	( . 
	dec de			;0aaa	1b 	. 
	ld a,(bc)			;0aab	0a 	. 
	out (081h),a		;0aac	d3 81 	. . 
	inc bc			;0aae	03 	. 
	pop af			;0aaf	f1 	. 
	ei			;0ab0	fb 	. 
	reti		;0ab1	ed 4d 	. M 
l0ab3h:
	set 2,(hl)		;0ab3	cb d6 	. . 
	ld a,0c0h		;0ab5	3e c0 	> . 
	out (083h),a		;0ab7	d3 83 	. . 
	jr l0abfh		;0ab9	18 04 	. . 
l0abbh:
	res 2,(hl)		;0abb	cb 96 	. . 
	res 0,(hl)		;0abd	cb 86 	. . 
l0abfh:
	ld a,028h		;0abf	3e 28 	> ( 
	out (083h),a		;0ac1	d3 83 	. . 
	pop af			;0ac3	f1 	. 
	ei			;0ac4	fb 	. 
	reti		;0ac5	ed 4d 	. M 
	push af			;0ac7	f5 	. 
	ld a,010h		;0ac8	3e 10 	> . 
	out (083h),a		;0aca	d3 83 	. . 
	pop af			;0acc	f1 	. 
	ei			;0acd	fb 	. 
	reti		;0ace	ed 4d 	. M 
	ld (0ffd1h),sp		;0ad0	ed 73 d1 ff 	. s . . 
	ld sp,0ffd1h		;0ad4	31 d1 ff 	1 . . 
	push af			;0ad7	f5 	. 
	push bc			;0ad8	c5 	. 
	push de			;0ad9	d5 	. 
	push hl			;0ada	e5 	. 
	push ix		;0adb	dd e5 	. . 
	ld a,(0ffaeh)		;0add	3a ae ff 	: . . 
	and 002h		;0ae0	e6 02 	. . 
	jr nz,l0b0ch		;0ae2	20 28 	  ( 
	ld a,005h		;0ae4	3e 05 	> . 
	out (082h),a		;0ae6	d3 82 	. . 
	ld a,0eah		;0ae8	3e ea 	> . 
	out (082h),a		;0aea	d3 82 	. . 
	ld c,000h		;0aec	0e 00 	. . 
	in a,(082h)		;0aee	db 82 	. . 
	rra			;0af0	1f 	. 
	jr nc,l0b00h		;0af1	30 0d 	0 . 
	in a,(080h)		;0af3	db 80 	. . 
	ld l,a			;0af5	6f 	o 
	inc c			;0af6	0c 	. 
	in a,(082h)		;0af7	db 82 	. . 
	rra			;0af9	1f 	. 
	jr nc,l0b00h		;0afa	30 04 	0 . 
	in a,(080h)		;0afc	db 80 	. . 
	ld h,a			;0afe	67 	g 
	inc c			;0aff	0c 	. 
l0b00h:
	ld (0f602h),hl		;0b00	22 02 f6 	" . . 
	ld (0f600h),bc		;0b03	ed 43 00 f6 	. C . . 
	ld hl,0ffaeh		;0b07	21 ae ff 	! . . 
	set 0,(hl)		;0b0a	cb c6 	. . 
l0b0ch:
	ld a,(l0000h)		;0b0c	3a 00 00 	: . . 
	ld (0ffd3h),a		;0b0f	32 d3 ff 	2 . . 
	out (00eh),a		;0b12	d3 0e 	. . 
	ld hl,l4456h		;0b14	21 56 44 	! V D 
	push hl			;0b17	e5 	. 
	in a,(081h)		;0b18	db 81 	. . 
	ld hl,0f47dh		;0b1a	21 7d f4 	! } . 
	ld (0f3f4h),hl		;0b1d	22 f4 f3 	" . . 
	ld de,0fb7fh		;0b20	11 7f fb 	.  . 
	ei			;0b23	fb 	. 
	reti		;0b24	ed 4d 	. M 
	in a,(081h)		;0b26	db 81 	. . 
	ld (de),a			;0b28	12 	. 
	inc de			;0b29	13 	. 
	ei			;0b2a	fb 	. 
sub_0b2bh:
	reti		;0b2b	ed 4d 	. M 
	ld a,001h		;0b2d	3e 01 	> . 
	out (083h),a		;0b2f	d3 83 	. . 
	in a,(083h)		;0b31	db 83 	. . 
	ld hl,0ffaah		;0b33	21 aa ff 	! . . 
sub_0b36h:
	bit 6,a		;0b36	cb 77 	. w 
	jr z,l0b3ch		;0b38	28 02 	( . 
	set 6,(hl)		;0b3a	cb f6 	. . 
l0b3ch:
	bit 5,a		;0b3c	cb 6f 	. o 
	jr z,l0b42h		;0b3e	28 02 	( . 
	set 5,(hl)		;0b40	cb ee 	. . 
l0b42h:
	bit 7,a		;0b42	cb 7f 	.  
	jr z,l0b61h		;0b44	28 1b 	( . 
	in a,(081h)		;0b46	db 81 	. . 
	ld hl,l4459h		;0b48	21 59 44 	! Y D 
	ex (sp),hl			;0b4b	e3 	. 
	ld a,(0ffb0h)		;0b4c	3a b0 ff 	: . . 
	ld hl,0f427h		;0b4f	21 27 f4 	! ' . 
	bit 2,a		;0b52	cb 57 	. W 
	jr z,l0b59h		;0b54	28 03 	( . 
	ld hl,0f46fh		;0b56	21 6f f4 	! o . 
l0b59h:
	ld (0f3f4h),hl		;0b59	22 f4 f3 	" . . 
	dec de			;0b5c	1b 	. 
	ld (0ffabh),de		;0b5d	ed 53 ab ff 	. S . . 
l0b61h:
	ld a,030h		;0b61	3e 30 	> 0 
	out (083h),a		;0b63	d3 83 	. . 
	ei			;0b65	fb 	. 
	reti		;0b66	ed 4d 	. M 
	ld a,(0ffaeh)		;0b68	3a ae ff 	: . . 
	and 002h		;0b6b	e6 02 	. . 
	jr nz,l0b7eh		;0b6d	20 0f 	  . 
	ld a,0c8h		;0b6f	3e c8 	> . 
	call 00025h		;0b71	cd 25 00 	. % . 
	ld c,01bh		;0b74	0e 1b 	. . 
	call sub_436ah		;0b76	cd 6a 43 	. j C 
	ld c,025h		;0b79	0e 25 	. % 
	call sub_436ah		;0b7b	cd 6a 43 	. j C 
l0b7eh:
	in a,(081h)		;0b7e	db 81 	. . 
	in a,(081h)		;0b80	db 81 	. . 
sub_0b82h:
	in a,(081h)		;0b82	db 81 	. . 
	in a,(081h)		;0b84	db 81 	. . 
	ld a,030h		;0b86	3e 30 	> 0 
	out (083h),a		;0b88	d3 83 	. . 
	ld a,(0ffd3h)		;0b8a	3a d3 ff 	: . . 
	cp 025h		;0b8d	fe 25 	. % 
sub_0b8fh:
	jr z,l0b93h		;0b8f	28 02 	( . 
	out (00fh),a		;0b91	d3 0f 	. . 
l0b93h:
	pop ix		;0b93	dd e1 	. . 
	pop hl			;0b95	e1 	. 
	pop de			;0b96	d1 	. 
	pop bc			;0b97	c1 	. 
	pop af			;0b98	f1 	. 
	ld sp,(0ffd1h)		;0b99	ed 7b d1 ff 	. { . . 
	out (004h),a		;0b9d	d3 04 	. . 
sub_0b9fh:
	ei			;0b9f	fb 	. 
	ret			;0ba0	c9 	. 
	nop			;0ba1	00 	. 
	nop			;0ba2	00 	. 
	nop			;0ba3	00 	. 
	nop			;0ba4	00 	. 
	nop			;0ba5	00 	. 
	nop			;0ba6	00 	. 
	nop			;0ba7	00 	. 
	nop			;0ba8	00 	. 
	ret			;0ba9	c9 	. 
	nop			;0baa	00 	. 
	nop			;0bab	00 	. 
	xor a			;0bac	af 	. 
	ret			;0bad	c9 	. 
	nop			;0bae	00 	. 
	ld d,l			;0baf	55 	U 
	ld d,e			;0bb0	53 	S 
	ld b,l			;0bb1	45 	E 
	ld d,d			;0bb2	52 	R 
	add a,b			;0bb3	80 	. 
	nop			;0bb4	00 	. 
l0bb5h:
	nop			;0bb5	00 	. 
	nop			;0bb6	00 	. 
	nop			;0bb7	00 	. 
l0bb8h:
	nop			;0bb8	00 	. 
	nop			;0bb9	00 	. 
	nop			;0bba	00 	. 
	nop			;0bbb	00 	. 
	nop			;0bbc	00 	. 
	nop			;0bbd	00 	. 
	nop			;0bbe	00 	. 
	nop			;0bbf	00 	. 
	nop			;0bc0	00 	. 
	nop			;0bc1	00 	. 
	nop			;0bc2	00 	. 
	nop			;0bc3	00 	. 
	nop			;0bc4	00 	. 
	nop			;0bc5	00 	. 
	nop			;0bc6	00 	. 
	nop			;0bc7	00 	. 
	nop			;0bc8	00 	. 
	nop			;0bc9	00 	. 
	nop			;0bca	00 	. 
	nop			;0bcb	00 	. 
	nop			;0bcc	00 	. 
	nop			;0bcd	00 	. 
	nop			;0bce	00 	. 
	nop			;0bcf	00 	. 
	nop			;0bd0	00 	. 
	nop			;0bd1	00 	. 
	nop			;0bd2	00 	. 
	nop			;0bd3	00 	. 
	nop			;0bd4	00 	. 
	nop			;0bd5	00 	. 
	nop			;0bd6	00 	. 
	nop			;0bd7	00 	. 
	nop			;0bd8	00 	. 
	nop			;0bd9	00 	. 
	nop			;0bda	00 	. 
	nop			;0bdb	00 	. 
	nop			;0bdc	00 	. 
	nop			;0bdd	00 	. 
	nop			;0bde	00 	. 
	nop			;0bdf	00 	. 
	nop			;0be0	00 	. 
	nop			;0be1	00 	. 
	nop			;0be2	00 	. 
	nop			;0be3	00 	. 
	nop			;0be4	00 	. 
	nop			;0be5	00 	. 
	nop			;0be6	00 	. 
	nop			;0be7	00 	. 
	nop			;0be8	00 	. 
	nop			;0be9	00 	. 
	nop			;0bea	00 	. 
	nop			;0beb	00 	. 
	nop			;0bec	00 	. 
	nop			;0bed	00 	. 
	nop			;0bee	00 	. 
	nop			;0bef	00 	. 
	nop			;0bf0	00 	. 
	nop			;0bf1	00 	. 
	nop			;0bf2	00 	. 
	nop			;0bf3	00 	. 
	nop			;0bf4	00 	. 
	nop			;0bf5	00 	. 
	nop			;0bf6	00 	. 
	nop			;0bf7	00 	. 
	nop			;0bf8	00 	. 
	nop			;0bf9	00 	. 
	nop			;0bfa	00 	. 
	nop			;0bfb	00 	. 
	nop			;0bfc	00 	. 
	nop			;0bfd	00 	. 
	nop			;0bfe	00 	. 
	nop			;0bff	00 	. 
	nop			;0c00	00 	. 
	nop			;0c01	00 	. 
	nop			;0c02	00 	. 
	nop			;0c03	00 	. 
	nop			;0c04	00 	. 
	nop			;0c05	00 	. 
	nop			;0c06	00 	. 
	nop			;0c07	00 	. 
	nop			;0c08	00 	. 
	nop			;0c09	00 	. 
	nop			;0c0a	00 	. 
	nop			;0c0b	00 	. 
	nop			;0c0c	00 	. 
	nop			;0c0d	00 	. 
	nop			;0c0e	00 	. 
	nop			;0c0f	00 	. 
	nop			;0c10	00 	. 
	nop			;0c11	00 	. 
	nop			;0c12	00 	. 
	nop			;0c13	00 	. 
	nop			;0c14	00 	. 
	nop			;0c15	00 	. 
	nop			;0c16	00 	. 
	nop			;0c17	00 	. 
	nop			;0c18	00 	. 
	nop			;0c19	00 	. 
	nop			;0c1a	00 	. 
	nop			;0c1b	00 	. 
	nop			;0c1c	00 	. 
	nop			;0c1d	00 	. 
	nop			;0c1e	00 	. 
	nop			;0c1f	00 	. 
	nop			;0c20	00 	. 
	nop			;0c21	00 	. 
	nop			;0c22	00 	. 
	nop			;0c23	00 	. 
	nop			;0c24	00 	. 
	nop			;0c25	00 	. 
	nop			;0c26	00 	. 
	nop			;0c27	00 	. 
	nop			;0c28	00 	. 
	nop			;0c29	00 	. 
	nop			;0c2a	00 	. 
	nop			;0c2b	00 	. 
	nop			;0c2c	00 	. 
	nop			;0c2d	00 	. 
sub_0c2eh:
	nop			;0c2e	00 	. 
	nop			;0c2f	00 	. 
	nop			;0c30	00 	. 
	nop			;0c31	00 	. 
	nop			;0c32	00 	. 
	nop			;0c33	00 	. 
	nop			;0c34	00 	. 
	nop			;0c35	00 	. 
	nop			;0c36	00 	. 
	nop			;0c37	00 	. 
	nop			;0c38	00 	. 
	nop			;0c39	00 	. 
	nop			;0c3a	00 	. 
	nop			;0c3b	00 	. 
	nop			;0c3c	00 	. 
	nop			;0c3d	00 	. 
	nop			;0c3e	00 	. 
	nop			;0c3f	00 	. 
	nop			;0c40	00 	. 
	nop			;0c41	00 	. 
	nop			;0c42	00 	. 
sub_0c43h:
	nop			;0c43	00 	. 
	nop			;0c44	00 	. 
	nop			;0c45	00 	. 
	nop			;0c46	00 	. 
	nop			;0c47	00 	. 
	nop			;0c48	00 	. 
	nop			;0c49	00 	. 
	nop			;0c4a	00 	. 
	nop			;0c4b	00 	. 
sub_0c4ch:
	nop			;0c4c	00 	. 
	nop			;0c4d	00 	. 
	nop			;0c4e	00 	. 
	nop			;0c4f	00 	. 
	nop			;0c50	00 	. 
	nop			;0c51	00 	. 
	nop			;0c52	00 	. 
	nop			;0c53	00 	. 
	nop			;0c54	00 	. 
l0c55h:
	nop			;0c55	00 	. 
sub_0c56h:
	nop			;0c56	00 	. 
	nop			;0c57	00 	. 
	nop			;0c58	00 	. 
sub_0c59h:
	nop			;0c59	00 	. 
	nop			;0c5a	00 	. 
	nop			;0c5b	00 	. 
	nop			;0c5c	00 	. 
	nop			;0c5d	00 	. 
	nop			;0c5e	00 	. 
	nop			;0c5f	00 	. 
	nop			;0c60	00 	. 
	nop			;0c61	00 	. 
	nop			;0c62	00 	. 
	nop			;0c63	00 	. 
	nop			;0c64	00 	. 
	nop			;0c65	00 	. 
	nop			;0c66	00 	. 
	nop			;0c67	00 	. 
	nop			;0c68	00 	. 
	nop			;0c69	00 	. 
	nop			;0c6a	00 	. 
	nop			;0c6b	00 	. 
	nop			;0c6c	00 	. 
	nop			;0c6d	00 	. 
	nop			;0c6e	00 	. 
	nop			;0c6f	00 	. 
	nop			;0c70	00 	. 
	nop			;0c71	00 	. 
	nop			;0c72	00 	. 
	nop			;0c73	00 	. 
	nop			;0c74	00 	. 
	nop			;0c75	00 	. 
	nop			;0c76	00 	. 
	nop			;0c77	00 	. 
	nop			;0c78	00 	. 
	nop			;0c79	00 	. 
	nop			;0c7a	00 	. 
	nop			;0c7b	00 	. 
	nop			;0c7c	00 	. 
	nop			;0c7d	00 	. 
	nop			;0c7e	00 	. 
	nop			;0c7f	00 	. 
	nop			;0c80	00 	. 
	nop			;0c81	00 	. 
	nop			;0c82	00 	. 
	nop			;0c83	00 	. 
	nop			;0c84	00 	. 
	nop			;0c85	00 	. 
	nop			;0c86	00 	. 
l0c87h:
	nop			;0c87	00 	. 
	nop			;0c88	00 	. 
	nop			;0c89	00 	. 
	nop			;0c8a	00 	. 
	nop			;0c8b	00 	. 
	nop			;0c8c	00 	. 
	nop			;0c8d	00 	. 
	nop			;0c8e	00 	. 
	nop			;0c8f	00 	. 
	nop			;0c90	00 	. 
	nop			;0c91	00 	. 
	nop			;0c92	00 	. 
	nop			;0c93	00 	. 
	nop			;0c94	00 	. 
	nop			;0c95	00 	. 
	nop			;0c96	00 	. 
	nop			;0c97	00 	. 
	nop			;0c98	00 	. 
	nop			;0c99	00 	. 
	nop			;0c9a	00 	. 
	nop			;0c9b	00 	. 
	nop			;0c9c	00 	. 
	nop			;0c9d	00 	. 
	nop			;0c9e	00 	. 
	nop			;0c9f	00 	. 
	nop			;0ca0	00 	. 
	nop			;0ca1	00 	. 
	nop			;0ca2	00 	. 
	nop			;0ca3	00 	. 
	nop			;0ca4	00 	. 
	nop			;0ca5	00 	. 
	nop			;0ca6	00 	. 
	nop			;0ca7	00 	. 
	nop			;0ca8	00 	. 
l0ca9h:
	out (00fh),a		;0ca9	d3 0f 	. . 
	call l0100h		;0cab	cd 00 01 	. . . 
	out (00eh),a		;0cae	d3 0e 	. . 
	jp l1ba5h		;0cb0	c3 a5 1b 	. . . 
	nop			;0cb3	00 	. 
	nop			;0cb4	00 	. 
	nop			;0cb5	00 	. 
	nop			;0cb6	00 	. 
	nop			;0cb7	00 	. 
	nop			;0cb8	00 	. 
l0cb9h:
	nop			;0cb9	00 	. 
	ld d,000h		;0cba	16 00 	. . 
	nop			;0cbc	00 	. 
	nop			;0cbd	00 	. 
	add hl,bc			;0cbe	09 	. 
	out (00eh),a		;0cbf	d3 0e 	. . 
	jp l0cffh		;0cc1	c3 ff 0c 	. . . 
	out (00fh),a		;0cc4	d3 0f 	. . 
	ret			;0cc6	c9 	. 
	push hl			;0cc7	e5 	. 
	nop			;0cc8	00 	. 
l0cc9h:
	ld a,c			;0cc9	79 	y 
	cp 00dh		;0cca	fe 0d 	. . 
	jr c,l0cf0h		;0ccc	38 22 	8 " 
	ld (0f054h),sp		;0cce	ed 73 54 f0 	. s T . 
	ld sp,0f180h		;0cd2	31 80 f1 	1 . . 
	push hl			;0cd5	e5 	. 
	ld hl,0ffb0h		;0cd6	21 b0 ff 	! . . 
	set 0,(hl)		;0cd9	cb c6 	. . 
	pop hl			;0cdb	e1 	. 
	call sub_0d5ah		;0cdc	cd 5a 0d 	. Z . 
	ld sp,(0f054h)		;0cdf	ed 7b 54 f0 	. { T . 
	push hl			;0ce3	e5 	. 
	ld hl,0ffb0h		;0ce4	21 b0 ff 	! . . 
	res 0,(hl)		;0ce7	cb 86 	. . 
	bit 1,(hl)		;0ce9	cb 4e 	. N 
	pop hl			;0ceb	e1 	. 
	call nz,sub_46a2h		;0cec	c4 a2 46 	. . F 
	ret			;0cef	c9 	. 
l0cf0h:
	ld (0f05eh),sp		;0cf0	ed 73 5e f0 	. s ^ . 
	ld sp,0f160h		;0cf4	31 60 f1 	1 ` . 
	call sub_0d39h		;0cf7	cd 39 0d 	. 9 . 
	ld sp,(0f05eh)		;0cfa	ed 7b 5e f0 	. { ^ . 
	ret			;0cfe	c9 	. 
l0cffh:
	ld a,c			;0cff	79 	y 
	cp 00dh		;0d00	fe 0d 	. . 
	jr c,l0d28h		;0d02	38 24 	8 $ 
	ld (0f054h),sp		;0d04	ed 73 54 f0 	. s T . 
	ld sp,0f180h		;0d08	31 80 f1 	1 . . 
sub_0d0bh:
	push hl			;0d0b	e5 	. 
	ld hl,0ffb0h		;0d0c	21 b0 ff 	! . . 
	set 0,(hl)		;0d0f	cb c6 	. . 
	pop hl			;0d11	e1 	. 
	call sub_0d5ah		;0d12	cd 5a 0d 	. Z . 
	ld sp,(0f054h)		;0d15	ed 7b 54 f0 	. { T . 
sub_0d19h:
	push hl			;0d19	e5 	. 
	ld hl,0ffb0h		;0d1a	21 b0 ff 	! . . 
	res 0,(hl)		;0d1d	cb 86 	. . 
	bit 1,(hl)		;0d1f	cb 4e 	. N 
	pop hl			;0d21	e1 	. 
	call nz,sub_46a2h		;0d22	c4 a2 46 	. . F 
sub_0d25h:
	jp 0f00bh		;0d25	c3 0b f0 	. . . 
l0d28h:
	ld (0f05eh),sp		;0d28	ed 73 5e f0 	. s ^ . 
	ld sp,0f160h		;0d2c	31 60 f1 	1 ` . 
	call sub_0d39h		;0d2f	cd 39 0d 	. 9 . 
	ld sp,(0f05eh)		;0d32	ed 7b 5e f0 	. { ^ . 
	jp 0f00bh		;0d36	c3 0b f0 	. . . 
sub_0d39h:
	ld (0f05ah),de		;0d39	ed 53 5a f0 	. S Z . 
	ld hl,l0000h		;0d3d	21 00 00 	! . . 
	ld (0f05ch),hl		;0d40	22 5c f0 	" \ . 
	ld hl,l0d54h		;0d43	21 54 0d 	! T . 
	push hl			;0d46	e5 	. 
	ld hl,l0da0h		;0d47	21 a0 0d 	! . . 
	ld b,000h		;0d4a	06 00 	. . 
	add hl,bc			;0d4c	09 	. 
	add hl,bc			;0d4d	09 	. 
	ld a,(hl)			;0d4e	7e 	~ 
	inc hl			;0d4f	23 	# 
	ld h,(hl)			;0d50	66 	f 
sub_0d51h:
	ld l,a			;0d51	6f 	o 
	ld c,e			;0d52	4b 	K 
	jp (hl)			;0d53	e9 	. 
l0d54h:
	ld hl,(0f05ch)		;0d54	2a 5c f0 	* \ . 
	ld b,h			;0d57	44 	D 
	ld a,l			;0d58	7d 	} 
	ret			;0d59	c9 	. 
sub_0d5ah:
	ld (0f050h),de		;0d5a	ed 53 50 f0 	. S P . 
	ld a,e			;0d5e	7b 	{ 
	ld (0f039h),a		;0d5f	32 39 f0 	2 9 . 
	ld hl,l0000h		;0d62	21 00 00 	! . . 
	ld (0f052h),hl		;0d65	22 52 f0 	" R . 
	ld (0f03eh),hl		;0d68	22 3e f0 	" > . 
	ld b,h			;0d6b	44 	D 
	ld hl,l0d7fh		;0d6c	21 7f 0d 	!  . 
	push hl			;0d6f	e5 	. 
	ld a,c			;0d70	79 	y 
	cp 029h		;0d71	fe 29 	. ) 
	ret nc			;0d73	d0 	. 
	ld hl,l0da0h		;0d74	21 a0 0d 	! . . 
	add hl,bc			;0d77	09 	. 
	add hl,bc			;0d78	09 	. 
	ld a,(hl)			;0d79	7e 	~ 
	inc hl			;0d7a	23 	# 
	ld h,(hl)			;0d7b	66 	f 
	ld l,a			;0d7c	6f 	o 
	ld c,e			;0d7d	4b 	K 
	jp (hl)			;0d7e	e9 	. 
l0d7fh:
	ld a,(0f03eh)		;0d7f	3a 3e f0 	: > . 
	or a			;0d82	b7 	. 
	jr z,l0d9ah		;0d83	28 15 	( . 
	ld hl,(0f050h)		;0d85	2a 50 f0 	* P . 
	ld (hl),000h		;0d88	36 00 	6 . 
	ld a,(0f03fh)		;0d8a	3a 3f f0 	: ? . 
	or a			;0d8d	b7 	. 
	jr z,l0d9ah		;0d8e	28 0a 	( . 
	ld (hl),a			;0d90	77 	w 
	ld a,(0f040h)		;0d91	3a 40 f0 	: @ . 
	ld (0f039h),a		;0d94	32 39 f0 	2 9 . 
	call sub_1014h		;0d97	cd 14 10 	. . . 
l0d9ah:
	ld hl,(0f052h)		;0d9a	2a 52 f0 	* R . 
	ld a,l			;0d9d	7d 	} 
sub_0d9eh:
	ld b,h			;0d9e	44 	D 
	ret			;0d9f	c9 	. 
l0da0h:
	inc bc			;0da0	03 	. 
	jp p,l0df2h		;0da1	f2 f2 0d 	. . . 
	ld c,00eh		;0da4	0e 0e 	. . 
	sub b			;0da6	90 	. 
	ld c,012h		;0da7	0e 12 	. . 
	jp p,0f20fh		;0da9	f2 0f f2 	. . . 
	sub (hl)			;0dac	96 	. 
	ld c,0c4h		;0dad	0e c4 	. . 
	ld c,0cdh		;0daf	0e cd 	. . 
	ld c,0d2h		;0db1	0e d2 	. . 
	ld c,0e2h		;0db3	0e e2 	. . 
l0db5h:
	ld c,0f1h		;0db5	0e f1 	. . 
	rrca			;0db7	0f 	. 
	ret m			;0db8	f8 	. 
l0db9h:
	rrca			;0db9	0f 	. 
	call m,0140fh		;0dba	fc 0f 14 	. . . 
l0dbdh:
	djnz $-9		;0dbd	10 f5 	. . 
	djnz $+59		;0dbf	10 39 	. 9 
	ld de,l11ddh		;0dc1	11 dd 11 	. . . 
	call m,01511h		;0dc4	fc 11 15 	. . . 
	ld (de),a			;0dc7	12 	. 
	ld b,c			;0dc8	41 	A 
	ld (de),a			;0dc9	12 	. 
	add a,(hl)			;0dca	86 	. 
	ld (de),a			;0dcb	12 	. 
	rl e		;0dcc	cb 13 	. . 
	dec c			;0dce	0d 	. 
l0dcfh:
	inc d			;0dcf	14 	. 
	jr c,l0de6h		;0dd0	38 14 	8 . 
	dec a			;0dd2	3d 	= 
	inc d			;0dd3	14 	. 
	ld b,e			;0dd4	43 	C 
	inc d			;0dd5	14 	. 
	ld d,h			;0dd6	54 	T 
	inc d			;0dd7	14 	. 
	ld e,c			;0dd8	59 	Y 
	inc d			;0dd9	14 	. 
	ld l,a			;0dda	6f 	o 
	inc d			;0ddb	14 	. 
	ld (hl),h			;0ddc	74 	t 
	inc d			;0ddd	14 	. 
	adc a,(hl)			;0dde	8e 	. 
	inc d			;0ddf	14 	. 
	sub l			;0de0	95 	. 
	inc d			;0de1	14 	. 
	xor b			;0de2	a8 	. 
	inc d			;0de3	14 	. 
	or l			;0de4	b5 	. 
	inc d			;0de5	14 	. 
l0de6h:
	jp nz,l0a14h		;0de6	c2 14 0a 	. . . 
	dec d			;0de9	15 	. 
	dec e			;0dea	1d 	. 
	dec d			;0deb	15 	. 
	dec a			;0dec	3d 	= 
	dec d			;0ded	15 	. 
	dec a			;0dee	3d 	= 
	dec d			;0def	15 	. 
	ld a,015h		;0df0	3e 15 	> . 
l0df2h:
	call sub_0eb9h		;0df2	cd b9 0e 	. . . 
	call sub_0e21h		;0df5	cd 21 0e 	. ! . 
	ld (0f05ch),a		;0df8	32 5c f0 	2 \ . 
	ld c,a			;0dfb	4f 	O 
	jr nc,l0e0eh		;0dfc	30 10 	0 . 
	ret			;0dfe	c9 	. 
sub_0dffh:
	ld a,c			;0dff	79 	y 
	call sub_0e21h		;0e00	cd 21 0e 	. ! . 
	jr nc,l0e0eh		;0e03	30 09 	0 . 
	push bc			;0e05	c5 	. 
	ld c,05eh		;0e06	0e 5e 	. ^ 
	call sub_0e5ah		;0e08	cd 5a 0e 	. Z . 
	pop bc			;0e0b	c1 	. 
	set 6,c		;0e0c	cb f1 	. . 
l0e0eh:
	ld a,c			;0e0e	79 	y 
	cp 009h		;0e0f	fe 09 	. . 
	jp nz,sub_0e5ah		;0e11	c2 5a 0e 	. Z . 
l0e14h:
	ld c,020h		;0e14	0e 20 	.   
	call sub_0e5ah		;0e16	cd 5a 0e 	. Z . 
	ld a,(0f058h)		;0e19	3a 58 f0 	: X . 
	and 007h		;0e1c	e6 07 	. . 
	jr nz,l0e14h		;0e1e	20 f4 	  . 
	ret			;0e20	c9 	. 
sub_0e21h:
	cp 00dh		;0e21	fe 0d 	. . 
	ret z			;0e23	c8 	. 
	cp 00ah		;0e24	fe 0a 	. . 
	ret z			;0e26	c8 	. 
	cp 009h		;0e27	fe 09 	. . 
	ret z			;0e29	c8 	. 
	cp 008h		;0e2a	fe 08 	. . 
	ret z			;0e2c	c8 	. 
	cp 020h		;0e2d	fe 20 	.   
	ret			;0e2f	c9 	. 
sub_0e30h:
	ld a,(0f059h)		;0e30	3a 59 f0 	: Y . 
	or a			;0e33	b7 	. 
	jr nz,l0e50h		;0e34	20 1a 	  . 
	call 0f206h		;0e36	cd 06 f2 	. . . 
	and 001h		;0e39	e6 01 	. . 
	ret z			;0e3b	c8 	. 
	call 0f209h		;0e3c	cd 09 f2 	. . . 
	cp 013h		;0e3f	fe 13 	. . 
	jr nz,l0e4dh		;0e41	20 0a 	  . 
	call 0f209h		;0e43	cd 09 f2 	. . . 
	cp 003h		;0e46	fe 03 	. . 
	jp z,0f203h		;0e48	ca 03 f2 	. . . 
	xor a			;0e4b	af 	. 
	ret			;0e4c	c9 	. 
l0e4dh:
	ld (0f059h),a		;0e4d	32 59 f0 	2 Y . 
l0e50h:
	ld a,001h		;0e50	3e 01 	> . 
	ret			;0e52	c9 	. 
sub_0e53h:
	ld c,00dh		;0e53	0e 0d 	. . 
sub_0e55h:
	call sub_0e5ah		;0e55	cd 5a 0e 	. Z . 
sub_0e58h:
	ld c,00ah		;0e58	0e 0a 	. . 
sub_0e5ah:
	ld a,(0f056h)		;0e5a	3a 56 f0 	: V . 
	or a			;0e5d	b7 	. 
	jr nz,l0e74h		;0e5e	20 14 	  . 
	push bc			;0e60	c5 	. 
	call sub_0e30h		;0e61	cd 30 0e 	. 0 . 
	pop bc			;0e64	c1 	. 
	push bc			;0e65	c5 	. 
l0e66h:
	call 0f20ch		;0e66	cd 0c f2 	. . . 
	pop bc			;0e69	c1 	. 
	push bc			;0e6a	c5 	. 
	ld a,(0f26bh)		;0e6b	3a 6b f2 	: k . 
	bit 6,a		;0e6e	cb 77 	. w 
	call nz,0f20fh		;0e70	c4 0f f2 	. . . 
	pop bc			;0e73	c1 	. 
l0e74h:
	ld a,c			;0e74	79 	y 
	ld hl,0f058h		;0e75	21 58 f0 	! X . 
	cp 07fh		;0e78	fe 7f 	.  
	ret z			;0e7a	c8 	. 
	inc (hl)			;0e7b	34 	4 
	cp 020h		;0e7c	fe 20 	.   
	ret nc			;0e7e	d0 	. 
	dec (hl)			;0e7f	35 	5 
	ld a,(hl)			;0e80	7e 	~ 
	or a			;0e81	b7 	. 
	ret z			;0e82	c8 	. 
	ld a,c			;0e83	79 	y 
	cp 008h		;0e84	fe 08 	. . 
	jr nz,l0e8ah		;0e86	20 02 	  . 
l0e88h:
	dec (hl)			;0e88	35 	5 
sub_0e89h:
	ret			;0e89	c9 	. 
l0e8ah:
	cp 00ah		;0e8a	fe 0a 	. . 
	ret nz			;0e8c	c0 	. 
	ld (hl),000h		;0e8d	36 00 	6 . 
	ret			;0e8f	c9 	. 
	call 0f215h		;0e90	cd 15 f2 	. . . 
	jp l0ff4h		;0e93	c3 f4 0f 	. . . 
	ld a,c			;0e96	79 	y 
	inc a			;0e97	3c 	< 
	jr z,l0ea4h		;0e98	28 0a 	( . 
	inc a			;0e9a	3c 	< 
	jp nz,0f20ch		;0e9b	c2 0c f2 	. . . 
	call sub_0eb1h		;0e9e	cd b1 0e 	. . . 
	jp l0ff4h		;0ea1	c3 f4 0f 	. . . 
l0ea4h:
	call sub_0eb1h		;0ea4	cd b1 0e 	. . . 
	or a			;0ea7	b7 	. 
	jp z,l0ff4h		;0ea8	ca f4 0f 	. . . 
	call sub_0eb9h		;0eab	cd b9 0e 	. . . 
	jp l0ff4h		;0eae	c3 f4 0f 	. . . 
sub_0eb1h:
	ld a,(0f059h)		;0eb1	3a 59 f0 	: Y . 
	or a			;0eb4	b7 	. 
	ret nz			;0eb5	c0 	. 
	jp 0f206h		;0eb6	c3 06 f2 	. . . 
sub_0eb9h:
	ld hl,0f059h		;0eb9	21 59 f0 	! Y . 
	ld a,(hl)			;0ebc	7e 	~ 
	ld (hl),000h		;0ebd	36 00 	6 . 
	or a			;0ebf	b7 	. 
	ret nz			;0ec0	c0 	. 
	jp 0f209h		;0ec1	c3 09 f2 	. . . 
	ld hl,l0002h+1		;0ec4	21 03 00 	! . . 
	call sub_0011h		;0ec7	cd 11 00 	. . . 
	jp l0ff4h		;0eca	c3 f4 0f 	. . . 
	ld hl,l0002h+1		;0ecd	21 03 00 	! . . 
	ld (hl),c			;0ed0	71 	q 
	ret			;0ed1	c9 	. 
	ex de,hl			;0ed2	eb 	. 
l0ed3h:
	call sub_0011h		;0ed3	cd 11 00 	. . . 
	cp 024h		;0ed6	fe 24 	. $ 
	ret z			;0ed8	c8 	. 
	inc hl			;0ed9	23 	# 
	push hl			;0eda	e5 	. 
	ld c,a			;0edb	4f 	O 
	call l0e0eh		;0edc	cd 0e 0e 	. . . 
	pop hl			;0edf	e1 	. 
	jr l0ed3h		;0ee0	18 f1 	. . 
l0ee2h:
	ld a,(0f058h)		;0ee2	3a 58 f0 	: X . 
	ld (0f057h),a		;0ee5	32 57 f0 	2 W . 
	ld hl,(0f05ah)		;0ee8	2a 5a f0 	* Z . 
	call sub_0011h		;0eeb	cd 11 00 	. . . 
	ld c,a			;0eee	4f 	O 
	inc hl			;0eef	23 	# 
	push hl			;0ef0	e5 	. 
	ld b,000h		;0ef1	06 00 	. . 
l0ef3h:
	push bc			;0ef3	c5 	. 
	push hl			;0ef4	e5 	. 
l0ef5h:
	call sub_0eb9h		;0ef5	cd b9 0e 	. . . 
	nop			;0ef8	00 	. 
	nop			;0ef9	00 	. 
	pop hl			;0efa	e1 	. 
	pop bc			;0efb	c1 	. 
	cp 00dh		;0efc	fe 0d 	. . 
	jr z,l0f3bh		;0efe	28 3b 	( ; 
	cp 00ah		;0f00	fe 0a 	. . 
	jr z,l0f3bh		;0f02	28 37 	( 7 
	cp 008h		;0f04	fe 08 	. . 
	jr z,l0f7fh		;0f06	28 77 	( w 
	cp 07fh		;0f08	fe 7f 	.  
	jr z,l0f7fh		;0f0a	28 73 	( s 
	cp 005h		;0f0c	fe 05 	. . 
	jr z,l0f42h		;0f0e	28 32 	( 2 
	cp 010h		;0f10	fe 10 	. . 
	jr z,l0f4dh		;0f12	28 39 	( 9 
	cp 018h		;0f14	fe 18 	. . 
l0f16h:
	jr z,l0f67h		;0f16	28 4f 	( O 
	cp 015h		;0f18	fe 15 	. . 
	jr z,l0f78h		;0f1a	28 5c 	( \ 
	cp 012h		;0f1c	fe 12 	. . 
	jr z,l0f8bh		;0f1e	28 6b 	( k 
	inc hl			;0f20	23 	# 
sub_0f21h:
	ld (hl),a			;0f21	77 	w 
	inc b			;0f22	04 	. 
	push bc			;0f23	c5 	. 
	push hl			;0f24	e5 	. 
	ld c,a			;0f25	4f 	O 
	call sub_0dffh		;0f26	cd ff 0d 	. . . 
	pop hl			;0f29	e1 	. 
	pop bc			;0f2a	c1 	. 
	call sub_0011h		;0f2b	cd 11 00 	. . . 
	cp 003h		;0f2e	fe 03 	. . 
	ld a,b			;0f30	78 	x 
	jr nz,l0f38h		;0f31	20 05 	  . 
	cp 001h		;0f33	fe 01 	. . 
	jp z,0f203h		;0f35	ca 03 f2 	. . . 
l0f38h:
	cp c			;0f38	b9 	. 
	jr c,l0ef3h		;0f39	38 b8 	8 . 
l0f3bh:
	pop hl			;0f3b	e1 	. 
	ld (hl),b			;0f3c	70 	p 
	ld c,00dh		;0f3d	0e 0d 	. . 
	jp sub_0e5ah		;0f3f	c3 5a 0e 	. Z . 
l0f42h:
	push bc			;0f42	c5 	. 
	push hl			;0f43	e5 	. 
	call sub_0e53h		;0f44	cd 53 0e 	. S . 
	xor a			;0f47	af 	. 
	ld (0f057h),a		;0f48	32 57 f0 	2 W . 
	jr l0ef5h		;0f4b	18 a8 	. . 
l0f4dh:
	ld a,(0f26bh)		;0f4d	3a 6b f2 	: k . 
	xor 040h		;0f50	ee 40 	. @ 
	ld (0f26bh),a		;0f52	32 6b f2 	2 k . 
	bit 6,a		;0f55	cb 77 	. w 
	jr z,l0ef3h		;0f57	28 9a 	( . 
	res 3,a		;0f59	cb 9f 	. . 
	ld (0f26bh),a		;0f5b	32 6b f2 	2 k . 
	push bc			;0f5e	c5 	. 
	ld c,007h		;0f5f	0e 07 	. . 
	call 0f20ch		;0f61	cd 0c f2 	. . . 
	pop bc			;0f64	c1 	. 
	jr l0ef3h		;0f65	18 8c 	. . 
l0f67h:
	pop hl			;0f67	e1 	. 
l0f68h:
	ld a,(0f057h)		;0f68	3a 57 f0 	: W . 
	ld hl,0f058h		;0f6b	21 58 f0 	! X . 
	cp (hl)			;0f6e	be 	. 
	jp nc,l0ee2h		;0f6f	d2 e2 0e 	. . . 
	dec (hl)			;0f72	35 	5 
	call sub_0fe4h		;0f73	cd e4 0f 	. . . 
sub_0f76h:
	jr l0f68h		;0f76	18 f0 	. . 
l0f78h:
	call sub_0fcdh		;0f78	cd cd 0f 	. . . 
	pop hl			;0f7b	e1 	. 
	jp l0ee2h		;0f7c	c3 e2 0e 	. . . 
l0f7fh:
	ld a,b			;0f7f	78 	x 
	or a			;0f80	b7 	. 
	jp z,l0ef3h		;0f81	ca f3 0e 	. . . 
sub_0f84h:
	dec b			;0f84	05 	. 
	ld a,(0f058h)		;0f85	3a 58 f0 	: X . 
	ld (0f056h),a		;0f88	32 56 f0 	2 V . 
l0f8bh:
	push bc			;0f8b	c5 	. 
	call sub_0fcdh		;0f8c	cd cd 0f 	. . . 
	pop bc			;0f8f	c1 	. 
	pop hl			;0f90	e1 	. 
	push hl			;0f91	e5 	. 
sub_0f92h:
	push bc			;0f92	c5 	. 
l0f93h:
	ld a,b			;0f93	78 	x 
	or a			;0f94	b7 	. 
	jr z,l0fa6h		;0f95	28 0f 	( . 
	inc hl			;0f97	23 	# 
	call sub_0011h		;0f98	cd 11 00 	. . . 
	ld c,a			;0f9b	4f 	O 
	dec b			;0f9c	05 	. 
l0f9dh:
	push bc			;0f9d	c5 	. 
	push hl			;0f9e	e5 	. 
	call sub_0dffh		;0f9f	cd ff 0d 	. . . 
	pop hl			;0fa2	e1 	. 
	pop bc			;0fa3	c1 	. 
	jr l0f93h		;0fa4	18 ed 	. . 
l0fa6h:
	push hl			;0fa6	e5 	. 
	ld a,(0f056h)		;0fa7	3a 56 f0 	: V . 
	or a			;0faa	b7 	. 
	jp z,l0ef5h		;0fab	ca f5 0e 	. . . 
	ld hl,0f058h		;0fae	21 58 f0 	! X . 
	sub (hl)			;0fb1	96 	. 
	jr c,l0fc5h		;0fb2	38 11 	8 . 
	jr z,l0fc5h		;0fb4	28 0f 	( . 
	ld (0f056h),a		;0fb6	32 56 f0 	2 V . 
l0fb9h:
	call sub_0fe4h		;0fb9	cd e4 0f 	. . . 
	ld hl,0f056h		;0fbc	21 56 f0 	! V . 
	dec (hl)			;0fbf	35 	5 
	jr nz,l0fb9h		;0fc0	20 f7 	  . 
	jp l0ef5h		;0fc2	c3 f5 0e 	. . . 
l0fc5h:
	pop hl			;0fc5	e1 	. 
	pop bc			;0fc6	c1 	. 
	xor a			;0fc7	af 	. 
	ld (0f056h),a		;0fc8	32 56 f0 	2 V . 
	jr l0f8bh		;0fcb	18 be 	. . 
sub_0fcdh:
	ld c,023h		;0fcd	0e 23 	. # 
	call sub_0e5ah		;0fcf	cd 5a 0e 	. Z . 
	call sub_0e53h		;0fd2	cd 53 0e 	. S . 
l0fd5h:
	ld a,(0f058h)		;0fd5	3a 58 f0 	: X . 
	ld hl,0f057h		;0fd8	21 57 f0 	! W . 
	cp (hl)			;0fdb	be 	. 
	ret nc			;0fdc	d0 	. 
	ld c,020h		;0fdd	0e 20 	.   
	call sub_0e5ah		;0fdf	cd 5a 0e 	. Z . 
	jr l0fd5h		;0fe2	18 f1 	. . 
sub_0fe4h:
	call sub_0fech		;0fe4	cd ec 0f 	. . . 
	ld c,020h		;0fe7	0e 20 	.   
	call 0f20ch		;0fe9	cd 0c f2 	. . . 
sub_0fech:
	ld c,008h		;0fec	0e 08 	. . 
	jp 0f20ch		;0fee	c3 0c f2 	. . . 
	call sub_0e30h		;0ff1	cd 30 0e 	. 0 . 
l0ff4h:
	ld (0f05ch),a		;0ff4	32 5c f0 	2 \ . 
	ret			;0ff7	c9 	. 
	ld a,025h		;0ff8	3e 25 	> % 
	jr l0ff4h		;0ffa	18 f8 	. . 
	ld hl,l0000h		;0ffc	21 00 00 	! . . 
	ld (0f010h),hl		;0fff	22 10 f0 	" . . 
	ld (0f012h),hl		;1002	22 12 f0 	" . . 
	xor a			;1005	af 	. 
	ld (0f04fh),a		;1006	32 4f f0 	2 O . 
	ld hl,l0080h		;1009	21 80 00 	! . . 
	ld (0f014h),hl		;100c	22 14 f0 	" . . 
	call sub_1447h		;100f	cd 47 14 	. G . 
	jr l101dh		;1012	18 09 	. . 
sub_1014h:
	ld a,(0f039h)		;1014	3a 39 f0 	: 9 . 
	ld hl,0f04fh		;1017	21 4f f0 	! O . 
	cp (hl)			;101a	be 	. 
	ret z			;101b	c8 	. 
	ld (hl),a			;101c	77 	w 
l101dh:
	ld hl,(0f012h)		;101d	2a 12 f0 	* . . 
	ld a,(0f04fh)		;1020	3a 4f f0 	: O . 
	ld c,a			;1023	4f 	O 
	call sub_1804h		;1024	cd 04 18 	. . . 
	push hl			;1027	e5 	. 
	ld c,a			;1028	4f 	O 
	call 0f21bh		;1029	cd 1b f2 	. . . 
	ld a,h			;102c	7c 	| 
	or l			;102d	b5 	. 
	jp z,l10d7h		;102e	ca d7 10 	. . . 
	ld e,(hl)			;1031	5e 	^ 
	inc hl			;1032	23 	# 
	ld d,(hl)			;1033	56 	V 
sub_1034h:
	inc hl			;1034	23 	# 
	ld (0f033h),de		;1035	ed 53 33 f0 	. S 3 . 
	ld (0f016h),hl		;1039	22 16 f0 	" . . 
	inc hl			;103c	23 	# 
	inc hl			;103d	23 	# 
	ld (0f018h),hl		;103e	22 18 f0 	" . . 
	inc hl			;1041	23 	# 
	inc hl			;1042	23 	# 
	ld (0f01ah),hl		;1043	22 1a f0 	" . . 
	inc hl			;1046	23 	# 
	inc hl			;1047	23 	# 
	ld de,0f01ch		;1048	11 1c f0 	. . . 
	ld bc,l0008h		;104b	01 08 00 	. . . 
	ldir		;104e	ed b0 	. . 
	ld hl,(0f01eh)		;1050	2a 1e f0 	* . . 
	ld de,0f024h		;1053	11 24 f0 	. $ . 
sub_1056h:
	ld bc,l000eh+1		;1056	01 0f 00 	. . . 
	ldir		;1059	ed b0 	. . 
	pop hl			;105b	e1 	. 
	ld a,l			;105c	7d 	} 
	rra			;105d	1f 	. 
	ret c			;105e	d8 	. 
	ld bc,(0f012h)		;105f	ed 4b 12 f0 	. K . . 
	call sub_1813h		;1063	cd 13 18 	. . . 
	ld (0f012h),hl		;1066	22 12 f0 	" . . 
sub_1069h:
	ld hl,(0f029h)		;1069	2a 29 f0 	* ) . 
	ld c,003h		;106c	0e 03 	. . 
	call sub_1804h		;106e	cd 04 18 	. . . 
	inc hl			;1071	23 	# 
	ld b,h			;1072	44 	D 
	ld c,l			;1073	4d 	M 
	ld hl,(0f022h)		;1074	2a 22 f0 	* " . 
l1077h:
	ld (hl),000h		;1077	36 00 	6 . 
	inc hl			;1079	23 	# 
	dec bc			;107a	0b 	. 
	ld a,b			;107b	78 	x 
l107ch:
	or c			;107c	b1 	. 
	jr nz,l1077h		;107d	20 f8 	  . 
	ld de,(0f02dh)		;107f	ed 5b 2d f0 	. [ - . 
	ld hl,(0f022h)		;1083	2a 22 f0 	* " . 
	ld (hl),e			;1086	73 	s 
	inc hl			;1087	23 	# 
	ld (hl),d			;1088	72 	r 
	call sub_19fdh		;1089	cd fd 19 	. . . 
	ld hl,(0f016h)		;108c	2a 16 f0 	* . . 
	ld (hl),003h		;108f	36 03 	6 . 
sub_1091h:
	inc hl			;1091	23 	# 
	ld (hl),000h		;1092	36 00 	6 . 
	call sub_18f2h		;1094	cd f2 18 	. . . 
l1097h:
	ld c,0ffh		;1097	0e ff 	. . 
	call sub_18e2h		;1099	cd e2 18 	. . . 
	call sub_1919h		;109c	cd 19 19 	. . . 
l109fh:
	ret z			;109f	c8 	. 
	call sub_1895h		;10a0	cd 95 18 	. . . 
	ld a,0e5h		;10a3	3e e5 	> . 
	cp (hl)			;10a5	be 	. 
	jr z,l1097h		;10a6	28 ef 	( . 
	ld a,(0f04eh)		;10a8	3a 4e f0 	: N . 
	cp (hl)			;10ab	be 	. 
	jr nz,l10cdh		;10ac	20 1f 	  . 
	inc hl			;10ae	23 	# 
	ld a,(hl)			;10af	7e 	~ 
	sub 024h		;10b0	d6 24 	. $ 
	jr nz,l10b8h		;10b2	20 04 	  . 
	dec a			;10b4	3d 	= 
	ld (0f052h),a		;10b5	32 52 f0 	2 R . 
l10b8h:
	ld a,(hl)			;10b8	7e 	~ 
	sub 041h		;10b9	d6 41 	. A 
	jr nz,l10cdh		;10bb	20 10 	  . 
	ld b,00bh		;10bd	06 0b 	. . 
	ld a,0b8h		;10bf	3e b8 	> . 
l10c1h:
	add a,(hl)			;10c1	86 	. 
	inc hl			;10c2	23 	# 
	djnz l10c1h		;10c3	10 fc 	. . 
l10c5h:
	and 07fh		;10c5	e6 7f 	.  
	jr nz,l10cdh		;10c7	20 04 	  . 
	dec a			;10c9	3d 	= 
	ld (0f053h),a		;10ca	32 53 f0 	2 S . 
l10cdh:
	ld c,001h		;10cd	0e 01 	. . 
	call sub_19bbh		;10cf	cd bb 19 	. . . 
	call sub_18d2h		;10d2	cd d2 18 	. . . 
	jr l1097h		;10d5	18 c0 	. . 
l10d7h:
	pop hl			;10d7	e1 	. 
	ld hl,l10deh		;10d8	21 de 10 	! . . 
	jp l1842h		;10db	c3 42 18 	. B . 
l10deh:
	jr nz,$+128		;10de	20 7e 	  ~ 
	ld a,(l6220h)		;10e0	3a 20 62 	:   b 
	ld (hl),d			;10e3	72 	r 
	ld h,c			;10e4	61 	a 
	ld l,e			;10e5	6b 	k 
	jr nz,$+112		;10e6	20 6e 	  n 
	ld h,c			;10e8	61 	a 
	ld (hl),b			;10e9	70 	p 
	ld bc,l7564h		;10ea	01 64 75 	. d u 
	jr nz,l110fh		;10ed	20 20 	    
	jr z,$+34		;10ef	28 20 	(   
sub_10f1h:
	add hl,hl			;10f1	29 	) 
	add a,b			;10f2	80 	. 
	ld a,(hl)			;10f3	7e 	~ 
	add a,b			;10f4	80 	. 
	call sub_18bfh		;10f5	cd bf 18 	. . . 
	call sub_16f9h		;10f8	cd f9 16 	. . . 
sub_10fbh:
	ld c,00fh		;10fb	0e 0f 	. . 
	call sub_1546h		;10fd	cd 46 15 	. F . 
	call sub_1919h		;1100	cd 19 19 	. . . 
	ret z			;1103	c8 	. 
sub_1104h:
	call sub_18a0h		;1104	cd a0 18 	. . . 
	call sub_0011h		;1107	cd 11 00 	. . . 
	push af			;110a	f5 	. 
	push hl			;110b	e5 	. 
	call sub_1895h		;110c	cd 95 18 	. . . 
l110fh:
	ld de,(0f050h)		;110f	ed 5b 50 f0 	. [ P . 
	ld bc,l0020h		;1113	01 20 00 	.   . 
	push hl			;1116	e5 	. 
	ldir		;1117	ed b0 	. . 
	call sub_1406h		;1119	cd 06 14 	. . . 
	pop de			;111c	d1 	. 
	ld hl,l000bh+1		;111d	21 0c 00 	! . . 
	add hl,de			;1120	19 	. 
	ld c,(hl)			;1121	4e 	N 
	ld hl,l000eh+1		;1122	21 0f 00 	! . . 
	add hl,de			;1125	19 	. 
	ld b,(hl)			;1126	46 	F 
	pop hl			;1127	e1 	. 
	pop af			;1128	f1 	. 
	ld (hl),a			;1129	77 	w 
	cp c			;112a	b9 	. 
	ld a,b			;112b	78 	x 
	jr z,l1134h		;112c	28 06 	( . 
	ld a,000h		;112e	3e 00 	> . 
	jr nc,l1134h		;1130	30 02 	0 . 
	ld a,080h		;1132	3e 80 	> . 
l1134h:
	inc hl			;1134	23 	# 
	inc hl			;1135	23 	# 
	inc hl			;1136	23 	# 
	ld (hl),a			;1137	77 	w 
	ret			;1138	c9 	. 
	call sub_16f9h		;1139	cd f9 16 	. . . 
sub_113ch:
	xor a			;113c	af 	. 
	ld (0f052h),a		;113d	32 52 f0 	2 R . 
	ld (0f04ah),a		;1140	32 4a f0 	2 J . 
	ld (0f04bh),a		;1143	32 4b f0 	2 K . 
	call sub_1826h		;1146	cd 26 18 	. & . 
	ret nz			;1149	c0 	. 
	call sub_18b5h		;114a	cd b5 18 	. . . 
	and 080h		;114d	e6 80 	. . 
	ret nz			;114f	c0 	. 
	ld c,00fh		;1150	0e 0f 	. . 
	call sub_1546h		;1152	cd 46 15 	. F . 
	call sub_1919h		;1155	cd 19 19 	. . . 
	ret z			;1158	c8 	. 
	ld bc,l000eh+2		;1159	01 10 00 	. . . 
	call sub_1895h		;115c	cd 95 18 	. . . 
	add hl,bc			;115f	09 	. 
	ex de,hl			;1160	eb 	. 
	ld hl,(0f050h)		;1161	2a 50 f0 	* P . 
	add hl,bc			;1164	09 	. 
	ld c,010h		;1165	0e 10 	. . 
l1167h:
	ld a,(0f02ah)		;1167	3a 2a f0 	: * . 
	or a			;116a	b7 	. 
	jr nz,l1185h		;116b	20 18 	  . 
	call sub_0011h		;116d	cd 11 00 	. . . 
	or a			;1170	b7 	. 
	ld a,(de)			;1171	1a 	. 
	jr nz,l1175h		;1172	20 01 	  . 
	ld (hl),a			;1174	77 	w 
l1175h:
	or a			;1175	b7 	. 
	jr nz,l117ch		;1176	20 04 	  . 
	call sub_0011h		;1178	cd 11 00 	. . . 
	ld (de),a			;117b	12 	. 
l117ch:
	ld b,a			;117c	47 	G 
	call sub_0011h		;117d	cd 11 00 	. . . 
	cp b			;1180	b8 	. 
	jr nz,l11c0h		;1181	20 3d 	  = 
	jr l119ch		;1183	18 17 	. . 
l1185h:
	call sub_11c5h		;1185	cd c5 11 	. . . 
	ex de,hl			;1188	eb 	. 
	call sub_11c5h		;1189	cd c5 11 	. . . 
	call l0014h		;118c	cd 14 00 	. . . 
	cp (hl)			;118f	be 	. 
	jr nz,l11c0h		;1190	20 2e 	  . 
	inc de			;1192	13 	. 
	inc hl			;1193	23 	# 
	call l0014h		;1194	cd 14 00 	. . . 
	cp (hl)			;1197	be 	. 
	jr nz,l11c0h		;1198	20 26 	  & 
	ex de,hl			;119a	eb 	. 
	dec c			;119b	0d 	. 
l119ch:
	inc de			;119c	13 	. 
	inc hl			;119d	23 	# 
	dec c			;119e	0d 	. 
	jr nz,l1167h		;119f	20 c6 	  . 
	ld bc,0ffech		;11a1	01 ec ff 	. . . 
	add hl,bc			;11a4	09 	. 
	ex de,hl			;11a5	eb 	. 
sub_11a6h:
	add hl,bc			;11a6	09 	. 
	call l0014h		;11a7	cd 14 00 	. . . 
	cp (hl)			;11aa	be 	. 
	jr c,l11b8h		;11ab	38 0b 	8 . 
	ld (hl),a			;11ad	77 	w 
	ld bc,l0002h+1		;11ae	01 03 00 	. . . 
	add hl,bc			;11b1	09 	. 
	ex de,hl			;11b2	eb 	. 
	add hl,bc			;11b3	09 	. 
	call sub_0011h		;11b4	cd 11 00 	. . . 
	ld (de),a			;11b7	12 	. 
l11b8h:
	ld a,0ffh		;11b8	3e ff 	> . 
	ld (0f035h),a		;11ba	32 35 f0 	2 5 . 
	jp l173fh		;11bd	c3 3f 17 	. ? . 
l11c0h:
	ld hl,0f052h		;11c0	21 52 f0 	! R . 
	dec (hl)			;11c3	35 	5 
	ret			;11c4	c9 	. 
sub_11c5h:
	call sub_0011h		;11c5	cd 11 00 	. . . 
	inc hl			;11c8	23 	# 
	ld b,a			;11c9	47 	G 
	call sub_0011h		;11ca	cd 11 00 	. . . 
	or b			;11cd	b0 	. 
	dec hl			;11ce	2b 	+ 
	ret nz			;11cf	c0 	. 
	call l0014h		;11d0	cd 14 00 	. . . 
	ld (hl),a			;11d3	77 	w 
	inc de			;11d4	13 	. 
	inc hl			;11d5	23 	# 
	call l0014h		;11d6	cd 14 00 	. . . 
	ld (hl),a			;11d9	77 	w 
	dec de			;11da	1b 	. 
	dec hl			;11db	2b 	+ 
	ret			;11dc	c9 	. 
l11ddh:
	ld c,000h		;11dd	0e 00 	. . 
	ex de,hl			;11df	eb 	. 
	call sub_0011h		;11e0	cd 11 00 	. . . 
	cp 03fh		;11e3	fe 3f 	. ? 
	jr z,l11f7h		;11e5	28 10 	( . 
	call sub_18a0h		;11e7	cd a0 18 	. . . 
	call sub_0011h		;11ea	cd 11 00 	. . . 
	cp 03fh		;11ed	fe 3f 	. ? 
	call nz,sub_18bfh		;11ef	c4 bf 18 	. . . 
	call sub_16f9h		;11f2	cd f9 16 	. . . 
	ld c,00fh		;11f5	0e 0f 	. . 
l11f7h:
	call sub_1546h		;11f7	cd 46 15 	. F . 
	jr l1208h		;11fa	18 0c 	. . 
	ld hl,(0f03ch)		;11fc	2a 3c f0 	* < . 
	ld (0f050h),hl		;11ff	22 50 f0 	" P . 
	call sub_16f9h		;1202	cd f9 16 	. . . 
	call sub_155bh		;1205	cd 5b 15 	. [ . 
l1208h:
	ld hl,(0f01ch)		;1208	2a 1c f0 	* . . 
	ld de,(0f014h)		;120b	ed 5b 14 f0 	. [ . . 
	ld bc,l0080h		;120f	01 80 00 	. . . 
	ldir		;1212	ed b0 	. . 
	ret			;1214	c9 	. 
	call sub_16f9h		;1215	cd f9 16 	. . . 
	call sub_188ch		;1218	cd 8c 18 	. . . 
	ld c,00ch		;121b	0e 0c 	. . 
	call sub_1546h		;121d	cd 46 15 	. F . 
l1220h:
	call sub_1919h		;1220	cd 19 19 	. . . 
	jr z,l123ah		;1223	28 15 	( . 
	call sub_1833h		;1225	cd 33 18 	. 3 . 
	call sub_1895h		;1228	cd 95 18 	. . . 
	ld (hl),0e5h		;122b	36 e5 	6 . 
	ld c,000h		;122d	0e 00 	. . 
	call sub_19bbh		;122f	cd bb 19 	. . . 
	call sub_1742h		;1232	cd 42 17 	. B . 
	call sub_155bh		;1235	cd 5b 15 	. [ . 
	jr l1220h		;1238	18 e6 	. . 
l123ah:
	ld a,(0f037h)		;123a	3a 37 f0 	: 7 . 
l123dh:
	ld (0f052h),a		;123d	32 52 f0 	2 R . 
	ret			;1240	c9 	. 
	call sub_16f9h		;1241	cd f9 16 	. . . 
	ld a,001h		;1244	3e 01 	> . 
	ld (0f038h),a		;1246	32 38 f0 	2 8 . 
sub_1249h:
	ld a,0ffh		;1249	3e ff 	> . 
	ld (0f036h),a		;124b	32 36 f0 	2 6 . 
	call sub_17e5h		;124e	cd e5 17 	. . . 
	ld a,(0f043h)		;1251	3a 43 f0 	: C . 
	ld hl,0f041h		;1254	21 41 f0 	! A . 
sub_1257h:
	cp (hl)			;1257	be 	. 
	jr c,l126bh		;1258	38 11 	8 . 
	cp 080h		;125a	fe 80 	. . 
	jr nz,l1281h		;125c	20 23 	  # 
sub_125eh:
	call sub_15d1h		;125e	cd d1 15 	. . . 
	xor a			;1261	af 	. 
	ld (0f043h),a		;1262	32 43 f0 	2 C . 
	ld a,(0f052h)		;1265	3a 52 f0 	: R . 
	or a			;1268	b7 	. 
	jr nz,l1281h		;1269	20 16 	  . 
l126bh:
	call sub_177fh		;126b	cd 7f 17 	.  . 
	ld hl,(0f045h)		;126e	2a 45 f0 	* E . 
	ld a,l			;1271	7d 	} 
	or h			;1272	b4 	. 
	jr z,l1281h		;1273	28 0c 	( . 
	call sub_17cah		;1275	cd ca 17 	. . . 
	call sub_1930h		;1278	cd 30 19 	. 0 . 
	call sub_1a0eh		;127b	cd 0e 1a 	. . . 
	jp l137ah		;127e	c3 7a 13 	. z . 
l1281h:
	ld a,001h		;1281	3e 01 	> . 
	jp l123dh		;1283	c3 3d 12 	. = . 
	call sub_16f9h		;1286	cd f9 16 	. . . 
	ld a,001h		;1289	3e 01 	> . 
	ld (0f038h),a		;128b	32 38 f0 	2 8 . 
sub_128eh:
	ld a,000h		;128e	3e 00 	> . 
	ld (0f036h),a		;1290	32 36 f0 	2 6 . 
	call sub_188ch		;1293	cd 8c 18 	. . . 
	ld hl,(0f050h)		;1296	2a 50 f0 	* P . 
	call sub_1836h		;1299	cd 36 18 	. 6 . 
	call sub_17e5h		;129c	cd e5 17 	. . . 
	ld a,(0f043h)		;129f	3a 43 f0 	: C . 
	cp 080h		;12a2	fe 80 	. . 
	jr nc,l1281h		;12a4	30 db 	0 . 
	call sub_177fh		;12a6	cd 7f 17 	.  . 
	ld hl,(0f045h)		;12a9	2a 45 f0 	* E . 
	ld a,l			;12ac	7d 	} 
	or h			;12ad	b4 	. 
	ld c,000h		;12ae	0e 00 	. . 
l12b0h:
	jr nz,l12f5h		;12b0	20 43 	  C 
	call sub_178ch		;12b2	cd 8c 17 	. . . 
	ld (0f03ah),a		;12b5	32 3a f0 	2 : . 
l12b8h:
	ld bc,l0000h		;12b8	01 00 00 	. . . 
	or a			;12bb	b7 	. 
l12bch:
	jr z,l12c5h		;12bc	28 07 	( . 
	ld c,a			;12be	4f 	O 
	dec bc			;12bf	0b 	. 
l12c0h:
	call sub_17a9h		;12c0	cd a9 17 	. . . 
	ld b,h			;12c3	44 	D 
l12c4h:
	ld c,l			;12c4	4d 	M 
l12c5h:
	call sub_1391h		;12c5	cd 91 13 	. . . 
l12c8h:
	ld a,l			;12c8	7d 	} 
	or h			;12c9	b4 	. 
	jr nz,l12d1h		;12ca	20 05 	  . 
l12cch:
	ld a,002h		;12cc	3e 02 	> . 
	jp l123dh		;12ce	c3 3d 12 	. = . 
l12d1h:
	ld (0f045h),hl		;12d1	22 45 f0 	" E . 
l12d4h:
	ex de,hl			;12d4	eb 	. 
	ld hl,(0f050h)		;12d5	2a 50 f0 	* P . 
l12d8h:
	ld bc,l000eh+2		;12d8	01 10 00 	. . . 
	add hl,bc			;12db	09 	. 
sub_12dch:
	ld a,(0f02ah)		;12dc	3a 2a f0 	: * . 
	or a			;12df	b7 	. 
sub_12e0h:
	ld a,(0f03ah)		;12e0	3a 3a f0 	: : . 
	jr nz,l12ebh		;12e3	20 06 	  . 
	call sub_189bh		;12e5	cd 9b 18 	. . . 
	ld (hl),e			;12e8	73 	s 
	jr l12f3h		;12e9	18 08 	. . 
l12ebh:
	ld c,a			;12eb	4f 	O 
	ld b,000h		;12ec	06 00 	. . 
	add hl,bc			;12ee	09 	. 
	add hl,bc			;12ef	09 	. 
	ld (hl),e			;12f0	73 	s 
	inc hl			;12f1	23 	# 
	ld (hl),d			;12f2	72 	r 
l12f3h:
	ld c,002h		;12f3	0e 02 	. . 
l12f5h:
	ld a,(0f052h)		;12f5	3a 52 f0 	: R . 
	or a			;12f8	b7 	. 
	ret nz			;12f9	c0 	. 
	push bc			;12fa	c5 	. 
	call sub_17cah		;12fb	cd ca 17 	. . . 
	ld a,(0f038h)		;12fe	3a 38 f0 	: 8 . 
	dec a			;1301	3d 	= 
l1302h:
	dec a			;1302	3d 	= 
	jr nz,l133eh		;1303	20 39 	  9 
	pop bc			;1305	c1 	. 
	push bc			;1306	c5 	. 
	ld a,c			;1307	79 	y 
	dec a			;1308	3d 	= 
	dec a			;1309	3d 	= 
	jr nz,l133eh		;130a	20 32 	  2 
	push hl			;130c	e5 	. 
	ld hl,(0f01ch)		;130d	2a 1c f0 	* . . 
	ld b,080h		;1310	06 80 	. . 
l1312h:
	ld (hl),a			;1312	77 	w 
	inc hl			;1313	23 	# 
	djnz l1312h		;1314	10 fc 	. . 
	call sub_144dh		;1316	cd 4d 14 	. M . 
	ld hl,(0f047h)		;1319	2a 47 f0 	* G . 
	ld c,002h		;131c	0e 02 	. . 
l131eh:
	ld (0f045h),hl		;131e	22 45 f0 	" E . 
	push bc			;1321	c5 	. 
	call sub_1930h		;1322	cd 30 19 	. 0 . 
	pop bc			;1325	c1 	. 
	call sub_1a13h		;1326	cd 13 1a 	. . . 
	ld hl,(0f045h)		;1329	2a 45 f0 	* E . 
	ld c,000h		;132c	0e 00 	. . 
	ld a,(0f027h)		;132e	3a 27 f0 	: ' . 
	ld b,a			;1331	47 	G 
	and l			;1332	a5 	. 
	cp b			;1333	b8 	. 
	inc hl			;1334	23 	# 
	jr nz,l131eh		;1335	20 e7 	  . 
	pop hl			;1337	e1 	. 
	ld (0f045h),hl		;1338	22 45 f0 	" E . 
	call sub_1447h		;133b	cd 47 14 	. G . 
l133eh:
	call sub_1930h		;133e	cd 30 19 	. 0 . 
	pop bc			;1341	c1 	. 
	push bc			;1342	c5 	. 
	call sub_1a13h		;1343	cd 13 1a 	. . . 
	pop bc			;1346	c1 	. 
	ld a,(0f043h)		;1347	3a 43 f0 	: C . 
	ld hl,0f041h		;134a	21 41 f0 	! A . 
	cp (hl)			;134d	be 	. 
	jr c,l1354h		;134e	38 04 	8 . 
	ld (hl),a			;1350	77 	w 
	inc (hl)			;1351	34 	4 
	ld c,002h		;1352	0e 02 	. . 
l1354h:
	push af			;1354	f5 	. 
	call sub_18b5h		;1355	cd b5 18 	. . . 
	and 07fh		;1358	e6 7f 	.  
	ld (hl),a			;135a	77 	w 
	pop af			;135b	f1 	. 
	cp 07fh		;135c	fe 7f 	.  
	jr nz,l137ah		;135e	20 1a 	  . 
	ld a,(0f038h)		;1360	3a 38 f0 	: 8 . 
	cp 001h		;1363	fe 01 	. . 
	jr nz,l137ah		;1365	20 13 	  . 
	call l137ah		;1367	cd 7a 13 	. z . 
	call sub_15d1h		;136a	cd d1 15 	. . . 
	ld hl,0f052h		;136d	21 52 f0 	! R . 
	ld a,(hl)			;1370	7e 	~ 
	or a			;1371	b7 	. 
	jr nz,l1378h		;1372	20 04 	  . 
	dec a			;1374	3d 	= 
	ld (0f043h),a		;1375	32 43 f0 	2 C . 
l1378h:
	ld (hl),000h		;1378	36 00 	6 . 
l137ah:
	call sub_18a8h		;137a	cd a8 18 	. . . 
	ld a,(0f038h)		;137d	3a 38 f0 	: 8 . 
	cp 002h		;1380	fe 02 	. . 
	jr nz,l1385h		;1382	20 01 	  . 
	xor a			;1384	af 	. 
l1385h:
	ld c,a			;1385	4f 	O 
	ld a,(0f043h)		;1386	3a 43 f0 	: C . 
	add a,c			;1389	81 	. 
	ld (hl),a			;138a	77 	w 
	ex de,hl			;138b	eb 	. 
	ld a,(0f041h)		;138c	3a 41 f0 	: A . 
	ld (hl),a			;138f	77 	w 
	ret			;1390	c9 	. 
sub_1391h:
	ld d,b			;1391	50 	P 
	ld e,c			;1392	59 	Y 
l1393h:
	ld a,c			;1393	79 	y 
	or b			;1394	b0 	. 
	jr z,l13a3h		;1395	28 0c 	( . 
	dec bc			;1397	0b 	. 
	push de			;1398	d5 	. 
	push bc			;1399	c5 	. 
	call sub_1995h		;139a	cd 95 19 	. . . 
	rra			;139d	1f 	. 
	jp nc,l13bbh		;139e	d2 bb 13 	. . . 
	pop bc			;13a1	c1 	. 
	pop de			;13a2	d1 	. 
l13a3h:
	ld hl,(0f029h)		;13a3	2a 29 f0 	* ) . 
	ld a,e			;13a6	7b 	{ 
	sub l			;13a7	95 	. 
	ld a,d			;13a8	7a 	z 
	sbc a,h			;13a9	9c 	. 
	jr nc,l13c3h		;13aa	30 17 	0 . 
	inc de			;13ac	13 	. 
	push bc			;13ad	c5 	. 
	push de			;13ae	d5 	. 
	ld b,d			;13af	42 	B 
	ld c,e			;13b0	4b 	K 
	call sub_1995h		;13b1	cd 95 19 	. . . 
	rra			;13b4	1f 	. 
	jr nc,l13bbh		;13b5	30 04 	0 . 
	pop de			;13b7	d1 	. 
	pop bc			;13b8	c1 	. 
	jr l1393h		;13b9	18 d8 	. . 
l13bbh:
	rla			;13bb	17 	. 
	inc a			;13bc	3c 	< 
	call sub_19f7h		;13bd	cd f7 19 	. . . 
	pop hl			;13c0	e1 	. 
	pop de			;13c1	d1 	. 
	ret			;13c2	c9 	. 
l13c3h:
	ld a,c			;13c3	79 	y 
	or b			;13c4	b0 	. 
	jr nz,l1393h		;13c5	20 cc 	  . 
	ld hl,l0000h		;13c7	21 00 00 	! . . 
	ret			;13ca	c9 	. 
	call sub_18bfh		;13cb	cd bf 18 	. . . 
	call sub_16f9h		;13ce	cd f9 16 	. . . 
sub_13d1h:
	call sub_188ch		;13d1	cd 8c 18 	. . . 
	ld hl,(0f050h)		;13d4	2a 50 f0 	* P . 
	push hl			;13d7	e5 	. 
	ld hl,0f00eh		;13d8	21 0e f0 	! . . 
	ld (0f050h),hl		;13db	22 50 f0 	" P . 
sub_13deh:
	ld c,001h		;13de	0e 01 	. . 
	call sub_1546h		;13e0	cd 46 15 	. F . 
	call sub_1919h		;13e3	cd 19 19 	. . . 
	pop hl			;13e6	e1 	. 
	ld (0f050h),hl		;13e7	22 50 f0 	" P . 
	ret z			;13ea	c8 	. 
	ex de,hl			;13eb	eb 	. 
	ld hl,l000eh+1		;13ec	21 0f 00 	! . . 
	add hl,de			;13ef	19 	. 
	ld b,011h		;13f0	06 11 	. . 
	xor a			;13f2	af 	. 
l13f3h:
	ld (hl),a			;13f3	77 	w 
	inc hl			;13f4	23 	# 
	djnz l13f3h		;13f5	10 fc 	. . 
	ld hl,l000bh+2		;13f7	21 0d 00 	! . . 
	add hl,de			;13fa	19 	. 
	ld (hl),a			;13fb	77 	w 
	call sub_18d2h		;13fc	cd d2 18 	. . . 
	ld e,000h		;13ff	1e 00 	. . 
	ld b,020h		;1401	06 20 	.   
	call sub_172dh		;1403	cd 2d 17 	. - . 
sub_1406h:
	call sub_18b5h		;1406	cd b5 18 	. . . 
	or 080h		;1409	f6 80 	. . 
	ld (hl),a			;140b	77 	w 
l140ch:
	ret			;140c	c9 	. 
	call sub_16f9h		;140d	cd f9 16 	. . . 
	call sub_188ch		;1410	cd 8c 18 	. . . 
	ld c,00ch		;1413	0e 0c 	. . 
	call sub_1546h		;1415	cd 46 15 	. F . 
	ld hl,(0f050h)		;1418	2a 50 f0 	* P . 
	call sub_0011h		;141b	cd 11 00 	. . . 
	ld de,l000eh+2		;141e	11 10 00 	. . . 
	add hl,de			;1421	19 	. 
	ld (hl),a			;1422	77 	w 
l1423h:
	call sub_1919h		;1423	cd 19 19 	. . . 
	jp z,l123ah		;1426	ca 3a 12 	. : . 
	call sub_1833h		;1429	cd 33 18 	. 3 . 
	ld e,010h		;142c	1e 10 	. . 
	ld b,00ch		;142e	06 0c 	. . 
	call sub_172dh		;1430	cd 2d 17 	. - . 
	call sub_155bh		;1433	cd 5b 15 	. [ . 
	jr l1423h		;1436	18 eb 	. . 
	ld hl,(0f012h)		;1438	2a 12 f0 	* . . 
	jr l1491h		;143b	18 54 	. T 
	ld a,(0f04fh)		;143d	3a 4f f0 	: O . 
	jp l123dh		;1440	c3 3d 12 	. = . 
	ld (0f014h),de		;1443	ed 53 14 f0 	. S . . 
sub_1447h:
	ld bc,(0f014h)		;1447	ed 4b 14 f0 	. K . . 
	jr l1451h		;144b	18 04 	. . 
sub_144dh:
	ld bc,(0f01ch)		;144d	ed 4b 1c f0 	. K . . 
l1451h:
	jp 0f224h		;1451	c3 24 f2 	. $ . 
	ld hl,(0f022h)		;1454	2a 22 f0 	* " . 
	jr l1491h		;1457	18 38 	. 8 
l1459h:
	ld bc,(0f010h)		;1459	ed 4b 10 f0 	. K . . 
	call sub_1813h		;145d	cd 13 18 	. . . 
	ld (0f010h),hl		;1460	22 10 f0 	" . . 
	ld hl,(0f02bh)		;1463	2a 2b f0 	* + . 
	inc hl			;1466	23 	# 
	ex de,hl			;1467	eb 	. 
	ld hl,(0f016h)		;1468	2a 16 f0 	* . . 
	ld (hl),e			;146b	73 	s 
	inc hl			;146c	23 	# 
	ld (hl),d			;146d	72 	r 
	ret			;146e	c9 	. 
	ld hl,(0f010h)		;146f	2a 10 f0 	* . . 
	jr l1491h		;1472	18 1d 	. . 
	call sub_16f9h		;1474	cd f9 16 	. . . 
	ld c,00ch		;1477	0e 0c 	. . 
	call sub_1546h		;1479	cd 46 15 	. F . 
l147ch:
	call sub_1919h		;147c	cd 19 19 	. . . 
	jp z,l123ah		;147f	ca 3a 12 	. : . 
	ld e,000h		;1482	1e 00 	. . 
	ld b,00ch		;1484	06 0c 	. . 
	call sub_172dh		;1486	cd 2d 17 	. - . 
	call sub_155bh		;1489	cd 5b 15 	. [ . 
	jr l147ch		;148c	18 ee 	. . 
	ld hl,(0f01eh)		;148e	2a 1e f0 	* . . 
l1491h:
	ld (0f052h),hl		;1491	22 52 f0 	" R . 
	ret			;1494	c9 	. 
	ld a,(0f039h)		;1495	3a 39 f0 	: 9 . 
	cp 0ffh		;1498	fe ff 	. . 
	jr nz,l14a2h		;149a	20 06 	  . 
	ld a,(0f04eh)		;149c	3a 4e f0 	: N . 
	jp l123dh		;149f	c3 3d 12 	. = . 
l14a2h:
	and 01fh		;14a2	e6 1f 	. . 
	ld (0f04eh),a		;14a4	32 4e f0 	2 N . 
	ret			;14a7	c9 	. 
	call sub_16f9h		;14a8	cd f9 16 	. . . 
	xor a			;14ab	af 	. 
sub_14ach:
	ld c,0ffh		;14ac	0e ff 	. . 
	call sub_1630h		;14ae	cd 30 16 	. 0 . 
	call z,sub_1249h		;14b1	cc 49 12 	. I . 
	ret			;14b4	c9 	. 
	call sub_16f9h		;14b5	cd f9 16 	. . . 
	xor a			;14b8	af 	. 
l14b9h:
	ld c,000h		;14b9	0e 00 	. . 
	call sub_1630h		;14bb	cd 30 16 	. 0 . 
	call z,sub_128eh		;14be	cc 8e 12 	. . . 
	ret			;14c1	c9 	. 
	call sub_16f9h		;14c2	cd f9 16 	. . . 
	ld c,00ch		;14c5	0e 0c 	. . 
	call sub_1546h		;14c7	cd 46 15 	. F . 
	ld hl,(0f050h)		;14ca	2a 50 f0 	* P . 
	ld de,l0021h		;14cd	11 21 00 	. ! . 
	add hl,de			;14d0	19 	. 
	push hl			;14d1	e5 	. 
	ld (hl),d			;14d2	72 	r 
	inc hl			;14d3	23 	# 
	ld (hl),d			;14d4	72 	r 
	inc hl			;14d5	23 	# 
	ld (hl),d			;14d6	72 	r 
l14d7h:
	call sub_1919h		;14d7	cd 19 19 	. . . 
	jr z,l1508h		;14da	28 2c 	( , 
	call sub_1895h		;14dc	cd 95 18 	. . . 
	ld de,l000eh+1		;14df	11 0f 00 	. . . 
	call sub_16c7h		;14e2	cd c7 16 	. . . 
	pop hl			;14e5	e1 	. 
	push hl			;14e6	e5 	. 
	ld e,a			;14e7	5f 	_ 
	call sub_0011h		;14e8	cd 11 00 	. . . 
	ld d,a			;14eb	57 	W 
sub_14ech:
	ld a,c			;14ec	79 	y 
	sub d			;14ed	92 	. 
	inc hl			;14ee	23 	# 
	call sub_0011h		;14ef	cd 11 00 	. . . 
	ld d,a			;14f2	57 	W 
	ld a,b			;14f3	78 	x 
	sbc a,d			;14f4	9a 	. 
	inc hl			;14f5	23 	# 
	call sub_0011h		;14f6	cd 11 00 	. . . 
	ld d,a			;14f9	57 	W 
	ld a,e			;14fa	7b 	{ 
	sbc a,d			;14fb	9a 	. 
	jr c,l1503h		;14fc	38 05 	8 . 
	ld (hl),e			;14fe	73 	s 
	dec hl			;14ff	2b 	+ 
l1500h:
	ld (hl),b			;1500	70 	p 
	dec hl			;1501	2b 	+ 
	ld (hl),c			;1502	71 	q 
l1503h:
	call sub_155bh		;1503	cd 5b 15 	. [ . 
	jr l14d7h		;1506	18 cf 	. . 
l1508h:
	pop hl			;1508	e1 	. 
	ret			;1509	c9 	. 
	ld hl,(0f050h)		;150a	2a 50 f0 	* P . 
	ld de,l0020h		;150d	11 20 00 	.   . 
	call sub_16c7h		;1510	cd c7 16 	. . . 
	ld hl,l0021h		;1513	21 21 00 	! ! . 
	add hl,de			;1516	19 	. 
	ld (hl),c			;1517	71 	q 
	inc hl			;1518	23 	# 
	ld (hl),b			;1519	70 	p 
	inc hl			;151a	23 	# 
	ld (hl),a			;151b	77 	w 
	ret			;151c	c9 	. 
	ld hl,(0f050h)		;151d	2a 50 f0 	* P . 
	ld a,l			;1520	7d 	} 
	cpl			;1521	2f 	/ 
	ld e,a			;1522	5f 	_ 
	ld a,h			;1523	7c 	| 
	cpl			;1524	2f 	/ 
	ld hl,(0f012h)		;1525	2a 12 f0 	* . . 
	and h			;1528	a4 	. 
	ld d,a			;1529	57 	W 
	ld a,l			;152a	7d 	} 
	and e			;152b	a3 	. 
	ld e,a			;152c	5f 	_ 
	ld hl,(0f010h)		;152d	2a 10 f0 	* . . 
	ex de,hl			;1530	eb 	. 
	ld (0f012h),hl		;1531	22 12 f0 	" . . 
	ld a,l			;1534	7d 	} 
	and e			;1535	a3 	. 
	ld l,a			;1536	6f 	o 
	ld a,h			;1537	7c 	| 
	and d			;1538	a2 	. 
	ld h,a			;1539	67 	g 
	ld (0f010h),hl		;153a	22 10 f0 	" . . 
	ret			;153d	c9 	. 
	call sub_16f9h		;153e	cd f9 16 	. . . 
	ld a,002h		;1541	3e 02 	> . 
	jp l14b9h		;1543	c3 b9 14 	. . . 
sub_1546h:
	ld a,0ffh		;1546	3e ff 	> . 
	ld (0f037h),a		;1548	32 37 f0 	2 7 . 
	ld hl,0f03bh		;154b	21 3b f0 	! ; . 
	ld (hl),c			;154e	71 	q 
	ld hl,(0f050h)		;154f	2a 50 f0 	* P . 
l1552h:
	ld (0f03ch),hl		;1552	22 3c f0 	" < . 
	call sub_18f2h		;1555	cd f2 18 	. . . 
	call sub_19fdh		;1558	cd fd 19 	. . . 
sub_155bh:
	ld c,000h		;155b	0e 00 	. . 
	call sub_18e2h		;155d	cd e2 18 	. . . 
	call sub_1919h		;1560	cd 19 19 	. . . 
	jp z,l15c9h		;1563	ca c9 15 	. . . 
	ld hl,(0f03ch)		;1566	2a 3c f0 	* < . 
	ex de,hl			;1569	eb 	. 
	call l0014h		;156a	cd 14 00 	. . . 
	cp 0e5h		;156d	fe e5 	. . 
	jr z,l1578h		;156f	28 07 	( . 
	push de			;1571	d5 	. 
	call sub_18c5h		;1572	cd c5 18 	. . . 
	pop de			;1575	d1 	. 
	jr nc,l15c9h		;1576	30 51 	0 Q 
l1578h:
	call sub_1895h		;1578	cd 95 18 	. . . 
	ld a,(0f03bh)		;157b	3a 3b f0 	: ; . 
	ld c,a			;157e	4f 	O 
	ld b,000h		;157f	06 00 	. . 
l1581h:
	ld a,c			;1581	79 	y 
	or a			;1582	b7 	. 
	jr z,l15b8h		;1583	28 33 	( 3 
	call l0014h		;1585	cd 14 00 	. . . 
	cp 03fh		;1588	fe 3f 	. ? 
	jr z,l15b2h		;158a	28 26 	( & 
	ld a,b			;158c	78 	x 
	cp 00dh		;158d	fe 0d 	. . 
	jr z,l15b2h		;158f	28 21 	( ! 
	cp 00ch		;1591	fe 0c 	. . 
	call l0014h		;1593	cd 14 00 	. . . 
	jr z,l159fh		;1596	28 07 	( . 
	sub (hl)			;1598	96 	. 
	and 07fh		;1599	e6 7f 	.  
	jr z,l15b2h		;159b	28 15 	( . 
	jr sub_155bh		;159d	18 bc 	. . 
l159fh:
	push bc			;159f	c5 	. 
	ld c,(hl)			;15a0	4e 	N 
	push af			;15a1	f5 	. 
	ld a,(0f028h)		;15a2	3a 28 f0 	: ( . 
	cpl			;15a5	2f 	/ 
	ld b,a			;15a6	47 	G 
	ld a,c			;15a7	79 	y 
	and b			;15a8	a0 	. 
	ld c,a			;15a9	4f 	O 
	pop af			;15aa	f1 	. 
	and b			;15ab	a0 	. 
	sub c			;15ac	91 	. 
	and 01fh		;15ad	e6 1f 	. . 
	pop bc			;15af	c1 	. 
	jr nz,sub_155bh		;15b0	20 a9 	  . 
l15b2h:
	inc de			;15b2	13 	. 
	inc hl			;15b3	23 	# 
	inc b			;15b4	04 	. 
	dec c			;15b5	0d 	. 
	jr l1581h		;15b6	18 c9 	. . 
l15b8h:
	ld a,(0f04ah)		;15b8	3a 4a f0 	: J . 
	and 003h		;15bb	e6 03 	. . 
	ld (0f052h),a		;15bd	32 52 f0 	2 R . 
	ld hl,0f037h		;15c0	21 37 f0 	! 7 . 
	ld a,(hl)			;15c3	7e 	~ 
	rla			;15c4	17 	. 
	ret nc			;15c5	d0 	. 
	xor a			;15c6	af 	. 
	ld (hl),a			;15c7	77 	w 
	ret			;15c8	c9 	. 
l15c9h:
	call sub_18f2h		;15c9	cd f2 18 	. . . 
	ld a,0ffh		;15cc	3e ff 	> . 
	jp l123dh		;15ce	c3 3d 12 	. = . 
sub_15d1h:
	xor a			;15d1	af 	. 
	ld (0f035h),a		;15d2	32 35 f0 	2 5 . 
	call sub_113ch		;15d5	cd 3c 11 	. < . 
	call sub_1919h		;15d8	cd 19 19 	. . . 
	ret z			;15db	c8 	. 
	ld hl,(0f050h)		;15dc	2a 50 f0 	* P . 
	ld bc,l000bh+1		;15df	01 0c 00 	. . . 
	add hl,bc			;15e2	09 	. 
	call sub_0011h		;15e3	cd 11 00 	. . . 
	inc a			;15e6	3c 	< 
	and 01fh		;15e7	e6 1f 	. . 
	ld (hl),a			;15e9	77 	w 
	jr z,l15f9h		;15ea	28 0d 	( . 
	ld b,a			;15ec	47 	G 
	ld a,(0f028h)		;15ed	3a 28 f0 	: ( . 
	and b			;15f0	a0 	. 
	ld hl,0f035h		;15f1	21 35 f0 	! 5 . 
	and (hl)			;15f4	a6 	. 
	jr z,l1606h		;15f5	28 0f 	( . 
	jr l1620h		;15f7	18 27 	. ' 
l15f9h:
	ld bc,l0002h		;15f9	01 02 00 	. . . 
	add hl,bc			;15fc	09 	. 
	call sub_0011h		;15fd	cd 11 00 	. . . 
l1600h:
	inc a			;1600	3c 	< 
	ld (hl),a			;1601	77 	w 
l1602h:
	and 00fh		;1602	e6 0f 	. . 
	jr z,l162ah		;1604	28 24 	( $ 
l1606h:
	ld c,00fh		;1606	0e 0f 	. . 
	call sub_1546h		;1608	cd 46 15 	. F . 
	call sub_1919h		;160b	cd 19 19 	. . . 
	jr nz,l1620h		;160e	20 10 	  . 
	ld a,(0f036h)		;1610	3a 36 f0 	: 6 . 
	inc a			;1613	3c 	< 
	jr z,l162ah		;1614	28 14 	( . 
	call sub_13d1h		;1616	cd d1 13 	. . . 
	call sub_1919h		;1619	cd 19 19 	. . . 
	jr z,l162ah		;161c	28 0c 	( . 
	jr l1623h		;161e	18 03 	. . 
l1620h:
	call sub_1104h		;1620	cd 04 11 	. . . 
l1623h:
	call sub_17e5h		;1623	cd e5 17 	. . . 
	xor a			;1626	af 	. 
	jp l123dh		;1627	c3 3d 12 	. = . 
l162ah:
	call l1281h		;162a	cd 81 12 	. . . 
	jp sub_1406h		;162d	c3 06 14 	. . . 
sub_1630h:
	ld (0f038h),a		;1630	32 38 f0 	2 8 . 
	push bc			;1633	c5 	. 
	ld de,(0f050h)		;1634	ed 5b 50 f0 	. [ P . 
	ld hl,l0021h		;1638	21 21 00 	! ! . 
	add hl,de			;163b	19 	. 
	call sub_0011h		;163c	cd 11 00 	. . . 
	and 07fh		;163f	e6 7f 	.  
	push af			;1641	f5 	. 
	call sub_0011h		;1642	cd 11 00 	. . . 
	rla			;1645	17 	. 
	inc hl			;1646	23 	# 
	call sub_0011h		;1647	cd 11 00 	. . . 
	rla			;164a	17 	. 
	and 01fh		;164b	e6 1f 	. . 
	ld c,a			;164d	4f 	O 
	call sub_0011h		;164e	cd 11 00 	. . . 
	rra			;1651	1f 	. 
	rra			;1652	1f 	. 
	rra			;1653	1f 	. 
	rra			;1654	1f 	. 
	and 00fh		;1655	e6 0f 	. . 
	ld b,a			;1657	47 	G 
	inc hl			;1658	23 	# 
	call sub_0011h		;1659	cd 11 00 	. . . 
	ld l,a			;165c	6f 	o 
	pop af			;165d	f1 	. 
	inc l			;165e	2c 	, 
	dec l			;165f	2d 	- 
	ld l,006h		;1660	2e 06 	. . 
	jr nz,l16bfh		;1662	20 5b 	  [ 
	ld hl,l0020h		;1664	21 20 00 	!   . 
	add hl,de			;1667	19 	. 
	ld (hl),a			;1668	77 	w 
	ld hl,l000bh+1		;1669	21 0c 00 	! . . 
	add hl,de			;166c	19 	. 
	call sub_0011h		;166d	cd 11 00 	. . . 
	sub c			;1670	91 	. 
	jr nz,l167fh		;1671	20 0c 	  . 
	ld hl,l000eh		;1673	21 0e 00 	! . . 
	add hl,de			;1676	19 	. 
	call sub_0011h		;1677	cd 11 00 	. . . 
	sub b			;167a	90 	. 
	and 07fh		;167b	e6 7f 	.  
	jr z,l16b3h		;167d	28 34 	( 4 
l167fh:
	push bc			;167f	c5 	. 
	push de			;1680	d5 	. 
	call sub_113ch		;1681	cd 3c 11 	. < . 
	pop de			;1684	d1 	. 
	pop bc			;1685	c1 	. 
	ld l,003h		;1686	2e 03 	. . 
	ld a,(0f052h)		;1688	3a 52 f0 	: R . 
	inc a			;168b	3c 	< 
	jr z,l16b8h		;168c	28 2a 	( * 
	ld hl,l000bh+1		;168e	21 0c 00 	! . . 
	add hl,de			;1691	19 	. 
	ld (hl),c			;1692	71 	q 
	ld hl,l000eh		;1693	21 0e 00 	! . . 
	add hl,de			;1696	19 	. 
	ld (hl),b			;1697	70 	p 
	call sub_10fbh		;1698	cd fb 10 	. . . 
	ld a,(0f052h)		;169b	3a 52 f0 	: R . 
	inc a			;169e	3c 	< 
	jr nz,l16b3h		;169f	20 12 	  . 
	pop bc			;16a1	c1 	. 
	push bc			;16a2	c5 	. 
	ld l,004h		;16a3	2e 04 	. . 
	inc c			;16a5	0c 	. 
	jr z,l16b8h		;16a6	28 10 	( . 
	call sub_13d1h		;16a8	cd d1 13 	. . . 
	ld l,005h		;16ab	2e 05 	. . 
	ld a,(0f052h)		;16ad	3a 52 f0 	: R . 
	inc a			;16b0	3c 	< 
	jr z,l16b8h		;16b1	28 05 	( . 
l16b3h:
	pop bc			;16b3	c1 	. 
	xor a			;16b4	af 	. 
	jp l123dh		;16b5	c3 3d 12 	. = . 
l16b8h:
	push hl			;16b8	e5 	. 
	call sub_18b5h		;16b9	cd b5 18 	. . . 
	ld (hl),0c0h		;16bc	36 c0 	6 . 
	pop hl			;16be	e1 	. 
l16bfh:
	pop bc			;16bf	c1 	. 
	ld a,l			;16c0	7d 	} 
	ld (0f052h),a		;16c1	32 52 f0 	2 R . 
	jp sub_1406h		;16c4	c3 06 14 	. . . 
sub_16c7h:
	ex de,hl			;16c7	eb 	. 
	add hl,de			;16c8	19 	. 
	call sub_0011h		;16c9	cd 11 00 	. . . 
	ld c,a			;16cc	4f 	O 
	ld b,000h		;16cd	06 00 	. . 
	ld hl,l000bh+1		;16cf	21 0c 00 	! . . 
	add hl,de			;16d2	19 	. 
	call sub_0011h		;16d3	cd 11 00 	. . . 
	rrca			;16d6	0f 	. 
	and 080h		;16d7	e6 80 	. . 
	add a,c			;16d9	81 	. 
	ld c,a			;16da	4f 	O 
	ld a,000h		;16db	3e 00 	> . 
	adc a,b			;16dd	88 	. 
	ld b,a			;16de	47 	G 
	call sub_0011h		;16df	cd 11 00 	. . . 
	rrca			;16e2	0f 	. 
	and 00fh		;16e3	e6 0f 	. . 
	add a,b			;16e5	80 	. 
	ld b,a			;16e6	47 	G 
	inc hl			;16e7	23 	# 
	inc hl			;16e8	23 	# 
	call sub_0011h		;16e9	cd 11 00 	. . . 
	add a,a			;16ec	87 	. 
	add a,a			;16ed	87 	. 
	add a,a			;16ee	87 	. 
	add a,a			;16ef	87 	. 
	rl h		;16f0	cb 14 	. . 
	add a,b			;16f2	80 	. 
	ld b,a			;16f3	47 	G 
	rla			;16f4	17 	. 
	or h			;16f5	b4 	. 
	and 001h		;16f6	e6 01 	. . 
	ret			;16f8	c9 	. 
sub_16f9h:
	ld a,0ffh		;16f9	3e ff 	> . 
	ld (0f03eh),a		;16fb	32 3e f0 	2 > . 
	ld hl,(0f050h)		;16fe	2a 50 f0 	* P . 
	call sub_0011h		;1701	cd 11 00 	. . . 
	and 01fh		;1704	e6 1f 	. . 
	dec a			;1706	3d 	= 
	ld (0f039h),a		;1707	32 39 f0 	2 9 . 
	cp 01eh		;170a	fe 1e 	. . 
	jr nc,l1720h		;170c	30 12 	0 . 
	ld a,(0f04fh)		;170e	3a 4f f0 	: O . 
	ld (0f040h),a		;1711	32 40 f0 	2 @ . 
	call sub_0011h		;1714	cd 11 00 	. . . 
	ld (0f03fh),a		;1717	32 3f f0 	2 ? . 
	and 0e0h		;171a	e6 e0 	. . 
	ld (hl),a			;171c	77 	w 
	call sub_1014h		;171d	cd 14 10 	. . . 
l1720h:
	ld a,(0f04eh)		;1720	3a 4e f0 	: N . 
	ld c,a			;1723	4f 	O 
	ld hl,(0f050h)		;1724	2a 50 f0 	* P . 
	call sub_0011h		;1727	cd 11 00 	. . . 
	or c			;172a	b1 	. 
	ld (hl),a			;172b	77 	w 
	ret			;172c	c9 	. 
sub_172dh:
	ld d,000h		;172d	16 00 	. . 
	ld hl,(0f050h)		;172f	2a 50 f0 	* P . 
	add hl,de			;1732	19 	. 
	ex de,hl			;1733	eb 	. 
	call sub_1895h		;1734	cd 95 18 	. . . 
l1737h:
	call l0014h		;1737	cd 14 00 	. . . 
	ld (hl),a			;173a	77 	w 
	inc de			;173b	13 	. 
	inc hl			;173c	23 	# 
	djnz l1737h		;173d	10 f8 	. . 
l173fh:
	call sub_1922h		;173f	cd 22 19 	. " . 
sub_1742h:
	call sub_1750h		;1742	cd 50 17 	. P . 
	call sub_144dh		;1745	cd 4d 14 	. M . 
	ld c,001h		;1748	0e 01 	. . 
	call sub_1a13h		;174a	cd 13 1a 	. . . 
	jp sub_1447h		;174d	c3 47 14 	. G . 
sub_1750h:
	ld c,0ffh		;1750	0e ff 	. . 
l1752h:
	ld hl,(0f04ch)		;1752	2a 4c f0 	* L . 
	ex de,hl			;1755	eb 	. 
	ld hl,(0f02fh)		;1756	2a 2f f0 	* / . 
	call sub_18dbh		;1759	cd db 18 	. . . 
	ret nc			;175c	d0 	. 
	push bc			;175d	c5 	. 
	ld b,080h		;175e	06 80 	. . 
	ld hl,(0f01ch)		;1760	2a 1c f0 	* . . 
	xor a			;1763	af 	. 
l1764h:
	add a,(hl)			;1764	86 	. 
	inc hl			;1765	23 	# 
	djnz l1764h		;1766	10 fc 	. . 
	ld de,(0f020h)		;1768	ed 5b 20 f0 	. [   . 
	ld hl,(0f04ch)		;176c	2a 4c f0 	* L . 
	add hl,de			;176f	19 	. 
l1770h:
	pop bc			;1770	c1 	. 
	inc c			;1771	0c 	. 
	jr z,l177dh		;1772	28 09 	( . 
	cp (hl)			;1774	be 	. 
	ret z			;1775	c8 	. 
	call sub_18c5h		;1776	cd c5 18 	. . . 
	ret nc			;1779	d0 	. 
	jp l1459h		;177a	c3 59 14 	. Y . 
l177dh:
	ld (hl),a			;177d	77 	w 
	ret			;177e	c9 	. 
sub_177fh:
	call sub_178ch		;177f	cd 8c 17 	. . . 
	ld c,a			;1782	4f 	O 
	ld b,000h		;1783	06 00 	. . 
	call sub_17a9h		;1785	cd a9 17 	. . . 
	ld (0f045h),hl		;1788	22 45 f0 	" E . 
	ret			;178b	c9 	. 
sub_178ch:
	ld hl,0f026h		;178c	21 26 f0 	! & . 
	ld c,(hl)			;178f	4e 	N 
	ld a,(0f043h)		;1790	3a 43 f0 	: C . 
l1793h:
	or a			;1793	b7 	. 
	rra			;1794	1f 	. 
	dec c			;1795	0d 	. 
	jr nz,l1793h		;1796	20 fb 	  . 
	ld b,a			;1798	47 	G 
	ld a,008h		;1799	3e 08 	> . 
	sub (hl)			;179b	96 	. 
	ld c,a			;179c	4f 	O 
	ld a,(0f042h)		;179d	3a 42 f0 	: B . 
l17a0h:
	dec c			;17a0	0d 	. 
	jr z,l17a7h		;17a1	28 04 	( . 
	or a			;17a3	b7 	. 
	rla			;17a4	17 	. 
	jr l17a0h		;17a5	18 f9 	. . 
l17a7h:
	add a,b			;17a7	80 	. 
	ret			;17a8	c9 	. 
sub_17a9h:
	ld hl,(0f050h)		;17a9	2a 50 f0 	* P . 
	ld de,l000eh+2		;17ac	11 10 00 	. . . 
	add hl,de			;17af	19 	. 
	add hl,bc			;17b0	09 	. 
	ld a,(0f02ah)		;17b1	3a 2a f0 	: * . 
	or a			;17b4	b7 	. 
	jr nz,l17beh		;17b5	20 07 	  . 
	call sub_0011h		;17b7	cd 11 00 	. . . 
	ld l,a			;17ba	6f 	o 
	ld h,000h		;17bb	26 00 	& . 
	ret			;17bd	c9 	. 
l17beh:
	add hl,bc			;17be	09 	. 
	call sub_0011h		;17bf	cd 11 00 	. . . 
	ld e,a			;17c2	5f 	_ 
	inc hl			;17c3	23 	# 
	call sub_0011h		;17c4	cd 11 00 	. . . 
	ld d,a			;17c7	57 	W 
	ex de,hl			;17c8	eb 	. 
	ret			;17c9	c9 	. 
sub_17cah:
	ld a,(0f026h)		;17ca	3a 26 f0 	: & . 
	ld hl,(0f045h)		;17cd	2a 45 f0 	* E . 
l17d0h:
	add hl,hl			;17d0	29 	) 
	dec a			;17d1	3d 	= 
	jr nz,l17d0h		;17d2	20 fc 	  . 
	ld (0f047h),hl		;17d4	22 47 f0 	" G . 
	ld a,(0f027h)		;17d7	3a 27 f0 	: ' . 
	ld c,a			;17da	4f 	O 
	ld a,(0f043h)		;17db	3a 43 f0 	: C . 
	and c			;17de	a1 	. 
	or l			;17df	b5 	. 
	ld l,a			;17e0	6f 	o 
	ld (0f045h),hl		;17e1	22 45 f0 	" E . 
	ret			;17e4	c9 	. 
sub_17e5h:
	call sub_18a8h		;17e5	cd a8 18 	. . . 
	call sub_0011h		;17e8	cd 11 00 	. . . 
	ld (0f043h),a		;17eb	32 43 f0 	2 C . 
	ex de,hl			;17ee	eb 	. 
	call sub_0011h		;17ef	cd 11 00 	. . . 
	ld (0f041h),a		;17f2	32 41 f0 	2 A . 
	call sub_18a0h		;17f5	cd a0 18 	. . . 
	call sub_0011h		;17f8	cd 11 00 	. . . 
	ld c,a			;17fb	4f 	O 
	ld a,(0f028h)		;17fc	3a 28 f0 	: ( . 
	and c			;17ff	a1 	. 
	ld (0f042h),a		;1800	32 42 f0 	2 B . 
sub_1803h:
	ret			;1803	c9 	. 
sub_1804h:
	inc c			;1804	0c 	. 
l1805h:
	dec c			;1805	0d 	. 
	ret z			;1806	c8 	. 
	srl h		;1807	cb 3c 	. < 
	rr l		;1809	cb 1d 	. . 
	jr l1805h		;180b	18 f8 	. . 
sub_180dh:
	inc c			;180d	0c 	. 
l180eh:
	dec c			;180e	0d 	. 
	ret z			;180f	c8 	. 
	add hl,hl			;1810	29 	) 
	jr l180eh		;1811	18 fb 	. . 
sub_1813h:
	push bc			;1813	c5 	. 
	ld a,(0f04fh)		;1814	3a 4f f0 	: O . 
l1817h:
	ld c,a			;1817	4f 	O 
	ld hl,l0001h		;1818	21 01 00 	! . . 
	call sub_180dh		;181b	cd 0d 18 	. . . 
	pop bc			;181e	c1 	. 
	ld a,c			;181f	79 	y 
	or l			;1820	b5 	. 
sub_1821h:
	ld l,a			;1821	6f 	o 
	ld a,b			;1822	78 	x 
	or h			;1823	b4 	. 
	ld h,a			;1824	67 	g 
	ret			;1825	c9 	. 
sub_1826h:
	ld hl,(0f010h)		;1826	2a 10 f0 	* . . 
	ld a,(0f04fh)		;1829	3a 4f f0 	: O . 
	ld c,a			;182c	4f 	O 
	call sub_1804h		;182d	cd 04 18 	. . . 
sub_1830h:
	bit 0,l		;1830	cb 45 	. E 
	ret			;1832	c9 	. 
sub_1833h:
	call sub_1895h		;1833	cd 95 18 	. . . 
sub_1836h:
	ld de,l0008h+1		;1836	11 09 00 	. . . 
	add hl,de			;1839	19 	. 
	call sub_0011h		;183a	cd 11 00 	. . . 
	rla			;183d	17 	. 
	ret nc			;183e	d0 	. 
	ld hl,l1848h		;183f	21 48 18 	! H . 
l1842h:
	call sub_1a2ch		;1842	cd 2c 1a 	. , . 
	jp 0f203h		;1845	c3 03 f2 	. . . 
l1848h:
	jr nz,$+128		;1848	20 7e 	  ~ 
	ld a,(07a20h)		;184a	3a 20 7a 	:   z 
	ld h,c			;184d	61 	a 
	ld (hl),b			;184e	70 	p 
	ld l,c			;184f	69 	i 
	ld (hl),e			;1850	73 	s 
	jr nz,$+114		;1851	20 70 	  p 
	ld l,h			;1853	6c 	l 
	ld l,c			;1854	69 	i 
	ld l,e			;1855	6b 	k 
	ld (hl),l			;1856	75 	u 
	jr nz,$+124		;1857	20 7a 	  z 
	ld h,c			;1859	61 	a 
	ld h,d			;185a	62 	b 
	ld (hl),d			;185b	72 	r 
	ld l,a			;185c	6f 	o 
	ld l,(hl)			;185d	6e 	n 
	ld l,c			;185e	69 	i 
	ld l,a			;185f	6f 	o 
	ld l,(hl)			;1860	6e 	n 
	ld a,c			;1861	79 	y 
	jr nz,$+47		;1862	20 2d 	  - 
	jr nz,l18b8h		;1864	20 52 	  R 
	cpl			;1866	2f 	/ 
	ld c,a			;1867	4f 	O 
	jr nz,l188ah		;1868	20 20 	    
	jr z,sub_188ch		;186a	28 20 	(   
	add hl,hl			;186c	29 	) 
	add a,b			;186d	80 	. 
	ld a,(hl)			;186e	7e 	~ 
	add a,b			;186f	80 	. 
l1870h:
	jr nz,l18f0h		;1870	20 7e 	  ~ 
	ld a,(07a20h)		;1872	3a 20 7a 	:   z 
l1875h:
	ld h,c			;1875	61 	a 
	ld (hl),b			;1876	70 	p 
	ld l,c			;1877	69 	i 
	ld (hl),e			;1878	73 	s 
	jr nz,l18f5h		;1879	20 7a 	  z 
	ld h,c			;187b	61 	a 
	ld h,d			;187c	62 	b 
	ld (hl),d			;187d	72 	r 
	ld l,a			;187e	6f 	o 
	ld l,(hl)			;187f	6e 	n 
	ld l,c			;1880	69 	i 
	ld l,a			;1881	6f 	o 
	ld l,(hl)			;1882	6e 	n 
	ld a,c			;1883	79 	y 
	jr nz,l18a6h		;1884	20 20 	    
	jr z,sub_18a8h		;1886	28 20 	(   
	add hl,hl			;1888	29 	) 
	add a,b			;1889	80 	. 
l188ah:
	ld a,(hl)			;188a	7e 	~ 
l188bh:
	add a,b			;188b	80 	. 
sub_188ch:
	call sub_1826h		;188c	cd 26 18 	. & . 
	ret z			;188f	c8 	. 
	ld hl,l1870h		;1890	21 70 18 	! p . 
	jr l1842h		;1893	18 ad 	. . 
sub_1895h:
	ld hl,(0f01ch)		;1895	2a 1c f0 	* . . 
	ld a,(0f049h)		;1898	3a 49 f0 	: I . 
sub_189bh:
	add a,l			;189b	85 	. 
	ld l,a			;189c	6f 	o 
	ret nc			;189d	d0 	. 
	inc h			;189e	24 	$ 
	ret			;189f	c9 	. 
sub_18a0h:
	ld hl,(0f050h)		;18a0	2a 50 f0 	* P . 
	ld de,l000bh+1		;18a3	11 0c 00 	. . . 
l18a6h:
	add hl,de			;18a6	19 	. 
	ret			;18a7	c9 	. 
sub_18a8h:
	ld hl,(0f050h)		;18a8	2a 50 f0 	* P . 
	ld de,l000eh+1		;18ab	11 0f 00 	. . . 
	add hl,de			;18ae	19 	. 
	ex de,hl			;18af	eb 	. 
	ld hl,sub_0011h		;18b0	21 11 00 	! . . 
	add hl,de			;18b3	19 	. 
	ret			;18b4	c9 	. 
sub_18b5h:
	ld hl,(0f050h)		;18b5	2a 50 f0 	* P . 
l18b8h:
	ld de,l000eh		;18b8	11 0e 00 	. . . 
	add hl,de			;18bb	19 	. 
	jp sub_0011h		;18bc	c3 11 00 	. . . 
sub_18bfh:
	call sub_18b5h		;18bf	cd b5 18 	. . . 
	ld (hl),000h		;18c2	36 00 	6 . 
	ret			;18c4	c9 	. 
sub_18c5h:
	ld de,(0f04ah)		;18c5	ed 5b 4a f0 	. [ J . 
	ld hl,(0f016h)		;18c9	2a 16 f0 	* . . 
	ld a,e			;18cc	7b 	{ 
	sub (hl)			;18cd	96 	. 
	inc hl			;18ce	23 	# 
	ld a,d			;18cf	7a 	z 
	sbc a,(hl)			;18d0	9e 	. 
	ret			;18d1	c9 	. 
sub_18d2h:
	call sub_18c5h		;18d2	cd c5 18 	. . . 
	ret c			;18d5	d8 	. 
	inc de			;18d6	13 	. 
	ld (hl),d			;18d7	72 	r 
	dec hl			;18d8	2b 	+ 
	ld (hl),e			;18d9	73 	s 
	ret			;18da	c9 	. 
sub_18dbh:
	ld a,e			;18db	7b 	{ 
	sub l			;18dc	95 	. 
	ld l,a			;18dd	6f 	o 
	ld a,d			;18de	7a 	z 
	sbc a,h			;18df	9c 	. 
	ld h,a			;18e0	67 	g 
	ret			;18e1	c9 	. 
sub_18e2h:
	ld de,(0f02bh)		;18e2	ed 5b 2b f0 	. [ + . 
	ld hl,(0f04ah)		;18e6	2a 4a f0 	* J . 
	inc hl			;18e9	23 	# 
	ld (0f04ah),hl		;18ea	22 4a f0 	" J . 
	call sub_18dbh		;18ed	cd db 18 	. . . 
l18f0h:
	jr nc,l18f9h		;18f0	30 07 	0 . 
sub_18f2h:
	ld hl,0ffffh		;18f2	21 ff ff 	! . . 
l18f5h:
	ld (0f04ah),hl		;18f5	22 4a f0 	" J . 
	ret			;18f8	c9 	. 
l18f9h:
	ld a,(0f04ah)		;18f9	3a 4a f0 	: J . 
	and 003h		;18fc	e6 03 	. . 
	ld b,005h		;18fe	06 05 	. . 
l1900h:
	add a,a			;1900	87 	. 
	djnz l1900h		;1901	10 fd 	. . 
	ld (0f049h),a		;1903	32 49 f0 	2 I . 
	or a			;1906	b7 	. 
	ret nz			;1907	c0 	. 
	push bc			;1908	c5 	. 
	call sub_1922h		;1909	cd 22 19 	. " . 
	call sub_144dh		;190c	cd 4d 14 	. M . 
	call sub_1a0eh		;190f	cd 0e 1a 	. . . 
	call sub_1447h		;1912	cd 47 14 	. G . 
	pop bc			;1915	c1 	. 
	jp l1752h		;1916	c3 52 17 	. R . 
sub_1919h:
	ld hl,0f04ah		;1919	21 4a f0 	! J . 
	ld a,(hl)			;191c	7e 	~ 
	inc hl			;191d	23 	# 
	cp (hl)			;191e	be 	. 
	ret nz			;191f	c0 	. 
	inc a			;1920	3c 	< 
	ret			;1921	c9 	. 
sub_1922h:
	ld hl,(0f04ah)		;1922	2a 4a f0 	* J . 
	ld c,002h		;1925	0e 02 	. . 
	call sub_1804h		;1927	cd 04 18 	. . . 
	ld (0f045h),hl		;192a	22 45 f0 	" E . 
	ld (0f04ch),hl		;192d	22 4c f0 	" L . 
sub_1930h:
	ld bc,(0f045h)		;1930	ed 4b 45 f0 	. K E . 
	ld hl,(0f01ah)		;1934	2a 1a f0 	* . . 
	ld e,(hl)			;1937	5e 	^ 
	inc hl			;1938	23 	# 
	ld d,(hl)			;1939	56 	V 
	ld hl,(0f018h)		;193a	2a 18 f0 	* . . 
	ld a,(hl)			;193d	7e 	~ 
	inc hl			;193e	23 	# 
	ld h,(hl)			;193f	66 	f 
	ld l,a			;1940	6f 	o 
l1941h:
	ld a,c			;1941	79 	y 
	sub e			;1942	93 	. 
	ld a,b			;1943	78 	x 
	sbc a,d			;1944	9a 	. 
	jr nc,l1955h		;1945	30 0e 	0 . 
l1947h:
	push hl			;1947	e5 	. 
	ld hl,(0f024h)		;1948	2a 24 f0 	* $ . 
	ld a,e			;194b	7b 	{ 
	sub l			;194c	95 	. 
	ld e,a			;194d	5f 	_ 
	ld a,d			;194e	7a 	z 
	sbc a,h			;194f	9c 	. 
	ld d,a			;1950	57 	W 
	pop hl			;1951	e1 	. 
	dec hl			;1952	2b 	+ 
	jr l1941h		;1953	18 ec 	. . 
l1955h:
	push hl			;1955	e5 	. 
	ld hl,(0f024h)		;1956	2a 24 f0 	* $ . 
	add hl,de			;1959	19 	. 
	jr c,l1967h		;195a	38 0b 	8 . 
	ld a,c			;195c	79 	y 
	sub l			;195d	95 	. 
	ld a,b			;195e	78 	x 
	sbc a,h			;195f	9c 	. 
	jr c,l1967h		;1960	38 05 	8 . 
	ex de,hl			;1962	eb 	. 
	pop hl			;1963	e1 	. 
	inc hl			;1964	23 	# 
	jr l1955h		;1965	18 ee 	. . 
l1967h:
	pop hl			;1967	e1 	. 
	push bc			;1968	c5 	. 
	push de			;1969	d5 	. 
	push hl			;196a	e5 	. 
	ex de,hl			;196b	eb 	. 
	ld hl,(0f031h)		;196c	2a 31 f0 	* 1 . 
	add hl,de			;196f	19 	. 
	ld b,h			;1970	44 	D 
	ld c,l			;1971	4d 	M 
	call 0f21eh		;1972	cd 1e f2 	. . . 
	pop de			;1975	d1 	. 
	ld hl,(0f018h)		;1976	2a 18 f0 	* . . 
	ld (hl),e			;1979	73 	s 
	inc hl			;197a	23 	# 
	ld (hl),d			;197b	72 	r 
sub_197ch:
	pop de			;197c	d1 	. 
	ld hl,(0f01ah)		;197d	2a 1a f0 	* . . 
	ld (hl),e			;1980	73 	s 
	inc hl			;1981	23 	# 
	ld (hl),d			;1982	72 	r 
	pop hl			;1983	e1 	. 
	or a			;1984	b7 	. 
	sbc hl,de		;1985	ed 52 	. R 
	ld c,l			;1987	4d 	M 
	ld b,h			;1988	44 	D 
	ld de,(0f033h)		;1989	ed 5b 33 f0 	. [ 3 . 
	call 0f230h		;198d	cd 30 f2 	. 0 . 
	ld c,l			;1990	4d 	M 
	ld b,h			;1991	44 	D 
	jp 0f221h		;1992	c3 21 f2 	. ! . 
sub_1995h:
	ld a,c			;1995	79 	y 
	and 007h		;1996	e6 07 	. . 
	inc a			;1998	3c 	< 
	ld e,a			;1999	5f 	_ 
	ld d,a			;199a	57 	W 
	ld a,c			;199b	79 	y 
	rrca			;199c	0f 	. 
	rrca			;199d	0f 	. 
	rrca			;199e	0f 	. 
	and 01fh		;199f	e6 1f 	. . 
	ld c,a			;19a1	4f 	O 
	ld a,b			;19a2	78 	x 
	add a,a			;19a3	87 	. 
	add a,a			;19a4	87 	. 
	add a,a			;19a5	87 	. 
	add a,a			;19a6	87 	. 
	add a,a			;19a7	87 	. 
	or c			;19a8	b1 	. 
	ld c,a			;19a9	4f 	O 
	ld a,b			;19aa	78 	x 
	rrca			;19ab	0f 	. 
	rrca			;19ac	0f 	. 
	rrca			;19ad	0f 	. 
	and 01fh		;19ae	e6 1f 	. . 
	ld b,a			;19b0	47 	G 
	ld hl,(0f022h)		;19b1	2a 22 f0 	* " . 
	add hl,bc			;19b4	09 	. 
	ld a,(hl)			;19b5	7e 	~ 
l19b6h:
	rlca			;19b6	07 	. 
	dec e			;19b7	1d 	. 
	jr nz,l19b6h		;19b8	20 fc 	  . 
	ret			;19ba	c9 	. 
sub_19bbh:
	call sub_1895h		;19bb	cd 95 18 	. . . 
	ld de,l000eh+2		;19be	11 10 00 	. . . 
	add hl,de			;19c1	19 	. 
	push bc			;19c2	c5 	. 
	ld c,011h		;19c3	0e 11 	. . 
l19c5h:
	pop de			;19c5	d1 	. 
	dec c			;19c6	0d 	. 
	ret z			;19c7	c8 	. 
	push de			;19c8	d5 	. 
	ld a,(0f02ah)		;19c9	3a 2a f0 	: * . 
	or a			;19cc	b7 	. 
	jr nz,l19d6h		;19cd	20 07 	  . 
	push bc			;19cf	c5 	. 
	push hl			;19d0	e5 	. 
	ld c,(hl)			;19d1	4e 	N 
	ld b,000h		;19d2	06 00 	. . 
	jr l19dch		;19d4	18 06 	. . 
l19d6h:
	dec c			;19d6	0d 	. 
	push bc			;19d7	c5 	. 
	ld c,(hl)			;19d8	4e 	N 
	inc hl			;19d9	23 	# 
	ld b,(hl)			;19da	46 	F 
	push hl			;19db	e5 	. 
l19dch:
	ld a,c			;19dc	79 	y 
	or b			;19dd	b0 	. 
	jr z,l19eah		;19de	28 0a 	( . 
	ld hl,(0f029h)		;19e0	2a 29 f0 	* ) . 
	ld a,l			;19e3	7d 	} 
	sub c			;19e4	91 	. 
	ld a,h			;19e5	7c 	| 
	sbc a,b			;19e6	98 	. 
	call nc,sub_19efh		;19e7	d4 ef 19 	. . . 
l19eah:
	pop hl			;19ea	e1 	. 
	inc hl			;19eb	23 	# 
	pop bc			;19ec	c1 	. 
	jr l19c5h		;19ed	18 d6 	. . 
sub_19efh:
	push de			;19ef	d5 	. 
	call sub_1995h		;19f0	cd 95 19 	. . . 
	and 0feh		;19f3	e6 fe 	. . 
	pop bc			;19f5	c1 	. 
	or c			;19f6	b1 	. 
sub_19f7h:
	rrca			;19f7	0f 	. 
	dec d			;19f8	15 	. 
	jr nz,sub_19f7h		;19f9	20 fc 	  . 
	ld (hl),a			;19fb	77 	w 
	ret			;19fc	c9 	. 
sub_19fdh:
	call 0f218h		;19fd	cd 18 f2 	. . . 
	xor a			;1a00	af 	. 
	ld hl,(0f018h)		;1a01	2a 18 f0 	* . . 
	ld (hl),a			;1a04	77 	w 
	inc hl			;1a05	23 	# 
	ld (hl),a			;1a06	77 	w 
	ld hl,(0f01ah)		;1a07	2a 1a f0 	* . . 
	ld (hl),a			;1a0a	77 	w 
	inc hl			;1a0b	23 	# 
	ld (hl),a			;1a0c	77 	w 
	ret			;1a0d	c9 	. 
sub_1a0eh:
	call 0f227h		;1a0e	cd 27 f2 	. ' . 
	jr l1a16h		;1a11	18 03 	. . 
sub_1a13h:
	call 0f22ah		;1a13	cd 2a f2 	. * . 
l1a16h:
	or a			;1a16	b7 	. 
	ret z			;1a17	c8 	. 
	ld hl,l1a23h		;1a18	21 23 1a 	! # . 
	call sub_1a2ch		;1a1b	cd 2c 1a 	. , . 
	or a			;1a1e	b7 	. 
	jp z,0f203h		;1a1f	ca 03 f2 	. . . 
	ret			;1a22	c9 	. 
l1a23h:
	ld a,(hl)			;1a23	7e 	~ 
	ld a,(l5262h)		;1a24	3a 62 52 	: b R 
	ld c,c			;1a27	49 	I 
	add a,b			;1a28	80 	. 
	ld d,d			;1a29	52 	R 
	ld c,c			;1a2a	49 	I 
	add a,b			;1a2b	80 	. 
sub_1a2ch:
	ld a,(0f04fh)		;1a2c	3a 4f f0 	: O . 
	add a,041h		;1a2f	c6 41 	. A 
	ld c,a			;1a31	4f 	O 
	jp l0008h		;1a32	c3 08 00 	. . . 
l1a35h:
	ld sp,0f13ah		;1a35	31 3a f1 	1 : . 
	ld ix,0f0b8h		;1a38	dd 21 b8 f0 	. ! . . 
	ld (ix-048h),010h		;1a3c	dd 36 b8 10 	. 6 . . 
	push bc			;1a40	c5 	. 
	ld a,c			;1a41	79 	y 
	rra			;1a42	1f 	. 
	rra			;1a43	1f 	. 
	rra			;1a44	1f 	. 
	rra			;1a45	1f 	. 
	and 00fh		;1a46	e6 0f 	. . 
	ld e,a			;1a48	5f 	_ 
	call sub_3445h		;1a49	cd 45 34 	. E 4 
	call sub_33d8h		;1a4c	cd d8 33 	. . 3 
	ld (0f06bh),a		;1a4f	32 6b f0 	2 k . 
	pop bc			;1a52	c1 	. 
	ld a,c			;1a53	79 	y 
	and 00fh		;1a54	e6 0f 	. . 
	ld (0f06eh),a		;1a56	32 6e f0 	2 n . 
	xor a			;1a59	af 	. 
	ld (0f06ch),a		;1a5a	32 6c f0 	2 l . 
	ld hl,0f13ah		;1a5d	21 3a f1 	! : . 
	bit 0,(hl)		;1a60	cb 46 	. F 
	jr z,l1a78h		;1a62	28 14 	( . 
	push hl			;1a64	e5 	. 
	call sub_1b2ah		;1a65	cd 2a 1b 	. * . 
	pop hl			;1a68	e1 	. 
	bit 1,(hl)		;1a69	cb 4e 	. N 
	jr z,l1a78h		;1a6b	28 0b 	( . 
	push hl			;1a6d	e5 	. 
	ld a,001h		;1a6e	3e 01 	> . 
	call sub_33d2h		;1a70	cd d2 33 	. . 3 
	ld a,h			;1a73	7c 	| 
	ld (0f06ch),a		;1a74	32 6c f0 	2 l . 
	pop hl			;1a77	e1 	. 
l1a78h:
	res 0,(hl)		;1a78	cb 86 	. . 
	res 1,(hl)		;1a7a	cb 8e 	. . 
	ld a,(0f06eh)		;1a7c	3a 6e f0 	: n . 
	call sub_33d2h		;1a7f	cd d2 33 	. . 3 
l1a82h:
	ld sp,0f13ah		;1a82	31 3a f1 	1 : . 
	xor a			;1a85	af 	. 
	ld (0f06ah),a		;1a86	32 6a f0 	2 j . 
	call sub_379ah		;1a89	cd 9a 37 	. . 7 
	call sub_33ddh		;1a8c	cd dd 33 	. . 3 
	add a,041h		;1a8f	c6 41 	. A 
	call sub_376bh		;1a91	cd 6b 37 	. k 7 
	call sub_3443h		;1a94	cd 43 34 	. C 4 
	and 01fh		;1a97	e6 1f 	. . 
	ld l,a			;1a99	6f 	o 
	ld h,000h		;1a9a	26 00 	& . 
	call nz,sub_388dh		;1a9c	c4 8d 38 	. . 8 
	ld a,03eh		;1a9f	3e 3e 	> > 
	call sub_376bh		;1aa1	cd 6b 37 	. k 7 
	call sub_1ed1h		;1aa4	cd d1 1e 	. . . 
	call sub_33e2h		;1aa7	cd e2 33 	. . 3 
	call sub_33ddh		;1aaa	cd dd 33 	. . 3 
	ld (0f06eh),a		;1aad	32 6e f0 	2 n . 
	call sub_2bd3h		;1ab0	cd d3 2b 	. . + 
	jp nz,l1b06h		;1ab3	c2 06 1b 	. . . 
	ld a,(0f076h)		;1ab6	3a 76 f0 	: v . 
	or a			;1ab9	b7 	. 
	jp nz,l1ad4h		;1aba	c2 d4 1a 	. . . 
	call sub_1c32h		;1abd	cd 32 1c 	. 2 . 
	ld hl,l1cbch		;1ac0	21 bc 1c 	! . . 
	ld e,a			;1ac3	5f 	_ 
	ld d,000h		;1ac4	16 00 	. . 
	add hl,de			;1ac6	19 	. 
	add hl,de			;1ac7	19 	. 
	ld a,(hl)			;1ac8	7e 	~ 
	inc hl			;1ac9	23 	# 
	ld h,(hl)			;1aca	66 	f 
	ld l,a			;1acb	6f 	o 
	jp (hl)			;1acc	e9 	. 
	set 0,(ix-04eh)		;1acd	dd cb b2 c6 	. . . . 
	call sub_2bd3h		;1ad1	cd d3 2b 	. . + 
l1ad4h:
	ld a,(0f077h)		;1ad4	3a 77 f0 	: w . 
	cp 020h		;1ad7	fe 20 	.   
	jr nz,l1b4dh		;1ad9	20 72 	  r 
	ld a,(0f076h)		;1adb	3a 76 f0 	: v . 
	or a			;1ade	b7 	. 
	jr z,l1aebh		;1adf	28 0a 	( . 
	dec a			;1ae1	3d 	= 
	ld (0f06eh),a		;1ae2	32 6e f0 	2 n . 
	call sub_1c2bh		;1ae5	cd 2b 1c 	. + . 
	call sub_33d2h		;1ae8	cd d2 33 	. . 3 
l1aebh:
	bit 0,(ix-04eh)		;1aeb	dd cb b2 46 	. . . F 
	jp nz,0f278h		;1aef	c2 78 f2 	. x . 
l1af2h:
	call sub_2bd3h		;1af2	cd d3 2b 	. . + 
	ld hl,0f077h		;1af5	21 77 f0 	! w . 
	ld a,(hl)			;1af8	7e 	~ 
	sub 020h		;1af9	d6 20 	.   
	dec hl			;1afb	2b 	+ 
	or (hl)			;1afc	b6 	. 
	jp nz,l1b06h		;1afd	c2 06 1b 	. . . 
	jp l1a82h		;1b00	c3 82 1a 	. . . 
l1b03h:
	call sub_343eh		;1b03	cd 3e 34 	. > 4 
l1b06h:
	call sub_379ah		;1b06	cd 9a 37 	. . 7 
	ld hl,(0f072h)		;1b09	2a 72 f0 	* r . 
l1b0ch:
	call sub_0011h		;1b0c	cd 11 00 	. . . 
	cp 020h		;1b0f	fe 20 	.   
	jr z,l1b1ch		;1b11	28 09 	( . 
	or a			;1b13	b7 	. 
	jr z,l1b1ch		;1b14	28 06 	( . 
	call sub_376bh		;1b16	cd 6b 37 	. k 7 
	inc hl			;1b19	23 	# 
	jr l1b0ch		;1b1a	18 f0 	. . 
l1b1ch:
	ld a,03fh		;1b1c	3e 3f 	> ? 
	call sub_376bh		;1b1e	cd 6b 37 	. k 7 
l1b21h:
	call sub_379ah		;1b21	cd 9a 37 	. . 7 
	call sub_1b2ah		;1b24	cd 2a 1b 	. * . 
	jp l1a82h		;1b27	c3 82 1a 	. . . 
sub_1b2ah:
	ld hl,0f06bh		;1b2a	21 6b f0 	! k . 
	ld a,(hl)			;1b2d	7e 	~ 
	or a			;1b2e	b7 	. 
	ret z			;1b2f	c8 	. 
	xor a			;1b30	af 	. 
	ld (hl),a			;1b31	77 	w 
	ld hl,0f203h		;1b32	21 03 f2 	! . . 
	ld (l0001h),hl		;1b35	22 01 00 	" . . 
	ld hl,0f006h		;1b38	21 06 f0 	! . . 
	ld (l0005h+1),hl		;1b3b	22 06 00 	" . . 
	call sub_33d2h		;1b3e	cd d2 33 	. . 3 
	call sub_1f39h		;1b41	cd 39 1f 	. 9 . 
	call sub_3414h		;1b44	cd 14 34 	. . 4 
	ld a,(0f06eh)		;1b47	3a 6e f0 	: n . 
	jp sub_33d2h		;1b4a	c3 d2 33 	. . 3 
l1b4dh:
	ld de,0f07fh		;1b4d	11 7f f0 	.  . 
	ld a,(de)			;1b50	1a 	. 
	cp 020h		;1b51	fe 20 	.   
	jp nz,l1b06h		;1b53	c2 06 1b 	. . . 
	ld hl,l1bbdh		;1b56	21 bd 1b 	! . . 
	ld bc,l0002h+1		;1b59	01 03 00 	. . . 
	ldir		;1b5c	ed b0 	. . 
	call sub_3443h		;1b5e	cd 43 34 	. C 4 
	ld (0f071h),a		;1b61	32 71 f0 	2 q . 
	call sub_33f3h		;1b64	cd f3 33 	. . 3 
sub_1b67h:
	jr nz,l1b73h		;1b67	20 0a 	  . 
	ld e,000h		;1b69	1e 00 	. . 
	call sub_3445h		;1b6b	cd 45 34 	. E 4 
	call sub_33f3h		;1b6e	cd f3 33 	. . 3 
	jr z,l1b03h		;1b71	28 90 	( . 
l1b73h:
	call sub_335bh		;1b73	cd 5b 33 	. [ 3 
	jp c,l1bc0h		;1b76	da c0 1b 	. . . 
	bit 0,(ix-04eh)		;1b79	dd cb b2 46 	. . . F 
	jr z,l1b95h		;1b7d	28 16 	( . 
	call sub_37dah		;1b7f	cd da 37 	. . 7 
	ld a,(bc)			;1b82	0a 	. 
	ld d,b			;1b83	50 	P 
	ld (hl),d			;1b84	72 	r 
	ld l,a			;1b85	6f 	o 
	ld h,a			;1b86	67 	g 
	ld (hl),d			;1b87	72 	r 
	ld h,c			;1b88	61 	a 
	ld l,l			;1b89	6d 	m 
	jr nz,$+50		;1b8a	20 30 	  0 
	ld sp,l3030h		;1b8c	31 30 30 	1 0 0 
	dec l			;1b8f	2d 	- 
	inc h			;1b90	24 	$ 
	dec hl			;1b91	2b 	+ 
	call sub_351dh		;1b92	cd 1d 35 	. . 5 
l1b95h:
	call sub_1bdbh		;1b95	cd db 1b 	. . . 
l1b98h:
	call sub_1c13h		;1b98	cd 13 1c 	. . . 
	bit 0,(ix-04eh)		;1b9b	dd cb b2 46 	. . . F 
	jp nz,0f278h		;1b9f	c2 78 f2 	. x . 
	jp 0f060h		;1ba2	c3 60 f0 	. ` . 
l1ba5h:
	ld sp,0f13ah		;1ba5	31 3a f1 	1 : . 
	xor a			;1ba8	af 	. 
	call sub_0017h		;1ba9	cd 17 00 	. . . 
	ld ix,0f0b8h		;1bac	dd 21 b8 f0 	. ! . . 
	ld (ix-048h),010h		;1bb0	dd 36 b8 10 	. 6 . . 
	call sub_1c2bh		;1bb4	cd 2b 1c 	. + . 
	call sub_33d2h		;1bb7	cd d2 33 	. . 3 
	jp l1a82h		;1bba	c3 82 1a 	. . . 
l1bbdh:
	ld b,e			;1bbd	43 	C 
	ld c,a			;1bbe	4f 	O 
	ld c,l			;1bbf	4d 	M 
l1bc0h:
	call sub_1bc9h		;1bc0	cd c9 1b 	. . . 
	call sub_343eh		;1bc3	cd 3e 34 	. > 4 
	jp l1af2h		;1bc6	c3 f2 1a 	. . . 
sub_1bc9h:
	call sub_37dah		;1bc9	cd da 37 	. . 7 
	ld a,(bc)			;1bcc	0a 	. 
	ld b,d			;1bcd	42 	B 
	ld (hl),d			;1bce	72 	r 
	ld h,c			;1bcf	61 	a 
	ld l,e			;1bd0	6b 	k 
	jr nz,l1c40h		;1bd1	20 6d 	  m 
	ld l,c			;1bd3	69 	i 
	ld h,l			;1bd4	65 	e 
	ld l,d			;1bd5	6a 	j 
	ld (hl),e			;1bd6	73 	s 
	ld h,e			;1bd7	63 	c 
	ld h,c			;1bd8	61 	a 
	inc h			;1bd9	24 	$ 
	ret			;1bda	c9 	. 
sub_1bdbh:
	ld hl,(0f074h)		;1bdb	2a 74 f0 	* t . 
	push hl			;1bde	e5 	. 
	ld hl,l005ch		;1bdf	21 5c 00 	! \ . 
	call sub_2bddh		;1be2	cd dd 2b 	. . + 
	ld hl,0006ch		;1be5	21 6c 00 	! l . 
	call sub_2bddh		;1be8	cd dd 2b 	. . + 
	xor a			;1beb	af 	. 
	ld (l007ch),a		;1bec	32 7c 00 	2 | . 
	pop hl			;1bef	e1 	. 
l1bf0h:
	call sub_0011h		;1bf0	cd 11 00 	. . . 
	or a			;1bf3	b7 	. 
	jr z,l1bfdh		;1bf4	28 07 	( . 
	cp 020h		;1bf6	fe 20 	.   
	jr z,l1bfdh		;1bf8	28 03 	( . 
	inc hl			;1bfa	23 	# 
	jr l1bf0h		;1bfb	18 f3 	. . 
l1bfdh:
	ld b,000h		;1bfd	06 00 	. . 
	ld de,l0081h		;1bff	11 81 00 	. . . 
l1c02h:
	call sub_0011h		;1c02	cd 11 00 	. . . 
	ld (de),a			;1c05	12 	. 
	or a			;1c06	b7 	. 
	jr z,l1c0eh		;1c07	28 05 	( . 
	inc b			;1c09	04 	. 
	inc hl			;1c0a	23 	# 
	inc de			;1c0b	13 	. 
	jr l1c02h		;1c0c	18 f4 	. . 
l1c0eh:
	ld a,b			;1c0e	78 	x 
	ld (l0080h),a		;1c0f	32 80 00 	2 . . 
l1c12h:
	ret			;1c12	c9 	. 
sub_1c13h:
	call sub_379ah		;1c13	cd 9a 37 	. . 7 
	call sub_33e2h		;1c16	cd e2 33 	. . 3 
	call sub_343eh		;1c19	cd 3e 34 	. > 4 
sub_1c1ch:
	call sub_3443h		;1c1c	cd 43 34 	. C 4 
	add a,a			;1c1f	87 	. 
	add a,a			;1c20	87 	. 
l1c21h:
	add a,a			;1c21	87 	. 
	add a,a			;1c22	87 	. 
	ld hl,0f06eh		;1c23	21 6e f0 	! n . 
	or (hl)			;1c26	b6 	. 
	ld (l0002h+2),a		;1c27	32 04 00 	2 . . 
	ret			;1c2a	c9 	. 
sub_1c2bh:
	ld a,(0f06eh)		;1c2b	3a 6e f0 	: n . 
	ld (l0002h+2),a		;1c2e	32 04 00 	2 . . 
	ret			;1c31	c9 	. 
sub_1c32h:
	ld a,(0fb7ch)		;1c32	3a 7c fb 	: | . 
	and 081h		;1c35	e6 81 	. . 
	cp 081h		;1c37	fe 81 	. . 
	jr nz,l1c56h		;1c39	20 1b 	  . 
	ld a,(0f078h)		;1c3b	3a 78 f0 	: x . 
	cp 020h		;1c3e	fe 20 	.   
l1c40h:
	jr nz,l1c56h		;1c40	20 14 	  . 
	ld a,(0f077h)		;1c42	3a 77 f0 	: w . 
	cp 020h		;1c45	fe 20 	.   
	jr z,l1c56h		;1c47	28 0d 	( . 
	ld hl,0f980h		;1c49	21 80 f9 	! . . 
	ld b,004h		;1c4c	06 04 	. . 
l1c4eh:
	cp (hl)			;1c4e	be 	. 
	jr z,l1c79h		;1c4f	28 28 	( ( 
	inc hl			;1c51	23 	# 
	inc hl			;1c52	23 	# 
	inc hl			;1c53	23 	# 
	djnz l1c4eh		;1c54	10 f8 	. . 
l1c56h:
	ld hl,l1c94h		;1c56	21 94 1c 	! . . 
	ld c,000h		;1c59	0e 00 	. . 
l1c5bh:
	ld a,c			;1c5b	79 	y 
	cp 008h		;1c5c	fe 08 	. . 
	ret nc			;1c5e	d0 	. 
	ld de,0f077h		;1c5f	11 77 f0 	. w . 
	ld b,005h		;1c62	06 05 	. . 
l1c64h:
	ld a,(de)			;1c64	1a 	. 
	cp (hl)			;1c65	be 	. 
	jr nz,l1c73h		;1c66	20 0b 	  . 
	inc de			;1c68	13 	. 
	inc hl			;1c69	23 	# 
	djnz l1c64h		;1c6a	10 f8 	. . 
	ld a,(de)			;1c6c	1a 	. 
	cp 020h		;1c6d	fe 20 	.   
	jr nz,l1c76h		;1c6f	20 05 	  . 
	ld a,c			;1c71	79 	y 
	ret			;1c72	c9 	. 
l1c73h:
	inc hl			;1c73	23 	# 
	djnz l1c73h		;1c74	10 fd 	. . 
l1c76h:
	inc c			;1c76	0c 	. 
	jr l1c5bh		;1c77	18 e2 	. . 
l1c79h:
	inc hl			;1c79	23 	# 
	ld e,(hl)			;1c7a	5e 	^ 
	inc hl			;1c7b	23 	# 
	ld d,(hl)			;1c7c	56 	V 
	push de			;1c7d	d5 	. 
	call sub_1bdbh		;1c7e	cd db 1b 	. . . 
	call sub_1c13h		;1c81	cd 13 1c 	. . . 
	ld a,001h		;1c84	3e 01 	> . 
	call sub_0017h		;1c86	cd 17 00 	. . . 
	jp c,0f203h		;1c89	da 03 f2 	. . . 
	pop hl			;1c8c	e1 	. 
	pop af			;1c8d	f1 	. 
	call 0f997h		;1c8e	cd 97 f9 	. . . 
	jp l1ba5h		;1c91	c3 a5 1b 	. . . 
l1c94h:
	ld b,h			;1c94	44 	D 
	ld c,c			;1c95	49 	I 
	ld d,d			;1c96	52 	R 
	jr nz,$+34		;1c97	20 20 	    
	ld b,l			;1c99	45 	E 
	ld d,d			;1c9a	52 	R 
	ld b,c			;1c9b	41 	A 
	jr nz,l1cbeh		;1c9c	20 20 	    
	ld d,h			;1c9e	54 	T 
	ld e,c			;1c9f	59 	Y 
	ld d,b			;1ca0	50 	P 
	ld b,l			;1ca1	45 	E 
	jr nz,l1cf7h		;1ca2	20 53 	  S 
	ld b,c			;1ca4	41 	A 
	ld d,(hl)			;1ca5	56 	V 
	ld b,l			;1ca6	45 	E 
	jr nz,l1cfbh		;1ca7	20 52 	  R 
	ld b,l			;1ca9	45 	E 
	ld c,(hl)			;1caa	4e 	N 
	jr nz,$+34		;1cab	20 20 	    
	ld d,l			;1cad	55 	U 
	ld d,e			;1cae	53 	S 
	ld b,l			;1caf	45 	E 
	ld d,d			;1cb0	52 	R 
	jr nz,l1cf7h		;1cb1	20 44 	  D 
	ld b,l			;1cb3	45 	E 
	ld b,d			;1cb4	42 	B 
	ld d,l			;1cb5	55 	U 
	ld b,a			;1cb6	47 	G 
	ld b,h			;1cb7	44 	D 
	jr nz,l1cdah		;1cb8	20 20 	    
	jr nz,l1cdch		;1cba	20 20 	    
l1cbch:
	adc a,01ch		;1cbc	ce 1c 	. . 
l1cbeh:
	ld a,h			;1cbe	7c 	| 
	dec e			;1cbf	1d 	. 
	jp z,0061dh		;1cc0	ca 1d 06 	. . . 
	ld e,04ch		;1cc3	1e 4c 	. L 
	ld e,0b9h		;1cc5	1e b9 	. . 
	ld e,0cdh		;1cc7	1e cd 	. . 
	ld a,(de)			;1cc9	1a 	. 
	ex de,hl			;1cca	eb 	. 
	rra			;1ccb	1f 	. 
	call nc,0cd1ah		;1ccc	d4 1a cd 	. . . 
	out (02bh),a		;1ccf	d3 2b 	. + 
	ld hl,0f077h		;1cd1	21 77 f0 	! w . 
	ld a,(hl)			;1cd4	7e 	~ 
	cp 020h		;1cd5	fe 20 	.   
	call z,sub_2a84h		;1cd7	cc 84 2a 	. . * 
l1cdah:
	ld e,000h		;1cda	1e 00 	. . 
l1cdch:
	push de			;1cdc	d5 	. 
	call sub_340ch		;1cdd	cd 0c 34 	. . 4 
l1ce0h:
	jp z,l1d65h		;1ce0	ca 65 1d 	. e . 
l1ce3h:
	jp z,l1d68h		;1ce3	ca 68 1d 	. h . 
	ld a,(0f06dh)		;1ce6	3a 6d f0 	: m . 
	rrca			;1ce9	0f 	. 
	rrca			;1cea	0f 	. 
	rrca			;1ceb	0f 	. 
	and 060h		;1cec	e6 60 	. ` 
	ld c,a			;1cee	4f 	O 
	ld a,00ah		;1cef	3e 0a 	> . 
	call sub_1fe1h		;1cf1	cd e1 1f 	. . . 
	rla			;1cf4	17 	. 
	jr c,l1d58h		;1cf5	38 61 	8 a 
l1cf7h:
	pop de			;1cf7	d1 	. 
	ld a,e			;1cf8	7b 	{ 
	inc e			;1cf9	1c 	. 
	push de			;1cfa	d5 	. 
l1cfbh:
	and 003h		;1cfb	e6 03 	. . 
	push af			;1cfd	f5 	. 
	jr nz,l1d1bh		;1cfe	20 1b 	  . 
	call sub_379ah		;1d00	cd 9a 37 	. . 7 
	ld a,(0f076h)		;1d03	3a 76 f0 	: v . 
	dec a			;1d06	3d 	= 
	jp p,l1d0fh		;1d07	f2 0f 1d 	. . . 
	push bc			;1d0a	c5 	. 
	call sub_33ddh		;1d0b	cd dd 33 	. . 3 
	pop bc			;1d0e	c1 	. 
l1d0fh:
	add a,041h		;1d0f	c6 41 	. A 
	call sub_376bh		;1d11	cd 6b 37 	. k 7 
	ld a,03ah		;1d14	3e 3a 	> : 
	call sub_376bh		;1d16	cd 6b 37 	. k 7 
	jr l1d23h		;1d19	18 08 	. . 
l1d1bh:
	call sub_3769h		;1d1b	cd 69 37 	. i 7 
	ld a,03ah		;1d1e	3e 3a 	> : 
	call sub_376bh		;1d20	cd 6b 37 	. k 7 
l1d23h:
	call sub_3769h		;1d23	cd 69 37 	. i 7 
	ld b,001h		;1d26	06 01 	. . 
l1d28h:
	ld a,b			;1d28	78 	x 
	call sub_1fe1h		;1d29	cd e1 1f 	. . . 
	and 07fh		;1d2c	e6 7f 	.  
	cp 020h		;1d2e	fe 20 	.   
	jr nz,l1d45h		;1d30	20 13 	  . 
	pop af			;1d32	f1 	. 
	push af			;1d33	f5 	. 
	cp 003h		;1d34	fe 03 	. . 
	jr nz,l1d43h		;1d36	20 0b 	  . 
	ld a,009h		;1d38	3e 09 	> . 
	call sub_1fe1h		;1d3a	cd e1 1f 	. . . 
	and 07fh		;1d3d	e6 7f 	.  
	cp 020h		;1d3f	fe 20 	.   
	jr z,l1d57h		;1d41	28 14 	( . 
l1d43h:
	ld a,020h		;1d43	3e 20 	>   
l1d45h:
	call sub_376bh		;1d45	cd 6b 37 	. k 7 
	inc b			;1d48	04 	. 
	ld a,b			;1d49	78 	x 
sub_1d4ah:
	cp 00ch		;1d4a	fe 0c 	. . 
	jr nc,l1d57h		;1d4c	30 09 	0 . 
	cp 009h		;1d4e	fe 09 	. . 
	jr nz,l1d28h		;1d50	20 d6 	  . 
sub_1d52h:
	call sub_3769h		;1d52	cd 69 37 	. i 7 
	jr l1d28h		;1d55	18 d1 	. . 
l1d57h:
	pop af			;1d57	f1 	. 
l1d58h:
	call sub_36f8h		;1d58	cd f8 36 	. . 6 
	jr nz,l1d68h		;1d5b	20 0b 	  . 
	ld c,012h		;1d5d	0e 12 	. . 
	call sub_33fch		;1d5f	cd fc 33 	. . 3 
	jp l1ce3h		;1d62	c3 e3 1c 	. . . 
l1d65h:
	call sub_1d6ch		;1d65	cd 6c 1d 	. l . 
l1d68h:
	pop de			;1d68	d1 	. 
	jp l1af2h		;1d69	c3 f2 1a 	. . . 
sub_1d6ch:
	call sub_37dah		;1d6c	cd da 37 	. . 7 
l1d6fh:
	ld a,(bc)			;1d6f	0a 	. 
	ld b,d			;1d70	42 	B 
	ld (hl),d			;1d71	72 	r 
	ld h,c			;1d72	61 	a 
	ld l,e			;1d73	6b 	k 
	jr nz,l1de6h		;1d74	20 70 	  p 
	ld l,h			;1d76	6c 	l 
	ld l,c			;1d77	69 	i 
	ld l,e			;1d78	6b 	k 
	ld (hl),l			;1d79	75 	u 
	inc h			;1d7a	24 	$ 
	ret			;1d7b	c9 	. 
	call sub_2bd3h		;1d7c	cd d3 2b 	. . + 
	cp 00bh		;1d7f	fe 0b 	. . 
	jr nz,l1dc0h		;1d81	20 3d 	  = 
	call sub_37dah		;1d83	cd da 37 	. . 7 
	ld a,(bc)			;1d86	0a 	. 
	ld d,a			;1d87	57 	W 
	ld (hl),e			;1d88	73 	s 
	ld a,d			;1d89	7a 	z 
	ld a,c			;1d8a	79 	y 
	ld (hl),e			;1d8b	73 	s 
	ld (hl),h			;1d8c	74 	t 
	ld l,e			;1d8d	6b 	k 
	ld l,c			;1d8e	69 	i 
l1d8fh:
	ld h,l			;1d8f	65 	e 
	jr nz,$+42		;1d90	20 28 	  ( 
	ld d,h			;1d92	54 	T 
	cpl			;1d93	2f 	/ 
	ld c,(hl)			;1d94	4e 	N 
	add hl,hl			;1d95	29 	) 
	jr nz,$+65		;1d96	20 3f 	  ? 
	inc h			;1d98	24 	$ 
	ld a,(0f076h)		;1d99	3a 76 f0 	: v . 
	push af			;1d9c	f5 	. 
	call sub_1ed1h		;1d9d	cd d1 1e 	. . . 
	pop af			;1da0	f1 	. 
	ld hl,0f076h		;1da1	21 76 f0 	! v . 
	ld (hl),a			;1da4	77 	w 
	inc hl			;1da5	23 	# 
	ld b,00bh		;1da6	06 0b 	. . 
l1da8h:
	ld (hl),03fh		;1da8	36 3f 	6 ? 
	inc hl			;1daa	23 	# 
	djnz l1da8h		;1dab	10 fb 	. . 
	ld hl,0f098h		;1dad	21 98 f0 	! . . 
	ld a,(hl)			;1db0	7e 	~ 
	dec a			;1db1	3d 	= 
	jp nz,l1a82h		;1db2	c2 82 1a 	. . . 
	inc hl			;1db5	23 	# 
	ld a,(hl)			;1db6	7e 	~ 
	cp 054h		;1db7	fe 54 	. T 
	jp nz,l1a82h		;1db9	c2 82 1a 	. . . 
	inc hl			;1dbc	23 	# 
	ld (0f074h),hl		;1dbd	22 74 f0 	" t . 
l1dc0h:
	call sub_3414h		;1dc0	cd 14 34 	. . 4 
	inc a			;1dc3	3c 	< 
	call z,sub_1d6ch		;1dc4	cc 6c 1d 	. l . 
	jp l1af2h		;1dc7	c3 f2 1a 	. . . 
	call sub_2bd3h		;1dca	cd d3 2b 	. . + 
	jp nz,l1b06h		;1dcd	c2 06 1b 	. . . 
	call sub_33f3h		;1dd0	cd f3 33 	. . 3 
	jp z,l1b06h		;1dd3	ca 06 1b 	. . . 
	call sub_379ah		;1dd6	cd 9a 37 	. . 7 
	ld hl,0f06fh		;1dd9	21 6f f0 	! o . 
	ld (hl),0ffh		;1ddc	36 ff 	6 . 
l1ddeh:
	ld hl,0f06fh		;1dde	21 6f f0 	! o . 
	ld a,(hl)			;1de1	7e 	~ 
	cp 080h		;1de2	fe 80 	. . 
	jr c,l1df0h		;1de4	38 0a 	8 . 
l1de6h:
	push hl			;1de6	e5 	. 
	call sub_3420h		;1de7	cd 20 34 	.   4 
	pop hl			;1dea	e1 	. 
	jp nz,l1af2h		;1deb	c2 f2 1a 	. . . 
	xor a			;1dee	af 	. 
	ld (hl),a			;1def	77 	w 
l1df0h:
	inc (hl)			;1df0	34 	4 
	ld c,000h		;1df1	0e 00 	. . 
	call sub_1fe1h		;1df3	cd e1 1f 	. . . 
	cp 01ah		;1df6	fe 1a 	. . 
	jp z,l1af2h		;1df8	ca f2 1a 	. . . 
	call sub_376bh		;1dfb	cd 6b 37 	. k 7 
	call sub_36f8h		;1dfe	cd f8 36 	. . 6 
	jp nz,l1af2h		;1e01	c2 f2 1a 	. . . 
	jr l1ddeh		;1e04	18 d8 	. . 
	call sub_1fadh		;1e06	cd ad 1f 	. . . 
	push bc			;1e09	c5 	. 
	call sub_2bd3h		;1e0a	cd d3 2b 	. . + 
	jp nz,l1b06h		;1e0d	c2 06 1b 	. . . 
	ld de,0f076h		;1e10	11 76 f0 	. v . 
	call sub_342ah		;1e13	cd 2a 34 	. * 4 
	jr z,l1e43h		;1e16	28 2b 	( + 
	xor a			;1e18	af 	. 
	ld (0f096h),a		;1e19	32 96 f0 	2 . . 
	pop hl			;1e1c	e1 	. 
	ld h,000h		;1e1d	26 00 	& . 
	add hl,hl			;1e1f	29 	) 
	ld de,l0100h		;1e20	11 00 01 	. . . 
l1e23h:
	ld a,h			;1e23	7c 	| 
	or l			;1e24	b5 	. 
	jr z,l1e3dh		;1e25	28 16 	( . 
	dec hl			;1e27	2b 	+ 
	push hl			;1e28	e5 	. 
	ld hl,l0080h		;1e29	21 80 00 	! . . 
	add hl,de			;1e2c	19 	. 
	push hl			;1e2d	e5 	. 
	call sub_33e5h		;1e2e	cd e5 33 	. . 3 
	ld de,0f076h		;1e31	11 76 f0 	. v . 
	call sub_341ch		;1e34	cd 1c 34 	. . 4 
	pop de			;1e37	d1 	. 
	pop hl			;1e38	e1 	. 
	jr nz,l1e43h		;1e39	20 08 	  . 
	jr l1e23h		;1e3b	18 e6 	. . 
l1e3dh:
	call sub_3404h		;1e3d	cd 04 34 	. . 4 
	inc a			;1e40	3c 	< 
	jr nz,l1e46h		;1e41	20 03 	  . 
l1e43h:
	call sub_1bc9h		;1e43	cd c9 1b 	. . . 
l1e46h:
	call sub_33e2h		;1e46	cd e2 33 	. . 3 
	jp l1af2h		;1e49	c3 f2 1a 	. . . 
	call sub_2bd3h		;1e4c	cd d3 2b 	. . + 
	jp nz,l1b06h		;1e4f	c2 06 1b 	. . . 
	call sub_340ch		;1e52	cd 0c 34 	. . 4 
	jr nz,l1ea4h		;1e55	20 4d 	  M 
	ld hl,0f076h		;1e57	21 76 f0 	! v . 
sub_1e5ah:
	ld de,0f086h		;1e5a	11 86 f0 	. . . 
	ld bc,l000eh+2		;1e5d	01 10 00 	. . . 
	ldir		;1e60	ed b0 	. . 
	ld hl,(0f074h)		;1e62	2a 74 f0 	* t . 
	call sub_2c4bh		;1e65	cd 4b 2c 	. K , 
	cp 03dh		;1e68	fe 3d 	. = 
	jr z,l1e71h		;1e6a	28 05 	( . 
	cp 05fh		;1e6c	fe 5f 	. _ 
	jp nz,l1b06h		;1e6e	c2 06 1b 	. . . 
l1e71h:
	inc hl			;1e71	23 	# 
	ld (0f074h),hl		;1e72	22 74 f0 	" t . 
sub_1e75h:
	call sub_2bd3h		;1e75	cd d3 2b 	. . + 
	jp nz,l1b06h		;1e78	c2 06 1b 	. . . 
	ld a,(0f06eh)		;1e7b	3a 6e f0 	: n . 
	inc a			;1e7e	3c 	< 
	ld b,a			;1e7f	47 	G 
	ld a,(0f076h)		;1e80	3a 76 f0 	: v . 
	or a			;1e83	b7 	. 
	ld c,a			;1e84	4f 	O 
	jr nz,l1e88h		;1e85	20 01 	  . 
	ld c,b			;1e87	48 	H 
l1e88h:
	ld a,(0f086h)		;1e88	3a 86 f0 	: . . 
	or a			;1e8b	b7 	. 
	jr nz,l1e8fh		;1e8c	20 01 	  . 
	ld a,b			;1e8e	78 	x 
l1e8fh:
	cp c			;1e8f	b9 	. 
	jp nz,l1b06h		;1e90	c2 06 1b 	. . . 
	call sub_340ch		;1e93	cd 0c 34 	. . 4 
sub_1e96h:
	jr z,l1e9eh		;1e96	28 06 	( . 
	call sub_3436h		;1e98	cd 36 34 	. 6 4 
	jp l1af2h		;1e9b	c3 f2 1a 	. . . 
l1e9eh:
	call sub_1d6ch		;1e9e	cd 6c 1d 	. l . 
	jp l1af2h		;1ea1	c3 f2 1a 	. . . 
l1ea4h:
	call sub_37dah		;1ea4	cd da 37 	. . 7 
	ld a,(bc)			;1ea7	0a 	. 
	ld d,b			;1ea8	50 	P 
	ld l,h			;1ea9	6c 	l 
	ld l,c			;1eaa	69 	i 
	ld l,e			;1eab	6b 	k 
	jr nz,$+107		;1eac	20 69 	  i 
	ld (hl),e			;1eae	73 	s 
	ld (hl),h			;1eaf	74 	t 
	ld l,(hl)			;1eb0	6e 	n 
	ld l,c			;1eb1	69 	i 
	ld h,l			;1eb2	65 	e 
	ld l,d			;1eb3	6a 	j 
	ld h,l			;1eb4	65 	e 
	inc h			;1eb5	24 	$ 
	jp l1af2h		;1eb6	c3 f2 1a 	. . . 
	call sub_1fadh		;1eb9	cd ad 1f 	. . . 
	ld a,c			;1ebc	79 	y 
	cp 010h		;1ebd	fe 10 	. . 
	jp nc,l1b06h		;1ebf	d2 06 1b 	. . . 
	ld e,a			;1ec2	5f 	_ 
	ld a,(0f077h)		;1ec3	3a 77 f0 	: w . 
	cp 020h		;1ec6	fe 20 	.   
	jp z,l1b06h		;1ec8	ca 06 1b 	. . . 
sub_1ecbh:
	call sub_3445h		;1ecb	cd 45 34 	. E 4 
	jp l1af2h		;1ece	c3 f2 1a 	. . . 
sub_1ed1h:
	ld a,(0f06ch)		;1ed1	3a 6c f0 	: l . 
	or a			;1ed4	b7 	. 
	jp nz,l1f58h		;1ed5	c2 58 1f 	. X . 
	ld a,(0f06bh)		;1ed8	3a 6b f0 	: k . 
	or a			;1edb	b7 	. 
	jp z,l1f7eh		;1edc	ca 7e 1f 	. ~ . 
	ld a,(0f06eh)		;1edf	3a 6e f0 	: n . 
	or a			;1ee2	b7 	. 
	ld a,000h		;1ee3	3e 00 	> . 
	call nz,sub_33d2h		;1ee5	c4 d2 33 	. . 3 
	call sub_1f39h		;1ee8	cd 39 1f 	. 9 . 
	call sub_33f3h		;1eeb	cd f3 33 	. . 3 
	jp z,l1f7eh		;1eee	ca 7e 1f 	. ~ . 
	ld a,(0f085h)		;1ef1	3a 85 f0 	: . . 
	dec a			;1ef4	3d 	= 
	ld (0f096h),a		;1ef5	32 96 f0 	2 . . 
	ld de,0f098h		;1ef8	11 98 f0 	. . . 
	call sub_33e5h		;1efb	cd e5 33 	. . 3 
	call sub_3420h		;1efe	cd 20 34 	.   4 
	push af			;1f01	f5 	. 
	call sub_33e2h		;1f02	cd e2 33 	. . 3 
	pop af			;1f05	f1 	. 
	jp nz,l1f7eh		;1f06	c2 7e 1f 	. ~ . 
	ld hl,0f084h		;1f09	21 84 f0 	! . . 
	ld (hl),000h		;1f0c	36 00 	6 . 
	inc hl			;1f0e	23 	# 
	dec (hl)			;1f0f	35 	5 
	call sub_3404h		;1f10	cd 04 34 	. . 4 
	jp z,l1f7eh		;1f13	ca 7e 1f 	. ~ . 
	ld a,(0f06eh)		;1f16	3a 6e f0 	: n . 
	or a			;1f19	b7 	. 
	call nz,sub_33d2h		;1f1a	c4 d2 33 	. . 3 
l1f1dh:
	ld hl,0f099h		;1f1d	21 99 f0 	! . . 
	ld b,080h		;1f20	06 80 	. . 
l1f22h:
	res 7,(hl)		;1f22	cb be 	. . 
	ld a,(hl)			;1f24	7e 	~ 
	inc hl			;1f25	23 	# 
	or a			;1f26	b7 	. 
	jr z,l1f2eh		;1f27	28 05 	( . 
	call sub_376bh		;1f29	cd 6b 37 	. k 7 
	djnz l1f22h		;1f2c	10 f4 	. . 
l1f2eh:
	call sub_36f8h		;1f2e	cd f8 36 	. . 6 
	jr z,l1f92h		;1f31	28 5f 	( _ 
	call sub_1b2ah		;1f33	cd 2a 1b 	. * . 
	jp l1a82h		;1f36	c3 82 1a 	. . . 
sub_1f39h:
	ld hl,l1f4ch		;1f39	21 4c 1f 	! L . 
	ld de,0f076h		;1f3c	11 76 f0 	. v . 
	ld bc,l000bh+1		;1f3f	01 0c 00 	. . . 
	ldir		;1f42	ed b0 	. . 
	ld b,015h		;1f44	06 15 	. . 
l1f46h:
	xor a			;1f46	af 	. 
	ld (de),a			;1f47	12 	. 
	inc de			;1f48	13 	. 
	djnz l1f46h		;1f49	10 fb 	. . 
	ret			;1f4b	c9 	. 
l1f4ch:
	nop			;1f4c	00 	. 
	inc h			;1f4d	24 	$ 
	inc h			;1f4e	24 	$ 
	inc h			;1f4f	24 	$ 
	jr nz,l1f72h		;1f50	20 20 	    
	jr nz,l1f74h		;1f52	20 20 	    
	jr nz,l1fa9h		;1f54	20 53 	  S 
	ld d,l			;1f56	55 	U 
	ld b,d			;1f57	42 	B 
l1f58h:
	ld hl,l1f69h		;1f58	21 69 1f 	! i . 
	ld de,0f098h		;1f5b	11 98 f0 	. . . 
	ld bc,sub_0017h+2		;1f5e	01 19 00 	. . . 
	ldir		;1f61	ed b0 	. . 
	xor a			;1f63	af 	. 
	ld (0f06ch),a		;1f64	32 6c f0 	2 l . 
	jr l1f1dh		;1f67	18 b4 	. . 
l1f69h:
	inc de			;1f69	13 	. 
	ld b,d			;1f6a	42 	B 
	ld a,(l5553h)		;1f6b	3a 53 55 	: S U 
	ld b,d			;1f6e	42 	B 
	ld c,l			;1f6f	4d 	M 
	ld c,c			;1f70	49 	I 
	ld d,h			;1f71	54 	T 
l1f72h:
	jr nz,$+68		;1f72	20 42 	  B 
l1f74h:
	ld a,(l5541h)		;1f74	3a 41 55 	: A U 
	ld d,h			;1f77	54 	T 
	ld c,a			;1f78	4f 	O 
	ld b,l			;1f79	45 	E 
	ld e,b			;1f7a	58 	X 
	ld b,l			;1f7b	45 	E 
	ld b,e			;1f7c	43 	C 
	nop			;1f7d	00 	. 
l1f7eh:
	call sub_1b2ah		;1f7e	cd 2a 1b 	. * . 
	call sub_1c1ch		;1f81	cd 1c 1c 	. . . 
	ld c,00ah		;1f84	0e 0a 	. . 
	ld de,0f097h		;1f86	11 97 f0 	. . . 
	ld a,07fh		;1f89	3e 7f 	>  
	ld (de),a			;1f8b	12 	. 
	call l0005h		;1f8c	cd 05 00 	. . . 
	call sub_1c2bh		;1f8f	cd 2b 1c 	. + . 
l1f92h:
	ld hl,0f098h		;1f92	21 98 f0 	! . . 
	ld b,(hl)			;1f95	46 	F 
l1f96h:
	inc hl			;1f96	23 	# 
	ld a,b			;1f97	78 	x 
	or a			;1f98	b7 	. 
	jr z,l1fa5h		;1f99	28 0a 	( . 
	ld a,(hl)			;1f9b	7e 	~ 
	res 7,a		;1f9c	cb bf 	. . 
	call sub_373fh		;1f9e	cd 3f 37 	. ? 7 
	ld (hl),a			;1fa1	77 	w 
	dec b			;1fa2	05 	. 
	jr l1f96h		;1fa3	18 f1 	. . 
l1fa5h:
	ld (hl),a			;1fa5	77 	w 
	ld hl,0f099h		;1fa6	21 99 f0 	! . . 
l1fa9h:
	ld (0f074h),hl		;1fa9	22 74 f0 	" t . 
	ret			;1fac	c9 	. 
sub_1fadh:
	call sub_2bd3h		;1fad	cd d3 2b 	. . + 
	ld a,(0f076h)		;1fb0	3a 76 f0 	: v . 
	or a			;1fb3	b7 	. 
	jp nz,l1b06h		;1fb4	c2 06 1b 	. . . 
	ld hl,0f077h		;1fb7	21 77 f0 	! w . 
	ld bc,l0b00h		;1fba	01 00 0b 	. . . 
l1fbdh:
	ld a,(hl)			;1fbd	7e 	~ 
	cp 020h		;1fbe	fe 20 	.   
	ret z			;1fc0	c8 	. 
	inc hl			;1fc1	23 	# 
	sub 030h		;1fc2	d6 30 	. 0 
	cp 00ah		;1fc4	fe 0a 	. . 
	jp nc,l1b06h		;1fc6	d2 06 1b 	. . . 
	ld d,a			;1fc9	57 	W 
	ld a,c			;1fca	79 	y 
	cp 01ah		;1fcb	fe 1a 	. . 
	jp nc,l1b06h		;1fcd	d2 06 1b 	. . . 
	add a,a			;1fd0	87 	. 
	add a,a			;1fd1	87 	. 
	add a,c			;1fd2	81 	. 
	add a,a			;1fd3	87 	. 
	add a,d			;1fd4	82 	. 
	jp c,l1b06h		;1fd5	da 06 1b 	. . . 
	ld c,a			;1fd8	4f 	O 
	djnz l1fbdh		;1fd9	10 e2 	. . 
	ret			;1fdb	c9 	. 
sub_1fdch:
	add a,l			;1fdc	85 	. 
	ld l,a			;1fdd	6f 	o 
	ret nc			;1fde	d0 	. 
	inc h			;1fdf	24 	$ 
	ret			;1fe0	c9 	. 
sub_1fe1h:
	ld hl,l0080h		;1fe1	21 80 00 	! . . 
	add a,c			;1fe4	81 	. 
	call sub_1fdch		;1fe5	cd dc 1f 	. . . 
	jp sub_0011h		;1fe8	c3 11 00 	. . . 
	ld hl,0ffadh		;1feb	21 ad ff 	! . . 
	res 5,(hl)		;1fee	cb ae 	. . 
	call sub_2bd3h		;1ff0	cd d3 2b 	. . + 
	ld hl,0f097h		;1ff3	21 97 f0 	! . . 
	ld b,050h		;1ff6	06 50 	. P 
l1ff8h:
	ld (hl),000h		;1ff8	36 00 	6 . 
	inc hl			;1ffa	23 	# 
	djnz l1ff8h		;1ffb	10 fb 	. . 
	call sub_2a81h		;1ffd	cd 81 2a 	. . * 
	ld hl,l0100h		;2000	21 00 01 	! . . 
	ld (0f0e2h),hl		;2003	22 e2 f0 	" . . 
	xor a			;2006	af 	. 
	ld (0f070h),a		;2007	32 70 f0 	2 p . 
	ld hl,0f076h		;200a	21 76 f0 	! v . 
	ld a,(hl)			;200d	7e 	~ 
	ld (0f0b8h),a		;200e	32 b8 f0 	2 . . 
	inc hl			;2011	23 	# 
	ld a,(hl)			;2012	7e 	~ 
	cp 020h		;2013	fe 20 	.   
	jr z,l201fh		;2015	28 08 	( . 
	ld bc,l000bh		;2017	01 0b 00 	. . . 
	ld de,0f0e7h		;201a	11 e7 f0 	. . . 
	ldir		;201d	ed b0 	. . 
l201fh:
	call sub_33ddh		;201f	cd dd 33 	. . 3 
	ld (0f0bah),a		;2022	32 ba f0 	2 . . 
	inc a			;2025	3c 	< 
	ld c,a			;2026	4f 	O 
	ld a,(0f0b8h)		;2027	3a b8 f0 	: . . 
	or a			;202a	b7 	. 
	jr nz,l2030h		;202b	20 03 	  . 
	ld (ix+000h),c		;202d	dd 71 00 	. q . 
l2030h:
	call sub_3443h		;2030	cd 43 34 	. C 4 
	ld (0f071h),a		;2033	32 71 f0 	2 q . 
	xor a			;2036	af 	. 
	call sub_0017h		;2037	cd 17 00 	. . . 
	call sub_33d8h		;203a	cd d8 33 	. . 3 
	call sub_3123h		;203d	cd 23 31 	. # 1 
l2040h:
	call sub_33e2h		;2040	cd e2 33 	. . 3 
	res 6,(ix-048h)		;2043	dd cb b8 b6 	. . . . 
	ld (ix+00dh),000h		;2047	dd 36 0d 00 	. 6 . . 
	ld (ix+015h),000h		;204b	dd 36 15 00 	. 6 . . 
	ld a,(0f0cch)		;204f	3a cc f0 	: . . 
	or a			;2052	b7 	. 
	jr z,l2085h		;2053	28 30 	( 0 
	call sub_3716h		;2055	cd 16 37 	. . 7 
	jr z,l2082h		;2058	28 28 	( ( 
	call sub_36feh		;205a	cd fe 36 	. . 6 
	call sub_373fh		;205d	cd 3f 37 	. ? 7 
	ld (0f0cdh),a		;2060	32 cd f0 	2 . . 
	ld hl,l2075h		;2063	21 75 20 	! u   
	ld c,a			;2066	4f 	O 
l2067h:
	ld a,(hl)			;2067	7e 	~ 
	inc hl			;2068	23 	# 
	or a			;2069	b7 	. 
	jr z,l2082h		;206a	28 16 	( . 
	cp c			;206c	b9 	. 
	jr nz,l2067h		;206d	20 f8 	  . 
	call sub_318bh		;206f	cd 8b 31 	. . 1 
	jp l21d6h		;2072	c3 d6 21 	. . ! 
l2075h:
	inc d			;2075	14 	. 
	dec d			;2076	15 	. 
	ld d,a			;2077	57 	W 
	ld d,(hl)			;2078	56 	V 
	ld c,(hl)			;2079	4e 	N 
	ld d,b			;207a	50 	P 
	ld b,h			;207b	44 	D 
	ld b,(hl)			;207c	46 	F 
	ld c,a			;207d	4f 	O 
	ld d,c			;207e	51 	Q 
	ld c,e			;207f	4b 	K 
	ld c,h			;2080	4c 	L 
	nop			;2081	00 	. 
l2082h:
	call sub_3126h		;2082	cd 26 31 	. & 1 
l2085h:
	call sub_32bah		;2085	cd ba 32 	. . 2 
	call sub_326ah		;2088	cd 6a 32 	. j 2 
	call sub_37dah		;208b	cd da 37 	. . 7 
	dec de			;208e	1b 	. 
	dec a			;208f	3d 	= 
	dec (hl)			;2090	35 	5 
	ld d,b			;2091	50 	P 
	inc hl			;2092	23 	# 
	inc hl			;2093	23 	# 
	pop af			;2094	f1 	. 
	ld b,c			;2095	41 	A 
	ld (hl),h			;2096	74 	t 
	ld (hl),d			;2097	72 	r 
	ld a,c			;2098	79 	y 
	ld h,d			;2099	62 	b 
	ld (hl),l			;209a	75 	u 
	ld (hl),h			;209b	74 	t 
	ld a,c			;209c	79 	y 
	ld a,(l4b1bh)		;209d	3a 1b 4b 	: . K 
	inc h			;20a0	24 	$ 
	call sub_32eeh		;20a1	cd ee 32 	. . 2 
	call sub_24f5h		;20a4	cd f5 24 	. . $ 
	call sub_251ch		;20a7	cd 1c 25 	. . % 
	ld hl,0f0ceh		;20aa	21 ce f0 	! . . 
	ld a,(0f0c4h)		;20ad	3a c4 f0 	: . . 
	or a			;20b0	b7 	. 
	jr z,l20d1h		;20b1	28 1e 	( . 
	bit 0,(hl)		;20b3	cb 46 	. F 
	set 0,(hl)		;20b5	cb c6 	. . 
	jr nz,l20d1h		;20b7	20 18 	  . 
	ld de,01400h		;20b9	11 00 14 	. . . 
	call sub_3175h		;20bc	cd 75 31 	. u 1 
	call sub_37dah		;20bf	cd da 37 	. . 7 
	dec de			;20c2	1b 	. 
	ld d,e			;20c3	53 	S 
	jr nz,l2102h		;20c4	20 3c 	  < 
	dec a			;20c6	3d 	= 
	jr nz,l2105h		;20c7	20 3c 	  < 
	dec a			;20c9	3d 	= 
	jr nz,$+62		;20ca	20 3c 	  < 
	dec a			;20cc	3d 	= 
	jr nz,l20eah		;20cd	20 1b 	  . 
	ld d,h			;20cf	54 	T 
	inc h			;20d0	24 	$ 
l20d1h:
	ld a,(0f0bdh)		;20d1	3a bd f0 	: . . 
	sub (ix+00ch)		;20d4	dd 96 0c 	. . . 
	cp 03dh		;20d7	fe 3d 	. = 
	jr c,l20f9h		;20d9	38 1e 	8 . 
	bit 1,(hl)		;20db	cb 4e 	. N 
	set 1,(hl)		;20dd	cb ce 	. . 
	jr nz,l20f9h		;20df	20 18 	  . 
	ld de,01445h		;20e1	11 45 14 	. E . 
	call sub_3175h		;20e4	cd 75 31 	. u 1 
	call sub_37dah		;20e7	cd da 37 	. . 7 
l20eah:
	dec de			;20ea	1b 	. 
	ld d,e			;20eb	53 	S 
	jr nz,l212bh		;20ec	20 3d 	  = 
	ld a,020h		;20ee	3e 20 	>   
	dec a			;20f0	3d 	= 
	ld a,020h		;20f1	3e 20 	>   
	dec a			;20f3	3d 	= 
	ld a,020h		;20f4	3e 20 	>   
	dec de			;20f6	1b 	. 
	ld d,h			;20f7	54 	T 
	inc h			;20f8	24 	$ 
l20f9h:
	ld de,l140ch		;20f9	11 0c 14 	. . . 
	call sub_3175h		;20fc	cd 75 31 	. u 1 
	ld hl,l2159h		;20ff	21 59 21 	! Y ! 
l2102h:
	ld a,(0f26bh)		;2102	3a 6b f2 	: k . 
l2105h:
	bit 2,a		;2105	cb 57 	. W 
	jr nz,l212dh		;2107	20 24 	  $ 
	ld hl,l2164h		;2109	21 64 21 	! d ! 
	bit 3,a		;210c	cb 5f 	. _ 
	jr nz,l212dh		;210e	20 1d 	  . 
	ld hl,l2163h		;2110	21 63 21 	! c ! 
	bit 7,(ix-048h)		;2113	dd cb b8 7e 	. . . ~ 
	jr z,l212dh		;2117	28 14 	( . 
	ld hl,l0002h+1		;2119	21 03 00 	! . . 
	call sub_0011h		;211c	cd 11 00 	. . . 
	rlca			;211f	07 	. 
	rlca			;2120	07 	. 
	rlca			;2121	07 	. 
	and 006h		;2122	e6 06 	. . 
l2124h:
	ld hl,l003bh		;2124	21 3b 00 	! ; . 
	add a,l			;2127	85 	. 
	ld l,a			;2128	6f 	o 
	ld a,(hl)			;2129	7e 	~ 
	inc hl			;212a	23 	# 
l212bh:
	ld h,(hl)			;212b	66 	f 
	ld l,a			;212c	6f 	o 
l212dh:
	ld de,(0f0cfh)		;212d	ed 5b cf f0 	. [ . . 
	ld (0f0cfh),hl		;2131	22 cf f0 	" . . 
	ld a,e			;2134	7b 	{ 
sub_2135h:
	cp l			;2135	bd 	. 
	jr nz,l213ch		;2136	20 04 	  . 
	ld a,d			;2138	7a 	z 
	cp h			;2139	bc 	. 
	jr z,l216eh		;213a	28 32 	( 2 
l213ch:
	call sub_3823h		;213c	cd 23 38 	. # 8 
	ld b,00ch		;213f	06 0c 	. . 
l2141h:
	ld a,(hl)			;2141	7e 	~ 
sub_2142h:
	bit 7,a		;2142	cb 7f 	.  
	jr nz,l214ch		;2144	20 06 	  . 
	call sub_376bh		;2146	cd 6b 37 	. k 7 
	inc hl			;2149	23 	# 
	djnz l2141h		;214a	10 f5 	. . 
l214ch:
	inc b			;214c	04 	. 
l214dh:
	ld a,020h		;214d	3e 20 	>   
l214fh:
	call sub_376bh		;214f	cd 6b 37 	. k 7 
l2152h:
	djnz l214dh		;2152	10 f9 	. . 
l2154h:
	call sub_3814h		;2154	cd 14 38 	. . 8 
l2157h:
	jr l216eh		;2157	18 15 	. . 
l2159h:
	ld b,h			;2159	44 	D 
	ld (hl),d			;215a	72 	r 
	ld (hl),l			;215b	75 	u 
	ld l,e			;215c	6b 	k 
	ld l,a			;215d	6f 	o 
	ld (hl),a			;215e	77 	w 
	ld h,c			;215f	61 	a 
	ld l,(hl)			;2160	6e 	n 
	ld l,c			;2161	69 	i 
	ld h,l			;2162	65 	e 
l2163h:
	add a,b			;2163	80 	. 
l2164h:
	ld (hl),a			;2164	77 	w 
	ld a,c			;2165	79 	y 
	ld a,h			;2166	7c 	| 
	ld h,b			;2167	60 	` 
	ld h,e			;2168	63 	c 
	ld a,d			;2169	7a 	z 
	ld l,a			;216a	6f 	o 
	ld l,(hl)			;216b	6e 	n 
	ld h,c			;216c	61 	a 
	add a,b			;216d	80 	. 
l216eh:
	ld de,01419h		;216e	11 19 14 	. . . 
	call sub_3175h		;2171	cd 75 31 	. u 1 
	ld hl,0f0ceh		;2174	21 ce f0 	! . . 
	ld a,(0f0bfh)		;2177	3a bf f0 	: . . 
	or a			;217a	b7 	. 
	jr z,l21c9h		;217b	28 4c 	( L 
	bit 2,(hl)		;217d	cb 56 	. V 
	set 2,(hl)		;217f	cb d6 	. . 
	jr nz,l219bh		;2181	20 18 	  . 
	call sub_37dah		;2183	cd da 37 	. . 7 
	ld d,b			;2186	50 	P 
	ld l,h			;2187	6c 	l 
	ld l,c			;2188	69 	i 
	ld l,e			;2189	6b 	k 
	ld l,c			;218a	69 	i 
	jr nz,l2207h		;218b	20 7a 	  z 
	ld h,c			;218d	61 	a 
	ld a,d			;218e	7a 	z 
	ld l,(hl)			;218f	6e 	n 
	ld h,c			;2190	61 	a 
	ld h,e			;2191	63 	c 
	ld a,d			;2192	7a 	z 
	ld l,a			;2193	6f 	o 
	ld l,(hl)			;2194	6e 	n 
	ld h,l			;2195	65 	e 
	jr nz,$+63		;2196	20 3d 	  = 
	inc h			;2198	24 	$ 
	jr l21a1h		;2199	18 06 	. . 
l219bh:
	ld de,0142bh		;219b	11 2b 14 	. + . 
	call sub_3175h		;219e	cd 75 31 	. u 1 
l21a1h:
	ld hl,(0f0bfh)		;21a1	2a bf f0 	* . . 
	ld h,000h		;21a4	26 00 	& . 
	call sub_3899h		;21a6	cd 99 38 	. . 8 
	ld hl,(0f0d3h)		;21a9	2a d3 f0 	* . . 
	call sub_3893h		;21ac	cd 93 38 	. . 8 
	call sub_37dah		;21af	cd da 37 	. . 7 
	jr nz,l21ffh		;21b2	20 4b 	  K 
	ld b,d			;21b4	42 	B 
	jp p,02428h		;21b5	f2 28 24 	. ( $ 
	ld hl,(0f0d5h)		;21b8	2a d5 f0 	* . . 
	call sub_3893h		;21bb	cd 93 38 	. . 8 
	call sub_37dah		;21be	cd da 37 	. . 7 
	jr nz,$+77		;21c1	20 4b 	  K 
	ld b,d			;21c3	42 	B 
	jr nz,l21efh		;21c4	20 29 	  ) 
	inc h			;21c6	24 	$ 
	jr l21d6h		;21c7	18 0d 	. . 
l21c9h:
	bit 2,(hl)		;21c9	cb 56 	. V 
	jr z,l21d6h		;21cb	28 09 	( . 
	res 2,(hl)		;21cd	cb 96 	. . 
	call sub_37dah		;21cf	cd da 37 	. . 7 
	rst 38h			;21d2	ff 	. 
	rst 38h			;21d3	ff 	. 
	defb 0fdh,024h	;inc iyh		;21d4	fd 24 	. $ 
l21d6h:
	ld de,l1600h		;21d6	11 00 16 	. . . 
	call sub_3175h		;21d9	cd 75 31 	. u 1 
	ld a,(0f0cdh)		;21dc	3a cd f0 	: . . 
	ld (ix+015h),000h		;21df	dd 36 15 00 	. 6 . . 
	or a			;21e3	b7 	. 
	jr nz,l21ech		;21e4	20 06 	  . 
	call sub_36feh		;21e6	cd fe 36 	. . 6 
	call sub_373fh		;21e9	cd 3f 37 	. ? 7 
l21ech:
	push af			;21ec	f5 	. 
	ld c,01bh		;21ed	0e 1b 	. . 
l21efh:
	call 0f20ch		;21ef	cd 0c f2 	. . . 
	ld c,042h		;21f2	0e 42 	. B 
	call 0f20ch		;21f4	cd 0c f2 	. . . 
	call sub_37dah		;21f7	cd da 37 	. . 7 
	dec de			;21fa	1b 	. 
	ld c,e			;21fb	4b 	K 
	inc h			;21fc	24 	$ 
	ld c,01bh		;21fd	0e 1b 	. . 
l21ffh:
	call 0f20ch		;21ff	cd 0c f2 	. . . 
	ld c,041h		;2202	0e 41 	. A 
	call 0f20ch		;2204	cd 0c f2 	. . . 
l2207h:
	pop af			;2207	f1 	. 
	ld c,a			;2208	4f 	O 
	call sub_3721h		;2209	cd 21 37 	. ! 7 
	call sub_37dah		;220c	cd da 37 	. . 7 
	dec de			;220f	1b 	. 
	ld c,e			;2210	4b 	K 
	jp p,l2124h		;2211	f2 24 21 	. $ ! 
	xor l			;2214	ad 	. 
	rst 38h			;2215	ff 	. 
	bit 5,(hl)		;2216	cb 6e 	. n 
	jr z,l2228h		;2218	28 0e 	( . 
	ld hl,02290h		;221a	21 90 22 	! . " 
	ld a,(0f0bdh)		;221d	3a bd f0 	: . . 
	or a			;2220	b7 	. 
	jr nz,l223dh		;2221	20 1a 	  . 
	ld hl,l22deh		;2223	21 de 22 	! . " 
	jr l223dh		;2226	18 15 	. . 
l2228h:
	ld hl,l235dh		;2228	21 5d 23 	! ] # 
	ld a,(0f0bdh)		;222b	3a bd f0 	: . . 
	or a			;222e	b7 	. 
	jr z,l223dh		;222f	28 0c 	( . 
	ld hl,l2327h		;2231	21 27 23 	! ' # 
	bit 0,(ix+010h)		;2234	dd cb 10 46 	. . . F 
	jr nz,l223dh		;2238	20 03 	  . 
	ld hl,l22fah		;223a	21 fa 22 	! . " 
l223dh:
	inc hl			;223d	23 	# 
	inc hl			;223e	23 	# 
	ld a,(hl)			;223f	7e 	~ 
	or a			;2240	b7 	. 
	jp m,l225fh		;2241	fa 5f 22 	. _ " 
	cp c			;2244	b9 	. 
	inc hl			;2245	23 	# 
	jr nz,l223dh		;2246	20 f5 	  . 
	ld de,l2040h		;2248	11 40 20 	. @   
	push de			;224b	d5 	. 
	ld a,(hl)			;224c	7e 	~ 
	inc hl			;224d	23 	# 
	ld h,(hl)			;224e	66 	f 
	ld l,a			;224f	6f 	o 
	ld a,(0f0bdh)		;2250	3a bd f0 	: . . 
	ld b,a			;2253	47 	G 
	sub (ix+00ch)		;2254	dd 96 0c 	. . . 
	cp 03ch		;2257	fe 3c 	. < 
l2259h:
	jr c,l225dh		;2259	38 02 	8 . 
	ld a,03ch		;225b	3e 3c 	> < 
l225dh:
	ld c,a			;225d	4f 	O 
l225eh:
	jp (hl)			;225e	e9 	. 
l225fh:
	ld sp,0f13ah		;225f	31 3a f1 	1 : . 
l2262h:
	call sub_37dah		;2262	cd da 37 	. . 7 
l2265h:
	rlca			;2265	07 	. 
l2266h:
	jr nz,l22aah		;2266	20 42 	  B 
	ld a,h			;2268	7c 	| 
	ld b,b			;2269	40 	@ 
	ld h,h			;226a	64 	d 
	ld l,(hl)			;226b	6e 	n 
	ld h,l			;226c	65 	e 
	jr nz,l22dfh		;226d	20 70 	  p 
	ld l,a			;226f	6f 	o 
	ld l,h			;2270	6c 	l 
	ld h,l			;2271	65 	e 
	ld h,e			;2272	63 	c 
	ld h,l			;2273	65 	e 
	ld l,(hl)			;2274	6e 	n 
	ld l,c			;2275	69 	i 
	ld h,l			;2276	65 	e 
	jr nz,l22a6h		;2277	20 2d 	  - 
	jr nz,$+42		;2279	20 28 	  ( 
	ld b,l			;227b	45 	E 
	ld d,e			;227c	53 	S 
	ld b,e			;227d	43 	C 
	add hl,hl			;227e	29 	) 
	inc h			;227f	24 	$ 
l2280h:
	call sub_36feh		;2280	cd fe 36 	. . 6 
	cp 01bh		;2283	fe 1b 	. . 
	ld a,007h		;2285	3e 07 	> . 
	call nz,sub_376bh		;2287	c4 6b 37 	. k 7 
	jr nz,l2280h		;228a	20 f4 	  . 
	call sub_3796h		;228c	cd 96 37 	. . 7 
	jp l21ech		;228f	c3 ec 21 	. . ! 
	ld b,e			;2292	43 	C 
	sbc a,03ch		;2293	de 3c 	. < 
	dec (hl)			;2295	35 	5 
	cp (hl)			;2296	be 	. 
	inc hl			;2297	23 	# 
	ld (hl),0c5h		;2298	36 c5 	6 . 
	inc hl			;229a	23 	# 
	inc b			;229b	04 	. 
	push bc			;229c	c5 	. 
	inc hl			;229d	23 	# 
	inc (hl)			;229e	34 	4 
	cp 023h		;229f	fe 23 	. # 
	inc de			;22a1	13 	. 
	cp 023h		;22a2	fe 23 	. # 
	jr c,l22c9h		;22a4	38 23 	8 # 
l22a6h:
	inc h			;22a6	24 	$ 
	dec b			;22a7	05 	. 
	inc hl			;22a8	23 	# 
l22a9h:
	inc h			;22a9	24 	$ 
l22aah:
	ld (l2435h),a		;22aa	32 35 24 	2 5 $ 
	jr l22e4h		;22ad	18 35 	. 5 
	inc h			;22af	24 	$ 
	scf			;22b0	37 	7 
l22b1h:
	dec hl			;22b1	2b 	+ 
	inc h			;22b2	24 	$ 
	rla			;22b3	17 	. 
	dec hl			;22b4	2b 	+ 
	inc h			;22b5	24 	$ 
	ld sp,l243dh		;22b6	31 3d 24 	1 = $ 
	ld a,(de)			;22b9	1a 	. 
	dec a			;22ba	3d 	= 
	inc h			;22bb	24 	$ 
	ld a,0edh		;22bc	3e ed 	> . 
	inc hl			;22be	23 	# 
	inc a			;22bf	3c 	< 
	ld a,(de)			;22c0	1a 	. 
	inc h			;22c1	24 	$ 
	ld l,0edh		;22c2	2e ed 	. . 
	inc hl			;22c4	23 	# 
	inc l			;22c5	2c 	, 
	ld a,(de)			;22c6	1a 	. 
	inc h			;22c7	24 	$ 
	ld b,h			;22c8	44 	D 
l22c9h:
	ld c,e			;22c9	4b 	K 
l22cah:
	inc h			;22ca	24 	$ 
	ld b,l			;22cb	45 	E 
	ex (sp),hl			;22cc	e3 	. 
	ld a,(0e252h)		;22cd	3a 52 e2 	: R . 
	dec sp			;22d0	3b 	; 
	ld d,b			;22d1	50 	P 
	and 039h		;22d2	e6 39 	. 9 
	ld d,h			;22d4	54 	T 
	jp nz,l1423h+2		;22d5	c2 25 14 	. % . 
	jr c,l2300h		;22d8	38 26 	8 & 
	ld d,l			;22da	55 	U 
	ret			;22db	c9 	. 
	dec h			;22dc	25 	% 
	dec d			;22dd	15 	. 
l22deh:
	ld d,d			;22de	52 	R 
l22dfh:
	ld h,051h		;22df	26 51 	& Q 
	ld h,031h		;22e1	26 31 	& 1 
	ld c,e			;22e3	4b 	K 
l22e4h:
	ld h,l			;22e4	65 	e 
	ld h,04ch		;22e5	26 4c 	& L 
	ld l,a			;22e7	6f 	o 
	ld h,003h		;22e8	26 03 	& . 
	sbc a,a			;22ea	9f 	. 
l22ebh:
	inc hl			;22eb	23 	# 
	dec de			;22ec	1b 	. 
l22edh:
	cp l			;22ed	bd 	. 
	inc hl			;22ee	23 	# 
l22efh:
	dec c			;22ef	0d 	. 
	cp l			;22f0	bd 	. 
l22f1h:
	inc hl			;22f1	23 	# 
	jr nz,l22b1h		;22f2	20 bd 	  . 
	inc hl			;22f4	23 	# 
l22f5h:
	inc sp			;22f5	33 	3 
	cp l			;22f6	bd 	. 
l22f7h:
	inc hl			;22f7	23 	# 
	add hl,sp			;22f8	39 	9 
l22f9h:
	cp l			;22f9	bd 	. 
l22fah:
	inc hl			;22fa	23 	# 
l22fbh:
	rst 38h			;22fb	ff 	. 
	ld d,h			;22fc	54 	T 
l22fdh:
	jp nz,l5525h		;22fd	c2 25 55 	. % U 
l2300h:
	ret			;2300	c9 	. 
l2301h:
	dec h			;2301	25 	% 
l2302h:
	inc d			;2302	14 	. 
	jr c,l232bh		;2303	38 26 	8 & 
	add hl,de			;2305	19 	. 
l2306h:
	inc (hl)			;2306	34 	4 
	ld h,015h		;2307	26 15 	& . 
	ld d,d			;2309	52 	R 
l230ah:
	ld h,045h		;230a	26 45 	& E 
l230ch:
	ex af,af'			;230c	08 	. 
	daa			;230d	27 	' 
	ld d,a			;230e	57 	W 
l230fh:
	jp p,l5627h		;230f	f2 27 56 	. ' V 
l2312h:
	rst 28h			;2312	ef 	. 
	daa			;2313	27 	' 
	ld d,e			;2314	53 	S 
l2315h:
	jp (hl)			;2315	e9 	. 
	daa			;2316	27 	' 
l2317h:
	ld d,d			;2317	52 	R 
	ld (hl),e			;2318	73 	s 
	jr z,l235eh		;2319	28 43 	( C 
	rst 18h			;231b	df 	. 
	jr z,l2320h		;231c	28 02 	( . 
	ld h,02bh		;231e	26 2b 	& + 
l2320h:
	ld b,d			;2320	42 	B 
	ld e,c			;2321	59 	Y 
	dec hl			;2322	2b 	+ 
	ld e,b			;2323	58 	X 
	ld l,c			;2324	69 	i 
	dec hl			;2325	2b 	+ 
	ld d,b			;2326	50 	P 
l2327h:
	sbc a,c			;2327	99 	. 
	inc l			;2328	2c 	, 
	dec (hl)			;2329	35 	5 
	cp (hl)			;232a	be 	. 
l232bh:
	inc hl			;232b	23 	# 
l232ch:
	ld (hl),0c5h		;232c	36 c5 	6 . 
	inc hl			;232e	23 	# 
	inc b			;232f	04 	. 
	push bc			;2330	c5 	. 
l2331h:
	inc hl			;2331	23 	# 
	inc (hl)			;2332	34 	4 
	cp 023h		;2333	fe 23 	. # 
	inc de			;2335	13 	. 
	cp 023h		;2336	fe 23 	. # 
	jr c,l235dh		;2338	38 23 	8 # 
	inc h			;233a	24 	$ 
	dec b			;233b	05 	. 
	inc hl			;233c	23 	# 
	inc h			;233d	24 	$ 
	ld (l2435h),a		;233e	32 35 24 	2 5 $ 
	jr $+55		;2341	18 35 	. 5 
	inc h			;2343	24 	$ 
	scf			;2344	37 	7 
	dec hl			;2345	2b 	+ 
	inc h			;2346	24 	$ 
	rla			;2347	17 	. 
	dec hl			;2348	2b 	+ 
	inc h			;2349	24 	$ 
	ld sp,l243dh		;234a	31 3d 24 	1 = $ 
	ld a,(de)			;234d	1a 	. 
	dec a			;234e	3d 	= 
	inc h			;234f	24 	$ 
	ld a,0edh		;2350	3e ed 	> . 
	inc hl			;2352	23 	# 
	inc a			;2353	3c 	< 
	ld a,(de)			;2354	1a 	. 
	inc h			;2355	24 	$ 
	ld l,0edh		;2356	2e ed 	. . 
	inc hl			;2358	23 	# 
	inc l			;2359	2c 	, 
	ld a,(de)			;235a	1a 	. 
	inc h			;235b	24 	$ 
	ld b,h			;235c	44 	D 
l235dh:
	ld c,e			;235d	4b 	K 
l235eh:
	inc h			;235e	24 	$ 
	ld b,(hl)			;235f	46 	F 
	ld h,l			;2360	65 	e 
	ld hl,(l714fh)		;2361	2a 4f 71 	* O q 
	dec h			;2364	25 	% 
	ld d,c			;2365	51 	Q 
	ld h,031h		;2366	26 31 	& 1 
	ld c,e			;2368	4b 	K 
	ld h,l			;2369	65 	e 
	ld h,04ch		;236a	26 4c 	& L 
	ld l,a			;236c	6f 	o 
	ld h,010h		;236d	26 10 	& . 
	and c			;236f	a1 	. 
	ld hl,(08c09h)		;2370	2a 09 8c 	* . . 
	ld hl,(0b10ch)		;2373	2a 0c b1 	* . . 
	ld hl,(09f03h)		;2376	2a 03 9f 	* . . 
	inc hl			;2379	23 	# 
	ld b,b			;237a	40 	@ 
	add a,l			;237b	85 	. 
	dec l			;237c	2d 	- 
	inc sp			;237d	33 	3 
	cp l			;237e	bd 	. 
	inc hl			;237f	23 	# 
	add hl,sp			;2380	39 	9 
	cp l			;2381	bd 	. 
	inc hl			;2382	23 	# 
	jr nc,$-65		;2383	30 bd 	0 . 
	inc hl			;2385	23 	# 
	dec l			;2386	2d 	- 
	cp l			;2387	bd 	. 
	inc hl			;2388	23 	# 
	ld hl,(l3919h)		;2389	2a 19 39 	* . 9 
	dec hl			;238c	2b 	+ 
	cp l			;238d	bd 	. 
	inc hl			;238e	23 	# 
	cpl			;238f	2f 	/ 
	cp l			;2390	bd 	. 
	inc hl			;2391	23 	# 
	dec de			;2392	1b 	. 
	cp l			;2393	bd 	. 
	inc hl			;2394	23 	# 
	dec c			;2395	0d 	. 
	cp l			;2396	bd 	. 
l2397h:
	inc hl			;2397	23 	# 
	jr nz,$-65		;2398	20 bd 	  . 
	inc hl			;239a	23 	# 
	ld c,l			;239b	4d 	M 
	cp a			;239c	bf 	. 
	ld a,0ffh		;239d	3e ff 	> . 
l239fh:
	ld a,(0f0bah)		;239f	3a ba f0 	: . . 
	call sub_33d2h		;23a2	cd d2 33 	. . 3 
	call sub_37dah		;23a5	cd da 37 	. . 7 
	dec de			;23a8	1b 	. 
	dec a			;23a9	3d 	= 
	ld (hl),020h		;23aa	36 20 	6   
	dec de			;23ac	1b 	. 
	ld c,e			;23ad	4b 	K 
	dec de			;23ae	1b 	. 
	dec a			;23af	3d 	= 
	dec (hl)			;23b0	35 	5 
	jr nz,l23d7h		;23b1	20 24 	  $ 
	ld sp,0f13ah		;23b3	31 3a f1 	1 : . 
l23b6h:
	set 4,(ix-048h)		;23b6	dd cb b8 e6 	. . . . 
	jp l1a82h		;23ba	c3 82 1a 	. . . 
	ret			;23bd	c9 	. 
	xor a			;23be	af 	. 
l23bfh:
	ld (0f0c3h),a		;23bf	32 c3 f0 	2 . . 
	jp sub_326ah+1		;23c2	c3 6b 32 	. k 2 
l23c5h:
	ld a,(0f0c3h)		;23c5	3a c3 f0 	: . . 
l23c8h:
	add a,014h		;23c8	c6 14 	. . 
l23cah:
	cp c			;23ca	b9 	. 
l23cbh:
	jr c,l23bfh		;23cb	38 f2 	8 . 
l23cdh:
	ld a,(0f0c4h)		;23cd	3a c4 f0 	: . . 
l23d0h:
	add a,03ch		;23d0	c6 3c 	. < 
	cp b			;23d2	b8 	. 
l23d3h:
	ret nc			;23d3	d0 	. 
l23d4h:
	ld (0f0c4h),a		;23d4	32 c4 f0 	2 . . 
l23d7h:
	ld b,a			;23d7	47 	G 
l23d8h:
	ld a,(0f0bdh)		;23d8	3a bd f0 	: . . 
l23dbh:
	sub b			;23db	90 	. 
l23dch:
	ld b,a			;23dc	47 	G 
	ld a,(0f0c3h)		;23dd	3a c3 f0 	: . . 
	sub 028h		;23e0	d6 28 	. ( 
	cp b			;23e2	b8 	. 
	jr c,l23e7h		;23e3	38 02 	8 . 
	ld a,b			;23e5	78 	x 
l23e6h:
	dec a			;23e6	3d 	= 
l23e7h:
	ld (0f0c3h),a		;23e7	32 c3 f0 	2 . . 
	jp l2690h		;23ea	c3 90 26 	. . & 
	ld a,(0f0c4h)		;23ed	3a c4 f0 	: . . 
l23f0h:
	add a,03ch		;23f0	c6 3c 	. < 
	cp b			;23f2	b8 	. 
	ret nc			;23f3	d0 	. 
l23f4h:
	ld (0f0c4h),a		;23f4	32 c4 f0 	2 . . 
l23f7h:
	xor a			;23f7	af 	. 
	ld (0f0c3h),a		;23f8	32 c3 f0 	2 . . 
	jp l2690h		;23fb	c3 90 26 	. . & 
	ld a,(0f0c3h)		;23fe	3a c3 f0 	: . . 
	sub 014h		;2401	d6 14 	. . 
	jp p,l23bfh		;2403	f2 bf 23 	. . # 
	ld a,(0f0c4h)		;2406	3a c4 f0 	: . . 
	sub 03ch		;2409	d6 3c 	. < 
	ret m			;240b	f8 	. 
	ld (0f0c4h),a		;240c	32 c4 f0 	2 . . 
	ld a,(0f0c3h)		;240f	3a c3 f0 	: . . 
	add a,028h		;2412	c6 28 	. ( 
	ld (0f0c3h),a		;2414	32 c3 f0 	2 . . 
	jp l2690h		;2417	c3 90 26 	. . & 
sub_241ah:
	ld a,(0f0c4h)		;241a	3a c4 f0 	: . . 
	sub 03ch		;241d	d6 3c 	. < 
	jp p,l23f4h		;241f	f2 f4 23 	. . # 
l2422h:
	ret			;2422	c9 	. 
	ld a,(0f0c3h)		;2423	3a c3 f0 	: . . 
	dec a			;2426	3d 	= 
	jp p,l23bfh		;2427	f2 bf 23 	. . # 
	ret			;242a	c9 	. 
	ld a,(0f0c3h)		;242b	3a c3 f0 	: . . 
	sub 006h		;242e	d6 06 	. . 
	jr nc,l23bfh		;2430	30 8d 	0 . 
	xor a			;2432	af 	. 
	jr l23bfh		;2433	18 8a 	. . 
l2435h:
	ld a,(0f0c3h)		;2435	3a c3 f0 	: . . 
	inc a			;2438	3c 	< 
	cp c			;2439	b9 	. 
	jr c,l23bfh		;243a	38 83 	8 . 
	ret			;243c	c9 	. 
l243dh:
	ld a,(0f0c3h)		;243d	3a c3 f0 	: . . 
	add a,006h		;2440	c6 06 	. . 
	cp c			;2442	b9 	. 
	jp c,l23bfh		;2443	da bf 23 	. . # 
	ld a,c			;2446	79 	y 
	dec a			;2447	3d 	= 
	jp l23bfh		;2448	c3 bf 23 	. . # 
	call sub_38f3h		;244b	cd f3 38 	. . 8 
	xor a			;244e	af 	. 
	ld (0f0c1h),a		;244f	32 c1 f0 	2 . . 
l2452h:
	ld a,(0f0bdh)		;2452	3a bd f0 	: . . 
	sub (ix+009h)		;2455	dd 96 09 	. . . 
	jr z,l2481h		;2458	28 27 	( ' 
	push af			;245a	f5 	. 
	call sub_37dah		;245b	cd da 37 	. . 7 
	ld a,(bc)			;245e	0a 	. 
	ld a,(bc)			;245f	0a 	. 
	ld a,(bc)			;2460	0a 	. 
	inc h			;2461	24 	$ 
	call sub_2540h		;2462	cd 40 25 	. @ % 
	pop af			;2465	f1 	. 
	cp 015h		;2466	fe 15 	. . 
	jr nc,l2494h		;2468	30 2a 	0 * 
l246ah:
	call sub_370dh		;246a	cd 0d 37 	. . 7 
	jp nz,l2690h		;246d	c2 90 26 	. . & 
	call sub_379ah		;2470	cd 9a 37 	. . 7 
	call sub_24e4h		;2473	cd e4 24 	. . $ 
	inc (ix+009h)		;2476	dd 34 09 	. 4 . 
	ld a,(0f0c1h)		;2479	3a c1 f0 	: . . 
	sub (ix+005h)		;247c	dd 96 05 	. . . 
	jr c,l246ah		;247f	38 e9 	8 . 
l2481h:
	call sub_379ah		;2481	cd 9a 37 	. . 7 
	call sub_319ah		;2484	cd 9a 31 	. . 1 
	call sub_379ah		;2487	cd 9a 37 	. . 7 
l248ah:
	bit 7,(ix-048h)		;248a	dd cb b8 7e 	. . . ~ 
	call z,sub_3748h		;248e	cc 48 37 	. H 7 
	jp l2690h		;2491	c3 90 26 	. . & 
l2494h:
	cp 03dh		;2494	fe 3d 	. = 
	jr c,l249ah		;2496	38 02 	8 . 
	ld a,03ch		;2498	3e 3c 	> < 
l249ah:
	ld c,a			;249a	4f 	O 
	add a,(ix+009h)		;249b	dd 86 09 	. . . 
	ld (0f0c2h),a		;249e	32 c2 f0 	2 . . 
	ld a,c			;24a1	79 	y 
	rrca			;24a2	0f 	. 
	adc a,000h		;24a3	ce 00 	. . 
	and 07fh		;24a5	e6 7f 	.  
	ld b,a			;24a7	47 	G 
	ld c,a			;24a8	4f 	O 
	call sub_3766h		;24a9	cd 66 37 	. f 7 
	call sub_2540h		;24ac	cd 40 25 	. @ % 
l24afh:
	call sub_370dh		;24af	cd 0d 37 	. . 7 
	jp nz,l2690h		;24b2	c2 90 26 	. . & 
	call sub_379ah		;24b5	cd 9a 37 	. . 7 
	push bc			;24b8	c5 	. 
	call sub_24e4h		;24b9	cd e4 24 	. . $ 
	pop bc			;24bc	c1 	. 
	ld a,(0f0c1h)		;24bd	3a c1 f0 	: . . 
	add a,c			;24c0	81 	. 
	ld (0f0c1h),a		;24c1	32 c1 f0 	2 . . 
	push bc			;24c4	c5 	. 
	ld c,a			;24c5	4f 	O 
	call sub_3763h		;24c6	cd 63 37 	. c 7 
	ld a,(0f0bdh)		;24c9	3a bd f0 	: . . 
	sub c			;24cc	91 	. 
	call nz,sub_24e4h		;24cd	c4 e4 24 	. . $ 
	pop bc			;24d0	c1 	. 
	ld a,(0f0c1h)		;24d1	3a c1 f0 	: . . 
	sub c			;24d4	91 	. 
	inc a			;24d5	3c 	< 
	ld (0f0c1h),a		;24d6	32 c1 f0 	2 . . 
	djnz l24afh		;24d9	10 d4 	. . 
	ld a,(0f0c2h)		;24db	3a c2 f0 	: . . 
	ld (0f0c1h),a		;24de	32 c1 f0 	2 . . 
	jp l2452h		;24e1	c3 52 24 	. R $ 
sub_24e4h:
	call sub_32cfh		;24e4	cd cf 32 	. . 2 
	ex de,hl			;24e7	eb 	. 
	inc hl			;24e8	23 	# 
	call l3832h		;24e9	cd 32 38 	. 2 8 
	call sub_315bh		;24ec	cd 5b 31 	. [ 1 
	call sub_3769h		;24ef	cd 69 37 	. i 7 
	call sub_32eeh		;24f2	cd ee 32 	. . 2 
sub_24f5h:
	call sub_3769h		;24f5	cd 69 37 	. i 7 
	ld a,(0f0c8h)		;24f8	3a c8 f0 	: . . 
	or a			;24fb	b7 	. 
	jp z,sub_3763h		;24fc	ca 63 37 	. c 7 
	ld a,(0f0bdh)		;24ff	3a bd f0 	: . . 
	or a			;2502	b7 	. 
	jp z,sub_3763h		;2503	ca 63 37 	. c 7 
	ld a,055h		;2506	3e 55 	> U 
	call sub_376bh		;2508	cd 6b 37 	. k 7 
	ld bc,0fff6h		;250b	01 f6 ff 	. . . 
	add hl,bc			;250e	09 	. 
	ld l,(hl)			;250f	6e 	n 
	ld h,000h		;2510	26 00 	& . 
	ld (ix+008h),002h		;2512	dd 36 08 02 	. 6 . . 
	call sub_386ah		;2516	cd 6a 38 	. j 8 
	jp sub_3769h		;2519	c3 69 37 	. i 7 
sub_251ch:
	ld a,(0fb7ch)		;251c	3a 7c fb 	: | . 
	bit 7,a		;251f	cb 7f 	.  
	jp z,sub_3763h		;2521	ca 63 37 	. c 7 
	bit 0,a		;2524	cb 47 	. G 
	jr z,l2537h		;2526	28 0f 	( . 
	ld hl,0f980h		;2528	21 80 f9 	! . . 
	ld b,004h		;252b	06 04 	. . 
l252dh:
	ld a,(hl)			;252d	7e 	~ 
	call sub_376bh		;252e	cd 6b 37 	. k 7 
	inc hl			;2531	23 	# 
	inc hl			;2532	23 	# 
	inc hl			;2533	23 	# 
	djnz l252dh		;2534	10 f7 	. . 
	ret			;2536	c9 	. 
l2537h:
	call sub_37dah		;2537	cd da 37 	. . 7 
	ld l,02eh		;253a	2e 2e 	. . 
	ld l,02eh		;253c	2e 2e 	. . 
	inc h			;253e	24 	$ 
	ret			;253f	c9 	. 
sub_2540h:
	call sub_37dah		;2540	cd da 37 	. . 7 
	ld c,(hl)			;2543	4e 	N 
	ld h,c			;2544	61 	a 
	ld a,d			;2545	7a 	z 
	ld (hl),a			;2546	77 	w 
	ld h,c			;2547	61 	a 
	di			;2548	f3 	. 
	ld l,054h		;2549	2e 54 	. T 
	ld a,c			;254b	79 	y 
	ld (hl),b			;254c	70 	p 
	di			;254d	f3 	. 
	ld d,d			;254e	52 	R 
	ld h,l			;254f	65 	e 
	ld l,e			;2550	6b 	k 
	jp p,0424bh		;2551	f2 4b 42 	. K B 
	jp p,07441h		;2554	f2 41 74 	. A t 
	ld (hl),d			;2557	72 	r 
	inc h			;2558	24 	$ 
	bit 0,(ix+010h)		;2559	dd cb 10 46 	. . . F 
	jr z,l256bh		;255d	28 0c 	( . 
	call sub_37dah		;255f	cd da 37 	. . 7 
	push af			;2562	f5 	. 
	ld d,l			;2563	55 	U 
	ld a,l			;2564	7d 	} 
	ld a,c			;2565	79 	y 
	ld (hl),h			;2566	74 	t 
	ld l,e			;2567	6b 	k 
	ld l,024h		;2568	2e 24 	. $ 
	ret			;256a	c9 	. 
l256bh:
	call sub_37dah		;256b	cd da 37 	. . 7 
	ei			;256e	fb 	. 
	inc h			;256f	24 	$ 
	ret			;2570	c9 	. 
	call sub_38f3h		;2571	cd f3 38 	. . 8 
	ld hl,l0000h		;2574	21 00 00 	! . . 
	ld (0f0e2h),hl		;2577	22 e2 f0 	" . . 
	ld hl,l0100h		;257a	21 00 01 	! . . 
	ld (0f0deh),hl		;257d	22 de f0 	" . . 
	ld a,03fh		;2580	3e 3f 	> ? 
	ld (l005ch),a		;2582	32 5c 00 	2 \ . 
	ld c,011h		;2585	0e 11 	. . 
l2587h:
	ld de,l005ch		;2587	11 5c 00 	. \ . 
	call l0005h		;258a	cd 05 00 	. . . 
	cp 0ffh		;258d	fe ff 	. . 
	jp z,l25abh		;258f	ca ab 25 	. . % 
	call sub_3900h		;2592	cd 00 39 	. . 9 
	ld de,(0f0deh)		;2595	ed 5b de f0 	. [ . . 
	ld b,020h		;2599	06 20 	.   
l259bh:
	call sub_0011h		;259b	cd 11 00 	. . . 
	ld (de),a			;259e	12 	. 
	inc hl			;259f	23 	# 
	inc de			;25a0	13 	. 
	djnz l259bh		;25a1	10 f8 	. . 
	ld (0f0deh),de		;25a3	ed 53 de f0 	. S . . 
	ld c,012h		;25a7	0e 12 	. . 
	jr l2587h		;25a9	18 dc 	. . 
l25abh:
	ld hl,l0100h		;25ab	21 00 01 	! . . 
	ld de,(0f0deh)		;25ae	ed 5b de f0 	. [ . . 
	dec de			;25b2	1b 	. 
	call sub_3518h		;25b3	cd 18 35 	. . 5 
	jp c,l2690h		;25b6	da 90 26 	. . & 
	call sub_344ah		;25b9	cd 4a 34 	. J 4 
	jp c,l248ah		;25bc	da 8a 24 	. . $ 
	jp l2690h		;25bf	c3 90 26 	. . & 
	push bc			;25c2	c5 	. 
	ld b,02bh		;25c3	06 2b 	. + 
	ld c,02ah		;25c5	0e 2a 	. * 
	jr l25ceh		;25c7	18 05 	. . 
	push bc			;25c9	c5 	. 
	ld b,02dh		;25ca	06 2d 	. - 
	ld c,020h		;25cc	0e 20 	.   
l25ceh:
	call sub_25d5h		;25ce	cd d5 25 	. . % 
	pop bc			;25d1	c1 	. 
	jp l2435h		;25d2	c3 35 24 	. 5 $ 
sub_25d5h:
	call sub_32cfh		;25d5	cd cf 32 	. . 2 
	bit 7,(ix+00dh)		;25d8	dd cb 0d 7e 	. . . ~ 
	jr z,l25e5h		;25dc	28 07 	( . 
	ld hl,l0008h+2		;25de	21 0a 00 	! . . 
	add hl,de			;25e1	19 	. 
	bit 7,(hl)		;25e2	cb 7e 	. ~ 
	ret z			;25e4	c8 	. 
l25e5h:
	ld hl,sub_0011h+2		;25e5	21 13 00 	! . . 
	add hl,de			;25e8	19 	. 
	ld a,(hl)			;25e9	7e 	~ 
	ld (hl),c			;25ea	71 	q 
	cp c			;25eb	b9 	. 
	ret z			;25ec	c8 	. 
	ld a,b			;25ed	78 	x 
	cp 02bh		;25ee	fe 2b 	. + 
	ld a,(0f0bfh)		;25f0	3a bf f0 	: . . 
	jr z,l25f7h		;25f3	28 02 	( . 
	dec a			;25f5	3d 	= 
	dec a			;25f6	3d 	= 
l25f7h:
	inc a			;25f7	3c 	< 
	ld (0f0bfh),a		;25f8	32 bf f0 	2 . . 
	dec hl			;25fb	2b 	+ 
	dec hl			;25fc	2b 	+ 
	dec hl			;25fd	2b 	+ 
	dec hl			;25fe	2b 	+ 
	ld d,(hl)			;25ff	56 	V 
	dec hl			;2600	2b 	+ 
	ld e,(hl)			;2601	5e 	^ 
	ex de,hl			;2602	eb 	. 
	push hl			;2603	e5 	. 
	call sub_38d3h		;2604	cd d3 38 	. . 8 
	ex de,hl			;2607	eb 	. 
	ld a,b			;2608	78 	x 
	cp 02bh		;2609	fe 2b 	. + 
	jr z,l2614h		;260b	28 07 	( . 
	xor a			;260d	af 	. 
	sub e			;260e	93 	. 
	ld e,a			;260f	5f 	_ 
	ld a,000h		;2610	3e 00 	> . 
	sbc a,d			;2612	9a 	. 
	ld d,a			;2613	57 	W 
l2614h:
	ld hl,(0f0d3h)		;2614	2a d3 f0 	* . . 
	add hl,de			;2617	19 	. 
	ld (0f0d3h),hl		;2618	22 d3 f0 	" . . 
	pop hl			;261b	e1 	. 
	call sub_38cfh		;261c	cd cf 38 	. . 8 
	ex de,hl			;261f	eb 	. 
	ld a,b			;2620	78 	x 
	cp 02bh		;2621	fe 2b 	. + 
	jr z,l262ch		;2623	28 07 	( . 
	xor a			;2625	af 	. 
	sub e			;2626	93 	. 
	ld e,a			;2627	5f 	_ 
	ld a,000h		;2628	3e 00 	> . 
	sbc a,d			;262a	9a 	. 
	ld d,a			;262b	57 	W 
l262ch:
	ld hl,(0f0d5h)		;262c	2a d5 f0 	* . . 
	add hl,de			;262f	19 	. 
	ld (0f0d5h),hl		;2630	22 d5 f0 	" . . 
	ret			;2633	c9 	. 
	set 7,(ix+00dh)		;2634	dd cb 0d fe 	. . . . 
	xor a			;2638	af 	. 
	ld (0f0c1h),a		;2639	32 c1 f0 	2 . . 
l263ch:
	ld b,02bh		;263c	06 2b 	. + 
	ld c,02ah		;263e	0e 2a 	. * 
	call sub_25d5h		;2640	cd d5 25 	. . % 
	ld a,(0f0c1h)		;2643	3a c1 f0 	: . . 
	inc a			;2646	3c 	< 
	cp (ix+005h)		;2647	dd be 05 	. . . 
	jp nc,l2690h		;264a	d2 90 26 	. . & 
	ld (0f0c1h),a		;264d	32 c1 f0 	2 . . 
	jr l263ch		;2650	18 ea 	. . 
	xor a			;2652	af 	. 
	ld (0f0c1h),a		;2653	32 c1 f0 	2 . . 
l2656h:
	call sub_3314h		;2656	cd 14 33 	. . 3 
	jr nc,l265fh		;2659	30 04 	0 . 
	ld (hl),020h		;265b	36 20 	6   
	jr l2656h		;265d	18 f7 	. . 
l265fh:
	call sub_390bh		;265f	cd 0b 39 	. . 9 
	jp l2690h		;2662	c3 90 26 	. . & 
	ld a,(0f0cah)		;2665	3a ca f0 	: . . 
	cpl			;2668	2f 	/ 
	ld (0f0cah),a		;2669	32 ca f0 	2 . . 
	jp l2690h		;266c	c3 90 26 	. . & 
	call sub_3628h		;266f	cd 28 36 	. ( 6 
	ret c			;2672	d8 	. 
	ld hl,0ffadh		;2673	21 ad ff 	! . . 
	res 5,(hl)		;2676	cb ae 	. . 
	cp 03fh		;2678	fe 3f 	. ? 
	jr z,l2695h		;267a	28 19 	( . 
	ld (0f0b8h),a		;267c	32 b8 f0 	2 . . 
	call sub_33d8h		;267f	cd d8 33 	. . 3 
	xor a			;2682	af 	. 
l2683h:
	ld (0f0c8h),a		;2683	32 c8 f0 	2 . . 
l2686h:
	xor a			;2686	af 	. 
	ld (0f0c3h),a		;2687	32 c3 f0 	2 . . 
	ld (0f0c4h),a		;268a	32 c4 f0 	2 . . 
l268dh:
	call sub_2e6bh		;268d	cd 6b 2e 	. k . 
l2690h:
	ld (ix+014h),001h		;2690	dd 36 14 01 	. 6 . . 
	ret			;2694	c9 	. 
l2695h:
	ld a,e			;2695	7b 	{ 
	cp 03fh		;2696	fe 3f 	. ? 
	jr z,l2683h		;2698	28 e9 	( . 
	ld (0f071h),a		;269a	32 71 f0 	2 q . 
	call sub_343eh		;269d	cd 3e 34 	. > 4 
	xor a			;26a0	af 	. 
	jr l2683h		;26a1	18 e0 	. . 
	xor a			;26a3	af 	. 
	ld (0f0c6h),a		;26a4	32 c6 f0 	2 . . 
	call sub_37dah		;26a7	cd da 37 	. . 7 
	ld b,c			;26aa	41 	A 
	ld (hl),h			;26ab	74 	t 
	ld (hl),d			;26ac	72 	r 
	ld a,c			;26ad	79 	y 
	ld h,d			;26ae	62 	b 
	ld (hl),l			;26af	75 	u 
	ld (hl),h			;26b0	74 	t 
	ld a,c			;26b1	79 	y 
	jr nz,$+42		;26b2	20 28 	  ( 
	ld d,d			;26b4	52 	R 
	inc l			;26b5	2c 	, 
	ld d,e			;26b6	53 	S 
	add hl,hl			;26b7	29 	) 
	jr nz,l26f4h		;26b8	20 3a 	  : 
	inc h			;26ba	24 	$ 
l26bbh:
	call sub_3736h		;26bb	cd 36 37 	. 6 7 
	cp 01bh		;26be	fe 1b 	. . 
	jp z,l2e41h		;26c0	ca 41 2e 	. A . 
	cp 052h		;26c3	fe 52 	. R 
	jr z,l26fch		;26c5	28 35 	( 5 
	cp 053h		;26c7	fe 53 	. S 
	jr z,l2702h		;26c9	28 37 	( 7 
	cp 020h		;26cb	fe 20 	.   
	jr z,l26d4h		;26cd	28 05 	( . 
	cp 00dh		;26cf	fe 0d 	. . 
	jp nz,l225fh		;26d1	c2 5f 22 	. _ " 
l26d4h:
	call sub_32c4h		;26d4	cd c4 32 	. . 2 
l26d7h:
	call sub_333bh		;26d7	cd 3b 33 	. ; 3 
	ld hl,l0008h+1		;26da	21 09 00 	! . . 
	add hl,de			;26dd	19 	. 
	bit 7,(ix+00eh)		;26de	dd cb 0e 7e 	. . . ~ 
	jr z,l26e6h		;26e2	28 02 	( . 
	set 7,(hl)		;26e4	cb fe 	. . 
l26e6h:
	inc hl			;26e6	23 	# 
	bit 6,(ix+00eh)		;26e7	dd cb 0e 76 	. . . v 
	jr z,l26efh		;26eb	28 02 	( . 
	set 7,(hl)		;26ed	cb fe 	. . 
l26efh:
	ld c,01eh		;26ef	0e 1e 	. . 
	call l0005h		;26f1	cd 05 00 	. . . 
l26f4h:
	call sub_3314h		;26f4	cd 14 33 	. . 3 
	jr c,l26d7h		;26f7	38 de 	8 . 
	jp l268dh		;26f9	c3 8d 26 	. . & 
l26fch:
	set 7,(ix+00eh)		;26fc	dd cb 0e fe 	. . . . 
	jr l26bbh		;2700	18 b9 	. . 
l2702h:
	set 6,(ix+00eh)		;2702	dd cb 0e f6 	. . . . 
	jr l26bbh		;2706	18 b3 	. . 
	call sub_32c4h		;2708	cd c4 32 	. . 2 
	jp c,l2798h		;270b	da 98 27 	. . ' 
	call sub_274dh		;270e	cd 4d 27 	. M ' 
	cp 01bh		;2711	fe 1b 	. . 
	jp z,l2e41h		;2713	ca 41 2e 	. A . 
	cp 054h		;2716	fe 54 	. T 
	ret nz			;2718	c0 	. 
	call sub_3766h		;2719	cd 66 37 	. f 7 
	call sub_2768h		;271c	cd 68 27 	. h ' 
	ret c			;271f	d8 	. 
	call sub_2e6bh		;2720	cd 6b 2e 	. k . 
	ld c,(ix+00ch)		;2723	dd 4e 0c 	. N . 
	ld a,(0f0bdh)		;2726	3a bd f0 	: . . 
	sub c			;2729	91 	. 
	jr c,l273dh		;272a	38 11 	8 . 
	jr z,l273dh		;272c	28 0f 	( . 
	ld c,a			;272e	4f 	O 
	ld a,(0f0c3h)		;272f	3a c3 f0 	: . . 
	cp c			;2732	b9 	. 
	jp c,l2690h		;2733	da 90 26 	. . & 
	dec a			;2736	3d 	= 
l2737h:
	ld (0f0c3h),a		;2737	32 c3 f0 	2 . . 
	jp l2690h		;273a	c3 90 26 	. . & 
l273dh:
	ld a,c			;273d	79 	y 
	or a			;273e	b7 	. 
	jr z,l2737h		;273f	28 f6 	( . 
	ld a,(0f0c4h)		;2741	3a c4 f0 	: . . 
	sub 03ch		;2744	d6 3c 	. < 
	ld (0f0c4h),a		;2746	32 c4 f0 	2 . . 
	ld a,03bh		;2749	3e 3b 	> ; 
	jr l2737h		;274b	18 ea 	. . 
sub_274dh:
	call sub_37dah		;274d	cd da 37 	. . 7 
	ld l,e			;2750	6b 	k 
	ld h,c			;2751	61 	a 
	ld (hl),e			;2752	73 	s 
	ld l,a			;2753	6f 	o 
	ld (hl),a			;2754	77 	w 
	ld h,c			;2755	61 	a 
	ld a,(hl)			;2756	7e 	~ 
	jr nz,$+42		;2757	20 28 	  ( 
	ld d,h			;2759	54 	T 
	add hl,hl			;275a	29 	) 
	jr nz,$+38		;275b	20 24 	  $ 
	call sub_3736h		;275d	cd 36 37 	. 6 7 
	cp 054h		;2760	fe 54 	. T 
	push af			;2762	f5 	. 
	call sub_3769h		;2763	cd 69 37 	. i 7 
	pop af			;2766	f1 	. 
	ret			;2767	c9 	. 
sub_2768h:
	ld h,d			;2768	62 	b 
	ld l,e			;2769	6b 	k 
	inc hl			;276a	23 	# 
	call l3832h		;276b	cd 32 38 	. 2 8 
	call sub_3766h		;276e	cd 66 37 	. f 7 
	ld hl,l0008h+1		;2771	21 09 00 	! . . 
	add hl,de			;2774	19 	. 
	bit 7,(hl)		;2775	cb 7e 	. ~ 
	jr nz,l278eh		;2777	20 15 	  . 
	call sub_333bh		;2779	cd 3b 33 	. ; 3 
	call sub_3414h		;277c	cd 14 34 	. . 4 
	call sub_37dah		;277f	cd da 37 	. . 7 
	ld (hl),e			;2782	73 	s 
	ld l,e			;2783	6b 	k 
	ld h,c			;2784	61 	a 
	ld (hl),e			;2785	73 	s 
	ld l,a			;2786	6f 	o 
	ld (hl),a			;2787	77 	w 
	ld h,c			;2788	61 	a 
	ld l,(hl)			;2789	6e 	n 
	ld a,c			;278a	79 	y 
	inc h			;278b	24 	$ 
	or a			;278c	b7 	. 
	ret			;278d	c9 	. 
l278eh:
	call sub_37dah		;278e	cd da 37 	. . 7 
	rlca			;2791	07 	. 
	ld d,d			;2792	52 	R 
	cpl			;2793	2f 	/ 
	ld c,a			;2794	4f 	O 
	inc h			;2795	24 	$ 
	scf			;2796	37 	7 
	ret			;2797	c9 	. 
l2798h:
	call sub_37dah		;2798	cd da 37 	. . 7 
	ld c,e			;279b	4b 	K 
	ld h,c			;279c	61 	a 
	ld (hl),e			;279d	73 	s 
	ld l,a			;279e	6f 	o 
	ld (hl),a			;279f	77 	w 
	ld h,c			;27a0	61 	a 
	ld a,(hl)			;27a1	7e 	~ 
	jr nz,$+121		;27a2	20 77 	  w 
	ld (hl),e			;27a4	73 	s 
	ld a,d			;27a5	7a 	z 
	ld a,c			;27a6	79 	y 
	ld (hl),e			;27a7	73 	s 
	ld (hl),h			;27a8	74 	t 
	ld l,e			;27a9	6b 	k 
	ld l,c			;27aa	69 	i 
	ld h,l			;27ab	65 	e 
	jr nz,l27edh		;27ac	20 3f 	  ? 
	jr nz,l27d8h		;27ae	20 28 	  ( 
	ld d,h			;27b0	54 	T 
	ld b,c			;27b1	41 	A 
	ld c,e			;27b2	4b 	K 
	add hl,hl			;27b3	29 	) 
	jr nz,$+60		;27b4	20 3a 	  : 
	inc h			;27b6	24 	$ 
	call sub_3736h		;27b7	cd 36 37 	. 6 7 
	cp 01bh		;27ba	fe 1b 	. . 
	jp z,l2e41h		;27bc	ca 41 2e 	. A . 
	cp 054h		;27bf	fe 54 	. T 
	ret nz			;27c1	c0 	. 
	call sub_3736h		;27c2	cd 36 37 	. 6 7 
	cp 01bh		;27c5	fe 1b 	. . 
	jp z,l2e41h		;27c7	ca 41 2e 	. A . 
	cp 041h		;27ca	fe 41 	. A 
	ret nz			;27cc	c0 	. 
	call sub_3736h		;27cd	cd 36 37 	. 6 7 
	cp 01bh		;27d0	fe 1b 	. . 
	jp z,l2e41h		;27d2	ca 41 2e 	. A . 
	cp 04bh		;27d5	fe 4b 	. K 
	ret nz			;27d7	c0 	. 
l27d8h:
	call sub_379ah		;27d8	cd 9a 37 	. . 7 
	call sub_2768h		;27db	cd 68 27 	. h ' 
	call sub_3314h		;27de	cd 14 33 	. . 3 
	jr c,l27d8h		;27e1	38 f5 	8 . 
	call sub_3748h		;27e3	cd 48 37 	. H 7 
	jp l2686h		;27e6	c3 86 26 	. . & 
	ld (ix+00fh),002h		;27e9	dd 36 0f 02 	. 6 . . 
l27edh:
	jr l2801h		;27ed	18 12 	. . 
	ld a,001h		;27ef	3e 01 	> . 
	ld b,0afh		;27f1	06 af 	. . 
	ld (0f0c7h),a		;27f3	32 c7 f0 	2 . . 
	call sub_38f3h		;27f6	cd f3 38 	. . 8 
	ld a,(0f26bh)		;27f9	3a 6b f2 	: k . 
	bit 4,a		;27fc	cb 67 	. g 
	call nz,sub_3823h		;27fe	c4 23 38 	. # 8 
l2801h:
	call sub_3796h		;2801	cd 96 37 	. . 7 
	ld hl,l0100h		;2804	21 00 01 	! . . 
	ld (0f0e2h),hl		;2807	22 e2 f0 	" . . 
	call sub_33eah		;280a	cd ea 33 	. . 3 
	xor a			;280d	af 	. 
	ld (0f0d1h),a		;280e	32 d1 f0 	2 . . 
l2811h:
	ld bc,l0020h		;2811	01 20 00 	.   . 
	call sub_3373h		;2814	cd 73 33 	. s 3 
	ld a,c			;2817	79 	y 
	cp 020h		;2818	fe 20 	.   
	jr z,l2830h		;281a	28 14 	( . 
	ld hl,(0f0e0h)		;281c	2a e0 f0 	* . . 
	dec hl			;281f	2b 	+ 
	ex de,hl			;2820	eb 	. 
	ld hl,l0100h		;2821	21 00 01 	! . . 
	ld a,(0f0c7h)		;2824	3a c7 f0 	: . . 
	cp 001h		;2827	fe 01 	. . 
	jr nz,l2844h		;2829	20 19 	  . 
	call sub_353ch		;282b	cd 3c 35 	. < 5 
l282eh:
	jr c,l2811h		;282e	38 e1 	8 . 
l2830h:
	bit 1,(ix+00fh)		;2830	dd cb 0f 4e 	. . . N 
	jr nz,l284bh		;2834	20 15 	  . 
	ld a,(0f26bh)		;2836	3a 6b f2 	: k . 
	bit 4,a		;2839	cb 67 	. g 
	call nz,sub_3814h		;283b	c4 14 38 	. . 8 
	call sub_379ah		;283e	cd 9a 37 	. . 7 
	jp l248ah		;2841	c3 8a 24 	. . $ 
l2844h:
	jr nc,l2811h		;2844	30 cb 	0 . 
	call sub_344ah		;2846	cd 4a 34 	. J 4 
	jr l282eh		;2849	18 e3 	. . 
l284bh:
	call sub_37dah		;284b	cd da 37 	. . 7 
	jr nz,$+82		;284e	20 50 	  P 
	ld l,h			;2850	6c 	l 
	ld l,c			;2851	69 	i 
	ld l,e			;2852	6b 	k 
	jr nz,l28c5h		;2853	20 70 	  p 
	ld (hl),d			;2855	72 	r 
	ld a,d			;2856	7a 	z 
	ld h,l			;2857	65 	e 
	ld h,e			;2858	63 	c 
	ld a,d			;2859	7a 	z 
	ld a,c			;285a	79 	y 
	ld (hl),h			;285b	74 	t 
	ld h,c			;285c	61 	a 
	ld l,(hl)			;285d	6e 	n 
	ld a,c			;285e	79 	y 
	inc h			;285f	24 	$ 
	call sub_37dah		;2860	cd da 37 	. . 7 
	inc l			;2863	2c 	, 
	jr nz,l28d9h		;2864	20 73 	  s 
	ld (hl),l			;2866	75 	u 
	ld l,l			;2867	6d 	m 
	ld h,c			;2868	61 	a 
	jr nz,$+63		;2869	20 3d 	  = 
	jr nz,l2891h		;286b	20 24 	  $ 
	ld a,(0f0d1h)		;286d	3a d1 f0 	: . . 
	jp l3522h		;2870	c3 22 35 	. " 5 
	call sub_32cch		;2873	cd cc 32 	. . 2 
	ld hl,l0008h+1		;2876	21 09 00 	! . . 
	add hl,de			;2879	19 	. 
	bit 7,(hl)		;287a	cb 7e 	. ~ 
	jr nz,l28d1h		;287c	20 53 	  S 
	call sub_333bh		;287e	cd 3b 33 	. ; 3 
	call sub_354fh		;2881	cd 4f 35 	. O 5 
	jr c,l28bdh		;2884	38 37 	8 7 
	jr z,l28bdh		;2886	28 35 	( 5 
	ld a,(0f0cbh)		;2888	3a cb f0 	: . . 
	or a			;288b	b7 	. 
	jr nz,l28bdh		;288c	20 2f 	  / 
	ld hl,0f097h		;288e	21 97 f0 	! . . 
l2891h:
	ld de,0f086h		;2891	11 86 f0 	. . . 
	ld bc,l000bh+1		;2894	01 0c 00 	. . . 
	ldir		;2897	ed b0 	. . 
	ld de,0f086h		;2899	11 86 f0 	. . . 
	ld c,011h		;289c	0e 11 	. . 
	call l0005h		;289e	cd 05 00 	. . . 
	inc a			;28a1	3c 	< 
	jr z,l28b7h		;28a2	28 13 	( . 
	call sub_37dah		;28a4	cd da 37 	. . 7 
	jp p,l6c50h		;28a7	f2 50 6c 	. P l 
	ld l,c			;28aa	69 	i 
	ld l,e			;28ab	6b 	k 
	jr nz,$+107		;28ac	20 69 	  i 
	ld (hl),e			;28ae	73 	s 
	ld (hl),h			;28af	74 	t 
	ld l,(hl)			;28b0	6e 	n 
	ld l,c			;28b1	69 	i 
	ld h,l			;28b2	65 	e 
	ld l,d			;28b3	6a 	j 
	ld h,l			;28b4	65 	e 
	inc h			;28b5	24 	$ 
	ret			;28b6	c9 	. 
l28b7h:
	call sub_3436h		;28b7	cd 36 34 	. 6 4 
	jp l268dh		;28ba	c3 8d 26 	. . & 
l28bdh:
	cp 01bh		;28bd	fe 1b 	. . 
	jp z,l2e41h		;28bf	ca 41 2e 	. A . 
sub_28c2h:
	call sub_37dah		;28c2	cd da 37 	. . 7 
l28c5h:
	jp p,l7c7ah		;28c5	f2 7a 7c 	. z | 
	ld h,c			;28c8	61 	a 
	jr nz,l2939h		;28c9	20 6e 	  n 
	ld h,c			;28cb	61 	a 
	ld a,d			;28cc	7a 	z 
	ld (hl),a			;28cd	77 	w 
	ld h,c			;28ce	61 	a 
	inc h			;28cf	24 	$ 
	ret			;28d0	c9 	. 
l28d1h:
	call sub_37dah		;28d1	cd da 37 	. . 7 
	rlca			;28d4	07 	. 
	ld d,b			;28d5	50 	P 
	ld l,h			;28d6	6c 	l 
	ld l,c			;28d7	69 	i 
	ld l,e			;28d8	6b 	k 
l28d9h:
	jr nz,$+84		;28d9	20 52 	  R 
	cpl			;28db	2f 	/ 
	ld c,a			;28dc	4f 	O 
	inc h			;28dd	24 	$ 
	ret			;28de	c9 	. 
	call sub_3644h		;28df	cd 44 36 	. D 6 
	ret c			;28e2	d8 	. 
	cp 03fh		;28e3	fe 3f 	. ? 
	jr nz,l28fch		;28e5	20 15 	  . 
	ld (0f0c5h),a		;28e7	32 c5 f0 	2 . . 
	ld (ix+003h),e		;28ea	dd 73 03 	. s . 
	ld a,(0f071h)		;28ed	3a 71 f0 	: q . 
	cp e			;28f0	bb 	. 
	jp z,l36cch		;28f1	ca cc 36 	. . 6 
	ld a,(0f0b8h)		;28f4	3a b8 f0 	: . . 
	ld (0f0b9h),a		;28f7	32 b9 f0 	2 . . 
	jr l28ffh		;28fa	18 03 	. . 
l28fch:
	ld (0f0b9h),a		;28fc	32 b9 f0 	2 . . 
l28ffh:
	call sub_33d8h		;28ff	cd d8 33 	. . 3 
	call sub_33ceh		;2902	cd ce 33 	. . 3 
	call sub_32c4h		;2905	cd c4 32 	. . 2 
l2908h:
	call sub_333bh		;2908	cd 3b 33 	. ; 3 
	push de			;290b	d5 	. 
	ld h,d			;290c	62 	b 
	ld l,e			;290d	6b 	k 
	push hl			;290e	e5 	. 
	call sub_379ah		;290f	cd 9a 37 	. . 7 
	inc hl			;2912	23 	# 
	call l3832h		;2913	cd 32 38 	. 2 8 
	call sub_3769h		;2916	cd 69 37 	. i 7 
	pop hl			;2919	e1 	. 
	ld de,0f097h		;291a	11 97 f0 	. . . 
	ld bc,l000bh+1		;291d	01 0c 00 	. . . 
	ldir		;2920	ed b0 	. . 
	call sub_33e2h		;2922	cd e2 33 	. . 3 
	ld a,(0f0b9h)		;2925	3a b9 f0 	: . . 
	ld (0f097h),a		;2928	32 97 f0 	2 . . 
	cp (ix+000h)		;292b	dd be 00 	. . . 
	jr nz,l2946h		;292e	20 16 	  . 
	bit 0,(ix+00dh)		;2930	dd cb 0d 46 	. . . F 
	jr nz,l2946h		;2934	20 10 	  . 
	call sub_354fh		;2936	cd 4f 35 	. O 5 
l2939h:
	jp c,l2a49h		;2939	da 49 2a 	. I * 
	jp z,l2a49h		;293c	ca 49 2a 	. I * 
	ld a,(0f0cbh)		;293f	3a cb f0 	: . . 
	or a			;2942	b7 	. 
	jp nz,l2a49h		;2943	c2 49 2a 	. I * 
l2946h:
	pop de			;2946	d1 	. 
	call sub_33fah		;2947	cd fa 33 	. . 3 
	call sub_2a5ah		;294a	cd 5a 2a 	. Z * 
	ld a,(0f0bch)		;294d	3a bc f0 	: . . 
	cp 007h		;2950	fe 07 	. . 
	jp z,l2a04h		;2952	ca 04 2a 	. . * 
	ld de,0f097h		;2955	11 97 f0 	. . . 
	ld c,011h		;2958	0e 11 	. . 
	call l0005h		;295a	cd 05 00 	. . . 
	cp 0ffh		;295d	fe ff 	. . 
	jr z,l2989h		;295f	28 28 	( ( 
	call sub_3900h		;2961	cd 00 39 	. . 9 
	add a,009h		;2964	c6 09 	. . 
	ld l,a			;2966	6f 	o 
	call sub_0011h		;2967	cd 11 00 	. . . 
	bit 7,a		;296a	cb 7f 	.  
	jp nz,l2a37h		;296c	c2 37 2a 	. 7 * 
	call sub_37dah		;296f	cd da 37 	. . 7 
	pop af			;2972	f1 	. 
	ld l,d			;2973	6a 	j 
	ld (hl),l			;2974	75 	u 
	ld a,l			;2975	7d 	} 
	jr nz,l29e1h		;2976	20 69 	  i 
	ld (hl),e			;2978	73 	s 
	ld (hl),h			;2979	74 	t 
	ld l,(hl)			;297a	6e 	n 
	ld l,c			;297b	69 	i 
	ld h,l			;297c	65 	e 
	ld l,d			;297d	6a 	j 
	ld h,l			;297e	65 	e 
	jr nz,l29aeh		;297f	20 2d 	  - 
	jr nz,$+38		;2981	20 24 	  $ 
	call sub_274dh		;2983	cd 4d 27 	. M ' 
	jp nz,l2a1fh		;2986	c2 1f 2a 	. . * 
l2989h:
	xor a			;2989	af 	. 
	ld (0f0d1h),a		;298a	32 d1 f0 	2 . . 
	ld de,0f097h		;298d	11 97 f0 	. . . 
	call sub_342ah		;2990	cd 2a 34 	. * 4 
l2993h:
	call sub_2a55h		;2993	cd 55 2a 	. U * 
	ld bc,00200h		;2996	01 00 02 	. . . 
	call sub_3373h		;2999	cd 73 33 	. s 3 
	bit 1,b		;299c	cb 48 	. H 
	jr nz,l29bdh		;299e	20 1d 	  . 
	call sub_2a5ah		;29a0	cd 5a 2a 	. Z * 
	call sub_33ach		;29a3	cd ac 33 	. . 3 
	jr nc,l2993h		;29a6	30 eb 	0 . 
l29a8h:
	call sub_37dah		;29a8	cd da 37 	. . 7 
	ld b,d			;29ab	42 	B 
	ld (hl),d			;29ac	72 	r 
	ld h,c			;29ad	61 	a 
l29aeh:
	ld l,e			;29ae	6b 	k 
	jr nz,l2a1eh		;29af	20 6d 	  m 
	ld l,c			;29b1	69 	i 
	ld h,l			;29b2	65 	e 
	ld l,d			;29b3	6a 	j 
	ld (hl),e			;29b4	73 	s 
	ld h,e			;29b5	63 	c 
	ld h,c			;29b6	61 	a 
	inc h			;29b7	24 	$ 
	call sub_2a55h		;29b8	cd 55 2a 	. U * 
	jr l2a28h		;29bb	18 6b 	. k 
l29bdh:
	call sub_33e2h		;29bd	cd e2 33 	. . 3 
	call sub_2a5ah		;29c0	cd 5a 2a 	. Z * 
	ld de,0f097h		;29c3	11 97 f0 	. . . 
	call sub_3407h		;29c6	cd 07 34 	. . 4 
	jr z,l29a8h		;29c9	28 dd 	( . 
	ld hl,0f097h		;29cb	21 97 f0 	! . . 
	ld de,0f076h		;29ce	11 76 f0 	. v . 
	ld bc,l000bh+1		;29d1	01 0c 00 	. . . 
	ldir		;29d4	ed b0 	. . 
	ex de,hl			;29d6	eb 	. 
	ld b,015h		;29d7	06 15 	. . 
l29d9h:
	ld (hl),000h		;29d9	36 00 	6 . 
	inc hl			;29db	23 	# 
	djnz l29d9h		;29dc	10 fb 	. . 
	call sub_33f3h		;29de	cd f3 33 	. . 3 
l29e1h:
	ld c,(ix+019h)		;29e1	dd 4e 19 	. N . 
	push bc			;29e4	c5 	. 
	xor a			;29e5	af 	. 
	ld (0f0d1h),a		;29e6	32 d1 f0 	2 . . 
l29e9h:
	ld bc,00200h		;29e9	01 00 02 	. . . 
	call sub_3373h		;29ec	cd 73 33 	. s 3 
	bit 1,b		;29ef	cb 48 	. H 
	jr z,l29e9h		;29f1	28 f6 	( . 
	pop bc			;29f3	c1 	. 
	ld a,(0f0d1h)		;29f4	3a d1 f0 	: . . 
	cp c			;29f7	b9 	. 
	jr z,l2a10h		;29f8	28 16 	( . 
	call sub_37dah		;29fa	cd da 37 	. . 7 
	ld b,d			;29fd	42 	B 
	ld e,h			;29fe	5c 	\ 
	ld b,c			;29ff	41 	A 
l2a00h:
	ld b,h			;2a00	44 	D 
	inc h			;2a01	24 	$ 
	jr l2a1fh		;2a02	18 1b 	. . 
l2a04h:
	call sub_37dah		;2a04	cd da 37 	. . 7 
	ld (hl),d			;2a07	72 	r 
	ld h,c			;2a08	61 	a 
	ld l,(hl)			;2a09	6e 	n 
	ld h,h			;2a0a	64 	d 
	ld l,a			;2a0b	6f 	o 
	ld l,l			;2a0c	6d 	m 
	inc h			;2a0d	24 	$ 
	jr l2a1fh		;2a0e	18 0f 	. . 
l2a10h:
	call sub_37dah		;2a10	cd da 37 	. . 7 
	jr nz,l2a88h		;2a13	20 73 	  s 
	ld l,e			;2a15	6b 	k 
	ld l,a			;2a16	6f 	o 
	ld (hl),b			;2a17	70 	p 
	ld l,c			;2a18	69 	i 
	ld l,a			;2a19	6f 	o 
	ld (hl),a			;2a1a	77 	w 
	ld h,c			;2a1b	61 	a 
	ld l,(hl)			;2a1c	6e 	n 
	ld a,c			;2a1d	79 	y 
l2a1eh:
	inc h			;2a1e	24 	$ 
l2a1fh:
	call sub_2a55h		;2a1f	cd 55 2a 	. U * 
	call sub_3314h		;2a22	cd 14 33 	. . 3 
	jp c,l2908h		;2a25	da 08 29 	. . ) 
l2a28h:
	call sub_3748h		;2a28	cd 48 37 	. H 7 
l2a2bh:
	ld a,(0f0b8h)		;2a2b	3a b8 f0 	: . . 
	cp (ix+001h)		;2a2e	dd be 01 	. . . 
	jp nz,l2690h		;2a31	c2 90 26 	. . & 
	jp l2686h		;2a34	c3 86 26 	. . & 
l2a37h:
	call sub_37dah		;2a37	cd da 37 	. . 7 
	ld l,c			;2a3a	69 	i 
	ld (hl),e			;2a3b	73 	s 
	ld (hl),h			;2a3c	74 	t 
	ld l,(hl)			;2a3d	6e 	n 
	ld l,c			;2a3e	69 	i 
	ld h,l			;2a3f	65 	e 
	ld l,d			;2a40	6a 	j 
	ld h,l			;2a41	65 	e 
	jr nz,l2a96h		;2a42	20 52 	  R 
	cpl			;2a44	2f 	/ 
	ld c,a			;2a45	4f 	O 
	inc h			;2a46	24 	$ 
	jr l2a1fh		;2a47	18 d6 	. . 
l2a49h:
	pop de			;2a49	d1 	. 
	push af			;2a4a	f5 	. 
	call l28bdh		;2a4b	cd bd 28 	. . ( 
	pop af			;2a4e	f1 	. 
	cp 01bh		;2a4f	fe 1b 	. . 
	jr z,l2a2bh		;2a51	28 d8 	( . 
	jr l2a28h		;2a53	18 d3 	. . 
sub_2a55h:
	ld e,(ix-047h)		;2a55	dd 5e b9 	. ^ . 
	jr l2a5dh		;2a58	18 03 	. . 
sub_2a5ah:
	ld e,(ix+003h)		;2a5a	dd 5e 03 	. ^ . 
l2a5dh:
	bit 0,(ix+00dh)		;2a5d	dd cb 0d 46 	. . . F 
	ret z			;2a61	c8 	. 
	jp sub_3445h		;2a62	c3 45 34 	. E 4 
	call sub_333bh		;2a65	cd 3b 33 	. ; 3 
	call sub_3561h		;2a68	cd 61 35 	. a 5 
	jp c,l28bdh		;2a6b	da bd 28 	. . ( 
	push af			;2a6e	f5 	. 
	ld hl,0f097h		;2a6f	21 97 f0 	! . . 
	ld de,0f0e6h		;2a72	11 e6 f0 	. . . 
	ld bc,l000bh+1		;2a75	01 0c 00 	. . . 
	ldir		;2a78	ed b0 	. . 
	pop af			;2a7a	f1 	. 
	call z,sub_2a81h		;2a7b	cc 81 2a 	. . * 
	jp l2686h		;2a7e	c3 86 26 	. . & 
sub_2a81h:
	ld hl,0f0e7h		;2a81	21 e7 f0 	! . . 
sub_2a84h:
	ld b,00bh		;2a84	06 0b 	. . 
l2a86h:
	ld (hl),03fh		;2a86	36 3f 	6 ? 
l2a88h:
	inc hl			;2a88	23 	# 
	djnz l2a86h		;2a89	10 fb 	. . 
	ret			;2a8b	c9 	. 
	ld hl,0f26bh		;2a8c	21 6b f2 	! k . 
	res 2,(hl)		;2a8f	cb 96 	. . 
	res 3,(hl)		;2a91	cb 9e 	. . 
	ld hl,l0002h+1		;2a93	21 03 00 	! . . 
l2a96h:
	call sub_0011h		;2a96	cd 11 00 	. . . 
	add a,040h		;2a99	c6 40 	. @ 
	ld (hl),a			;2a9b	77 	w 
	set 7,(ix-048h)		;2a9c	dd cb b8 fe 	. . . . 
	ret			;2aa0	c9 	. 
	ld hl,0f26bh		;2aa1	21 6b f2 	! k . 
	res 2,(hl)		;2aa4	cb 96 	. . 
	res 3,(hl)		;2aa6	cb 9e 	. . 
	ld a,(0f070h)		;2aa8	3a 70 f0 	: p . 
	xor 080h		;2aab	ee 80 	. . 
	ld (0f070h),a		;2aad	32 70 f0 	2 p . 
	ret			;2ab0	c9 	. 
	ld a,(0f070h)		;2ab1	3a 70 f0 	: p . 
	bit 7,a		;2ab4	cb 7f 	.  
	ret z			;2ab6	c8 	. 
	call sub_37dah		;2ab7	cd da 37 	. . 7 
	ld d,b			;2aba	50 	P 
	ld l,c			;2abb	69 	i 
	ld (hl),e			;2abc	73 	s 
	ld a,d			;2abd	7a 	z 
	jr nz,l2b3ah		;2abe	20 7a 	  z 
	ld l,(hl)			;2ac0	6e 	n 
	ld h,c			;2ac1	61 	a 
	ld l,e			;2ac2	6b 	k 
	ld l,c			;2ac3	69 	i 
	jr nz,l2b34h		;2ac4	20 6e 	  n 
	ld h,c			;2ac6	61 	a 
	jr nz,$+102		;2ac7	20 64 	  d 
	ld (hl),d			;2ac9	72 	r 
	ld (hl),l			;2aca	75 	u 
	ld l,e			;2acb	6b 	k 
	ld h,c			;2acc	61 	a 
	ld (hl),d			;2acd	72 	r 
	ld l,e			;2ace	6b 	k 
	ld b,b			;2acf	40 	@ 
	jr nz,l2af2h		;2ad0	20 20 	    
	jr nz,l2af4h		;2ad2	20 20 	    
	ld a,d			;2ad4	7a 	z 
	ld l,(hl)			;2ad5	6e 	n 
	ld h,c			;2ad6	61 	a 
	ld l,e			;2ad7	6b 	k 
	jr nz,$+42		;2ad8	20 28 	  ( 
	ld h,e			;2ada	63 	c 
	ld (hl),h			;2adb	74 	t 
	ld (hl),d			;2adc	72 	r 
	ld l,h			;2add	6c 	l 
	add hl,hl			;2ade	29 	) 
	ld e,d			;2adf	5a 	Z 
	jr nz,l2b0fh		;2ae0	20 2d 	  - 
	jr nz,$+109		;2ae2	20 6b 	  k 
	ld l,a			;2ae4	6f 	o 
	ld l,(hl)			;2ae5	6e 	n 
	ld l,c			;2ae6	69 	i 
	ld h,l			;2ae7	65 	e 
	ld h,e			;2ae8	63 	c 
	jr nz,$+114		;2ae9	20 70 	  p 
	ld l,a			;2aeb	6f 	o 
	ld l,h			;2aec	6c 	l 
	ld h,l			;2aed	65 	e 
	ld h,e			;2aee	63 	c 
	ld h,l			;2aef	65 	e 
	ld l,(hl)			;2af0	6e 	n 
	ld l,c			;2af1	69 	i 
l2af2h:
	ld h,c			;2af2	61 	a 
	dec c			;2af3	0d 	. 
l2af4h:
	ld a,(bc)			;2af4	0a 	. 
	inc h			;2af5	24 	$ 
l2af6h:
	call sub_36feh		;2af6	cd fe 36 	. . 6 
	cp 01ah		;2af9	fe 1a 	. . 
	jp z,l2690h		;2afb	ca 90 26 	. . & 
	ld c,a			;2afe	4f 	O 
	cp 020h		;2aff	fe 20 	.   
	jr c,l2b0bh		;2b01	38 08 	8 . 
l2b03h:
	call 0f20ch		;2b03	cd 0c f2 	. . . 
l2b06h:
	call 0f20fh		;2b06	cd 0f f2 	. . . 
	jr l2af6h		;2b09	18 eb 	. . 
l2b0bh:
	cp 00dh		;2b0b	fe 0d 	. . 
	jr z,l2b03h		;2b0d	28 f4 	( . 
l2b0fh:
	cp 00ah		;2b0f	fe 0a 	. . 
	jr z,l2b03h		;2b11	28 f0 	( . 
	push bc			;2b13	c5 	. 
	push af			;2b14	f5 	. 
	ld c,03ch		;2b15	0e 3c 	. < 
	call 0f20ch		;2b17	cd 0c f2 	. . . 
	pop af			;2b1a	f1 	. 
	call l3522h		;2b1b	cd 22 35 	. " 5 
	ld c,03eh		;2b1e	0e 3e 	. > 
	call 0f20ch		;2b20	cd 0c f2 	. . . 
	pop bc			;2b23	c1 	. 
	jr l2b06h		;2b24	18 e0 	. . 
	ld a,(0fb7ch)		;2b26	3a 7c fb 	: | . 
	bit 7,a		;2b29	cb 7f 	.  
	ret z			;2b2b	c8 	. 
	bit 0,a		;2b2c	cb 47 	. G 
	jr z,l2b4eh		;2b2e	28 1e 	( . 
	call sub_37dah		;2b30	cd da 37 	. . 7 
	ld b,e			;2b33	43 	C 
l2b34h:
	ld a,d			;2b34	7a 	z 
	ld a,c			;2b35	79 	y 
	jr nz,l2bb2h		;2b36	20 7a 	  z 
	ld (hl),a			;2b38	77 	w 
	ld l,a			;2b39	6f 	o 
l2b3ah:
	ld l,h			;2b3a	6c 	l 
	ld l,(hl)			;2b3b	6e 	n 
	ld l,c			;2b3c	69 	i 
	ld a,(hl)			;2b3d	7e 	~ 
	jr nz,l2ba2h		;2b3e	20 62 	  b 
	ld h,c			;2b40	61 	a 
	ld l,(hl)			;2b41	6e 	n 
	ld l,e			;2b42	6b 	k 
	jr nz,$+51		;2b43	20 31 	  1 
	inc h			;2b45	24 	$ 
	call sub_3727h		;2b46	cd 27 37 	. ' 7 
	cp 054h		;2b49	fe 54 	. T 
	jp nz,l2e41h		;2b4b	c2 41 2e 	. A . 
l2b4eh:
	ld a,0ffh		;2b4e	3e ff 	> . 
	call sub_0017h		;2b50	cd 17 00 	. . . 
	call sub_33d8h		;2b53	cd d8 33 	. . 3 
	jp l268dh		;2b56	c3 8d 26 	. . & 
	ld a,(0fb7ch)		;2b59	3a 7c fb 	: | . 
	bit 7,a		;2b5c	cb 7f 	.  
	jp nz,l225fh		;2b5e	c2 5f 22 	. _ " 
	ld a,007h		;2b61	3e 07 	> . 
	call sub_376bh		;2b63	cd 6b 37 	. k 7 
	ld a,001h		;2b66	3e 01 	> . 
	ld b,0afh		;2b68	06 af 	. . 
	ld (0f0e5h),a		;2b6a	32 e5 f0 	2 . . 
	call sub_32cch		;2b6d	cd cc 32 	. . 2 
	ld hl,l0008h+1		;2b70	21 09 00 	! . . 
	add hl,de			;2b73	19 	. 
	ld a,(hl)			;2b74	7e 	~ 
	and 07fh		;2b75	e6 7f 	.  
	cp 043h		;2b77	fe 43 	. C 
	jp nz,l225fh		;2b79	c2 5f 22 	. _ " 
	inc hl			;2b7c	23 	# 
	ld a,(hl)			;2b7d	7e 	~ 
	and 07fh		;2b7e	e6 7f 	.  
	cp 04fh		;2b80	fe 4f 	. O 
	jp nz,l225fh		;2b82	c2 5f 22 	. _ " 
	inc hl			;2b85	23 	# 
	ld a,(hl)			;2b86	7e 	~ 
	and 07fh		;2b87	e6 7f 	.  
	cp 04dh		;2b89	fe 4d 	. M 
	jp nz,l225fh		;2b8b	c2 5f 22 	. _ " 
	call sub_333bh		;2b8e	cd 3b 33 	. ; 3 
	ld h,d			;2b91	62 	b 
	ld l,e			;2b92	6b 	k 
	call sub_3796h		;2b93	cd 96 37 	. . 7 
	inc hl			;2b96	23 	# 
	ld b,008h		;2b97	06 08 	. . 
	call sub_3846h		;2b99	cd 46 38 	. F 8 
	call sub_3769h		;2b9c	cd 69 37 	. i 7 
	call sub_35cbh		;2b9f	cd cb 35 	. . 5 
l2ba2h:
	jp c,l28bdh		;2ba2	da bd 28 	. . ( 
	call sub_379ah		;2ba5	cd 9a 37 	. . 7 
	xor a			;2ba8	af 	. 
	ld (l007ch),a		;2ba9	32 7c 00 	2 | . 
	ld hl,l005ch		;2bac	21 5c 00 	! \ . 
	call sub_2bddh		;2baf	cd dd 2b 	. . + 
l2bb2h:
	ld hl,0006ch		;2bb2	21 6c 00 	! l . 
	call sub_2bddh		;2bb5	cd dd 2b 	. . + 
	call sub_33f3h		;2bb8	cd f3 33 	. . 3 
	jp z,l2c7ch		;2bbb	ca 7c 2c 	. | , 
	ld a,(0f0e5h)		;2bbe	3a e5 f0 	: . . 
	call sub_0017h		;2bc1	cd 17 00 	. . . 
	jp c,l2e41h		;2bc4	da 41 2e 	. A . 
	call sub_335bh		;2bc7	cd 5b 33 	. [ 3 
	jp nc,l1b98h		;2bca	d2 98 1b 	. . . 
	call sub_1bc9h		;2bcd	cd c9 1b 	. . . 
	jp 0f203h		;2bd0	c3 03 f2 	. . . 
sub_2bd3h:
	ld hl,0f076h		;2bd3	21 76 f0 	! v . 
	call sub_2bddh		;2bd6	cd dd 2b 	. . + 
	inc c			;2bd9	0c 	. 
	dec c			;2bda	0d 	. 
	ld a,c			;2bdb	79 	y 
	ret			;2bdc	c9 	. 
sub_2bddh:
	push hl			;2bdd	e5 	. 
	call sub_2c39h		;2bde	cd 39 2c 	. 9 , 
	pop de			;2be1	d1 	. 
	ld hl,(0f074h)		;2be2	2a 74 f0 	* t . 
	ld c,000h		;2be5	0e 00 	. . 
	call sub_2c4bh		;2be7	cd 4b 2c 	. K , 
	ld (0f072h),hl		;2bea	22 72 f0 	" r . 
	ret z			;2bed	c8 	. 
	call sub_0011h		;2bee	cd 11 00 	. . . 
	call sub_373fh		;2bf1	cd 3f 37 	. ? 7 
	sub 040h		;2bf4	d6 40 	. @ 
	ld b,a			;2bf6	47 	G 
	inc hl			;2bf7	23 	# 
	call sub_0011h		;2bf8	cd 11 00 	. . . 
	cp 03ah		;2bfb	fe 3a 	. : 
	jr z,l2c02h		;2bfd	28 03 	( . 
	dec hl			;2bff	2b 	+ 
	jr l2c05h		;2c00	18 03 	. . 
l2c02h:
	ld a,b			;2c02	78 	x 
	ld (de),a			;2c03	12 	. 
	inc hl			;2c04	23 	# 
l2c05h:
	ld b,008h		;2c05	06 08 	. . 
	call sub_2c11h		;2c07	cd 11 2c 	. . , 
	ret c			;2c0a	d8 	. 
	cp 02eh		;2c0b	fe 2e 	. . 
	ret nz			;2c0d	c0 	. 
	ld b,003h		;2c0e	06 03 	. . 
	inc hl			;2c10	23 	# 
sub_2c11h:
	call sub_2c56h		;2c11	cd 56 2c 	. V , 
	jr c,l2c35h		;2c14	38 1f 	8 . 
	jr z,l2c32h		;2c16	28 1a 	( . 
	inc de			;2c18	13 	. 
	call sub_373fh		;2c19	cd 3f 37 	. ? 7 
	cp 02ah		;2c1c	fe 2a 	. * 
	jr nz,l2c24h		;2c1e	20 04 	  . 
	inc c			;2c20	0c 	. 
	ld a,03fh		;2c21	3e 3f 	> ? 
	dec hl			;2c23	2b 	+ 
l2c24h:
	ld (de),a			;2c24	12 	. 
	inc hl			;2c25	23 	# 
	djnz sub_2c11h		;2c26	10 e9 	. . 
l2c28h:
	call sub_2c56h		;2c28	cd 56 2c 	. V , 
	jr c,l2c35h		;2c2b	38 08 	8 . 
	jr z,l2c35h		;2c2d	28 06 	( . 
	inc hl			;2c2f	23 	# 
	jr l2c28h		;2c30	18 f6 	. . 
l2c32h:
	inc de			;2c32	13 	. 
	djnz l2c32h		;2c33	10 fd 	. . 
l2c35h:
	ld (0f074h),hl		;2c35	22 74 f0 	" t . 
	ret			;2c38	c9 	. 
sub_2c39h:
	ld (hl),000h		;2c39	36 00 	6 . 
	inc hl			;2c3b	23 	# 
	ld b,00bh		;2c3c	06 0b 	. . 
	ld a,020h		;2c3e	3e 20 	>   
	call sub_2c46h		;2c40	cd 46 2c 	. F , 
	ld b,004h		;2c43	06 04 	. . 
	xor a			;2c45	af 	. 
sub_2c46h:
	ld (hl),a			;2c46	77 	w 
	inc hl			;2c47	23 	# 
	djnz sub_2c46h		;2c48	10 fc 	. . 
	ret			;2c4a	c9 	. 
sub_2c4bh:
	call sub_0011h		;2c4b	cd 11 00 	. . . 
	or a			;2c4e	b7 	. 
	ret z			;2c4f	c8 	. 
	cp 020h		;2c50	fe 20 	.   
	ret nz			;2c52	c0 	. 
	inc hl			;2c53	23 	# 
	jr sub_2c4bh		;2c54	18 f5 	. . 
sub_2c56h:
	call sub_0011h		;2c56	cd 11 00 	. . . 
	cp 03fh		;2c59	fe 3f 	. ? 
	jr nz,l2c5eh		;2c5b	20 01 	  . 
	inc c			;2c5d	0c 	. 
l2c5eh:
	or a			;2c5e	b7 	. 
	scf			;2c5f	37 	7 
	ret z			;2c60	c8 	. 
	cp 03dh		;2c61	fe 3d 	. = 
	ret z			;2c63	c8 	. 
	cp 05fh		;2c64	fe 5f 	. _ 
	ret z			;2c66	c8 	. 
	cp 02eh		;2c67	fe 2e 	. . 
	ret z			;2c69	c8 	. 
	cp 03ah		;2c6a	fe 3a 	. : 
	ret z			;2c6c	c8 	. 
	cp 03bh		;2c6d	fe 3b 	. ; 
	ret z			;2c6f	c8 	. 
	cp 03ch		;2c70	fe 3c 	. < 
	ret z			;2c72	c8 	. 
	cp 03eh		;2c73	fe 3e 	. > 
	ret z			;2c75	c8 	. 
	cp 020h		;2c76	fe 20 	.   
	ret z			;2c78	c8 	. 
	scf			;2c79	37 	7 
	ccf			;2c7a	3f 	? 
	ret			;2c7b	c9 	. 
l2c7ch:
	call sub_37dah		;2c7c	cd da 37 	. . 7 
	ld a,(bc)			;2c7f	0a 	. 
	ld d,b			;2c80	50 	P 
	ld l,h			;2c81	6c 	l 
	ld l,c			;2c82	69 	i 
	ld l,e			;2c83	6b 	k 
	jr nz,l2cf4h		;2c84	20 6e 	  n 
	ld l,c			;2c86	69 	i 
	ld h,l			;2c87	65 	e 
	jr nz,l2d04h		;2c88	20 7a 	  z 
	ld l,(hl)			;2c8a	6e 	n 
	ld h,c			;2c8b	61 	a 
	ld l,h			;2c8c	6c 	l 
	ld h,l			;2c8d	65 	e 
	ld a,d			;2c8e	7a 	z 
	ld l,c			;2c8f	69 	i 
	ld l,a			;2c90	6f 	o 
	ld l,(hl)			;2c91	6e 	n 
	ld a,c			;2c92	79 	y 
	ld a,(bc)			;2c93	0a 	. 
	ld a,(bc)			;2c94	0a 	. 
	inc h			;2c95	24 	$ 
	jp l239fh		;2c96	c3 9f 23 	. . # 
	ld a,(0f0b8h)		;2c99	3a b8 f0 	: . . 
	dec a			;2c9c	3d 	= 
	ret nz			;2c9d	c0 	. 
	ld a,(0f26bh)		;2c9e	3a 6b f2 	: k . 
	bit 2,a		;2ca1	cb 57 	. W 
	ret nz			;2ca3	c0 	. 
	ld hl,0f070h		;2ca4	21 70 f0 	! p . 
	bit 7,(hl)		;2ca7	cb 7e 	. ~ 
	ret z			;2ca9	c8 	. 
	res 7,(hl)		;2caa	cb be 	. . 
	call sub_32cch		;2cac	cd cc 32 	. . 2 
	ld hl,l000eh+2		;2caf	21 10 00 	! . . 
	add hl,de			;2cb2	19 	. 
	ld a,(hl)			;2cb3	7e 	~ 
	cp 007h		;2cb4	fe 07 	. . 
	ret z			;2cb6	c8 	. 
	ld hl,0f680h		;2cb7	21 80 f6 	! . . 
	ld b,080h		;2cba	06 80 	. . 
l2cbch:
	ld (hl),000h		;2cbc	36 00 	6 . 
	inc hl			;2cbe	23 	# 
	djnz l2cbch		;2cbf	10 fb 	. . 
	call sub_333bh		;2cc1	cd 3b 33 	. ; 3 
	ld de,0f680h		;2cc4	11 80 f6 	. . . 
	ld c,0ffh		;2cc7	0e ff 	. . 
l2cc9h:
	call sub_2d1ah		;2cc9	cd 1a 2d 	. . - 
	or a			;2ccc	b7 	. 
	jr z,l2cf4h		;2ccd	28 25 	( % 
	push af			;2ccf	f5 	. 
	ex de,hl			;2cd0	eb 	. 
	ld a,(0f6fdh)		;2cd1	3a fd f6 	: . . 
	or a			;2cd4	b7 	. 
	jr z,l2d0fh		;2cd5	28 38 	( 8 
	cp b			;2cd7	b8 	. 
	jr nz,l2d0dh		;2cd8	20 33 	  3 
	add a,008h		;2cda	c6 08 	. . 
	ld (0f6fdh),a		;2cdc	32 fd f6 	2 . . 
	pop af			;2cdf	f1 	. 
	inc hl			;2ce0	23 	# 
	add a,(hl)			;2ce1	86 	. 
l2ce2h:
	ld (hl),a			;2ce2	77 	w 
	dec hl			;2ce3	2b 	+ 
	bit 7,a		;2ce4	cb 7f 	.  
	jr z,l2ceeh		;2ce6	28 06 	( . 
	inc hl			;2ce8	23 	# 
	inc hl			;2ce9	23 	# 
	xor a			;2cea	af 	. 
	ld (0f6fdh),a		;2ceb	32 fd f6 	2 . . 
l2ceeh:
	ex de,hl			;2cee	eb 	. 
	ld a,e			;2cef	7b 	{ 
	cp 0f8h		;2cf0	fe f8 	. . 
	jr c,l2cc9h		;2cf2	38 d5 	8 . 
l2cf4h:
	ld a,(0f680h)		;2cf4	3a 80 f6 	: . . 
	or a			;2cf7	b7 	. 
	ret z			;2cf8	c8 	. 
	ld hl,0f26bh		;2cf9	21 6b f2 	! k . 
	set 2,(hl)		;2cfc	cb d6 	. . 
	ld hl,(0f279h)		;2cfe	2a 79 f2 	* y . 
	xor a			;2d01	af 	. 
	dec hl			;2d02	2b 	+ 
	ld (hl),a			;2d03	77 	w 
l2d04h:
	dec hl			;2d04	2b 	+ 
	ld (hl),a			;2d05	77 	w 
	dec hl			;2d06	2b 	+ 
	ld (hl),a			;2d07	77 	w 
	res 7,(ix-048h)		;2d08	dd cb b8 be 	. . . . 
	ret			;2d0c	c9 	. 
l2d0dh:
	inc hl			;2d0d	23 	# 
	inc hl			;2d0e	23 	# 
l2d0fh:
	ld (hl),b			;2d0f	70 	p 
	ld a,b			;2d10	78 	x 
	add a,008h		;2d11	c6 08 	. . 
	ld (0f6fdh),a		;2d13	32 fd f6 	2 . . 
	pop af			;2d16	f1 	. 
	inc hl			;2d17	23 	# 
	jr l2ce2h		;2d18	18 c8 	. . 
sub_2d1ah:
	bit 7,c		;2d1a	cb 79 	. y 
	jr z,l2d40h		;2d1c	28 22 	( " 
	ld c,011h		;2d1e	0e 11 	. . 
l2d20h:
	push de			;2d20	d5 	. 
	ld de,0f076h		;2d21	11 76 f0 	. v . 
	call l0005h		;2d24	cd 05 00 	. . . 
	ld hl,0f082h		;2d27	21 82 f0 	! . . 
	inc (hl)			;2d2a	34 	4 
	inc (hl)			;2d2b	34 	4 
	pop de			;2d2c	d1 	. 
	inc a			;2d2d	3c 	< 
	ret z			;2d2e	c8 	. 
	dec a			;2d2f	3d 	= 
	call sub_3900h		;2d30	cd 00 39 	. . 9 
	ld bc,l000eh+1		;2d33	01 0f 00 	. . . 
	add hl,bc			;2d36	09 	. 
	call sub_0011h		;2d37	cd 11 00 	. . . 
	or a			;2d3a	b7 	. 
	ret z			;2d3b	c8 	. 
	ld (0f6fah),a		;2d3c	32 fa f6 	2 . . 
	inc hl			;2d3f	23 	# 
l2d40h:
	call sub_0011h		;2d40	cd 11 00 	. . . 
	or a			;2d43	b7 	. 
	ret z			;2d44	c8 	. 
	ld a,(0f298h)		;2d45	3a 98 f2 	: . . 
	ld b,a			;2d48	47 	G 
	add a,a			;2d49	87 	. 
	add a,a			;2d4a	87 	. 
	add a,a			;2d4b	87 	. 
	add a,a			;2d4c	87 	. 
	sub b			;2d4d	90 	. 
	ld b,a			;2d4e	47 	G 
	call sub_0011h		;2d4f	cd 11 00 	. . . 
	add a,b			;2d52	80 	. 
	ld b,000h		;2d53	06 00 	. . 
l2d55h:
	sub 01eh		;2d55	d6 1e 	. . 
	jr c,l2d5ch		;2d57	38 03 	8 . 
	inc b			;2d59	04 	. 
	jr l2d55h		;2d5a	18 f9 	. . 
l2d5ch:
	add a,01eh		;2d5c	c6 1e 	. . 
	or a			;2d5e	b7 	. 
	rlca			;2d5f	07 	. 
	rlca			;2d60	07 	. 
	rlca			;2d61	07 	. 
	add a,b			;2d62	80 	. 
	xor 007h		;2d63	ee 07 	. . 
	ld b,a			;2d65	47 	G 
	dec c			;2d66	0d 	. 
	jp m,l2d7bh		;2d67	fa 7b 2d 	. { - 
	inc hl			;2d6a	23 	# 
	call sub_0011h		;2d6b	cd 11 00 	. . . 
	or a			;2d6e	b7 	. 
	ld a,010h		;2d6f	3e 10 	> . 
	ret nz			;2d71	c0 	. 
l2d72h:
	ld a,(0f6fah)		;2d72	3a fa f6 	: . . 
	and 00fh		;2d75	e6 0f 	. . 
	ret nz			;2d77	c0 	. 
	ld a,010h		;2d78	3e 10 	> . 
	ret			;2d7a	c9 	. 
l2d7bh:
	ld a,(0f6fah)		;2d7b	3a fa f6 	: . . 
	cp 080h		;2d7e	fe 80 	. . 
	ld a,010h		;2d80	3e 10 	> . 
	ret z			;2d82	c8 	. 
	jr l2d72h		;2d83	18 ed 	. . 
	ld hl,0f26bh		;2d85	21 6b f2 	! k . 
	call sub_37dah		;2d88	cd da 37 	. . 7 
	dec c			;2d8b	0d 	. 
	jr nz,$+69		;2d8c	20 43 	  C 
	ld a,d			;2d8e	7a 	z 
	ld a,c			;2d8f	79 	y 
	jr nz,l2e06h		;2d90	20 74 	  t 
	ld h,l			;2d92	65 	e 
	ld l,e			;2d93	6b 	k 
	ld (hl),e			;2d94	73 	s 
	ld (hl),h			;2d95	74 	t 
	jr nz,$+124		;2d96	20 7a 	  z 
	ld h,c			;2d98	61 	a 
	ld (hl),a			;2d99	77 	w 
	ld l,c			;2d9a	69 	i 
	ld h,l			;2d9b	65 	e 
	ld (hl),d			;2d9c	72 	r 
	ld h,c			;2d9d	61 	a 
	inc h			;2d9e	24 	$ 
	call sub_2e49h		;2d9f	cd 49 2e 	. I . 
	call sub_3727h		;2da2	cd 27 37 	. ' 7 
	cp 01bh		;2da5	fe 1b 	. . 
	jp z,l2e41h		;2da7	ca 41 2e 	. A . 
	res 4,(hl)		;2daa	cb a6 	. . 
	cp 054h		;2dac	fe 54 	. T 
	jr nz,l2db2h		;2dae	20 02 	  . 
	set 4,(hl)		;2db0	cb e6 	. . 
l2db2h:
	call sub_37dah		;2db2	cd da 37 	. . 7 
	dec c			;2db5	0d 	. 
	jr nz,l2dfbh		;2db6	20 43 	  C 
	ld a,d			;2db8	7a 	z 
	ld a,c			;2db9	79 	y 
	jr nz,$+102		;2dba	20 64 	  d 
	ld (hl),d			;2dbc	72 	r 
	ld (hl),l			;2dbd	75 	u 
	ld l,e			;2dbe	6b 	k 
	ld h,c			;2dbf	61 	a 
	ld (hl),d			;2dc0	72 	r 
	ld l,e			;2dc1	6b 	k 
	ld h,c			;2dc2	61 	a 
	jr nz,l2e32h		;2dc3	20 6d 	  m 
	ld h,c			;2dc5	61 	a 
	inc h			;2dc6	24 	$ 
	call sub_2e49h		;2dc7	cd 49 2e 	. I . 
	call sub_3727h		;2dca	cd 27 37 	. ' 7 
	cp 01bh		;2dcd	fe 1b 	. . 
	jp z,l2e41h		;2dcf	ca 41 2e 	. A . 
	res 5,(hl)		;2dd2	cb ae 	. . 
	cp 054h		;2dd4	fe 54 	. T 
	jr nz,l2ddah		;2dd6	20 02 	  . 
	set 5,(hl)		;2dd8	cb ee 	. . 
l2ddah:
	call sub_37dah		;2dda	cd da 37 	. . 7 
	dec c			;2ddd	0d 	. 
	jr nz,l2e23h		;2dde	20 43 	  C 
	ld a,d			;2de0	7a 	z 
	ld a,c			;2de1	79 	y 
	jr nz,$+121		;2de2	20 77 	  w 
	ld a,c			;2de4	79 	y 
	ld (hl),e			;2de5	73 	s 
	ld a,c			;2de6	79 	y 
	ld a,h			;2de7	7c 	| 
	ld h,c			;2de8	61 	a 
	ld a,(hl)			;2de9	7e 	~ 
	jr nz,$+125		;2dea	20 7b 	  { 
	ld (hl),e			;2dec	73 	s 
	ld l,l			;2ded	6d 	m 
	ld a,c			;2dee	79 	y 
	jr nz,l2e53h		;2def	20 62 	  b 
	ld l,c			;2df1	69 	i 
	ld (hl),h			;2df2	74 	t 
	jr nz,$+114		;2df3	20 70 	  p 
	ld l,a			;2df5	6f 	o 
	ld h,h			;2df6	64 	d 
	ld h,e			;2df7	63 	c 
	ld a,d			;2df8	7a 	z 
	ld h,c			;2df9	61 	a 
	ld (hl),e			;2dfa	73 	s 
l2dfbh:
	jr nz,$+102		;2dfb	20 64 	  d 
	ld (hl),d			;2dfd	72 	r 
	ld (hl),l			;2dfe	75 	u 
	ld l,e			;2dff	6b 	k 
	ld l,a			;2e00	6f 	o 
	ld (hl),a			;2e01	77 	w 
	ld h,c			;2e02	61 	a 
	ld l,(hl)			;2e03	6e 	n 
	ld l,c			;2e04	69 	i 
	ld h,c			;2e05	61 	a 
l2e06h:
	jr nz,l2e2ch		;2e06	20 24 	  $ 
	call sub_3727h		;2e08	cd 27 37 	. ' 7 
	cp 01bh		;2e0b	fe 1b 	. . 
	jr z,l2e41h		;2e0d	28 32 	( 2 
	res 1,(hl)		;2e0f	cb 8e 	. . 
	cp 054h		;2e11	fe 54 	. T 
	jr z,l2e17h		;2e13	28 02 	( . 
	set 1,(hl)		;2e15	cb ce 	. . 
l2e17h:
	call sub_37dah		;2e17	cd da 37 	. . 7 
	dec c			;2e1a	0d 	. 
	jr nz,l2e60h		;2e1b	20 43 	  C 
	ld a,d			;2e1d	7a 	z 
	ld a,c			;2e1e	79 	y 
	jr nz,l2e98h		;2e1f	20 77 	  w 
	ld a,c			;2e21	79 	y 
	ld (hl),e			;2e22	73 	s 
l2e23h:
	ld a,c			;2e23	79 	y 
	ld a,h			;2e24	7c 	| 
	ld h,c			;2e25	61 	a 
	ld a,(hl)			;2e26	7e 	~ 
	jr nz,l2ea3h		;2e27	20 7a 	  z 
	ld l,(hl)			;2e29	6e 	n 
	ld h,c			;2e2a	61 	a 
	ld l,e			;2e2b	6b 	k 
l2e2ch:
	jr nz,$+86		;2e2c	20 54 	  T 
	ld b,c			;2e2e	41 	A 
	ld b,d			;2e2f	42 	B 
	jr nz,l2e56h		;2e30	20 24 	  $ 
l2e32h:
	call sub_3727h		;2e32	cd 27 37 	. ' 7 
	cp 01bh		;2e35	fe 1b 	. . 
	jr z,l2e41h		;2e37	28 08 	( . 
	res 0,(hl)		;2e39	cb 86 	. . 
	cp 054h		;2e3b	fe 54 	. T 
	jr nz,l2e41h		;2e3d	20 02 	  . 
	set 0,(hl)		;2e3f	cb c6 	. . 
l2e41h:
	call sub_37dah		;2e41	cd da 37 	. . 7 
	dec c			;2e44	0d 	. 
	dec de			;2e45	1b 	. 
	ld c,e			;2e46	4b 	K 
	inc h			;2e47	24 	$ 
	ret			;2e48	c9 	. 
sub_2e49h:
	call sub_37dah		;2e49	cd da 37 	. . 7 
	jr nz,l2ebah		;2e4c	20 6c 	  l 
	ld l,c			;2e4e	69 	i 
	ld (hl),h			;2e4f	74 	t 
	ld h,l			;2e50	65 	e 
	ld (hl),d			;2e51	72 	r 
	ld a,c			;2e52	79 	y 
l2e53h:
	jr nz,$+34		;2e53	20 20 	    
	ld h,b			;2e55	60 	` 
l2e56h:
	jr nz,l2e98h		;2e56	20 40 	  @ 
	jr nz,$+96		;2e58	20 5e 	  ^ 
	jr nz,$+128		;2e5a	20 7e 	  ~ 
	jr nz,$+95		;2e5c	20 5d 	  ] 
	jr nz,l2eddh		;2e5e	20 7d 	  } 
l2e60h:
	jr nz,l2eddh		;2e60	20 7b 	  { 
	jr nz,$+93		;2e62	20 5b 	  [ 
	jr nz,l2ee2h		;2e64	20 7c 	  | 
	jr nz,$+94		;2e66	20 5c 	  \ 
	jr nz,l2e8eh		;2e68	20 24 	  $ 
	ret			;2e6a	c9 	. 
sub_2e6bh:
	call sub_390bh		;2e6b	cd 0b 39 	. . 9 
	ld (0f0bdh),a		;2e6e	32 bd f0 	2 . . 
	call sub_33ceh		;2e71	cd ce 33 	. . 3 
	ld c,01fh		;2e74	0e 1f 	. . 
	call l0005h		;2e76	cd 05 00 	. . . 
	inc hl			;2e79	23 	# 
	inc hl			;2e7a	23 	# 
	ld a,(hl)			;2e7b	7e 	~ 
	ld (0f0d7h),a		;2e7c	32 d7 f0 	2 . . 
	inc hl			;2e7f	23 	# 
	ld a,(hl)			;2e80	7e 	~ 
	ld (0f0d8h),a		;2e81	32 d8 f0 	2 . . 
	inc hl			;2e84	23 	# 
	ld a,(hl)			;2e85	7e 	~ 
	ld (0f0d9h),a		;2e86	32 d9 f0 	2 . . 
	inc hl			;2e89	23 	# 
	ld e,(hl)			;2e8a	5e 	^ 
	inc hl			;2e8b	23 	# 
	ld d,(hl)			;2e8c	56 	V 
	inc de			;2e8d	13 	. 
l2e8eh:
	ex de,hl			;2e8e	eb 	. 
	ld (0f0dah),hl		;2e8f	22 da f0 	" . . 
	call sub_33e2h		;2e92	cd e2 33 	. . 3 
	ld a,(0f0c8h)		;2e95	3a c8 f0 	: . . 
l2e98h:
	ld (l005ch),a		;2e98	32 5c 00 	2 \ . 
	ld hl,l005dh		;2e9b	21 5d 00 	! ] . 
	ld b,00ch		;2e9e	06 0c 	. . 
l2ea0h:
	ld (hl),03fh		;2ea0	36 3f 	6 ? 
	inc hl			;2ea2	23 	# 
l2ea3h:
	djnz l2ea0h		;2ea3	10 fb 	. . 
	inc hl			;2ea5	23 	# 
	ld (hl),03fh		;2ea6	36 3f 	6 ? 
	ld de,0db00h		;2ea8	11 00 db 	. . . 
	ld c,011h		;2eab	0e 11 	. . 
l2eadh:
	push de			;2ead	d5 	. 
	ld de,l005ch		;2eae	11 5c 00 	. \ . 
	call l0005h		;2eb1	cd 05 00 	. . . 
	pop de			;2eb4	d1 	. 
	cp 0ffh		;2eb5	fe ff 	. . 
	jp z,l2f92h		;2eb7	ca 92 2f 	. . / 
l2ebah:
	call sub_3900h		;2eba	cd 00 39 	. . 9 
	call sub_0011h		;2ebd	cd 11 00 	. . . 
	cp 0e5h		;2ec0	fe e5 	. . 
	jp z,l2f89h		;2ec2	ca 89 2f 	. . / 
	push de			;2ec5	d5 	. 
	push hl			;2ec6	e5 	. 
	ld de,0f0e7h		;2ec7	11 e7 f0 	. . . 
	inc hl			;2eca	23 	# 
	ld b,00bh		;2ecb	06 0b 	. . 
l2ecdh:
	ld a,(de)			;2ecd	1a 	. 
	cp 03fh		;2ece	fe 3f 	. ? 
	jr z,l2edch		;2ed0	28 0a 	( . 
	ld c,a			;2ed2	4f 	O 
	call sub_0011h		;2ed3	cd 11 00 	. . . 
	and 07fh		;2ed6	e6 7f 	.  
	cp c			;2ed8	b9 	. 
	jp nz,l2f8eh		;2ed9	c2 8e 2f 	. . / 
l2edch:
	inc hl			;2edc	23 	# 
l2eddh:
	inc de			;2edd	13 	. 
	djnz l2ecdh		;2ede	10 ed 	. . 
	pop hl			;2ee0	e1 	. 
	pop de			;2ee1	d1 	. 
l2ee2h:
	ld b,010h		;2ee2	06 10 	. . 
l2ee4h:
	call sub_0011h		;2ee4	cd 11 00 	. . . 
	ld (de),a			;2ee7	12 	. 
	inc hl			;2ee8	23 	# 
	inc de			;2ee9	13 	. 
	djnz l2ee4h		;2eea	10 f8 	. . 
	push de			;2eec	d5 	. 
	push hl			;2eed	e5 	. 
	ex de,hl			;2eee	eb 	. 
	dec hl			;2eef	2b 	+ 
	dec hl			;2ef0	2b 	+ 
	ld a,(hl)			;2ef1	7e 	~ 
	rrca			;2ef2	0f 	. 
	rrca			;2ef3	0f 	. 
	rrca			;2ef4	0f 	. 
	ld c,a			;2ef5	4f 	O 
	and 001h		;2ef6	e6 01 	. . 
	ld b,a			;2ef8	47 	G 
	ld a,c			;2ef9	79 	y 
	and 0e0h		;2efa	e6 e0 	. . 
	dec hl			;2efc	2b 	+ 
	dec hl			;2efd	2b 	+ 
	or (hl)			;2efe	b6 	. 
	ld c,a			;2eff	4f 	O 
	ld a,(0f0d9h)		;2f00	3a d9 f0 	: . . 
	push af			;2f03	f5 	. 
	and (hl)			;2f04	a6 	. 
	ld e,a			;2f05	5f 	_ 
	pop af			;2f06	f1 	. 
l2f07h:
	or a			;2f07	b7 	. 
	jr z,l2f14h		;2f08	28 0a 	( . 
	push af			;2f0a	f5 	. 
	or a			;2f0b	b7 	. 
	rr b		;2f0c	cb 18 	. . 
	rr c		;2f0e	cb 19 	. . 
	pop af			;2f10	f1 	. 
	rra			;2f11	1f 	. 
	jr l2f07h		;2f12	18 f3 	. . 
l2f14h:
	ld (hl),b			;2f14	70 	p 
	inc hl			;2f15	23 	# 
	ld (hl),c			;2f16	71 	q 
	inc hl			;2f17	23 	# 
	inc hl			;2f18	23 	# 
	ld a,(hl)			;2f19	7e 	~ 
	rla			;2f1a	17 	. 
	ld d,a			;2f1b	57 	W 
	ld a,000h		;2f1c	3e 00 	> . 
	adc a,e			;2f1e	8b 	. 
	or a			;2f1f	b7 	. 
	rra			;2f20	1f 	. 
	ld (hl),a			;2f21	77 	w 
	dec hl			;2f22	2b 	+ 
	ld a,d			;2f23	7a 	z 
	rra			;2f24	1f 	. 
	ld (hl),a			;2f25	77 	w 
	inc hl			;2f26	23 	# 
	ld d,000h		;2f27	16 00 	. . 
	ld c,000h		;2f29	0e 00 	. . 
	ld a,(0f0d9h)		;2f2b	3a d9 f0 	: . . 
	inc a			;2f2e	3c 	< 
	or a			;2f2f	b7 	. 
	rra			;2f30	1f 	. 
	rr c		;2f31	cb 19 	. . 
	cp (hl)			;2f33	be 	. 
	jr nz,l2f3bh		;2f34	20 05 	  . 
	dec hl			;2f36	2b 	+ 
	ld a,(hl)			;2f37	7e 	~ 
	cp c			;2f38	b9 	. 
	jr z,l2f3dh		;2f39	28 02 	( . 
l2f3bh:
	set 0,d		;2f3b	cb c2 	. . 
l2f3dh:
	pop hl			;2f3d	e1 	. 
	ld bc,l0000h		;2f3e	01 00 00 	. . . 
	ld a,(0f0dbh)		;2f41	3a db f0 	: . . 
	or a			;2f44	b7 	. 
	ld e,010h		;2f45	1e 10 	. . 
	jr z,l2f4bh		;2f47	28 02 	( . 
	ld e,008h		;2f49	1e 08 	. . 
l2f4bh:
	call sub_0011h		;2f4b	cd 11 00 	. . . 
	ld (0f0e5h),a		;2f4e	32 e5 f0 	2 . . 
	ld a,(0f0dbh)		;2f51	3a db f0 	: . . 
	or a			;2f54	b7 	. 
	ld a,(0f0e5h)		;2f55	3a e5 f0 	: . . 
	jr z,l2f61h		;2f58	28 07 	( . 
	inc hl			;2f5a	23 	# 
	call sub_0011h		;2f5b	cd 11 00 	. . . 
	or (ix+02dh)		;2f5e	dd b6 2d 	. . - 
l2f61h:
	or a			;2f61	b7 	. 
	jr z,l2f6dh		;2f62	28 09 	( . 
	inc c			;2f64	0c 	. 
	inc b			;2f65	04 	. 
	dec b			;2f66	05 	. 
	jr z,l2f72h		;2f67	28 09 	( . 
	ld b,007h		;2f69	06 07 	. . 
	jr l2f72h		;2f6b	18 05 	. . 
l2f6dh:
	inc b			;2f6d	04 	. 
	djnz l2f72h		;2f6e	10 02 	. . 
	ld b,001h		;2f70	06 01 	. . 
l2f72h:
	inc hl			;2f72	23 	# 
	dec e			;2f73	1d 	. 
	jr nz,l2f4bh		;2f74	20 d5 	  . 
	pop hl			;2f76	e1 	. 
	ld a,d			;2f77	7a 	z 
	or b			;2f78	b0 	. 
	ld (hl),a			;2f79	77 	w 
	inc hl			;2f7a	23 	# 
	ld (hl),c			;2f7b	71 	q 
	inc hl			;2f7c	23 	# 
	ld (hl),000h		;2f7d	36 00 	6 . 
	inc hl			;2f7f	23 	# 
	ld a,(0f0bdh)		;2f80	3a bd f0 	: . . 
	ld (hl),a			;2f83	77 	w 
	inc hl			;2f84	23 	# 
	ex de,hl			;2f85	eb 	. 
	inc (ix+005h)		;2f86	dd 34 05 	. 4 . 
l2f89h:
	ld c,012h		;2f89	0e 12 	. . 
	jp l2eadh		;2f8b	c3 ad 2e 	. . . 
l2f8eh:
	pop hl			;2f8e	e1 	. 
	pop de			;2f8f	d1 	. 
	jr l2f89h		;2f90	18 f7 	. . 
l2f92h:
	ex de,hl			;2f92	eb 	. 
	ld b,03ch		;2f93	06 3c 	. < 
l2f95h:
	ld (hl),0ffh		;2f95	36 ff 	6 . 
	inc hl			;2f97	23 	# 
	djnz l2f95h		;2f98	10 fb 	. . 
	ld (0f0dch),hl		;2f9a	22 dc f0 	" . . 
	ld a,(0f0bdh)		;2f9d	3a bd f0 	: . . 
	inc a			;2fa0	3c 	< 
	ld (0f0beh),a		;2fa1	32 be f0 	2 . . 
l2fa4h:
	ld hl,0db00h		;2fa4	21 00 db 	! . . 
	ld b,000h		;2fa7	06 00 	. . 
l2fa9h:
	call sub_30c5h		;2fa9	cd c5 30 	. . 0 
	jr c,l2fceh		;2fac	38 20 	8   
	inc c			;2fae	0c 	. 
	jr nz,l2fbbh		;2faf	20 0a 	  . 
	push hl			;2fb1	e5 	. 
	ld de,l000eh+2		;2fb2	11 10 00 	. . . 
	add hl,de			;2fb5	19 	. 
	ld (hl),007h		;2fb6	36 07 	6 . 
	pop hl			;2fb8	e1 	. 
	jr l2fceh		;2fb9	18 13 	. . 
l2fbbh:
	push hl			;2fbb	e5 	. 
	ex de,hl			;2fbc	eb 	. 
	ld hl,l0014h		;2fbd	21 14 00 	! . . 
	ld b,l			;2fc0	45 	E 
	add hl,de			;2fc1	19 	. 
l2fc2h:
	ld a,(de)			;2fc2	1a 	. 
	ld c,a			;2fc3	4f 	O 
	ld a,(hl)			;2fc4	7e 	~ 
	ld (de),a			;2fc5	12 	. 
	ld (hl),c			;2fc6	71 	q 
	inc de			;2fc7	13 	. 
	inc hl			;2fc8	23 	# 
	djnz l2fc2h		;2fc9	10 f7 	. . 
	ld b,0ffh		;2fcb	06 ff 	. . 
	pop hl			;2fcd	e1 	. 
l2fceh:
	ex de,hl			;2fce	eb 	. 
	ld hl,l0014h		;2fcf	21 14 00 	! . . 
	add hl,de			;2fd2	19 	. 
	ld a,(hl)			;2fd3	7e 	~ 
	cp 0ffh		;2fd4	fe ff 	. . 
	jr nz,l2fa9h		;2fd6	20 d1 	  . 
	ld a,b			;2fd8	78 	x 
	or a			;2fd9	b7 	. 
	jr nz,l2fa4h		;2fda	20 c8 	  . 
	ld hl,0db00h		;2fdc	21 00 db 	! . . 
	xor a			;2fdf	af 	. 
	ld (0f0c9h),a		;2fe0	32 c9 f0 	2 . . 
l2fe3h:
	ld a,(hl)			;2fe3	7e 	~ 
	cp 0ffh		;2fe4	fe ff 	. . 
	jp z,l3082h		;2fe6	ca 82 30 	. . 0 
	push hl			;2fe9	e5 	. 
	call sub_30c5h		;2fea	cd c5 30 	. . 0 
	ld de,l000bh+1		;2fed	11 0c 00 	. . . 
	add hl,de			;2ff0	19 	. 
	ld a,(0f0c9h)		;2ff1	3a c9 f0 	: . . 
	or a			;2ff4	b7 	. 
	jr nz,l3003h		;2ff5	20 0c 	  . 
	push hl			;2ff7	e5 	. 
	ld a,(hl)			;2ff8	7e 	~ 
	inc hl			;2ff9	23 	# 
	or (hl)			;2ffa	b6 	. 
	jr z,l3002h		;2ffb	28 05 	( . 
	inc hl			;2ffd	23 	# 
	inc hl			;2ffe	23 	# 
	inc hl			;2fff	23 	# 
	ld (hl),007h		;3000	36 07 	6 . 
l3002h:
	pop hl			;3002	e1 	. 
l3003h:
	ld a,c			;3003	79 	y 
	or a			;3004	b7 	. 
	jp m,l3032h		;3005	fa 32 30 	. 2 0 
	jr z,l3032h		;3008	28 28 	( ( 
	dec a			;300a	3d 	= 
	jr z,l3032h		;300b	28 25 	( % 
	xor a			;300d	af 	. 
	ld (0f0c9h),a		;300e	32 c9 f0 	2 . . 
	pop hl			;3011	e1 	. 
	ld de,l0014h		;3012	11 14 00 	. . . 
	add hl,de			;3015	19 	. 
	push hl			;3016	e5 	. 
l3017h:
	dec hl			;3017	2b 	+ 
	dec hl			;3018	2b 	+ 
	ld d,(hl)			;3019	56 	V 
	dec hl			;301a	2b 	+ 
	ld e,(hl)			;301b	5e 	^ 
	dec hl			;301c	2b 	+ 
	ld a,(hl)			;301d	7e 	~ 
	cp 007h		;301e	fe 07 	. . 
	jr nz,l302fh		;3020	20 0d 	  . 
	ex de,hl			;3022	eb 	. 
	ld a,(0f0d7h)		;3023	3a d7 f0 	: . . 
l3026h:
	add hl,hl			;3026	29 	) 
	dec a			;3027	3d 	= 
	jr nz,l3026h		;3028	20 fc 	  . 
	ex de,hl			;302a	eb 	. 
	dec hl			;302b	2b 	+ 
	ld (hl),d			;302c	72 	r 
	dec hl			;302d	2b 	+ 
	ld (hl),e			;302e	73 	s 
l302fh:
	pop hl			;302f	e1 	. 
l3030h:
	jr l2fe3h		;3030	18 b1 	. . 
l3032h:
	ld (ix+011h),001h		;3032	dd 36 11 01 	. 6 . . 
	ex de,hl			;3036	eb 	. 
	ld hl,l0014h		;3037	21 14 00 	! . . 
	add hl,de			;303a	19 	. 
	ex de,hl			;303b	eb 	. 
	ld a,(de)			;303c	1a 	. 
	ld b,a			;303d	47 	G 
	inc de			;303e	13 	. 
	ld a,(de)			;303f	1a 	. 
	ld c,a			;3040	4f 	O 
	inc de			;3041	13 	. 
	dec bc			;3042	0b 	. 
	ld a,b			;3043	78 	x 
	cp (hl)			;3044	be 	. 
	inc hl			;3045	23 	# 
	jr nz,l304ah		;3046	20 02 	  . 
	ld a,c			;3048	79 	y 
	cp (hl)			;3049	be 	. 
l304ah:
	push af			;304a	f5 	. 
	inc bc			;304b	03 	. 
	ld (hl),c			;304c	71 	q 
	dec hl			;304d	2b 	+ 
	ld (hl),b			;304e	70 	p 
	inc hl			;304f	23 	# 
	inc hl			;3050	23 	# 
	call sub_30bah		;3051	cd ba 30 	. . 0 
	ld a,(de)			;3054	1a 	. 
	ld c,a			;3055	4f 	O 
	ld a,(hl)			;3056	7e 	~ 
	or a			;3057	b7 	. 
	jr z,l305ch		;3058	28 02 	( . 
	ld a,007h		;305a	3e 07 	> . 
l305ch:
	or c			;305c	b1 	. 
	ld (hl),a			;305d	77 	w 
	pop af			;305e	f1 	. 
	jr z,l3063h		;305f	28 02 	( . 
	ld (hl),007h		;3061	36 07 	6 . 
l3063h:
	inc hl			;3063	23 	# 
	inc de			;3064	13 	. 
	call sub_30bah		;3065	cd ba 30 	. . 0 
	inc hl			;3068	23 	# 
	inc de			;3069	13 	. 
	ex de,hl			;306a	eb 	. 
	ld bc,(0f0dch)		;306b	ed 4b dc f0 	. K . . 
	ld a,c			;306f	79 	y 
	sub l			;3070	95 	. 
	ld c,a			;3071	4f 	O 
	ld a,b			;3072	78 	x 
	sbc a,h			;3073	9c 	. 
	ld b,a			;3074	47 	G 
	ldir		;3075	ed b0 	. . 
	dec (ix+005h)		;3077	dd 35 05 	. 5 . 
	pop hl			;307a	e1 	. 
	push hl			;307b	e5 	. 
	ld de,l0014h		;307c	11 14 00 	. . . 
	add hl,de			;307f	19 	. 
	jr l3017h		;3080	18 95 	. . 
l3082h:
	ld hl,0da00h		;3082	21 00 da 	! . . 
	ld de,l0014h		;3085	11 14 00 	. . . 
	ld a,(0f0bdh)		;3088	3a bd f0 	: . . 
	or a			;308b	b7 	. 
	jr z,l30a6h		;308c	28 18 	( . 
	push hl			;308e	e5 	. 
	xor a			;308f	af 	. 
l3090h:
	ld b,(ix+005h)		;3090	dd 46 05 	. F . 
	ld c,000h		;3093	0e 00 	. . 
	ld hl,0db13h		;3095	21 13 db 	! . . 
l3098h:
	cp (hl)			;3098	be 	. 
	jr z,l30b4h		;3099	28 19 	( . 
	add hl,de			;309b	19 	. 
	inc c			;309c	0c 	. 
	djnz l3098h		;309d	10 f9 	. . 
l309fh:
	inc a			;309f	3c 	< 
	cp (ix+006h)		;30a0	dd be 06 	. . . 
	jr c,l3090h		;30a3	38 eb 	8 . 
	pop hl			;30a5	e1 	. 
l30a6h:
	ld (hl),000h		;30a6	36 00 	6 . 
	ld hl,0db13h		;30a8	21 13 db 	! . . 
	ld b,(ix+005h)		;30ab	dd 46 05 	. F . 
l30aeh:
	ld (hl),020h		;30ae	36 20 	6   
	add hl,de			;30b0	19 	. 
	djnz l30aeh		;30b1	10 fb 	. . 
	ret			;30b3	c9 	. 
l30b4h:
	ex (sp),hl			;30b4	e3 	. 
	ld (hl),c			;30b5	71 	q 
	inc hl			;30b6	23 	# 
	ex (sp),hl			;30b7	e3 	. 
	jr l309fh		;30b8	18 e5 	. . 
sub_30bah:
	ld a,(de)			;30ba	1a 	. 
	add a,(hl)			;30bb	86 	. 
	ld (hl),a			;30bc	77 	w 
	inc hl			;30bd	23 	# 
	inc de			;30be	13 	. 
	ld a,(de)			;30bf	1a 	. 
	adc a,(hl)			;30c0	8e 	. 
	ld (hl),a			;30c1	77 	w 
	inc hl			;30c2	23 	# 
	inc de			;30c3	13 	. 
	ret			;30c4	c9 	. 
sub_30c5h:
	push de			;30c5	d5 	. 
	push hl			;30c6	e5 	. 
	ld c,00eh		;30c7	0e 0e 	. . 
	ex de,hl			;30c9	eb 	. 
	ld hl,l0014h		;30ca	21 14 00 	! . . 
	add hl,de			;30cd	19 	. 
	ld a,(hl)			;30ce	7e 	~ 
	cp 0ffh		;30cf	fe ff 	. . 
	scf			;30d1	37 	7 
	jr z,l30dfh		;30d2	28 0b 	( . 
l30d4h:
	or a			;30d4	b7 	. 
	dec c			;30d5	0d 	. 
	jp m,l30dfh		;30d6	fa df 30 	. . 0 
	ld a,(de)			;30d9	1a 	. 
	cp (hl)			;30da	be 	. 
	inc hl			;30db	23 	# 
	inc de			;30dc	13 	. 
	jr z,l30d4h		;30dd	28 f5 	( . 
l30dfh:
	pop hl			;30df	e1 	. 
	pop de			;30e0	d1 	. 
	ret			;30e1	c9 	. 
sub_30e2h:
	ld a,(hl)			;30e2	7e 	~ 
	ld (0f0bdh),a		;30e3	32 bd f0 	2 . . 
	ld hl,(0fb81h)		;30e6	2a 81 fb 	* . . 
	ld (0f0deh),hl		;30e9	22 de f0 	" . . 
	ld hl,(0ffa6h)		;30ec	2a a6 ff 	* . . 
	ld b,03bh		;30ef	06 3b 	. ; 
l30f1h:
	ld (hl),0ffh		;30f1	36 ff 	6 . 
	inc hl			;30f3	23 	# 
	djnz l30f1h		;30f4	10 fb 	. . 
	ld (0f0dch),hl		;30f6	22 dc f0 	" . . 
	ld a,(0f0bdh)		;30f9	3a bd f0 	: . . 
	inc a			;30fc	3c 	< 
	ld (0f0beh),a		;30fd	32 be f0 	2 . . 
	call sub_390bh		;3100	cd 0b 39 	. . 9 
	ld a,004h		;3103	3e 04 	> . 
	ld (0f0d7h),a		;3105	32 d7 f0 	2 . . 
	ld a,00fh		;3108	3e 0f 	> . 
	ld (0f0d8h),a		;310a	32 d8 f0 	2 . . 
	ld a,001h		;310d	3e 01 	> . 
	ld (0f0d9h),a		;310f	32 d9 f0 	2 . . 
	ld hl,l00d1h		;3112	21 d1 00 	! . . 
	ld (0f0dah),hl		;3115	22 da f0 	" . . 
	xor a			;3118	af 	. 
	ld (0f0c3h),a		;3119	32 c3 f0 	2 . . 
	ld (0f0c4h),a		;311c	32 c4 f0 	2 . . 
	call l2fa4h		;311f	cd a4 2f 	. . / 
	ret			;3122	c9 	. 
sub_3123h:
	call sub_2e6bh		;3123	cd 6b 2e 	. k . 
sub_3126h:
	res 6,(ix-048h)		;3126	dd cb b8 b6 	. . . . 
	ld (ix+014h),000h		;312a	dd 36 14 00 	. 6 . . 
	ld a,(0f0c4h)		;312e	3a c4 f0 	: . . 
	ld (0f0c1h),a		;3131	32 c1 f0 	2 . . 
	call sub_318bh		;3134	cd 8b 31 	. . 1 
l3137h:
	ld a,(0f0bdh)		;3137	3a bd f0 	: . . 
	or a			;313a	b7 	. 
	jp z,l3169h		;313b	ca 69 31 	. i 1 
	ld b,a			;313e	47 	G 
	ld a,(0f0c4h)		;313f	3a c4 f0 	: . . 
	add a,03ch		;3142	c6 3c 	. < 
	ld c,a			;3144	4f 	O 
	cp b			;3145	b8 	. 
	jr c,l3149h		;3146	38 01 	8 . 
	ld c,b			;3148	48 	H 
l3149h:
	ld a,(0f0c1h)		;3149	3a c1 f0 	: . . 
	cp c			;314c	b9 	. 
	jp nc,l3169h		;314d	d2 69 31 	. i 1 
	call sub_3158h		;3150	cd 58 31 	. X 1 
	inc (ix+009h)		;3153	dd 34 09 	. 4 . 
	jr l3137h		;3156	18 df 	. . 
sub_3158h:
	call sub_326ah+1		;3158	cd 6b 32 	. k 2 
sub_315bh:
	push hl			;315b	e5 	. 
	inc hl			;315c	23 	# 
	inc hl			;315d	23 	# 
	ld e,(hl)			;315e	5e 	^ 
	inc hl			;315f	23 	# 
	ld d,(hl)			;3160	56 	V 
	inc hl			;3161	23 	# 
	ld a,(hl)			;3162	7e 	~ 
	ex de,hl			;3163	eb 	. 
	call sub_3852h		;3164	cd 52 38 	. R 8 
	pop hl			;3167	e1 	. 
	ret			;3168	c9 	. 
l3169h:
	ld de,l1500h		;3169	11 00 15 	. . . 
	call sub_3175h		;316c	cd 75 31 	. u 1 
	call sub_319ah		;316f	cd 9a 31 	. . 1 
	ld de,l1602h		;3172	11 02 16 	. . . 
sub_3175h:
	ld a,01bh		;3175	3e 1b 	> . 
	call sub_376bh		;3177	cd 6b 37 	. k 7 
	ld a,03dh		;317a	3e 3d 	> = 
	call sub_376bh		;317c	cd 6b 37 	. k 7 
	ld a,d			;317f	7a 	z 
	add a,020h		;3180	c6 20 	.   
	call sub_376bh		;3182	cd 6b 37 	. k 7 
	ld a,e			;3185	7b 	{ 
	add a,020h		;3186	c6 20 	.   
	jp sub_376bh		;3188	c3 6b 37 	. k 7 
sub_318bh:
	xor a			;318b	af 	. 
	ld (0f0ceh),a		;318c	32 ce f0 	2 . . 
	ld (0f0cfh),a		;318f	32 cf f0 	2 . . 
	ld (0f0d0h),a		;3192	32 d0 f0 	2 . . 
	ld a,01ah		;3195	3e 1a 	> . 
	jp sub_376bh		;3197	c3 6b 37 	. k 7 
sub_319ah:
	call sub_33ddh		;319a	cd dd 33 	. . 3 
	push af			;319d	f5 	. 
	or a			;319e	b7 	. 
	jr z,l31b0h		;319f	28 0f 	( . 
	call sub_37dah		;31a1	cd da 37 	. . 7 
	inc hl			;31a4	23 	# 
	inc hl			;31a5	23 	# 
	ld c,(hl)			;31a6	4e 	N 
	ld h,c			;31a7	61 	a 
	ld (hl),b			;31a8	70 	p 
	ld b,b			;31a9	40 	@ 
	ld h,h			;31aa	64 	d 
	ld a,(02420h)		;31ab	3a 20 24 	:   $ 
	jr l31ebh		;31ae	18 3b 	. ; 
l31b0h:
	ld hl,0ffadh		;31b0	21 ad ff 	! . . 
	bit 5,(hl)		;31b3	cb 6e 	. n 
	jr z,l31deh		;31b5	28 27 	( ' 
	call sub_37dah		;31b7	cd da 37 	. . 7 
	dec de			;31ba	1b 	. 
	ld d,e			;31bb	53 	S 
	jr nz,l31deh		;31bc	20 20 	    
	ld d,e			;31be	53 	S 
	ld l,c			;31bf	69 	i 
	ld h,l			;31c0	65 	e 
	ld a,(hl)			;31c1	7e 	~ 
	cpl			;31c2	2f 	/ 
	inc h			;31c3	24 	$ 
	ld a,(0ffdbh)		;31c4	3a db ff 	: . . 
	or a			;31c7	b7 	. 
	jr nz,l31cch		;31c8	20 02 	  . 
	ld a,020h		;31ca	3e 20 	>   
l31cch:
	add a,030h		;31cc	c6 30 	. 0 
	ld c,a			;31ce	4f 	O 
	call 0f20ch		;31cf	cd 0c f2 	. . . 
	call sub_37dah		;31d2	cd da 37 	. . 7 
	ld a,(l201fh+1)		;31d5	3a 20 20 	:     
	dec de			;31d8	1b 	. 
	ld d,h			;31d9	54 	T 
	inc h			;31da	24 	$ 
	pop af			;31db	f1 	. 
	jr l3202h		;31dc	18 24 	. $ 
l31deh:
	call sub_37dah		;31de	cd da 37 	. . 7 
	ld d,d			;31e1	52 	R 
	ld b,c			;31e2	41 	A 
	ld c,l			;31e3	4d 	M 
	ld b,h			;31e4	44 	D 
	ld e,c			;31e5	59 	Y 
	ld d,e			;31e6	53 	S 
	ld c,e			;31e7	4b 	K 
	ld a,(02420h)		;31e8	3a 20 24 	:   $ 
l31ebh:
	pop af			;31eb	f1 	. 
	add a,041h		;31ec	c6 41 	. A 
	call sub_376bh		;31ee	cd 6b 37 	. k 7 
	ld a,(0f071h)		;31f1	3a 71 f0 	: q . 
	ld l,a			;31f4	6f 	o 
	or a			;31f5	b7 	. 
	jr z,l3202h		;31f6	28 0a 	( . 
	ld a,02fh		;31f8	3e 2f 	> / 
	call sub_376bh		;31fa	cd 6b 37 	. k 7 
	ld h,000h		;31fd	26 00 	& . 
	call sub_388dh		;31ff	cd 8d 38 	. . 8 
l3202h:
	ld hl,(0f0bdh)		;3202	2a bd f0 	* . . 
	ld h,000h		;3205	26 00 	& . 
	call sub_37dah		;3207	cd da 37 	. . 7 
	jp p,l6c50h		;320a	f2 50 6c 	. P l 
	ld l,c			;320d	69 	i 
	ld l,e			;320e	6b 	k 
	ld a,e			;320f	7b 	{ 
	ld (hl),a			;3210	77 	w 
	ld a,(02420h)		;3211	3a 20 24 	:   $ 
	call sub_3899h		;3214	cd 99 38 	. . 8 
	call sub_37dah		;3217	cd da 37 	. . 7 
	jp p,l6f50h		;321a	f2 50 6f 	. P o 
	ld a,d			;321d	7a 	z 
	ld l,a			;321e	6f 	o 
	ld (hl),e			;321f	73 	s 
	ld (hl),h			;3220	74 	t 
	ld h,c			;3221	61 	a 
	ld a,h			;3222	7c 	| 
	ld l,a			;3223	6f 	o 
	ld a,(02420h)		;3224	3a 20 24 	:   $ 
	ld hl,0ffadh		;3227	21 ad ff 	! . . 
	bit 5,(hl)		;322a	cb 6e 	. n 
	jr z,l3233h		;322c	28 05 	( . 
	ld hl,(0f0deh)		;322e	2a de f0 	* . . 
	jr l325fh		;3231	18 2c 	. , 
l3233h:
	ld hl,(0f0dah)		;3233	2a da f0 	* . . 
	push hl			;3236	e5 	. 
	ld c,01bh		;3237	0e 1b 	. . 
	call l0005h		;3239	cd 05 00 	. . . 
	pop de			;323c	d1 	. 
	push de			;323d	d5 	. 
l323eh:
	ld c,(hl)			;323e	4e 	N 
	inc hl			;323f	23 	# 
	ld b,008h		;3240	06 08 	. . 
l3242h:
	rlc c		;3242	cb 01 	. . 
	jr nc,l3249h		;3244	30 03 	0 . 
	ex (sp),hl			;3246	e3 	. 
	dec hl			;3247	2b 	+ 
	ex (sp),hl			;3248	e3 	. 
l3249h:
	dec de			;3249	1b 	. 
	ld a,d			;324a	7a 	z 
	or e			;324b	b3 	. 
	jr z,l3252h		;324c	28 04 	( . 
	djnz l3242h		;324e	10 f2 	. . 
	jr l323eh		;3250	18 ec 	. . 
l3252h:
	pop hl			;3252	e1 	. 
	ld a,(0f0d7h)		;3253	3a d7 f0 	: . . 
	sub 003h		;3256	d6 03 	. . 
l3258h:
	dec a			;3258	3d 	= 
	jp m,l325fh		;3259	fa 5f 32 	. _ 2 
	add hl,hl			;325c	29 	) 
	jr l3258h		;325d	18 f9 	. . 
l325fh:
	call sub_388dh		;325f	cd 8d 38 	. . 8 
	call sub_37dah		;3262	cd da 37 	. . 7 
	jr nz,l32b2h		;3265	20 4b 	  K 
	ld b,d			;3267	42 	B 
	inc h			;3268	24 	$ 
	ret			;3269	c9 	. 
sub_326ah:
	ld b,006h		;326a	06 06 	. . 
	nop			;326c	00 	. 
	ld a,(0f0bdh)		;326d	3a bd f0 	: . . 
	or a			;3270	b7 	. 
	ret z			;3271	c8 	. 
	ld a,(0f0c1h)		;3272	3a c1 f0 	: . . 
	sub (ix+00ch)		;3275	dd 96 0c 	. . . 
	ld c,000h		;3278	0e 00 	. . 
l327ah:
	inc c			;327a	0c 	. 
	sub 014h		;327b	d6 14 	. . 
	jr nc,l327ah		;327d	30 fb 	0 . 
	add a,014h		;327f	c6 14 	. . 
	ld d,a			;3281	57 	W 
	xor a			;3282	af 	. 
l3283h:
	dec c			;3283	0d 	. 
	jr z,l328ah		;3284	28 04 	( . 
	add a,01bh		;3286	c6 1b 	. . 
	jr l3283h		;3288	18 f9 	. . 
l328ah:
	ld e,a			;328a	5f 	_ 
	call sub_3175h		;328b	cd 75 31 	. u 1 
	call sub_32cfh		;328e	cd cf 32 	. . 2 
	ld hl,sub_0011h+2		;3291	21 13 00 	! . . 
	add hl,de			;3294	19 	. 
	ld a,(hl)			;3295	7e 	~ 
	call sub_376bh		;3296	cd 6b 37 	. k 7 
	ld a,b			;3299	78 	x 
	or a			;329a	b7 	. 
	push af			;329b	f5 	. 
	jr nz,l32a3h		;329c	20 05 	  . 
	call sub_3769h		;329e	cd 69 37 	. i 7 
	jr l32aah		;32a1	18 07 	. . 
l32a3h:
	call sub_37dah		;32a3	cd da 37 	. . 7 
	ld a,01bh		;32a6	3e 1b 	> . 
	ld d,e			;32a8	53 	S 
	inc h			;32a9	24 	$ 
l32aah:
	ld hl,l0001h		;32aa	21 01 00 	! . . 
	add hl,de			;32ad	19 	. 
	call l3832h		;32ae	cd 32 38 	. 2 8 
	pop af			;32b1	f1 	. 
l32b2h:
	ret z			;32b2	c8 	. 
	call sub_37dah		;32b3	cd da 37 	. . 7 
	dec de			;32b6	1b 	. 
	ld d,h			;32b7	54 	T 
	inc h			;32b8	24 	$ 
	ret			;32b9	c9 	. 
sub_32bah:
	ld a,(0f0c4h)		;32ba	3a c4 f0 	: . . 
	add a,(ix+00bh)		;32bd	dd 86 0b 	. . . 
	ld (0f0c1h),a		;32c0	32 c1 f0 	2 . . 
	ret			;32c3	c9 	. 
sub_32c4h:
	xor a			;32c4	af 	. 
	ld (0f0c1h),a		;32c5	32 c1 f0 	2 . . 
	call sub_3314h		;32c8	cd 14 33 	. . 3 
	ret c			;32cb	d8 	. 
sub_32cch:
	call sub_32bah		;32cc	cd ba 32 	. . 2 
sub_32cfh:
	ld a,(0f0cah)		;32cf	3a ca f0 	: . . 
	or a			;32d2	b7 	. 
	ld a,(0f0c1h)		;32d3	3a c1 f0 	: . . 
	jr z,l32deh		;32d6	28 06 	( . 
	ld hl,0da00h		;32d8	21 00 da 	! . . 
	add a,l			;32db	85 	. 
	ld l,a			;32dc	6f 	o 
	ld a,(hl)			;32dd	7e 	~ 
l32deh:
	ld h,000h		;32de	26 00 	& . 
	ld l,a			;32e0	6f 	o 
	ld e,l			;32e1	5d 	] 
	ld d,h			;32e2	54 	T 
	add hl,hl			;32e3	29 	) 
	add hl,hl			;32e4	29 	) 
	add hl,de			;32e5	19 	. 
	add hl,hl			;32e6	29 	) 
	add hl,hl			;32e7	29 	) 
	ld de,0db00h		;32e8	11 00 db 	. . . 
	add hl,de			;32eb	19 	. 
	ex de,hl			;32ec	eb 	. 
	ret			;32ed	c9 	. 
sub_32eeh:
	ld a,(0f0bdh)		;32ee	3a bd f0 	: . . 
	or a			;32f1	b7 	. 
	ret z			;32f2	c8 	. 
	dec hl			;32f3	2b 	+ 
	dec hl			;32f4	2b 	+ 
	dec hl			;32f5	2b 	+ 
	bit 7,(hl)		;32f6	cb 7e 	. ~ 
	call z,sub_3763h		;32f8	cc 63 37 	. c 7 
	jr z,l3305h		;32fb	28 08 	( . 
	call sub_37dah		;32fd	cd da 37 	. . 7 
	jr nz,l3354h		;3300	20 52 	  R 
	cpl			;3302	2f 	/ 
	ld c,a			;3303	4f 	O 
	inc h			;3304	24 	$ 
l3305h:
	inc hl			;3305	23 	# 
	bit 7,(hl)		;3306	cb 7e 	. ~ 
	jp z,sub_3763h		;3308	ca 63 37 	. c 7 
	call sub_37dah		;330b	cd da 37 	. . 7 
	jr nz,$+85		;330e	20 53 	  S 
	ld e,c			;3310	59 	Y 
	ld d,e			;3311	53 	S 
	inc h			;3312	24 	$ 
	ret			;3313	c9 	. 
sub_3314h:
	ld a,(0f0bdh)		;3314	3a bd f0 	: . . 
	or a			;3317	b7 	. 
	ret z			;3318	c8 	. 
	ld c,a			;3319	4f 	O 
	ld a,(0f0c1h)		;331a	3a c1 f0 	: . . 
	cp c			;331d	b9 	. 
	ret nc			;331e	d0 	. 
	call sub_370dh		;331f	cd 0d 37 	. . 7 
	jr z,l332ah		;3322	28 06 	( . 
	call sub_36feh		;3324	cd fe 36 	. . 6 
	cp 01bh		;3327	fe 1b 	. . 
	ret z			;3329	c8 	. 
l332ah:
	call sub_32cfh		;332a	cd cf 32 	. . 2 
	inc (ix+009h)		;332d	dd 34 09 	. 4 . 
	ld hl,sub_0011h+2		;3330	21 13 00 	! . . 
	add hl,de			;3333	19 	. 
	ld a,(hl)			;3334	7e 	~ 
	cp 02ah		;3335	fe 2a 	. * 
	jr nz,sub_3314h		;3337	20 db 	  . 
	scf			;3339	37 	7 
	ret			;333a	c9 	. 
sub_333bh:
	ld hl,0f076h		;333b	21 76 f0 	! v . 
	push hl			;333e	e5 	. 
	ld b,00ch		;333f	06 0c 	. . 
	xor a			;3341	af 	. 
l3342h:
	and 07fh		;3342	e6 7f 	.  
	ld (hl),a			;3344	77 	w 
	inc hl			;3345	23 	# 
	inc de			;3346	13 	. 
	ld a,(de)			;3347	1a 	. 
	djnz l3342h		;3348	10 f8 	. . 
	ld b,036h		;334a	06 36 	. 6 
	xor a			;334c	af 	. 
l334dh:
	ld (hl),a			;334d	77 	w 
	inc hl			;334e	23 	# 
	djnz l334dh		;334f	10 fc 	. . 
	inc de			;3351	13 	. 
	inc de			;3352	13 	. 
	inc de			;3353	13 	. 
l3354h:
	inc de			;3354	13 	. 
	ld a,(de)			;3355	1a 	. 
	ld (0f0bch),a		;3356	32 bc f0 	2 . . 
	pop de			;3359	d1 	. 
	ret			;335a	c9 	. 
sub_335bh:
	ld de,l0100h		;335b	11 00 01 	. . . 
l335eh:
	push de			;335e	d5 	. 
	call sub_33e5h		;335f	cd e5 33 	. . 3 
	call sub_3420h		;3362	cd 20 34 	.   4 
	pop hl			;3365	e1 	. 
	ret nz			;3366	c0 	. 
	ld de,l0080h		;3367	11 80 00 	. . . 
	add hl,de			;336a	19 	. 
	ex de,hl			;336b	eb 	. 
	ld a,d			;336c	7a 	z 
	cp 0f0h		;336d	fe f0 	. . 
	jr c,l335eh		;336f	38 ed 	8 . 
	scf			;3371	37 	7 
	ret			;3372	c9 	. 
sub_3373h:
	ld hl,l0100h		;3373	21 00 01 	! . . 
	ld (0f0deh),hl		;3376	22 de f0 	" . . 
	ld (0f0e0h),hl		;3379	22 e0 f0 	" . . 
	ex de,hl			;337c	eb 	. 
l337dh:
	ld a,b			;337d	78 	x 
	or c			;337e	b1 	. 
	ret z			;337f	c8 	. 
	push bc			;3380	c5 	. 
	push de			;3381	d5 	. 
	call sub_33e5h		;3382	cd e5 33 	. . 3 
	ld de,0f076h		;3385	11 76 f0 	. v . 
	call sub_3420h		;3388	cd 20 34 	.   4 
	pop hl			;338b	e1 	. 
	jr nz,l33aah		;338c	20 1c 	  . 
	ld c,(ix+019h)		;338e	dd 4e 19 	. N . 
	ld b,080h		;3391	06 80 	. . 
l3393h:
	call sub_0011h		;3393	cd 11 00 	. . . 
	add a,c			;3396	81 	. 
	ld c,a			;3397	4f 	O 
	inc hl			;3398	23 	# 
	djnz l3393h		;3399	10 f8 	. . 
	ld (ix+019h),c		;339b	dd 71 19 	. q . 
	ld (0f0e0h),hl		;339e	22 e0 f0 	" . . 
	ex de,hl			;33a1	eb 	. 
	pop bc			;33a2	c1 	. 
	dec bc			;33a3	0b 	. 
	ld a,d			;33a4	7a 	z 
	cp 0dah		;33a5	fe da 	. . 
	jr c,l337dh		;33a7	38 d4 	8 . 
	ret			;33a9	c9 	. 
l33aah:
	pop bc			;33aa	c1 	. 
	ret			;33ab	c9 	. 
sub_33ach:
	ld hl,(0f0deh)		;33ac	2a de f0 	* . . 
	ex de,hl			;33af	eb 	. 
	ld hl,(0f0e0h)		;33b0	2a e0 f0 	* . . 
	ld a,e			;33b3	7b 	{ 
	sub l			;33b4	95 	. 
	ld a,d			;33b5	7a 	z 
	sbc a,h			;33b6	9c 	. 
	ret nc			;33b7	d0 	. 
	push de			;33b8	d5 	. 
	call sub_33e5h		;33b9	cd e5 33 	. . 3 
	ld de,0f097h		;33bc	11 97 f0 	. . . 
	call sub_341ch		;33bf	cd 1c 34 	. . 4 
	pop de			;33c2	d1 	. 
	scf			;33c3	37 	7 
	ret nz			;33c4	c0 	. 
	ld hl,l0080h		;33c5	21 80 00 	! . . 
	add hl,de			;33c8	19 	. 
	ld (0f0deh),hl		;33c9	22 de f0 	" . . 
	jr sub_33ach		;33cc	18 de 	. . 
sub_33ceh:
	ld a,(0f0b8h)		;33ce	3a b8 f0 	: . . 
	dec a			;33d1	3d 	= 
sub_33d2h:
	ld e,a			;33d2	5f 	_ 
	ld c,00eh		;33d3	0e 0e 	. . 
	jp l0005h		;33d5	c3 05 00 	. . . 
sub_33d8h:
	ld c,00dh		;33d8	0e 0d 	. . 
	jp l0005h		;33da	c3 05 00 	. . . 
sub_33ddh:
	ld c,019h		;33dd	0e 19 	. . 
	jp l0005h		;33df	c3 05 00 	. . . 
sub_33e2h:
	ld de,l0080h		;33e2	11 80 00 	. . . 
sub_33e5h:
	ld c,01ah		;33e5	0e 1a 	. . 
	jp l0005h		;33e7	c3 05 00 	. . . 
sub_33eah:
	call sub_32cch		;33ea	cd cc 32 	. . 2 
	call sub_333bh		;33ed	cd 3b 33 	. ; 3 
	jp sub_33fah		;33f0	c3 fa 33 	. . 3 
sub_33f3h:
	xor a			;33f3	af 	. 
	ld (0f096h),a		;33f4	32 96 f0 	2 . . 
	ld de,0f076h		;33f7	11 76 f0 	. v . 
sub_33fah:
	ld c,00fh		;33fa	0e 0f 	. . 
sub_33fch:
	call l0005h		;33fc	cd 05 00 	. . . 
	ld (0f06dh),a		;33ff	32 6d f0 	2 m . 
	inc a			;3402	3c 	< 
	ret			;3403	c9 	. 
sub_3404h:
	ld de,0f076h		;3404	11 76 f0 	. v . 
sub_3407h:
	ld c,010h		;3407	0e 10 	. . 
	jp sub_33fch		;3409	c3 fc 33 	. . 3 
sub_340ch:
	ld de,0f076h		;340c	11 76 f0 	. v . 
	ld c,011h		;340f	0e 11 	. . 
	jp sub_33fch		;3411	c3 fc 33 	. . 3 
sub_3414h:
	ld de,0f076h		;3414	11 76 f0 	. v . 
	ld c,013h		;3417	0e 13 	. . 
	jp l0005h		;3419	c3 05 00 	. . . 
sub_341ch:
	ld c,015h		;341c	0e 15 	. . 
	jr l3425h		;341e	18 05 	. . 
sub_3420h:
	ld de,0f076h		;3420	11 76 f0 	. v . 
	ld c,014h		;3423	0e 14 	. . 
l3425h:
	call l0005h		;3425	cd 05 00 	. . . 
	or a			;3428	b7 	. 
	ret			;3429	c9 	. 
sub_342ah:
	push de			;342a	d5 	. 
	ld c,013h		;342b	0e 13 	. . 
	call l0005h		;342d	cd 05 00 	. . . 
	pop de			;3430	d1 	. 
	ld c,016h		;3431	0e 16 	. . 
	jp sub_33fch		;3433	c3 fc 33 	. . 3 
sub_3436h:
	ld de,0f076h		;3436	11 76 f0 	. v . 
	ld c,017h		;3439	0e 17 	. . 
	jp l0005h		;343b	c3 05 00 	. . . 
sub_343eh:
	ld e,(ix-047h)		;343e	dd 5e b9 	. ^ . 
	jr sub_3445h		;3441	18 02 	. . 
sub_3443h:
	ld e,0ffh		;3443	1e ff 	. . 
sub_3445h:
	ld c,020h		;3445	0e 20 	.   
	jp l0005h		;3447	c3 05 00 	. . . 
sub_344ah:
	push hl			;344a	e5 	. 
	ld hl,(0f0e2h)		;344b	2a e2 f0 	* . . 
	ex (sp),hl			;344e	e3 	. 
l344fh:
	call sub_379ah		;344f	cd 9a 37 	. . 7 
	call sub_370dh		;3452	cd 0d 37 	. . 7 
	jp nz,l350ah		;3455	c2 0a 35 	. . 5 
	xor a			;3458	af 	. 
	ld (0f0e4h),a		;3459	32 e4 f0 	2 . . 
	ex (sp),hl			;345c	e3 	. 
	call sub_351dh		;345d	cd 1d 35 	. . 5 
	ex (sp),hl			;3460	e3 	. 
	ld a,l			;3461	7d 	} 
	and 00fh		;3462	e6 0f 	. . 
	ld b,a			;3464	47 	G 
	ld c,0ffh		;3465	0e ff 	. . 
	jr z,l347dh		;3467	28 14 	( . 
l3469h:
	inc c			;3469	0c 	. 
	ld a,c			;346a	79 	y 
	and 003h		;346b	e6 03 	. . 
	call z,sub_3769h		;346d	cc 69 37 	. i 7 
	call sub_3769h		;3470	cd 69 37 	. i 7 
	ld a,02dh		;3473	3e 2d 	> - 
	call sub_376bh		;3475	cd 6b 37 	. k 7 
	call sub_376bh		;3478	cd 6b 37 	. k 7 
	djnz l3469h		;347b	10 ec 	. . 
l347dh:
	push hl			;347d	e5 	. 
l347eh:
	call sub_3769h		;347e	cd 69 37 	. i 7 
	ld a,l			;3481	7d 	} 
	and 003h		;3482	e6 03 	. . 
	call z,sub_3769h		;3484	cc 69 37 	. i 7 
	call sub_0011h		;3487	cd 11 00 	. . . 
	call l3522h		;348a	cd 22 35 	. " 5 
	call sub_3513h		;348d	cd 13 35 	. . 5 
	jr nc,l34abh		;3490	30 19 	0 . 
	ld a,l			;3492	7d 	} 
	cpl			;3493	2f 	/ 
	inc a			;3494	3c 	< 
	and 00fh		;3495	e6 0f 	. . 
	jr z,l34b0h		;3497	28 17 	( . 
	ld c,a			;3499	4f 	O 
	add a,a			;349a	87 	. 
	add a,c			;349b	81 	. 
	ld b,a			;349c	47 	G 
	ld a,c			;349d	79 	y 
	rrca			;349e	0f 	. 
	rrca			;349f	0f 	. 
	and 003h		;34a0	e6 03 	. . 
	add a,b			;34a2	80 	. 
	ld b,a			;34a3	47 	G 
l34a4h:
	call sub_3769h		;34a4	cd 69 37 	. i 7 
	djnz l34a4h		;34a7	10 fb 	. . 
	jr l34b0h		;34a9	18 05 	. . 
l34abh:
	ld a,l			;34ab	7d 	} 
	and 00fh		;34ac	e6 0f 	. . 
	jr nz,l347eh		;34ae	20 ce 	  . 
l34b0h:
	pop hl			;34b0	e1 	. 
	call sub_375bh		;34b1	cd 5b 37 	. [ 7 
	ld a,l			;34b4	7d 	} 
	and 00fh		;34b5	e6 0f 	. . 
	ld b,a			;34b7	47 	G 
	jr z,l34bfh		;34b8	28 05 	( . 
l34bah:
	call sub_3769h		;34ba	cd 69 37 	. i 7 
	djnz l34bah		;34bd	10 fb 	. . 
l34bfh:
	call sub_0011h		;34bf	cd 11 00 	. . . 
	ld c,a			;34c2	4f 	O 
	ld a,(0f0e4h)		;34c3	3a e4 f0 	: . . 
	add a,c			;34c6	81 	. 
	ld (0f0e4h),a		;34c7	32 e4 f0 	2 . . 
	ld a,c			;34ca	79 	y 
	and 07fh		;34cb	e6 7f 	.  
	ld c,02eh		;34cd	0e 2e 	. . 
	cp 020h		;34cf	fe 20 	.   
	jr c,l34d8h		;34d1	38 05 	8 . 
	cp 07fh		;34d3	fe 7f 	.  
	jr nc,l34d8h		;34d5	30 01 	0 . 
	ld c,a			;34d7	4f 	O 
l34d8h:
	ld a,c			;34d8	79 	y 
	call sub_376bh		;34d9	cd 6b 37 	. k 7 
	ex (sp),hl			;34dc	e3 	. 
	inc hl			;34dd	23 	# 
	ex (sp),hl			;34de	e3 	. 
	call sub_3513h		;34df	cd 13 35 	. . 5 
	jr c,l34f5h		;34e2	38 11 	8 . 
	ld a,l			;34e4	7d 	} 
	and 00fh		;34e5	e6 0f 	. . 
	jr nz,l34bfh		;34e7	20 d6 	  . 
	call sub_3766h		;34e9	cd 66 37 	. f 7 
	ld a,(0f0e4h)		;34ec	3a e4 f0 	: . . 
	call l3522h		;34ef	cd 22 35 	. " 5 
	jp l344fh		;34f2	c3 4f 34 	. O 4 
l34f5h:
	ld a,l			;34f5	7d 	} 
	and 00fh		;34f6	e6 0f 	. . 
	jr z,l3500h		;34f8	28 06 	( . 
	call sub_3769h		;34fa	cd 69 37 	. i 7 
	inc hl			;34fd	23 	# 
	jr l34f5h		;34fe	18 f5 	. . 
l3500h:
	call sub_3766h		;3500	cd 66 37 	. f 7 
	ld a,(0f0e4h)		;3503	3a e4 f0 	: . . 
	call l3522h		;3506	cd 22 35 	. " 5 
	scf			;3509	37 	7 
l350ah:
	ex (sp),hl			;350a	e3 	. 
	ld (0f0e2h),hl		;350b	22 e2 f0 	" . . 
	call sub_379ah		;350e	cd 9a 37 	. . 7 
	pop hl			;3511	e1 	. 
	ret			;3512	c9 	. 
sub_3513h:
	inc hl			;3513	23 	# 
	ld a,h			;3514	7c 	| 
	or l			;3515	b5 	. 
	scf			;3516	37 	7 
	ret z			;3517	c8 	. 
sub_3518h:
	ld a,e			;3518	7b 	{ 
	sub l			;3519	95 	. 
	ld a,d			;351a	7a 	z 
	sbc a,h			;351b	9c 	. 
	ret			;351c	c9 	. 
sub_351dh:
	ld a,h			;351d	7c 	| 
	call l3522h		;351e	cd 22 35 	. " 5 
	ld a,l			;3521	7d 	} 
l3522h:
	push af			;3522	f5 	. 
	rrca			;3523	0f 	. 
	rrca			;3524	0f 	. 
	rrca			;3525	0f 	. 
	rrca			;3526	0f 	. 
	and 00fh		;3527	e6 0f 	. . 
	call sub_352fh		;3529	cd 2f 35 	. / 5 
	pop af			;352c	f1 	. 
	and 00fh		;352d	e6 0f 	. . 
sub_352fh:
	call sub_3535h		;352f	cd 35 35 	. 5 5 
	jp sub_376bh		;3532	c3 6b 37 	. k 7 
sub_3535h:
	add a,090h		;3535	c6 90 	. . 
	daa			;3537	27 	' 
	adc a,040h		;3538	ce 40 	. @ 
	daa			;353a	27 	' 
	ret			;353b	c9 	. 
sub_353ch:
	call sub_0011h		;353c	cd 11 00 	. . . 
	cp 01ah		;353f	fe 1a 	. . 
	ret z			;3541	c8 	. 
	call sub_379fh		;3542	cd 9f 37 	. . 7 
sub_3545h:
	call sub_370dh		;3545	cd 0d 37 	. . 7 
	ret nz			;3548	c0 	. 
	call sub_3513h		;3549	cd 13 35 	. . 5 
	jr nc,sub_353ch		;354c	30 ee 	0 . 
	ret			;354e	c9 	. 
sub_354fh:
	call sub_37dah		;354f	cd da 37 	. . 7 
	ld c,(hl)			;3552	4e 	N 
	ld l,a			;3553	6f 	o 
	ld (hl),a			;3554	77 	w 
	ld h,c			;3555	61 	a 
	jr nz,$+112		;3556	20 6e 	  n 
	ld h,c			;3558	61 	a 
	ld a,d			;3559	7a 	z 
	ld (hl),a			;355a	77 	w 
	ld h,c			;355b	61 	a 
	jr nz,$+60		;355c	20 3a 	  : 
	inc h			;355e	24 	$ 
	jr l3572h		;355f	18 11 	. . 
sub_3561h:
	call sub_37dah		;3561	cd da 37 	. . 7 
	ld d,b			;3564	50 	P 
	ld l,a			;3565	6f 	o 
	ld h,h			;3566	64 	d 
	ld h,c			;3567	61 	a 
	ld l,d			;3568	6a 	j 
	jr nz,$+109		;3569	20 6b 	  k 
	ld l,h			;356b	6c 	l 
	ld (hl),l			;356c	75 	u 
	ld h,e			;356d	63 	c 
	ld a,d			;356e	7a 	z 
	jr nz,l35abh		;356f	20 3a 	  : 
	inc h			;3571	24 	$ 
l3572h:
	call sub_35cbh		;3572	cd cb 35 	. . 5 
	ret c			;3575	d8 	. 
	ret z			;3576	c8 	. 
	inc hl			;3577	23 	# 
	ld de,0f0a3h		;3578	11 a3 f0 	. . . 
	ld b,00bh		;357b	06 0b 	. . 
l357dh:
	dec de			;357d	1b 	. 
	ld a,020h		;357e	3e 20 	>   
	ld (de),a			;3580	12 	. 
	djnz l357dh		;3581	10 fa 	. . 
	ld b,009h		;3583	06 09 	. . 
l3585h:
	call sub_0011h		;3585	cd 11 00 	. . . 
	or a			;3588	b7 	. 
	jr z,l35aah		;3589	28 1f 	( . 
	inc hl			;358b	23 	# 
	cp 02eh		;358c	fe 2e 	. . 
	jr z,l3597h		;358e	28 07 	( . 
	call sub_35ach		;3590	cd ac 35 	. . 5 
	jr nz,l3585h		;3593	20 f0 	  . 
	scf			;3595	37 	7 
	ret			;3596	c9 	. 
l3597h:
	ld de,0f0a0h		;3597	11 a0 f0 	. . . 
	ld b,004h		;359a	06 04 	. . 
l359ch:
	call sub_0011h		;359c	cd 11 00 	. . . 
	or a			;359f	b7 	. 
	jr z,l35aah		;35a0	28 08 	( . 
	inc hl			;35a2	23 	# 
	call sub_35ach		;35a3	cd ac 35 	. . 5 
	jr nz,l359ch		;35a6	20 f4 	  . 
	scf			;35a8	37 	7 
	ret			;35a9	c9 	. 
l35aah:
	inc a			;35aa	3c 	< 
l35abh:
	ret			;35ab	c9 	. 
sub_35ach:
	cp 03fh		;35ac	fe 3f 	. ? 
	jr nz,l35b7h		;35ae	20 07 	  . 
	ld (0f0cbh),a		;35b0	32 cb f0 	2 . . 
l35b3h:
	ld (de),a			;35b3	12 	. 
	inc de			;35b4	13 	. 
	dec b			;35b5	05 	. 
	ret			;35b6	c9 	. 
l35b7h:
	cp 02ah		;35b7	fe 2a 	. * 
	jr nz,l35b3h		;35b9	20 f8 	  . 
l35bbh:
	ld a,03fh		;35bb	3e 3f 	> ? 
	ld (0f0cbh),a		;35bd	32 cb f0 	2 . . 
	ld (de),a			;35c0	12 	. 
	inc de			;35c1	13 	. 
	dec b			;35c2	05 	. 
	ret z			;35c3	c8 	. 
	ld a,b			;35c4	78 	x 
	cp 001h		;35c5	fe 01 	. . 
	jr nz,l35bbh		;35c7	20 f2 	  . 
	or a			;35c9	b7 	. 
	ret			;35ca	c9 	. 
sub_35cbh:
	ld hl,l0081h		;35cb	21 81 00 	! . . 
	xor a			;35ce	af 	. 
	ld (0f0cbh),a		;35cf	32 cb f0 	2 . . 
	ld (hl),020h		;35d2	36 20 	6   
	ld (0f074h),hl		;35d4	22 74 f0 	" t . 
	inc hl			;35d7	23 	# 
l35d8h:
	ld c,001h		;35d8	0e 01 	. . 
l35dah:
	call sub_36feh		;35da	cd fe 36 	. . 6 
	res 7,a		;35dd	cb bf 	. . 
	cp 01bh		;35df	fe 1b 	. . 
	scf			;35e1	37 	7 
	ret z			;35e2	c8 	. 
	cp 00dh		;35e3	fe 0d 	. . 
	jr z,l3618h		;35e5	28 31 	( 1 
	cp 07fh		;35e7	fe 7f 	.  
	jr nz,l35edh		;35e9	20 02 	  . 
	ld a,008h		;35eb	3e 08 	> . 
l35edh:
	cp 008h		;35ed	fe 08 	. . 
	jr nz,l3600h		;35ef	20 0f 	  . 
	dec c			;35f1	0d 	. 
	jr z,l35d8h		;35f2	28 e4 	( . 
l35f4h:
	dec hl			;35f4	2b 	+ 
	ld (hl),000h		;35f5	36 00 	6 . 
	call sub_37dah		;35f7	cd da 37 	. . 7 
	ex af,af'			;35fa	08 	. 
	jr nz,$+10		;35fb	20 08 	  . 
	inc h			;35fd	24 	$ 
	jr l35dah		;35fe	18 da 	. . 
l3600h:
	cp 061h		;3600	fe 61 	. a 
	jr c,l360ah		;3602	38 06 	8 . 
	cp 07bh		;3604	fe 7b 	. { 
	jr nc,l360ah		;3606	30 02 	0 . 
	res 5,a		;3608	cb af 	. . 
l360ah:
	call sub_376bh		;360a	cd 6b 37 	. k 7 
	ld (hl),a			;360d	77 	w 
	inc hl			;360e	23 	# 
	inc c			;360f	0c 	. 
	ld a,c			;3610	79 	y 
	cp 041h		;3611	fe 41 	. A 
	jr c,l35dah		;3613	38 c5 	8 . 
	dec c			;3615	0d 	. 
	jr l35f4h		;3616	18 dc 	. . 
l3618h:
	ld (hl),000h		;3618	36 00 	6 . 
	ld hl,l0080h		;361a	21 80 00 	! . . 
	dec c			;361d	0d 	. 
	jr z,l3624h		;361e	28 04 	( . 
	inc c			;3620	0c 	. 
	ld (hl),c			;3621	71 	q 
	inc hl			;3622	23 	# 
	ret			;3623	c9 	. 
l3624h:
	ld (hl),c			;3624	71 	q 
	inc hl			;3625	23 	# 
	ld (hl),c			;3626	71 	q 
	ret			;3627	c9 	. 
sub_3628h:
	call sub_37dah		;3628	cd da 37 	. . 7 
	inc a			;362b	3c 	< 
	dec a			;362c	3d 	= 
	dec a			;362d	3d 	= 
	dec a			;362e	3d 	= 
	ld a,020h		;362f	3e 20 	>   
	inc h			;3631	24 	$ 
	call sub_3736h		;3632	cd 36 37 	. 6 7 
l3635h:
	cp 01bh		;3635	fe 1b 	. . 
	jr z,l3671h		;3637	28 38 	( 8 
	cp 055h		;3639	fe 55 	. U 
	jr z,l3675h		;363b	28 38 	( 8 
	cp 053h		;363d	fe 53 	. S 
	jp z,l3de8h		;363f	ca e8 3d 	. . = 
	jr l365fh		;3642	18 1b 	. . 
sub_3644h:
	call sub_37dah		;3644	cd da 37 	. . 7 
	ld c,(hl)			;3647	4e 	N 
	ld h,c			;3648	61 	a 
	ld (hl),b			;3649	70 	p 
	ld b,b			;364a	40 	@ 
	ld h,h			;364b	64 	d 
	ld a,(02420h)		;364c	3a 20 24 	:   $ 
	call sub_3736h		;364f	cd 36 37 	. 6 7 
	cp 01bh		;3652	fe 1b 	. . 
	jr z,l3671h		;3654	28 1b 	( . 
	cp 055h		;3656	fe 55 	. U 
	jr z,l3675h		;3658	28 1b 	( . 
	cp 053h		;365a	fe 53 	. S 
	jp z,l3fa1h		;365c	ca a1 3f 	. . ? 
l365fh:
	sub 041h		;365f	d6 41 	. A 
	jp c,l36e8h		;3661	da e8 36 	. . 6 
	ld c,a			;3664	4f 	O 
	push bc			;3665	c5 	. 
	call 0f21bh		;3666	cd 1b f2 	. . . 
	pop bc			;3669	c1 	. 
	inc c			;366a	0c 	. 
	ld a,h			;366b	7c 	| 
	or l			;366c	b5 	. 
	jr z,l36e8h		;366d	28 79 	( y 
	ld a,c			;366f	79 	y 
	ret			;3670	c9 	. 
l3671h:
	pop bc			;3671	c1 	. 
	jp l2e41h		;3672	c3 41 2e 	. A . 
l3675h:
	call sub_37dah		;3675	cd da 37 	. . 7 
	ld a,l			;3678	7d 	} 
	ld a,c			;3679	79 	y 
	ld (hl),h			;367a	74 	t 
	ld l,e			;367b	6b 	k 
	ld l,a			;367c	6f 	o 
	ld (hl),a			;367d	77 	w 
	ld l,(hl)			;367e	6e 	n 
	ld l,c			;367f	69 	i 
	ld l,e			;3680	6b 	k 
	jr nz,$+60		;3681	20 3a 	  : 
	jr nz,l36a9h		;3683	20 24 	  $ 
	ld e,000h		;3685	1e 00 	. . 
	call sub_36feh		;3687	cd fe 36 	. . 6 
	cp 01bh		;368a	fe 1b 	. . 
	jr z,l3671h		;368c	28 e3 	( . 
	cp 00dh		;368e	fe 0d 	. . 
	jr z,l36c8h		;3690	28 36 	( 6 
	ld e,a			;3692	5f 	_ 
	cp 03fh		;3693	fe 3f 	. ? 
	jp z,sub_376bh		;3695	ca 6b 37 	. k 7 
	call sub_376bh		;3698	cd 6b 37 	. k 7 
	sub 030h		;369b	d6 30 	. 0 
	jr c,l36cch		;369d	38 2d 	8 - 
	cp 00ah		;369f	fe 0a 	. . 
	jr nc,l36cch		;36a1	30 29 	0 ) 
	ld e,a			;36a3	5f 	_ 
	call sub_36feh		;36a4	cd fe 36 	. . 6 
	cp 020h		;36a7	fe 20 	.   
l36a9h:
	jr z,l36c8h		;36a9	28 1d 	( . 
	cp 00dh		;36ab	fe 0d 	. . 
	jr z,l36c8h		;36ad	28 19 	( . 
	call sub_376bh		;36af	cd 6b 37 	. k 7 
	push af			;36b2	f5 	. 
	ld a,e			;36b3	7b 	{ 
	add a,a			;36b4	87 	. 
	add a,a			;36b5	87 	. 
	add a,e			;36b6	83 	. 
	add a,a			;36b7	87 	. 
	ld e,a			;36b8	5f 	_ 
	pop af			;36b9	f1 	. 
	sub 030h		;36ba	d6 30 	. 0 
	jr c,l36cch		;36bc	38 0e 	8 . 
	cp 00ah		;36be	fe 0a 	. . 
	jr nc,l36cch		;36c0	30 0a 	0 . 
	add a,e			;36c2	83 	. 
	ld e,a			;36c3	5f 	_ 
	cp 020h		;36c4	fe 20 	.   
	jr nc,l36cch		;36c6	30 04 	0 . 
l36c8h:
	ld a,03fh		;36c8	3e 3f 	> ? 
	or a			;36ca	b7 	. 
	ret			;36cb	c9 	. 
l36cch:
	call sub_37dah		;36cc	cd da 37 	. . 7 
	jp p,l7c7ah		;36cf	f2 7a 7c 	. z | 
	ld a,c			;36d2	79 	y 
	jr nz,$+112		;36d3	20 6e 	  n 
	ld (hl),l			;36d5	75 	u 
	ld l,l			;36d6	6d 	m 
	ld h,l			;36d7	65 	e 
	ld (hl),d			;36d8	72 	r 
	jr nz,l3750h		;36d9	20 75 	  u 
	ld a,l			;36db	7d 	} 
	ld a,c			;36dc	79 	y 
	ld (hl),h			;36dd	74 	t 
	ld l,e			;36de	6b 	k 
	ld l,a			;36df	6f 	o 
	ld (hl),a			;36e0	77 	w 
	ld l,(hl)			;36e1	6e 	n 
	ld l,c			;36e2	69 	i 
	ld l,e			;36e3	6b 	k 
	ld h,c			;36e4	61 	a 
	inc h			;36e5	24 	$ 
	scf			;36e6	37 	7 
	ret			;36e7	c9 	. 
l36e8h:
	call sub_28c2h		;36e8	cd c2 28 	. . ( 
	call sub_37dah		;36eb	cd da 37 	. . 7 
	jr nz,l375eh		;36ee	20 6e 	  n 
	ld h,c			;36f0	61 	a 
	ld (hl),b			;36f1	70 	p 
	ld b,b			;36f2	40 	@ 
	ld h,h			;36f3	64 	d 
	ld (hl),l			;36f4	75 	u 
	inc h			;36f5	24 	$ 
	scf			;36f6	37 	7 
	ret			;36f7	c9 	. 
sub_36f8h:
	call sub_370dh		;36f8	cd 0d 37 	. . 7 
	ret z			;36fb	c8 	. 
	jr l3703h		;36fc	18 05 	. . 
sub_36feh:
	call sub_3716h		;36fe	cd 16 37 	. . 7 
	jr z,sub_36feh		;3701	28 fb 	( . 
l3703h:
	exx			;3703	d9 	. 
	ld c,006h		;3704	0e 06 	. . 
	ld e,0ffh		;3706	1e ff 	. . 
	call l0005h		;3708	cd 05 00 	. . . 
	exx			;370b	d9 	. 
	ret			;370c	c9 	. 
sub_370dh:
	exx			;370d	d9 	. 
	ld c,00bh		;370e	0e 0b 	. . 
	call l0005h		;3710	cd 05 00 	. . . 
	exx			;3713	d9 	. 
	or a			;3714	b7 	. 
	ret			;3715	c9 	. 
sub_3716h:
	exx			;3716	d9 	. 
	ld c,006h		;3717	0e 06 	. . 
	ld e,0feh		;3719	1e fe 	. . 
	call l0005h		;371b	cd 05 00 	. . . 
	exx			;371e	d9 	. 
	or a			;371f	b7 	. 
	ret			;3720	c9 	. 
sub_3721h:
	cp 020h		;3721	fe 20 	.   
	jp nc,0f20ch		;3723	d2 0c f2 	. . . 
	ret			;3726	c9 	. 
sub_3727h:
	call sub_37dah		;3727	cd da 37 	. . 7 
	jr nz,$+42		;372a	20 28 	  ( 
	ld d,h			;372c	54 	T 
	cpl			;372d	2f 	/ 
	ld c,(hl)			;372e	4e 	N 
	add hl,hl			;372f	29 	) 
	jr nz,l3771h		;3730	20 3f 	  ? 
	jr nz,l374fh		;3732	20 1b 	  . 
	ld c,e			;3734	4b 	K 
	inc h			;3735	24 	$ 
sub_3736h:
	call sub_36feh		;3736	cd fe 36 	. . 6 
	exx			;3739	d9 	. 
	ld c,a			;373a	4f 	O 
	call sub_3721h		;373b	cd 21 37 	. ! 7 
	exx			;373e	d9 	. 
sub_373fh:
	cp 061h		;373f	fe 61 	. a 
	ret c			;3741	d8 	. 
	cp 07bh		;3742	fe 7b 	. { 
	ret nc			;3744	d0 	. 
	and 05fh		;3745	e6 5f 	. _ 
	ret			;3747	c9 	. 
sub_3748h:
	call sub_37dah		;3748	cd da 37 	. . 7 
	ld a,(bc)			;374b	0a 	. 
	ld hl,(l6f6bh)		;374c	2a 6b 6f 	* k o 
l374fh:
	ld l,(hl)			;374f	6e 	n 
l3750h:
	ld l,c			;3750	69 	i 
	ld h,l			;3751	65 	e 
	ld h,e			;3752	63 	c 
	ld hl,(0cd24h)		;3753	2a 24 cd 	* $ . 
	ld d,037h		;3756	16 37 	. 7 
	jr z,$-3		;3758	28 fb 	( . 
	ret			;375a	c9 	. 
sub_375bh:
	call sub_3766h		;375b	cd 66 37 	. f 7 
l375eh:
	jr sub_3769h		;375e	18 09 	. . 
	call sub_3769h		;3760	cd 69 37 	. i 7 
sub_3763h:
	call sub_3766h		;3763	cd 66 37 	. f 7 
sub_3766h:
	call sub_3769h		;3766	cd 69 37 	. i 7 
sub_3769h:
	ld a,020h		;3769	3e 20 	>   
sub_376bh:
	push af			;376b	f5 	. 
	exx			;376c	d9 	. 
	ld c,a			;376d	4f 	O 
	ld a,(0f26bh)		;376e	3a 6b f2 	: k . 
l3771h:
	bit 1,a		;3771	cb 4f 	. O 
	jr z,l3777h		;3773	28 02 	( . 
	res 7,c		;3775	cb b9 	. . 
l3777h:
	bit 4,(ix-048h)		;3777	dd cb b8 66 	. . . f 
	jr nz,l378eh		;377b	20 11 	  . 
	bit 6,(ix-048h)		;377d	dd cb b8 76 	. . . v 
	jr z,l3788h		;3781	28 05 	( . 
	call 0f20fh		;3783	cd 0f f2 	. . . 
	jr l378bh		;3786	18 03 	. . 
l3788h:
	call 0f20ch		;3788	cd 0c f2 	. . . 
l378bh:
	exx			;378b	d9 	. 
	pop af			;378c	f1 	. 
	ret			;378d	c9 	. 
l378eh:
	ld e,c			;378e	59 	Y 
	ld c,002h		;378f	0e 02 	. . 
	call l0005h		;3791	cd 05 00 	. . . 
	jr l378bh		;3794	18 f5 	. . 
sub_3796h:
	ld a,00dh		;3796	3e 0d 	> . 
	jr sub_379fh		;3798	18 05 	. . 
sub_379ah:
	call sub_3796h		;379a	cd 96 37 	. . 7 
	ld a,00ah		;379d	3e 0a 	> . 
sub_379fh:
	push hl			;379f	e5 	. 
	push af			;37a0	f5 	. 
	ld hl,0f0d2h		;37a1	21 d2 f0 	! . . 
	cp 00dh		;37a4	fe 0d 	. . 
	jr nz,l37aah		;37a6	20 02 	  . 
	ld (hl),000h		;37a8	36 00 	6 . 
l37aah:
	cp 009h		;37aa	fe 09 	. . 
	jr nz,l37cfh		;37ac	20 21 	  ! 
	ld a,(0f26bh)		;37ae	3a 6b f2 	: k . 
	bit 0,a		;37b1	cb 47 	. G 
	jr z,l37c2h		;37b3	28 0d 	( . 
	ld a,01bh		;37b5	3e 1b 	> . 
	bit 6,(ix-048h)		;37b7	dd cb b8 76 	. . . v 
	call z,sub_376bh		;37bb	cc 6b 37 	. k 7 
	ld a,009h		;37be	3e 09 	> . 
	jr l37d4h		;37c0	18 12 	. . 
l37c2h:
	ld a,020h		;37c2	3e 20 	>   
	call sub_376bh		;37c4	cd 6b 37 	. k 7 
	inc (hl)			;37c7	34 	4 
	ld a,(hl)			;37c8	7e 	~ 
	and 007h		;37c9	e6 07 	. . 
	jr nz,l37c2h		;37cb	20 f5 	  . 
	jr l37d7h		;37cd	18 08 	. . 
l37cfh:
	cp 020h		;37cf	fe 20 	.   
	jr c,l37d4h		;37d1	38 01 	8 . 
	inc (hl)			;37d3	34 	4 
l37d4h:
	call sub_376bh		;37d4	cd 6b 37 	. k 7 
l37d7h:
	pop af			;37d7	f1 	. 
	pop hl			;37d8	e1 	. 
	ret			;37d9	c9 	. 
sub_37dah:
	call sub_3823h		;37da	cd 23 38 	. # 8 
	ld a,(0f26bh)		;37dd	3a 6b f2 	: k . 
	ld (0f13bh),a		;37e0	32 3b f1 	2 ; . 
	bit 5,a		;37e3	cb 6f 	. o 
	jr nz,l37ech		;37e5	20 05 	  . 
	set 4,a		;37e7	cb e7 	. . 
	ld (0f26bh),a		;37e9	32 6b f2 	2 k . 
l37ech:
	ex (sp),hl			;37ec	e3 	. 
	ld a,(hl)			;37ed	7e 	~ 
	inc hl			;37ee	23 	# 
	cp 024h		;37ef	fe 24 	. $ 
	ex (sp),hl			;37f1	e3 	. 
	jr z,l380eh		;37f2	28 1a 	( . 
	cp 0f0h		;37f4	fe f0 	. . 
	jr nc,l3802h		;37f6	30 0a 	0 . 
	cp 00ah		;37f8	fe 0a 	. . 
	call nz,sub_376bh		;37fa	c4 6b 37 	. k 7 
	call z,sub_379ah		;37fd	cc 9a 37 	. . 7 
	jr l37ech		;3800	18 ea 	. . 
l3802h:
	and 00fh		;3802	e6 0f 	. . 
l3804h:
	push af			;3804	f5 	. 
	call sub_3769h		;3805	cd 69 37 	. i 7 
	pop af			;3808	f1 	. 
	dec a			;3809	3d 	= 
	jr nz,l3804h		;380a	20 f8 	  . 
	jr l37ech		;380c	18 de 	. . 
l380eh:
	ld a,(0f13bh)		;380e	3a 3b f1 	: ; . 
	ld (0f26bh),a		;3811	32 6b f2 	2 k . 
sub_3814h:
	bit 6,(ix-048h)		;3814	dd cb b8 76 	. . . v 
	ret nz			;3818	c0 	. 
	ld a,01bh		;3819	3e 1b 	> . 
	call sub_376bh		;381b	cd 6b 37 	. k 7 
	ld a,04fh		;381e	3e 4f 	> O 
	jp sub_376bh		;3820	c3 6b 37 	. k 7 
sub_3823h:
	bit 6,(ix-048h)		;3823	dd cb b8 76 	. . . v 
	ret nz			;3827	c0 	. 
	ld a,01bh		;3828	3e 1b 	> . 
	call sub_376bh		;382a	cd 6b 37 	. k 7 
	ld a,050h		;382d	3e 50 	> P 
	jp sub_376bh		;382f	c3 6b 37 	. k 7 
l3832h:
	ld b,008h		;3832	06 08 	. . 
	call sub_3846h		;3834	cd 46 38 	. F 8 
	ld a,02eh		;3837	3e 2e 	> . 
	call sub_376bh		;3839	cd 6b 37 	. k 7 
	ld b,003h		;383c	06 03 	. . 
	call sub_3846h		;383e	cd 46 38 	. F 8 
	ld a,020h		;3841	3e 20 	>   
	jp sub_376bh		;3843	c3 6b 37 	. k 7 
sub_3846h:
	call sub_0011h		;3846	cd 11 00 	. . . 
	inc hl			;3849	23 	# 
	and 07fh		;384a	e6 7f 	.  
	call sub_376bh		;384c	cd 6b 37 	. k 7 
	djnz sub_3846h		;384f	10 f5 	. . 
	ret			;3851	c9 	. 
sub_3852h:
	cp 007h		;3852	fe 07 	. . 
	jr nz,l3860h		;3854	20 0a 	  . 
	call sub_37dah		;3856	cd da 37 	. . 7 
	jp p,l4e52h		;3859	f2 52 4e 	. R N 
	ld b,h			;385c	44 	D 
	inc h			;385d	24 	$ 
	jr l3863h		;385e	18 03 	. . 
l3860h:
	call sub_3893h		;3860	cd 93 38 	. . 8 
l3863h:
	call sub_38d3h		;3863	cd d3 38 	. . 8 
	ld (ix+008h),004h		;3866	dd 36 08 04 	. 6 . . 
sub_386ah:
	ld c,005h		;386a	0e 05 	. . 
	push hl			;386c	e5 	. 
	ld de,02710h		;386d	11 10 27 	. . ' 
	call sub_389fh		;3870	cd 9f 38 	. . 8 
	ld de,003e8h		;3873	11 e8 03 	. . . 
	call sub_389fh		;3876	cd 9f 38 	. . 8 
	ld de,l0064h		;3879	11 64 00 	. d . 
	call sub_389fh		;387c	cd 9f 38 	. . 8 
	ld de,l0008h+2		;387f	11 0a 00 	. . . 
	call sub_389fh		;3882	cd 9f 38 	. . 8 
	ld de,l0001h		;3885	11 01 00 	. . . 
	call sub_38adh		;3888	cd ad 38 	. . 8 
	pop hl			;388b	e1 	. 
	ret			;388c	c9 	. 
sub_388dh:
	ld (ix+008h),001h		;388d	dd 36 08 01 	. 6 . . 
	jr sub_386ah		;3891	18 d7 	. . 
sub_3893h:
	ld (ix+008h),005h		;3893	dd 36 08 05 	. 6 . . 
	jr sub_386ah		;3897	18 d1 	. . 
sub_3899h:
	ld (ix+008h),003h		;3899	dd 36 08 03 	. 6 . . 
	jr sub_386ah		;389d	18 cb 	. . 
sub_389fh:
	ld a,(0f0c0h)		;389f	3a c0 f0 	: . . 
	or a			;38a2	b7 	. 
	jr z,sub_38adh		;38a3	28 08 	( . 
	ld a,l			;38a5	7d 	} 
	sub e			;38a6	93 	. 
	ld a,h			;38a7	7c 	| 
	sbc a,d			;38a8	9a 	. 
	jr nc,sub_38adh		;38a9	30 02 	0 . 
	dec c			;38ab	0d 	. 
	ret			;38ac	c9 	. 
sub_38adh:
	ld a,(0f0c0h)		;38ad	3a c0 f0 	: . . 
	sub c			;38b0	91 	. 
	jr z,l38bbh		;38b1	28 08 	( . 
	jr c,l38bbh		;38b3	38 06 	8 . 
	ld b,a			;38b5	47 	G 
l38b6h:
	call sub_3769h		;38b6	cd 69 37 	. i 7 
	djnz l38b6h		;38b9	10 fb 	. . 
l38bbh:
	xor a			;38bb	af 	. 
	ld (0f0c0h),a		;38bc	32 c0 f0 	2 . . 
	ld b,000h		;38bf	06 00 	. . 
l38c1h:
	or a			;38c1	b7 	. 
	sbc hl,de		;38c2	ed 52 	. R 
	inc b			;38c4	04 	. 
	jr nc,l38c1h		;38c5	30 fa 	0 . 
	add hl,de			;38c7	19 	. 
	dec b			;38c8	05 	. 
	ld a,030h		;38c9	3e 30 	> 0 
	add a,b			;38cb	80 	. 
	jp sub_376bh		;38cc	c3 6b 37 	. k 7 
sub_38cfh:
	ld a,007h		;38cf	3e 07 	> . 
	jr l38d6h		;38d1	18 03 	. . 
sub_38d3h:
	ld a,(0f0d8h)		;38d3	3a d8 f0 	: . . 
l38d6h:
	ld c,a			;38d6	4f 	O 
	and l			;38d7	a5 	. 
	push af			;38d8	f5 	. 
	ld a,c			;38d9	79 	y 
	cpl			;38da	2f 	/ 
	and l			;38db	a5 	. 
	ld l,a			;38dc	6f 	o 
	pop af			;38dd	f1 	. 
	jr z,l38e8h		;38de	28 08 	( . 
	ld a,c			;38e0	79 	y 
	inc a			;38e1	3c 	< 
	add a,l			;38e2	85 	. 
	ld l,a			;38e3	6f 	o 
	ld a,h			;38e4	7c 	| 
	adc a,000h		;38e5	ce 00 	. . 
	ld h,a			;38e7	67 	g 
l38e8h:
	ld c,003h		;38e8	0e 03 	. . 
l38eah:
	or a			;38ea	b7 	. 
	rr h		;38eb	cb 1c 	. . 
	rr l		;38ed	cb 1d 	. . 
	dec c			;38ef	0d 	. 
	jr nz,l38eah		;38f0	20 f8 	  . 
	ret			;38f2	c9 	. 
sub_38f3h:
	ld a,(0f070h)		;38f3	3a 70 f0 	: p . 
	and 080h		;38f6	e6 80 	. . 
	rrca			;38f8	0f 	. 
	or (ix-048h)		;38f9	dd b6 b8 	. . . 
	ld (0f070h),a		;38fc	32 70 f0 	2 p . 
	ret			;38ff	c9 	. 
sub_3900h:
	ld hl,l0080h		;3900	21 80 00 	! . . 
	and 003h		;3903	e6 03 	. . 
	rrca			;3905	0f 	. 
	rrca			;3906	0f 	. 
	rrca			;3907	0f 	. 
	add a,l			;3908	85 	. 
	ld l,a			;3909	6f 	o 
	ret			;390a	c9 	. 
sub_390bh:
	xor a			;390b	af 	. 
	ld (0f0bfh),a		;390c	32 bf f0 	2 . . 
	ld hl,l0000h		;390f	21 00 00 	! . . 
	ld (0f0d3h),hl		;3912	22 d3 f0 	" . . 
	ld (0f0d5h),hl		;3915	22 d5 f0 	" . . 
	ret			;3918	c9 	. 
l3919h:
	xor a			;3919	af 	. 
	call sub_0017h		;391a	cd 17 00 	. . . 
	ld hl,l5b00h		;391d	21 00 5b 	! . [ 
	ld de,l0100h		;3920	11 00 01 	. . . 
	ld bc,02500h		;3923	01 00 25 	. . % 
	ldir		;3926	ed b0 	. . 
	ld hl,08000h		;3928	21 00 80 	! . . 
	ld (hl),000h		;392b	36 00 	6 . 
	call sub_37dah		;392d	cd da 37 	. . 7 
	ld c,(hl)			;3930	4e 	N 
	ld h,c			;3931	61 	a 
	ld a,d			;3932	7a 	z 
	ld (hl),a			;3933	77 	w 
	ld h,c			;3934	61 	a 
	jr nz,l39a7h		;3935	20 70 	  p 
	ld l,h			;3937	6c 	l 
	ld l,c			;3938	69 	i 
	ld l,e			;3939	6b 	k 
	ld (hl),l			;393a	75 	u 
	ld a,(02420h)		;393b	3a 20 24 	:   $ 
	ld a,(0f0bdh)		;393e	3a bd f0 	: . . 
	or a			;3941	b7 	. 
	jp z,l39c3h		;3942	ca c3 39 	. . 9 
	call sub_32cch		;3945	cd cc 32 	. . 2 
	ex de,hl			;3948	eb 	. 
	ld de,l0081h		;3949	11 81 00 	. . . 
	inc hl			;394c	23 	# 
	ld b,008h		;394d	06 08 	. . 
l394fh:
	ld a,(hl)			;394f	7e 	~ 
	cp 020h		;3950	fe 20 	.   
	jr z,l3961h		;3952	28 0d 	( . 
	ld (de),a			;3954	12 	. 
	ld c,a			;3955	4f 	O 
	call sub_436ah		;3956	cd 6a 43 	. j C 
	ld a,(08000h)		;3959	3a 00 80 	: . . 
	inc a			;395c	3c 	< 
	ld (08000h),a		;395d	32 00 80 	2 . . 
	inc de			;3960	13 	. 
l3961h:
	inc hl			;3961	23 	# 
	djnz l394fh		;3962	10 eb 	. . 
	ld a,(hl)			;3964	7e 	~ 
	cp 020h		;3965	fe 20 	.   
	jr z,l398fh		;3967	28 26 	( & 
	ld a,02eh		;3969	3e 2e 	> . 
	ld (de),a			;396b	12 	. 
	ld c,a			;396c	4f 	O 
	call sub_436ah		;396d	cd 6a 43 	. j C 
	inc de			;3970	13 	. 
	ld a,(08000h)		;3971	3a 00 80 	: . . 
	inc a			;3974	3c 	< 
	ld (08000h),a		;3975	32 00 80 	2 . . 
	ld b,003h		;3978	06 03 	. . 
l397ah:
	ld a,(hl)			;397a	7e 	~ 
	cp 020h		;397b	fe 20 	.   
	jr z,l398ch		;397d	28 0d 	( . 
	ld (de),a			;397f	12 	. 
	ld c,a			;3980	4f 	O 
	call sub_436ah		;3981	cd 6a 43 	. j C 
	ld a,(08000h)		;3984	3a 00 80 	: . . 
	inc a			;3987	3c 	< 
	ld (08000h),a		;3988	32 00 80 	2 . . 
	inc de			;398b	13 	. 
l398ch:
	inc hl			;398c	23 	# 
	djnz l397ah		;398d	10 eb 	. . 
l398fh:
	ld a,(08000h)		;398f	3a 00 80 	: . . 
	ld (l0080h),a		;3992	32 80 00 	2 . . 
	call sub_4351h		;3995	cd 51 43 	. Q C 
	cp 061h		;3998	fe 61 	. a 
	jr c,l39a2h		;399a	38 06 	8 . 
	cp 07bh		;399c	fe 7b 	. { 
	jr nc,l39a2h		;399e	30 02 	0 . 
	res 5,a		;39a0	cb af 	. . 
l39a2h:
	cp 01bh		;39a2	fe 1b 	. . 
	jp z,l3cd6h		;39a4	ca d6 3c 	. . < 
l39a7h:
	cp 00dh		;39a7	fe 0d 	. . 
	jp z,l1b98h		;39a9	ca 98 1b 	. . . 
	push af			;39ac	f5 	. 
	ld a,(08000h)		;39ad	3a 00 80 	: . . 
	ld b,a			;39b0	47 	G 
	call sub_41b2h		;39b1	cd b2 41 	. . A 
	pop af			;39b4	f1 	. 
	ld c,a			;39b5	4f 	O 
	call sub_436ah		;39b6	cd 6a 43 	. j C 
	ld (08000h),a		;39b9	32 00 80 	2 . . 
	ld de,08001h		;39bc	11 01 80 	. . . 
	ld l,001h		;39bf	2e 01 	. . 
	jr l39c8h		;39c1	18 05 	. . 
l39c3h:
	ld de,08000h		;39c3	11 00 80 	. . . 
	ld l,000h		;39c6	2e 00 	. . 
l39c8h:
	ld h,01eh		;39c8	26 1e 	& . 
	call sub_4312h		;39ca	cd 12 43 	. . C 
	jp c,l3cd6h		;39cd	da d6 3c 	. . < 
	ld a,l			;39d0	7d 	} 
	ld (l0080h),a		;39d1	32 80 00 	2 . . 
	or a			;39d4	b7 	. 
	jp z,l1b98h		;39d5	ca 98 1b 	. . . 
	ld hl,08000h		;39d8	21 00 80 	! . . 
	ld de,l0081h		;39db	11 81 00 	. . . 
	ld b,000h		;39de	06 00 	. . 
	ld c,a			;39e0	4f 	O 
	ldir		;39e1	ed b0 	. . 
	jp l1b98h		;39e3	c3 98 1b 	. . . 
	ld a,(0ffdbh)		;39e6	3a db ff 	: . . 
	or a			;39e9	b7 	. 
	jr nz,l3a04h		;39ea	20 18 	  . 
	call sub_37dah		;39ec	cd da 37 	. . 7 
	ld d,b			;39ef	50 	P 
	ld l,h			;39f0	6c 	l 
	ld l,c			;39f1	69 	i 
	ld l,e			;39f2	6b 	k 
	jr z,$+107		;39f3	28 69 	( i 
	add hl,hl			;39f5	29 	) 
	jr nz,l3a6ch		;39f6	20 74 	  t 
	ld a,c			;39f8	79 	y 
	ld (hl),b			;39f9	70 	p 
	ld (hl),l			;39fa	75 	u 
	jr nz,l3a4dh		;39fb	20 50 	  P 
	ld d,l			;39fd	55 	U 
	ld b,d			;39fe	42 	B 
	ld c,h			;39ff	4c 	L 
	ld c,c			;3a00	49 	I 
	ld b,e			;3a01	43 	C 
	inc h			;3a02	24 	$ 
	ret			;3a03	c9 	. 
l3a04h:
	ld hl,0ffadh		;3a04	21 ad ff 	! . . 
	res 1,(hl)		;3a07	cb 8e 	. . 
	ld hl,0ffaeh		;3a09	21 ae ff 	! . . 
	set 7,(hl)		;3a0c	cb fe 	. . 
	set 1,(hl)		;3a0e	cb ce 	. . 
	ld hl,0fb7eh		;3a10	21 7e fb 	! ~ . 
	ld (hl),000h		;3a13	36 00 	6 . 
	call sub_41beh		;3a15	cd be 41 	. . A 
	ld hl,01f40h		;3a18	21 40 1f 	! @ . 
	call sub_473ah		;3a1b	cd 3a 47 	. : G 
	ld hl,0ffadh		;3a1e	21 ad ff 	! . . 
	bit 4,(hl)		;3a21	cb 66 	. f 
	res 4,(hl)		;3a23	cb a6 	. . 
	jr z,l3a30h		;3a25	28 09 	( . 
	ld de,l3f8ah		;3a27	11 8a 3f 	. . ? 
	call sub_44f3h		;3a2a	cd f3 44 	. . D 
	jp l3adbh		;3a2d	c3 db 3a 	. . : 
l3a30h:
	ld hl,0ffadh		;3a30	21 ad ff 	! . . 
	bit 2,(hl)		;3a33	cb 56 	. V 
	res 2,(hl)		;3a35	cb 96 	. . 
	jr z,l3a42h		;3a37	28 09 	( . 
	ld de,l3f1fh		;3a39	11 1f 3f 	. . ? 
	call sub_44f3h		;3a3c	cd f3 44 	. . D 
	jp l3ad8h		;3a3f	c3 d8 3a 	. . : 
l3a42h:
	ld hl,0fb7fh		;3a42	21 7f fb 	!  . 
	ld (hl),037h		;3a45	36 37 	6 7 
	inc hl			;3a47	23 	# 
	ld a,(0fb7dh)		;3a48	3a 7d fb 	: } . 
	ld (hl),a			;3a4b	77 	w 
	inc hl			;3a4c	23 	# 
l3a4dh:
	push hl			;3a4d	e5 	. 
	call sub_32cch		;3a4e	cd cc 32 	. . 2 
	inc de			;3a51	13 	. 
	ex de,hl			;3a52	eb 	. 
	pop de			;3a53	d1 	. 
	ld bc,l000bh		;3a54	01 0b 00 	. . . 
	ldir		;3a57	ed b0 	. . 
	ld hl,l000eh		;3a59	21 0e 00 	! . . 
	ld (0ffa8h),hl		;3a5c	22 a8 ff 	" . . 
	call sub_425ch		;3a5f	cd 5c 42 	. \ B 
	call sub_422bh		;3a62	cd 2b 42 	. + B 
	call sub_427eh		;3a65	cd 7e 42 	. ~ B 
	halt			;3a68	76 	v 
	ld hl,01f40h		;3a69	21 40 1f 	! @ . 
l3a6ch:
	call sub_473ah		;3a6c	cd 3a 47 	. : G 
	ld a,(0fb80h)		;3a6f	3a 80 fb 	: . . 
	or a			;3a72	b7 	. 
	jr z,l3aa8h		;3a73	28 33 	( 3 
	dec a			;3a75	3d 	= 
	jr z,l3ac3h		;3a76	28 4b 	( K 
	dec a			;3a78	3d 	= 
	jr z,l3a8dh		;3a79	28 12 	( . 
	call sub_37dah		;3a7b	cd da 37 	. . 7 
	jr nz,l3aa0h		;3a7e	20 20 	    
	ld b,d			;3a80	42 	B 
	ld (hl),d			;3a81	72 	r 
	ld h,c			;3a82	61 	a 
	ld l,e			;3a83	6b 	k 
	jr nz,l3af6h		;3a84	20 70 	  p 
	ld l,h			;3a86	6c 	l 
	ld l,c			;3a87	69 	i 
	ld l,e			;3a88	6b 	k 
	ld (hl),l			;3a89	75 	u 
	inc h			;3a8a	24 	$ 
	jr l3ad8h		;3a8b	18 4b 	. K 
l3a8dh:
	call sub_37dah		;3a8d	cd da 37 	. . 7 
	jr nz,$+34		;3a90	20 20 	    
	ld b,h			;3a92	44 	D 
	ld (hl),d			;3a93	72 	r 
	ld (hl),l			;3a94	75 	u 
	ld l,e			;3a95	6b 	k 
	ld h,c			;3a96	61 	a 
	ld (hl),d			;3a97	72 	r 
	ld l,e			;3a98	6b 	k 
	ld h,c			;3a99	61 	a 
	jr nz,l3b0ah		;3a9a	20 6e 	  n 
	ld l,c			;3a9c	69 	i 
	ld h,l			;3a9d	65 	e 
	jr nz,$+105		;3a9e	20 67 	  g 
l3aa0h:
	ld l,a			;3aa0	6f 	o 
	ld (hl),h			;3aa1	74 	t 
	ld l,a			;3aa2	6f 	o 
	ld (hl),a			;3aa3	77 	w 
	ld h,c			;3aa4	61 	a 
	inc h			;3aa5	24 	$ 
	jr l3ad8h		;3aa6	18 30 	. 0 
l3aa8h:
	call sub_37dah		;3aa8	cd da 37 	. . 7 
	jr nz,l3acdh		;3aab	20 20 	    
	ld d,b			;3aad	50 	P 
	ld l,h			;3aae	6c 	l 
	ld l,c			;3aaf	69 	i 
	ld l,e			;3ab0	6b 	k 
	jr nz,$+108		;3ab1	20 6a 	  j 
	ld h,l			;3ab3	65 	e 
	ld (hl),e			;3ab4	73 	s 
	ld (hl),h			;3ab5	74 	t 
	jr nz,$+102		;3ab6	20 64 	  d 
	ld (hl),d			;3ab8	72 	r 
	ld (hl),l			;3ab9	75 	u 
	ld l,e			;3aba	6b 	k 
	ld l,a			;3abb	6f 	o 
	ld (hl),a			;3abc	77 	w 
	ld h,c			;3abd	61 	a 
	ld l,(hl)			;3abe	6e 	n 
	ld a,c			;3abf	79 	y 
	inc h			;3ac0	24 	$ 
	jr l3ad8h		;3ac1	18 15 	. . 
l3ac3h:
	call sub_37dah		;3ac3	cd da 37 	. . 7 
	jr nz,$+34		;3ac6	20 20 	    
	ld b,h			;3ac8	44 	D 
	ld (hl),d			;3ac9	72 	r 
	ld (hl),l			;3aca	75 	u 
	ld l,e			;3acb	6b 	k 
	ld h,c			;3acc	61 	a 
l3acdh:
	ld (hl),d			;3acd	72 	r 
	ld l,e			;3ace	6b 	k 
	ld h,c			;3acf	61 	a 
	jr nz,l3b4ch		;3ad0	20 7a 	  z 
	ld h,c			;3ad2	61 	a 
	ld l,d			;3ad3	6a 	j 
	ld b,b			;3ad4	40 	@ 
	ld (hl),h			;3ad5	74 	t 
	ld h,c			;3ad6	61 	a 
	inc h			;3ad7	24 	$ 
l3ad8h:
	call sub_4209h		;3ad8	cd 09 42 	. . B 
l3adbh:
	ld hl,0ffaeh		;3adb	21 ae ff 	! . . 
	res 1,(hl)		;3ade	cb 8e 	. . 
	out (004h),a		;3ae0	d3 04 	. . 
	ret			;3ae2	c9 	. 
	ld a,(0ffdbh)		;3ae3	3a db ff 	: . . 
	or a			;3ae6	b7 	. 
	jr nz,l3b01h		;3ae7	20 18 	  . 
	call sub_37dah		;3ae9	cd da 37 	. . 7 
	ld d,b			;3aec	50 	P 
	ld l,h			;3aed	6c 	l 
	ld l,c			;3aee	69 	i 
	ld l,e			;3aef	6b 	k 
	jr z,l3b5bh		;3af0	28 69 	( i 
	add hl,hl			;3af2	29 	) 
	jr nz,$+118		;3af3	20 74 	  t 
	ld a,c			;3af5	79 	y 
l3af6h:
	ld (hl),b			;3af6	70 	p 
	ld (hl),l			;3af7	75 	u 
	jr nz,l3b4ah		;3af8	20 50 	  P 
	ld d,l			;3afa	55 	U 
	ld b,d			;3afb	42 	B 
	ld c,h			;3afc	4c 	L 
	ld c,c			;3afd	49 	I 
	ld b,e			;3afe	43 	C 
	inc h			;3aff	24 	$ 
	ret			;3b00	c9 	. 
l3b01h:
	call sub_32c4h		;3b01	cd c4 32 	. . 2 
	jr c,l3b23h		;3b04	38 1d 	8 . 
	call sub_37dah		;3b06	cd da 37 	. . 7 
	ld l,e			;3b09	6b 	k 
l3b0ah:
	ld h,c			;3b0a	61 	a 
	ld (hl),e			;3b0b	73 	s 
	ld l,a			;3b0c	6f 	o 
	ld (hl),a			;3b0d	77 	w 
	ld h,c			;3b0e	61 	a 
	ld a,(hl)			;3b0f	7e 	~ 
	jr nz,l3b3ah		;3b10	20 28 	  ( 
	ld d,h			;3b12	54 	T 
	add hl,hl			;3b13	29 	) 
	jr nz,l3b3ah		;3b14	20 24 	  $ 
	call sub_3736h		;3b16	cd 36 37 	. 6 7 
	cp 01bh		;3b19	fe 1b 	. . 
	jp z,l3cd6h		;3b1b	ca d6 3c 	. . < 
	cp 054h		;3b1e	fe 54 	. T 
	ret nz			;3b20	c0 	. 
	jr l3b47h		;3b21	18 24 	. $ 
l3b23h:
	call sub_37dah		;3b23	cd da 37 	. . 7 
	ld l,e			;3b26	6b 	k 
	ld h,c			;3b27	61 	a 
	ld (hl),e			;3b28	73 	s 
	ld l,a			;3b29	6f 	o 
	ld (hl),a			;3b2a	77 	w 
	ld h,c			;3b2b	61 	a 
	ld a,(hl)			;3b2c	7e 	~ 
	jr nz,$+42		;3b2d	20 28 	  ( 
	ld d,h			;3b2f	54 	T 
	ld b,c			;3b30	41 	A 
	ld c,e			;3b31	4b 	K 
	add hl,hl			;3b32	29 	) 
	jr nz,$+38		;3b33	20 24 	  $ 
	call sub_3736h		;3b35	cd 36 37 	. 6 7 
	cp 054h		;3b38	fe 54 	. T 
l3b3ah:
	ret nz			;3b3a	c0 	. 
	call sub_3736h		;3b3b	cd 36 37 	. 6 7 
	cp 041h		;3b3e	fe 41 	. A 
	ret nz			;3b40	c0 	. 
	call sub_3736h		;3b41	cd 36 37 	. 6 7 
	cp 04bh		;3b44	fe 4b 	. K 
	ret nz			;3b46	c0 	. 
l3b47h:
	ld hl,0ffadh		;3b47	21 ad ff 	! . . 
l3b4ah:
	res 1,(hl)		;3b4a	cb 8e 	. . 
l3b4ch:
	ld hl,0ffaeh		;3b4c	21 ae ff 	! . . 
	set 7,(hl)		;3b4f	cb fe 	. . 
	set 1,(hl)		;3b51	cb ce 	. . 
	ld hl,0fb7eh		;3b53	21 7e fb 	! ~ . 
	ld (hl),000h		;3b56	36 00 	6 . 
	call sub_41beh		;3b58	cd be 41 	. . A 
l3b5bh:
	ld hl,01f40h		;3b5b	21 40 1f 	! @ . 
	call sub_473ah		;3b5e	cd 3a 47 	. : G 
	ld hl,0ffadh		;3b61	21 ad ff 	! . . 
	bit 4,(hl)		;3b64	cb 66 	. f 
	res 4,(hl)		;3b66	cb a6 	. . 
	jr z,l3b73h		;3b68	28 09 	( . 
	ld de,l3f8ah		;3b6a	11 8a 3f 	. . ? 
	call sub_44f3h		;3b6d	cd f3 44 	. . D 
	jp l3bdah		;3b70	c3 da 3b 	. . ; 
l3b73h:
	ld hl,0ffadh		;3b73	21 ad ff 	! . . 
	bit 2,(hl)		;3b76	cb 56 	. V 
	res 2,(hl)		;3b78	cb 96 	. . 
	jr z,l3b89h		;3b7a	28 0d 	( . 
	ld de,l3f1fh		;3b7c	11 1f 3f 	. . ? 
	call sub_44f3h		;3b7f	cd f3 44 	. . D 
	ld c,030h		;3b82	0e 30 	. 0 
	call sub_436ah		;3b84	cd 6a 43 	. j C 
	jr l3bd7h		;3b87	18 4e 	. N 
l3b89h:
	call sub_32c4h		;3b89	cd c4 32 	. . 2 
l3b8ch:
	inc de			;3b8c	13 	. 
	push de			;3b8d	d5 	. 
	call sub_379ah		;3b8e	cd 9a 37 	. . 7 
	ex de,hl			;3b91	eb 	. 
	call l3832h		;3b92	cd 32 38 	. 2 8 
	call sub_3769h		;3b95	cd 69 37 	. i 7 
	ld hl,0fb7fh		;3b98	21 7f fb 	!  . 
	ld (hl),035h		;3b9b	36 35 	6 5 
	inc hl			;3b9d	23 	# 
	ld a,(0ffdbh)		;3b9e	3a db ff 	: . . 
	ld (hl),a			;3ba1	77 	w 
	inc hl			;3ba2	23 	# 
	ex de,hl			;3ba3	eb 	. 
	pop hl			;3ba4	e1 	. 
	ld bc,l000bh		;3ba5	01 0b 00 	. . . 
	ldir		;3ba8	ed b0 	. . 
	ld hl,l000eh		;3baa	21 0e 00 	! . . 
	ld (0ffa8h),hl		;3bad	22 a8 ff 	" . . 
	call sub_425ch		;3bb0	cd 5c 42 	. \ B 
	call sub_422bh		;3bb3	cd 2b 42 	. + B 
	call sub_427eh		;3bb6	cd 7e 42 	. ~ B 
	halt			;3bb9	76 	v 
	ld hl,01f40h		;3bba	21 40 1f 	! @ . 
	call sub_473ah		;3bbd	cd 3a 47 	. : G 
	call sub_37dah		;3bc0	cd da 37 	. . 7 
	jr nz,$+117		;3bc3	20 73 	  s 
	ld l,e			;3bc5	6b 	k 
	ld h,c			;3bc6	61 	a 
	ld (hl),e			;3bc7	73 	s 
	ld l,a			;3bc8	6f 	o 
	ld (hl),a			;3bc9	77 	w 
	ld h,c			;3bca	61 	a 
	ld l,(hl)			;3bcb	6e 	n 
	ld a,c			;3bcc	79 	y 
	inc h			;3bcd	24 	$ 
	call sub_3314h		;3bce	cd 14 33 	. . 3 
	jp c,l3b8ch		;3bd1	da 8c 3b 	. . ; 
	jp l3e36h		;3bd4	c3 36 3e 	. 6 > 
l3bd7h:
	call sub_4209h		;3bd7	cd 09 42 	. . B 
l3bdah:
	ld hl,0ffaeh		;3bda	21 ae ff 	! . . 
	res 1,(hl)		;3bdd	cb 8e 	. . 
	out (004h),a		;3bdf	d3 04 	. . 
	ret			;3be1	c9 	. 
	ld a,(0ffdbh)		;3be2	3a db ff 	: . . 
	or a			;3be5	b7 	. 
	jr nz,l3c00h		;3be6	20 18 	  . 
	call sub_37dah		;3be8	cd da 37 	. . 7 
	ld d,b			;3beb	50 	P 
	ld l,h			;3bec	6c 	l 
	ld l,c			;3bed	69 	i 
	ld l,e			;3bee	6b 	k 
	jr z,$+107		;3bef	28 69 	( i 
	add hl,hl			;3bf1	29 	) 
	jr nz,l3c68h		;3bf2	20 74 	  t 
	ld a,c			;3bf4	79 	y 
	ld (hl),b			;3bf5	70 	p 
	ld (hl),l			;3bf6	75 	u 
	jr nz,l3c49h		;3bf7	20 50 	  P 
	ld d,l			;3bf9	55 	U 
	ld b,d			;3bfa	42 	B 
	ld c,h			;3bfb	4c 	L 
	ld c,c			;3bfc	49 	I 
	ld b,e			;3bfd	43 	C 
	inc h			;3bfe	24 	$ 
	ret			;3bff	c9 	. 
l3c00h:
	call sub_37dah		;3c00	cd da 37 	. . 7 
	ld c,(hl)			;3c03	4e 	N 
	ld l,a			;3c04	6f 	o 
	ld (hl),a			;3c05	77 	w 
	ld h,c			;3c06	61 	a 
	jr nz,$+112		;3c07	20 6e 	  n 
	ld h,c			;3c09	61 	a 
	ld a,d			;3c0a	7a 	z 
	ld (hl),a			;3c0b	77 	w 
	ld h,c			;3c0c	61 	a 
	ld a,(02420h)		;3c0d	3a 20 24 	:   $ 
	call sub_42a1h		;3c10	cd a1 42 	. . B 
	jr nc,l3c26h		;3c13	30 11 	0 . 
	call sub_37dah		;3c15	cd da 37 	. . 7 
	jr nz,l3c3ah		;3c18	20 20 	    
	jr nz,$+92		;3c1a	20 5a 	  Z 
	ld a,h			;3c1c	7c 	| 
	ld h,c			;3c1d	61 	a 
	jr nz,l3c8eh		;3c1e	20 6e 	  n 
	ld h,c			;3c20	61 	a 
	ld a,d			;3c21	7a 	z 
	ld (hl),a			;3c22	77 	w 
	ld h,c			;3c23	61 	a 
	inc h			;3c24	24 	$ 
	ret			;3c25	c9 	. 
l3c26h:
	ld hl,0ffadh		;3c26	21 ad ff 	! . . 
	res 1,(hl)		;3c29	cb 8e 	. . 
	ld hl,0ffaeh		;3c2b	21 ae ff 	! . . 
	set 7,(hl)		;3c2e	cb fe 	. . 
	set 1,(hl)		;3c30	cb ce 	. . 
	ld hl,0fb7eh		;3c32	21 7e fb 	! ~ . 
	ld (hl),000h		;3c35	36 00 	6 . 
	call sub_41beh		;3c37	cd be 41 	. . A 
l3c3ah:
	ld hl,01f40h		;3c3a	21 40 1f 	! @ . 
	call sub_473ah		;3c3d	cd 3a 47 	. : G 
	ld hl,0ffadh		;3c40	21 ad ff 	! . . 
	bit 4,(hl)		;3c43	cb 66 	. f 
	res 4,(hl)		;3c45	cb a6 	. . 
	jr z,l3c52h		;3c47	28 09 	( . 
l3c49h:
	ld de,l3f8ah		;3c49	11 8a 3f 	. . ? 
	call sub_44f3h		;3c4c	cd f3 44 	. . D 
	jp l3ccdh		;3c4f	c3 cd 3c 	. . < 
l3c52h:
	ld hl,0ffadh		;3c52	21 ad ff 	! . . 
	bit 2,(hl)		;3c55	cb 56 	. V 
	res 2,(hl)		;3c57	cb 96 	. . 
	jr z,l3c63h		;3c59	28 08 	( . 
	ld de,l3f1fh		;3c5b	11 1f 3f 	. . ? 
	call sub_44f3h		;3c5e	cd f3 44 	. . D 
	jr l3ccah		;3c61	18 67 	. g 
l3c63h:
	ld hl,0fb7fh		;3c63	21 7f fb 	!  . 
	ld (hl),036h		;3c66	36 36 	6 6 
l3c68h:
	inc hl			;3c68	23 	# 
	ld a,(0fb7dh)		;3c69	3a 7d fb 	: } . 
	ld (hl),a			;3c6c	77 	w 
	inc hl			;3c6d	23 	# 
	push hl			;3c6e	e5 	. 
	call sub_32cch		;3c6f	cd cc 32 	. . 2 
	inc de			;3c72	13 	. 
	ex de,hl			;3c73	eb 	. 
	pop de			;3c74	d1 	. 
	ld bc,l000bh		;3c75	01 0b 00 	. . . 
	ldir		;3c78	ed b0 	. . 
	ld hl,08100h		;3c7a	21 00 81 	! . . 
	ld de,0fb8ch		;3c7d	11 8c fb 	. . . 
	ld bc,l000bh		;3c80	01 0b 00 	. . . 
	ldir		;3c83	ed b0 	. . 
	ld hl,sub_0017h+2		;3c85	21 19 00 	! . . 
	ld (0ffa8h),hl		;3c88	22 a8 ff 	" . . 
	call sub_425ch		;3c8b	cd 5c 42 	. \ B 
l3c8eh:
	call sub_422bh		;3c8e	cd 2b 42 	. + B 
	call sub_427eh		;3c91	cd 7e 42 	. ~ B 
	halt			;3c94	76 	v 
	ld hl,01f40h		;3c95	21 40 1f 	! @ . 
	call sub_473ah		;3c98	cd 3a 47 	. : G 
	ld a,(0fb80h)		;3c9b	3a 80 fb 	: . . 
	or a			;3c9e	b7 	. 
	jp z,l3e36h		;3c9f	ca 36 3e 	. 6 > 
	dec a			;3ca2	3d 	= 
	jr z,l3cb7h		;3ca3	28 12 	( . 
	call sub_37dah		;3ca5	cd da 37 	. . 7 
	jr nz,l3ccah		;3ca8	20 20 	    
	ld b,d			;3caa	42 	B 
	ld (hl),d			;3cab	72 	r 
	ld h,c			;3cac	61 	a 
	ld l,e			;3cad	6b 	k 
	jr nz,$+114		;3cae	20 70 	  p 
	ld l,h			;3cb0	6c 	l 
	ld l,c			;3cb1	69 	i 
	ld l,e			;3cb2	6b 	k 
	ld (hl),l			;3cb3	75 	u 
	inc h			;3cb4	24 	$ 
	jr l3ccah		;3cb5	18 13 	. . 
l3cb7h:
	call sub_37dah		;3cb7	cd da 37 	. . 7 
	jr nz,l3cdch		;3cba	20 20 	    
	ld d,b			;3cbc	50 	P 
	ld l,h			;3cbd	6c 	l 
	ld l,c			;3cbe	69 	i 
	ld l,e			;3cbf	6b 	k 
	jr nz,$+107		;3cc0	20 69 	  i 
	ld (hl),e			;3cc2	73 	s 
	ld (hl),h			;3cc3	74 	t 
	ld l,(hl)			;3cc4	6e 	n 
	ld l,c			;3cc5	69 	i 
	ld h,l			;3cc6	65 	e 
	ld l,d			;3cc7	6a 	j 
	ld h,l			;3cc8	65 	e 
	inc h			;3cc9	24 	$ 
l3ccah:
	call sub_4209h		;3cca	cd 09 42 	. . B 
l3ccdh:
	ld hl,0ffaeh		;3ccd	21 ae ff 	! . . 
	res 1,(hl)		;3cd0	cb 8e 	. . 
	out (004h),a		;3cd2	d3 04 	. . 
	ret			;3cd4	c9 	. 
l3cd5h:
	pop bc			;3cd5	c1 	. 
l3cd6h:
	call sub_37dah		;3cd6	cd da 37 	. . 7 
	dec c			;3cd9	0d 	. 
	dec de			;3cda	1b 	. 
	ld c,e			;3cdb	4b 	K 
l3cdch:
	inc h			;3cdc	24 	$ 
	ret			;3cdd	c9 	. 
	ld hl,0ffaeh		;3cde	21 ae ff 	! . . 
	set 1,(hl)		;3ce1	cb ce 	. . 
	call sub_37dah		;3ce3	cd da 37 	. . 7 
	ld c,(hl)			;3ce6	4e 	N 
	ld h,c			;3ce7	61 	a 
	ld (hl),b			;3ce8	70 	p 
	ld b,b			;3ce9	40 	@ 
	ld h,h			;3cea	64 	d 
	jr nz,l3d2eh		;3ceb	20 41 	  A 
	inc h			;3ced	24 	$ 
	ld hl,0ffadh		;3cee	21 ad ff 	! . . 
	res 1,(hl)		;3cf1	cb 8e 	. . 
	ld hl,0ffaeh		;3cf3	21 ae ff 	! . . 
	set 7,(hl)		;3cf6	cb fe 	. . 
	ld hl,0fb7eh		;3cf8	21 7e fb 	! ~ . 
	ld (hl),000h		;3cfb	36 00 	6 . 
	call sub_41beh		;3cfd	cd be 41 	. . A 
	ld hl,01f40h		;3d00	21 40 1f 	! @ . 
	call sub_473ah		;3d03	cd 3a 47 	. : G 
	ld hl,0ffadh		;3d06	21 ad ff 	! . . 
	bit 4,(hl)		;3d09	cb 66 	. f 
	res 4,(hl)		;3d0b	cb a6 	. . 
	jr z,l3d18h		;3d0d	28 09 	( . 
	ld de,l3f8ah		;3d0f	11 8a 3f 	. . ? 
	call sub_44f3h		;3d12	cd f3 44 	. . D 
	jp l3ddbh		;3d15	c3 db 3d 	. . = 
l3d18h:
	ld hl,0ffadh		;3d18	21 ad ff 	! . . 
	bit 2,(hl)		;3d1b	cb 56 	. V 
	res 2,(hl)		;3d1d	cb 96 	. . 
	jr z,l3d2ah		;3d1f	28 09 	( . 
	ld de,l3f1fh		;3d21	11 1f 3f 	. . ? 
	call sub_44f3h		;3d24	cd f3 44 	. . D 
	jp l3dd8h		;3d27	c3 d8 3d 	. . = 
l3d2ah:
	call sub_32c4h		;3d2a	cd c4 32 	. . 2 
l3d2dh:
	inc de			;3d2d	13 	. 
l3d2eh:
	ld (0ffdch),de		;3d2e	ed 53 dc ff 	. S . . 
	call sub_379ah		;3d32	cd 9a 37 	. . 7 
	ex de,hl			;3d35	eb 	. 
	ld hl,0fb7fh		;3d36	21 7f fb 	!  . 
	ld (hl),034h		;3d39	36 34 	6 4 
	inc hl			;3d3b	23 	# 
	ld a,(0fb7dh)		;3d3c	3a 7d fb 	: } . 
	ld (hl),a			;3d3f	77 	w 
	inc hl			;3d40	23 	# 
	ex de,hl			;3d41	eb 	. 
	ld hl,(0ffdch)		;3d42	2a dc ff 	* . . 
	ld bc,l000bh		;3d45	01 0b 00 	. . . 
	ldir		;3d48	ed b0 	. . 
	ld a,(0ffdbh)		;3d4a	3a db ff 	: . . 
	ld (de),a			;3d4d	12 	. 
	ld hl,l000eh+1		;3d4e	21 0f 00 	! . . 
	ld (0ffa8h),hl		;3d51	22 a8 ff 	" . . 
	call sub_425ch		;3d54	cd 5c 42 	. \ B 
	call sub_422bh		;3d57	cd 2b 42 	. + B 
	call sub_427eh		;3d5a	cd 7e 42 	. ~ B 
l3d5dh:
	halt			;3d5d	76 	v 
	ld a,(0fb7fh)		;3d5e	3a 7f fb 	:  . 
	cp 034h		;3d61	fe 34 	. 4 
	jr nz,l3d5dh		;3d63	20 f8 	  . 
	ld a,(0fb80h)		;3d65	3a 80 fb 	: . . 
	or a			;3d68	b7 	. 
	jr nz,l3d95h		;3d69	20 2a 	  * 
	ld c,01bh		;3d6b	0e 1b 	. . 
	call sub_436ah		;3d6d	cd 6a 43 	. j C 
	ld c,041h		;3d70	0e 41 	. A 
	call sub_436ah		;3d72	cd 6a 43 	. j C 
	ld b,00ch		;3d75	06 0c 	. . 
l3d77h:
	ld c,01bh		;3d77	0e 1b 	. . 
	call sub_436ah		;3d79	cd 6a 43 	. j C 
	ld c,043h		;3d7c	0e 43 	. C 
	call sub_436ah		;3d7e	cd 6a 43 	. j C 
	djnz l3d77h		;3d81	10 f4 	. . 
	call sub_37dah		;3d83	cd da 37 	. . 7 
	jr nz,l3da8h		;3d86	20 20 	    
	ld (hl),e			;3d88	73 	s 
	ld l,e			;3d89	6b 	k 
	ld l,a			;3d8a	6f 	o 
	ld (hl),b			;3d8b	70 	p 
	ld l,c			;3d8c	69 	i 
	ld l,a			;3d8d	6f 	o 
	ld (hl),a			;3d8e	77 	w 
	ld h,c			;3d8f	61 	a 
	ld l,(hl)			;3d90	6e 	n 
	ld a,c			;3d91	79 	y 
	inc h			;3d92	24 	$ 
	jr l3daah		;3d93	18 15 	. . 
l3d95h:
	ld hl,(0ffdch)		;3d95	2a dc ff 	* . . 
	call l3832h		;3d98	cd 32 38 	. 2 8 
	call sub_37dah		;3d9b	cd da 37 	. . 7 
	jr nz,$+100		;3d9e	20 62 	  b 
	ld (hl),d			;3da0	72 	r 
	ld h,c			;3da1	61 	a 
	ld l,e			;3da2	6b 	k 
	jr nz,$+114		;3da3	20 70 	  p 
	ld l,h			;3da5	6c 	l 
	ld l,c			;3da6	69 	i 
	ld l,e			;3da7	6b 	k 
l3da8h:
	ld (hl),l			;3da8	75 	u 
	inc h			;3da9	24 	$ 
l3daah:
	ld hl,01f40h		;3daa	21 40 1f 	! @ . 
	call sub_473ah		;3dad	cd 3a 47 	. : G 
	call sub_3314h		;3db0	cd 14 33 	. . 3 
	jp c,l3d2dh		;3db3	da 2d 3d 	. - = 
	ld hl,01f40h		;3db6	21 40 1f 	! @ . 
	call sub_473ah		;3db9	cd 3a 47 	. : G 
	call sub_4209h		;3dbc	cd 09 42 	. . B 
	ld hl,0ffaeh		;3dbf	21 ae ff 	! . . 
	set 1,(hl)		;3dc2	cb ce 	. . 
	call sub_41eeh		;3dc4	cd ee 41 	. . A 
	ld hl,0ffadh		;3dc7	21 ad ff 	! . . 
	bit 2,(hl)		;3dca	cb 56 	. V 
	res 2,(hl)		;3dcc	cb 96 	. . 
	jr z,l3ddbh		;3dce	28 0b 	( . 
	ld de,l3f53h		;3dd0	11 53 3f 	. S ? 
	call sub_44f3h		;3dd3	cd f3 44 	. . D 
	jr l3ddbh		;3dd6	18 03 	. . 
l3dd8h:
	call sub_4209h		;3dd8	cd 09 42 	. . B 
l3ddbh:
	out (004h),a		;3ddb	d3 04 	. . 
	call sub_3748h		;3ddd	cd 48 37 	. H 7 
	ld hl,0ffaeh		;3de0	21 ae ff 	! . . 
	res 1,(hl)		;3de3	cb 8e 	. . 
	jp l2690h		;3de5	c3 90 26 	. . & 
l3de8h:
	inc sp			;3de8	33 	3 
	inc sp			;3de9	33 	3 
	call sub_37dah		;3dea	cd da 37 	. . 7 
	ld l,c			;3ded	69 	i 
	ld h,l			;3dee	65 	e 
	ld a,(hl)			;3def	7e 	~ 
	inc h			;3df0	24 	$ 
	call sub_43cch		;3df1	cd cc 43 	. . C 
	ret c			;3df4	d8 	. 
	ld a,e			;3df5	7b 	{ 
	ld (0ffdbh),a		;3df6	32 db ff 	2 . . 
	ld hl,0ffadh		;3df9	21 ad ff 	! . . 
	res 1,(hl)		;3dfc	cb 8e 	. . 
	ld hl,0ffaeh		;3dfe	21 ae ff 	! . . 
	set 7,(hl)		;3e01	cb fe 	. . 
	set 1,(hl)		;3e03	cb ce 	. . 
	ld hl,0fb7eh		;3e05	21 7e fb 	! ~ . 
	ld (hl),000h		;3e08	36 00 	6 . 
	call sub_41beh		;3e0a	cd be 41 	. . A 
	ld hl,01f40h		;3e0d	21 40 1f 	! @ . 
	call sub_473ah		;3e10	cd 3a 47 	. : G 
	ld hl,0ffadh		;3e13	21 ad ff 	! . . 
	bit 4,(hl)		;3e16	cb 66 	. f 
	res 4,(hl)		;3e18	cb a6 	. . 
	jr z,l3e25h		;3e1a	28 09 	( . 
	ld de,l3f8ah		;3e1c	11 8a 3f 	. . ? 
	call sub_44f3h		;3e1f	cd f3 44 	. . D 
	jp l3eb2h		;3e22	c3 b2 3e 	. . > 
l3e25h:
	ld hl,0ffadh		;3e25	21 ad ff 	! . . 
	bit 2,(hl)		;3e28	cb 56 	. V 
	res 2,(hl)		;3e2a	cb 96 	. . 
	jr z,l3e36h		;3e2c	28 08 	( . 
	ld de,l3f1fh		;3e2e	11 1f 3f 	. . ? 
	call sub_44f3h		;3e31	cd f3 44 	. . D 
	jr l3eafh		;3e34	18 79 	. y 
l3e36h:
	ld hl,0fb7eh		;3e36	21 7e fb 	! ~ . 
	ld (hl),000h		;3e39	36 00 	6 . 
	inc hl			;3e3b	23 	# 
	ld (hl),031h		;3e3c	36 31 	6 1 
	inc hl			;3e3e	23 	# 
	ld a,(0ffdbh)		;3e3f	3a db ff 	: . . 
	ld (hl),a			;3e42	77 	w 
	ld hl,l0002h+1		;3e43	21 03 00 	! . . 
	ld (0ffa8h),hl		;3e46	22 a8 ff 	" . . 
	ld hl,0ffadh		;3e49	21 ad ff 	! . . 
	set 5,(hl)		;3e4c	cb ee 	. . 
	call sub_425ch		;3e4e	cd 5c 42 	. \ B 
	call sub_422bh		;3e51	cd 2b 42 	. + B 
	call sub_427eh		;3e54	cd 7e 42 	. ~ B 
	ld hl,0db00h		;3e57	21 00 db 	! . . 
	ld (0ffa6h),hl		;3e5a	22 a6 ff 	" . . 
l3e5dh:
	halt			;3e5d	76 	v 
	ld hl,(0ffabh)		;3e5e	2a ab ff 	* . . 
	ld bc,0fb80h		;3e61	01 80 fb 	. . . 
	or a			;3e64	b7 	. 
	sbc hl,bc		;3e65	ed 42 	. B 
	ld b,h			;3e67	44 	D 
	ld c,l			;3e68	4d 	M 
	ld de,(0ffa6h)		;3e69	ed 5b a6 ff 	. [ . . 
	ld hl,0fb80h		;3e6d	21 80 fb 	! . . 
	ldir		;3e70	ed b0 	. . 
	ld (0ffa6h),de		;3e72	ed 53 a6 ff 	. S . . 
	dec hl			;3e76	2b 	+ 
	ld a,0ffh		;3e77	3e ff 	> . 
	cp (hl)			;3e79	be 	. 
	jr nz,l3e5dh		;3e7a	20 e1 	  . 
	halt			;3e7c	76 	v 
	ld hl,0fb80h		;3e7d	21 80 fb 	! . . 
	call sub_30e2h		;3e80	cd e2 30 	. . 0 
	ld hl,01f40h		;3e83	21 40 1f 	! @ . 
	call sub_473ah		;3e86	cd 3a 47 	. : G 
	call sub_4209h		;3e89	cd 09 42 	. . B 
	ld hl,0ffaeh		;3e8c	21 ae ff 	! . . 
	set 1,(hl)		;3e8f	cb ce 	. . 
	call sub_41eeh		;3e91	cd ee 41 	. . A 
	ld hl,0ffadh		;3e94	21 ad ff 	! . . 
	bit 2,(hl)		;3e97	cb 56 	. V 
	res 2,(hl)		;3e99	cb 96 	. . 
	jr z,l3ea5h		;3e9b	28 08 	( . 
	ld de,l3f53h		;3e9d	11 53 3f 	. S ? 
	call sub_44f3h		;3ea0	cd f3 44 	. . D 
	jr l3eb2h		;3ea3	18 0d 	. . 
l3ea5h:
	out (004h),a		;3ea5	d3 04 	. . 
	ld hl,0ffaeh		;3ea7	21 ae ff 	! . . 
	res 1,(hl)		;3eaa	cb 8e 	. . 
	jp l2690h		;3eac	c3 90 26 	. . & 
l3eafh:
	call sub_4209h		;3eaf	cd 09 42 	. . B 
l3eb2h:
	out (004h),a		;3eb2	d3 04 	. . 
	call sub_3748h		;3eb4	cd 48 37 	. H 7 
	ld hl,0ffaeh		;3eb7	21 ae ff 	! . . 
	res 1,(hl)		;3eba	cb 8e 	. . 
	jp l2690h		;3ebc	c3 90 26 	. . & 
	call sub_37dah		;3ebf	cd da 37 	. . 7 
	ld c,e			;3ec2	4b 	K 
	ld l,a			;3ec3	6f 	o 
	ld l,l			;3ec4	6d 	m 
	ld (hl),l			;3ec5	75 	u 
	ld l,(hl)			;3ec6	6e 	n 
	ld l,c			;3ec7	69 	i 
	ld l,e			;3ec8	6b 	k 
	ld h,c			;3ec9	61 	a 
	ld (hl),h			;3eca	74 	t 
	jr nz,l3f07h		;3ecb	20 3a 	  : 
	jr nz,$+38		;3ecd	20 24 	  $ 
	xor a			;3ecf	af 	. 
	ld hl,08000h		;3ed0	21 00 80 	! . . 
	ld (hl),a			;3ed3	77 	w 
	inc hl			;3ed4	23 	# 
	ld (hl),009h		;3ed5	36 09 	6 . 
	inc hl			;3ed7	23 	# 
	ld a,(0fb7dh)		;3ed8	3a 7d fb 	: } . 
	add a,030h		;3edb	c6 30 	. 0 
	ld (hl),a			;3edd	77 	w 
	ld h,03ah		;3ede	26 3a 	& : 
	ld de,08004h		;3ee0	11 04 80 	. . . 
	call sub_4310h		;3ee3	cd 10 43 	. . C 
	jp c,l3cd6h		;3ee6	da d6 3c 	. . < 
	ld a,l			;3ee9	7d 	} 
	ld (08003h),a		;3eea	32 03 80 	2 . . 
	call sub_40f2h		;3eed	cd f2 40 	. . @ 
	jr nc,l3efah		;3ef0	30 08 	0 . 
	ld de,l3f8ah		;3ef2	11 8a 3f 	. . ? 
	call sub_44f3h		;3ef5	cd f3 44 	. . D 
	jr l3f17h		;3ef8	18 1d 	. . 
l3efah:
	ld hl,08000h		;3efa	21 00 80 	! . . 
	ld de,0fb7eh		;3efd	11 7e fb 	. ~ . 
	ld a,(08003h)		;3f00	3a 03 80 	: . . 
	add a,004h		;3f03	c6 04 	. . 
	ld b,000h		;3f05	06 00 	. . 
l3f07h:
	ld c,a			;3f07	4f 	O 
	ld (0ffa8h),bc		;3f08	ed 43 a8 ff 	. C . . 
	ldir		;3f0c	ed b0 	. . 
	call sub_425ch		;3f0e	cd 5c 42 	. \ B 
	call sub_422bh		;3f11	cd 2b 42 	. + B 
	call sub_427eh		;3f14	cd 7e 42 	. ~ B 
l3f17h:
	out (004h),a		;3f17	d3 04 	. . 
	call sub_3748h		;3f19	cd 48 37 	. H 7 
	jp l2690h		;3f1c	c3 90 26 	. . & 
l3f1fh:
	ld a,(bc)			;3f1f	0a 	. 
	dec c			;3f20	0d 	. 
	ld b,d			;3f21	42 	B 
	ld (hl),d			;3f22	72 	r 
	ld h,c			;3f23	61 	a 
	ld l,e			;3f24	6b 	k 
	jr nz,l3f97h		;3f25	20 70 	  p 
	ld l,a			;3f27	6f 	o 
	ld (hl),h			;3f28	74 	t 
	ld (hl),a			;3f29	77 	w 
	ld l,c			;3f2a	69 	i 
	ld h,l			;3f2b	65 	e 
	ld (hl),d			;3f2c	72 	r 
	ld h,h			;3f2d	64 	d 
	ld a,d			;3f2e	7a 	z 
	ld h,l			;3f2f	65 	e 
	ld l,(hl)			;3f30	6e 	n 
	ld l,c			;3f31	69 	i 
	ld h,c			;3f32	61 	a 
	jr nz,l3fafh		;3f33	20 7a 	  z 
	ld h,l			;3f35	65 	e 
	jr nz,l3fabh		;3f36	20 73 	  s 
	ld (hl),h			;3f38	74 	t 
	ld h,c			;3f39	61 	a 
	ld l,(hl)			;3f3a	6e 	n 
	ld l,a			;3f3b	6f 	o 
	ld (hl),a			;3f3c	77 	w 
	ld l,c			;3f3d	69 	i 
	ld (hl),e			;3f3e	73 	s 
	ld l,e			;3f3f	6b 	k 
	ld h,c			;3f40	61 	a 
	jr nz,$+112		;3f41	20 6e 	  n 
	ld h,c			;3f43	61 	a 
	ld (hl),l			;3f44	75 	u 
	ld h,e			;3f45	63 	c 
	ld a,d			;3f46	7a 	z 
	ld a,c			;3f47	79 	y 
	ld h,e			;3f48	63 	c 
	ld l,c			;3f49	69 	i 
	ld h,l			;3f4a	65 	e 
	ld l,h			;3f4b	6c 	l 
	ld (hl),e			;3f4c	73 	s 
	ld l,e			;3f4d	6b 	k 
	ld l,c			;3f4e	69 	i 
	ld h,l			;3f4f	65 	e 
	ld h,a			;3f50	67 	g 
	ld l,a			;3f51	6f 	o 
	inc h			;3f52	24 	$ 
l3f53h:
	ld a,(bc)			;3f53	0a 	. 
	dec c			;3f54	0d 	. 
	dec de			;3f55	1b 	. 
	ld d,b			;3f56	50 	P 
	ld b,d			;3f57	42 	B 
	ld a,h			;3f58	7c 	| 
	ld h,b			;3f59	60 	` 
	ld h,h			;3f5a	64 	d 
	jr nz,l3fd4h		;3f5b	20 77 	  w 
	jr nz,$+118		;3f5d	20 74 	  t 
	ld (hl),d			;3f5f	72 	r 
	ld h,c			;3f60	61 	a 
	ld l,(hl)			;3f61	6e 	n 
	ld (hl),e			;3f62	73 	s 
	ld l,l			;3f63	6d 	m 
	ld l,c			;3f64	69 	i 
	ld (hl),e			;3f65	73 	s 
	ld l,d			;3f66	6a 	j 
	ld l,c			;3f67	69 	i 
	jr nz,l3fe4h		;3f68	20 7a 	  z 
	ld h,l			;3f6a	65 	e 
	jr nz,$+117		;3f6b	20 73 	  s 
	ld (hl),h			;3f6d	74 	t 
	ld h,c			;3f6e	61 	a 
	ld l,(hl)			;3f6f	6e 	n 
	ld l,a			;3f70	6f 	o 
	ld (hl),a			;3f71	77 	w 
	ld l,c			;3f72	69 	i 
	ld (hl),e			;3f73	73 	s 
	ld l,e			;3f74	6b 	k 
	ld l,c			;3f75	69 	i 
	ld h,l			;3f76	65 	e 
	ld l,l			;3f77	6d 	m 
	jr nz,l3fe8h		;3f78	20 6e 	  n 
	ld h,c			;3f7a	61 	a 
	ld (hl),l			;3f7b	75 	u 
	ld h,e			;3f7c	63 	c 
	ld a,d			;3f7d	7a 	z 
	ld a,c			;3f7e	79 	y 
	ld h,e			;3f7f	63 	c 
	ld l,c			;3f80	69 	i 
	ld h,l			;3f81	65 	e 
	ld l,h			;3f82	6c 	l 
	ld (hl),e			;3f83	73 	s 
	ld l,e			;3f84	6b 	k 
	ld l,c			;3f85	69 	i 
	ld l,l			;3f86	6d 	m 
	dec de			;3f87	1b 	. 
	ld c,a			;3f88	4f 	O 
	inc h			;3f89	24 	$ 
l3f8ah:
	dec de			;3f8a	1b 	. 
	ld d,b			;3f8b	50 	P 
	jr nz,$+34		;3f8c	20 20 	    
	ld c,h			;3f8e	4c 	L 
	ld l,c			;3f8f	69 	i 
	ld l,(hl)			;3f90	6e 	n 
	ld l,c			;3f91	69 	i 
	ld h,c			;3f92	61 	a 
	jr nz,l400fh		;3f93	20 7a 	  z 
	ld h,c			;3f95	61 	a 
	ld l,d			;3f96	6a 	j 
l3f97h:
	ld b,b			;3f97	40 	@ 
	ld (hl),h			;3f98	74 	t 
	ld h,c			;3f99	61 	a 
	jr nz,l3fbdh		;3f9a	20 21 	  ! 
	ld hl,l1b21h		;3f9c	21 21 1b 	! ! . 
	ld c,a			;3f9f	4f 	O 
	inc h			;3fa0	24 	$ 
l3fa1h:
	inc sp			;3fa1	33 	3 
	inc sp			;3fa2	33 	3 
	call sub_37dah		;3fa3	cd da 37 	. . 7 
	ld l,c			;3fa6	69 	i 
	ld h,l			;3fa7	65 	e 
	ld a,(hl)			;3fa8	7e 	~ 
	jr nz,l3fcfh		;3fa9	20 24 	  $ 
l3fabh:
	xor a			;3fab	af 	. 
	ld (0fb7eh),a		;3fac	32 7e fb 	2 ~ . 
l3fafh:
	ld hl,0ffadh		;3faf	21 ad ff 	! . . 
	res 1,(hl)		;3fb2	cb 8e 	. . 
	call sub_41beh		;3fb4	cd be 41 	. . A 
	ld hl,01f40h		;3fb7	21 40 1f 	! @ . 
	call sub_473ah		;3fba	cd 3a 47 	. : G 
l3fbdh:
	ld hl,0ffadh		;3fbd	21 ad ff 	! . . 
	bit 4,(hl)		;3fc0	cb 66 	. f 
	res 4,(hl)		;3fc2	cb a6 	. . 
	jr z,l3fcfh		;3fc4	28 09 	( . 
	ld de,l3f8ah		;3fc6	11 8a 3f 	. . ? 
	call sub_44f3h		;3fc9	cd f3 44 	. . D 
	jp l4034h		;3fcc	c3 34 40 	. 4 @ 
l3fcfh:
	ld hl,0ffadh		;3fcf	21 ad ff 	! . . 
	bit 2,(hl)		;3fd2	cb 56 	. V 
l3fd4h:
	res 2,(hl)		;3fd4	cb 96 	. . 
	jr z,l3fe1h		;3fd6	28 09 	( . 
	ld de,l3f1fh		;3fd8	11 1f 3f 	. . ? 
	call sub_44f3h		;3fdb	cd f3 44 	. . D 
	jp l4031h		;3fde	c3 31 40 	. 1 @ 
l3fe1h:
	call sub_32c4h		;3fe1	cd c4 32 	. . 2 
l3fe4h:
	call sub_45e0h		;3fe4	cd e0 45 	. . E 
	push de			;3fe7	d5 	. 
l3fe8h:
	ld h,d			;3fe8	62 	b 
	ld l,e			;3fe9	6b 	k 
	call sub_379ah		;3fea	cd 9a 37 	. . 7 
	inc hl			;3fed	23 	# 
	call l3832h		;3fee	cd 32 38 	. 2 8 
	call sub_3769h		;3ff1	cd 69 37 	. i 7 
	pop de			;3ff4	d1 	. 
	call sub_33fah		;3ff5	cd fa 33 	. . 3 
	call sub_403ch		;3ff8	cd 3c 40 	. < @ 
	call sub_37dah		;3ffb	cd da 37 	. . 7 
	jr nz,l4073h		;3ffe	20 73 	  s 
	ld l,e			;4000	6b 	k 
	ld l,a			;4001	6f 	o 
	ld (hl),b			;4002	70 	p 
	ld l,c			;4003	69 	i 
	ld l,a			;4004	6f 	o 
	ld (hl),a			;4005	77 	w 
	ld h,c			;4006	61 	a 
	ld l,(hl)			;4007	6e 	n 
	ld a,c			;4008	79 	y 
	inc h			;4009	24 	$ 
	call sub_3314h		;400a	cd 14 33 	. . 3 
	jr c,l3fe4h		;400d	38 d5 	8 . 
l400fh:
	ld hl,01f40h		;400f	21 40 1f 	! @ . 
	call sub_473ah		;4012	cd 3a 47 	. : G 
	call sub_4209h		;4015	cd 09 42 	. . B 
	ld hl,0ffaeh		;4018	21 ae ff 	! . . 
	set 1,(hl)		;401b	cb ce 	. . 
	call sub_41eeh		;401d	cd ee 41 	. . A 
	ld hl,0ffadh		;4020	21 ad ff 	! . . 
	bit 2,(hl)		;4023	cb 56 	. V 
	res 2,(hl)		;4025	cb 96 	. . 
	jr z,l4034h		;4027	28 0b 	( . 
	ld de,l3f53h		;4029	11 53 3f 	. S ? 
	call sub_44f3h		;402c	cd f3 44 	. . D 
	jr l4034h		;402f	18 03 	. . 
l4031h:
	call sub_4209h		;4031	cd 09 42 	. . B 
l4034h:
	out (004h),a		;4034	d3 04 	. . 
	call sub_3748h		;4036	cd 48 37 	. H 7 
	jp l2690h		;4039	c3 90 26 	. . & 
sub_403ch:
	call sub_425ch		;403c	cd 5c 42 	. \ B 
	call sub_404ch		;403f	cd 4c 40 	. L @ 
	call sub_406ch		;4042	cd 6c 40 	. l @ 
	call sub_40dch		;4045	cd dc 40 	. . @ 
	call sub_427eh		;4048	cd 7e 42 	. ~ B 
	ret			;404b	c9 	. 
sub_404ch:
	ld hl,0fb7fh		;404c	21 7f fb 	!  . 
	ld a,016h		;404f	3e 16 	> . 
	ld (hl),a			;4051	77 	w 
	inc hl			;4052	23 	# 
	ld de,0ff83h		;4053	11 83 ff 	. . . 
	ex de,hl			;4056	eb 	. 
	ld bc,l000bh		;4057	01 0b 00 	. . . 
	ldir		;405a	ed b0 	. . 
	ld hl,l000bh+2		;405c	21 0d 00 	! . . 
	ld (0ffa8h),hl		;405f	22 a8 ff 	" . . 
	call sub_422bh		;4062	cd 2b 42 	. + B 
	ld hl,l59d8h		;4065	21 d8 59 	! . Y 
	call sub_473ah		;4068	cd 3a 47 	. : G 
	ret			;406b	c9 	. 
sub_406ch:
	ld a,015h		;406c	3e 15 	> . 
	ld (0fb7fh),a		;406e	32 7f fb 	2  . 
	ld c,010h		;4071	0e 10 	. . 
l4073h:
	ld hl,0fb80h		;4073	21 80 fb 	! . . 
	ld (0ffd7h),hl		;4076	22 d7 ff 	" . . 
	ld b,008h		;4079	06 08 	. . 
l407bh:
	ld (0ffd9h),bc		;407b	ed 43 d9 ff 	. C . . 
	ld de,(0ffd7h)		;407f	ed 5b d7 ff 	. [ . . 
	call sub_33e5h		;4083	cd e5 33 	. . 3 
	ld de,0ff82h		;4086	11 82 ff 	. . . 
	ld c,014h		;4089	0e 14 	. . 
	call l0005h		;408b	cd 05 00 	. . . 
	or a			;408e	b7 	. 
	jr nz,l40a5h		;408f	20 14 	  . 
	ld hl,(0ffd7h)		;4091	2a d7 ff 	* . . 
	ld de,l0080h		;4094	11 80 00 	. . . 
	add hl,de			;4097	19 	. 
	ld (0ffd7h),hl		;4098	22 d7 ff 	" . . 
	ld bc,(0ffd9h)		;409b	ed 4b d9 ff 	. K . . 
	djnz l407bh		;409f	10 da 	. . 
	ld (0ffd9h),bc		;40a1	ed 43 d9 ff 	. C . . 
l40a5h:
	call sub_40afh		;40a5	cd af 40 	. . @ 
	ld a,(0ffdah)		;40a8	3a da ff 	: . . 
	or a			;40ab	b7 	. 
	jr z,l4073h		;40ac	28 c5 	( . 
	ret			;40ae	c9 	. 
sub_40afh:
	ld a,008h		;40af	3e 08 	> . 
	ld bc,(0ffd9h)		;40b1	ed 4b d9 ff 	. K . . 
	sub b			;40b5	90 	. 
	ret z			;40b6	c8 	. 
	ld h,a			;40b7	67 	g 
	ld l,000h		;40b8	2e 00 	. . 
	srl h		;40ba	cb 3c 	. < 
	rr l		;40bc	cb 1d 	. . 
	ld de,l0002h		;40be	11 02 00 	. . . 
	add hl,de			;40c1	19 	. 
	ld (0ffa8h),hl		;40c2	22 a8 ff 	" . . 
	call sub_422bh		;40c5	cd 2b 42 	. + B 
	ld bc,(0ffd9h)		;40c8	ed 4b d9 ff 	. K . . 
	dec c			;40cc	0d 	. 
	jr nz,l40d7h		;40cd	20 08 	  . 
	ld c,010h		;40cf	0e 10 	. . 
	ld hl,l59d8h		;40d1	21 d8 59 	! . Y 
	call sub_473ah		;40d4	cd 3a 47 	. : G 
l40d7h:
	ld (0ffd9h),bc		;40d7	ed 43 d9 ff 	. C . . 
	ret			;40db	c9 	. 
sub_40dch:
	ld a,010h		;40dc	3e 10 	> . 
	ld (0fb7fh),a		;40de	32 7f fb 	2  . 
	ld hl,l0002h		;40e1	21 02 00 	! . . 
	ld (0ffa8h),hl		;40e4	22 a8 ff 	" . . 
	call sub_422bh		;40e7	cd 2b 42 	. + B 
	ret			;40ea	c9 	. 
sub_40ebh:
	in a,(084h)		;40eb	db 84 	. . 
	ld b,a			;40ed	47 	G 
	in a,(084h)		;40ee	db 84 	. . 
	or b			;40f0	b0 	. 
	ret			;40f1	c9 	. 
sub_40f2h:
	ld hl,l0bb8h		;40f2	21 b8 0b 	! . . 
	call sub_4251h		;40f5	cd 51 42 	. Q B 
l40f8h:
	in a,(098h)		;40f8	db 98 	. . 
	and 002h		;40fa	e6 02 	. . 
	jr nz,l412dh		;40fc	20 2f 	  / 
	ld hl,0ffaeh		;40fe	21 ae ff 	! . . 
	bit 6,(hl)		;4101	cb 76 	. v 
	jr nz,l4123h		;4103	20 1e 	  . 
	set 6,(hl)		;4105	cb f6 	. . 
	call sub_37dah		;4107	cd da 37 	. . 7 
	jr nz,l412ch		;410a	20 20 	    
	dec de			;410c	1b 	. 
	ld d,e			;410d	53 	S 
	jr nz,$+114		;410e	20 70 	  p 
	ld (hl),d			;4110	72 	r 
	ld l,a			;4111	6f 	o 
	ld (hl),e			;4112	73 	s 
	ld a,d			;4113	7a 	z 
	ld b,b			;4114	40 	@ 
	jr nz,$+101		;4115	20 63 	  c 
	ld a,d			;4117	7a 	z 
	ld h,l			;4118	65 	e 
	ld l,e			;4119	6b 	k 
	ld h,c			;411a	61 	a 
	ld a,(hl)			;411b	7e 	~ 
	jr nz,l414ch		;411c	20 2e 	  . 
	ld l,02eh		;411e	2e 2e 	. . 
	dec de			;4120	1b 	. 
	ld d,h			;4121	54 	T 
	inc h			;4122	24 	$ 
l4123h:
	call sub_40ebh		;4123	cd eb 40 	. . @ 
	jr nz,l40f8h		;4126	20 d0 	  . 
	call sub_41a8h		;4128	cd a8 41 	. . A 
	scf			;412b	37 	7 
l412ch:
	ret			;412c	c9 	. 
l412dh:
	out (005h),a		;412d	d3 05 	. . 
	ld c,004h		;412f	0e 04 	. . 
	ld a,(0fb7dh)		;4131	3a 7d fb 	: } . 
	dec a			;4134	3d 	= 
	cp 0ffh		;4135	fe ff 	. . 
	jr z,l4156h		;4137	28 1d 	( . 
	ld e,a			;4139	5f 	_ 
	srl a		;413a	cb 3f 	. ? 
	srl a		;413c	cb 3f 	. ? 
	or a			;413e	b7 	. 
	jr z,l4145h		;413f	28 04 	( . 
	ld a,c			;4141	79 	y 
	or 001h		;4142	f6 01 	. . 
	ld c,a			;4144	4f 	O 
l4145h:
	ld a,e			;4145	7b 	{ 
	and 003h		;4146	e6 03 	. . 
	ld d,010h		;4148	16 10 	. . 
	jr z,l4151h		;414a	28 05 	( . 
l414ch:
	ld b,a			;414c	47 	G 
l414dh:
	rlc d		;414d	cb 02 	. . 
	djnz l414dh		;414f	10 fc 	. . 
l4151h:
	ld a,c			;4151	79 	y 
	or d			;4152	b2 	. 
	ld c,a			;4153	4f 	O 
	jr l4158h		;4154	18 02 	. . 
l4156h:
	ld c,00eh		;4156	0e 0e 	. . 
l4158h:
	ld a,(0fb7eh)		;4158	3a 7e fb 	: ~ . 
	push af			;415b	f5 	. 
	ld hl,0fb7eh		;415c	21 7e fb 	! ~ . 
	ld (hl),c			;415f	71 	q 
	ld de,0fb7fh		;4160	11 7f fb 	.  . 
	ld bc,l00feh		;4163	01 fe 00 	. . . 
	ldir		;4166	ed b0 	. . 
	ld a,005h		;4168	3e 05 	> . 
	out (083h),a		;416a	d3 83 	. . 
	ld a,0e1h		;416c	3e e1 	> . 
	out (083h),a		;416e	d3 83 	. . 
	ld a,005h		;4170	3e 05 	> . 
	out (083h),a		;4172	d3 83 	. . 
	ld a,061h		;4174	3e 61 	> a 
	out (083h),a		;4176	d3 83 	. . 
	ld hl,l00ffh		;4178	21 ff 00 	! . . 
	ld (0ffa8h),hl		;417b	22 a8 ff 	" . . 
	call sub_425ch		;417e	cd 5c 42 	. \ B 
	call sub_423eh		;4181	cd 3e 42 	. > B 
	call sub_427eh		;4184	cd 7e 42 	. ~ B 
	ld a,010h		;4187	3e 10 	> . 
	out (083h),a		;4189	d3 83 	. . 
	in a,(083h)		;418b	db 83 	. . 
	bit 5,a		;418d	cb 6f 	. o 
	jr z,l4199h		;418f	28 08 	( . 
	pop af			;4191	f1 	. 
	ld (0fb7eh),a		;4192	32 7e fb 	2 ~ . 
	call sub_41a8h		;4195	cd a8 41 	. . A 
	ret			;4198	c9 	. 
l4199h:
	pop af			;4199	f1 	. 
	ld (0fb7eh),a		;419a	32 7e fb 	2 ~ . 
	out (004h),a		;419d	d3 04 	. . 
	call sub_4688h		;419f	cd 88 46 	. . F 
	call sub_473ah		;41a2	cd 3a 47 	. : G 
	jp l40f8h		;41a5	c3 f8 40 	. . @ 
sub_41a8h:
	ld hl,0ffaeh		;41a8	21 ae ff 	! . . 
	bit 6,(hl)		;41ab	cb 76 	. v 
	res 6,(hl)		;41ad	cb b6 	. . 
	ret z			;41af	c8 	. 
	ld b,014h		;41b0	06 14 	. . 
sub_41b2h:
	push bc			;41b2	c5 	. 
	call sub_37dah		;41b3	cd da 37 	. . 7 
	ex af,af'			;41b6	08 	. 
	jr nz,l41c1h		;41b7	20 08 	  . 
	inc h			;41b9	24 	$ 
	pop bc			;41ba	c1 	. 
	djnz sub_41b2h		;41bb	10 f5 	. . 
	ret			;41bd	c9 	. 
sub_41beh:
	call sub_40f2h		;41be	cd f2 40 	. . @ 
l41c1h:
	jr nc,l41c9h		;41c1	30 06 	0 . 
	ld hl,0ffadh		;41c3	21 ad ff 	! . . 
	set 4,(hl)		;41c6	cb e6 	. . 
	ret			;41c8	c9 	. 
l41c9h:
	ld a,006h		;41c9	3e 06 	> . 
	ld hl,0ffaeh		;41cb	21 ae ff 	! . . 
	bit 7,(hl)		;41ce	cb 7e 	. ~ 
	res 7,(hl)		;41d0	cb be 	. . 
	jr z,l41d6h		;41d2	28 02 	( . 
	ld a,033h		;41d4	3e 33 	> 3 
l41d6h:
	ld (0fb7fh),a		;41d6	32 7f fb 	2  . 
	ld a,(0fb7dh)		;41d9	3a 7d fb 	: } . 
	ld (0fb80h),a		;41dc	32 80 fb 	2 . . 
	ld hl,l0002h+1		;41df	21 03 00 	! . . 
	ld (0ffa8h),hl		;41e2	22 a8 ff 	" . . 
	call sub_425ch		;41e5	cd 5c 42 	. \ B 
	call sub_423eh		;41e8	cd 3e 42 	. > B 
	call sub_427eh		;41eb	cd 7e 42 	. ~ B 
sub_41eeh:
	ld hl,l0258h		;41ee	21 58 02 	! X . 
	call sub_4251h		;41f1	cd 51 42 	. Q B 
l41f4h:
	call sub_40ebh		;41f4	cd eb 40 	. . @ 
	jr nz,l41ffh		;41f7	20 06 	  . 
	ld hl,0ffadh		;41f9	21 ad ff 	! . . 
	set 2,(hl)		;41fc	cb d6 	. . 
	ret			;41fe	c9 	. 
l41ffh:
	ld hl,0ffadh		;41ff	21 ad ff 	! . . 
	bit 1,(hl)		;4202	cb 4e 	. N 
	jr z,l41f4h		;4204	28 ee 	( . 
	res 1,(hl)		;4206	cb 8e 	. . 
	ret			;4208	c9 	. 
sub_4209h:
	ld a,007h		;4209	3e 07 	> . 
	ld (0fb7fh),a		;420b	32 7f fb 	2  . 
	ld hl,l0002h		;420e	21 02 00 	! . . 
	ld (0ffa8h),hl		;4211	22 a8 ff 	" . . 
	call sub_425ch		;4214	cd 5c 42 	. \ B 
	call sub_423eh		;4217	cd 3e 42 	. > B 
	call sub_427eh		;421a	cd 7e 42 	. ~ B 
	ret			;421d	c9 	. 
	ld a,031h		;421e	3e 31 	> 1 
	out (087h),a		;4220	d3 87 	. . 
	ld a,001h		;4222	3e 01 	> . 
	out (084h),a		;4224	d3 84 	. . 
	ld a,000h		;4226	3e 00 	> . 
	out (084h),a		;4228	d3 84 	. . 
	ret			;422a	c9 	. 
sub_422bh:
	call sub_438bh		;422b	cd 8b 43 	. . C 
l422eh:
	ld a,(0ffaah)		;422e	3a aa ff 	: . . 
	bit 0,a		;4231	cb 47 	. G 
	jr nz,l422eh		;4233	20 f9 	  . 
	di			;4235	f3 	. 
	ld hl,01b58h		;4236	21 58 1b 	! X . 
	call sub_473ah		;4239	cd 3a 47 	. : G 
	ei			;423c	fb 	. 
	ret			;423d	c9 	. 
sub_423eh:
	call sub_438bh		;423e	cd 8b 43 	. . C 
l4241h:
	ld a,(0ffaah)		;4241	3a aa ff 	: . . 
	bit 0,a		;4244	cb 47 	. G 
	jr nz,l4241h		;4246	20 f9 	  . 
	di			;4248	f3 	. 
	ld hl,01388h		;4249	21 88 13 	! . . 
	call sub_473ah		;424c	cd 3a 47 	. : G 
	ei			;424f	fb 	. 
	ret			;4250	c9 	. 
sub_4251h:
	ld a,031h		;4251	3e 31 	> 1 
	out (087h),a		;4253	d3 87 	. . 
	ld a,l			;4255	7d 	} 
	out (084h),a		;4256	d3 84 	. . 
	ld a,h			;4258	7c 	| 
	out (084h),a		;4259	d3 84 	. . 
	ret			;425b	c9 	. 
sub_425ch:
	di			;425c	f3 	. 
	xor a			;425d	af 	. 
	ld (0ffaah),a		;425e	32 aa ff 	2 . . 
	ld a,003h		;4261	3e 03 	> . 
	out (083h),a		;4263	d3 83 	. . 
	ld a,0cch		;4265	3e cc 	> . 
	out (083h),a		;4267	d3 83 	. . 
	ld a,005h		;4269	3e 05 	> . 
	out (083h),a		;426b	d3 83 	. . 
	ld a,063h		;426d	3e 63 	> c 
	out (083h),a		;426f	d3 83 	. . 
	ld a,005h		;4271	3e 05 	> . 
	out (083h),a		;4273	d3 83 	. . 
	ld a,06bh		;4275	3e 6b 	> k 
	out (083h),a		;4277	d3 83 	. . 
	ld a,010h		;4279	3e 10 	> . 
	out (083h),a		;427b	d3 83 	. . 
	ret			;427d	c9 	. 
sub_427eh:
	di			;427e	f3 	. 
	ld a,005h		;427f	3e 05 	> . 
	out (083h),a		;4281	d3 83 	. . 
	ld a,063h		;4283	3e 63 	> c 
	out (083h),a		;4285	d3 83 	. . 
	ld a,005h		;4287	3e 05 	> . 
	out (083h),a		;4289	d3 83 	. . 
	ld a,061h		;428b	3e 61 	> a 
	out (083h),a		;428d	d3 83 	. . 
	ld a,003h		;428f	3e 03 	> . 
	out (083h),a		;4291	d3 83 	. . 
	ld a,0cdh		;4293	3e cd 	> . 
	out (083h),a		;4295	d3 83 	. . 
	ld b,0ffh		;4297	06 ff 	. . 
l4299h:
	djnz l4299h		;4299	10 fe 	. . 
	ld a,010h		;429b	3e 10 	> . 
	out (083h),a		;429d	d3 83 	. . 
	ei			;429f	fb 	. 
	ret			;42a0	c9 	. 
sub_42a1h:
	ld de,08000h		;42a1	11 00 80 	. . . 
	ld h,01eh		;42a4	26 1e 	& . 
	call sub_4310h		;42a6	cd 10 43 	. . C 
	jp c,l3cd5h		;42a9	da d5 3c 	. . < 
	ld a,l			;42ac	7d 	} 
	or a			;42ad	b7 	. 
	jr z,l430eh		;42ae	28 5e 	( ^ 
	ld h,000h		;42b0	26 00 	& . 
	ld de,08000h		;42b2	11 00 80 	. . . 
	add hl,de			;42b5	19 	. 
	ld (hl),000h		;42b6	36 00 	6 . 
	ex de,hl			;42b8	eb 	. 
	ld de,08100h		;42b9	11 00 81 	. . . 
	ld b,008h		;42bc	06 08 	. . 
l42beh:
	ld a,(hl)			;42be	7e 	~ 
	cp 02eh		;42bf	fe 2e 	. . 
	jr z,l42dbh		;42c1	28 18 	( . 
	or a			;42c3	b7 	. 
	jr z,l42dch		;42c4	28 16 	( . 
	cp 02ah		;42c6	fe 2a 	. * 
	jr z,l430eh		;42c8	28 44 	( D 
	cp 03fh		;42ca	fe 3f 	. ? 
	jr z,l430eh		;42cc	28 40 	( @ 
	ld (de),a			;42ce	12 	. 
	inc hl			;42cf	23 	# 
	inc de			;42d0	13 	. 
	dec b			;42d1	05 	. 
	ld a,b			;42d2	78 	x 
	inc a			;42d3	3c 	< 
	jr z,l430eh		;42d4	28 38 	( 8 
	jr l42beh		;42d6	18 e6 	. . 
	inc hl			;42d8	23 	# 
	jr l42e6h		;42d9	18 0b 	. . 
l42dbh:
	inc hl			;42db	23 	# 
l42dch:
	ld a,b			;42dc	78 	x 
	or a			;42dd	b7 	. 
	jr z,l42e6h		;42de	28 06 	( . 
	ld a,020h		;42e0	3e 20 	>   
l42e2h:
	ld (de),a			;42e2	12 	. 
	inc de			;42e3	13 	. 
	djnz l42e2h		;42e4	10 fc 	. . 
l42e6h:
	ld b,003h		;42e6	06 03 	. . 
l42e8h:
	ld a,(hl)			;42e8	7e 	~ 
	and a			;42e9	a7 	. 
	jr z,l4302h		;42ea	28 16 	( . 
	cp 02eh		;42ec	fe 2e 	. . 
	jr z,l430eh		;42ee	28 1e 	( . 
	cp 02ah		;42f0	fe 2a 	. * 
	jr z,l430eh		;42f2	28 1a 	( . 
	cp 03fh		;42f4	fe 3f 	. ? 
	jr z,l430eh		;42f6	28 16 	( . 
	ld (de),a			;42f8	12 	. 
	inc hl			;42f9	23 	# 
	inc de			;42fa	13 	. 
	dec b			;42fb	05 	. 
	ld a,b			;42fc	78 	x 
	inc a			;42fd	3c 	< 
	jr z,l430eh		;42fe	28 0e 	( . 
	jr l42e8h		;4300	18 e6 	. . 
l4302h:
	inc b			;4302	04 	. 
	dec b			;4303	05 	. 
	jr z,l430ch		;4304	28 06 	( . 
	ld a,020h		;4306	3e 20 	>   
l4308h:
	ld (de),a			;4308	12 	. 
	inc de			;4309	13 	. 
	djnz l4308h		;430a	10 fc 	. . 
l430ch:
	or a			;430c	b7 	. 
	ret			;430d	c9 	. 
l430eh:
	scf			;430e	37 	7 
	ret			;430f	c9 	. 
sub_4310h:
	ld l,000h		;4310	2e 00 	. . 
sub_4312h:
	call sub_4351h		;4312	cd 51 43 	. Q C 
	cp 008h		;4315	fe 08 	. . 
	jr z,l433dh		;4317	28 24 	( $ 
	cp 07fh		;4319	fe 7f 	.  
	jr z,l433dh		;431b	28 20 	(   
	cp 00dh		;431d	fe 0d 	. . 
	ret z			;431f	c8 	. 
	cp 01bh		;4320	fe 1b 	. . 
	jr z,l434fh		;4322	28 2b 	( + 
	cp 020h		;4324	fe 20 	.   
	jr c,sub_4312h		;4326	38 ea 	8 . 
	cp 061h		;4328	fe 61 	. a 
	jr c,l4332h		;432a	38 06 	8 . 
	cp 07bh		;432c	fe 7b 	. { 
	jr nc,l4332h		;432e	30 02 	0 . 
	res 5,a		;4330	cb af 	. . 
l4332h:
	ld (de),a			;4332	12 	. 
	call sub_4365h		;4333	cd 65 43 	. e C 
	inc de			;4336	13 	. 
	inc l			;4337	2c 	, 
	dec h			;4338	25 	% 
	jr z,l433dh		;4339	28 02 	( . 
	jr sub_4312h		;433b	18 d5 	. . 
l433dh:
	ld a,l			;433d	7d 	} 
	or a			;433e	b7 	. 
	jr z,sub_4312h		;433f	28 d1 	( . 
	exx			;4341	d9 	. 
	call sub_37dah		;4342	cd da 37 	. . 7 
	ex af,af'			;4345	08 	. 
	jr nz,l4350h		;4346	20 08 	  . 
	inc h			;4348	24 	$ 
	exx			;4349	d9 	. 
	dec l			;434a	2d 	- 
	inc h			;434b	24 	$ 
	dec de			;434c	1b 	. 
	jr sub_4312h		;434d	18 c3 	. . 
l434fh:
	scf			;434f	37 	7 
l4350h:
	ret			;4350	c9 	. 
sub_4351h:
	exx			;4351	d9 	. 
l4352h:
	ld c,006h		;4352	0e 06 	. . 
	ld e,0feh		;4354	1e fe 	. . 
	call l0005h		;4356	cd 05 00 	. . . 
	or a			;4359	b7 	. 
	jr z,l4352h		;435a	28 f6 	( . 
	ld c,006h		;435c	0e 06 	. . 
	ld e,0ffh		;435e	1e ff 	. . 
	call l0005h		;4360	cd 05 00 	. . . 
	exx			;4363	d9 	. 
	ret			;4364	c9 	. 
sub_4365h:
	ld c,a			;4365	4f 	O 
	call sub_436ah		;4366	cd 6a 43 	. j C 
	ret			;4369	c9 	. 
sub_436ah:
	call sub_4375h		;436a	cd 75 43 	. u C 
	jr nz,l4371h		;436d	20 02 	  . 
	jr sub_436ah		;436f	18 f9 	. . 
l4371h:
	ld a,c			;4371	79 	y 
	out (080h),a		;4372	d3 80 	. . 
	ret			;4374	c9 	. 
sub_4375h:
	ld a,001h		;4375	3e 01 	> . 
	out (082h),a		;4377	d3 82 	. . 
	in a,(082h)		;4379	db 82 	. . 
	bit 0,a		;437b	cb 47 	. G 
	ret			;437d	c9 	. 
l437eh:
	call sub_4386h		;437e	cd 86 43 	. . C 
	jr z,l437eh		;4381	28 fb 	( . 
	in a,(080h)		;4383	db 80 	. . 
	ret			;4385	c9 	. 
sub_4386h:
	in a,(082h)		;4386	db 82 	. . 
	bit 0,a		;4388	cb 47 	. G 
	ret			;438a	c9 	. 
sub_438bh:
	ld a,(0ffaah)		;438b	3a aa ff 	: . . 
	set 0,a		;438e	cb c7 	. . 
	ld (0ffaah),a		;4390	32 aa ff 	2 . . 
	ld bc,0fb7eh		;4393	01 7e fb 	. ~ . 
	ld de,(0ffa8h)		;4396	ed 5b a8 ff 	. [ . . 
	ld hl,0ffaah		;439a	21 aa ff 	! . . 
	ld a,080h		;439d	3e 80 	> . 
	out (083h),a		;439f	d3 83 	. . 
	call 0f3f8h		;43a1	cd f8 f3 	. . . 
	ld a,0c0h		;43a4	3e c0 	> . 
	out (083h),a		;43a6	d3 83 	. . 
	ret			;43a8	c9 	. 
l43a9h:
	call sub_43beh		;43a9	cd be 43 	. . C 
	ld c,(hl)			;43ac	4e 	N 
	bit 7,c		;43ad	cb 79 	. y 
	jr nz,l43b8h		;43af	20 07 	  . 
	call sub_436ah		;43b1	cd 6a 43 	. j C 
	inc hl			;43b4	23 	# 
	inc b			;43b5	04 	. 
	jr l43a9h		;43b6	18 f1 	. . 
l43b8h:
	ld c,020h		;43b8	0e 20 	.   
	call sub_436ah		;43ba	cd 6a 43 	. j C 
	ret			;43bd	c9 	. 
sub_43beh:
	ld c,01bh		;43be	0e 1b 	. . 
	call sub_436ah		;43c0	cd 6a 43 	. j C 
	ld c,058h		;43c3	0e 58 	. X 
	call sub_436ah		;43c5	cd 6a 43 	. j C 
	ld c,b			;43c8	48 	H 
	jp sub_436ah		;43c9	c3 6a 43 	. j C 
sub_43cch:
	call sub_37dah		;43cc	cd da 37 	. . 7 
	jr nz,l43f1h		;43cf	20 20 	    
	jr nz,l4404h		;43d1	20 31 	  1 
	jr nz,l4402h		;43d3	20 2d 	  - 
	ld a,020h		;43d5	3e 20 	>   
	ld (hl),b			;43d7	70 	p 
	ld l,h			;43d8	6c 	l 
	ld l,c			;43d9	69 	i 
	ld l,e			;43da	6b 	k 
	ld l,c			;43db	69 	i 
	jr nz,l444dh		;43dc	20 6f 	  o 
	ld h,a			;43de	67 	g 
	ld a,e			;43df	7b 	{ 
	ld l,h			;43e0	6c 	l 
	ld l,(hl)			;43e1	6e 	n 
	ld l,a			;43e2	6f 	o 
	ld h,h			;43e3	64 	d 
	ld l,a			;43e4	6f 	o 
	ld (hl),e			;43e5	73 	s 
	ld (hl),h			;43e6	74 	t 
	ld b,b			;43e7	40 	@ 
	ld (hl),b			;43e8	70 	p 
	ld l,(hl)			;43e9	6e 	n 
	ld h,l			;43ea	65 	e 
	inc h			;43eb	24 	$ 
	ld c,01bh		;43ec	0e 1b 	. . 
	call sub_436ah		;43ee	cd 6a 43 	. j C 
l43f1h:
	ld c,042h		;43f1	0e 42 	. B 
	call sub_436ah		;43f3	cd 6a 43 	. j C 
	ld b,019h		;43f6	06 19 	. . 
l43f8h:
	ld c,01bh		;43f8	0e 1b 	. . 
	call sub_436ah		;43fa	cd 6a 43 	. j C 
	ld c,044h		;43fd	0e 44 	. D 
	call sub_436ah		;43ff	cd 6a 43 	. j C 
l4402h:
	djnz l43f8h		;4402	10 f4 	. . 
l4404h:
	call sub_37dah		;4404	cd da 37 	. . 7 
	ld (l2d20h),a		;4407	32 20 2d 	2   - 
	ld a,020h		;440a	3e 20 	>   
	ld (hl),b			;440c	70 	p 
	ld l,h			;440d	6c 	l 
	ld l,c			;440e	69 	i 
	ld l,e			;440f	6b 	k 
	ld l,c			;4410	69 	i 
	jr nz,l448ah		;4411	20 77 	  w 
	ld a,h			;4413	7c 	| 
	ld h,c			;4414	61 	a 
	ld (hl),e			;4415	73 	s 
	ld l,(hl)			;4416	6e 	n 
	ld h,l			;4417	65 	e 
	jr nz,l443ah		;4418	20 20 	    
	jr nz,$+34		;441a	20 20 	    
	jr nz,l443eh		;441c	20 20 	    
	jr nz,$+34		;441e	20 20 	    
	jr nz,l4442h		;4420	20 20 	    
	inc h			;4422	24 	$ 
	ld e,000h		;4423	1e 00 	. . 
	call sub_36feh		;4425	cd fe 36 	. . 6 
	cp 01bh		;4428	fe 1b 	. . 
	jp z,l3671h		;442a	ca 71 36 	. q 6 
	ld e,a			;442d	5f 	_ 
	call sub_376bh		;442e	cd 6b 37 	. k 7 
	sub 031h		;4431	d6 31 	. 1 
	jr z,l444fh		;4433	28 1a 	( . 
	dec a			;4435	3d 	= 
	ld a,(0fb7dh)		;4436	3a 7d fb 	: } . 
	ld e,a			;4439	5f 	_ 
l443ah:
	ret z			;443a	c8 	. 
	call sub_37dah		;443b	cd da 37 	. . 7 
l443eh:
	jp p,l7c7ah		;443e	f2 7a 7c 	. z | 
	ld a,c			;4441	79 	y 
l4442h:
	jr nz,$+118		;4442	20 74 	  t 
	ld a,c			;4444	79 	y 
	ld (hl),b			;4445	70 	p 
	jr nz,$+114		;4446	20 70 	  p 
	ld l,h			;4448	6c 	l 
	ld l,c			;4449	69 	i 
	ld l,e			;444a	6b 	k 
	ld (hl),l			;444b	75 	u 
	inc h			;444c	24 	$ 
l444dh:
	scf			;444d	37 	7 
	ret			;444e	c9 	. 
l444fh:
	ld e,000h		;444f	1e 00 	. . 
	ret			;4451	c9 	. 
l4452h:
	ld a,(de)			;4452	1a 	. 
	add a,b			;4453	80 	. 
	add a,b			;4454	80 	. 
l4455h:
	ei			;4455	fb 	. 
l4456h:
	halt			;4456	76 	v 
	jr l4456h		;4457	18 fd 	. . 
l4459h:
	di			;4459	f3 	. 
	ld hl,0ffaeh		;445a	21 ae ff 	! . . 
	bit 0,(hl)		;445d	cb 46 	. F 
	call nz,04599h		;445f	c4 99 45 	. . E 
	ld hl,0ffaah		;4462	21 aa ff 	! . . 
	bit 6,(hl)		;4465	cb 76 	. v 
	jr nz,l4487h		;4467	20 1e 	  . 
	bit 5,(hl)		;4469	cb 6e 	. n 
	jr nz,l4487h		;446b	20 1a 	  . 
	ld a,(0fb7fh)		;446d	3a 7f fb 	:  . 
	ld hl,l44bah		;4470	21 ba 44 	! . D 
	ld b,014h		;4473	06 14 	. . 
l4475h:
	cp (hl)			;4475	be 	. 
	jr z,l44a7h		;4476	28 2f 	( / 
	inc hl			;4478	23 	# 
	inc hl			;4479	23 	# 
	inc hl			;447a	23 	# 
	dec b			;447b	05 	. 
	jr nz,l4475h		;447c	20 f7 	  . 
	ld de,l4491h		;447e	11 91 44 	. . D 
	call sub_44f3h		;4481	cd f3 44 	. . D 
	jp 0f4bfh		;4484	c3 bf f4 	. . . 
l4487h:
	ld a,(0ffb0h)		;4487	3a b0 ff 	: . . 
l448ah:
	bit 2,a		;448a	cb 57 	. W 
	jp nz,0f4bfh		;448c	c2 bf f4 	. . . 
	jr l4455h		;448f	18 c4 	. . 
l4491h:
	ld c,(hl)			;4491	4e 	N 
	ld c,c			;4492	49 	I 
	ld b,l			;4493	45 	E 
	jr nz,$+79		;4494	20 4d 	  M 
	ld b,c			;4496	41 	A 
	jr nz,l44edh		;4497	20 54 	  T 
	ld b,c			;4499	41 	A 
	ld c,e			;449a	4b 	K 
	ld c,c			;449b	49 	I 
	ld b,l			;449c	45 	E 
	ld c,d			;449d	4a 	J 
	jr nz,l44ebh		;449e	20 4b 	  K 
	ld c,a			;44a0	4f 	O 
	ld c,l			;44a1	4d 	M 
	ld b,l			;44a2	45 	E 
	ld c,(hl)			;44a3	4e 	N 
	ld b,h			;44a4	44 	D 
	ld e,c			;44a5	59 	Y 
	inc h			;44a6	24 	$ 
l44a7h:
	inc hl			;44a7	23 	# 
	ld e,(hl)			;44a8	5e 	^ 
	inc hl			;44a9	23 	# 
	ld d,(hl)			;44aa	56 	V 
	ex de,hl			;44ab	eb 	. 
	call sub_44b9h		;44ac	cd b9 44 	. . D 
	ld a,(0ffb0h)		;44af	3a b0 ff 	: . . 
	bit 2,a		;44b2	cb 57 	. W 
	jr nz,l4455h		;44b4	20 9f 	  . 
	jp 0f4bfh		;44b6	c3 bf f4 	. . . 
sub_44b9h:
	jp (hl)			;44b9	e9 	. 
l44bah:
	ld d,0f2h		;44ba	16 f2 	. . 
	ld b,a			;44bc	47 	G 
	dec d			;44bd	15 	. 
	ccf			;44be	3f 	? 
	ld c,b			;44bf	48 	H 
	djnz $-98		;44c0	10 9c 	. . 
	ld c,b			;44c2	48 	H 
	ld bc,l48a5h		;44c3	01 a5 48 	. . H 
	inc b			;44c6	04 	. 
	xor (hl)			;44c7	ae 	. 
	ld c,b			;44c8	48 	H 
	ld (bc),a			;44c9	02 	. 
	or e			;44ca	b3 	. 
	ld c,b			;44cb	48 	H 
	inc bc			;44cc	03 	. 
	cp b			;44cd	b8 	. 
	ld c,b			;44ce	48 	H 
	dec b			;44cf	05 	. 
	jp po,00648h		;44d0	e2 48 06 	. H . 
	sub (hl)			;44d3	96 	. 
	ld b,(hl)			;44d4	46 	F 
	rlca			;44d5	07 	. 
	ld b,b			;44d6	40 	@ 
	ld b,a			;44d7	47 	G 
	ex af,af'			;44d8	08 	. 
	ret c			;44d9	d8 	. 
	ld b,a			;44da	47 	G 
	add hl,bc			;44db	09 	. 
	ld (bc),a			;44dc	02 	. 
	ld b,(hl)			;44dd	46 	F 
	jr nc,$+1		;44de	30 ff 	0 . 
	ld b,l			;44e0	45 	E 
	ld sp,l45feh		;44e1	31 fe 45 	1 . E 
	ld (l45fdh),a		;44e4	32 fd 45 	2 . E 
	inc (hl)			;44e7	34 	4 
	call m,sub_3545h		;44e8	fc 45 35 	. E 5 
l44ebh:
	in c,(c)		;44eb	ed 48 	. H 
l44edh:
	ld (hl),0eeh		;44ed	36 ee 	6 . 
	ld c,b			;44ef	48 	H 
	scf			;44f0	37 	7 
	rst 28h			;44f1	ef 	. 
	ld c,b			;44f2	48 	H 
sub_44f3h:
	ld a,(de)			;44f3	1a 	. 
	cp 024h		;44f4	fe 24 	. $ 
	ret z			;44f6	c8 	. 
	ld c,a			;44f7	4f 	O 
	call sub_436ah		;44f8	cd 6a 43 	. j C 
	inc de			;44fb	13 	. 
	jr sub_44f3h		;44fc	18 f5 	. . 
sub_44feh:
	ld c,01bh		;44fe	0e 1b 	. . 
	call sub_436ah		;4500	cd 6a 43 	. j C 
	ld c,028h		;4503	0e 28 	. ( 
	call sub_436ah		;4505	cd 6a 43 	. j C 
	ex (sp),hl			;4508	e3 	. 
l4509h:
	ld a,(hl)			;4509	7e 	~ 
	inc hl			;450a	23 	# 
	cp 024h		;450b	fe 24 	. $ 
	jr z,l4517h		;450d	28 08 	( . 
	add a,020h		;450f	c6 20 	.   
	ld c,a			;4511	4f 	O 
	call sub_436ah		;4512	cd 6a 43 	. j C 
	jr l4509h		;4515	18 f2 	. . 
l4517h:
	ex (sp),hl			;4517	e3 	. 
	ld c,01ah		;4518	0e 1a 	. . 
	call sub_436ah		;451a	cd 6a 43 	. j C 
	ret			;451d	c9 	. 
sub_451eh:
	ld c,01bh		;451e	0e 1b 	. . 
	call sub_436ah		;4520	cd 6a 43 	. j C 
	ld c,029h		;4523	0e 29 	. ) 
	jp sub_436ah		;4525	c3 6a 43 	. j C 
sub_4528h:
	ex (sp),hl			;4528	e3 	. 
	ld d,(hl)			;4529	56 	V 
	inc hl			;452a	23 	# 
	ld b,(hl)			;452b	46 	F 
	inc hl			;452c	23 	# 
	ld e,(hl)			;452d	5e 	^ 
	inc hl			;452e	23 	# 
	ld c,(hl)			;452f	4e 	N 
	inc hl			;4530	23 	# 
	ex (sp),hl			;4531	e3 	. 
	ld hl,l0000h		;4532	21 00 00 	! . . 
	add hl,bc			;4535	09 	. 
	ld c,082h		;4536	0e 82 	. . 
	call sub_436ah		;4538	cd 6a 43 	. j C 
	ld a,l			;453b	7d 	} 
	sub h			;453c	94 	. 
	dec a			;453d	3d 	= 
	ld b,a			;453e	47 	G 
	ld h,a			;453f	67 	g 
l4540h:
	ld c,08bh		;4540	0e 8b 	. . 
	call sub_436ah		;4542	cd 6a 43 	. j C 
	djnz l4540h		;4545	10 f9 	. . 
	ld c,083h		;4547	0e 83 	. . 
	call sub_436ah		;4549	cd 6a 43 	. j C 
	ld a,e			;454c	7b 	{ 
	sub d			;454d	92 	. 
	dec a			;454e	3d 	= 
	dec a			;454f	3d 	= 
	ld b,a			;4550	47 	G 
	ld l,a			;4551	6f 	o 
l4552h:
	ld de,l458fh		;4552	11 8f 45 	. . E 
	call sub_44f3h		;4555	cd f3 44 	. . D 
	djnz l4552h		;4558	10 f8 	. . 
	ld c,081h		;455a	0e 81 	. . 
	call sub_436ah		;455c	cd 6a 43 	. j C 
	ld b,h			;455f	44 	D 
l4560h:
	ld c,08bh		;4560	0e 8b 	. . 
	call sub_436ah		;4562	cd 6a 43 	. j C 
	djnz l4560h		;4565	10 f9 	. . 
	ld c,084h		;4567	0e 84 	. . 
	call sub_436ah		;4569	cd 6a 43 	. j C 
	ld de,l4595h		;456c	11 95 45 	. . E 
	call sub_44f3h		;456f	cd f3 44 	. . D 
	ld a,h			;4572	7c 	| 
	inc a			;4573	3c 	< 
	add a,020h		;4574	c6 20 	.   
	ld c,a			;4576	4f 	O 
	call sub_436ah		;4577	cd 6a 43 	. j C 
	ld b,l			;457a	45 	E 
l457bh:
	ld de,l458fh		;457b	11 8f 45 	. . E 
	call sub_44f3h		;457e	cd f3 44 	. . D 
	djnz l457bh		;4581	10 f8 	. . 
	ld de,l4595h		;4583	11 95 45 	. . E 
	call sub_44f3h		;4586	cd f3 44 	. . D 
	ld c,021h		;4589	0e 21 	. ! 
	call sub_436ah		;458b	cd 6a 43 	. j C 
	ret			;458e	c9 	. 
l458fh:
	adc a,d			;458f	8a 	. 
	dec de			;4590	1b 	. 
	ld b,d			;4591	42 	B 
	dec de			;4592	1b 	. 
	ld b,h			;4593	44 	D 
	inc h			;4594	24 	$ 
l4595h:
	dec de			;4595	1b 	. 
	dec a			;4596	3d 	= 
	ld hl,0cb24h		;4597	21 24 cb 	! $ . 
	add a,(hl)			;459a	86 	. 
	ld hl,09664h		;459b	21 64 96 	! d . 
	call sub_473ah		;459e	cd 3a 47 	. : G 
	ld a,005h		;45a1	3e 05 	> . 
	out (082h),a		;45a3	d3 82 	. . 
	ld a,0e8h		;45a5	3e e8 	> . 
	out (082h),a		;45a7	d3 82 	. . 
	ld hl,l00c8h		;45a9	21 c8 00 	! . . 
	call sub_473ah		;45ac	cd 3a 47 	. : G 
	ld a,(0f600h)		;45af	3a 00 f6 	: . . 
	or a			;45b2	b7 	. 
	jr z,l45cah		;45b3	28 15 	( . 
	ld b,a			;45b5	47 	G 
	ld hl,(0f602h)		;45b6	2a 02 f6 	* . . 
l45b9h:
	ld c,01bh		;45b9	0e 1b 	. . 
	call sub_436ah		;45bb	cd 6a 43 	. j C 
	ld c,026h		;45be	0e 26 	. & 
	call sub_436ah		;45c0	cd 6a 43 	. j C 
	ld c,l			;45c3	4d 	M 
	call sub_436ah		;45c4	cd 6a 43 	. j C 
	ld l,h			;45c7	6c 	l 
	djnz l45b9h		;45c8	10 ef 	. . 
l45cah:
	in a,(082h)		;45ca	db 82 	. . 
	rra			;45cc	1f 	. 
	ret nc			;45cd	d0 	. 
	ld c,01bh		;45ce	0e 1b 	. . 
	call sub_436ah		;45d0	cd 6a 43 	. j C 
	ld c,026h		;45d3	0e 26 	. & 
	call sub_436ah		;45d5	cd 6a 43 	. j C 
	in a,(080h)		;45d8	db 80 	. . 
	ld c,a			;45da	4f 	O 
	call sub_436ah		;45db	cd 6a 43 	. j C 
	jr l45cah		;45de	18 ea 	. . 
sub_45e0h:
	ld hl,0ff82h		;45e0	21 82 ff 	! . . 
	push hl			;45e3	e5 	. 
	ld b,024h		;45e4	06 24 	. $ 
l45e6h:
	ld (hl),000h		;45e6	36 00 	6 . 
	inc hl			;45e8	23 	# 
	djnz l45e6h		;45e9	10 fb 	. . 
	ld hl,0ff82h		;45eb	21 82 ff 	! . . 
	ld b,00ch		;45ee	06 0c 	. . 
	xor a			;45f0	af 	. 
	inc a			;45f1	3c 	< 
l45f2h:
	and 07fh		;45f2	e6 7f 	.  
	ld (hl),a			;45f4	77 	w 
	inc hl			;45f5	23 	# 
	inc de			;45f6	13 	. 
	ld a,(de)			;45f7	1a 	. 
	djnz l45f2h		;45f8	10 f8 	. . 
	pop de			;45fa	d1 	. 
	ret			;45fb	c9 	. 
	ret			;45fc	c9 	. 
l45fdh:
	ret			;45fd	c9 	. 
l45feh:
	ret			;45fe	c9 	. 
	out (003h),a		;45ff	d3 03 	. . 
	ret			;4601	c9 	. 
	out (005h),a		;4602	d3 05 	. . 
	call sub_44feh		;4604	cd fe 44 	. . D 
	ld (bc),a			;4607	02 	. 
	nop			;4608	00 	. 
	rlca			;4609	07 	. 
	ld c,a			;460a	4f 	O 
	inc h			;460b	24 	$ 
	call sub_4528h		;460c	cd 28 45 	. ( E 
	ld (bc),a			;460f	02 	. 
	nop			;4610	00 	. 
	rlca			;4611	07 	. 
	ld c,a			;4612	4f 	O 
	ld de,l4683h		;4613	11 83 46 	. . F 
	call sub_44f3h		;4616	cd f3 44 	. . D 
	ld de,l4670h		;4619	11 70 46 	. p F 
	call sub_44f3h		;461c	cd f3 44 	. . D 
	ld hl,0fb80h		;461f	21 80 fb 	! . . 
	ld c,(hl)			;4622	4e 	N 
	call sub_436ah		;4623	cd 6a 43 	. j C 
	ld de,l467fh		;4626	11 7f 46 	.  F 
	call sub_44f3h		;4629	cd f3 44 	. . D 
	inc hl			;462c	23 	# 
	ld e,(hl)			;462d	5e 	^ 
	ld d,000h		;462e	16 00 	. . 
	add hl,de			;4630	19 	. 
	inc hl			;4631	23 	# 
	ld (hl),024h		;4632	36 24 	6 $ 
	ld de,0fb82h		;4634	11 82 fb 	. . . 
	call sub_44f3h		;4637	cd f3 44 	. . D 
	call sub_44feh		;463a	cd fe 44 	. . D 
	dec b			;463d	05 	. 
	add hl,de			;463e	19 	. 
	ex af,af'			;463f	08 	. 
	jr c,l4666h		;4640	38 24 	8 $ 
	call sub_4528h		;4642	cd 28 45 	. ( E 
	dec b			;4645	05 	. 
	add hl,de			;4646	19 	. 
	ex af,af'			;4647	08 	. 
	jr c,$+19		;4648	38 11 	8 . 
	or a			;464a	b7 	. 
	ld b,a			;464b	47 	G 
	call sub_44f3h		;464c	cd f3 44 	. . D 
	ld c,007h		;464f	0e 07 	. . 
	call sub_436ah		;4651	cd 6a 43 	. j C 
	ld hl,00a28h		;4654	21 28 0a 	! ( . 
	call sub_4251h		;4657	cd 51 42 	. Q B 
l465ah:
	call sub_4386h		;465a	cd 86 43 	. . C 
	jr nz,l4666h		;465d	20 07 	  . 
	call sub_40ebh		;465f	cd eb 40 	. . @ 
	jr nz,l465ah		;4662	20 f6 	  . 
	jr l4669h		;4664	18 03 	. . 
l4666h:
	call l437eh		;4666	cd 7e 43 	. ~ C 
l4669h:
	call sub_451eh		;4669	cd 1e 45 	. . E 
	call sub_451eh		;466c	cd 1e 45 	. . E 
	ret			;466f	c9 	. 
l4670h:
	ld d,e			;4670	53 	S 
	ld d,h			;4671	54 	T 
	ld b,c			;4672	41 	A 
	ld c,(hl)			;4673	4e 	N 
	ld c,a			;4674	4f 	O 
	ld d,a			;4675	57 	W 
	ld c,c			;4676	49 	I 
	ld d,e			;4677	53 	S 
	ld c,e			;4678	4b 	K 
	ld c,a			;4679	4f 	O 
	jr nz,$+80		;467a	20 4e 	  N 
	ld d,d			;467c	52 	R 
	jr nz,$+38		;467d	20 24 	  $ 
l467fh:
	jr nz,$+60		;467f	20 3a 	  : 
	jr nz,$+38		;4681	20 24 	  $ 
l4683h:
	dec de			;4683	1b 	. 
	dec a			;4684	3d 	= 
	ld (l2422h),hl		;4685	22 22 24 	" " $ 
sub_4688h:
	ld hl,l0000h		;4688	21 00 00 	! . . 
	ld de,l1770h		;468b	11 70 17 	. p . 
	ld a,(0fb7dh)		;468e	3a 7d fb 	: } . 
	ld b,a			;4691	47 	G 
l4692h:
	add hl,de			;4692	19 	. 
	djnz l4692h		;4693	10 fd 	. . 
	ret			;4695	c9 	. 
	out (005h),a		;4696	d3 05 	. . 
	ld hl,0ffb0h		;4698	21 b0 ff 	! . . 
	bit 0,(hl)		;469b	cb 46 	. F 
	jr z,l46b3h		;469d	28 14 	( . 
	set 1,(hl)		;469f	cb ce 	. . 
	ret			;46a1	c9 	. 
sub_46a2h:
	ld (0ffd1h),sp		;46a2	ed 73 d1 ff 	. s . . 
	ld sp,0ffd1h		;46a6	31 d1 ff 	1 . . 
	push af			;46a9	f5 	. 
	push bc			;46aa	c5 	. 
	push de			;46ab	d5 	. 
	push hl			;46ac	e5 	. 
	push ix		;46ad	dd e5 	. . 
	ld hl,l4455h		;46af	21 55 44 	! U D 
	push hl			;46b2	e5 	. 
l46b3h:
	ld hl,(0f2afh)		;46b3	2a af f2 	* . . 
	ld (0ffd5h),hl		;46b6	22 d5 ff 	" . . 
	call sub_44feh		;46b9	cd fe 44 	. . D 
	nop			;46bc	00 	. 
	inc e			;46bd	1c 	. 
	inc bc			;46be	03 	. 
	inc sp			;46bf	33 	3 
	inc h			;46c0	24 	$ 
	call sub_4528h		;46c1	cd 28 45 	. ( E 
	nop			;46c4	00 	. 
	inc e			;46c5	1c 	. 
	inc bc			;46c6	03 	. 
	inc sp			;46c7	33 	3 
	ld de,l470ah		;46c8	11 0a 47 	. . G 
	call sub_44f3h		;46cb	cd f3 44 	. . D 
	call sub_44feh		;46ce	cd fe 44 	. . D 
	ld (bc),a			;46d1	02 	. 
	dec b			;46d2	05 	. 
	ld d,014h		;46d3	16 14 	. . 
	inc h			;46d5	24 	$ 
	call sub_4528h		;46d6	cd 28 45 	. ( E 
	ld (bc),a			;46d9	02 	. 
	dec b			;46da	05 	. 
	ld d,014h		;46db	16 14 	. . 
	call sub_44feh		;46dd	cd fe 44 	. . D 
	inc bc			;46e0	03 	. 
	rlca			;46e1	07 	. 
	inc d			;46e2	14 	. 
	inc de			;46e3	13 	. 
	inc h			;46e4	24 	$ 
	ld hl,l0000h		;46e5	21 00 00 	! . . 
	ld de,0f700h		;46e8	11 00 f7 	. . . 
	ld bc,l0100h		;46eb	01 00 01 	. . . 
	call 0f347h		;46ee	cd 47 f3 	. G . 
	call sub_4688h		;46f1	cd 88 46 	. . F 
	call sub_473ah		;46f4	cd 3a 47 	. : G 
	ld e,000h		;46f7	1e 00 	. . 
	call sub_471bh		;46f9	cd 1b 47 	. . G 
	ld hl,0ffb0h		;46fc	21 b0 ff 	! . . 
	set 2,(hl)		;46ff	cb d6 	. . 
	res 1,(hl)		;4701	cb 8e 	. . 
	ld hl,0f46fh		;4703	21 6f f4 	! o . 
	ld (0f3f4h),hl		;4706	22 f4 f3 	" . . 
	ret			;4709	c9 	. 
l470ah:
	jr nz,$+34		;470a	20 20 	    
	jr nz,$+34		;470c	20 20 	    
	jr nz,l4730h		;470e	20 20 	    
	ld d,h			;4710	54 	T 
	ld d,d			;4711	52 	R 
	ld b,c			;4712	41 	A 
	ld c,(hl)			;4713	4e 	N 
	ld d,e			;4714	53 	S 
	ld c,l			;4715	4d 	M 
	ld c,c			;4716	49 	I 
	ld d,e			;4717	53 	S 
	ld c,d			;4718	4a 	J 
	ld b,c			;4719	41 	A 
	inc h			;471a	24 	$ 
sub_471bh:
	ld hl,0fb7eh		;471b	21 7e fb 	! ~ . 
	ld (hl),000h		;471e	36 00 	6 . 
	inc hl			;4720	23 	# 
	ld (hl),008h		;4721	36 08 	6 . 
	inc hl			;4723	23 	# 
	ld a,(0fb7dh)		;4724	3a 7d fb 	: } . 
	ld (hl),a			;4727	77 	w 
	inc hl			;4728	23 	# 
	ld (hl),e			;4729	73 	s 
	ld hl,l0002h+2		;472a	21 04 00 	! . . 
	ld (0ffa8h),hl		;472d	22 a8 ff 	" . . 
l4730h:
	call sub_425ch		;4730	cd 5c 42 	. \ B 
	call sub_423eh		;4733	cd 3e 42 	. > B 
	call sub_427eh		;4736	cd 7e 42 	. ~ B 
	ret			;4739	c9 	. 
sub_473ah:
	dec hl			;473a	2b 	+ 
	ld a,h			;473b	7c 	| 
	or l			;473c	b5 	. 
	jr nz,sub_473ah		;473d	20 fb 	  . 
	ret			;473f	c9 	. 
	call sub_4688h		;4740	cd 88 46 	. . F 
	call sub_473ah		;4743	cd 3a 47 	. : G 
	ld a,(0ffaah)		;4746	3a aa ff 	: . . 
	and 0e0h		;4749	e6 e0 	. . 
	ld e,000h		;474b	1e 00 	. . 
	jr z,l4751h		;474d	28 02 	( . 
	ld e,0ffh		;474f	1e ff 	. . 
l4751h:
	call sub_471bh		;4751	cd 1b 47 	. . G 
	xor a			;4754	af 	. 
	ld (0ffaah),a		;4755	32 aa ff 	2 . . 
	ld hl,0ffb0h		;4758	21 b0 ff 	! . . 
	res 2,(hl)		;475b	cb 96 	. . 
	ld hl,0ffadh		;475d	21 ad ff 	! . . 
	res 3,(hl)		;4760	cb 9e 	. . 
	ld hl,0f427h		;4762	21 27 f4 	! ' . 
	ld (0f3f4h),hl		;4765	22 f4 f3 	" . . 
	ld hl,(0ffd5h)		;4768	2a d5 ff 	* . . 
	ld (0f2afh),hl		;476b	22 af f2 	" . . 
	ld (0f014h),hl		;476e	22 14 f0 	" . . 
	call sub_44feh		;4771	cd fe 44 	. . D 
	inc d			;4774	14 	. 
	rrca			;4775	0f 	. 
	rla			;4776	17 	. 
	ld l,024h		;4777	2e 24 	. $ 
	call sub_4528h		;4779	cd 28 45 	. ( E 
	inc d			;477c	14 	. 
	rrca			;477d	0f 	. 
	rla			;477e	17 	. 
	ld l,011h		;477f	2e 11 	. . 
	or a			;4781	b7 	. 
	ld b,a			;4782	47 	G 
	call sub_44f3h		;4783	cd f3 44 	. . D 
	ld c,007h		;4786	0e 07 	. . 
	call sub_436ah		;4788	cd 6a 43 	. j C 
	ld hl,00a28h		;478b	21 28 0a 	! ( . 
	call sub_4251h		;478e	cd 51 42 	. Q B 
l4791h:
	call sub_4386h		;4791	cd 86 43 	. . C 
	jr nz,l479dh		;4794	20 07 	  . 
	call sub_40ebh		;4796	cd eb 40 	. . @ 
	jr nz,l4791h		;4799	20 f6 	  . 
	jr l47a0h		;479b	18 03 	. . 
l479dh:
	call l437eh		;479d	cd 7e 43 	. ~ C 
l47a0h:
	call sub_451eh		;47a0	cd 1e 45 	. . E 
	call sub_451eh		;47a3	cd 1e 45 	. . E 
	call sub_451eh		;47a6	cd 1e 45 	. . E 
	call sub_451eh		;47a9	cd 1e 45 	. . E 
	ld hl,0f700h		;47ac	21 00 f7 	! . . 
	ld de,l0000h		;47af	11 00 00 	. . . 
	ld bc,l0100h		;47b2	01 00 01 	. . . 
	ld b,a			;47b5	47 	G 
	ret			;47b6	c9 	. 
	dec de			;47b7	1b 	. 
	ld d,b			;47b8	50 	P 
	jr nz,$+89		;47b9	20 57 	  W 
	ld h,e			;47bb	63 	c 
	ld l,c			;47bc	69 	i 
	ld e,(hl)			;47bd	5e 	^ 
	ld l,(hl)			;47be	6e 	n 
	ld l,c			;47bf	69 	i 
	ld l,d			;47c0	6a 	j 
	jr nz,$+102		;47c1	20 64 	  d 
	ld l,a			;47c3	6f 	o 
	ld (hl),a			;47c4	77 	w 
	ld l,a			;47c5	6f 	o 
	ld l,h			;47c6	6c 	l 
	ld l,(hl)			;47c7	6e 	n 
	ld a,c			;47c8	79 	y 
	jr nz,l4836h		;47c9	20 6b 	  k 
	ld l,h			;47cb	6c 	l 
	ld h,c			;47cc	61 	a 
	ld (hl),a			;47cd	77 	w 
	ld l,c			;47ce	69 	i 
	ld (hl),e			;47cf	73 	s 
	ld a,d			;47d0	7a 	z 
	jr nz,l4801h		;47d1	20 2e 	  . 
	ld l,02eh		;47d3	2e 2e 	. . 
	dec de			;47d5	1b 	. 
	ld c,a			;47d6	4f 	O 
	inc h			;47d7	24 	$ 
	ld hl,0ffadh		;47d8	21 ad ff 	! . . 
	set 1,(hl)		;47db	cb ce 	. . 
	ld hl,0fb81h		;47dd	21 81 fb 	! . . 
	ld a,(hl)			;47e0	7e 	~ 
	or a			;47e1	b7 	. 
	jr nz,l47ebh		;47e2	20 07 	  . 
	dec hl			;47e4	2b 	+ 
	ld a,(hl)			;47e5	7e 	~ 
	ld hl,0ffafh		;47e6	21 af ff 	! . . 
	ld (hl),a			;47e9	77 	w 
l47eah:
	ret			;47ea	c9 	. 
l47ebh:
	ld hl,0ffadh		;47eb	21 ad ff 	! . . 
	set 2,(hl)		;47ee	cb d6 	. . 
	jr l47eah		;47f0	18 f8 	. . 
	ld hl,0ff82h		;47f2	21 82 ff 	! . . 
	ld de,0ff83h		;47f5	11 83 ff 	. . . 
	ld bc,l0023h		;47f8	01 23 00 	. # . 
	ld (hl),000h		;47fb	36 00 	6 . 
	ldir		;47fd	ed b0 	. . 
	ld a,001h		;47ff	3e 01 	> . 
l4801h:
	ld (0ff82h),a		;4801	32 82 ff 	2 . . 
	ld hl,0fb80h		;4804	21 80 fb 	! . . 
	ld de,0ff83h		;4807	11 83 ff 	. . . 
	ld bc,l000bh		;480a	01 0b 00 	. . . 
	ldir		;480d	ed b0 	. . 
	ld c,013h		;480f	0e 13 	. . 
	ld de,0ff82h		;4811	11 82 ff 	. . . 
	call l0005h		;4814	cd 05 00 	. . . 
	ld de,0ff82h		;4817	11 82 ff 	. . . 
	ld c,016h		;481a	0e 16 	. . 
	call l0005h		;481c	cd 05 00 	. . . 
	ld bc,l0002h+1		;481f	01 03 00 	. . . 
	ld de,0fb8bh		;4822	11 8b fb 	. . . 
	ld hl,0fb8ah		;4825	21 8a fb 	! . . 
	lddr		;4828	ed b8 	. . 
	inc hl			;482a	23 	# 
	ld (hl),02eh		;482b	36 2e 	6 . 
	ld hl,0fb8ch		;482d	21 8c fb 	! . . 
	ld (hl),00dh		;4830	36 0d 	6 . 
	inc hl			;4832	23 	# 
	ld (hl),00ah		;4833	36 0a 	6 . 
	inc hl			;4835	23 	# 
l4836h:
	ld (hl),024h		;4836	36 24 	6 $ 
	ld de,0fb80h		;4838	11 80 fb 	. . . 
	call sub_44f3h		;483b	cd f3 44 	. . D 
	ret			;483e	c9 	. 
	ld hl,0ffaah		;483f	21 aa ff 	! . . 
	bit 7,(hl)		;4842	cb 7e 	. ~ 
	jr nz,l487ch		;4844	20 36 	  6 
	ld hl,(0ffabh)		;4846	2a ab ff 	* . . 
	ld de,0fb80h		;4849	11 80 fb 	. . . 
	or a			;484c	b7 	. 
	sbc hl,de		;484d	ed 52 	. R 
	rl l		;484f	cb 15 	. . 
	rl h		;4851	cb 14 	. . 
	ld b,h			;4853	44 	D 
	ld hl,0fb80h		;4854	21 80 fb 	! . . 
	ld (0ffa6h),hl		;4857	22 a6 ff 	" . . 
l485ah:
	push bc			;485a	c5 	. 
	ld de,(0ffa6h)		;485b	ed 5b a6 ff 	. [ . . 
	ld c,01ah		;485f	0e 1a 	. . 
	call l0005h		;4861	cd 05 00 	. . . 
	ld de,0ff82h		;4864	11 82 ff 	. . . 
	ld c,015h		;4867	0e 15 	. . 
	call l0005h		;4869	cd 05 00 	. . . 
	or a			;486c	b7 	. 
	jr nz,l487dh		;486d	20 0e 	  . 
	ld hl,(0ffa6h)		;486f	2a a6 ff 	* . . 
	ld de,l0080h		;4872	11 80 00 	. . . 
	add hl,de			;4875	19 	. 
	ld (0ffa6h),hl		;4876	22 a6 ff 	" . . 
	pop bc			;4879	c1 	. 
	djnz l485ah		;487a	10 de 	. . 
l487ch:
	ret			;487c	c9 	. 
l487dh:
	pop bc			;487d	c1 	. 
	ld hl,0ffaah		;487e	21 aa ff 	! . . 
	set 7,(hl)		;4881	cb fe 	. . 
	ld de,l488ah		;4883	11 8a 48 	. . H 
	call sub_44f3h		;4886	cd f3 44 	. . D 
	ret			;4889	c9 	. 
l488ah:
	dec de			;488a	1b 	. 
	ld d,e			;488b	53 	S 
	jr nz,l48d2h		;488c	20 44 	  D 
	ld c,c			;488e	49 	I 
	ld d,e			;488f	53 	S 
	ld c,e			;4890	4b 	K 
	jr nz,l48d9h		;4891	20 46 	  F 
	ld d,l			;4893	55 	U 
	ld c,h			;4894	4c 	L 
	ld c,h			;4895	4c 	L 
	jr nz,l48b3h		;4896	20 1b 	  . 
	ld d,h			;4898	54 	T 
	ld a,(bc)			;4899	0a 	. 
	dec c			;489a	0d 	. 
	inc h			;489b	24 	$ 
	ld c,010h		;489c	0e 10 	. . 
	ld de,0ff82h		;489e	11 82 ff 	. . . 
	call l0005h		;48a1	cd 05 00 	. . . 
	ret			;48a4	c9 	. 
l48a5h:
	out (0ffh),a		;48a5	d3 ff 	. . 
	out (0f9h),a		;48a7	d3 f9 	. . 
	out (0fah),a		;48a9	d3 fa 	. . 
	out (0fch),a		;48ab	d3 fc 	. . 
	ret			;48ad	c9 	. 
	out (0f8h),a		;48ae	d3 f8 	. . 
	out (0feh),a		;48b0	d3 fe 	. . 
	ret			;48b2	c9 	. 
l48b3h:
	out (0fah),a		;48b3	d3 fa 	. . 
	out (0fdh),a		;48b5	d3 fd 	. . 
	ret			;48b7	c9 	. 
	ld hl,l48d3h		;48b8	21 d3 48 	! . H 
	ld b,032h		;48bb	06 32 	. 2 
	call l43a9h		;48bd	cd a9 43 	. . C 
	ld b,041h		;48c0	06 41 	. A 
	call sub_43beh		;48c2	cd be 43 	. . C 
	ld a,(0fb7dh)		;48c5	3a 7d fb 	: } . 
	add a,030h		;48c8	c6 30 	. 0 
	ld c,a			;48ca	4f 	O 
	call sub_436ah		;48cb	cd 6a 43 	. j C 
	out (0fbh),a		;48ce	d3 fb 	. . 
	out (0fch),a		;48d0	d3 fc 	. . 
l48d2h:
	ret			;48d2	c9 	. 
l48d3h:
	ld d,e			;48d3	53 	S 
	ld d,h			;48d4	54 	T 
	ld b,c			;48d5	41 	A 
	ld c,(hl)			;48d6	4e 	N 
	ld c,a			;48d7	4f 	O 
	ld d,a			;48d8	57 	W 
l48d9h:
	ld c,c			;48d9	49 	I 
	ld d,e			;48da	53 	S 
	ld c,e			;48db	4b 	K 
	ld c,a			;48dc	4f 	O 
	jr nz,l492dh		;48dd	20 4e 	  N 
	ld d,d			;48df	52 	R 
	jr nz,$-126		;48e0	20 80 	  . 
	ld hl,l4452h		;48e2	21 52 44 	! R D 
	ld b,020h		;48e5	06 20 	.   
	call l43a9h		;48e7	cd a9 43 	. . C 
	out (0fah),a		;48ea	d3 fa 	. . 
	ret			;48ec	c9 	. 
	ret			;48ed	c9 	. 
	ret			;48ee	c9 	. 
	ret			;48ef	c9 	. 
	nop			;48f0	00 	. 
	nop			;48f1	00 	. 
	nop			;48f2	00 	. 
	nop			;48f3	00 	. 
	nop			;48f4	00 	. 
	nop			;48f5	00 	. 
	nop			;48f6	00 	. 
	nop			;48f7	00 	. 
	nop			;48f8	00 	. 
	nop			;48f9	00 	. 
	nop			;48fa	00 	. 
	nop			;48fb	00 	. 
	nop			;48fc	00 	. 
	nop			;48fd	00 	. 
	nop			;48fe	00 	. 
	nop			;48ff	00 	. 
	nop			;4900	00 	. 
	nop			;4901	00 	. 
	nop			;4902	00 	. 
	nop			;4903	00 	. 
	nop			;4904	00 	. 
	nop			;4905	00 	. 
	nop			;4906	00 	. 
	nop			;4907	00 	. 
	nop			;4908	00 	. 
	nop			;4909	00 	. 
	nop			;490a	00 	. 
	nop			;490b	00 	. 
	nop			;490c	00 	. 
	nop			;490d	00 	. 
	nop			;490e	00 	. 
	nop			;490f	00 	. 
	nop			;4910	00 	. 
	nop			;4911	00 	. 
	nop			;4912	00 	. 
	nop			;4913	00 	. 
	nop			;4914	00 	. 
	nop			;4915	00 	. 
	nop			;4916	00 	. 
	nop			;4917	00 	. 
	nop			;4918	00 	. 
	nop			;4919	00 	. 
	nop			;491a	00 	. 
	nop			;491b	00 	. 
	nop			;491c	00 	. 
	nop			;491d	00 	. 
	nop			;491e	00 	. 
	nop			;491f	00 	. 
	nop			;4920	00 	. 
	nop			;4921	00 	. 
	nop			;4922	00 	. 
	nop			;4923	00 	. 
	nop			;4924	00 	. 
	nop			;4925	00 	. 
	nop			;4926	00 	. 
	nop			;4927	00 	. 
	nop			;4928	00 	. 
	nop			;4929	00 	. 
	nop			;492a	00 	. 
	nop			;492b	00 	. 
	nop			;492c	00 	. 
l492dh:
	nop			;492d	00 	. 
	nop			;492e	00 	. 
	nop			;492f	00 	. 
	nop			;4930	00 	. 
	nop			;4931	00 	. 
	nop			;4932	00 	. 
	nop			;4933	00 	. 
	nop			;4934	00 	. 
	nop			;4935	00 	. 
	nop			;4936	00 	. 
	nop			;4937	00 	. 
	nop			;4938	00 	. 
	nop			;4939	00 	. 
	nop			;493a	00 	. 
	nop			;493b	00 	. 
	nop			;493c	00 	. 
	nop			;493d	00 	. 
	nop			;493e	00 	. 
	nop			;493f	00 	. 
	nop			;4940	00 	. 
	nop			;4941	00 	. 
	nop			;4942	00 	. 
	nop			;4943	00 	. 
	nop			;4944	00 	. 
	nop			;4945	00 	. 
	nop			;4946	00 	. 
	nop			;4947	00 	. 
	nop			;4948	00 	. 
	nop			;4949	00 	. 
	nop			;494a	00 	. 
	nop			;494b	00 	. 
l494ch:
	nop			;494c	00 	. 
	nop			;494d	00 	. 
	nop			;494e	00 	. 
	nop			;494f	00 	. 
	nop			;4950	00 	. 
	nop			;4951	00 	. 
	nop			;4952	00 	. 
	nop			;4953	00 	. 
	nop			;4954	00 	. 
	nop			;4955	00 	. 
	nop			;4956	00 	. 
	nop			;4957	00 	. 
	nop			;4958	00 	. 
	nop			;4959	00 	. 
	nop			;495a	00 	. 
	nop			;495b	00 	. 
	nop			;495c	00 	. 
	nop			;495d	00 	. 
	nop			;495e	00 	. 
	nop			;495f	00 	. 
	nop			;4960	00 	. 
	nop			;4961	00 	. 
	nop			;4962	00 	. 
	nop			;4963	00 	. 
	nop			;4964	00 	. 
	nop			;4965	00 	. 
	nop			;4966	00 	. 
	nop			;4967	00 	. 
	nop			;4968	00 	. 
	nop			;4969	00 	. 
	nop			;496a	00 	. 
	nop			;496b	00 	. 
	nop			;496c	00 	. 
	nop			;496d	00 	. 
	nop			;496e	00 	. 
	nop			;496f	00 	. 
	nop			;4970	00 	. 
	nop			;4971	00 	. 
	nop			;4972	00 	. 
	nop			;4973	00 	. 
	nop			;4974	00 	. 
	nop			;4975	00 	. 
	nop			;4976	00 	. 
	nop			;4977	00 	. 
	nop			;4978	00 	. 
	nop			;4979	00 	. 
	nop			;497a	00 	. 
	nop			;497b	00 	. 
	nop			;497c	00 	. 
	nop			;497d	00 	. 
	nop			;497e	00 	. 
	nop			;497f	00 	. 
	nop			;4980	00 	. 
	nop			;4981	00 	. 
	nop			;4982	00 	. 
	nop			;4983	00 	. 
	nop			;4984	00 	. 
	nop			;4985	00 	. 
	nop			;4986	00 	. 
	nop			;4987	00 	. 
	nop			;4988	00 	. 
	nop			;4989	00 	. 
	nop			;498a	00 	. 
	nop			;498b	00 	. 
	nop			;498c	00 	. 
	nop			;498d	00 	. 
	nop			;498e	00 	. 
	nop			;498f	00 	. 
	nop			;4990	00 	. 
	nop			;4991	00 	. 
	nop			;4992	00 	. 
	nop			;4993	00 	. 
	nop			;4994	00 	. 
	nop			;4995	00 	. 
	nop			;4996	00 	. 
	nop			;4997	00 	. 
	nop			;4998	00 	. 
	nop			;4999	00 	. 
	nop			;499a	00 	. 
	nop			;499b	00 	. 
	nop			;499c	00 	. 
	nop			;499d	00 	. 
	nop			;499e	00 	. 
	nop			;499f	00 	. 
	nop			;49a0	00 	. 
	nop			;49a1	00 	. 
	nop			;49a2	00 	. 
	nop			;49a3	00 	. 
	nop			;49a4	00 	. 
	nop			;49a5	00 	. 
	nop			;49a6	00 	. 
	nop			;49a7	00 	. 
	nop			;49a8	00 	. 
	nop			;49a9	00 	. 
	nop			;49aa	00 	. 
	nop			;49ab	00 	. 
	nop			;49ac	00 	. 
	nop			;49ad	00 	. 
	nop			;49ae	00 	. 
	nop			;49af	00 	. 
	nop			;49b0	00 	. 
	nop			;49b1	00 	. 
	nop			;49b2	00 	. 
	nop			;49b3	00 	. 
	nop			;49b4	00 	. 
	nop			;49b5	00 	. 
	nop			;49b6	00 	. 
	nop			;49b7	00 	. 
	nop			;49b8	00 	. 
	nop			;49b9	00 	. 
	nop			;49ba	00 	. 
	nop			;49bb	00 	. 
	nop			;49bc	00 	. 
	nop			;49bd	00 	. 
	nop			;49be	00 	. 
	nop			;49bf	00 	. 
	nop			;49c0	00 	. 
	nop			;49c1	00 	. 
	nop			;49c2	00 	. 
	nop			;49c3	00 	. 
	nop			;49c4	00 	. 
	nop			;49c5	00 	. 
	nop			;49c6	00 	. 
	nop			;49c7	00 	. 
	nop			;49c8	00 	. 
	nop			;49c9	00 	. 
	nop			;49ca	00 	. 
	nop			;49cb	00 	. 
	nop			;49cc	00 	. 
	nop			;49cd	00 	. 
	nop			;49ce	00 	. 
	nop			;49cf	00 	. 
	nop			;49d0	00 	. 
	nop			;49d1	00 	. 
	nop			;49d2	00 	. 
	nop			;49d3	00 	. 
	nop			;49d4	00 	. 
	nop			;49d5	00 	. 
	nop			;49d6	00 	. 
	nop			;49d7	00 	. 
	nop			;49d8	00 	. 
	nop			;49d9	00 	. 
	nop			;49da	00 	. 
	nop			;49db	00 	. 
	nop			;49dc	00 	. 
	nop			;49dd	00 	. 
	nop			;49de	00 	. 
	nop			;49df	00 	. 
	nop			;49e0	00 	. 
	nop			;49e1	00 	. 
	nop			;49e2	00 	. 
	nop			;49e3	00 	. 
	nop			;49e4	00 	. 
	nop			;49e5	00 	. 
	nop			;49e6	00 	. 
	nop			;49e7	00 	. 
	nop			;49e8	00 	. 
	nop			;49e9	00 	. 
	nop			;49ea	00 	. 
	nop			;49eb	00 	. 
	nop			;49ec	00 	. 
	nop			;49ed	00 	. 
	nop			;49ee	00 	. 
	nop			;49ef	00 	. 
	nop			;49f0	00 	. 
	nop			;49f1	00 	. 
	nop			;49f2	00 	. 
	nop			;49f3	00 	. 
	nop			;49f4	00 	. 
	nop			;49f5	00 	. 
	nop			;49f6	00 	. 
	nop			;49f7	00 	. 
	nop			;49f8	00 	. 
	nop			;49f9	00 	. 
	nop			;49fa	00 	. 
	nop			;49fb	00 	. 
	nop			;49fc	00 	. 
	nop			;49fd	00 	. 
	nop			;49fe	00 	. 
	nop			;49ff	00 	. 
	nop			;4a00	00 	. 
	nop			;4a01	00 	. 
	nop			;4a02	00 	. 
	nop			;4a03	00 	. 
	nop			;4a04	00 	. 
	nop			;4a05	00 	. 
	nop			;4a06	00 	. 
	nop			;4a07	00 	. 
	nop			;4a08	00 	. 
	nop			;4a09	00 	. 
	nop			;4a0a	00 	. 
	nop			;4a0b	00 	. 
	nop			;4a0c	00 	. 
	nop			;4a0d	00 	. 
	nop			;4a0e	00 	. 
	nop			;4a0f	00 	. 
	nop			;4a10	00 	. 
	nop			;4a11	00 	. 
	nop			;4a12	00 	. 
	nop			;4a13	00 	. 
	nop			;4a14	00 	. 
	nop			;4a15	00 	. 
	nop			;4a16	00 	. 
	nop			;4a17	00 	. 
	nop			;4a18	00 	. 
	nop			;4a19	00 	. 
	nop			;4a1a	00 	. 
	nop			;4a1b	00 	. 
	nop			;4a1c	00 	. 
	nop			;4a1d	00 	. 
	nop			;4a1e	00 	. 
	nop			;4a1f	00 	. 
	nop			;4a20	00 	. 
	nop			;4a21	00 	. 
	nop			;4a22	00 	. 
	nop			;4a23	00 	. 
	nop			;4a24	00 	. 
	nop			;4a25	00 	. 
	nop			;4a26	00 	. 
	nop			;4a27	00 	. 
	nop			;4a28	00 	. 
	nop			;4a29	00 	. 
	nop			;4a2a	00 	. 
	nop			;4a2b	00 	. 
	nop			;4a2c	00 	. 
	nop			;4a2d	00 	. 
	nop			;4a2e	00 	. 
	nop			;4a2f	00 	. 
	nop			;4a30	00 	. 
	nop			;4a31	00 	. 
	nop			;4a32	00 	. 
	nop			;4a33	00 	. 
	nop			;4a34	00 	. 
	nop			;4a35	00 	. 
	nop			;4a36	00 	. 
	nop			;4a37	00 	. 
	nop			;4a38	00 	. 
	nop			;4a39	00 	. 
	nop			;4a3a	00 	. 
	nop			;4a3b	00 	. 
	nop			;4a3c	00 	. 
	nop			;4a3d	00 	. 
	nop			;4a3e	00 	. 
	nop			;4a3f	00 	. 
	nop			;4a40	00 	. 
	nop			;4a41	00 	. 
	nop			;4a42	00 	. 
	nop			;4a43	00 	. 
	nop			;4a44	00 	. 
	nop			;4a45	00 	. 
	nop			;4a46	00 	. 
	nop			;4a47	00 	. 
	nop			;4a48	00 	. 
	nop			;4a49	00 	. 
	nop			;4a4a	00 	. 
	nop			;4a4b	00 	. 
	nop			;4a4c	00 	. 
	nop			;4a4d	00 	. 
	nop			;4a4e	00 	. 
	nop			;4a4f	00 	. 
	nop			;4a50	00 	. 
	nop			;4a51	00 	. 
	nop			;4a52	00 	. 
	nop			;4a53	00 	. 
	nop			;4a54	00 	. 
	nop			;4a55	00 	. 
	nop			;4a56	00 	. 
	nop			;4a57	00 	. 
	nop			;4a58	00 	. 
	nop			;4a59	00 	. 
	nop			;4a5a	00 	. 
	nop			;4a5b	00 	. 
	nop			;4a5c	00 	. 
	nop			;4a5d	00 	. 
	nop			;4a5e	00 	. 
	nop			;4a5f	00 	. 
	nop			;4a60	00 	. 
	nop			;4a61	00 	. 
	nop			;4a62	00 	. 
	nop			;4a63	00 	. 
	nop			;4a64	00 	. 
	nop			;4a65	00 	. 
	nop			;4a66	00 	. 
	nop			;4a67	00 	. 
	nop			;4a68	00 	. 
	nop			;4a69	00 	. 
	nop			;4a6a	00 	. 
	nop			;4a6b	00 	. 
	nop			;4a6c	00 	. 
	nop			;4a6d	00 	. 
	nop			;4a6e	00 	. 
	nop			;4a6f	00 	. 
	nop			;4a70	00 	. 
	nop			;4a71	00 	. 
	nop			;4a72	00 	. 
	nop			;4a73	00 	. 
	nop			;4a74	00 	. 
	nop			;4a75	00 	. 
	nop			;4a76	00 	. 
	nop			;4a77	00 	. 
	nop			;4a78	00 	. 
	nop			;4a79	00 	. 
	nop			;4a7a	00 	. 
	nop			;4a7b	00 	. 
	nop			;4a7c	00 	. 
	nop			;4a7d	00 	. 
	nop			;4a7e	00 	. 
	nop			;4a7f	00 	. 
	nop			;4a80	00 	. 
	nop			;4a81	00 	. 
	nop			;4a82	00 	. 
	nop			;4a83	00 	. 
	nop			;4a84	00 	. 
	nop			;4a85	00 	. 
	nop			;4a86	00 	. 
	nop			;4a87	00 	. 
	nop			;4a88	00 	. 
	nop			;4a89	00 	. 
	nop			;4a8a	00 	. 
	nop			;4a8b	00 	. 
	nop			;4a8c	00 	. 
	nop			;4a8d	00 	. 
	nop			;4a8e	00 	. 
	nop			;4a8f	00 	. 
	nop			;4a90	00 	. 
	nop			;4a91	00 	. 
	nop			;4a92	00 	. 
	nop			;4a93	00 	. 
	nop			;4a94	00 	. 
	nop			;4a95	00 	. 
	nop			;4a96	00 	. 
	nop			;4a97	00 	. 
	nop			;4a98	00 	. 
	nop			;4a99	00 	. 
	nop			;4a9a	00 	. 
	nop			;4a9b	00 	. 
	nop			;4a9c	00 	. 
	nop			;4a9d	00 	. 
	nop			;4a9e	00 	. 
	nop			;4a9f	00 	. 
	nop			;4aa0	00 	. 
	nop			;4aa1	00 	. 
	nop			;4aa2	00 	. 
	nop			;4aa3	00 	. 
	nop			;4aa4	00 	. 
	nop			;4aa5	00 	. 
	nop			;4aa6	00 	. 
	nop			;4aa7	00 	. 
	nop			;4aa8	00 	. 
	nop			;4aa9	00 	. 
	nop			;4aaa	00 	. 
	nop			;4aab	00 	. 
	nop			;4aac	00 	. 
	nop			;4aad	00 	. 
	nop			;4aae	00 	. 
	nop			;4aaf	00 	. 
	nop			;4ab0	00 	. 
	nop			;4ab1	00 	. 
	nop			;4ab2	00 	. 
	nop			;4ab3	00 	. 
	nop			;4ab4	00 	. 
	nop			;4ab5	00 	. 
	nop			;4ab6	00 	. 
	nop			;4ab7	00 	. 
	nop			;4ab8	00 	. 
	nop			;4ab9	00 	. 
	nop			;4aba	00 	. 
	nop			;4abb	00 	. 
	nop			;4abc	00 	. 
	nop			;4abd	00 	. 
	nop			;4abe	00 	. 
	nop			;4abf	00 	. 
	nop			;4ac0	00 	. 
	nop			;4ac1	00 	. 
	nop			;4ac2	00 	. 
	nop			;4ac3	00 	. 
	nop			;4ac4	00 	. 
	nop			;4ac5	00 	. 
	nop			;4ac6	00 	. 
	nop			;4ac7	00 	. 
	nop			;4ac8	00 	. 
	nop			;4ac9	00 	. 
	nop			;4aca	00 	. 
	nop			;4acb	00 	. 
	nop			;4acc	00 	. 
	nop			;4acd	00 	. 
	nop			;4ace	00 	. 
	nop			;4acf	00 	. 
	nop			;4ad0	00 	. 
	nop			;4ad1	00 	. 
	nop			;4ad2	00 	. 
	nop			;4ad3	00 	. 
	nop			;4ad4	00 	. 
	nop			;4ad5	00 	. 
	nop			;4ad6	00 	. 
	nop			;4ad7	00 	. 
	nop			;4ad8	00 	. 
	nop			;4ad9	00 	. 
	nop			;4ada	00 	. 
	nop			;4adb	00 	. 
	nop			;4adc	00 	. 
	nop			;4add	00 	. 
	nop			;4ade	00 	. 
	nop			;4adf	00 	. 
	nop			;4ae0	00 	. 
	nop			;4ae1	00 	. 
	nop			;4ae2	00 	. 
	nop			;4ae3	00 	. 
	nop			;4ae4	00 	. 
	nop			;4ae5	00 	. 
	nop			;4ae6	00 	. 
	nop			;4ae7	00 	. 
	nop			;4ae8	00 	. 
	nop			;4ae9	00 	. 
	nop			;4aea	00 	. 
	nop			;4aeb	00 	. 
	nop			;4aec	00 	. 
	nop			;4aed	00 	. 
	nop			;4aee	00 	. 
	nop			;4aef	00 	. 
	nop			;4af0	00 	. 
	nop			;4af1	00 	. 
	nop			;4af2	00 	. 
	nop			;4af3	00 	. 
	nop			;4af4	00 	. 
	nop			;4af5	00 	. 
	nop			;4af6	00 	. 
	nop			;4af7	00 	. 
	nop			;4af8	00 	. 
	nop			;4af9	00 	. 
	nop			;4afa	00 	. 
	nop			;4afb	00 	. 
	nop			;4afc	00 	. 
	nop			;4afd	00 	. 
	nop			;4afe	00 	. 
	nop			;4aff	00 	. 
	nop			;4b00	00 	. 
	nop			;4b01	00 	. 
	nop			;4b02	00 	. 
	nop			;4b03	00 	. 
	nop			;4b04	00 	. 
	nop			;4b05	00 	. 
	nop			;4b06	00 	. 
	nop			;4b07	00 	. 
	nop			;4b08	00 	. 
	nop			;4b09	00 	. 
	nop			;4b0a	00 	. 
	nop			;4b0b	00 	. 
	nop			;4b0c	00 	. 
	nop			;4b0d	00 	. 
	nop			;4b0e	00 	. 
	nop			;4b0f	00 	. 
	nop			;4b10	00 	. 
	nop			;4b11	00 	. 
	nop			;4b12	00 	. 
	nop			;4b13	00 	. 
	nop			;4b14	00 	. 
	nop			;4b15	00 	. 
	nop			;4b16	00 	. 
	nop			;4b17	00 	. 
	nop			;4b18	00 	. 
	nop			;4b19	00 	. 
	nop			;4b1a	00 	. 
l4b1bh:
	nop			;4b1b	00 	. 
	nop			;4b1c	00 	. 
	nop			;4b1d	00 	. 
	nop			;4b1e	00 	. 
	nop			;4b1f	00 	. 
	nop			;4b20	00 	. 
	nop			;4b21	00 	. 
	nop			;4b22	00 	. 
	nop			;4b23	00 	. 
	nop			;4b24	00 	. 
	nop			;4b25	00 	. 
	nop			;4b26	00 	. 
	nop			;4b27	00 	. 
	nop			;4b28	00 	. 
	nop			;4b29	00 	. 
	nop			;4b2a	00 	. 
	nop			;4b2b	00 	. 
	nop			;4b2c	00 	. 
	nop			;4b2d	00 	. 
	nop			;4b2e	00 	. 
	nop			;4b2f	00 	. 
	nop			;4b30	00 	. 
	nop			;4b31	00 	. 
	nop			;4b32	00 	. 
	nop			;4b33	00 	. 
	nop			;4b34	00 	. 
	nop			;4b35	00 	. 
	nop			;4b36	00 	. 
	nop			;4b37	00 	. 
	nop			;4b38	00 	. 
	nop			;4b39	00 	. 
	nop			;4b3a	00 	. 
	nop			;4b3b	00 	. 
	nop			;4b3c	00 	. 
	nop			;4b3d	00 	. 
	nop			;4b3e	00 	. 
	nop			;4b3f	00 	. 
	nop			;4b40	00 	. 
	nop			;4b41	00 	. 
	nop			;4b42	00 	. 
	nop			;4b43	00 	. 
	nop			;4b44	00 	. 
	nop			;4b45	00 	. 
	nop			;4b46	00 	. 
	nop			;4b47	00 	. 
	nop			;4b48	00 	. 
	nop			;4b49	00 	. 
	nop			;4b4a	00 	. 
	nop			;4b4b	00 	. 
	nop			;4b4c	00 	. 
	nop			;4b4d	00 	. 
	nop			;4b4e	00 	. 
	nop			;4b4f	00 	. 
	nop			;4b50	00 	. 
	nop			;4b51	00 	. 
	nop			;4b52	00 	. 
	nop			;4b53	00 	. 
	nop			;4b54	00 	. 
	nop			;4b55	00 	. 
	nop			;4b56	00 	. 
	nop			;4b57	00 	. 
	nop			;4b58	00 	. 
	nop			;4b59	00 	. 
	nop			;4b5a	00 	. 
	nop			;4b5b	00 	. 
	nop			;4b5c	00 	. 
	nop			;4b5d	00 	. 
	nop			;4b5e	00 	. 
	nop			;4b5f	00 	. 
	nop			;4b60	00 	. 
	nop			;4b61	00 	. 
	nop			;4b62	00 	. 
	nop			;4b63	00 	. 
	nop			;4b64	00 	. 
	nop			;4b65	00 	. 
	nop			;4b66	00 	. 
	nop			;4b67	00 	. 
	nop			;4b68	00 	. 
	nop			;4b69	00 	. 
	nop			;4b6a	00 	. 
	nop			;4b6b	00 	. 
	nop			;4b6c	00 	. 
	nop			;4b6d	00 	. 
	nop			;4b6e	00 	. 
	nop			;4b6f	00 	. 
	nop			;4b70	00 	. 
	nop			;4b71	00 	. 
	nop			;4b72	00 	. 
	nop			;4b73	00 	. 
	nop			;4b74	00 	. 
	nop			;4b75	00 	. 
	nop			;4b76	00 	. 
	nop			;4b77	00 	. 
	nop			;4b78	00 	. 
	nop			;4b79	00 	. 
	nop			;4b7a	00 	. 
	nop			;4b7b	00 	. 
	nop			;4b7c	00 	. 
	nop			;4b7d	00 	. 
	nop			;4b7e	00 	. 
	nop			;4b7f	00 	. 
	nop			;4b80	00 	. 
	nop			;4b81	00 	. 
	nop			;4b82	00 	. 
	nop			;4b83	00 	. 
	nop			;4b84	00 	. 
	nop			;4b85	00 	. 
	nop			;4b86	00 	. 
	nop			;4b87	00 	. 
	nop			;4b88	00 	. 
	nop			;4b89	00 	. 
	nop			;4b8a	00 	. 
	nop			;4b8b	00 	. 
	nop			;4b8c	00 	. 
	nop			;4b8d	00 	. 
	nop			;4b8e	00 	. 
	nop			;4b8f	00 	. 
	nop			;4b90	00 	. 
	nop			;4b91	00 	. 
	nop			;4b92	00 	. 
	nop			;4b93	00 	. 
	nop			;4b94	00 	. 
	nop			;4b95	00 	. 
	nop			;4b96	00 	. 
	nop			;4b97	00 	. 
	nop			;4b98	00 	. 
	nop			;4b99	00 	. 
	nop			;4b9a	00 	. 
	nop			;4b9b	00 	. 
	nop			;4b9c	00 	. 
	nop			;4b9d	00 	. 
	nop			;4b9e	00 	. 
	nop			;4b9f	00 	. 
	nop			;4ba0	00 	. 
	nop			;4ba1	00 	. 
	nop			;4ba2	00 	. 
	nop			;4ba3	00 	. 
	nop			;4ba4	00 	. 
	nop			;4ba5	00 	. 
	nop			;4ba6	00 	. 
	nop			;4ba7	00 	. 
	nop			;4ba8	00 	. 
	nop			;4ba9	00 	. 
	nop			;4baa	00 	. 
	nop			;4bab	00 	. 
	nop			;4bac	00 	. 
	nop			;4bad	00 	. 
	nop			;4bae	00 	. 
	nop			;4baf	00 	. 
	nop			;4bb0	00 	. 
	nop			;4bb1	00 	. 
	nop			;4bb2	00 	. 
	nop			;4bb3	00 	. 
	nop			;4bb4	00 	. 
	nop			;4bb5	00 	. 
	nop			;4bb6	00 	. 
	nop			;4bb7	00 	. 
	nop			;4bb8	00 	. 
	nop			;4bb9	00 	. 
	nop			;4bba	00 	. 
	nop			;4bbb	00 	. 
	nop			;4bbc	00 	. 
	nop			;4bbd	00 	. 
	nop			;4bbe	00 	. 
	nop			;4bbf	00 	. 
	nop			;4bc0	00 	. 
	nop			;4bc1	00 	. 
	nop			;4bc2	00 	. 
	nop			;4bc3	00 	. 
	nop			;4bc4	00 	. 
	nop			;4bc5	00 	. 
	nop			;4bc6	00 	. 
	nop			;4bc7	00 	. 
	nop			;4bc8	00 	. 
	nop			;4bc9	00 	. 
	nop			;4bca	00 	. 
	nop			;4bcb	00 	. 
	nop			;4bcc	00 	. 
	nop			;4bcd	00 	. 
	nop			;4bce	00 	. 
	nop			;4bcf	00 	. 
	nop			;4bd0	00 	. 
	nop			;4bd1	00 	. 
	nop			;4bd2	00 	. 
	nop			;4bd3	00 	. 
	nop			;4bd4	00 	. 
	nop			;4bd5	00 	. 
	nop			;4bd6	00 	. 
	nop			;4bd7	00 	. 
	nop			;4bd8	00 	. 
	nop			;4bd9	00 	. 
	nop			;4bda	00 	. 
	nop			;4bdb	00 	. 
	nop			;4bdc	00 	. 
	nop			;4bdd	00 	. 
	nop			;4bde	00 	. 
	nop			;4bdf	00 	. 
	nop			;4be0	00 	. 
	nop			;4be1	00 	. 
	nop			;4be2	00 	. 
	nop			;4be3	00 	. 
	nop			;4be4	00 	. 
	nop			;4be5	00 	. 
	nop			;4be6	00 	. 
	nop			;4be7	00 	. 
	nop			;4be8	00 	. 
	nop			;4be9	00 	. 
	nop			;4bea	00 	. 
	nop			;4beb	00 	. 
	nop			;4bec	00 	. 
	nop			;4bed	00 	. 
	nop			;4bee	00 	. 
	nop			;4bef	00 	. 
	nop			;4bf0	00 	. 
	nop			;4bf1	00 	. 
	nop			;4bf2	00 	. 
	nop			;4bf3	00 	. 
	nop			;4bf4	00 	. 
	nop			;4bf5	00 	. 
	nop			;4bf6	00 	. 
	nop			;4bf7	00 	. 
	nop			;4bf8	00 	. 
	nop			;4bf9	00 	. 
	nop			;4bfa	00 	. 
	nop			;4bfb	00 	. 
	nop			;4bfc	00 	. 
	nop			;4bfd	00 	. 
	nop			;4bfe	00 	. 
	nop			;4bff	00 	. 
	nop			;4c00	00 	. 
	nop			;4c01	00 	. 
	nop			;4c02	00 	. 
	nop			;4c03	00 	. 
	nop			;4c04	00 	. 
	nop			;4c05	00 	. 
	nop			;4c06	00 	. 
	nop			;4c07	00 	. 
	nop			;4c08	00 	. 
	nop			;4c09	00 	. 
	nop			;4c0a	00 	. 
	nop			;4c0b	00 	. 
	nop			;4c0c	00 	. 
	nop			;4c0d	00 	. 
	nop			;4c0e	00 	. 
	nop			;4c0f	00 	. 
	nop			;4c10	00 	. 
	nop			;4c11	00 	. 
	nop			;4c12	00 	. 
	nop			;4c13	00 	. 
	nop			;4c14	00 	. 
	nop			;4c15	00 	. 
	nop			;4c16	00 	. 
	nop			;4c17	00 	. 
	nop			;4c18	00 	. 
	nop			;4c19	00 	. 
	nop			;4c1a	00 	. 
	nop			;4c1b	00 	. 
	nop			;4c1c	00 	. 
	nop			;4c1d	00 	. 
	nop			;4c1e	00 	. 
	nop			;4c1f	00 	. 
	nop			;4c20	00 	. 
	nop			;4c21	00 	. 
	nop			;4c22	00 	. 
	nop			;4c23	00 	. 
	nop			;4c24	00 	. 
	nop			;4c25	00 	. 
	nop			;4c26	00 	. 
	nop			;4c27	00 	. 
	nop			;4c28	00 	. 
	nop			;4c29	00 	. 
	nop			;4c2a	00 	. 
	nop			;4c2b	00 	. 
	nop			;4c2c	00 	. 
	nop			;4c2d	00 	. 
	nop			;4c2e	00 	. 
	nop			;4c2f	00 	. 
	nop			;4c30	00 	. 
	nop			;4c31	00 	. 
	nop			;4c32	00 	. 
	nop			;4c33	00 	. 
	nop			;4c34	00 	. 
	nop			;4c35	00 	. 
	nop			;4c36	00 	. 
	nop			;4c37	00 	. 
	nop			;4c38	00 	. 
	nop			;4c39	00 	. 
	nop			;4c3a	00 	. 
	nop			;4c3b	00 	. 
	nop			;4c3c	00 	. 
	nop			;4c3d	00 	. 
	nop			;4c3e	00 	. 
	nop			;4c3f	00 	. 
	nop			;4c40	00 	. 
	nop			;4c41	00 	. 
l4c42h:
	nop			;4c42	00 	. 
	nop			;4c43	00 	. 
	nop			;4c44	00 	. 
	nop			;4c45	00 	. 
	nop			;4c46	00 	. 
	nop			;4c47	00 	. 
	nop			;4c48	00 	. 
	nop			;4c49	00 	. 
	nop			;4c4a	00 	. 
	nop			;4c4b	00 	. 
	nop			;4c4c	00 	. 
	nop			;4c4d	00 	. 
	nop			;4c4e	00 	. 
	nop			;4c4f	00 	. 
	nop			;4c50	00 	. 
	nop			;4c51	00 	. 
	nop			;4c52	00 	. 
	nop			;4c53	00 	. 
	nop			;4c54	00 	. 
	nop			;4c55	00 	. 
	nop			;4c56	00 	. 
	nop			;4c57	00 	. 
	nop			;4c58	00 	. 
	nop			;4c59	00 	. 
	nop			;4c5a	00 	. 
	nop			;4c5b	00 	. 
	nop			;4c5c	00 	. 
	nop			;4c5d	00 	. 
	nop			;4c5e	00 	. 
	nop			;4c5f	00 	. 
	nop			;4c60	00 	. 
	nop			;4c61	00 	. 
	nop			;4c62	00 	. 
	nop			;4c63	00 	. 
	nop			;4c64	00 	. 
	nop			;4c65	00 	. 
	nop			;4c66	00 	. 
	nop			;4c67	00 	. 
	nop			;4c68	00 	. 
	nop			;4c69	00 	. 
	nop			;4c6a	00 	. 
	nop			;4c6b	00 	. 
	nop			;4c6c	00 	. 
	nop			;4c6d	00 	. 
	nop			;4c6e	00 	. 
	nop			;4c6f	00 	. 
	nop			;4c70	00 	. 
	nop			;4c71	00 	. 
	nop			;4c72	00 	. 
	nop			;4c73	00 	. 
	nop			;4c74	00 	. 
	nop			;4c75	00 	. 
	nop			;4c76	00 	. 
	nop			;4c77	00 	. 
	nop			;4c78	00 	. 
	nop			;4c79	00 	. 
	nop			;4c7a	00 	. 
	nop			;4c7b	00 	. 
	nop			;4c7c	00 	. 
	nop			;4c7d	00 	. 
	nop			;4c7e	00 	. 
	nop			;4c7f	00 	. 
	nop			;4c80	00 	. 
	nop			;4c81	00 	. 
	nop			;4c82	00 	. 
	nop			;4c83	00 	. 
	nop			;4c84	00 	. 
	nop			;4c85	00 	. 
	nop			;4c86	00 	. 
	nop			;4c87	00 	. 
	nop			;4c88	00 	. 
	nop			;4c89	00 	. 
	nop			;4c8a	00 	. 
	nop			;4c8b	00 	. 
	nop			;4c8c	00 	. 
	nop			;4c8d	00 	. 
	nop			;4c8e	00 	. 
	nop			;4c8f	00 	. 
	nop			;4c90	00 	. 
	nop			;4c91	00 	. 
	nop			;4c92	00 	. 
	nop			;4c93	00 	. 
	nop			;4c94	00 	. 
	nop			;4c95	00 	. 
	nop			;4c96	00 	. 
	nop			;4c97	00 	. 
	nop			;4c98	00 	. 
	nop			;4c99	00 	. 
	nop			;4c9a	00 	. 
	nop			;4c9b	00 	. 
	nop			;4c9c	00 	. 
	nop			;4c9d	00 	. 
	nop			;4c9e	00 	. 
	nop			;4c9f	00 	. 
	nop			;4ca0	00 	. 
	nop			;4ca1	00 	. 
	nop			;4ca2	00 	. 
	nop			;4ca3	00 	. 
	nop			;4ca4	00 	. 
	nop			;4ca5	00 	. 
	nop			;4ca6	00 	. 
	nop			;4ca7	00 	. 
	nop			;4ca8	00 	. 
	nop			;4ca9	00 	. 
	nop			;4caa	00 	. 
	nop			;4cab	00 	. 
	nop			;4cac	00 	. 
	nop			;4cad	00 	. 
	nop			;4cae	00 	. 
	nop			;4caf	00 	. 
	nop			;4cb0	00 	. 
	nop			;4cb1	00 	. 
	nop			;4cb2	00 	. 
	nop			;4cb3	00 	. 
	nop			;4cb4	00 	. 
	nop			;4cb5	00 	. 
	nop			;4cb6	00 	. 
	nop			;4cb7	00 	. 
	nop			;4cb8	00 	. 
	nop			;4cb9	00 	. 
	nop			;4cba	00 	. 
	nop			;4cbb	00 	. 
	nop			;4cbc	00 	. 
	nop			;4cbd	00 	. 
	nop			;4cbe	00 	. 
	nop			;4cbf	00 	. 
	nop			;4cc0	00 	. 
	nop			;4cc1	00 	. 
	nop			;4cc2	00 	. 
	nop			;4cc3	00 	. 
	nop			;4cc4	00 	. 
	nop			;4cc5	00 	. 
	nop			;4cc6	00 	. 
	nop			;4cc7	00 	. 
	nop			;4cc8	00 	. 
	nop			;4cc9	00 	. 
	nop			;4cca	00 	. 
	nop			;4ccb	00 	. 
	nop			;4ccc	00 	. 
	nop			;4ccd	00 	. 
	nop			;4cce	00 	. 
	nop			;4ccf	00 	. 
	nop			;4cd0	00 	. 
	nop			;4cd1	00 	. 
	nop			;4cd2	00 	. 
	nop			;4cd3	00 	. 
	nop			;4cd4	00 	. 
	nop			;4cd5	00 	. 
	nop			;4cd6	00 	. 
	nop			;4cd7	00 	. 
	nop			;4cd8	00 	. 
	nop			;4cd9	00 	. 
	nop			;4cda	00 	. 
	nop			;4cdb	00 	. 
	nop			;4cdc	00 	. 
	nop			;4cdd	00 	. 
	nop			;4cde	00 	. 
	nop			;4cdf	00 	. 
	nop			;4ce0	00 	. 
	nop			;4ce1	00 	. 
	nop			;4ce2	00 	. 
	nop			;4ce3	00 	. 
	nop			;4ce4	00 	. 
	nop			;4ce5	00 	. 
	nop			;4ce6	00 	. 
	nop			;4ce7	00 	. 
	nop			;4ce8	00 	. 
	nop			;4ce9	00 	. 
	nop			;4cea	00 	. 
	nop			;4ceb	00 	. 
	nop			;4cec	00 	. 
	nop			;4ced	00 	. 
	nop			;4cee	00 	. 
	nop			;4cef	00 	. 
	nop			;4cf0	00 	. 
	nop			;4cf1	00 	. 
	nop			;4cf2	00 	. 
	nop			;4cf3	00 	. 
	nop			;4cf4	00 	. 
	nop			;4cf5	00 	. 
	nop			;4cf6	00 	. 
	nop			;4cf7	00 	. 
	nop			;4cf8	00 	. 
	nop			;4cf9	00 	. 
	nop			;4cfa	00 	. 
	nop			;4cfb	00 	. 
	nop			;4cfc	00 	. 
	nop			;4cfd	00 	. 
	nop			;4cfe	00 	. 
	nop			;4cff	00 	. 
	nop			;4d00	00 	. 
	nop			;4d01	00 	. 
	nop			;4d02	00 	. 
	nop			;4d03	00 	. 
	nop			;4d04	00 	. 
	nop			;4d05	00 	. 
	nop			;4d06	00 	. 
	nop			;4d07	00 	. 
	nop			;4d08	00 	. 
	nop			;4d09	00 	. 
	nop			;4d0a	00 	. 
	nop			;4d0b	00 	. 
	nop			;4d0c	00 	. 
	nop			;4d0d	00 	. 
	nop			;4d0e	00 	. 
	nop			;4d0f	00 	. 
	nop			;4d10	00 	. 
	nop			;4d11	00 	. 
	nop			;4d12	00 	. 
	nop			;4d13	00 	. 
	nop			;4d14	00 	. 
	nop			;4d15	00 	. 
	nop			;4d16	00 	. 
	nop			;4d17	00 	. 
	nop			;4d18	00 	. 
	nop			;4d19	00 	. 
	nop			;4d1a	00 	. 
	nop			;4d1b	00 	. 
	nop			;4d1c	00 	. 
	nop			;4d1d	00 	. 
	nop			;4d1e	00 	. 
	nop			;4d1f	00 	. 
	nop			;4d20	00 	. 
	nop			;4d21	00 	. 
	nop			;4d22	00 	. 
	nop			;4d23	00 	. 
	nop			;4d24	00 	. 
	nop			;4d25	00 	. 
	nop			;4d26	00 	. 
	nop			;4d27	00 	. 
	nop			;4d28	00 	. 
	nop			;4d29	00 	. 
	nop			;4d2a	00 	. 
	nop			;4d2b	00 	. 
	nop			;4d2c	00 	. 
	nop			;4d2d	00 	. 
	nop			;4d2e	00 	. 
	nop			;4d2f	00 	. 
	nop			;4d30	00 	. 
	nop			;4d31	00 	. 
	nop			;4d32	00 	. 
	nop			;4d33	00 	. 
	nop			;4d34	00 	. 
	nop			;4d35	00 	. 
	nop			;4d36	00 	. 
	nop			;4d37	00 	. 
	nop			;4d38	00 	. 
	nop			;4d39	00 	. 
	nop			;4d3a	00 	. 
	nop			;4d3b	00 	. 
	nop			;4d3c	00 	. 
	nop			;4d3d	00 	. 
	nop			;4d3e	00 	. 
	nop			;4d3f	00 	. 
	nop			;4d40	00 	. 
	nop			;4d41	00 	. 
	nop			;4d42	00 	. 
	nop			;4d43	00 	. 
	nop			;4d44	00 	. 
	nop			;4d45	00 	. 
	nop			;4d46	00 	. 
	nop			;4d47	00 	. 
	nop			;4d48	00 	. 
	nop			;4d49	00 	. 
	nop			;4d4a	00 	. 
	nop			;4d4b	00 	. 
	nop			;4d4c	00 	. 
	nop			;4d4d	00 	. 
	nop			;4d4e	00 	. 
	nop			;4d4f	00 	. 
	nop			;4d50	00 	. 
	nop			;4d51	00 	. 
	nop			;4d52	00 	. 
	nop			;4d53	00 	. 
	nop			;4d54	00 	. 
	nop			;4d55	00 	. 
	nop			;4d56	00 	. 
	nop			;4d57	00 	. 
	nop			;4d58	00 	. 
	nop			;4d59	00 	. 
	nop			;4d5a	00 	. 
	nop			;4d5b	00 	. 
	nop			;4d5c	00 	. 
	nop			;4d5d	00 	. 
	nop			;4d5e	00 	. 
	nop			;4d5f	00 	. 
	nop			;4d60	00 	. 
	nop			;4d61	00 	. 
	nop			;4d62	00 	. 
	nop			;4d63	00 	. 
	nop			;4d64	00 	. 
	nop			;4d65	00 	. 
	nop			;4d66	00 	. 
	nop			;4d67	00 	. 
	nop			;4d68	00 	. 
	nop			;4d69	00 	. 
	nop			;4d6a	00 	. 
	nop			;4d6b	00 	. 
	nop			;4d6c	00 	. 
	nop			;4d6d	00 	. 
	nop			;4d6e	00 	. 
	nop			;4d6f	00 	. 
	nop			;4d70	00 	. 
	nop			;4d71	00 	. 
	nop			;4d72	00 	. 
	nop			;4d73	00 	. 
	nop			;4d74	00 	. 
	nop			;4d75	00 	. 
	nop			;4d76	00 	. 
	nop			;4d77	00 	. 
	nop			;4d78	00 	. 
	nop			;4d79	00 	. 
	nop			;4d7a	00 	. 
	nop			;4d7b	00 	. 
	nop			;4d7c	00 	. 
	nop			;4d7d	00 	. 
	nop			;4d7e	00 	. 
	nop			;4d7f	00 	. 
	nop			;4d80	00 	. 
	nop			;4d81	00 	. 
	nop			;4d82	00 	. 
	nop			;4d83	00 	. 
	nop			;4d84	00 	. 
	nop			;4d85	00 	. 
	nop			;4d86	00 	. 
	nop			;4d87	00 	. 
	nop			;4d88	00 	. 
	nop			;4d89	00 	. 
	nop			;4d8a	00 	. 
	nop			;4d8b	00 	. 
	nop			;4d8c	00 	. 
	nop			;4d8d	00 	. 
	nop			;4d8e	00 	. 
	nop			;4d8f	00 	. 
	nop			;4d90	00 	. 
	nop			;4d91	00 	. 
	nop			;4d92	00 	. 
	nop			;4d93	00 	. 
	nop			;4d94	00 	. 
	nop			;4d95	00 	. 
	nop			;4d96	00 	. 
	nop			;4d97	00 	. 
	nop			;4d98	00 	. 
	nop			;4d99	00 	. 
	nop			;4d9a	00 	. 
	nop			;4d9b	00 	. 
	nop			;4d9c	00 	. 
	nop			;4d9d	00 	. 
	nop			;4d9e	00 	. 
	nop			;4d9f	00 	. 
	nop			;4da0	00 	. 
	nop			;4da1	00 	. 
	nop			;4da2	00 	. 
	nop			;4da3	00 	. 
	nop			;4da4	00 	. 
	nop			;4da5	00 	. 
	nop			;4da6	00 	. 
	nop			;4da7	00 	. 
	nop			;4da8	00 	. 
	nop			;4da9	00 	. 
	nop			;4daa	00 	. 
	nop			;4dab	00 	. 
	nop			;4dac	00 	. 
	nop			;4dad	00 	. 
	nop			;4dae	00 	. 
	nop			;4daf	00 	. 
	nop			;4db0	00 	. 
	nop			;4db1	00 	. 
	nop			;4db2	00 	. 
	nop			;4db3	00 	. 
	nop			;4db4	00 	. 
	nop			;4db5	00 	. 
	nop			;4db6	00 	. 
	nop			;4db7	00 	. 
	nop			;4db8	00 	. 
	nop			;4db9	00 	. 
	nop			;4dba	00 	. 
	nop			;4dbb	00 	. 
	nop			;4dbc	00 	. 
	nop			;4dbd	00 	. 
	nop			;4dbe	00 	. 
	nop			;4dbf	00 	. 
	nop			;4dc0	00 	. 
	nop			;4dc1	00 	. 
	nop			;4dc2	00 	. 
	nop			;4dc3	00 	. 
	nop			;4dc4	00 	. 
	nop			;4dc5	00 	. 
	nop			;4dc6	00 	. 
	nop			;4dc7	00 	. 
	nop			;4dc8	00 	. 
	nop			;4dc9	00 	. 
	nop			;4dca	00 	. 
	nop			;4dcb	00 	. 
	nop			;4dcc	00 	. 
	nop			;4dcd	00 	. 
	nop			;4dce	00 	. 
	nop			;4dcf	00 	. 
	nop			;4dd0	00 	. 
	nop			;4dd1	00 	. 
	nop			;4dd2	00 	. 
	nop			;4dd3	00 	. 
	nop			;4dd4	00 	. 
	nop			;4dd5	00 	. 
	nop			;4dd6	00 	. 
	nop			;4dd7	00 	. 
	nop			;4dd8	00 	. 
	nop			;4dd9	00 	. 
	nop			;4dda	00 	. 
	nop			;4ddb	00 	. 
	nop			;4ddc	00 	. 
	nop			;4ddd	00 	. 
	nop			;4dde	00 	. 
	nop			;4ddf	00 	. 
	nop			;4de0	00 	. 
	nop			;4de1	00 	. 
	nop			;4de2	00 	. 
	nop			;4de3	00 	. 
	nop			;4de4	00 	. 
	nop			;4de5	00 	. 
	nop			;4de6	00 	. 
	nop			;4de7	00 	. 
	nop			;4de8	00 	. 
	nop			;4de9	00 	. 
	nop			;4dea	00 	. 
	nop			;4deb	00 	. 
	nop			;4dec	00 	. 
	nop			;4ded	00 	. 
	nop			;4dee	00 	. 
	nop			;4def	00 	. 
	nop			;4df0	00 	. 
	nop			;4df1	00 	. 
	nop			;4df2	00 	. 
	nop			;4df3	00 	. 
	nop			;4df4	00 	. 
	nop			;4df5	00 	. 
	nop			;4df6	00 	. 
	nop			;4df7	00 	. 
	nop			;4df8	00 	. 
	nop			;4df9	00 	. 
	nop			;4dfa	00 	. 
	nop			;4dfb	00 	. 
	nop			;4dfc	00 	. 
	nop			;4dfd	00 	. 
	nop			;4dfe	00 	. 
	nop			;4dff	00 	. 
	nop			;4e00	00 	. 
	nop			;4e01	00 	. 
	nop			;4e02	00 	. 
	nop			;4e03	00 	. 
	nop			;4e04	00 	. 
	nop			;4e05	00 	. 
	nop			;4e06	00 	. 
	nop			;4e07	00 	. 
	nop			;4e08	00 	. 
	nop			;4e09	00 	. 
	nop			;4e0a	00 	. 
	nop			;4e0b	00 	. 
	nop			;4e0c	00 	. 
	nop			;4e0d	00 	. 
	nop			;4e0e	00 	. 
	nop			;4e0f	00 	. 
	nop			;4e10	00 	. 
	nop			;4e11	00 	. 
	nop			;4e12	00 	. 
	nop			;4e13	00 	. 
	nop			;4e14	00 	. 
	nop			;4e15	00 	. 
	nop			;4e16	00 	. 
	nop			;4e17	00 	. 
	nop			;4e18	00 	. 
	nop			;4e19	00 	. 
	nop			;4e1a	00 	. 
	nop			;4e1b	00 	. 
	nop			;4e1c	00 	. 
	nop			;4e1d	00 	. 
	nop			;4e1e	00 	. 
	nop			;4e1f	00 	. 
	nop			;4e20	00 	. 
	nop			;4e21	00 	. 
	nop			;4e22	00 	. 
	nop			;4e23	00 	. 
	nop			;4e24	00 	. 
	nop			;4e25	00 	. 
	nop			;4e26	00 	. 
	nop			;4e27	00 	. 
	nop			;4e28	00 	. 
	nop			;4e29	00 	. 
	nop			;4e2a	00 	. 
	nop			;4e2b	00 	. 
	nop			;4e2c	00 	. 
	nop			;4e2d	00 	. 
	nop			;4e2e	00 	. 
	nop			;4e2f	00 	. 
	nop			;4e30	00 	. 
	nop			;4e31	00 	. 
	nop			;4e32	00 	. 
	nop			;4e33	00 	. 
	nop			;4e34	00 	. 
	nop			;4e35	00 	. 
	nop			;4e36	00 	. 
	nop			;4e37	00 	. 
	nop			;4e38	00 	. 
	nop			;4e39	00 	. 
	nop			;4e3a	00 	. 
	nop			;4e3b	00 	. 
	nop			;4e3c	00 	. 
	nop			;4e3d	00 	. 
	nop			;4e3e	00 	. 
	nop			;4e3f	00 	. 
	nop			;4e40	00 	. 
	nop			;4e41	00 	. 
	nop			;4e42	00 	. 
	nop			;4e43	00 	. 
	nop			;4e44	00 	. 
	nop			;4e45	00 	. 
	nop			;4e46	00 	. 
	nop			;4e47	00 	. 
	nop			;4e48	00 	. 
	nop			;4e49	00 	. 
	nop			;4e4a	00 	. 
	nop			;4e4b	00 	. 
	nop			;4e4c	00 	. 
	nop			;4e4d	00 	. 
	nop			;4e4e	00 	. 
	nop			;4e4f	00 	. 
	nop			;4e50	00 	. 
	nop			;4e51	00 	. 
l4e52h:
	nop			;4e52	00 	. 
	nop			;4e53	00 	. 
	nop			;4e54	00 	. 
	nop			;4e55	00 	. 
	nop			;4e56	00 	. 
	nop			;4e57	00 	. 
	nop			;4e58	00 	. 
	nop			;4e59	00 	. 
	nop			;4e5a	00 	. 
	nop			;4e5b	00 	. 
	nop			;4e5c	00 	. 
	nop			;4e5d	00 	. 
	nop			;4e5e	00 	. 
	nop			;4e5f	00 	. 
	nop			;4e60	00 	. 
	nop			;4e61	00 	. 
	nop			;4e62	00 	. 
	nop			;4e63	00 	. 
	nop			;4e64	00 	. 
	nop			;4e65	00 	. 
	nop			;4e66	00 	. 
	nop			;4e67	00 	. 
	nop			;4e68	00 	. 
	nop			;4e69	00 	. 
	nop			;4e6a	00 	. 
	nop			;4e6b	00 	. 
	nop			;4e6c	00 	. 
	nop			;4e6d	00 	. 
	nop			;4e6e	00 	. 
	nop			;4e6f	00 	. 
	nop			;4e70	00 	. 
	nop			;4e71	00 	. 
	nop			;4e72	00 	. 
	nop			;4e73	00 	. 
	nop			;4e74	00 	. 
	nop			;4e75	00 	. 
	nop			;4e76	00 	. 
	nop			;4e77	00 	. 
	nop			;4e78	00 	. 
	nop			;4e79	00 	. 
	nop			;4e7a	00 	. 
	nop			;4e7b	00 	. 
	nop			;4e7c	00 	. 
	nop			;4e7d	00 	. 
	nop			;4e7e	00 	. 
	nop			;4e7f	00 	. 
	nop			;4e80	00 	. 
	nop			;4e81	00 	. 
	nop			;4e82	00 	. 
	nop			;4e83	00 	. 
	nop			;4e84	00 	. 
	nop			;4e85	00 	. 
	nop			;4e86	00 	. 
	nop			;4e87	00 	. 
	nop			;4e88	00 	. 
	nop			;4e89	00 	. 
	nop			;4e8a	00 	. 
	nop			;4e8b	00 	. 
	nop			;4e8c	00 	. 
	nop			;4e8d	00 	. 
	nop			;4e8e	00 	. 
	nop			;4e8f	00 	. 
	nop			;4e90	00 	. 
	nop			;4e91	00 	. 
	nop			;4e92	00 	. 
	nop			;4e93	00 	. 
	nop			;4e94	00 	. 
	nop			;4e95	00 	. 
	nop			;4e96	00 	. 
	nop			;4e97	00 	. 
	nop			;4e98	00 	. 
	nop			;4e99	00 	. 
	nop			;4e9a	00 	. 
	nop			;4e9b	00 	. 
	nop			;4e9c	00 	. 
	nop			;4e9d	00 	. 
	nop			;4e9e	00 	. 
	nop			;4e9f	00 	. 
	nop			;4ea0	00 	. 
	nop			;4ea1	00 	. 
	nop			;4ea2	00 	. 
	nop			;4ea3	00 	. 
	nop			;4ea4	00 	. 
	nop			;4ea5	00 	. 
	nop			;4ea6	00 	. 
	nop			;4ea7	00 	. 
	nop			;4ea8	00 	. 
	nop			;4ea9	00 	. 
	nop			;4eaa	00 	. 
	nop			;4eab	00 	. 
	nop			;4eac	00 	. 
	nop			;4ead	00 	. 
	nop			;4eae	00 	. 
	nop			;4eaf	00 	. 
	nop			;4eb0	00 	. 
	nop			;4eb1	00 	. 
	nop			;4eb2	00 	. 
	nop			;4eb3	00 	. 
	nop			;4eb4	00 	. 
	nop			;4eb5	00 	. 
	nop			;4eb6	00 	. 
	nop			;4eb7	00 	. 
	nop			;4eb8	00 	. 
	nop			;4eb9	00 	. 
	nop			;4eba	00 	. 
	nop			;4ebb	00 	. 
	nop			;4ebc	00 	. 
	nop			;4ebd	00 	. 
	nop			;4ebe	00 	. 
	nop			;4ebf	00 	. 
	nop			;4ec0	00 	. 
	nop			;4ec1	00 	. 
	nop			;4ec2	00 	. 
	nop			;4ec3	00 	. 
	nop			;4ec4	00 	. 
	nop			;4ec5	00 	. 
	nop			;4ec6	00 	. 
	nop			;4ec7	00 	. 
	nop			;4ec8	00 	. 
	nop			;4ec9	00 	. 
	nop			;4eca	00 	. 
	nop			;4ecb	00 	. 
	nop			;4ecc	00 	. 
	nop			;4ecd	00 	. 
	nop			;4ece	00 	. 
	nop			;4ecf	00 	. 
	nop			;4ed0	00 	. 
	nop			;4ed1	00 	. 
	nop			;4ed2	00 	. 
	nop			;4ed3	00 	. 
	nop			;4ed4	00 	. 
	nop			;4ed5	00 	. 
	nop			;4ed6	00 	. 
	nop			;4ed7	00 	. 
	nop			;4ed8	00 	. 
	nop			;4ed9	00 	. 
	nop			;4eda	00 	. 
	nop			;4edb	00 	. 
	nop			;4edc	00 	. 
	nop			;4edd	00 	. 
	nop			;4ede	00 	. 
	nop			;4edf	00 	. 
	nop			;4ee0	00 	. 
	nop			;4ee1	00 	. 
	nop			;4ee2	00 	. 
	nop			;4ee3	00 	. 
	nop			;4ee4	00 	. 
	nop			;4ee5	00 	. 
	nop			;4ee6	00 	. 
	nop			;4ee7	00 	. 
	nop			;4ee8	00 	. 
	nop			;4ee9	00 	. 
	nop			;4eea	00 	. 
	nop			;4eeb	00 	. 
	nop			;4eec	00 	. 
	nop			;4eed	00 	. 
	nop			;4eee	00 	. 
	nop			;4eef	00 	. 
	nop			;4ef0	00 	. 
	nop			;4ef1	00 	. 
	nop			;4ef2	00 	. 
	nop			;4ef3	00 	. 
	nop			;4ef4	00 	. 
	nop			;4ef5	00 	. 
	nop			;4ef6	00 	. 
	nop			;4ef7	00 	. 
	nop			;4ef8	00 	. 
	nop			;4ef9	00 	. 
	nop			;4efa	00 	. 
	nop			;4efb	00 	. 
	nop			;4efc	00 	. 
	nop			;4efd	00 	. 
	nop			;4efe	00 	. 
	nop			;4eff	00 	. 
	nop			;4f00	00 	. 
	nop			;4f01	00 	. 
	nop			;4f02	00 	. 
	nop			;4f03	00 	. 
	nop			;4f04	00 	. 
	nop			;4f05	00 	. 
	nop			;4f06	00 	. 
	nop			;4f07	00 	. 
	nop			;4f08	00 	. 
	nop			;4f09	00 	. 
	nop			;4f0a	00 	. 
	nop			;4f0b	00 	. 
	nop			;4f0c	00 	. 
	nop			;4f0d	00 	. 
	nop			;4f0e	00 	. 
	nop			;4f0f	00 	. 
	nop			;4f10	00 	. 
	nop			;4f11	00 	. 
	nop			;4f12	00 	. 
	nop			;4f13	00 	. 
	nop			;4f14	00 	. 
	nop			;4f15	00 	. 
	nop			;4f16	00 	. 
	nop			;4f17	00 	. 
	nop			;4f18	00 	. 
	nop			;4f19	00 	. 
	nop			;4f1a	00 	. 
	nop			;4f1b	00 	. 
	nop			;4f1c	00 	. 
	nop			;4f1d	00 	. 
	nop			;4f1e	00 	. 
	nop			;4f1f	00 	. 
	nop			;4f20	00 	. 
	nop			;4f21	00 	. 
	nop			;4f22	00 	. 
	nop			;4f23	00 	. 
	nop			;4f24	00 	. 
	nop			;4f25	00 	. 
	nop			;4f26	00 	. 
	nop			;4f27	00 	. 
	nop			;4f28	00 	. 
	nop			;4f29	00 	. 
	nop			;4f2a	00 	. 
	nop			;4f2b	00 	. 
	nop			;4f2c	00 	. 
	nop			;4f2d	00 	. 
	nop			;4f2e	00 	. 
	nop			;4f2f	00 	. 
	nop			;4f30	00 	. 
	nop			;4f31	00 	. 
	nop			;4f32	00 	. 
	nop			;4f33	00 	. 
	nop			;4f34	00 	. 
	nop			;4f35	00 	. 
	nop			;4f36	00 	. 
	nop			;4f37	00 	. 
	nop			;4f38	00 	. 
	nop			;4f39	00 	. 
	nop			;4f3a	00 	. 
	nop			;4f3b	00 	. 
	nop			;4f3c	00 	. 
	nop			;4f3d	00 	. 
	nop			;4f3e	00 	. 
	nop			;4f3f	00 	. 
	nop			;4f40	00 	. 
	nop			;4f41	00 	. 
	nop			;4f42	00 	. 
	nop			;4f43	00 	. 
	nop			;4f44	00 	. 
	nop			;4f45	00 	. 
	nop			;4f46	00 	. 
	nop			;4f47	00 	. 
	nop			;4f48	00 	. 
	nop			;4f49	00 	. 
	nop			;4f4a	00 	. 
	nop			;4f4b	00 	. 
	nop			;4f4c	00 	. 
	nop			;4f4d	00 	. 
	nop			;4f4e	00 	. 
	nop			;4f4f	00 	. 
	nop			;4f50	00 	. 
	nop			;4f51	00 	. 
	nop			;4f52	00 	. 
	nop			;4f53	00 	. 
	nop			;4f54	00 	. 
	nop			;4f55	00 	. 
	nop			;4f56	00 	. 
	nop			;4f57	00 	. 
	nop			;4f58	00 	. 
	nop			;4f59	00 	. 
	nop			;4f5a	00 	. 
	nop			;4f5b	00 	. 
	nop			;4f5c	00 	. 
	nop			;4f5d	00 	. 
	nop			;4f5e	00 	. 
	nop			;4f5f	00 	. 
	nop			;4f60	00 	. 
	nop			;4f61	00 	. 
	nop			;4f62	00 	. 
	nop			;4f63	00 	. 
	nop			;4f64	00 	. 
	nop			;4f65	00 	. 
	nop			;4f66	00 	. 
	nop			;4f67	00 	. 
	nop			;4f68	00 	. 
	nop			;4f69	00 	. 
	nop			;4f6a	00 	. 
	nop			;4f6b	00 	. 
	nop			;4f6c	00 	. 
	nop			;4f6d	00 	. 
	nop			;4f6e	00 	. 
	nop			;4f6f	00 	. 
	nop			;4f70	00 	. 
	nop			;4f71	00 	. 
	nop			;4f72	00 	. 
	nop			;4f73	00 	. 
	nop			;4f74	00 	. 
	nop			;4f75	00 	. 
	nop			;4f76	00 	. 
	nop			;4f77	00 	. 
	nop			;4f78	00 	. 
	nop			;4f79	00 	. 
	nop			;4f7a	00 	. 
	nop			;4f7b	00 	. 
	nop			;4f7c	00 	. 
	nop			;4f7d	00 	. 
	nop			;4f7e	00 	. 
	nop			;4f7f	00 	. 
	nop			;4f80	00 	. 
	nop			;4f81	00 	. 
	nop			;4f82	00 	. 
	nop			;4f83	00 	. 
	nop			;4f84	00 	. 
	nop			;4f85	00 	. 
	nop			;4f86	00 	. 
	nop			;4f87	00 	. 
	nop			;4f88	00 	. 
	nop			;4f89	00 	. 
	nop			;4f8a	00 	. 
	nop			;4f8b	00 	. 
	nop			;4f8c	00 	. 
	nop			;4f8d	00 	. 
	nop			;4f8e	00 	. 
	nop			;4f8f	00 	. 
	nop			;4f90	00 	. 
	nop			;4f91	00 	. 
	nop			;4f92	00 	. 
	nop			;4f93	00 	. 
	nop			;4f94	00 	. 
	nop			;4f95	00 	. 
	nop			;4f96	00 	. 
	nop			;4f97	00 	. 
	nop			;4f98	00 	. 
	nop			;4f99	00 	. 
	nop			;4f9a	00 	. 
	nop			;4f9b	00 	. 
	nop			;4f9c	00 	. 
	nop			;4f9d	00 	. 
	nop			;4f9e	00 	. 
	nop			;4f9f	00 	. 
	nop			;4fa0	00 	. 
	nop			;4fa1	00 	. 
	nop			;4fa2	00 	. 
	nop			;4fa3	00 	. 
	nop			;4fa4	00 	. 
	nop			;4fa5	00 	. 
	nop			;4fa6	00 	. 
	nop			;4fa7	00 	. 
	nop			;4fa8	00 	. 
	nop			;4fa9	00 	. 
	nop			;4faa	00 	. 
	nop			;4fab	00 	. 
	nop			;4fac	00 	. 
	nop			;4fad	00 	. 
	nop			;4fae	00 	. 
	nop			;4faf	00 	. 
	nop			;4fb0	00 	. 
	nop			;4fb1	00 	. 
	nop			;4fb2	00 	. 
	nop			;4fb3	00 	. 
	nop			;4fb4	00 	. 
	nop			;4fb5	00 	. 
	nop			;4fb6	00 	. 
	nop			;4fb7	00 	. 
	nop			;4fb8	00 	. 
	nop			;4fb9	00 	. 
	nop			;4fba	00 	. 
	nop			;4fbb	00 	. 
	nop			;4fbc	00 	. 
	nop			;4fbd	00 	. 
	nop			;4fbe	00 	. 
	nop			;4fbf	00 	. 
	nop			;4fc0	00 	. 
	nop			;4fc1	00 	. 
	nop			;4fc2	00 	. 
	nop			;4fc3	00 	. 
	nop			;4fc4	00 	. 
	nop			;4fc5	00 	. 
	nop			;4fc6	00 	. 
	nop			;4fc7	00 	. 
	nop			;4fc8	00 	. 
	nop			;4fc9	00 	. 
	nop			;4fca	00 	. 
	nop			;4fcb	00 	. 
	nop			;4fcc	00 	. 
	nop			;4fcd	00 	. 
	nop			;4fce	00 	. 
	nop			;4fcf	00 	. 
	nop			;4fd0	00 	. 
	nop			;4fd1	00 	. 
	nop			;4fd2	00 	. 
	nop			;4fd3	00 	. 
	nop			;4fd4	00 	. 
	nop			;4fd5	00 	. 
	nop			;4fd6	00 	. 
	nop			;4fd7	00 	. 
	nop			;4fd8	00 	. 
	nop			;4fd9	00 	. 
	nop			;4fda	00 	. 
	nop			;4fdb	00 	. 
	nop			;4fdc	00 	. 
	nop			;4fdd	00 	. 
	nop			;4fde	00 	. 
	nop			;4fdf	00 	. 
	nop			;4fe0	00 	. 
	nop			;4fe1	00 	. 
	nop			;4fe2	00 	. 
	nop			;4fe3	00 	. 
	nop			;4fe4	00 	. 
	nop			;4fe5	00 	. 
	nop			;4fe6	00 	. 
	nop			;4fe7	00 	. 
	nop			;4fe8	00 	. 
	nop			;4fe9	00 	. 
	nop			;4fea	00 	. 
	nop			;4feb	00 	. 
	nop			;4fec	00 	. 
	nop			;4fed	00 	. 
	nop			;4fee	00 	. 
	nop			;4fef	00 	. 
	nop			;4ff0	00 	. 
	nop			;4ff1	00 	. 
	nop			;4ff2	00 	. 
	nop			;4ff3	00 	. 
	nop			;4ff4	00 	. 
	nop			;4ff5	00 	. 
	nop			;4ff6	00 	. 
	nop			;4ff7	00 	. 
	nop			;4ff8	00 	. 
	nop			;4ff9	00 	. 
	nop			;4ffa	00 	. 
	nop			;4ffb	00 	. 
	nop			;4ffc	00 	. 
	nop			;4ffd	00 	. 
	nop			;4ffe	00 	. 
	nop			;4fff	00 	. 
	nop			;5000	00 	. 
	nop			;5001	00 	. 
	nop			;5002	00 	. 
	nop			;5003	00 	. 
	nop			;5004	00 	. 
	nop			;5005	00 	. 
	nop			;5006	00 	. 
	nop			;5007	00 	. 
	nop			;5008	00 	. 
	nop			;5009	00 	. 
	nop			;500a	00 	. 
	nop			;500b	00 	. 
	nop			;500c	00 	. 
	nop			;500d	00 	. 
	nop			;500e	00 	. 
	nop			;500f	00 	. 
	nop			;5010	00 	. 
	nop			;5011	00 	. 
	nop			;5012	00 	. 
	nop			;5013	00 	. 
	nop			;5014	00 	. 
	nop			;5015	00 	. 
	nop			;5016	00 	. 
	nop			;5017	00 	. 
	nop			;5018	00 	. 
	nop			;5019	00 	. 
	nop			;501a	00 	. 
	nop			;501b	00 	. 
	nop			;501c	00 	. 
	nop			;501d	00 	. 
	nop			;501e	00 	. 
	nop			;501f	00 	. 
	nop			;5020	00 	. 
	nop			;5021	00 	. 
	nop			;5022	00 	. 
	nop			;5023	00 	. 
	nop			;5024	00 	. 
	nop			;5025	00 	. 
	nop			;5026	00 	. 
	nop			;5027	00 	. 
	nop			;5028	00 	. 
	nop			;5029	00 	. 
	nop			;502a	00 	. 
	nop			;502b	00 	. 
	nop			;502c	00 	. 
	nop			;502d	00 	. 
	nop			;502e	00 	. 
	nop			;502f	00 	. 
	nop			;5030	00 	. 
	nop			;5031	00 	. 
	nop			;5032	00 	. 
	nop			;5033	00 	. 
	nop			;5034	00 	. 
	nop			;5035	00 	. 
	nop			;5036	00 	. 
	nop			;5037	00 	. 
	nop			;5038	00 	. 
	nop			;5039	00 	. 
	nop			;503a	00 	. 
	nop			;503b	00 	. 
	nop			;503c	00 	. 
	nop			;503d	00 	. 
	nop			;503e	00 	. 
	nop			;503f	00 	. 
	nop			;5040	00 	. 
	nop			;5041	00 	. 
	nop			;5042	00 	. 
	nop			;5043	00 	. 
	nop			;5044	00 	. 
	nop			;5045	00 	. 
	nop			;5046	00 	. 
	nop			;5047	00 	. 
	nop			;5048	00 	. 
	nop			;5049	00 	. 
	nop			;504a	00 	. 
	nop			;504b	00 	. 
	nop			;504c	00 	. 
	nop			;504d	00 	. 
	nop			;504e	00 	. 
	nop			;504f	00 	. 
	nop			;5050	00 	. 
	nop			;5051	00 	. 
	nop			;5052	00 	. 
	nop			;5053	00 	. 
	nop			;5054	00 	. 
	nop			;5055	00 	. 
	nop			;5056	00 	. 
	nop			;5057	00 	. 
	nop			;5058	00 	. 
	nop			;5059	00 	. 
	nop			;505a	00 	. 
	nop			;505b	00 	. 
	nop			;505c	00 	. 
	nop			;505d	00 	. 
	nop			;505e	00 	. 
	nop			;505f	00 	. 
	nop			;5060	00 	. 
	nop			;5061	00 	. 
	nop			;5062	00 	. 
	nop			;5063	00 	. 
	nop			;5064	00 	. 
	nop			;5065	00 	. 
	nop			;5066	00 	. 
	nop			;5067	00 	. 
	nop			;5068	00 	. 
	nop			;5069	00 	. 
	nop			;506a	00 	. 
	nop			;506b	00 	. 
	nop			;506c	00 	. 
	nop			;506d	00 	. 
	nop			;506e	00 	. 
	nop			;506f	00 	. 
	nop			;5070	00 	. 
	nop			;5071	00 	. 
	nop			;5072	00 	. 
	nop			;5073	00 	. 
	nop			;5074	00 	. 
	nop			;5075	00 	. 
	nop			;5076	00 	. 
	nop			;5077	00 	. 
	nop			;5078	00 	. 
	nop			;5079	00 	. 
	nop			;507a	00 	. 
	nop			;507b	00 	. 
	nop			;507c	00 	. 
	nop			;507d	00 	. 
	nop			;507e	00 	. 
	nop			;507f	00 	. 
	nop			;5080	00 	. 
	nop			;5081	00 	. 
	nop			;5082	00 	. 
	nop			;5083	00 	. 
	nop			;5084	00 	. 
	nop			;5085	00 	. 
	nop			;5086	00 	. 
	nop			;5087	00 	. 
	nop			;5088	00 	. 
	nop			;5089	00 	. 
	nop			;508a	00 	. 
	nop			;508b	00 	. 
	nop			;508c	00 	. 
	nop			;508d	00 	. 
	nop			;508e	00 	. 
	nop			;508f	00 	. 
	nop			;5090	00 	. 
	nop			;5091	00 	. 
	nop			;5092	00 	. 
	nop			;5093	00 	. 
	nop			;5094	00 	. 
	nop			;5095	00 	. 
	nop			;5096	00 	. 
	nop			;5097	00 	. 
	nop			;5098	00 	. 
	nop			;5099	00 	. 
	nop			;509a	00 	. 
	nop			;509b	00 	. 
	nop			;509c	00 	. 
	nop			;509d	00 	. 
	nop			;509e	00 	. 
	nop			;509f	00 	. 
	nop			;50a0	00 	. 
	nop			;50a1	00 	. 
	nop			;50a2	00 	. 
	nop			;50a3	00 	. 
	nop			;50a4	00 	. 
	nop			;50a5	00 	. 
	nop			;50a6	00 	. 
	nop			;50a7	00 	. 
	nop			;50a8	00 	. 
	nop			;50a9	00 	. 
	nop			;50aa	00 	. 
	nop			;50ab	00 	. 
	nop			;50ac	00 	. 
	nop			;50ad	00 	. 
	nop			;50ae	00 	. 
	nop			;50af	00 	. 
	nop			;50b0	00 	. 
	nop			;50b1	00 	. 
	nop			;50b2	00 	. 
	nop			;50b3	00 	. 
	nop			;50b4	00 	. 
	nop			;50b5	00 	. 
	nop			;50b6	00 	. 
	nop			;50b7	00 	. 
	nop			;50b8	00 	. 
	nop			;50b9	00 	. 
	nop			;50ba	00 	. 
	nop			;50bb	00 	. 
	nop			;50bc	00 	. 
	nop			;50bd	00 	. 
	nop			;50be	00 	. 
	nop			;50bf	00 	. 
	nop			;50c0	00 	. 
	nop			;50c1	00 	. 
	nop			;50c2	00 	. 
	nop			;50c3	00 	. 
	nop			;50c4	00 	. 
	nop			;50c5	00 	. 
	nop			;50c6	00 	. 
	nop			;50c7	00 	. 
	nop			;50c8	00 	. 
	nop			;50c9	00 	. 
	nop			;50ca	00 	. 
	nop			;50cb	00 	. 
	nop			;50cc	00 	. 
	nop			;50cd	00 	. 
	nop			;50ce	00 	. 
	nop			;50cf	00 	. 
	nop			;50d0	00 	. 
	nop			;50d1	00 	. 
	nop			;50d2	00 	. 
	nop			;50d3	00 	. 
	nop			;50d4	00 	. 
	nop			;50d5	00 	. 
	nop			;50d6	00 	. 
	nop			;50d7	00 	. 
	nop			;50d8	00 	. 
	nop			;50d9	00 	. 
	nop			;50da	00 	. 
	nop			;50db	00 	. 
	nop			;50dc	00 	. 
	nop			;50dd	00 	. 
	nop			;50de	00 	. 
	nop			;50df	00 	. 
	nop			;50e0	00 	. 
	nop			;50e1	00 	. 
	nop			;50e2	00 	. 
	nop			;50e3	00 	. 
	nop			;50e4	00 	. 
	nop			;50e5	00 	. 
	nop			;50e6	00 	. 
	nop			;50e7	00 	. 
	nop			;50e8	00 	. 
	nop			;50e9	00 	. 
	nop			;50ea	00 	. 
	nop			;50eb	00 	. 
	nop			;50ec	00 	. 
	nop			;50ed	00 	. 
	nop			;50ee	00 	. 
	nop			;50ef	00 	. 
	nop			;50f0	00 	. 
	nop			;50f1	00 	. 
	nop			;50f2	00 	. 
	nop			;50f3	00 	. 
	nop			;50f4	00 	. 
	nop			;50f5	00 	. 
	nop			;50f6	00 	. 
	nop			;50f7	00 	. 
	nop			;50f8	00 	. 
	nop			;50f9	00 	. 
	nop			;50fa	00 	. 
	nop			;50fb	00 	. 
	nop			;50fc	00 	. 
	nop			;50fd	00 	. 
	nop			;50fe	00 	. 
	nop			;50ff	00 	. 
	nop			;5100	00 	. 
	nop			;5101	00 	. 
	nop			;5102	00 	. 
	nop			;5103	00 	. 
	nop			;5104	00 	. 
	nop			;5105	00 	. 
	nop			;5106	00 	. 
	nop			;5107	00 	. 
	nop			;5108	00 	. 
	nop			;5109	00 	. 
	nop			;510a	00 	. 
	nop			;510b	00 	. 
	nop			;510c	00 	. 
	nop			;510d	00 	. 
	nop			;510e	00 	. 
	nop			;510f	00 	. 
	nop			;5110	00 	. 
	nop			;5111	00 	. 
	nop			;5112	00 	. 
	nop			;5113	00 	. 
	nop			;5114	00 	. 
	nop			;5115	00 	. 
	nop			;5116	00 	. 
	nop			;5117	00 	. 
	nop			;5118	00 	. 
	nop			;5119	00 	. 
	nop			;511a	00 	. 
	nop			;511b	00 	. 
	nop			;511c	00 	. 
	nop			;511d	00 	. 
	nop			;511e	00 	. 
	nop			;511f	00 	. 
	nop			;5120	00 	. 
	nop			;5121	00 	. 
	nop			;5122	00 	. 
	nop			;5123	00 	. 
	nop			;5124	00 	. 
	nop			;5125	00 	. 
	nop			;5126	00 	. 
	nop			;5127	00 	. 
	nop			;5128	00 	. 
	nop			;5129	00 	. 
	nop			;512a	00 	. 
	nop			;512b	00 	. 
	nop			;512c	00 	. 
	nop			;512d	00 	. 
	nop			;512e	00 	. 
	nop			;512f	00 	. 
	nop			;5130	00 	. 
	nop			;5131	00 	. 
	nop			;5132	00 	. 
	nop			;5133	00 	. 
	nop			;5134	00 	. 
	nop			;5135	00 	. 
	nop			;5136	00 	. 
	nop			;5137	00 	. 
	nop			;5138	00 	. 
	nop			;5139	00 	. 
	nop			;513a	00 	. 
	nop			;513b	00 	. 
	nop			;513c	00 	. 
	nop			;513d	00 	. 
	nop			;513e	00 	. 
	nop			;513f	00 	. 
	nop			;5140	00 	. 
	nop			;5141	00 	. 
	nop			;5142	00 	. 
	nop			;5143	00 	. 
	nop			;5144	00 	. 
	nop			;5145	00 	. 
	nop			;5146	00 	. 
	nop			;5147	00 	. 
	nop			;5148	00 	. 
	nop			;5149	00 	. 
	nop			;514a	00 	. 
	nop			;514b	00 	. 
	nop			;514c	00 	. 
	nop			;514d	00 	. 
	nop			;514e	00 	. 
	nop			;514f	00 	. 
	nop			;5150	00 	. 
	nop			;5151	00 	. 
	nop			;5152	00 	. 
	nop			;5153	00 	. 
	nop			;5154	00 	. 
	nop			;5155	00 	. 
	nop			;5156	00 	. 
	nop			;5157	00 	. 
	nop			;5158	00 	. 
	nop			;5159	00 	. 
	nop			;515a	00 	. 
	nop			;515b	00 	. 
	nop			;515c	00 	. 
	nop			;515d	00 	. 
	nop			;515e	00 	. 
	nop			;515f	00 	. 
	nop			;5160	00 	. 
	nop			;5161	00 	. 
	nop			;5162	00 	. 
	nop			;5163	00 	. 
	nop			;5164	00 	. 
	nop			;5165	00 	. 
	nop			;5166	00 	. 
	nop			;5167	00 	. 
	nop			;5168	00 	. 
	nop			;5169	00 	. 
	nop			;516a	00 	. 
	nop			;516b	00 	. 
	nop			;516c	00 	. 
	nop			;516d	00 	. 
	nop			;516e	00 	. 
	nop			;516f	00 	. 
	nop			;5170	00 	. 
	nop			;5171	00 	. 
	nop			;5172	00 	. 
	nop			;5173	00 	. 
	nop			;5174	00 	. 
	nop			;5175	00 	. 
	nop			;5176	00 	. 
	nop			;5177	00 	. 
	nop			;5178	00 	. 
	nop			;5179	00 	. 
	nop			;517a	00 	. 
	nop			;517b	00 	. 
	nop			;517c	00 	. 
	nop			;517d	00 	. 
	nop			;517e	00 	. 
	nop			;517f	00 	. 
	nop			;5180	00 	. 
	nop			;5181	00 	. 
	nop			;5182	00 	. 
	nop			;5183	00 	. 
	nop			;5184	00 	. 
	nop			;5185	00 	. 
	nop			;5186	00 	. 
	nop			;5187	00 	. 
	nop			;5188	00 	. 
	nop			;5189	00 	. 
	nop			;518a	00 	. 
	nop			;518b	00 	. 
	nop			;518c	00 	. 
	nop			;518d	00 	. 
	nop			;518e	00 	. 
	nop			;518f	00 	. 
	nop			;5190	00 	. 
	nop			;5191	00 	. 
	nop			;5192	00 	. 
	nop			;5193	00 	. 
	nop			;5194	00 	. 
	nop			;5195	00 	. 
	nop			;5196	00 	. 
	nop			;5197	00 	. 
	nop			;5198	00 	. 
	nop			;5199	00 	. 
	nop			;519a	00 	. 
	nop			;519b	00 	. 
	nop			;519c	00 	. 
	nop			;519d	00 	. 
	nop			;519e	00 	. 
	nop			;519f	00 	. 
	nop			;51a0	00 	. 
	nop			;51a1	00 	. 
	nop			;51a2	00 	. 
	nop			;51a3	00 	. 
	nop			;51a4	00 	. 
	nop			;51a5	00 	. 
	nop			;51a6	00 	. 
	nop			;51a7	00 	. 
	nop			;51a8	00 	. 
	nop			;51a9	00 	. 
	nop			;51aa	00 	. 
	nop			;51ab	00 	. 
	nop			;51ac	00 	. 
	nop			;51ad	00 	. 
	nop			;51ae	00 	. 
	nop			;51af	00 	. 
	nop			;51b0	00 	. 
	nop			;51b1	00 	. 
	nop			;51b2	00 	. 
	nop			;51b3	00 	. 
	nop			;51b4	00 	. 
	nop			;51b5	00 	. 
	nop			;51b6	00 	. 
	nop			;51b7	00 	. 
	nop			;51b8	00 	. 
	nop			;51b9	00 	. 
	nop			;51ba	00 	. 
	nop			;51bb	00 	. 
	nop			;51bc	00 	. 
	nop			;51bd	00 	. 
	nop			;51be	00 	. 
	nop			;51bf	00 	. 
	nop			;51c0	00 	. 
	nop			;51c1	00 	. 
	nop			;51c2	00 	. 
	nop			;51c3	00 	. 
	nop			;51c4	00 	. 
	nop			;51c5	00 	. 
	nop			;51c6	00 	. 
	nop			;51c7	00 	. 
	nop			;51c8	00 	. 
	nop			;51c9	00 	. 
	nop			;51ca	00 	. 
	nop			;51cb	00 	. 
	nop			;51cc	00 	. 
	nop			;51cd	00 	. 
	nop			;51ce	00 	. 
	nop			;51cf	00 	. 
	nop			;51d0	00 	. 
	nop			;51d1	00 	. 
	nop			;51d2	00 	. 
	nop			;51d3	00 	. 
	nop			;51d4	00 	. 
	nop			;51d5	00 	. 
	nop			;51d6	00 	. 
	nop			;51d7	00 	. 
	nop			;51d8	00 	. 
	nop			;51d9	00 	. 
	nop			;51da	00 	. 
	nop			;51db	00 	. 
	nop			;51dc	00 	. 
	nop			;51dd	00 	. 
	nop			;51de	00 	. 
	nop			;51df	00 	. 
	nop			;51e0	00 	. 
	nop			;51e1	00 	. 
	nop			;51e2	00 	. 
	nop			;51e3	00 	. 
	nop			;51e4	00 	. 
	nop			;51e5	00 	. 
	nop			;51e6	00 	. 
	nop			;51e7	00 	. 
	nop			;51e8	00 	. 
	nop			;51e9	00 	. 
	nop			;51ea	00 	. 
	nop			;51eb	00 	. 
	nop			;51ec	00 	. 
	nop			;51ed	00 	. 
	nop			;51ee	00 	. 
	nop			;51ef	00 	. 
	nop			;51f0	00 	. 
	nop			;51f1	00 	. 
	nop			;51f2	00 	. 
	nop			;51f3	00 	. 
	nop			;51f4	00 	. 
	nop			;51f5	00 	. 
	nop			;51f6	00 	. 
	nop			;51f7	00 	. 
	nop			;51f8	00 	. 
	nop			;51f9	00 	. 
	nop			;51fa	00 	. 
	nop			;51fb	00 	. 
	nop			;51fc	00 	. 
	nop			;51fd	00 	. 
	nop			;51fe	00 	. 
	nop			;51ff	00 	. 
	nop			;5200	00 	. 
	nop			;5201	00 	. 
	nop			;5202	00 	. 
	nop			;5203	00 	. 
	nop			;5204	00 	. 
	nop			;5205	00 	. 
	nop			;5206	00 	. 
	nop			;5207	00 	. 
	nop			;5208	00 	. 
	nop			;5209	00 	. 
	nop			;520a	00 	. 
	nop			;520b	00 	. 
	nop			;520c	00 	. 
	nop			;520d	00 	. 
	nop			;520e	00 	. 
	nop			;520f	00 	. 
	nop			;5210	00 	. 
	nop			;5211	00 	. 
	nop			;5212	00 	. 
	nop			;5213	00 	. 
	nop			;5214	00 	. 
	nop			;5215	00 	. 
	nop			;5216	00 	. 
	nop			;5217	00 	. 
	nop			;5218	00 	. 
	nop			;5219	00 	. 
	nop			;521a	00 	. 
	nop			;521b	00 	. 
	nop			;521c	00 	. 
	nop			;521d	00 	. 
	nop			;521e	00 	. 
	nop			;521f	00 	. 
	nop			;5220	00 	. 
	nop			;5221	00 	. 
	nop			;5222	00 	. 
	nop			;5223	00 	. 
	nop			;5224	00 	. 
	nop			;5225	00 	. 
	nop			;5226	00 	. 
	nop			;5227	00 	. 
	nop			;5228	00 	. 
	nop			;5229	00 	. 
	nop			;522a	00 	. 
	nop			;522b	00 	. 
	nop			;522c	00 	. 
	nop			;522d	00 	. 
	nop			;522e	00 	. 
	nop			;522f	00 	. 
	nop			;5230	00 	. 
	nop			;5231	00 	. 
	nop			;5232	00 	. 
	nop			;5233	00 	. 
	nop			;5234	00 	. 
	nop			;5235	00 	. 
	nop			;5236	00 	. 
	nop			;5237	00 	. 
	nop			;5238	00 	. 
	nop			;5239	00 	. 
	nop			;523a	00 	. 
	nop			;523b	00 	. 
	nop			;523c	00 	. 
	nop			;523d	00 	. 
	nop			;523e	00 	. 
	nop			;523f	00 	. 
	nop			;5240	00 	. 
	nop			;5241	00 	. 
	nop			;5242	00 	. 
	nop			;5243	00 	. 
	nop			;5244	00 	. 
	nop			;5245	00 	. 
	nop			;5246	00 	. 
	nop			;5247	00 	. 
	nop			;5248	00 	. 
	nop			;5249	00 	. 
	nop			;524a	00 	. 
	nop			;524b	00 	. 
	nop			;524c	00 	. 
	nop			;524d	00 	. 
	nop			;524e	00 	. 
	nop			;524f	00 	. 
	nop			;5250	00 	. 
	nop			;5251	00 	. 
	nop			;5252	00 	. 
	nop			;5253	00 	. 
	nop			;5254	00 	. 
	nop			;5255	00 	. 
	nop			;5256	00 	. 
	nop			;5257	00 	. 
	nop			;5258	00 	. 
	nop			;5259	00 	. 
	nop			;525a	00 	. 
	nop			;525b	00 	. 
	nop			;525c	00 	. 
	nop			;525d	00 	. 
	nop			;525e	00 	. 
	nop			;525f	00 	. 
	nop			;5260	00 	. 
	nop			;5261	00 	. 
l5262h:
	nop			;5262	00 	. 
	nop			;5263	00 	. 
	nop			;5264	00 	. 
	nop			;5265	00 	. 
	nop			;5266	00 	. 
	nop			;5267	00 	. 
	nop			;5268	00 	. 
	nop			;5269	00 	. 
	nop			;526a	00 	. 
	nop			;526b	00 	. 
	nop			;526c	00 	. 
	nop			;526d	00 	. 
	nop			;526e	00 	. 
	nop			;526f	00 	. 
	nop			;5270	00 	. 
	nop			;5271	00 	. 
	nop			;5272	00 	. 
	nop			;5273	00 	. 
	nop			;5274	00 	. 
	nop			;5275	00 	. 
	nop			;5276	00 	. 
	nop			;5277	00 	. 
	nop			;5278	00 	. 
	nop			;5279	00 	. 
	nop			;527a	00 	. 
	nop			;527b	00 	. 
	nop			;527c	00 	. 
	nop			;527d	00 	. 
	nop			;527e	00 	. 
	nop			;527f	00 	. 
	nop			;5280	00 	. 
	nop			;5281	00 	. 
	nop			;5282	00 	. 
	nop			;5283	00 	. 
	nop			;5284	00 	. 
	nop			;5285	00 	. 
	nop			;5286	00 	. 
	nop			;5287	00 	. 
	nop			;5288	00 	. 
	nop			;5289	00 	. 
	nop			;528a	00 	. 
	nop			;528b	00 	. 
	nop			;528c	00 	. 
	nop			;528d	00 	. 
	nop			;528e	00 	. 
	nop			;528f	00 	. 
	nop			;5290	00 	. 
	nop			;5291	00 	. 
	nop			;5292	00 	. 
	nop			;5293	00 	. 
	nop			;5294	00 	. 
	nop			;5295	00 	. 
	nop			;5296	00 	. 
	nop			;5297	00 	. 
	nop			;5298	00 	. 
	nop			;5299	00 	. 
	nop			;529a	00 	. 
	nop			;529b	00 	. 
	nop			;529c	00 	. 
	nop			;529d	00 	. 
	nop			;529e	00 	. 
	nop			;529f	00 	. 
	nop			;52a0	00 	. 
	nop			;52a1	00 	. 
	nop			;52a2	00 	. 
	nop			;52a3	00 	. 
	nop			;52a4	00 	. 
	nop			;52a5	00 	. 
	nop			;52a6	00 	. 
	nop			;52a7	00 	. 
	nop			;52a8	00 	. 
	nop			;52a9	00 	. 
	nop			;52aa	00 	. 
	nop			;52ab	00 	. 
	nop			;52ac	00 	. 
	nop			;52ad	00 	. 
	nop			;52ae	00 	. 
	nop			;52af	00 	. 
	nop			;52b0	00 	. 
	nop			;52b1	00 	. 
	nop			;52b2	00 	. 
	nop			;52b3	00 	. 
	nop			;52b4	00 	. 
	nop			;52b5	00 	. 
	nop			;52b6	00 	. 
	nop			;52b7	00 	. 
	nop			;52b8	00 	. 
	nop			;52b9	00 	. 
	nop			;52ba	00 	. 
	nop			;52bb	00 	. 
	nop			;52bc	00 	. 
	nop			;52bd	00 	. 
	nop			;52be	00 	. 
	nop			;52bf	00 	. 
	nop			;52c0	00 	. 
	nop			;52c1	00 	. 
	nop			;52c2	00 	. 
	nop			;52c3	00 	. 
	nop			;52c4	00 	. 
	nop			;52c5	00 	. 
	nop			;52c6	00 	. 
	nop			;52c7	00 	. 
	nop			;52c8	00 	. 
	nop			;52c9	00 	. 
	nop			;52ca	00 	. 
	nop			;52cb	00 	. 
	nop			;52cc	00 	. 
	nop			;52cd	00 	. 
	nop			;52ce	00 	. 
	nop			;52cf	00 	. 
	nop			;52d0	00 	. 
	nop			;52d1	00 	. 
	nop			;52d2	00 	. 
	nop			;52d3	00 	. 
	nop			;52d4	00 	. 
	nop			;52d5	00 	. 
	nop			;52d6	00 	. 
	nop			;52d7	00 	. 
	nop			;52d8	00 	. 
	nop			;52d9	00 	. 
	nop			;52da	00 	. 
	nop			;52db	00 	. 
	nop			;52dc	00 	. 
	nop			;52dd	00 	. 
	nop			;52de	00 	. 
	nop			;52df	00 	. 
	nop			;52e0	00 	. 
	nop			;52e1	00 	. 
	nop			;52e2	00 	. 
	nop			;52e3	00 	. 
	nop			;52e4	00 	. 
	nop			;52e5	00 	. 
	nop			;52e6	00 	. 
	nop			;52e7	00 	. 
	nop			;52e8	00 	. 
	nop			;52e9	00 	. 
	nop			;52ea	00 	. 
	nop			;52eb	00 	. 
	nop			;52ec	00 	. 
	nop			;52ed	00 	. 
	nop			;52ee	00 	. 
	nop			;52ef	00 	. 
	nop			;52f0	00 	. 
	nop			;52f1	00 	. 
	nop			;52f2	00 	. 
	nop			;52f3	00 	. 
	nop			;52f4	00 	. 
	nop			;52f5	00 	. 
	nop			;52f6	00 	. 
	nop			;52f7	00 	. 
	nop			;52f8	00 	. 
	nop			;52f9	00 	. 
	nop			;52fa	00 	. 
	nop			;52fb	00 	. 
	nop			;52fc	00 	. 
	nop			;52fd	00 	. 
	nop			;52fe	00 	. 
	nop			;52ff	00 	. 
	nop			;5300	00 	. 
	nop			;5301	00 	. 
	nop			;5302	00 	. 
	nop			;5303	00 	. 
	nop			;5304	00 	. 
	nop			;5305	00 	. 
	nop			;5306	00 	. 
	nop			;5307	00 	. 
	nop			;5308	00 	. 
	nop			;5309	00 	. 
	nop			;530a	00 	. 
	nop			;530b	00 	. 
	nop			;530c	00 	. 
	nop			;530d	00 	. 
	nop			;530e	00 	. 
	nop			;530f	00 	. 
	nop			;5310	00 	. 
	nop			;5311	00 	. 
	nop			;5312	00 	. 
	nop			;5313	00 	. 
	nop			;5314	00 	. 
	nop			;5315	00 	. 
	nop			;5316	00 	. 
	nop			;5317	00 	. 
	nop			;5318	00 	. 
	nop			;5319	00 	. 
	nop			;531a	00 	. 
	nop			;531b	00 	. 
	nop			;531c	00 	. 
	nop			;531d	00 	. 
	nop			;531e	00 	. 
	nop			;531f	00 	. 
l5320h:
	nop			;5320	00 	. 
	nop			;5321	00 	. 
	nop			;5322	00 	. 
	nop			;5323	00 	. 
	nop			;5324	00 	. 
	nop			;5325	00 	. 
	nop			;5326	00 	. 
	nop			;5327	00 	. 
	nop			;5328	00 	. 
	nop			;5329	00 	. 
	nop			;532a	00 	. 
	nop			;532b	00 	. 
	nop			;532c	00 	. 
	nop			;532d	00 	. 
	nop			;532e	00 	. 
	nop			;532f	00 	. 
	nop			;5330	00 	. 
	nop			;5331	00 	. 
	nop			;5332	00 	. 
	nop			;5333	00 	. 
	nop			;5334	00 	. 
	nop			;5335	00 	. 
	nop			;5336	00 	. 
	nop			;5337	00 	. 
	nop			;5338	00 	. 
	nop			;5339	00 	. 
	nop			;533a	00 	. 
	nop			;533b	00 	. 
	nop			;533c	00 	. 
	nop			;533d	00 	. 
	nop			;533e	00 	. 
	nop			;533f	00 	. 
	nop			;5340	00 	. 
	nop			;5341	00 	. 
	nop			;5342	00 	. 
	nop			;5343	00 	. 
	nop			;5344	00 	. 
	nop			;5345	00 	. 
	nop			;5346	00 	. 
	nop			;5347	00 	. 
	nop			;5348	00 	. 
	nop			;5349	00 	. 
	nop			;534a	00 	. 
	nop			;534b	00 	. 
	nop			;534c	00 	. 
	nop			;534d	00 	. 
	nop			;534e	00 	. 
	nop			;534f	00 	. 
	nop			;5350	00 	. 
	nop			;5351	00 	. 
	nop			;5352	00 	. 
	nop			;5353	00 	. 
	nop			;5354	00 	. 
	nop			;5355	00 	. 
	nop			;5356	00 	. 
	nop			;5357	00 	. 
	nop			;5358	00 	. 
	nop			;5359	00 	. 
	nop			;535a	00 	. 
	nop			;535b	00 	. 
	nop			;535c	00 	. 
	nop			;535d	00 	. 
	nop			;535e	00 	. 
	nop			;535f	00 	. 
	nop			;5360	00 	. 
	nop			;5361	00 	. 
	nop			;5362	00 	. 
	nop			;5363	00 	. 
	nop			;5364	00 	. 
	nop			;5365	00 	. 
	nop			;5366	00 	. 
	nop			;5367	00 	. 
	nop			;5368	00 	. 
	nop			;5369	00 	. 
	nop			;536a	00 	. 
	nop			;536b	00 	. 
	nop			;536c	00 	. 
	nop			;536d	00 	. 
	nop			;536e	00 	. 
	nop			;536f	00 	. 
	nop			;5370	00 	. 
	nop			;5371	00 	. 
	nop			;5372	00 	. 
	nop			;5373	00 	. 
	nop			;5374	00 	. 
	nop			;5375	00 	. 
	nop			;5376	00 	. 
	nop			;5377	00 	. 
	nop			;5378	00 	. 
	nop			;5379	00 	. 
	nop			;537a	00 	. 
	nop			;537b	00 	. 
	nop			;537c	00 	. 
	nop			;537d	00 	. 
	nop			;537e	00 	. 
	nop			;537f	00 	. 
	nop			;5380	00 	. 
	nop			;5381	00 	. 
	nop			;5382	00 	. 
	nop			;5383	00 	. 
	nop			;5384	00 	. 
	nop			;5385	00 	. 
	nop			;5386	00 	. 
	nop			;5387	00 	. 
	nop			;5388	00 	. 
	nop			;5389	00 	. 
	nop			;538a	00 	. 
	nop			;538b	00 	. 
	nop			;538c	00 	. 
	nop			;538d	00 	. 
	nop			;538e	00 	. 
	nop			;538f	00 	. 
	nop			;5390	00 	. 
	nop			;5391	00 	. 
	nop			;5392	00 	. 
	nop			;5393	00 	. 
	nop			;5394	00 	. 
	nop			;5395	00 	. 
	nop			;5396	00 	. 
	nop			;5397	00 	. 
	nop			;5398	00 	. 
	nop			;5399	00 	. 
	nop			;539a	00 	. 
	nop			;539b	00 	. 
	nop			;539c	00 	. 
	nop			;539d	00 	. 
	nop			;539e	00 	. 
	nop			;539f	00 	. 
	nop			;53a0	00 	. 
	nop			;53a1	00 	. 
	nop			;53a2	00 	. 
	nop			;53a3	00 	. 
	nop			;53a4	00 	. 
	nop			;53a5	00 	. 
	nop			;53a6	00 	. 
	nop			;53a7	00 	. 
	nop			;53a8	00 	. 
	nop			;53a9	00 	. 
	nop			;53aa	00 	. 
	nop			;53ab	00 	. 
	nop			;53ac	00 	. 
	nop			;53ad	00 	. 
	nop			;53ae	00 	. 
	nop			;53af	00 	. 
	nop			;53b0	00 	. 
	nop			;53b1	00 	. 
	nop			;53b2	00 	. 
	nop			;53b3	00 	. 
	nop			;53b4	00 	. 
	nop			;53b5	00 	. 
	nop			;53b6	00 	. 
	nop			;53b7	00 	. 
	nop			;53b8	00 	. 
	nop			;53b9	00 	. 
	nop			;53ba	00 	. 
	nop			;53bb	00 	. 
	nop			;53bc	00 	. 
	nop			;53bd	00 	. 
	nop			;53be	00 	. 
	nop			;53bf	00 	. 
	nop			;53c0	00 	. 
	nop			;53c1	00 	. 
	nop			;53c2	00 	. 
	nop			;53c3	00 	. 
	nop			;53c4	00 	. 
	nop			;53c5	00 	. 
	nop			;53c6	00 	. 
	nop			;53c7	00 	. 
	nop			;53c8	00 	. 
	nop			;53c9	00 	. 
	nop			;53ca	00 	. 
	nop			;53cb	00 	. 
	nop			;53cc	00 	. 
	nop			;53cd	00 	. 
	nop			;53ce	00 	. 
	nop			;53cf	00 	. 
	nop			;53d0	00 	. 
	nop			;53d1	00 	. 
	nop			;53d2	00 	. 
	nop			;53d3	00 	. 
	nop			;53d4	00 	. 
	nop			;53d5	00 	. 
	nop			;53d6	00 	. 
	nop			;53d7	00 	. 
	nop			;53d8	00 	. 
	nop			;53d9	00 	. 
	nop			;53da	00 	. 
	nop			;53db	00 	. 
	nop			;53dc	00 	. 
	nop			;53dd	00 	. 
	nop			;53de	00 	. 
	nop			;53df	00 	. 
	nop			;53e0	00 	. 
	nop			;53e1	00 	. 
	nop			;53e2	00 	. 
	nop			;53e3	00 	. 
	nop			;53e4	00 	. 
	nop			;53e5	00 	. 
	nop			;53e6	00 	. 
	nop			;53e7	00 	. 
	nop			;53e8	00 	. 
	nop			;53e9	00 	. 
	nop			;53ea	00 	. 
	nop			;53eb	00 	. 
	nop			;53ec	00 	. 
	nop			;53ed	00 	. 
	nop			;53ee	00 	. 
	nop			;53ef	00 	. 
	nop			;53f0	00 	. 
	nop			;53f1	00 	. 
	nop			;53f2	00 	. 
	nop			;53f3	00 	. 
	nop			;53f4	00 	. 
	nop			;53f5	00 	. 
	nop			;53f6	00 	. 
	nop			;53f7	00 	. 
	nop			;53f8	00 	. 
	nop			;53f9	00 	. 
	nop			;53fa	00 	. 
	nop			;53fb	00 	. 
	nop			;53fc	00 	. 
	nop			;53fd	00 	. 
	nop			;53fe	00 	. 
	nop			;53ff	00 	. 
	nop			;5400	00 	. 
	nop			;5401	00 	. 
	nop			;5402	00 	. 
	nop			;5403	00 	. 
	nop			;5404	00 	. 
	nop			;5405	00 	. 
	nop			;5406	00 	. 
	nop			;5407	00 	. 
	nop			;5408	00 	. 
	nop			;5409	00 	. 
	nop			;540a	00 	. 
	nop			;540b	00 	. 
	nop			;540c	00 	. 
	nop			;540d	00 	. 
	nop			;540e	00 	. 
	nop			;540f	00 	. 
	nop			;5410	00 	. 
	nop			;5411	00 	. 
	nop			;5412	00 	. 
	nop			;5413	00 	. 
	nop			;5414	00 	. 
	nop			;5415	00 	. 
	nop			;5416	00 	. 
	nop			;5417	00 	. 
	nop			;5418	00 	. 
	nop			;5419	00 	. 
	nop			;541a	00 	. 
	nop			;541b	00 	. 
	nop			;541c	00 	. 
	nop			;541d	00 	. 
	nop			;541e	00 	. 
	nop			;541f	00 	. 
	nop			;5420	00 	. 
	nop			;5421	00 	. 
	nop			;5422	00 	. 
	nop			;5423	00 	. 
	nop			;5424	00 	. 
	nop			;5425	00 	. 
	nop			;5426	00 	. 
	nop			;5427	00 	. 
	nop			;5428	00 	. 
	nop			;5429	00 	. 
	nop			;542a	00 	. 
	nop			;542b	00 	. 
	nop			;542c	00 	. 
	nop			;542d	00 	. 
	nop			;542e	00 	. 
	nop			;542f	00 	. 
	nop			;5430	00 	. 
	nop			;5431	00 	. 
	nop			;5432	00 	. 
	nop			;5433	00 	. 
	nop			;5434	00 	. 
	nop			;5435	00 	. 
	nop			;5436	00 	. 
	nop			;5437	00 	. 
	nop			;5438	00 	. 
	nop			;5439	00 	. 
	nop			;543a	00 	. 
	nop			;543b	00 	. 
	nop			;543c	00 	. 
	nop			;543d	00 	. 
	nop			;543e	00 	. 
	nop			;543f	00 	. 
	nop			;5440	00 	. 
	nop			;5441	00 	. 
	nop			;5442	00 	. 
	nop			;5443	00 	. 
	nop			;5444	00 	. 
	nop			;5445	00 	. 
	nop			;5446	00 	. 
	nop			;5447	00 	. 
	nop			;5448	00 	. 
	nop			;5449	00 	. 
	nop			;544a	00 	. 
	nop			;544b	00 	. 
	nop			;544c	00 	. 
	nop			;544d	00 	. 
	nop			;544e	00 	. 
	nop			;544f	00 	. 
	nop			;5450	00 	. 
	nop			;5451	00 	. 
	nop			;5452	00 	. 
	nop			;5453	00 	. 
	nop			;5454	00 	. 
	nop			;5455	00 	. 
	nop			;5456	00 	. 
	nop			;5457	00 	. 
	nop			;5458	00 	. 
	nop			;5459	00 	. 
	nop			;545a	00 	. 
	nop			;545b	00 	. 
	nop			;545c	00 	. 
	nop			;545d	00 	. 
	nop			;545e	00 	. 
	nop			;545f	00 	. 
	nop			;5460	00 	. 
	nop			;5461	00 	. 
	nop			;5462	00 	. 
	nop			;5463	00 	. 
	nop			;5464	00 	. 
	nop			;5465	00 	. 
	nop			;5466	00 	. 
	nop			;5467	00 	. 
	nop			;5468	00 	. 
	nop			;5469	00 	. 
	nop			;546a	00 	. 
	nop			;546b	00 	. 
	nop			;546c	00 	. 
	nop			;546d	00 	. 
	nop			;546e	00 	. 
	nop			;546f	00 	. 
	nop			;5470	00 	. 
	nop			;5471	00 	. 
	nop			;5472	00 	. 
	nop			;5473	00 	. 
	nop			;5474	00 	. 
	nop			;5475	00 	. 
	nop			;5476	00 	. 
	nop			;5477	00 	. 
	nop			;5478	00 	. 
	nop			;5479	00 	. 
	nop			;547a	00 	. 
	nop			;547b	00 	. 
	nop			;547c	00 	. 
	nop			;547d	00 	. 
	nop			;547e	00 	. 
	nop			;547f	00 	. 
	nop			;5480	00 	. 
	nop			;5481	00 	. 
	nop			;5482	00 	. 
	nop			;5483	00 	. 
	nop			;5484	00 	. 
	nop			;5485	00 	. 
	nop			;5486	00 	. 
	nop			;5487	00 	. 
	nop			;5488	00 	. 
	nop			;5489	00 	. 
	nop			;548a	00 	. 
	nop			;548b	00 	. 
	nop			;548c	00 	. 
	nop			;548d	00 	. 
	nop			;548e	00 	. 
	nop			;548f	00 	. 
	nop			;5490	00 	. 
	nop			;5491	00 	. 
	nop			;5492	00 	. 
	nop			;5493	00 	. 
	nop			;5494	00 	. 
	nop			;5495	00 	. 
	nop			;5496	00 	. 
	nop			;5497	00 	. 
	nop			;5498	00 	. 
	nop			;5499	00 	. 
	nop			;549a	00 	. 
	nop			;549b	00 	. 
	nop			;549c	00 	. 
	nop			;549d	00 	. 
	nop			;549e	00 	. 
	nop			;549f	00 	. 
	nop			;54a0	00 	. 
	nop			;54a1	00 	. 
	nop			;54a2	00 	. 
	nop			;54a3	00 	. 
	nop			;54a4	00 	. 
	nop			;54a5	00 	. 
	nop			;54a6	00 	. 
	nop			;54a7	00 	. 
	nop			;54a8	00 	. 
	nop			;54a9	00 	. 
	nop			;54aa	00 	. 
	nop			;54ab	00 	. 
	nop			;54ac	00 	. 
	nop			;54ad	00 	. 
	nop			;54ae	00 	. 
	nop			;54af	00 	. 
	nop			;54b0	00 	. 
	nop			;54b1	00 	. 
	nop			;54b2	00 	. 
	nop			;54b3	00 	. 
	nop			;54b4	00 	. 
	nop			;54b5	00 	. 
	nop			;54b6	00 	. 
	nop			;54b7	00 	. 
	nop			;54b8	00 	. 
	nop			;54b9	00 	. 
	nop			;54ba	00 	. 
	nop			;54bb	00 	. 
	nop			;54bc	00 	. 
	nop			;54bd	00 	. 
	nop			;54be	00 	. 
	nop			;54bf	00 	. 
	nop			;54c0	00 	. 
	nop			;54c1	00 	. 
	nop			;54c2	00 	. 
	nop			;54c3	00 	. 
	nop			;54c4	00 	. 
	nop			;54c5	00 	. 
	nop			;54c6	00 	. 
	nop			;54c7	00 	. 
	nop			;54c8	00 	. 
	nop			;54c9	00 	. 
	nop			;54ca	00 	. 
	nop			;54cb	00 	. 
	nop			;54cc	00 	. 
	nop			;54cd	00 	. 
	nop			;54ce	00 	. 
	nop			;54cf	00 	. 
	nop			;54d0	00 	. 
	nop			;54d1	00 	. 
	nop			;54d2	00 	. 
	nop			;54d3	00 	. 
	nop			;54d4	00 	. 
	nop			;54d5	00 	. 
	nop			;54d6	00 	. 
	nop			;54d7	00 	. 
	nop			;54d8	00 	. 
	nop			;54d9	00 	. 
	nop			;54da	00 	. 
	nop			;54db	00 	. 
	nop			;54dc	00 	. 
	nop			;54dd	00 	. 
	nop			;54de	00 	. 
	nop			;54df	00 	. 
	nop			;54e0	00 	. 
	nop			;54e1	00 	. 
	nop			;54e2	00 	. 
	nop			;54e3	00 	. 
	nop			;54e4	00 	. 
	nop			;54e5	00 	. 
	nop			;54e6	00 	. 
	nop			;54e7	00 	. 
	nop			;54e8	00 	. 
	nop			;54e9	00 	. 
	nop			;54ea	00 	. 
	nop			;54eb	00 	. 
	nop			;54ec	00 	. 
	nop			;54ed	00 	. 
	nop			;54ee	00 	. 
	nop			;54ef	00 	. 
	nop			;54f0	00 	. 
	nop			;54f1	00 	. 
	nop			;54f2	00 	. 
	nop			;54f3	00 	. 
	nop			;54f4	00 	. 
	nop			;54f5	00 	. 
	nop			;54f6	00 	. 
	nop			;54f7	00 	. 
	nop			;54f8	00 	. 
	nop			;54f9	00 	. 
	nop			;54fa	00 	. 
	nop			;54fb	00 	. 
	nop			;54fc	00 	. 
	nop			;54fd	00 	. 
	nop			;54fe	00 	. 
	nop			;54ff	00 	. 
	nop			;5500	00 	. 
	nop			;5501	00 	. 
	nop			;5502	00 	. 
	nop			;5503	00 	. 
	nop			;5504	00 	. 
	nop			;5505	00 	. 
	nop			;5506	00 	. 
	nop			;5507	00 	. 
	nop			;5508	00 	. 
	nop			;5509	00 	. 
	nop			;550a	00 	. 
	nop			;550b	00 	. 
	nop			;550c	00 	. 
	nop			;550d	00 	. 
	nop			;550e	00 	. 
	nop			;550f	00 	. 
	nop			;5510	00 	. 
	nop			;5511	00 	. 
	nop			;5512	00 	. 
	nop			;5513	00 	. 
	nop			;5514	00 	. 
	nop			;5515	00 	. 
	nop			;5516	00 	. 
	nop			;5517	00 	. 
	nop			;5518	00 	. 
	nop			;5519	00 	. 
	nop			;551a	00 	. 
	nop			;551b	00 	. 
	nop			;551c	00 	. 
	nop			;551d	00 	. 
	nop			;551e	00 	. 
	nop			;551f	00 	. 
	nop			;5520	00 	. 
	nop			;5521	00 	. 
	nop			;5522	00 	. 
	nop			;5523	00 	. 
	nop			;5524	00 	. 
l5525h:
	nop			;5525	00 	. 
	nop			;5526	00 	. 
	nop			;5527	00 	. 
	nop			;5528	00 	. 
	nop			;5529	00 	. 
	nop			;552a	00 	. 
	nop			;552b	00 	. 
	nop			;552c	00 	. 
	nop			;552d	00 	. 
	nop			;552e	00 	. 
	nop			;552f	00 	. 
	nop			;5530	00 	. 
	nop			;5531	00 	. 
	nop			;5532	00 	. 
	nop			;5533	00 	. 
	nop			;5534	00 	. 
	nop			;5535	00 	. 
	nop			;5536	00 	. 
	nop			;5537	00 	. 
	nop			;5538	00 	. 
	nop			;5539	00 	. 
	nop			;553a	00 	. 
	nop			;553b	00 	. 
	nop			;553c	00 	. 
	nop			;553d	00 	. 
	nop			;553e	00 	. 
	nop			;553f	00 	. 
	nop			;5540	00 	. 
l5541h:
	nop			;5541	00 	. 
	nop			;5542	00 	. 
	nop			;5543	00 	. 
	nop			;5544	00 	. 
	nop			;5545	00 	. 
	nop			;5546	00 	. 
	nop			;5547	00 	. 
	nop			;5548	00 	. 
	nop			;5549	00 	. 
	nop			;554a	00 	. 
	nop			;554b	00 	. 
	nop			;554c	00 	. 
	nop			;554d	00 	. 
	nop			;554e	00 	. 
	nop			;554f	00 	. 
l5550h:
	nop			;5550	00 	. 
	nop			;5551	00 	. 
	nop			;5552	00 	. 
l5553h:
	nop			;5553	00 	. 
	nop			;5554	00 	. 
	nop			;5555	00 	. 
	nop			;5556	00 	. 
	nop			;5557	00 	. 
	nop			;5558	00 	. 
	nop			;5559	00 	. 
	nop			;555a	00 	. 
	nop			;555b	00 	. 
	nop			;555c	00 	. 
	nop			;555d	00 	. 
	nop			;555e	00 	. 
	nop			;555f	00 	. 
	nop			;5560	00 	. 
	nop			;5561	00 	. 
	nop			;5562	00 	. 
	nop			;5563	00 	. 
	nop			;5564	00 	. 
	nop			;5565	00 	. 
	nop			;5566	00 	. 
	nop			;5567	00 	. 
	nop			;5568	00 	. 
	nop			;5569	00 	. 
	nop			;556a	00 	. 
	nop			;556b	00 	. 
	nop			;556c	00 	. 
	nop			;556d	00 	. 
	nop			;556e	00 	. 
	nop			;556f	00 	. 
	nop			;5570	00 	. 
	nop			;5571	00 	. 
	nop			;5572	00 	. 
	nop			;5573	00 	. 
	nop			;5574	00 	. 
	nop			;5575	00 	. 
	nop			;5576	00 	. 
	nop			;5577	00 	. 
	nop			;5578	00 	. 
	nop			;5579	00 	. 
	nop			;557a	00 	. 
	nop			;557b	00 	. 
	nop			;557c	00 	. 
	nop			;557d	00 	. 
	nop			;557e	00 	. 
	nop			;557f	00 	. 
	nop			;5580	00 	. 
	nop			;5581	00 	. 
	nop			;5582	00 	. 
	nop			;5583	00 	. 
	nop			;5584	00 	. 
	nop			;5585	00 	. 
	nop			;5586	00 	. 
	nop			;5587	00 	. 
	nop			;5588	00 	. 
	nop			;5589	00 	. 
	nop			;558a	00 	. 
	nop			;558b	00 	. 
	nop			;558c	00 	. 
	nop			;558d	00 	. 
	nop			;558e	00 	. 
	nop			;558f	00 	. 
	nop			;5590	00 	. 
	nop			;5591	00 	. 
	nop			;5592	00 	. 
	nop			;5593	00 	. 
	nop			;5594	00 	. 
	nop			;5595	00 	. 
	nop			;5596	00 	. 
	nop			;5597	00 	. 
	nop			;5598	00 	. 
	nop			;5599	00 	. 
	nop			;559a	00 	. 
	nop			;559b	00 	. 
	nop			;559c	00 	. 
	nop			;559d	00 	. 
	nop			;559e	00 	. 
	nop			;559f	00 	. 
	nop			;55a0	00 	. 
	nop			;55a1	00 	. 
	nop			;55a2	00 	. 
	nop			;55a3	00 	. 
	nop			;55a4	00 	. 
	nop			;55a5	00 	. 
	nop			;55a6	00 	. 
	nop			;55a7	00 	. 
	nop			;55a8	00 	. 
	nop			;55a9	00 	. 
	nop			;55aa	00 	. 
	nop			;55ab	00 	. 
	nop			;55ac	00 	. 
	nop			;55ad	00 	. 
	nop			;55ae	00 	. 
	nop			;55af	00 	. 
	nop			;55b0	00 	. 
	nop			;55b1	00 	. 
	nop			;55b2	00 	. 
	nop			;55b3	00 	. 
	nop			;55b4	00 	. 
	nop			;55b5	00 	. 
	nop			;55b6	00 	. 
	nop			;55b7	00 	. 
	nop			;55b8	00 	. 
	nop			;55b9	00 	. 
	nop			;55ba	00 	. 
	nop			;55bb	00 	. 
	nop			;55bc	00 	. 
	nop			;55bd	00 	. 
	nop			;55be	00 	. 
	nop			;55bf	00 	. 
	nop			;55c0	00 	. 
	nop			;55c1	00 	. 
	nop			;55c2	00 	. 
	nop			;55c3	00 	. 
	nop			;55c4	00 	. 
	nop			;55c5	00 	. 
	nop			;55c6	00 	. 
	nop			;55c7	00 	. 
	nop			;55c8	00 	. 
	nop			;55c9	00 	. 
	nop			;55ca	00 	. 
	nop			;55cb	00 	. 
	nop			;55cc	00 	. 
	nop			;55cd	00 	. 
	nop			;55ce	00 	. 
	nop			;55cf	00 	. 
	nop			;55d0	00 	. 
	nop			;55d1	00 	. 
	nop			;55d2	00 	. 
	nop			;55d3	00 	. 
	nop			;55d4	00 	. 
	nop			;55d5	00 	. 
	nop			;55d6	00 	. 
	nop			;55d7	00 	. 
	nop			;55d8	00 	. 
	nop			;55d9	00 	. 
	nop			;55da	00 	. 
	nop			;55db	00 	. 
	nop			;55dc	00 	. 
	nop			;55dd	00 	. 
	nop			;55de	00 	. 
	nop			;55df	00 	. 
	nop			;55e0	00 	. 
	nop			;55e1	00 	. 
	nop			;55e2	00 	. 
	nop			;55e3	00 	. 
	nop			;55e4	00 	. 
	nop			;55e5	00 	. 
	nop			;55e6	00 	. 
	nop			;55e7	00 	. 
	nop			;55e8	00 	. 
	nop			;55e9	00 	. 
	nop			;55ea	00 	. 
	nop			;55eb	00 	. 
	nop			;55ec	00 	. 
	nop			;55ed	00 	. 
	nop			;55ee	00 	. 
	nop			;55ef	00 	. 
	nop			;55f0	00 	. 
	nop			;55f1	00 	. 
	nop			;55f2	00 	. 
	nop			;55f3	00 	. 
	nop			;55f4	00 	. 
	nop			;55f5	00 	. 
	nop			;55f6	00 	. 
	nop			;55f7	00 	. 
	nop			;55f8	00 	. 
	nop			;55f9	00 	. 
	nop			;55fa	00 	. 
	nop			;55fb	00 	. 
	nop			;55fc	00 	. 
	nop			;55fd	00 	. 
	nop			;55fe	00 	. 
	nop			;55ff	00 	. 
	nop			;5600	00 	. 
	nop			;5601	00 	. 
	nop			;5602	00 	. 
	nop			;5603	00 	. 
	nop			;5604	00 	. 
	nop			;5605	00 	. 
	nop			;5606	00 	. 
	nop			;5607	00 	. 
	nop			;5608	00 	. 
	nop			;5609	00 	. 
	nop			;560a	00 	. 
	nop			;560b	00 	. 
	nop			;560c	00 	. 
	nop			;560d	00 	. 
	nop			;560e	00 	. 
	nop			;560f	00 	. 
	nop			;5610	00 	. 
	nop			;5611	00 	. 
	nop			;5612	00 	. 
	nop			;5613	00 	. 
	nop			;5614	00 	. 
	nop			;5615	00 	. 
	nop			;5616	00 	. 
	nop			;5617	00 	. 
	nop			;5618	00 	. 
	nop			;5619	00 	. 
	nop			;561a	00 	. 
	nop			;561b	00 	. 
	nop			;561c	00 	. 
	nop			;561d	00 	. 
	nop			;561e	00 	. 
	nop			;561f	00 	. 
	nop			;5620	00 	. 
	nop			;5621	00 	. 
	nop			;5622	00 	. 
	nop			;5623	00 	. 
	nop			;5624	00 	. 
	nop			;5625	00 	. 
	nop			;5626	00 	. 
l5627h:
	nop			;5627	00 	. 
	nop			;5628	00 	. 
	nop			;5629	00 	. 
	nop			;562a	00 	. 
	nop			;562b	00 	. 
	nop			;562c	00 	. 
	nop			;562d	00 	. 
	nop			;562e	00 	. 
	nop			;562f	00 	. 
	nop			;5630	00 	. 
	nop			;5631	00 	. 
	nop			;5632	00 	. 
	nop			;5633	00 	. 
	nop			;5634	00 	. 
	nop			;5635	00 	. 
	nop			;5636	00 	. 
	nop			;5637	00 	. 
	nop			;5638	00 	. 
	nop			;5639	00 	. 
	nop			;563a	00 	. 
	nop			;563b	00 	. 
	nop			;563c	00 	. 
	nop			;563d	00 	. 
	nop			;563e	00 	. 
	nop			;563f	00 	. 
	nop			;5640	00 	. 
	nop			;5641	00 	. 
	nop			;5642	00 	. 
	nop			;5643	00 	. 
	nop			;5644	00 	. 
	nop			;5645	00 	. 
	nop			;5646	00 	. 
	nop			;5647	00 	. 
	nop			;5648	00 	. 
	nop			;5649	00 	. 
	nop			;564a	00 	. 
	nop			;564b	00 	. 
	nop			;564c	00 	. 
	nop			;564d	00 	. 
	nop			;564e	00 	. 
	nop			;564f	00 	. 
	nop			;5650	00 	. 
	nop			;5651	00 	. 
	nop			;5652	00 	. 
	nop			;5653	00 	. 
	nop			;5654	00 	. 
	nop			;5655	00 	. 
	nop			;5656	00 	. 
	nop			;5657	00 	. 
	nop			;5658	00 	. 
	nop			;5659	00 	. 
	nop			;565a	00 	. 
	nop			;565b	00 	. 
	nop			;565c	00 	. 
	nop			;565d	00 	. 
	nop			;565e	00 	. 
	nop			;565f	00 	. 
	nop			;5660	00 	. 
	nop			;5661	00 	. 
	nop			;5662	00 	. 
	nop			;5663	00 	. 
	nop			;5664	00 	. 
	nop			;5665	00 	. 
	nop			;5666	00 	. 
	nop			;5667	00 	. 
	nop			;5668	00 	. 
	nop			;5669	00 	. 
	nop			;566a	00 	. 
	nop			;566b	00 	. 
	nop			;566c	00 	. 
	nop			;566d	00 	. 
	nop			;566e	00 	. 
	nop			;566f	00 	. 
	nop			;5670	00 	. 
	nop			;5671	00 	. 
	nop			;5672	00 	. 
	nop			;5673	00 	. 
	nop			;5674	00 	. 
	nop			;5675	00 	. 
	nop			;5676	00 	. 
	nop			;5677	00 	. 
	nop			;5678	00 	. 
	nop			;5679	00 	. 
	nop			;567a	00 	. 
	nop			;567b	00 	. 
	nop			;567c	00 	. 
	nop			;567d	00 	. 
	nop			;567e	00 	. 
	nop			;567f	00 	. 
	nop			;5680	00 	. 
	nop			;5681	00 	. 
	nop			;5682	00 	. 
	nop			;5683	00 	. 
	nop			;5684	00 	. 
	nop			;5685	00 	. 
	nop			;5686	00 	. 
	nop			;5687	00 	. 
	nop			;5688	00 	. 
	nop			;5689	00 	. 
	nop			;568a	00 	. 
	nop			;568b	00 	. 
	nop			;568c	00 	. 
	nop			;568d	00 	. 
	nop			;568e	00 	. 
	nop			;568f	00 	. 
	nop			;5690	00 	. 
	nop			;5691	00 	. 
	nop			;5692	00 	. 
	nop			;5693	00 	. 
	nop			;5694	00 	. 
	nop			;5695	00 	. 
	nop			;5696	00 	. 
	nop			;5697	00 	. 
	nop			;5698	00 	. 
	nop			;5699	00 	. 
	nop			;569a	00 	. 
	nop			;569b	00 	. 
	nop			;569c	00 	. 
	nop			;569d	00 	. 
	nop			;569e	00 	. 
	nop			;569f	00 	. 
	nop			;56a0	00 	. 
	nop			;56a1	00 	. 
	nop			;56a2	00 	. 
	nop			;56a3	00 	. 
	nop			;56a4	00 	. 
	nop			;56a5	00 	. 
	nop			;56a6	00 	. 
	nop			;56a7	00 	. 
	nop			;56a8	00 	. 
	nop			;56a9	00 	. 
	nop			;56aa	00 	. 
	nop			;56ab	00 	. 
	nop			;56ac	00 	. 
	nop			;56ad	00 	. 
	nop			;56ae	00 	. 
	nop			;56af	00 	. 
	nop			;56b0	00 	. 
	nop			;56b1	00 	. 
	nop			;56b2	00 	. 
	nop			;56b3	00 	. 
	nop			;56b4	00 	. 
	nop			;56b5	00 	. 
	nop			;56b6	00 	. 
	nop			;56b7	00 	. 
	nop			;56b8	00 	. 
	nop			;56b9	00 	. 
	nop			;56ba	00 	. 
	nop			;56bb	00 	. 
	nop			;56bc	00 	. 
	nop			;56bd	00 	. 
	nop			;56be	00 	. 
	nop			;56bf	00 	. 
	nop			;56c0	00 	. 
	nop			;56c1	00 	. 
	nop			;56c2	00 	. 
	nop			;56c3	00 	. 
	nop			;56c4	00 	. 
	nop			;56c5	00 	. 
	nop			;56c6	00 	. 
	nop			;56c7	00 	. 
	nop			;56c8	00 	. 
	nop			;56c9	00 	. 
	nop			;56ca	00 	. 
	nop			;56cb	00 	. 
	nop			;56cc	00 	. 
	nop			;56cd	00 	. 
	nop			;56ce	00 	. 
	nop			;56cf	00 	. 
	nop			;56d0	00 	. 
	nop			;56d1	00 	. 
	nop			;56d2	00 	. 
	nop			;56d3	00 	. 
	nop			;56d4	00 	. 
	nop			;56d5	00 	. 
	nop			;56d6	00 	. 
	nop			;56d7	00 	. 
	nop			;56d8	00 	. 
	nop			;56d9	00 	. 
	nop			;56da	00 	. 
	nop			;56db	00 	. 
	nop			;56dc	00 	. 
	nop			;56dd	00 	. 
	nop			;56de	00 	. 
	nop			;56df	00 	. 
	nop			;56e0	00 	. 
	nop			;56e1	00 	. 
	nop			;56e2	00 	. 
	nop			;56e3	00 	. 
	nop			;56e4	00 	. 
	nop			;56e5	00 	. 
	nop			;56e6	00 	. 
	nop			;56e7	00 	. 
	nop			;56e8	00 	. 
	nop			;56e9	00 	. 
	nop			;56ea	00 	. 
	nop			;56eb	00 	. 
	nop			;56ec	00 	. 
	nop			;56ed	00 	. 
	nop			;56ee	00 	. 
	nop			;56ef	00 	. 
	nop			;56f0	00 	. 
	nop			;56f1	00 	. 
	nop			;56f2	00 	. 
	nop			;56f3	00 	. 
	nop			;56f4	00 	. 
	nop			;56f5	00 	. 
	nop			;56f6	00 	. 
	nop			;56f7	00 	. 
	nop			;56f8	00 	. 
	nop			;56f9	00 	. 
	nop			;56fa	00 	. 
	nop			;56fb	00 	. 
	nop			;56fc	00 	. 
	nop			;56fd	00 	. 
	nop			;56fe	00 	. 
	nop			;56ff	00 	. 
	nop			;5700	00 	. 
	nop			;5701	00 	. 
	nop			;5702	00 	. 
	nop			;5703	00 	. 
	nop			;5704	00 	. 
	nop			;5705	00 	. 
	nop			;5706	00 	. 
	nop			;5707	00 	. 
	nop			;5708	00 	. 
	nop			;5709	00 	. 
	nop			;570a	00 	. 
	nop			;570b	00 	. 
	nop			;570c	00 	. 
	nop			;570d	00 	. 
	nop			;570e	00 	. 
	nop			;570f	00 	. 
	nop			;5710	00 	. 
	nop			;5711	00 	. 
	nop			;5712	00 	. 
	nop			;5713	00 	. 
	nop			;5714	00 	. 
	nop			;5715	00 	. 
	nop			;5716	00 	. 
	nop			;5717	00 	. 
	nop			;5718	00 	. 
	nop			;5719	00 	. 
	nop			;571a	00 	. 
	nop			;571b	00 	. 
	nop			;571c	00 	. 
	nop			;571d	00 	. 
	nop			;571e	00 	. 
	nop			;571f	00 	. 
	nop			;5720	00 	. 
	nop			;5721	00 	. 
	nop			;5722	00 	. 
	nop			;5723	00 	. 
	nop			;5724	00 	. 
	nop			;5725	00 	. 
	nop			;5726	00 	. 
	nop			;5727	00 	. 
	nop			;5728	00 	. 
	nop			;5729	00 	. 
	nop			;572a	00 	. 
	nop			;572b	00 	. 
	nop			;572c	00 	. 
	nop			;572d	00 	. 
	nop			;572e	00 	. 
	nop			;572f	00 	. 
	nop			;5730	00 	. 
	nop			;5731	00 	. 
	nop			;5732	00 	. 
	nop			;5733	00 	. 
	nop			;5734	00 	. 
	nop			;5735	00 	. 
	nop			;5736	00 	. 
	nop			;5737	00 	. 
	nop			;5738	00 	. 
	nop			;5739	00 	. 
	nop			;573a	00 	. 
	nop			;573b	00 	. 
	nop			;573c	00 	. 
	nop			;573d	00 	. 
	nop			;573e	00 	. 
	nop			;573f	00 	. 
	nop			;5740	00 	. 
	nop			;5741	00 	. 
	nop			;5742	00 	. 
	nop			;5743	00 	. 
	nop			;5744	00 	. 
	nop			;5745	00 	. 
	nop			;5746	00 	. 
	nop			;5747	00 	. 
	nop			;5748	00 	. 
	nop			;5749	00 	. 
	nop			;574a	00 	. 
	nop			;574b	00 	. 
	nop			;574c	00 	. 
	nop			;574d	00 	. 
	nop			;574e	00 	. 
	nop			;574f	00 	. 
	nop			;5750	00 	. 
	nop			;5751	00 	. 
	nop			;5752	00 	. 
	nop			;5753	00 	. 
	nop			;5754	00 	. 
	nop			;5755	00 	. 
	nop			;5756	00 	. 
	nop			;5757	00 	. 
	nop			;5758	00 	. 
	nop			;5759	00 	. 
	nop			;575a	00 	. 
	nop			;575b	00 	. 
	nop			;575c	00 	. 
	nop			;575d	00 	. 
	nop			;575e	00 	. 
	nop			;575f	00 	. 
	nop			;5760	00 	. 
	nop			;5761	00 	. 
	nop			;5762	00 	. 
	nop			;5763	00 	. 
	nop			;5764	00 	. 
	nop			;5765	00 	. 
	nop			;5766	00 	. 
	nop			;5767	00 	. 
	nop			;5768	00 	. 
	nop			;5769	00 	. 
	nop			;576a	00 	. 
	nop			;576b	00 	. 
	nop			;576c	00 	. 
	nop			;576d	00 	. 
	nop			;576e	00 	. 
	nop			;576f	00 	. 
	nop			;5770	00 	. 
	nop			;5771	00 	. 
	nop			;5772	00 	. 
	nop			;5773	00 	. 
	nop			;5774	00 	. 
	nop			;5775	00 	. 
	nop			;5776	00 	. 
	nop			;5777	00 	. 
	nop			;5778	00 	. 
	nop			;5779	00 	. 
	nop			;577a	00 	. 
	nop			;577b	00 	. 
	nop			;577c	00 	. 
	nop			;577d	00 	. 
	nop			;577e	00 	. 
	nop			;577f	00 	. 
	nop			;5780	00 	. 
	nop			;5781	00 	. 
	nop			;5782	00 	. 
	nop			;5783	00 	. 
	nop			;5784	00 	. 
	nop			;5785	00 	. 
	nop			;5786	00 	. 
	nop			;5787	00 	. 
	nop			;5788	00 	. 
	nop			;5789	00 	. 
	nop			;578a	00 	. 
	nop			;578b	00 	. 
	nop			;578c	00 	. 
	nop			;578d	00 	. 
	nop			;578e	00 	. 
	nop			;578f	00 	. 
	nop			;5790	00 	. 
	nop			;5791	00 	. 
	nop			;5792	00 	. 
	nop			;5793	00 	. 
	nop			;5794	00 	. 
	nop			;5795	00 	. 
	nop			;5796	00 	. 
	nop			;5797	00 	. 
	nop			;5798	00 	. 
	nop			;5799	00 	. 
	nop			;579a	00 	. 
	nop			;579b	00 	. 
	nop			;579c	00 	. 
	nop			;579d	00 	. 
	nop			;579e	00 	. 
	nop			;579f	00 	. 
	nop			;57a0	00 	. 
	nop			;57a1	00 	. 
	nop			;57a2	00 	. 
	nop			;57a3	00 	. 
	nop			;57a4	00 	. 
	nop			;57a5	00 	. 
	nop			;57a6	00 	. 
	nop			;57a7	00 	. 
	nop			;57a8	00 	. 
	nop			;57a9	00 	. 
	nop			;57aa	00 	. 
	nop			;57ab	00 	. 
	nop			;57ac	00 	. 
	nop			;57ad	00 	. 
	nop			;57ae	00 	. 
	nop			;57af	00 	. 
	nop			;57b0	00 	. 
	nop			;57b1	00 	. 
	nop			;57b2	00 	. 
	nop			;57b3	00 	. 
	nop			;57b4	00 	. 
	nop			;57b5	00 	. 
	nop			;57b6	00 	. 
	nop			;57b7	00 	. 
	nop			;57b8	00 	. 
	nop			;57b9	00 	. 
	nop			;57ba	00 	. 
	nop			;57bb	00 	. 
	nop			;57bc	00 	. 
	nop			;57bd	00 	. 
	nop			;57be	00 	. 
	nop			;57bf	00 	. 
	nop			;57c0	00 	. 
	nop			;57c1	00 	. 
	nop			;57c2	00 	. 
	nop			;57c3	00 	. 
	nop			;57c4	00 	. 
	nop			;57c5	00 	. 
	nop			;57c6	00 	. 
	nop			;57c7	00 	. 
	nop			;57c8	00 	. 
	nop			;57c9	00 	. 
	nop			;57ca	00 	. 
	nop			;57cb	00 	. 
	nop			;57cc	00 	. 
	nop			;57cd	00 	. 
	nop			;57ce	00 	. 
	nop			;57cf	00 	. 
	nop			;57d0	00 	. 
	nop			;57d1	00 	. 
	nop			;57d2	00 	. 
	nop			;57d3	00 	. 
	nop			;57d4	00 	. 
	nop			;57d5	00 	. 
	nop			;57d6	00 	. 
	nop			;57d7	00 	. 
	nop			;57d8	00 	. 
	nop			;57d9	00 	. 
	nop			;57da	00 	. 
	nop			;57db	00 	. 
	nop			;57dc	00 	. 
	nop			;57dd	00 	. 
	nop			;57de	00 	. 
	nop			;57df	00 	. 
	nop			;57e0	00 	. 
	nop			;57e1	00 	. 
	nop			;57e2	00 	. 
	nop			;57e3	00 	. 
	nop			;57e4	00 	. 
	nop			;57e5	00 	. 
	nop			;57e6	00 	. 
	nop			;57e7	00 	. 
	nop			;57e8	00 	. 
	nop			;57e9	00 	. 
	nop			;57ea	00 	. 
	nop			;57eb	00 	. 
	nop			;57ec	00 	. 
	nop			;57ed	00 	. 
	nop			;57ee	00 	. 
	nop			;57ef	00 	. 
	nop			;57f0	00 	. 
	nop			;57f1	00 	. 
	nop			;57f2	00 	. 
	nop			;57f3	00 	. 
	nop			;57f4	00 	. 
	nop			;57f5	00 	. 
	nop			;57f6	00 	. 
	nop			;57f7	00 	. 
	nop			;57f8	00 	. 
	nop			;57f9	00 	. 
	nop			;57fa	00 	. 
	nop			;57fb	00 	. 
	nop			;57fc	00 	. 
	nop			;57fd	00 	. 
	nop			;57fe	00 	. 
	nop			;57ff	00 	. 
	nop			;5800	00 	. 
	nop			;5801	00 	. 
	nop			;5802	00 	. 
	nop			;5803	00 	. 
	nop			;5804	00 	. 
	nop			;5805	00 	. 
	nop			;5806	00 	. 
	nop			;5807	00 	. 
	nop			;5808	00 	. 
	nop			;5809	00 	. 
	nop			;580a	00 	. 
	nop			;580b	00 	. 
	nop			;580c	00 	. 
	nop			;580d	00 	. 
	nop			;580e	00 	. 
	nop			;580f	00 	. 
	nop			;5810	00 	. 
	nop			;5811	00 	. 
	nop			;5812	00 	. 
	nop			;5813	00 	. 
	nop			;5814	00 	. 
	nop			;5815	00 	. 
	nop			;5816	00 	. 
	nop			;5817	00 	. 
	nop			;5818	00 	. 
	nop			;5819	00 	. 
	nop			;581a	00 	. 
	nop			;581b	00 	. 
	nop			;581c	00 	. 
	nop			;581d	00 	. 
	nop			;581e	00 	. 
	nop			;581f	00 	. 
	nop			;5820	00 	. 
	nop			;5821	00 	. 
	nop			;5822	00 	. 
	nop			;5823	00 	. 
	nop			;5824	00 	. 
	nop			;5825	00 	. 
	nop			;5826	00 	. 
	nop			;5827	00 	. 
	nop			;5828	00 	. 
	nop			;5829	00 	. 
	nop			;582a	00 	. 
	nop			;582b	00 	. 
	nop			;582c	00 	. 
	nop			;582d	00 	. 
	nop			;582e	00 	. 
	nop			;582f	00 	. 
	nop			;5830	00 	. 
	nop			;5831	00 	. 
	nop			;5832	00 	. 
	nop			;5833	00 	. 
	nop			;5834	00 	. 
	nop			;5835	00 	. 
	nop			;5836	00 	. 
	nop			;5837	00 	. 
	nop			;5838	00 	. 
	nop			;5839	00 	. 
	nop			;583a	00 	. 
	nop			;583b	00 	. 
	nop			;583c	00 	. 
	nop			;583d	00 	. 
	nop			;583e	00 	. 
	nop			;583f	00 	. 
	nop			;5840	00 	. 
	nop			;5841	00 	. 
	nop			;5842	00 	. 
	nop			;5843	00 	. 
	nop			;5844	00 	. 
	nop			;5845	00 	. 
	nop			;5846	00 	. 
	nop			;5847	00 	. 
	nop			;5848	00 	. 
	nop			;5849	00 	. 
	nop			;584a	00 	. 
	nop			;584b	00 	. 
	nop			;584c	00 	. 
	nop			;584d	00 	. 
	nop			;584e	00 	. 
	nop			;584f	00 	. 
	nop			;5850	00 	. 
	nop			;5851	00 	. 
	nop			;5852	00 	. 
	nop			;5853	00 	. 
	nop			;5854	00 	. 
	nop			;5855	00 	. 
	nop			;5856	00 	. 
	nop			;5857	00 	. 
	nop			;5858	00 	. 
	nop			;5859	00 	. 
	nop			;585a	00 	. 
	nop			;585b	00 	. 
	nop			;585c	00 	. 
	nop			;585d	00 	. 
	nop			;585e	00 	. 
	nop			;585f	00 	. 
	nop			;5860	00 	. 
	nop			;5861	00 	. 
	nop			;5862	00 	. 
	nop			;5863	00 	. 
	nop			;5864	00 	. 
	nop			;5865	00 	. 
	nop			;5866	00 	. 
	nop			;5867	00 	. 
	nop			;5868	00 	. 
	nop			;5869	00 	. 
	nop			;586a	00 	. 
	nop			;586b	00 	. 
	nop			;586c	00 	. 
	nop			;586d	00 	. 
	nop			;586e	00 	. 
	nop			;586f	00 	. 
	nop			;5870	00 	. 
	nop			;5871	00 	. 
	nop			;5872	00 	. 
	nop			;5873	00 	. 
	nop			;5874	00 	. 
	nop			;5875	00 	. 
	nop			;5876	00 	. 
	nop			;5877	00 	. 
	nop			;5878	00 	. 
	nop			;5879	00 	. 
	nop			;587a	00 	. 
	nop			;587b	00 	. 
	nop			;587c	00 	. 
	nop			;587d	00 	. 
	nop			;587e	00 	. 
	nop			;587f	00 	. 
	nop			;5880	00 	. 
	nop			;5881	00 	. 
	nop			;5882	00 	. 
	nop			;5883	00 	. 
	nop			;5884	00 	. 
	nop			;5885	00 	. 
	nop			;5886	00 	. 
	nop			;5887	00 	. 
	nop			;5888	00 	. 
	nop			;5889	00 	. 
	nop			;588a	00 	. 
	nop			;588b	00 	. 
	nop			;588c	00 	. 
	nop			;588d	00 	. 
	nop			;588e	00 	. 
	nop			;588f	00 	. 
	nop			;5890	00 	. 
	nop			;5891	00 	. 
	nop			;5892	00 	. 
	nop			;5893	00 	. 
	nop			;5894	00 	. 
	nop			;5895	00 	. 
	nop			;5896	00 	. 
	nop			;5897	00 	. 
	nop			;5898	00 	. 
	nop			;5899	00 	. 
	nop			;589a	00 	. 
	nop			;589b	00 	. 
	nop			;589c	00 	. 
	nop			;589d	00 	. 
	nop			;589e	00 	. 
	nop			;589f	00 	. 
	nop			;58a0	00 	. 
	nop			;58a1	00 	. 
	nop			;58a2	00 	. 
	nop			;58a3	00 	. 
	nop			;58a4	00 	. 
	nop			;58a5	00 	. 
	nop			;58a6	00 	. 
	nop			;58a7	00 	. 
	nop			;58a8	00 	. 
	nop			;58a9	00 	. 
	nop			;58aa	00 	. 
	nop			;58ab	00 	. 
	nop			;58ac	00 	. 
	nop			;58ad	00 	. 
	nop			;58ae	00 	. 
	nop			;58af	00 	. 
	nop			;58b0	00 	. 
	nop			;58b1	00 	. 
	nop			;58b2	00 	. 
	nop			;58b3	00 	. 
	nop			;58b4	00 	. 
	nop			;58b5	00 	. 
	nop			;58b6	00 	. 
	nop			;58b7	00 	. 
	nop			;58b8	00 	. 
	nop			;58b9	00 	. 
	nop			;58ba	00 	. 
	nop			;58bb	00 	. 
	nop			;58bc	00 	. 
	nop			;58bd	00 	. 
	nop			;58be	00 	. 
	nop			;58bf	00 	. 
	nop			;58c0	00 	. 
	nop			;58c1	00 	. 
	nop			;58c2	00 	. 
	nop			;58c3	00 	. 
	nop			;58c4	00 	. 
	nop			;58c5	00 	. 
	nop			;58c6	00 	. 
	nop			;58c7	00 	. 
	nop			;58c8	00 	. 
	nop			;58c9	00 	. 
	nop			;58ca	00 	. 
	nop			;58cb	00 	. 
	nop			;58cc	00 	. 
	nop			;58cd	00 	. 
	nop			;58ce	00 	. 
	nop			;58cf	00 	. 
	nop			;58d0	00 	. 
	nop			;58d1	00 	. 
	nop			;58d2	00 	. 
	nop			;58d3	00 	. 
	nop			;58d4	00 	. 
	nop			;58d5	00 	. 
	nop			;58d6	00 	. 
	nop			;58d7	00 	. 
	nop			;58d8	00 	. 
	nop			;58d9	00 	. 
	nop			;58da	00 	. 
	nop			;58db	00 	. 
	nop			;58dc	00 	. 
	nop			;58dd	00 	. 
	nop			;58de	00 	. 
	nop			;58df	00 	. 
	nop			;58e0	00 	. 
	nop			;58e1	00 	. 
	nop			;58e2	00 	. 
	nop			;58e3	00 	. 
	nop			;58e4	00 	. 
	nop			;58e5	00 	. 
	nop			;58e6	00 	. 
	nop			;58e7	00 	. 
	nop			;58e8	00 	. 
	nop			;58e9	00 	. 
	nop			;58ea	00 	. 
	nop			;58eb	00 	. 
	nop			;58ec	00 	. 
	nop			;58ed	00 	. 
	nop			;58ee	00 	. 
	nop			;58ef	00 	. 
	nop			;58f0	00 	. 
	nop			;58f1	00 	. 
	nop			;58f2	00 	. 
	nop			;58f3	00 	. 
	nop			;58f4	00 	. 
	nop			;58f5	00 	. 
	nop			;58f6	00 	. 
	nop			;58f7	00 	. 
	nop			;58f8	00 	. 
	nop			;58f9	00 	. 
	nop			;58fa	00 	. 
	nop			;58fb	00 	. 
	nop			;58fc	00 	. 
	nop			;58fd	00 	. 
	nop			;58fe	00 	. 
	nop			;58ff	00 	. 
	nop			;5900	00 	. 
	nop			;5901	00 	. 
	nop			;5902	00 	. 
	nop			;5903	00 	. 
	nop			;5904	00 	. 
	nop			;5905	00 	. 
	nop			;5906	00 	. 
	nop			;5907	00 	. 
	nop			;5908	00 	. 
	nop			;5909	00 	. 
	nop			;590a	00 	. 
	nop			;590b	00 	. 
	nop			;590c	00 	. 
	nop			;590d	00 	. 
	nop			;590e	00 	. 
	nop			;590f	00 	. 
	nop			;5910	00 	. 
	nop			;5911	00 	. 
	nop			;5912	00 	. 
	nop			;5913	00 	. 
	nop			;5914	00 	. 
	nop			;5915	00 	. 
	nop			;5916	00 	. 
	nop			;5917	00 	. 
	nop			;5918	00 	. 
	nop			;5919	00 	. 
	nop			;591a	00 	. 
	nop			;591b	00 	. 
	nop			;591c	00 	. 
	nop			;591d	00 	. 
	nop			;591e	00 	. 
	nop			;591f	00 	. 
	nop			;5920	00 	. 
	nop			;5921	00 	. 
	nop			;5922	00 	. 
	nop			;5923	00 	. 
	nop			;5924	00 	. 
	nop			;5925	00 	. 
	nop			;5926	00 	. 
	nop			;5927	00 	. 
	nop			;5928	00 	. 
	nop			;5929	00 	. 
	nop			;592a	00 	. 
	nop			;592b	00 	. 
	nop			;592c	00 	. 
	nop			;592d	00 	. 
	nop			;592e	00 	. 
	nop			;592f	00 	. 
	nop			;5930	00 	. 
	nop			;5931	00 	. 
	nop			;5932	00 	. 
	nop			;5933	00 	. 
	nop			;5934	00 	. 
	nop			;5935	00 	. 
	nop			;5936	00 	. 
	nop			;5937	00 	. 
	nop			;5938	00 	. 
	nop			;5939	00 	. 
	nop			;593a	00 	. 
	nop			;593b	00 	. 
	nop			;593c	00 	. 
	nop			;593d	00 	. 
	nop			;593e	00 	. 
	nop			;593f	00 	. 
	nop			;5940	00 	. 
	nop			;5941	00 	. 
	nop			;5942	00 	. 
	nop			;5943	00 	. 
	nop			;5944	00 	. 
	nop			;5945	00 	. 
	nop			;5946	00 	. 
	nop			;5947	00 	. 
	nop			;5948	00 	. 
	nop			;5949	00 	. 
	nop			;594a	00 	. 
	nop			;594b	00 	. 
	nop			;594c	00 	. 
	nop			;594d	00 	. 
	nop			;594e	00 	. 
	nop			;594f	00 	. 
	nop			;5950	00 	. 
	nop			;5951	00 	. 
	nop			;5952	00 	. 
	nop			;5953	00 	. 
	nop			;5954	00 	. 
	nop			;5955	00 	. 
	nop			;5956	00 	. 
	nop			;5957	00 	. 
	nop			;5958	00 	. 
	nop			;5959	00 	. 
	nop			;595a	00 	. 
	nop			;595b	00 	. 
	nop			;595c	00 	. 
	nop			;595d	00 	. 
	nop			;595e	00 	. 
	nop			;595f	00 	. 
	nop			;5960	00 	. 
	nop			;5961	00 	. 
	nop			;5962	00 	. 
	nop			;5963	00 	. 
	nop			;5964	00 	. 
	nop			;5965	00 	. 
	nop			;5966	00 	. 
	nop			;5967	00 	. 
	nop			;5968	00 	. 
	nop			;5969	00 	. 
	nop			;596a	00 	. 
	nop			;596b	00 	. 
	nop			;596c	00 	. 
	nop			;596d	00 	. 
	nop			;596e	00 	. 
	nop			;596f	00 	. 
	nop			;5970	00 	. 
	nop			;5971	00 	. 
	nop			;5972	00 	. 
	nop			;5973	00 	. 
	nop			;5974	00 	. 
	nop			;5975	00 	. 
	nop			;5976	00 	. 
	nop			;5977	00 	. 
	nop			;5978	00 	. 
	nop			;5979	00 	. 
	nop			;597a	00 	. 
	nop			;597b	00 	. 
	nop			;597c	00 	. 
	nop			;597d	00 	. 
	nop			;597e	00 	. 
	nop			;597f	00 	. 
	nop			;5980	00 	. 
	nop			;5981	00 	. 
	nop			;5982	00 	. 
	nop			;5983	00 	. 
	nop			;5984	00 	. 
	nop			;5985	00 	. 
	nop			;5986	00 	. 
	nop			;5987	00 	. 
	nop			;5988	00 	. 
	nop			;5989	00 	. 
	nop			;598a	00 	. 
	nop			;598b	00 	. 
	nop			;598c	00 	. 
	nop			;598d	00 	. 
	nop			;598e	00 	. 
	nop			;598f	00 	. 
	nop			;5990	00 	. 
	nop			;5991	00 	. 
	nop			;5992	00 	. 
	nop			;5993	00 	. 
	nop			;5994	00 	. 
	nop			;5995	00 	. 
	nop			;5996	00 	. 
	nop			;5997	00 	. 
	nop			;5998	00 	. 
	nop			;5999	00 	. 
	nop			;599a	00 	. 
	nop			;599b	00 	. 
	nop			;599c	00 	. 
	nop			;599d	00 	. 
	nop			;599e	00 	. 
	nop			;599f	00 	. 
	nop			;59a0	00 	. 
	nop			;59a1	00 	. 
	nop			;59a2	00 	. 
	nop			;59a3	00 	. 
	nop			;59a4	00 	. 
	nop			;59a5	00 	. 
	nop			;59a6	00 	. 
	nop			;59a7	00 	. 
	nop			;59a8	00 	. 
	nop			;59a9	00 	. 
	nop			;59aa	00 	. 
	nop			;59ab	00 	. 
	nop			;59ac	00 	. 
	nop			;59ad	00 	. 
	nop			;59ae	00 	. 
	nop			;59af	00 	. 
	nop			;59b0	00 	. 
	nop			;59b1	00 	. 
	nop			;59b2	00 	. 
	nop			;59b3	00 	. 
	nop			;59b4	00 	. 
	nop			;59b5	00 	. 
	nop			;59b6	00 	. 
	nop			;59b7	00 	. 
	nop			;59b8	00 	. 
	nop			;59b9	00 	. 
	nop			;59ba	00 	. 
	nop			;59bb	00 	. 
	nop			;59bc	00 	. 
	nop			;59bd	00 	. 
	nop			;59be	00 	. 
	nop			;59bf	00 	. 
	nop			;59c0	00 	. 
	nop			;59c1	00 	. 
	nop			;59c2	00 	. 
	nop			;59c3	00 	. 
	nop			;59c4	00 	. 
	nop			;59c5	00 	. 
	nop			;59c6	00 	. 
	nop			;59c7	00 	. 
	nop			;59c8	00 	. 
	nop			;59c9	00 	. 
	nop			;59ca	00 	. 
	nop			;59cb	00 	. 
	nop			;59cc	00 	. 
	nop			;59cd	00 	. 
	nop			;59ce	00 	. 
	nop			;59cf	00 	. 
	nop			;59d0	00 	. 
	nop			;59d1	00 	. 
	nop			;59d2	00 	. 
	nop			;59d3	00 	. 
	nop			;59d4	00 	. 
	nop			;59d5	00 	. 
	nop			;59d6	00 	. 
	nop			;59d7	00 	. 
l59d8h:
	nop			;59d8	00 	. 
	nop			;59d9	00 	. 
	nop			;59da	00 	. 
	nop			;59db	00 	. 
	nop			;59dc	00 	. 
	nop			;59dd	00 	. 
	nop			;59de	00 	. 
	nop			;59df	00 	. 
	nop			;59e0	00 	. 
	nop			;59e1	00 	. 
	nop			;59e2	00 	. 
	nop			;59e3	00 	. 
	nop			;59e4	00 	. 
	nop			;59e5	00 	. 
	nop			;59e6	00 	. 
	nop			;59e7	00 	. 
	nop			;59e8	00 	. 
	nop			;59e9	00 	. 
	nop			;59ea	00 	. 
	nop			;59eb	00 	. 
	nop			;59ec	00 	. 
	nop			;59ed	00 	. 
	nop			;59ee	00 	. 
	nop			;59ef	00 	. 
	nop			;59f0	00 	. 
	nop			;59f1	00 	. 
	nop			;59f2	00 	. 
	nop			;59f3	00 	. 
	nop			;59f4	00 	. 
	nop			;59f5	00 	. 
	nop			;59f6	00 	. 
	nop			;59f7	00 	. 
	nop			;59f8	00 	. 
	nop			;59f9	00 	. 
	nop			;59fa	00 	. 
	nop			;59fb	00 	. 
	nop			;59fc	00 	. 
	nop			;59fd	00 	. 
	nop			;59fe	00 	. 
	nop			;59ff	00 	. 
	nop			;5a00	00 	. 
	nop			;5a01	00 	. 
	nop			;5a02	00 	. 
	nop			;5a03	00 	. 
	nop			;5a04	00 	. 
	nop			;5a05	00 	. 
	nop			;5a06	00 	. 
	nop			;5a07	00 	. 
	nop			;5a08	00 	. 
	nop			;5a09	00 	. 
	nop			;5a0a	00 	. 
	nop			;5a0b	00 	. 
	nop			;5a0c	00 	. 
	nop			;5a0d	00 	. 
	nop			;5a0e	00 	. 
	nop			;5a0f	00 	. 
	nop			;5a10	00 	. 
	nop			;5a11	00 	. 
	nop			;5a12	00 	. 
	nop			;5a13	00 	. 
	nop			;5a14	00 	. 
	nop			;5a15	00 	. 
	nop			;5a16	00 	. 
	nop			;5a17	00 	. 
	nop			;5a18	00 	. 
	nop			;5a19	00 	. 
	nop			;5a1a	00 	. 
	nop			;5a1b	00 	. 
	nop			;5a1c	00 	. 
	nop			;5a1d	00 	. 
	nop			;5a1e	00 	. 
	nop			;5a1f	00 	. 
	nop			;5a20	00 	. 
	nop			;5a21	00 	. 
	nop			;5a22	00 	. 
	nop			;5a23	00 	. 
	nop			;5a24	00 	. 
	nop			;5a25	00 	. 
	nop			;5a26	00 	. 
	nop			;5a27	00 	. 
	nop			;5a28	00 	. 
	nop			;5a29	00 	. 
	nop			;5a2a	00 	. 
	nop			;5a2b	00 	. 
	nop			;5a2c	00 	. 
	nop			;5a2d	00 	. 
	nop			;5a2e	00 	. 
	nop			;5a2f	00 	. 
	nop			;5a30	00 	. 
	nop			;5a31	00 	. 
	nop			;5a32	00 	. 
	nop			;5a33	00 	. 
	nop			;5a34	00 	. 
	nop			;5a35	00 	. 
	nop			;5a36	00 	. 
	nop			;5a37	00 	. 
	nop			;5a38	00 	. 
	nop			;5a39	00 	. 
	nop			;5a3a	00 	. 
	nop			;5a3b	00 	. 
	nop			;5a3c	00 	. 
	nop			;5a3d	00 	. 
	nop			;5a3e	00 	. 
	nop			;5a3f	00 	. 
	nop			;5a40	00 	. 
	nop			;5a41	00 	. 
	nop			;5a42	00 	. 
	nop			;5a43	00 	. 
	nop			;5a44	00 	. 
	nop			;5a45	00 	. 
	nop			;5a46	00 	. 
	nop			;5a47	00 	. 
	nop			;5a48	00 	. 
	nop			;5a49	00 	. 
	nop			;5a4a	00 	. 
	nop			;5a4b	00 	. 
	nop			;5a4c	00 	. 
	nop			;5a4d	00 	. 
	nop			;5a4e	00 	. 
	nop			;5a4f	00 	. 
	nop			;5a50	00 	. 
	nop			;5a51	00 	. 
	nop			;5a52	00 	. 
	nop			;5a53	00 	. 
	nop			;5a54	00 	. 
	nop			;5a55	00 	. 
	nop			;5a56	00 	. 
	nop			;5a57	00 	. 
	nop			;5a58	00 	. 
	nop			;5a59	00 	. 
	nop			;5a5a	00 	. 
	nop			;5a5b	00 	. 
	nop			;5a5c	00 	. 
	nop			;5a5d	00 	. 
	nop			;5a5e	00 	. 
	nop			;5a5f	00 	. 
	nop			;5a60	00 	. 
	nop			;5a61	00 	. 
	nop			;5a62	00 	. 
	nop			;5a63	00 	. 
	nop			;5a64	00 	. 
	nop			;5a65	00 	. 
	nop			;5a66	00 	. 
	nop			;5a67	00 	. 
	nop			;5a68	00 	. 
	nop			;5a69	00 	. 
	nop			;5a6a	00 	. 
	nop			;5a6b	00 	. 
	nop			;5a6c	00 	. 
	nop			;5a6d	00 	. 
	nop			;5a6e	00 	. 
	nop			;5a6f	00 	. 
	nop			;5a70	00 	. 
	nop			;5a71	00 	. 
	nop			;5a72	00 	. 
	nop			;5a73	00 	. 
	nop			;5a74	00 	. 
	nop			;5a75	00 	. 
	nop			;5a76	00 	. 
	nop			;5a77	00 	. 
	nop			;5a78	00 	. 
	nop			;5a79	00 	. 
	nop			;5a7a	00 	. 
	nop			;5a7b	00 	. 
	nop			;5a7c	00 	. 
	nop			;5a7d	00 	. 
	nop			;5a7e	00 	. 
	nop			;5a7f	00 	. 
	nop			;5a80	00 	. 
	nop			;5a81	00 	. 
	nop			;5a82	00 	. 
	nop			;5a83	00 	. 
	nop			;5a84	00 	. 
	nop			;5a85	00 	. 
	nop			;5a86	00 	. 
	nop			;5a87	00 	. 
	nop			;5a88	00 	. 
	nop			;5a89	00 	. 
	nop			;5a8a	00 	. 
	nop			;5a8b	00 	. 
	nop			;5a8c	00 	. 
	nop			;5a8d	00 	. 
	nop			;5a8e	00 	. 
	nop			;5a8f	00 	. 
	nop			;5a90	00 	. 
	nop			;5a91	00 	. 
	nop			;5a92	00 	. 
	nop			;5a93	00 	. 
	nop			;5a94	00 	. 
	nop			;5a95	00 	. 
	nop			;5a96	00 	. 
	nop			;5a97	00 	. 
	nop			;5a98	00 	. 
	nop			;5a99	00 	. 
	nop			;5a9a	00 	. 
	nop			;5a9b	00 	. 
	nop			;5a9c	00 	. 
	nop			;5a9d	00 	. 
	nop			;5a9e	00 	. 
	nop			;5a9f	00 	. 
	nop			;5aa0	00 	. 
	nop			;5aa1	00 	. 
	nop			;5aa2	00 	. 
	nop			;5aa3	00 	. 
	nop			;5aa4	00 	. 
	nop			;5aa5	00 	. 
	nop			;5aa6	00 	. 
	nop			;5aa7	00 	. 
	nop			;5aa8	00 	. 
	nop			;5aa9	00 	. 
	nop			;5aaa	00 	. 
	nop			;5aab	00 	. 
	nop			;5aac	00 	. 
	nop			;5aad	00 	. 
	nop			;5aae	00 	. 
	nop			;5aaf	00 	. 
	nop			;5ab0	00 	. 
	nop			;5ab1	00 	. 
	nop			;5ab2	00 	. 
	nop			;5ab3	00 	. 
	nop			;5ab4	00 	. 
	nop			;5ab5	00 	. 
	nop			;5ab6	00 	. 
	nop			;5ab7	00 	. 
	nop			;5ab8	00 	. 
	nop			;5ab9	00 	. 
	nop			;5aba	00 	. 
	nop			;5abb	00 	. 
	nop			;5abc	00 	. 
	nop			;5abd	00 	. 
	nop			;5abe	00 	. 
	nop			;5abf	00 	. 
	nop			;5ac0	00 	. 
	nop			;5ac1	00 	. 
	nop			;5ac2	00 	. 
	nop			;5ac3	00 	. 
	nop			;5ac4	00 	. 
	nop			;5ac5	00 	. 
	nop			;5ac6	00 	. 
	nop			;5ac7	00 	. 
	nop			;5ac8	00 	. 
	nop			;5ac9	00 	. 
	nop			;5aca	00 	. 
	nop			;5acb	00 	. 
	nop			;5acc	00 	. 
	nop			;5acd	00 	. 
	nop			;5ace	00 	. 
	nop			;5acf	00 	. 
	nop			;5ad0	00 	. 
	nop			;5ad1	00 	. 
	nop			;5ad2	00 	. 
	nop			;5ad3	00 	. 
	nop			;5ad4	00 	. 
	nop			;5ad5	00 	. 
	nop			;5ad6	00 	. 
	nop			;5ad7	00 	. 
	nop			;5ad8	00 	. 
	nop			;5ad9	00 	. 
	nop			;5ada	00 	. 
	nop			;5adb	00 	. 
	nop			;5adc	00 	. 
	nop			;5add	00 	. 
	nop			;5ade	00 	. 
	nop			;5adf	00 	. 
	nop			;5ae0	00 	. 
	nop			;5ae1	00 	. 
	nop			;5ae2	00 	. 
	nop			;5ae3	00 	. 
	nop			;5ae4	00 	. 
	nop			;5ae5	00 	. 
	nop			;5ae6	00 	. 
	nop			;5ae7	00 	. 
	nop			;5ae8	00 	. 
	nop			;5ae9	00 	. 
	nop			;5aea	00 	. 
	nop			;5aeb	00 	. 
	nop			;5aec	00 	. 
	nop			;5aed	00 	. 
	nop			;5aee	00 	. 
	nop			;5aef	00 	. 
	nop			;5af0	00 	. 
	nop			;5af1	00 	. 
	nop			;5af2	00 	. 
	nop			;5af3	00 	. 
	nop			;5af4	00 	. 
	nop			;5af5	00 	. 
	nop			;5af6	00 	. 
	nop			;5af7	00 	. 
	nop			;5af8	00 	. 
	nop			;5af9	00 	. 
	nop			;5afa	00 	. 
	nop			;5afb	00 	. 
	nop			;5afc	00 	. 
	nop			;5afd	00 	. 
	nop			;5afe	00 	. 
	nop			;5aff	00 	. 
l5b00h:
	jr l5b3eh		;5b00	18 3c 	. < 
	sub a			;5b02	97 	. 
	inc hl			;5b03	23 	# 
	jp l0283h		;5b04	c3 83 02 	. . . 
	ld c,002h		;5b07	0e 02 	. . 
	ld e,01bh		;5b09	1e 1b 	. . 
	call l0005h		;5b0b	cd 05 00 	. . . 
	ld c,002h		;5b0e	0e 02 	. . 
	ld e,050h		;5b10	1e 50 	. P 
	call l0005h		;5b12	cd 05 00 	. . . 
	ld a,01bh		;5b15	3e 1b 	> . 
	ld (l09d5h),a		;5b17	32 d5 09 	2 . . 
	ret			;5b1a	c9 	. 
	ld c,002h		;5b1b	0e 02 	. . 
	ld e,01bh		;5b1d	1e 1b 	. . 
	call l0005h		;5b1f	cd 05 00 	. . . 
	ld c,002h		;5b22	0e 02 	. . 
	ld e,04fh		;5b24	1e 4f 	. O 
	call l0005h		;5b26	cd 05 00 	. . . 
	ld a,007h		;5b29	3e 07 	> . 
	ld (l09d5h),a		;5b2b	32 d5 09 	2 . . 
	ret			;5b2e	c9 	. 
	ld (hl),h			;5b2f	74 	t 
	ld h,l			;5b30	65 	e 
	ld h,c			;5b31	61 	a 
	ld l,h			;5b32	6c 	l 
l5b33h:
	call 002eeh		;5b33	cd ee 02 	. . . 
	call 008d1h		;5b36	cd d1 08 	. . . 
	call sub_0e89h		;5b39	cd 89 0e 	. . . 
	jr l5b33h		;5b3c	18 f5 	. . 
l5b3eh:
	jp 001f2h		;5b3e	c3 f2 01 	. . . 
	nop			;5b41	00 	. 
	nop			;5b42	00 	. 
	nop			;5b43	00 	. 
	nop			;5b44	00 	. 
	nop			;5b45	00 	. 
	nop			;5b46	00 	. 
	nop			;5b47	00 	. 
	nop			;5b48	00 	. 
	nop			;5b49	00 	. 
	nop			;5b4a	00 	. 
	nop			;5b4b	00 	. 
	nop			;5b4c	00 	. 
	nop			;5b4d	00 	. 
	nop			;5b4e	00 	. 
	nop			;5b4f	00 	. 
	nop			;5b50	00 	. 
	nop			;5b51	00 	. 
	nop			;5b52	00 	. 
	nop			;5b53	00 	. 
	nop			;5b54	00 	. 
	nop			;5b55	00 	. 
	nop			;5b56	00 	. 
	nop			;5b57	00 	. 
	nop			;5b58	00 	. 
	nop			;5b59	00 	. 
	nop			;5b5a	00 	. 
	nop			;5b5b	00 	. 
	nop			;5b5c	00 	. 
	nop			;5b5d	00 	. 
	nop			;5b5e	00 	. 
	nop			;5b5f	00 	. 
	nop			;5b60	00 	. 
	nop			;5b61	00 	. 
	nop			;5b62	00 	. 
	nop			;5b63	00 	. 
	nop			;5b64	00 	. 
	nop			;5b65	00 	. 
	nop			;5b66	00 	. 
	nop			;5b67	00 	. 
	nop			;5b68	00 	. 
	nop			;5b69	00 	. 
	nop			;5b6a	00 	. 
	nop			;5b6b	00 	. 
	nop			;5b6c	00 	. 
	nop			;5b6d	00 	. 
	nop			;5b6e	00 	. 
	nop			;5b6f	00 	. 
	nop			;5b70	00 	. 
	nop			;5b71	00 	. 
	nop			;5b72	00 	. 
	nop			;5b73	00 	. 
	nop			;5b74	00 	. 
	nop			;5b75	00 	. 
	nop			;5b76	00 	. 
	nop			;5b77	00 	. 
	nop			;5b78	00 	. 
	nop			;5b79	00 	. 
	nop			;5b7a	00 	. 
	nop			;5b7b	00 	. 
	nop			;5b7c	00 	. 
	nop			;5b7d	00 	. 
	nop			;5b7e	00 	. 
	nop			;5b7f	00 	. 
	nop			;5b80	00 	. 
	nop			;5b81	00 	. 
	nop			;5b82	00 	. 
	nop			;5b83	00 	. 
	nop			;5b84	00 	. 
	nop			;5b85	00 	. 
	nop			;5b86	00 	. 
	nop			;5b87	00 	. 
	nop			;5b88	00 	. 
	nop			;5b89	00 	. 
	nop			;5b8a	00 	. 
	nop			;5b8b	00 	. 
	nop			;5b8c	00 	. 
	nop			;5b8d	00 	. 
	nop			;5b8e	00 	. 
	nop			;5b8f	00 	. 
	nop			;5b90	00 	. 
	nop			;5b91	00 	. 
	nop			;5b92	00 	. 
	nop			;5b93	00 	. 
	nop			;5b94	00 	. 
	nop			;5b95	00 	. 
	nop			;5b96	00 	. 
	nop			;5b97	00 	. 
	nop			;5b98	00 	. 
	nop			;5b99	00 	. 
	nop			;5b9a	00 	. 
	nop			;5b9b	00 	. 
	nop			;5b9c	00 	. 
	nop			;5b9d	00 	. 
	nop			;5b9e	00 	. 
	nop			;5b9f	00 	. 
	nop			;5ba0	00 	. 
	nop			;5ba1	00 	. 
	nop			;5ba2	00 	. 
	nop			;5ba3	00 	. 
	nop			;5ba4	00 	. 
	nop			;5ba5	00 	. 
	nop			;5ba6	00 	. 
	nop			;5ba7	00 	. 
	nop			;5ba8	00 	. 
	nop			;5ba9	00 	. 
	nop			;5baa	00 	. 
	nop			;5bab	00 	. 
	nop			;5bac	00 	. 
	nop			;5bad	00 	. 
	nop			;5bae	00 	. 
	nop			;5baf	00 	. 
	nop			;5bb0	00 	. 
	nop			;5bb1	00 	. 
	nop			;5bb2	00 	. 
	nop			;5bb3	00 	. 
	nop			;5bb4	00 	. 
	nop			;5bb5	00 	. 
	nop			;5bb6	00 	. 
	nop			;5bb7	00 	. 
	nop			;5bb8	00 	. 
	nop			;5bb9	00 	. 
	nop			;5bba	00 	. 
	nop			;5bbb	00 	. 
	nop			;5bbc	00 	. 
	nop			;5bbd	00 	. 
	nop			;5bbe	00 	. 
	nop			;5bbf	00 	. 
	nop			;5bc0	00 	. 
	nop			;5bc1	00 	. 
	nop			;5bc2	00 	. 
	nop			;5bc3	00 	. 
	nop			;5bc4	00 	. 
	nop			;5bc5	00 	. 
	nop			;5bc6	00 	. 
	nop			;5bc7	00 	. 
	nop			;5bc8	00 	. 
	nop			;5bc9	00 	. 
	nop			;5bca	00 	. 
	nop			;5bcb	00 	. 
	ldir		;5bcc	ed b0 	. . 
	ld hl,00141h		;5bce	21 41 01 	! A . 
	ld de,sub_0e89h		;5bd1	11 89 0e 	. . . 
	push de			;5bd4	d5 	. 
	call sub_0c56h		;5bd5	cd 56 0c 	. V . 
	or a			;5bd8	b7 	. 
	jp nz,l0000h		;5bd9	c2 00 00 	. . . 
	pop hl			;5bdc	e1 	. 
	ex de,hl			;5bdd	eb 	. 
	sbc hl,de		;5bde	ed 52 	. R 
	push hl			;5be0	e5 	. 
	ld hl,l014eh		;5be1	21 4e 01 	! N . 
	ld de,l0080h		;5be4	11 80 00 	. . . 
	ld b,d			;5be7	42 	B 
	ld c,e			;5be8	4b 	K 
	ldir		;5be9	ed b0 	. . 
	ld hl,sub_0e89h		;5beb	21 89 0e 	! . . 
	pop bc			;5bee	c1 	. 
	jp l00feh		;5bef	c3 fe 00 	. . . 
	ld a,(l23c5h+2)		;5bf2	3a c7 23 	: . # 
	ld (l2262h),a		;5bf5	32 62 22 	2 b " 
	inc a			;5bf8	3c 	< 
	ld (l225fh+1),a		;5bf9	32 60 22 	2 ` " 
	ld a,(l23c8h)		;5bfc	3a c8 23 	: . # 
	ld (l225fh),a		;5bff	32 5f 22 	2 _ " 
	ld a,(l23c8h+1)		;5c02	3a c9 23 	: . # 
	ld hl,l225fh		;5c05	21 5f 22 	! _ " 
	add a,(hl)			;5c08	86 	. 
	dec a			;5c09	3d 	= 
	ld (l225eh),a		;5c0a	32 5e 22 	2 ^ " 
	ld a,(l23cah)		;5c0d	3a ca 23 	: . # 
	ld hl,l225fh+1		;5c10	21 60 22 	! ` " 
	add a,(hl)			;5c13	86 	. 
	sub 003h		;5c14	d6 03 	. . 
	ld (l225fh+2),a		;5c16	32 61 22 	2 a " 
	inc a			;5c19	3c 	< 
	ld (l2262h+1),a		;5c1a	32 63 22 	2 c " 
	ld hl,(l0005h+1)		;5c1d	2a 06 00 	* . . 
	ld sp,hl			;5c20	f9 	. 
	dec h			;5c21	25 	% 
	ld (0225ch),hl		;5c22	22 5c 22 	" \ " 
	ld (02304h),hl		;5c25	22 04 23 	" . # 
	ld hl,l0080h		;5c28	21 80 00 	! . . 
	ld a,(hl)			;5c2b	7e 	~ 
	add a,l			;5c2c	85 	. 
	ld l,a			;5c2d	6f 	o 
	inc hl			;5c2e	23 	# 
	ld (hl),000h		;5c2f	36 00 	6 . 
	ld hl,l0081h		;5c31	21 81 00 	! . . 
	ld de,(l2315h)		;5c34	ed 5b 15 23 	. [ . # 
	push de			;5c38	d5 	. 
	ld b,00fh		;5c39	06 0f 	. . 
	call 002d3h		;5c3b	cd d3 02 	. . . 
	ld de,l2317h		;5c3e	11 17 23 	. . # 
	ld b,005h		;5c41	06 05 	. . 
	call 002d3h		;5c43	cd d3 02 	. . . 
	pop de			;5c46	d1 	. 
	ld bc,(023c3h)		;5c47	ed 4b c3 23 	. K . # 
	push bc			;5c4b	c5 	. 
	ld hl,(0225ch)		;5c4c	2a 5c 22 	* \ " 
	sbc hl,bc		;5c4f	ed 42 	. B 
	ld b,h			;5c51	44 	D 
	ld c,l			;5c52	4d 	M 
	pop hl			;5c53	e1 	. 
	push hl			;5c54	e5 	. 
	ex de,hl			;5c55	eb 	. 
	call sub_0c59h		;5c56	cd 59 0c 	. Y . 
	pop hl			;5c59	e1 	. 
	cp 002h		;5c5a	fe 02 	. . 
	jr nz,l5c64h		;5c5c	20 06 	  . 
	dec a			;5c5e	3d 	= 
	call 005dfh		;5c5f	cd df 05 	. . . 
	jr l5cc9h		;5c62	18 65 	. e 
l5c64h:
	dec hl			;5c64	2b 	+ 
	ld (hl),0ffh		;5c65	36 ff 	6 . 
	inc hl			;5c67	23 	# 
	ld (l2302h),de		;5c68	ed 53 02 23 	. S . # 
	xor a			;5c6c	af 	. 
	ld (de),a			;5c6d	12 	. 
	ld a,(l23d8h+1)		;5c6e	3a d9 23 	: . # 
	or a			;5c71	b7 	. 
	jr z,l5c83h		;5c72	28 0f 	( . 
	ld hl,023ebh		;5c74	21 eb 23 	! . # 
	ld a,(hl)			;5c77	7e 	~ 
	inc hl			;5c78	23 	# 
	or a			;5c79	b7 	. 
	jr nz,l5c80h		;5c7a	20 04 	  . 
	call sub_241ah+2		;5c7c	cd 1c 24 	. . $ 
	scf			;5c7f	37 	7 
l5c80h:
	call nc,sub_088ch		;5c80	d4 8c 08 	. . . 
l5c83h:
	ld ix,l2262h+2		;5c83	dd 21 64 22 	. ! d " 
	xor a			;5c87	af 	. 
	ld (ix+000h),a		;5c88	dd 77 00 	. w . 
	ld (ix+001h),a		;5c8b	dd 77 01 	. w . 
	ld (ix+002h),a		;5c8e	dd 77 02 	. w . 
	set 1,(ix+000h)		;5c91	dd cb 00 ce 	. . . . 
	ld (l2301h),a		;5c95	32 01 23 	2 . # 
	ld hl,l0001h		;5c98	21 01 00 	! . . 
	ld (l22fbh),hl		;5c9b	22 fb 22 	" . " 
	ld a,(l225fh)		;5c9e	3a 5f 22 	: _ " 
	ld c,a			;5ca1	4f 	O 
	ld a,(l225fh+1)		;5ca2	3a 60 22 	: ` " 
	ld b,a			;5ca5	47 	G 
	ld hl,(023c3h)		;5ca6	2a c3 23 	* . # 
	ld d,h			;5ca9	54 	T 
	ld e,l			;5caa	5d 	] 
	ld (l2306h),hl		;5cab	22 06 23 	" . # 
	jp l0133h		;5cae	c3 33 01 	. 3 . 
	ld a,(l23d8h+2)		;5cb1	3a da 23 	: . # 
	or a			;5cb4	b7 	. 
	jr z,l5cc6h		;5cb5	28 0f 	( . 
	ld hl,l23f0h		;5cb7	21 f0 23 	! . # 
	ld a,(hl)			;5cba	7e 	~ 
	inc hl			;5cbb	23 	# 
	or a			;5cbc	b7 	. 
	jr nz,l5cc3h		;5cbd	20 04 	  . 
	call 0241eh		;5cbf	cd 1e 24 	. . $ 
	scf			;5cc2	37 	7 
l5cc3h:
	call nc,sub_088ch		;5cc3	d4 8c 08 	. . . 
l5cc6h:
	call sub_0874h		;5cc6	cd 74 08 	. t . 
l5cc9h:
	ld a,(00141h)		;5cc9	3a 41 01 	: A . 
	or a			;5ccc	b7 	. 
	jp nz,001ceh		;5ccd	c2 ce 01 	. . . 
	jp l0c55h		;5cd0	c3 55 0c 	. U . 
	xor a			;5cd3	af 	. 
	ld (de),a			;5cd4	12 	. 
l5cd5h:
	ld a,(hl)			;5cd5	7e 	~ 
	or a			;5cd6	b7 	. 
	ret z			;5cd7	c8 	. 
	inc hl			;5cd8	23 	# 
	cp 020h		;5cd9	fe 20 	.   
	jr z,l5cd5h		;5cdb	28 f8 	( . 
	dec hl			;5cdd	2b 	+ 
l5cdeh:
	ld a,(hl)			;5cde	7e 	~ 
	ld (de),a			;5cdf	12 	. 
	inc de			;5ce0	13 	. 
	or a			;5ce1	b7 	. 
	ret z			;5ce2	c8 	. 
	inc hl			;5ce3	23 	# 
	cp 020h		;5ce4	fe 20 	.   
	jr z,l5ceah		;5ce6	28 02 	( . 
	djnz l5cdeh		;5ce8	10 f4 	. . 
l5ceah:
	xor a			;5cea	af 	. 
	dec de			;5ceb	1b 	. 
	ld (de),a			;5cec	12 	. 
	ret			;5ced	c9 	. 
	push hl			;5cee	e5 	. 
	ld hl,l2262h+2		;5cef	21 64 22 	! d " 
	bit 1,(hl)		;5cf2	cb 4e 	. N 
	jr z,l5cfbh		;5cf4	28 05 	( . 
	call l04d3h		;5cf6	cd d3 04 	. . . 
	jr l5d1ch		;5cf9	18 21 	. ! 
l5cfbh:
	bit 6,(ix+002h)		;5cfb	dd cb 02 76 	. . . v 
	jr z,l5d0ah		;5cff	28 09 	( . 
	call 003e7h		;5d01	cd e7 03 	. . . 
	bit 3,(hl)		;5d04	cb 5e 	. ^ 
	jr nz,l5d0eh		;5d06	20 06 	  . 
	jr l5d17h		;5d08	18 0d 	. . 
l5d0ah:
	bit 3,(hl)		;5d0a	cb 5e 	. ^ 
	jr z,l5d13h		;5d0c	28 05 	( . 
l5d0eh:
	call 00479h		;5d0e	cd 79 04 	. y . 
	jr l5d1ch		;5d11	18 09 	. . 
l5d13h:
	bit 6,(hl)		;5d13	cb 76 	. v 
	jr z,l5d1ch		;5d15	28 05 	( . 
l5d17h:
	push de			;5d17	d5 	. 
	call sub_032ch		;5d18	cd 2c 03 	. , . 
	pop de			;5d1b	d1 	. 
l5d1ch:
	call sub_0558h		;5d1c	cd 58 05 	. X . 
	call 0084dh		;5d1f	cd 4d 08 	. M . 
	res 1,(hl)		;5d22	cb 8e 	. . 
	res 3,(hl)		;5d24	cb 9e 	. . 
	res 6,(ix+002h)		;5d26	dd cb 02 b6 	. . . . 
	pop hl			;5d2a	e1 	. 
	ret			;5d2b	c9 	. 
	push hl			;5d2c	e5 	. 
	push bc			;5d2d	c5 	. 
	ld a,(l225fh)		;5d2e	3a 5f 22 	: _ " 
	ld c,a			;5d31	4f 	O 
	call 0084dh		;5d32	cd 4d 08 	. M . 
	ld a,(l2301h)		;5d35	3a 01 23 	: . # 
	or a			;5d38	b7 	. 
	jr z,l5d64h		;5d39	28 29 	( ) 
	ld h,a			;5d3b	67 	g 
l5d3ch:
	ld a,(l23cdh+1)		;5d3c	3a ce 23 	: . # 
	ld l,a			;5d3f	6f 	o 
l5d40h:
	ld a,(l23cdh)		;5d40	3a cd 23 	: . # 
	ld b,a			;5d43	47 	G 
l5d44h:
	ld a,(de)			;5d44	1a 	. 
	inc de			;5d45	13 	. 
	cp 009h		;5d46	fe 09 	. . 
	jr z,l5d5eh		;5d48	28 14 	( . 
	cp 00dh		;5d4a	fe 0d 	. . 
	jr z,l5da7h		;5d4c	28 59 	( Y 
	cp 001h		;5d4e	fe 01 	. . 
	call c,003afh		;5d50	dc af 03 	. . . 
	jr c,l5da7h		;5d53	38 52 	8 R 
	cp 020h		;5d55	fe 20 	.   
	jr nc,l5d5ch		;5d57	30 03 	0 . 
	dec b			;5d59	05 	. 
	jr z,l5d5eh		;5d5a	28 02 	( . 
l5d5ch:
	djnz l5d44h		;5d5c	10 e6 	. . 
l5d5eh:
	dec l			;5d5e	2d 	- 
	jr nz,l5d40h		;5d5f	20 df 	  . 
	dec h			;5d61	25 	% 
	jr nz,l5d3ch		;5d62	20 d8 	  . 
l5d64h:
	ld a,(de)			;5d64	1a 	. 
	inc de			;5d65	13 	. 
	cp 00dh		;5d66	fe 0d 	. . 
	call z,l03cfh		;5d68	cc cf 03 	. . . 
	jr z,l5da7h		;5d6b	28 3a 	( : 
	cp 001h		;5d6d	fe 01 	. . 
	call c,l03ddh+1		;5d6f	dc de 03 	. . . 
	jr c,l5da7h		;5d72	38 33 	8 3 
	cp 009h		;5d74	fe 09 	. . 
	jr nz,l5d86h		;5d76	20 0e 	  . 
	call 00f2fh		;5d78	cd 2f 0f 	. / . 
	call sub_0896h		;5d7b	cd 96 08 	. . . 
	call sub_08a8h		;5d7e	cd a8 08 	. . . 
	add a,c			;5d81	81 	. 
	ld c,a			;5d82	4f 	O 
	dec c			;5d83	0d 	. 
	jr l5d93h		;5d84	18 0d 	. . 
l5d86h:
	cp 020h		;5d86	fe 20 	.   
	jr c,l5dbdh		;5d88	38 33 	8 3 
	cp 080h		;5d8a	fe 80 	. . 
	jr c,l5d90h		;5d8c	38 02 	8 . 
	ld a,03fh		;5d8e	3e 3f 	> ? 
l5d90h:
	call 008c0h		;5d90	cd c0 08 	. . . 
l5d93h:
	inc c			;5d93	0c 	. 
	ld a,(l225eh)		;5d94	3a 5e 22 	: ^ " 
	cp c			;5d97	b9 	. 
	jr nc,l5d64h		;5d98	30 ca 	0 . 
l5d9ah:
	ld a,(de)			;5d9a	1a 	. 
	inc de			;5d9b	13 	. 
	cp 001h		;5d9c	fe 01 	. . 
	call c,003afh		;5d9e	dc af 03 	. . . 
	jr c,l5da7h		;5da1	38 04 	8 . 
	cp 00dh		;5da3	fe 0d 	. . 
	jr nz,l5d9ah		;5da5	20 f3 	  . 
l5da7h:
	push af			;5da7	f5 	. 
	call 003f9h		;5da8	cd f9 03 	. . . 
	pop af			;5dab	f1 	. 
	pop bc			;5dac	c1 	. 
	pop hl			;5dad	e1 	. 
	ret			;5dae	c9 	. 
	bit 6,(ix+000h)		;5daf	dd cb 00 76 	. . . v 
	ret nz			;5db3	c0 	. 
	push hl			;5db4	e5 	. 
	ld hl,(l2302h)		;5db5	2a 02 23 	* . # 
	or a			;5db8	b7 	. 
	sbc hl,de		;5db9	ed 52 	. R 
	pop hl			;5dbb	e1 	. 
	ret			;5dbc	c9 	. 
l5dbdh:
	ld b,a			;5dbd	47 	G 
	ld a,05eh		;5dbe	3e 5e 	> ^ 
	call 008c0h		;5dc0	cd c0 08 	. . . 
	inc c			;5dc3	0c 	. 
	ld a,(l225eh)		;5dc4	3a 5e 22 	: ^ " 
	cp c			;5dc7	b9 	. 
	jr c,l5d9ah		;5dc8	38 d0 	8 . 
	ld a,b			;5dca	78 	x 
	add a,040h		;5dcb	c6 40 	. @ 
	jr l5d90h		;5dcd	18 c1 	. . 
	push af			;5dcf	f5 	. 
	ld a,(l23c5h)		;5dd0	3a c5 23 	: . # 
l5dd3h:
	or a			;5dd3	b7 	. 
	jr nz,l5dd8h		;5dd4	20 02 	  . 
	ld a,020h		;5dd6	3e 20 	>   
l5dd8h:
	inc c			;5dd8	0c 	. 
	call 008c0h		;5dd9	cd c0 08 	. . . 
	pop af			;5ddc	f1 	. 
	ret			;5ddd	c9 	. 
	call 003afh		;5dde	cd af 03 	. . . 
	push af			;5de1	f5 	. 
	ld a,(l23c5h+1)		;5de2	3a c6 23 	: . # 
	jr l5dd3h		;5de5	18 ec 	. . 
	push bc			;5de7	c5 	. 
	ld a,(l2262h+1)		;5de8	3a 63 22 	: c " 
	ld b,a			;5deb	47 	G 
	ld a,(l225eh)		;5dec	3a 5e 22 	: ^ " 
	ld c,a			;5def	4f 	O 
	call 0084dh		;5df0	cd 4d 08 	. M . 
	pop bc			;5df3	c1 	. 
	ld a,00ah		;5df4	3e 0a 	> . 
	jp 008c0h		;5df6	c3 c0 08 	. . . 
	ld a,(l22fah)		;5df9	3a fa 22 	: . " 
	or a			;5dfc	b7 	. 
	ret z			;5dfd	c8 	. 
	ld b,a			;5dfe	47 	G 
	bit 1,(ix+000h)		;5dff	dd cb 00 4e 	. . . N 
	jr nz,l5e2ah		;5e03	20 25 	  % 
	ld a,(l225eh)		;5e05	3a 5e 22 	: ^ " 
	cp c			;5e08	b9 	. 
	jr c,l5e2ah		;5e09	38 1f 	8 . 
	ld hl,l23e6h		;5e0b	21 e6 23 	! . # 
	ld a,(hl)			;5e0e	7e 	~ 
	or a			;5e0f	b7 	. 
	jr z,l5e1ch		;5e10	28 0a 	( . 
	ld b,a			;5e12	47 	G 
l5e13h:
	inc hl			;5e13	23 	# 
	ld a,(hl)			;5e14	7e 	~ 
	call 008c0h		;5e15	cd c0 08 	. . . 
	djnz l5e13h		;5e18	10 f9 	. . 
	jr l5e2ah		;5e1a	18 0e 	. . 
l5e1ch:
	ld a,(l225eh)		;5e1c	3a 5e 22 	: ^ " 
	cp c			;5e1f	b9 	. 
	jr c,l5e2ah		;5e20	38 08 	8 . 
	ld a,020h		;5e22	3e 20 	>   
	call 008c0h		;5e24	cd c0 08 	. . . 
	inc c			;5e27	0c 	. 
	djnz l5e1ch		;5e28	10 f2 	. . 
l5e2ah:
	xor a			;5e2a	af 	. 
	ld (l22fah),a		;5e2b	32 fa 22 	2 . " 
	ret			;5e2e	c9 	. 
	push de			;5e2f	d5 	. 
	push bc			;5e30	c5 	. 
	ld a,(l225fh)		;5e31	3a 5f 22 	: _ " 
	ld c,a			;5e34	4f 	O 
	dec de			;5e35	1b 	. 
	ld a,(de)			;5e36	1a 	. 
	inc de			;5e37	13 	. 
	or a			;5e38	b7 	. 
	jr z,l5e58h		;5e39	28 1d 	( . 
l5e3bh:
	ld a,(de)			;5e3b	1a 	. 
	or a			;5e3c	b7 	. 
	jr z,l5e58h		;5e3d	28 19 	( . 
	cp 00dh		;5e3f	fe 0d 	. . 
	jr z,l5e58h		;5e41	28 15 	( . 
	cp 009h		;5e43	fe 09 	. . 
	jr nz,l5e4fh		;5e45	20 08 	  . 
	call 00f2fh		;5e47	cd 2f 0f 	. / . 
	add a,c			;5e4a	81 	. 
	ld c,a			;5e4b	4f 	O 
	dec c			;5e4c	0d 	. 
	jr l5e54h		;5e4d	18 05 	. . 
l5e4fh:
	cp 020h		;5e4f	fe 20 	.   
	jr nc,l5e54h		;5e51	30 01 	0 . 
	inc c			;5e53	0c 	. 
l5e54h:
	inc c			;5e54	0c 	. 
	inc de			;5e55	13 	. 
	jr l5e3bh		;5e56	18 e3 	. . 
l5e58h:
	inc c			;5e58	0c 	. 
	ld a,(l225fh)		;5e59	3a 5f 22 	: _ " 
	neg		;5e5c	ed 44 	. D 
	add a,c			;5e5e	81 	. 
	ld c,a			;5e5f	4f 	O 
	ld a,(l2301h)		;5e60	3a 01 23 	: . # 
	or a			;5e63	b7 	. 
	ld b,a			;5e64	47 	G 
	ld a,c			;5e65	79 	y 
	jr z,l5e76h		;5e66	28 0e 	( . 
	call sub_1034h		;5e68	cd 34 10 	. 4 . 
	ld e,a			;5e6b	5f 	_ 
	xor a			;5e6c	af 	. 
l5e6dh:
	add a,e			;5e6d	83 	. 
	djnz l5e6dh		;5e6e	10 fd 	. . 
	neg		;5e70	ed 44 	. D 
	add a,c			;5e72	81 	. 
	jr c,l5e76h		;5e73	38 01 	8 . 
	xor a			;5e75	af 	. 
l5e76h:
	pop bc			;5e76	c1 	. 
	pop de			;5e77	d1 	. 
	ret			;5e78	c9 	. 
	push hl			;5e79	e5 	. 
	push de			;5e7a	d5 	. 
	push bc			;5e7b	c5 	. 
	call 0042fh		;5e7c	cd 2f 04 	. / . 
	ld c,a			;5e7f	4f 	O 
	ld a,(l23cdh)		;5e80	3a cd 23 	: . # 
	add a,c			;5e83	81 	. 
	dec a			;5e84	3d 	= 
	ld (l22fah),a		;5e85	32 fa 22 	2 . " 
	dec b			;5e88	05 	. 
	ld de,(l214fh+1)		;5e89	ed 5b 50 21 	. [ P ! 
	call 00f63h		;5e8d	cd 63 0f 	. c . 
	call sub_032ch		;5e90	cd 2c 03 	. , . 
l5e93h:
	call sub_0524h		;5e93	cd 24 05 	. $ . 
	jr nz,l5ecfh		;5e96	20 37 	  7 
	call 0042fh		;5e98	cd 2f 04 	. / . 
	ld c,a			;5e9b	4f 	O 
	push de			;5e9c	d5 	. 
	call 00f54h		;5e9d	cd 54 0f 	. T . 
	call 0042fh		;5ea0	cd 2f 04 	. / . 
	pop de			;5ea3	d1 	. 
	sub c			;5ea4	91 	. 
	jr nc,l5ea8h		;5ea5	30 01 	0 . 
	xor a			;5ea7	af 	. 
l5ea8h:
	ld (l22fah),a		;5ea8	32 fa 22 	2 . " 
	inc b			;5eab	04 	. 
	ld hl,(l214fh+1)		;5eac	2a 50 21 	* P ! 
	or a			;5eaf	b7 	. 
	sbc hl,de		;5eb0	ed 52 	. R 
	jr nz,l5ec4h		;5eb2	20 10 	  . 
	bit 6,(ix+002h)		;5eb4	dd cb 02 76 	. . . v 
	jr z,l5ebfh		;5eb8	28 05 	( . 
	ld a,0ffh		;5eba	3e ff 	> . 
	ld (l22fah),a		;5ebc	32 fa 22 	2 . " 
l5ebfh:
	call 00517h		;5ebf	cd 17 05 	. . . 
	jr l5ec7h		;5ec2	18 03 	. . 
l5ec4h:
	call sub_032ch		;5ec4	cd 2c 03 	. , . 
l5ec7h:
	jr c,l5ecfh		;5ec7	38 06 	8 . 
	ld a,(l225fh+2)		;5ec9	3a 61 22 	: a " 
	cp b			;5ecc	b8 	. 
	jr nz,l5e93h		;5ecd	20 c4 	  . 
l5ecfh:
	pop bc			;5ecf	c1 	. 
	pop de			;5ed0	d1 	. 
	pop hl			;5ed1	e1 	. 
	ret			;5ed2	c9 	. 
	call sub_0524h		;5ed3	cd 24 05 	. $ . 
	ret nz			;5ed6	c0 	. 
	push hl			;5ed7	e5 	. 
	push de			;5ed8	d5 	. 
	push bc			;5ed9	c5 	. 
	push af			;5eda	f5 	. 
	call sub_0874h		;5edb	cd 74 08 	. t . 
	ld de,(l2306h)		;5ede	ed 5b 06 23 	. [ . # 
	ld a,(l225fh+1)		;5ee2	3a 60 22 	: ` " 
	ld b,a			;5ee5	47 	G 
	ld c,000h		;5ee6	0e 00 	. . 
l5ee8h:
	call sub_0524h		;5ee8	cd 24 05 	. $ . 
	jr nz,l5f12h		;5eeb	20 25 	  % 
	ld hl,l2262h+2		;5eed	21 64 22 	! d " 
	bit 6,(hl)		;5ef0	cb 76 	. v 
	res 3,(hl)		;5ef2	cb 9e 	. . 
	jr z,l5f06h		;5ef4	28 10 	( . 
	ld hl,(l214fh+1)		;5ef6	2a 50 21 	* P ! 
	xor a			;5ef9	af 	. 
	sbc hl,de		;5efa	ed 52 	. R 
	jr nz,l5f06h		;5efc	20 08 	  . 
	cp c			;5efe	b9 	. 
	jr nz,l5f06h		;5eff	20 05 	  . 
	call 00517h		;5f01	cd 17 05 	. . . 
	jr l5f09h		;5f04	18 03 	. . 
l5f06h:
	call sub_032ch		;5f06	cd 2c 03 	. , . 
l5f09h:
	jr c,l5f12h		;5f09	38 07 	8 . 
	inc b			;5f0b	04 	. 
	ld a,(l225fh+2)		;5f0c	3a 61 22 	: a " 
	cp b			;5f0f	b8 	. 
	jr nc,l5ee8h		;5f10	30 d6 	0 . 
l5f12h:
	pop af			;5f12	f1 	. 
	pop bc			;5f13	c1 	. 
	pop de			;5f14	d1 	. 
	pop hl			;5f15	e1 	. 
	ret			;5f16	c9 	. 
	inc c			;5f17	0c 	. 
	ld de,(l2154h+1)		;5f18	ed 5b 55 21 	. [ U ! 
	call sub_032ch		;5f1c	cd 2c 03 	. , . 
	ld de,(l2152h)		;5f1f	ed 5b 52 21 	. [ R ! 
	ret			;5f23	c9 	. 
	xor a			;5f24	af 	. 
	ex (sp),hl			;5f25	e3 	. 
	push hl			;5f26	e5 	. 
	push de			;5f27	d5 	. 
	push bc			;5f28	c5 	. 
	ld d,a			;5f29	57 	W 
	dec hl			;5f2a	2b 	+ 
	ld bc,l054bh		;5f2b	01 4b 05 	. K . 
	ld (hl),b			;5f2e	70 	p 
	dec hl			;5f2f	2b 	+ 
	ld (hl),c			;5f30	71 	q 
	ld e,a			;5f31	5f 	_ 
	inc de			;5f32	13 	. 
	ld a,(de)			;5f33	1a 	. 
	ld l,a			;5f34	6f 	o 
	ld bc,l008ch		;5f35	01 8c 00 	. . . 
	inc de			;5f38	13 	. 
	ld a,(de)			;5f39	1a 	. 
	ld h,a			;5f3a	67 	g 
	add hl,bc			;5f3b	09 	. 
	ld (l0bb5h),hl		;5f3c	22 b5 0b 	" . . 
	inc hl			;5f3f	23 	# 
	ld (l1552h),hl		;5f40	22 52 15 	" R . 
	inc hl			;5f43	23 	# 
	ld (0163ah),hl		;5f44	22 3a 16 	" : . 
	pop bc			;5f47	c1 	. 
	pop de			;5f48	d1 	. 
	pop hl			;5f49	e1 	. 
	ex (sp),hl			;5f4a	e3 	. 
	push hl			;5f4b	e5 	. 
	ld hl,l214fh		;5f4c	21 4f 21 	! O ! 
	ld a,0ffh		;5f4f	3e ff 	> . 
	call 008c0h		;5f51	cd c0 08 	. . . 
	ld (hl),a			;5f54	77 	w 
	pop hl			;5f55	e1 	. 
	or a			;5f56	b7 	. 
	ret			;5f57	c9 	. 
	push hl			;5f58	e5 	. 
	push de			;5f59	d5 	. 
	push bc			;5f5a	c5 	. 
	ld a,(l225fh)		;5f5b	3a 5f 22 	: _ " 
	neg		;5f5e	ed 44 	. D 
	add a,c			;5f60	81 	. 
	inc a			;5f61	3c 	< 
	ld (l22f7h),a		;5f62	32 f7 22 	2 . " 
	ld a,(l2262h+2)		;5f65	3a 64 22 	: d " 
	bit 1,a		;5f68	cb 4f 	. O 
	jr nz,l5f90h		;5f6a	20 24 	  $ 
	ld hl,l2266h		;5f6c	21 66 22 	! f " 
	bit 6,(hl)		;5f6f	cb 76 	. v 
	jr z,l5f78h		;5f71	28 05 	( . 
	call sub_05a7h		;5f73	cd a7 05 	. . . 
	jr l5f90h		;5f76	18 18 	. . 
l5f78h:
	bit 0,(hl)		;5f78	cb 46 	. F 
	res 0,(hl)		;5f7a	cb 86 	. . 
	call nz,sub_05f7h		;5f7c	c4 f7 05 	. . . 
	bit 1,(hl)		;5f7f	cb 4e 	. N 
	res 1,(hl)		;5f81	cb 8e 	. . 
	call nz,006ffh		;5f83	c4 ff 06 	. . . 
l5f86h:
	call 005c7h		;5f86	cd c7 05 	. . . 
	call 0064eh		;5f89	cd 4e 06 	. N . 
	pop bc			;5f8c	c1 	. 
	pop de			;5f8d	d1 	. 
	pop hl			;5f8e	e1 	. 
	ret			;5f8f	c9 	. 
l5f90h:
	call 0064eh		;5f90	cd 4e 06 	. N . 
	ld hl,l2266h		;5f93	21 66 22 	! f " 
	call sub_05f7h		;5f96	cd f7 05 	. . . 
	call sub_077dh		;5f99	cd 7d 07 	. } . 
	call 006ffh		;5f9c	cd ff 06 	. . . 
	call l074ch		;5f9f	cd 4c 07 	. L . 
	call 0073bh		;5fa2	cd 3b 07 	. ; . 
	jr l5f86h		;5fa5	18 df 	. . 
	ld a,(l2262h)		;5fa7	3a 62 22 	: b " 
	ld b,a			;5faa	47 	G 
	ld a,(l225fh)		;5fab	3a 5f 22 	: _ " 
	ld c,a			;5fae	4f 	O 
	call 0084dh		;5faf	cd 4d 08 	. M . 
	ld hl,l23e6h		;5fb2	21 e6 23 	! . # 
	ld a,(hl)			;5fb5	7e 	~ 
	inc hl			;5fb6	23 	# 
	or a			;5fb7	b7 	. 
	jp nz,sub_088ch		;5fb8	c2 8c 08 	. . . 
	ld a,(l23c8h+1)		;5fbb	3a c9 23 	: . # 
	jp sub_08a8h		;5fbe	c3 a8 08 	. . . 
	ld a,(l23cdh+2)		;5fc1	3a cf 23 	: . # 
	jp 0083ah		;5fc4	c3 3a 08 	. : . 
	ld a,(l2265h)		;5fc7	3a 65 22 	: e " 
	or a			;5fca	b7 	. 
	jr z,l5fd5h		;5fcb	28 08 	( . 
	ld (ix+001h),000h		;5fcd	dd 36 01 00 	. 6 . . 
	set 2,(hl)		;5fd1	cb d6 	. . 
	jr l5fdah		;5fd3	18 05 	. . 
l5fd5h:
	bit 2,(hl)		;5fd5	cb 56 	. V 
	res 2,(hl)		;5fd7	cb 96 	. . 
	ret z			;5fd9	c8 	. 
l5fdah:
	push af			;5fda	f5 	. 
	call sub_05c1h		;5fdb	cd c1 05 	. . . 
	pop af			;5fde	f1 	. 
	set 1,(hl)		;5fdf	cb ce 	. . 
	ld hl,012e4h		;5fe1	21 e4 12 	! . . 
	inc a			;5fe4	3c 	< 
l5fe5h:
	inc hl			;5fe5	23 	# 
	inc hl			;5fe6	23 	# 
	dec a			;5fe7	3d 	= 
	jr nz,l5fe5h		;5fe8	20 fb 	  . 
	ld e,(hl)			;5fea	5e 	^ 
	inc hl			;5feb	23 	# 
	ld d,(hl)			;5fec	56 	V 
	ex de,hl			;5fed	eb 	. 
	ld a,(l23cbh)		;5fee	3a cb 23 	: . # 
	ld b,a			;5ff1	47 	G 
	call 007d8h		;5ff2	cd d8 07 	. . . 
	scf			;5ff5	37 	7 
	ret			;5ff6	c9 	. 
	push hl			;5ff7	e5 	. 
	ld a,(l23d4h+2)		;5ff8	3a d6 23 	: . # 
	call 0083ah		;5ffb	cd 3a 08 	. : . 
	bit 4,(hl)		;5ffe	cb 66 	. f 
	jr nz,l6025h		;6000	20 23 	  # 
	ld b,005h		;6002	06 05 	. . 
	ld hl,l063bh		;6004	21 3b 06 	! ; . 
	call 007d8h		;6007	cd d8 07 	. . . 
	ld hl,(02304h)		;600a	2a 04 23 	* . # 
	ld de,(l2302h)		;600d	ed 5b 02 23 	. [ . # 
	sbc hl,de		;6011	ed 52 	. R 
	call sub_0794h		;6013	cd 94 07 	. . . 
	bit 2,(ix+000h)		;6016	dd cb 00 56 	. . . V 
	ld a,020h		;601a	3e 20 	>   
	jr z,l6020h		;601c	28 02 	( . 
	ld a,02ah		;601e	3e 2a 	> * 
l6020h:
	call 008c0h		;6020	cd c0 08 	. . . 
	pop hl			;6023	e1 	. 
	ret			;6024	c9 	. 
l6025h:
	ld b,006h		;6025	06 06 	. . 
	ld hl,00640h		;6027	21 40 06 	! @ . 
	call 007d8h		;602a	cd d8 07 	. . . 
	ld hl,(0225ch)		;602d	2a 5c 22 	* \ " 
	ld de,(02304h)		;6030	ed 5b 04 23 	. [ . # 
	sbc hl,de		;6034	ed 52 	. R 
	call sub_0794h		;6036	cd 94 07 	. . . 
	pop hl			;6039	e1 	. 
	ret			;603a	c9 	. 
	ld b,(hl)			;603b	46 	F 
	ld d,d			;603c	52 	R 
	ld b,l			;603d	45 	E 
	ld b,l			;603e	45 	E 
	ld a,(l4c42h)		;603f	3a 42 4c 	: B L 
	ld c,a			;6042	4f 	O 
	ld b,e			;6043	43 	C 
	ld c,e			;6044	4b 	K 
	ld a,(03a4fh)		;6045	3a 4f 3a 	: O : 
	ret			;6048	c9 	. 
	inc hl			;6049	23 	# 
	cp 050h		;604a	fe 50 	. P 
	ld a,c			;604c	79 	y 
	ret			;604d	c9 	. 
	ld a,(l23d0h)		;604e	3a d0 23 	: . # 
	ld de,(l22fbh)		;6051	ed 5b fb 22 	. [ . " 
	jr nc,l6068h		;6055	30 11 	0 . 
	call 00646h		;6057	cd 46 06 	. F . 
	jr nc,l6068h		;605a	30 0c 	0 . 
	bit 2,(ix+002h)		;605c	dd cb 02 56 	. . . V 
	ret nz			;6060	c0 	. 
	push af			;6061	f5 	. 
	call 006ffh		;6062	cd ff 06 	. . . 
	pop af			;6065	f1 	. 
	jr l6083h		;6066	18 1b 	. . 
l6068h:
	ld hl,(l22fdh+2)		;6068	2a ff 22 	* . " 
	bit 1,(ix+000h)		;606b	dd cb 00 4e 	. . . N 
	jr nz,l6083h		;606f	20 12 	  . 
	bit 6,(ix+002h)		;6071	dd cb 02 76 	. . . v 
	jr nz,l6083h		;6075	20 0c 	  . 
	or a			;6077	b7 	. 
	sbc hl,de		;6078	ed 52 	. R 
	jr z,l6097h		;607a	28 1b 	( . 
	add a,005h		;607c	c6 05 	. . 
	call 0083ah		;607e	cd 3a 08 	. : . 
	jr l608eh		;6081	18 0b 	. . 
l6083h:
	call 0083ah		;6083	cd 3a 08 	. : . 
	ld b,005h		;6086	06 05 	. . 
	ld hl,006fah		;6088	21 fa 06 	! . . 
	call 007d8h		;608b	cd d8 07 	. . . 
l608eh:
	ex de,hl			;608e	eb 	. 
	ld (l22fdh+2),hl		;608f	22 ff 22 	" . " 
	ld b,000h		;6092	06 00 	. . 
	call l079ah		;6094	cd 9a 07 	. . . 
l6097h:
	call 006d8h		;6097	cd d8 06 	. . . 
	call 00646h		;609a	cd 46 06 	. F . 
	ld a,(l23d0h+1)		;609d	3a d1 23 	: . # 
	jr nc,l60a8h		;60a0	30 06 	0 . 
	bit 2,(ix+002h)		;60a2	dd cb 02 56 	. . . V 
	jr z,l60c4h		;60a6	28 1c 	( . 
l60a8h:
	bit 6,(ix+002h)		;60a8	dd cb 02 76 	. . . v 
	jr nz,l60c4h		;60ac	20 16 	  . 
	bit 1,(ix+000h)		;60ae	dd cb 00 4e 	. . . N 
	jr nz,l60c4h		;60b2	20 10 	  . 
	ld de,(l22fdh)		;60b4	ed 5b fd 22 	. [ . " 
	or a			;60b8	b7 	. 
	sbc hl,de		;60b9	ed 52 	. R 
	ret z			;60bb	c8 	. 
	add hl,de			;60bc	19 	. 
	add a,004h		;60bd	c6 04 	. . 
	call 0083ah		;60bf	cd 3a 08 	. : . 
	jr l60d1h		;60c2	18 0d 	. . 
l60c4h:
	push hl			;60c4	e5 	. 
	call 0083ah		;60c5	cd 3a 08 	. : . 
	ld b,004h		;60c8	06 04 	. . 
	ld hl,l06f6h		;60ca	21 f6 06 	! . . 
	call 007d8h		;60cd	cd d8 07 	. . . 
	pop hl			;60d0	e1 	. 
l60d1h:
	ld (l22fdh),hl		;60d1	22 fd 22 	" . " 
	ld b,h			;60d4	44 	D 
	jp 007a0h		;60d5	c3 a0 07 	. . . 
	ld a,(l22f7h)		;60d8	3a f7 22 	: . " 
	ld c,a			;60db	4f 	O 
	ld a,(l2301h)		;60dc	3a 01 23 	: . # 
	or a			;60df	b7 	. 
	jr z,l60edh		;60e0	28 0b 	( . 
	ld b,a			;60e2	47 	G 
	call sub_1034h		;60e3	cd 34 10 	. 4 . 
	ld h,a			;60e6	67 	g 
	xor a			;60e7	af 	. 
l60e8h:
	add a,h			;60e8	84 	. 
	jr c,l60f2h		;60e9	38 07 	8 . 
	djnz l60e8h		;60eb	10 fb 	. . 
l60edh:
	add a,c			;60ed	81 	. 
	ld h,000h		;60ee	26 00 	& . 
	ld l,a			;60f0	6f 	o 
	ret nc			;60f1	d0 	. 
l60f2h:
	ld hl,l00ffh		;60f2	21 ff 00 	! . . 
	ret			;60f5	c9 	. 
	ld b,e			;60f6	43 	C 
	ld c,a			;60f7	4f 	O 
	ld c,h			;60f8	4c 	L 
	ld a,(l494ch)		;60f9	3a 4c 49 	: L I 
	ld c,(hl)			;60fc	4e 	N 
	ld b,l			;60fd	45 	E 
	ld a,(03ae5h)		;60fe	3a e5 3a 	: . : 
	jp nc,0cd23h		;6101	d2 23 cd 	. # . 
	ld a,(02108h)		;6104	3a 08 21 	: . ! 
	ld h,h			;6107	64 	d 
	ld (066cbh),hl		;6108	22 cb 66 	" . f 
	jr z,l6114h		;610b	28 07 	( . 
	ld b,006h		;610d	06 06 	. . 
	ld hl,l0735h		;610f	21 35 07 	! 5 . 
	jr l6124h		;6112	18 10 	. . 
l6114h:
	bit 0,(hl)		;6114	cb 46 	. F 
	jr z,l611fh		;6116	28 07 	( . 
	ld b,006h		;6118	06 06 	. . 
	ld hl,00729h		;611a	21 29 07 	! ) . 
	jr l6124h		;611d	18 05 	. . 
l611fh:
	ld b,006h		;611f	06 06 	. . 
	ld hl,0072fh		;6121	21 2f 07 	! / . 
l6124h:
	call 007d8h		;6124	cd d8 07 	. . . 
	pop hl			;6127	e1 	. 
	ret			;6128	c9 	. 
	ld c,c			;6129	49 	I 
	cpl			;612a	2f 	/ 
	ld b,c			;612b	41 	A 
	ld d,l			;612c	55 	U 
	ld d,h			;612d	54 	T 
	ld c,a			;612e	4f 	O 
	ld c,c			;612f	49 	I 
	ld c,(hl)			;6130	4e 	N 
	ld d,e			;6131	53 	S 
	ld b,l			;6132	45 	E 
	ld d,d			;6133	52 	R 
	ld d,h			;6134	54 	T 
	ld b,e			;6135	43 	C 
	ld c,b			;6136	48 	H 
	ld b,c			;6137	41 	A 
	ld c,(hl)			;6138	4e 	N 
	ld b,a			;6139	47 	G 
	ld b,l			;613a	45 	E 
	ld a,(l23d7h)		;613b	3a d7 23 	: . # 
	call 0083ah		;613e	cd 3a 08 	. : . 
	push hl			;6141	e5 	. 
	ld hl,(l2315h)		;6142	2a 15 23 	* . # 
	ld b,00eh		;6145	06 0e 	. . 
	call 007d8h		;6147	cd d8 07 	. . . 
	pop hl			;614a	e1 	. 
	ret			;614b	c9 	. 
	push hl			;614c	e5 	. 
	ld a,(l23d3h)		;614d	3a d3 23 	: . # 
	call 0076dh		;6150	cd 6d 07 	. m . 
	ld a,(l23cbh+1)		;6153	3a cc 23 	: . # 
	ld b,a			;6156	47 	G 
	push bc			;6157	c5 	. 
	ld hl,l2266h+1		;6158	21 67 22 	! g " 
	call 007d8h		;615b	cd d8 07 	. . . 
	ld a,(l23d4h)		;615e	3a d4 23 	: . # 
	call 0076dh		;6161	cd 6d 07 	. m . 
	pop bc			;6164	c1 	. 
	ld hl,l22a9h		;6165	21 a9 22 	! . " 
	call 007d8h		;6168	cd d8 07 	. . . 
	pop hl			;616b	e1 	. 
	ret			;616c	c9 	. 
	push bc			;616d	c5 	. 
	call 0083ah		;616e	cd 3a 08 	. : . 
	pop bc			;6171	c1 	. 
	ld a,020h		;6172	3e 20 	>   
	call 008c0h		;6174	cd c0 08 	. . . 
	ld a,024h		;6177	3e 24 	> $ 
	call 008c0h		;6179	cd c0 08 	. . . 
	ret			;617c	c9 	. 
	push hl			;617d	e5 	. 
	push de			;617e	d5 	. 
	push bc			;617f	c5 	. 
	push af			;6180	f5 	. 
	ld a,(l23d4h+1)		;6181	3a d5 23 	: . # 
	call 0083ah		;6184	cd 3a 08 	. : . 
	ld hl,l232ch		;6187	21 2c 23 	! , # 
	ld b,006h		;618a	06 06 	. . 
	call 007d8h		;618c	cd d8 07 	. . . 
	pop af			;618f	f1 	. 
	pop bc			;6190	c1 	. 
	pop de			;6191	d1 	. 
	pop hl			;6192	e1 	. 
	ret			;6193	c9 	. 
	ld de,0d8f0h		;6194	11 f0 d8 	. . . 
	call sub_07bbh		;6197	cd bb 07 	. . . 
	ld de,0fc18h		;619a	11 18 fc 	. . . 
	call sub_07bbh		;619d	cd bb 07 	. . . 
	ld de,0ff9ch		;61a0	11 9c ff 	. . . 
	call sub_07bbh		;61a3	cd bb 07 	. . . 
	ld e,0f6h		;61a6	1e f6 	. . 
	call sub_07bbh		;61a8	cd bb 07 	. . . 
	ld e,0ffh		;61ab	1e ff 	. . 
	call sub_07bbh		;61ad	cd bb 07 	. . . 
	ld hl,l2266h		;61b0	21 66 22 	! f " 
	res 3,(hl)		;61b3	cb 9e 	. . 
	ld a,b			;61b5	78 	x 
	or a			;61b6	b7 	. 
	ret z			;61b7	c8 	. 
	jp sub_08a8h		;61b8	c3 a8 08 	. . . 
	ld a,02fh		;61bb	3e 2f 	> / 
l61bdh:
	add hl,de			;61bd	19 	. 
	inc a			;61be	3c 	< 
	jr c,l61bdh		;61bf	38 fc 	8 . 
	sbc hl,de		;61c1	ed 52 	. R 
	cp 030h		;61c3	fe 30 	. 0 
	push hl			;61c5	e5 	. 
	ld hl,l2266h		;61c6	21 66 22 	! f " 
	jr nz,l61d2h		;61c9	20 07 	  . 
	bit 3,(hl)		;61cb	cb 5e 	. ^ 
	jr nz,l61d2h		;61cd	20 03 	  . 
	inc b			;61cf	04 	. 
	pop hl			;61d0	e1 	. 
	ret			;61d1	c9 	. 
l61d2h:
	set 3,(hl)		;61d2	cb de 	. . 
	pop hl			;61d4	e1 	. 
	jp 008c0h		;61d5	c3 c0 08 	. . . 
l61d8h:
	ld a,(hl)			;61d8	7e 	~ 
	inc hl			;61d9	23 	# 
	or a			;61da	b7 	. 
	jr nz,l61e0h		;61db	20 03 	  . 
	ld a,020h		;61dd	3e 20 	>   
	dec hl			;61df	2b 	+ 
l61e0h:
	call sub_07fdh		;61e0	cd fd 07 	. . . 
	cp 07fh		;61e3	fe 7f 	.  
	jr nz,l61f0h		;61e5	20 09 	  . 
l61e7h:
	ld a,0fbh		;61e7	3e fb 	> . 
	add a,b			;61e9	80 	. 
	ld b,a			;61ea	47 	G 
	jr c,l61fah		;61eb	38 0d 	8 . 
	ld b,000h		;61ed	06 00 	. . 
	ret			;61ef	c9 	. 
l61f0h:
	cp 01bh		;61f0	fe 1b 	. . 
	jr z,l61e7h		;61f2	28 f3 	( . 
	cp 020h		;61f4	fe 20 	.   
	jr nc,l61fah		;61f6	30 02 	0 . 
	dec b			;61f8	05 	. 
	ret z			;61f9	c8 	. 
l61fah:
	djnz l61d8h		;61fa	10 dc 	. . 
	ret			;61fc	c9 	. 
	push af			;61fd	f5 	. 
	cp 07fh		;61fe	fe 7f 	.  
	jr nz,l620ch		;6200	20 0a 	  . 
	push hl			;6202	e5 	. 
	ld hl,00834h		;6203	21 34 08 	! 4 . 
l6206h:
	call sub_0a6eh		;6206	cd 6e 0a 	. n . 
	pop hl			;6209	e1 	. 
	pop af			;620a	f1 	. 
	ret			;620b	c9 	. 
l620ch:
	jr c,l6212h		;620c	38 04 	8 . 
	ld a,03fh		;620e	3e 3f 	> ? 
	jr l6229h		;6210	18 17 	. . 
l6212h:
	cp 01bh		;6212	fe 1b 	. . 
	jr nz,l621ch		;6214	20 06 	  . 
	push hl			;6216	e5 	. 
	ld hl,l082eh		;6217	21 2e 08 	! . . 
	jr l6206h		;621a	18 ea 	. . 
l621ch:
	cp 020h		;621c	fe 20 	.   
	jr nc,l6229h		;621e	30 09 	0 . 
l6220h:
	ld a,05eh		;6220	3e 5e 	> ^ 
	call 008c0h		;6222	cd c0 08 	. . . 
	pop af			;6225	f1 	. 
	push af			;6226	f5 	. 
	add a,040h		;6227	c6 40 	. @ 
l6229h:
	call 008c0h		;6229	cd c0 08 	. . . 
	pop af			;622c	f1 	. 
	ret			;622d	c9 	. 
	ld e,e			;622e	5b 	[ 
	ld b,l			;622f	45 	E 
	ld d,e			;6230	53 	S 
	ld b,e			;6231	43 	C 
	ld e,l			;6232	5d 	] 
	nop			;6233	00 	. 
	ld e,e			;6234	5b 	[ 
	ld b,h			;6235	44 	D 
	ld b,l			;6236	45 	E 
	ld c,h			;6237	4c 	L 
	ld e,l			;6238	5d 	] 
	nop			;6239	00 	. 
	bit 7,a		;623a	cb 7f 	.  
	res 7,a		;623c	cb bf 	. . 
	ld c,a			;623e	4f 	O 
	ld a,(l2262h)		;623f	3a 62 22 	: b " 
	jr z,l6247h		;6242	28 03 	( . 
	ld a,(l2262h+1)		;6244	3a 63 22 	: c " 
l6247h:
	ld b,a			;6247	47 	G 
	ld a,(l23c8h)		;6248	3a c8 23 	: . # 
	add a,c			;624b	81 	. 
	ld c,a			;624c	4f 	O 
	push hl			;624d	e5 	. 
	push de			;624e	d5 	. 
	push bc			;624f	c5 	. 
	push af			;6250	f5 	. 
	ld hl,l23dch		;6251	21 dc 23 	! . # 
	ld a,(hl)			;6254	7e 	~ 
	inc hl			;6255	23 	# 
	or a			;6256	b7 	. 
	jr nz,l625eh		;6257	20 05 	  . 
	call sub_241ah		;6259	cd 1a 24 	. . $ 
	jr l6272h		;625c	18 14 	. . 
l625eh:
	call sub_088ch		;625e	cd 8c 08 	. . . 
	ld a,(l23dbh)		;6261	3a db 23 	: . # 
	or a			;6264	b7 	. 
	jr z,l626ah		;6265	28 03 	( . 
	ld a,b			;6267	78 	x 
	ld b,c			;6268	41 	A 
	ld c,a			;6269	4f 	O 
l626ah:
	ld a,c			;626a	79 	y 
	call 008c0h		;626b	cd c0 08 	. . . 
	ld a,b			;626e	78 	x 
	call 008c0h		;626f	cd c0 08 	. . . 
l6272h:
	jr l6287h		;6272	18 13 	. . 
	push hl			;6274	e5 	. 
	push de			;6275	d5 	. 
	push bc			;6276	c5 	. 
	push af			;6277	f5 	. 
	ld hl,023e1h		;6278	21 e1 23 	! . # 
	ld a,(hl)			;627b	7e 	~ 
	inc hl			;627c	23 	# 
	or a			;627d	b7 	. 
	jr nz,l6284h		;627e	20 04 	  . 
	call 02418h		;6280	cd 18 24 	. . $ 
	scf			;6283	37 	7 
l6284h:
	call nc,sub_088ch		;6284	d4 8c 08 	. . . 
l6287h:
	pop af			;6287	f1 	. 
	pop bc			;6288	c1 	. 
	pop de			;6289	d1 	. 
	pop hl			;628a	e1 	. 
	ret			;628b	c9 	. 
	ld d,a			;628c	57 	W 
l628dh:
	ld a,(hl)			;628d	7e 	~ 
	inc hl			;628e	23 	# 
	call 008c0h		;628f	cd c0 08 	. . . 
	dec d			;6292	15 	. 
	jr nz,l628dh		;6293	20 f8 	  . 
	ret			;6295	c9 	. 
	push bc			;6296	c5 	. 
	push af			;6297	f5 	. 
	dec a			;6298	3d 	= 
	add a,c			;6299	81 	. 
	ld c,a			;629a	4f 	O 
	ld a,(l225eh)		;629b	3a 5e 22 	: ^ " 
	sub c			;629e	91 	. 
	jr nc,l62a5h		;629f	30 04 	0 . 
	ld c,a			;62a1	4f 	O 
	pop af			;62a2	f1 	. 
	add a,c			;62a3	81 	. 
	push af			;62a4	f5 	. 
l62a5h:
	pop af			;62a5	f1 	. 
	pop bc			;62a6	c1 	. 
	ret			;62a7	c9 	. 
	or a			;62a8	b7 	. 
	ret z			;62a9	c8 	. 
	push af			;62aa	f5 	. 
	push bc			;62ab	c5 	. 
	ld b,a			;62ac	47 	G 
l62adh:
	ld a,020h		;62ad	3e 20 	>   
	call 008c0h		;62af	cd c0 08 	. . . 
	djnz l62adh		;62b2	10 f9 	. . 
	pop bc			;62b4	c1 	. 
	pop af			;62b5	f1 	. 
	ret			;62b6	c9 	. 
l62b7h:
	ld a,0ffh		;62b7	3e ff 	> . 
	call 008c0h		;62b9	cd c0 08 	. . . 
	or a			;62bc	b7 	. 
	jr z,l62b7h		;62bd	28 f8 	( . 
	ret			;62bf	c9 	. 
	push ix		;62c0	dd e5 	. . 
	push hl			;62c2	e5 	. 
	push de			;62c3	d5 	. 
	push bc			;62c4	c5 	. 
	ld e,a			;62c5	5f 	_ 
	ld c,006h		;62c6	0e 06 	. . 
	call l0005h		;62c8	cd 05 00 	. . . 
	pop bc			;62cb	c1 	. 
	pop de			;62cc	d1 	. 
	pop hl			;62cd	e1 	. 
	pop ix		;62ce	dd e1 	. . 
	ret			;62d0	c9 	. 
	push hl			;62d1	e5 	. 
	push de			;62d2	d5 	. 
	push bc			;62d3	c5 	. 
	ld a,(l2317h)		;62d4	3a 17 23 	: . # 
	or a			;62d7	b7 	. 
	jr z,l62e3h		;62d8	28 09 	( . 
	res 5,(ix+000h)		;62da	dd cb 00 ae 	. . . . 
	ld a,0ffh		;62de	3e ff 	> . 
	jp 00969h		;62e0	c3 69 09 	. i . 
l62e3h:
	ld (l22f1h),bc		;62e3	ed 43 f1 22 	. C . " 
	ld hl,l232ch		;62e7	21 2c 23 	! , # 
	ld (l22f7h),hl		;62ea	22 f7 22 	" . " 
	set 5,(ix+000h)		;62ed	dd cb 00 ee 	. . . . 
	ld hl,(l23f4h+1)		;62f1	2a f5 23 	* . # 
	ld de,l23f4h+1		;62f4	11 f5 23 	. . # 
	add hl,de			;62f7	19 	. 
	ld bc,l0000h		;62f8	01 00 00 	. . . 
l62fbh:
	call sub_099ah		;62fb	cd 9a 09 	. . . 
	bit 5,(ix+000h)		;62fe	dd cb 00 6e 	. . . n 
	jr z,l631ah		;6302	28 16 	( . 
	bit 2,(ix+002h)		;6304	dd cb 02 56 	. . . V 
	jr z,l631ah		;6308	28 10 	( . 
	push af			;630a	f5 	. 
	push bc			;630b	c5 	. 
	push hl			;630c	e5 	. 
	call sub_197ch		;630d	cd 7c 19 	. | . 
	ld bc,(l22f1h)		;6310	ed 4b f1 22 	. K . " 
	call 0084dh		;6314	cd 4d 08 	. M . 
	pop hl			;6317	e1 	. 
	pop bc			;6318	c1 	. 
	pop af			;6319	f1 	. 
l631ah:
	ld e,a			;631a	5f 	_ 
	cp (hl)			;631b	be 	. 
	jr z,l633bh		;631c	28 1d 	( . 
	bit 5,(ix+000h)		;631e	dd cb 00 6e 	. . . n 
	jr nz,l634bh		;6322	20 27 	  ' 
	bit 6,a		;6324	cb 77 	. w 
	jr nz,l632ch		;6326	20 04 	  . 
	bit 5,a		;6328	cb 6f 	. o 
	jr nz,l6338h		;632a	20 0c 	  . 
l632ch:
	and 01fh		;632c	e6 1f 	. . 
	cp (hl)			;632e	be 	. 
	jr z,l633bh		;632f	28 0a 	( . 
	set 6,a		;6331	cb f7 	. . 
	cp (hl)			;6333	be 	. 
	jr z,l633bh		;6334	28 05 	( . 
	set 5,a		;6336	cb ef 	. . 
l6338h:
	cp (hl)			;6338	be 	. 
	jr nz,l634bh		;6339	20 10 	  . 
l633bh:
	ld a,e			;633b	7b 	{ 
	call l09dfh		;633c	cd df 09 	. . . 
	res 5,(ix+000h)		;633f	dd cb 00 ae 	. . . . 
	inc hl			;6343	23 	# 
	ld a,(hl)			;6344	7e 	~ 
	or a			;6345	b7 	. 
	jr z,l6367h		;6346	28 1f 	( . 
	inc c			;6348	0c 	. 
	jr l62fbh		;6349	18 b0 	. . 
l634bh:
	ld a,e			;634b	7b 	{ 
	bit 5,(ix+000h)		;634c	dd cb 00 6e 	. . . n 
	jr z,l636eh		;6350	28 1c 	( . 
l6352h:
	ld a,(hl)			;6352	7e 	~ 
	inc hl			;6353	23 	# 
	or a			;6354	b7 	. 
	jr nz,l6352h		;6355	20 fb 	  . 
	ld a,(hl)			;6357	7e 	~ 
	or a			;6358	b7 	. 
	jr z,l6368h		;6359	28 0d 	( . 
	ld a,e			;635b	7b 	{ 
	ld c,000h		;635c	0e 00 	. . 
	inc b			;635e	04 	. 
	jr l631ah		;635f	18 b9 	. . 
	scf			;6361	37 	7 
	call l09dfh		;6362	cd df 09 	. . . 
	jr l636ah		;6365	18 03 	. . 
l6367h:
	ld e,b			;6367	58 	X 
l6368h:
	ld a,e			;6368	7b 	{ 
l6369h:
	or a			;6369	b7 	. 
l636ah:
	pop bc			;636a	c1 	. 
	pop de			;636b	d1 	. 
	pop hl			;636c	e1 	. 
	ret			;636d	c9 	. 
l636eh:
	push af			;636e	f5 	. 
	ld a,c			;636f	79 	y 
	push af			;6370	f5 	. 
	ld d,h			;6371	54 	T 
	ld e,l			;6372	5d 	] 
l6373h:
	pop af			;6373	f1 	. 
	ld c,a			;6374	4f 	O 
	push af			;6375	f5 	. 
l6376h:
	dec de			;6376	1b 	. 
	ld a,(de)			;6377	1a 	. 
	or a			;6378	b7 	. 
	jr nz,l6376h		;6379	20 fb 	  . 
	inc de			;637b	13 	. 
l637ch:
	ld a,(hl)			;637c	7e 	~ 
	inc hl			;637d	23 	# 
	or a			;637e	b7 	. 
	jr nz,l637ch		;637f	20 fb 	  . 
	ld a,(hl)			;6381	7e 	~ 
	or a			;6382	b7 	. 
	jr z,l6395h		;6383	28 10 	( . 
	inc b			;6385	04 	. 
l6386h:
	ld a,(de)			;6386	1a 	. 
	cp (hl)			;6387	be 	. 
	jr nz,l6373h		;6388	20 e9 	  . 
	inc hl			;638a	23 	# 
	inc de			;638b	13 	. 
	dec c			;638c	0d 	. 
	jr nz,l6386h		;638d	20 f7 	  . 
	pop af			;638f	f1 	. 
	ld c,a			;6390	4f 	O 
	pop af			;6391	f1 	. 
	jp l091ah		;6392	c3 1a 09 	. . . 
l6395h:
	pop af			;6395	f1 	. 
	pop af			;6396	f1 	. 
	jp l0961h		;6397	c3 61 09 	. a . 
	push hl			;639a	e5 	. 
	push de			;639b	d5 	. 
	push bc			;639c	c5 	. 
	ld hl,l214fh		;639d	21 4f 21 	! O ! 
	ld a,(hl)			;63a0	7e 	~ 
	or a			;63a1	b7 	. 
	jr z,l63a9h		;63a2	28 05 	( . 
	scf			;63a4	37 	7 
	set 1,(ix+000h)		;63a5	dd cb 00 ce 	. . . . 
l63a9h:
	call nc,008b7h		;63a9	d4 b7 08 	. . . 
	bit 5,(ix+000h)		;63ac	dd cb 00 6e 	. . . n 
	jr z,l63c8h		;63b0	28 16 	( . 
	ld hl,l23d8h		;63b2	21 d8 23 	! . # 
	cp (hl)			;63b5	be 	. 
	jr z,l63cch		;63b6	28 14 	( . 
	ld hl,l23f7h		;63b8	21 f7 23 	! . # 
	cp (hl)			;63bb	be 	. 
	jr nz,l63c8h		;63bc	20 0a 	  . 
	call 008b7h		;63be	cd b7 08 	. . . 
	pop bc			;63c1	c1 	. 
	pop de			;63c2	d1 	. 
	pop hl			;63c3	e1 	. 
	ex (sp),hl			;63c4	e3 	. 
	pop hl			;63c5	e1 	. 
	jr l6369h		;63c6	18 a1 	. . 
l63c8h:
	pop bc			;63c8	c1 	. 
	pop de			;63c9	d1 	. 
	pop hl			;63ca	e1 	. 
	ret			;63cb	c9 	. 
l63cch:
	set 1,(ix+000h)		;63cc	dd cb 00 ce 	. . . . 
	pop hl			;63d0	e1 	. 
	pop hl			;63d1	e1 	. 
	pop hl			;63d2	e1 	. 
	pop hl			;63d3	e1 	. 
	call sub_0107h		;63d4	cd 07 01 	. . . 
	pop bc			;63d7	c1 	. 
	pop de			;63d8	d1 	. 
	pop hl			;63d9	e1 	. 
	ex (sp),hl			;63da	e3 	. 
	pop hl			;63db	e1 	. 
	jp l0133h		;63dc	c3 33 01 	. 3 . 
	bit 5,(ix+000h)		;63df	dd cb 00 6e 	. . . n 
	push hl			;63e3	e5 	. 
	jr z,l63efh		;63e4	28 09 	( . 
	ld hl,l232ch		;63e6	21 2c 23 	! , # 
	xor (hl)			;63e9	ae 	. 
	inc hl			;63ea	23 	# 
	or (hl)			;63eb	b6 	. 
	jr z,l6405h		;63ec	28 17 	( . 
	ld a,e			;63ee	7b 	{ 
l63efh:
	ld hl,(l22f7h)		;63ef	2a f7 22 	* . " 
	ld (hl),a			;63f2	77 	w 
	inc hl			;63f3	23 	# 
	ld (hl),000h		;63f4	36 00 	6 . 
	ld (l22f7h),hl		;63f6	22 f7 22 	" . " 
	call sub_077dh		;63f9	cd 7d 07 	. } . 
	push bc			;63fc	c5 	. 
	ld bc,(l22f1h)		;63fd	ed 4b f1 22 	. K . " 
	call 0084dh		;6401	cd 4d 08 	. M . 
	pop bc			;6404	c1 	. 
l6405h:
	pop hl			;6405	e1 	. 
	ret			;6406	c9 	. 
	ld hl,l23b6h		;6407	21 b6 23 	! . # 
	call sub_0d19h		;640a	cd 19 0d 	. . . 
	ld c,00fh		;640d	0e 0f 	. . 
	call sub_0e55h		;640f	cd 55 0e 	. U . 
	inc a			;6412	3c 	< 
	jr z,l643ah		;6413	28 25 	( % 
	ld b,001h		;6415	06 01 	. . 
l6417h:
	call sub_0874h		;6417	cd 74 08 	. t . 
	ld a,(l23cah)		;641a	3a ca 23 	: . # 
	ld c,a			;641d	4f 	O 
l641eh:
	call 00a64h		;641e	cd 64 0a 	. d . 
	cp 01ah		;6421	fe 1a 	. . 
	jp z,00ad3h		;6423	ca d3 0a 	. . . 
	cp 00ah		;6426	fe 0a 	. . 
	jr nz,l6435h		;6428	20 0b 	  . 
	dec c			;642a	0d 	. 
	jr nz,l6435h		;642b	20 08 	  . 
	call 008b7h		;642d	cd b7 08 	. . . 
	cp 00dh		;6430	fe 0d 	. . 
	jr nz,l6417h		;6432	20 e3 	  . 
	ret			;6434	c9 	. 
l6435h:
	call 008c0h		;6435	cd c0 08 	. . . 
	jr l641eh		;6438	18 e4 	. . 
l643ah:
	call sub_0874h		;643a	cd 74 08 	. t . 
	ld hl,l0a46h		;643d	21 46 0a 	! F . 
	call sub_0a6eh		;6440	cd 6e 0a 	. n . 
	jp 008b7h		;6443	c3 b7 08 	. . . 
	ld c,b			;6446	48 	H 
	ld h,l			;6447	65 	e 
	ld l,h			;6448	6c 	l 
	ld (hl),b			;6449	70 	p 
	jr nz,$+104		;644a	20 66 	  f 
	ld l,c			;644c	69 	i 
	ld l,h			;644d	6c 	l 
	ld h,l			;644e	65 	e 
	jr nz,l64bfh		;644f	20 6e 	  n 
	ld l,a			;6451	6f 	o 
	ld (hl),h			;6452	74 	t 
	jr nz,$+104		;6453	20 66 	  f 
	ld l,a			;6455	6f 	o 
	ld (hl),l			;6456	75 	u 
	ld l,(hl)			;6457	6e 	n 
	ld h,h			;6458	64 	d 
	nop			;6459	00 	. 
	ld a,00dh		;645a	3e 0d 	> . 
	call 008c0h		;645c	cd c0 08 	. . . 
	ld a,00ah		;645f	3e 0a 	> . 
	jp 008c0h		;6461	c3 c0 08 	. . . 
	djnz l646bh		;6464	10 05 	. . 
	call 00cddh		;6466	cd dd 0c 	. . . 
	ld b,080h		;6469	06 80 	. . 
l646bh:
	ld a,(hl)			;646b	7e 	~ 
	inc hl			;646c	23 	# 
	ret			;646d	c9 	. 
l646eh:
	ld a,(hl)			;646e	7e 	~ 
	inc hl			;646f	23 	# 
	or a			;6470	b7 	. 
	ret z			;6471	c8 	. 
	call 008c0h		;6472	cd c0 08 	. . . 
	jr l646eh		;6475	18 f7 	. . 
	call 00ceeh		;6477	cd ee 0c 	. . . 
	inc de			;647a	13 	. 
	ld hl,00dc0h		;647b	21 c0 0d 	! . . 
	ld b,002h		;647e	06 02 	. . 
	call sub_0d0bh		;6480	cd 0b 0d 	. . . 
	jr nz,l6490h		;6483	20 0b 	  . 
	push de			;6485	d5 	. 
	inc de			;6486	13 	. 
	ld hl,00dc2h		;6487	21 c2 0d 	! . . 
	ld bc,l0002h+2		;648a	01 04 00 	. . . 
	ldir		;648d	ed b0 	. . 
	pop de			;648f	d1 	. 
l6490h:
	dec de			;6490	1b 	. 
	call sub_0d25h		;6491	cd 25 0d 	. % . 
	ret c			;6494	d8 	. 
	call sub_0874h		;6495	cd 74 08 	. t . 
	ld a,(l0e66h)		;6498	3a 66 0e 	: f . 
	or a			;649b	b7 	. 
	jr nz,l64a2h		;649c	20 04 	  . 
	ld a,(l0002h+2)		;649e	3a 04 00 	: . . 
	inc a			;64a1	3c 	< 
l64a2h:
	add a,040h		;64a2	c6 40 	. @ 
	ld (022f3h),a		;64a4	32 f3 22 	2 . " 
	ld a,(l23c8h+1)		;64a7	3a c9 23 	: . # 
	rrca			;64aa	0f 	. 
	rrca			;64ab	0f 	. 
	rrca			;64ac	0f 	. 
	rrca			;64ad	0f 	. 
	and 00fh		;64ae	e6 0f 	. . 
	ld (l22f1h),a		;64b0	32 f1 22 	2 . " 
	ld c,011h		;64b3	0e 11 	. . 
	ld b,a			;64b5	47 	G 
	jr l64bah		;64b6	18 02 	. . 
l64b8h:
	ld c,012h		;64b8	0e 12 	. . 
l64bah:
	call sub_0e55h		;64ba	cd 55 0e 	. U . 
	cp 0ffh		;64bd	fe ff 	. . 
l64bfh:
	jr z,l64d3h		;64bf	28 12 	( . 
	add a,a			;64c1	87 	. 
	add a,a			;64c2	87 	. 
	add a,a			;64c3	87 	. 
	add a,a			;64c4	87 	. 
	add a,a			;64c5	87 	. 
	ld hl,l0080h		;64c6	21 80 00 	! . . 
	add a,l			;64c9	85 	. 
	ld l,a			;64ca	6f 	o 
	jr nc,l64ceh		;64cb	30 01 	0 . 
	inc h			;64cd	24 	$ 
l64ceh:
	call 00adeh		;64ce	cd de 0a 	. . . 
	jr l64b8h		;64d1	18 e5 	. . 
l64d3h:
	call sub_0a5ah		;64d3	cd 5a 0a 	. Z . 
	ld hl,00b21h		;64d6	21 21 0b 	! ! . 
	call 00a40h		;64d9	cd 40 0a 	. @ . 
	or a			;64dc	b7 	. 
	ret			;64dd	c9 	. 
	push hl			;64de	e5 	. 
	ld c,00bh		;64df	0e 0b 	. . 
l64e1h:
	inc hl			;64e1	23 	# 
	res 7,(hl)		;64e2	cb be 	. . 
	dec c			;64e4	0d 	. 
	jr nz,l64e1h		;64e5	20 fa 	  . 
	pop hl			;64e7	e1 	. 
	push bc			;64e8	c5 	. 
	ld a,(l22f1h)		;64e9	3a f1 22 	: . " 
	cp b			;64ec	b8 	. 
	ld a,(022f3h)		;64ed	3a f3 22 	: . " 
	call z,008c0h		;64f0	cc c0 08 	. . . 
	ld de,02288h		;64f3	11 88 22 	. . " 
	push de			;64f6	d5 	. 
	ld a,03ah		;64f7	3e 3a 	> : 
	ld (de),a			;64f9	12 	. 
	inc de			;64fa	13 	. 
	ld a,020h		;64fb	3e 20 	>   
	ld (de),a			;64fd	12 	. 
	inc de			;64fe	13 	. 
	inc hl			;64ff	23 	# 
	ld bc,l0008h		;6500	01 08 00 	. . . 
	ldir		;6503	ed b0 	. . 
	ld a,02eh		;6505	3e 2e 	> . 
	ld (de),a			;6507	12 	. 
	inc de			;6508	13 	. 
	ld bc,l0002h+1		;6509	01 03 00 	. . . 
	ldir		;650c	ed b0 	. . 
	ld a,020h		;650e	3e 20 	>   
	ld (de),a			;6510	12 	. 
	pop hl			;6511	e1 	. 
	ld b,00fh		;6512	06 0f 	. . 
	call 007d8h		;6514	cd d8 07 	. . . 
	pop bc			;6517	c1 	. 
	dec b			;6518	05 	. 
	ret nz			;6519	c0 	. 
	ld a,(l22f1h)		;651a	3a f1 22 	: . " 
	ld b,a			;651d	47 	G 
	jp sub_0a5ah		;651e	c3 5a 0a 	. Z . 
	ld c,b			;6521	48 	H 
	ld l,c			;6522	69 	i 
	ld (hl),h			;6523	74 	t 
	jr nz,$+99		;6524	20 61 	  a 
	jr nz,$+109		;6526	20 6b 	  k 
	ld h,l			;6528	65 	e 
	ld a,c			;6529	79 	y 
	nop			;652a	00 	. 
	call 00ceeh		;652b	cd ee 0c 	. . . 
	call sub_0d25h		;652e	cd 25 0d 	. % . 
	ret c			;6531	d8 	. 
	ld c,013h		;6532	0e 13 	. . 
	jr l6575h		;6534	18 3f 	. ? 
	push hl			;6536	e5 	. 
	call sub_0d19h		;6537	cd 19 0d 	. . . 
	jr c,l657eh		;653a	38 42 	8 B 
	ld de,00e6fh		;653c	11 6f 0e 	. o . 
	ld hl,00b8ch		;653f	21 8c 0b 	! . . 
	call 00d05h		;6542	cd 05 0d 	. . . 
	jr z,l657eh		;6545	28 37 	( 7 
	push de			;6547	d5 	. 
	ld c,011h		;6548	0e 11 	. . 
	call sub_0e55h		;654a	cd 55 0e 	. U . 
	inc a			;654d	3c 	< 
	pop de			;654e	d1 	. 
	pop bc			;654f	c1 	. 
	ret z			;6550	c8 	. 
	push bc			;6551	c5 	. 
	push de			;6552	d5 	. 
	call 00e1fh		;6553	cd 1f 0e 	. . . 
	pop de			;6556	d1 	. 
	call sub_0b82h		;6557	cd 82 0b 	. . . 
	ld c,013h		;655a	0e 13 	. . 
	call sub_0e55h		;655c	cd 55 0e 	. U . 
	pop hl			;655f	e1 	. 
	call sub_0d19h		;6560	cd 19 0d 	. . . 
	ld de,00e76h		;6563	11 76 0e 	. v . 
	ld hl,l0e66h		;6566	21 66 0e 	! f . 
	xor a			;6569	af 	. 
	ld (de),a			;656a	12 	. 
	ld bc,l0008h+1		;656b	01 09 00 	. . . 
	ldir		;656e	ed b0 	. . 
	call sub_0b82h		;6570	cd 82 0b 	. . . 
	ld c,017h		;6573	0e 17 	. . 
l6575h:
	call sub_0e55h		;6575	cd 55 0e 	. U . 
	inc a			;6578	3c 	< 
	ld a,001h		;6579	3e 01 	> . 
	ret z			;657b	c8 	. 
	xor a			;657c	af 	. 
	ret			;657d	c9 	. 
l657eh:
	pop hl			;657e	e1 	. 
	ld a,001h		;657f	3e 01 	> . 
	ret			;6581	c9 	. 
	ex de,hl			;6582	eb 	. 
	ld (hl),042h		;6583	36 42 	6 B 
	inc hl			;6585	23 	# 
	ld (hl),041h		;6586	36 41 	6 A 
	inc hl			;6588	23 	# 
	ld (hl),04bh		;6589	36 4b 	6 K 
	ret			;658b	c9 	. 
	ld b,d			;658c	42 	B 
	ld b,c			;658d	41 	A 
	ld c,e			;658e	4b 	K 
l658fh:
	ld a,(hl)			;658f	7e 	~ 
	cp 02ah		;6590	fe 2a 	. * 
	jr z,l6598h		;6592	28 04 	( . 
	inc hl			;6594	23 	# 
	djnz l658fh		;6595	10 f8 	. . 
	ret			;6597	c9 	. 
l6598h:
	ld (hl),03fh		;6598	36 3f 	6 ? 
	inc hl			;659a	23 	# 
	djnz l6598h		;659b	10 fb 	. . 
	ret			;659d	c9 	. 
	rst 0			;659e	c7 	. 
	push bc			;659f	c5 	. 
	push de			;65a0	d5 	. 
	call 00ceeh		;65a1	cd ee 0c 	. . . 
	ld hl,l0db9h		;65a4	21 b9 0d 	! . . 
	call 00d09h		;65a7	cd 09 0d 	. . . 
	jr z,l6616h		;65aa	28 6a 	( j 
	ld hl,l0db5h		;65ac	21 b5 0d 	! . . 
	call 00d09h		;65af	cd 09 0d 	. . . 
	jr z,l6625h		;65b2	28 71 	( q 
	ld a,(l0e88h)		;65b4	3a 88 0e 	: . . 
	cp 054h		;65b7	fe 54 	. T 
	nop			;65b9	00 	. 
	nop			;65ba	00 	. 
	call 00d1ch		;65bb	cd 1c 0d 	. . . 
	jp c,l0c87h		;65be	da 87 0c 	. . . 
	call 00e1fh		;65c1	cd 1f 0e 	. . . 
	ld c,013h		;65c4	0e 13 	. . 
	call sub_0e55h		;65c6	cd 55 0e 	. U . 
	ld c,016h		;65c9	0e 16 	. . 
	call sub_0e55h		;65cb	cd 55 0e 	. U . 
	inc a			;65ce	3c 	< 
	pop hl			;65cf	e1 	. 
	pop bc			;65d0	c1 	. 
	push hl			;65d1	e5 	. 
	add hl,bc			;65d2	09 	. 
	ld a,(hl)			;65d3	7e 	~ 
	ld (hl),01ah		;65d4	36 1a 	6 . 
	pop de			;65d6	d1 	. 
	push af			;65d7	f5 	. 
	push hl			;65d8	e5 	. 
	jr z,l65f2h		;65d9	28 17 	( . 
	ld hl,l0080h		;65db	21 80 00 	! . . 
	ld b,081h		;65de	06 81 	. . 
l65e0h:
	ld a,(de)			;65e0	1a 	. 
	inc de			;65e1	13 	. 
l65e2h:
	djnz l65f6h		;65e2	10 12 	. . 
	ld c,a			;65e4	4f 	O 
	push bc			;65e5	c5 	. 
	call sub_0c43h		;65e6	cd 43 0c 	. C . 
	pop bc			;65e9	c1 	. 
	ld a,c			;65ea	79 	y 
	ld hl,l0080h		;65eb	21 80 00 	! . . 
	ld b,080h		;65ee	06 80 	. . 
	jr z,l65f6h		;65f0	28 04 	( . 
l65f2h:
	ld a,002h		;65f2	3e 02 	> . 
	jr l660eh		;65f4	18 18 	. . 
l65f6h:
	ld (hl),a			;65f6	77 	w 
	inc hl			;65f7	23 	# 
	cp 00dh		;65f8	fe 0d 	. . 
	jr z,l6612h		;65fa	28 16 	( . 
	cp 01ah		;65fc	fe 1a 	. . 
	jr nz,l65e0h		;65fe	20 e0 	  . 
	call sub_0c43h		;6600	cd 43 0c 	. C . 
	jr nz,l65f2h		;6603	20 ed 	  . 
	ld c,010h		;6605	0e 10 	. . 
	call sub_0e55h		;6607	cd 55 0e 	. U . 
	inc a			;660a	3c 	< 
	jr z,l65f2h		;660b	28 e5 	( . 
	xor a			;660d	af 	. 
l660eh:
	pop hl			;660e	e1 	. 
	pop bc			;660f	c1 	. 
	ld (hl),b			;6610	70 	p 
	ret			;6611	c9 	. 
l6612h:
	ld a,00ah		;6612	3e 0a 	> . 
	jr l65e2h		;6614	18 cc 	. . 
l6616h:
	ld d,004h		;6616	16 04 	. . 
	pop hl			;6618	e1 	. 
	pop bc			;6619	c1 	. 
	call sub_0c2eh		;661a	cd 2e 0c 	. . . 
	ld e,01ah		;661d	1e 1a 	. . 
	ld c,d			;661f	4a 	J 
	call sub_0e58h		;6620	cd 58 0e 	. X . 
	xor a			;6623	af 	. 
	ret			;6624	c9 	. 
l6625h:
	ld d,005h		;6625	16 05 	. . 
	pop hl			;6627	e1 	. 
	pop bc			;6628	c1 	. 
	call sub_0c2eh		;6629	cd 2e 0c 	. . . 
	xor a			;662c	af 	. 
	ret			;662d	c9 	. 
l662eh:
	push bc			;662e	c5 	. 
	ld c,d			;662f	4a 	J 
	ld e,(hl)			;6630	5e 	^ 
	inc hl			;6631	23 	# 
l6632h:
	call sub_0e58h		;6632	cd 58 0e 	. X . 
	ld a,e			;6635	7b 	{ 
	ld e,00ah		;6636	1e 0a 	. . 
	cp 00dh		;6638	fe 0d 	. . 
	jr z,l6632h		;663a	28 f6 	( . 
	pop bc			;663c	c1 	. 
	dec bc			;663d	0b 	. 
	ld a,b			;663e	78 	x 
	or c			;663f	b1 	. 
	jr nz,l662eh		;6640	20 ec 	  . 
	ret			;6642	c9 	. 
	push de			;6643	d5 	. 
	ld c,015h		;6644	0e 15 	. . 
	call sub_0e55h		;6646	cd 55 0e 	. U . 
	or a			;6649	b7 	. 
	pop de			;664a	d1 	. 
	ret			;664b	c9 	. 
	cp 00ah		;664c	fe 0a 	. . 
	ret z			;664e	c8 	. 
	cp 01ah		;664f	fe 1a 	. . 
	scf			;6651	37 	7 
	ret z			;6652	c8 	. 
	ccf			;6653	3f 	? 
	ret			;6654	c9 	. 
	rst 0			;6655	c7 	. 
	xor a			;6656	af 	. 
	jr l665bh		;6657	18 02 	. . 
	ld a,001h		;6659	3e 01 	> . 
l665bh:
	ld (l0e88h),a		;665b	32 88 0e 	2 . . 
	push bc			;665e	c5 	. 
	push de			;665f	d5 	. 
	call 00ceeh		;6660	cd ee 0c 	. . . 
	ld hl,l0dbdh		;6663	21 bd 0d 	! . . 
	call 00d09h		;6666	cd 09 0d 	. . . 
	jr nz,l6682h		;6669	20 17 	  . 
	pop de			;666b	d1 	. 
	pop bc			;666c	c1 	. 
l666dh:
	ld c,003h		;666d	0e 03 	. . 
	call sub_0e58h		;666f	cd 58 0e 	. X . 
	call sub_0c4ch		;6672	cd 4c 0c 	. L . 
	jr c,l66cfh		;6675	38 58 	8 X 
	jr z,l666dh		;6677	28 f4 	( . 
	ld (de),a			;6679	12 	. 
	inc de			;667a	13 	. 
	dec bc			;667b	0b 	. 
	ld a,b			;667c	78 	x 
	or c			;667d	b1 	. 
	jr nz,l666dh		;667e	20 ed 	  . 
	jr l66c2h		;6680	18 40 	. @ 
l6682h:
	call 00d1ch		;6682	cd 1c 0d 	. . . 
	jr nc,l668ch		;6685	30 05 	0 . 
l6687h:
	ld a,001h		;6687	3e 01 	> . 
	pop de			;6689	d1 	. 
	pop bc			;668a	c1 	. 
	ret			;668b	c9 	. 
l668ch:
	ld c,00fh		;668c	0e 0f 	. . 
	call sub_0e55h		;668e	cd 55 0e 	. U . 
	inc a			;6691	3c 	< 
	jr z,l6687h		;6692	28 f3 	( . 
	pop de			;6694	d1 	. 
	pop bc			;6695	c1 	. 
	push de			;6696	d5 	. 
	ex de,hl			;6697	eb 	. 
	add hl,bc			;6698	09 	. 
	pop de			;6699	d1 	. 
	ld bc,0ff80h		;669a	01 80 ff 	. . . 
	add hl,bc			;669d	09 	. 
	ld a,(l0e88h)		;669e	3a 88 0e 	: . . 
	or a			;66a1	b7 	. 
	jr z,l66d1h		;66a2	28 2d 	( - 
l66a4h:
	push hl			;66a4	e5 	. 
	call 00cddh		;66a5	cd dd 0c 	. . . 
	ld b,080h		;66a8	06 80 	. . 
l66aah:
	ld a,(hl)			;66aa	7e 	~ 
	and 07fh		;66ab	e6 7f 	.  
	inc hl			;66ad	23 	# 
	cp 00ah		;66ae	fe 0a 	. . 
	jr z,l66c5h		;66b0	28 13 	( . 
	cp 01ah		;66b2	fe 1a 	. . 
	jr z,l66ceh		;66b4	28 18 	( . 
	ld c,a			;66b6	4f 	O 
l66b7h:
	ld (de),a			;66b7	12 	. 
	inc de			;66b8	13 	. 
l66b9h:
	djnz l66aah		;66b9	10 ef 	. . 
	pop hl			;66bb	e1 	. 
	or a			;66bc	b7 	. 
	sbc hl,de		;66bd	ed 52 	. R 
	add hl,de			;66bf	19 	. 
	jr nc,l66a4h		;66c0	30 e2 	0 . 
l66c2h:
	ld a,002h		;66c2	3e 02 	> . 
	ret			;66c4	c9 	. 
l66c5h:
	ld a,00dh		;66c5	3e 0d 	> . 
	cp c			;66c7	b9 	. 
	ld c,00ah		;66c8	0e 0a 	. . 
	jr z,l66b9h		;66ca	28 ed 	( . 
	jr l66b7h		;66cc	18 e9 	. . 
l66ceh:
	pop hl			;66ce	e1 	. 
l66cfh:
	xor a			;66cf	af 	. 
	ret			;66d0	c9 	. 
l66d1h:
	call 00cddh		;66d1	cd dd 0c 	. . . 
	jr nz,l66cfh		;66d4	20 f9 	  . 
	ld bc,l0080h		;66d6	01 80 00 	. . . 
	ldir		;66d9	ed b0 	. . 
	jr l66d1h		;66db	18 f4 	. . 
	push de			;66dd	d5 	. 
	push bc			;66de	c5 	. 
	ld c,014h		;66df	0e 14 	. . 
	call sub_0e55h		;66e1	cd 55 0e 	. U . 
	or a			;66e4	b7 	. 
	pop bc			;66e5	c1 	. 
	pop de			;66e6	d1 	. 
	ld hl,l0080h		;66e7	21 80 00 	! . . 
	ret z			;66ea	c8 	. 
	ld (hl),01ah		;66eb	36 1a 	6 . 
	ret			;66ed	c9 	. 
	push bc			;66ee	c5 	. 
	push hl			;66ef	e5 	. 
	ld de,l0e66h		;66f0	11 66 0e 	. f . 
	ld bc,l0022h		;66f3	01 22 00 	. " . 
	ld hl,l0dcfh		;66f6	21 cf 0d 	! . . 
	ldir		;66f9	ed b0 	. . 
	pop de			;66fb	d1 	. 
l66fch:
	ld a,(de)			;66fc	1a 	. 
	cp 020h		;66fd	fe 20 	.   
	inc de			;66ff	13 	. 
	jr z,l66fch		;6700	28 fa 	( . 
	dec de			;6702	1b 	. 
	pop bc			;6703	c1 	. 
	ret			;6704	c9 	. 
	ld b,003h		;6705	06 03 	. . 
	jr l670bh		;6707	18 02 	. . 
	ld b,004h		;6709	06 04 	. . 
l670bh:
	push de			;670b	d5 	. 
l670ch:
	ld a,(de)			;670c	1a 	. 
	call 00dc6h		;670d	cd c6 0d 	. . . 
	sub (hl)			;6710	96 	. 
	jr nz,l6717h		;6711	20 04 	  . 
	inc hl			;6713	23 	# 
	inc de			;6714	13 	. 
	djnz l670ch		;6715	10 f5 	. . 
l6717h:
	pop de			;6717	d1 	. 
	ret			;6718	c9 	. 
	call 00ceeh		;6719	cd ee 0c 	. . . 
	call sub_0d39h+1		;671c	cd 3a 0d 	. : . 
	ret c			;671f	d8 	. 
	ld a,c			;6720	79 	y 
	or a			;6721	b7 	. 
	ret z			;6722	c8 	. 
	scf			;6723	37 	7 
	ret			;6724	c9 	. 
	call sub_0d51h		;6725	cd 51 0d 	. Q . 
	ld a,001h		;6728	3e 01 	> . 
	ret c			;672a	d8 	. 
	ld hl,l0e66h+1		;672b	21 67 0e 	! g . 
	ld b,008h		;672e	06 08 	. . 
	call sub_0b8fh		;6730	cd 8f 0b 	. . . 
	ld b,003h		;6733	06 03 	. . 
	call sub_0b8fh		;6735	cd 8f 0b 	. . . 
	or a			;6738	b7 	. 
	ret			;6739	c9 	. 
	call sub_0d51h		;673a	cd 51 0d 	. Q . 
	ret c			;673d	d8 	. 
	ld c,a			;673e	4f 	O 
	ld hl,l0e66h+1		;673f	21 67 0e 	! g . 
	ld b,00bh		;6742	06 0b 	. . 
l6744h:
	ld a,(hl)			;6744	7e 	~ 
	cp 03fh		;6745	fe 3f 	. ? 
	scf			;6747	37 	7 
	ret z			;6748	c8 	. 
	cp 02ah		;6749	fe 2a 	. * 
	scf			;674b	37 	7 
	ret z			;674c	c8 	. 
	djnz l6744h		;674d	10 f5 	. . 
	or a			;674f	b7 	. 
	ret			;6750	c9 	. 
	ex de,hl			;6751	eb 	. 
	ld de,l0e66h		;6752	11 66 0e 	. f . 
	ld c,(hl)			;6755	4e 	N 
	inc hl			;6756	23 	# 
	ld a,(hl)			;6757	7e 	~ 
	cp 03ah		;6758	fe 3a 	. : 
	jr nz,l676bh		;675a	20 0f 	  . 
	ld a,c			;675c	79 	y 
	call 00dc6h		;675d	cd c6 0d 	. . . 
	inc hl			;6760	23 	# 
	sub 040h		;6761	d6 40 	. @ 
	ret c			;6763	d8 	. 
	cp 011h		;6764	fe 11 	. . 
	ccf			;6766	3f 	? 
	ret c			;6767	d8 	. 
	ld (de),a			;6768	12 	. 
	jr l676ch		;6769	18 01 	. . 
l676bh:
	dec hl			;676b	2b 	+ 
l676ch:
	ld b,008h		;676c	06 08 	. . 
l676eh:
	inc de			;676e	13 	. 
	call 00df1h		;676f	cd f1 0d 	. . . 
	call z,sub_0d9eh		;6772	cc 9e 0d 	. . . 
	jr z,l6798h		;6775	28 21 	( ! 
	jr c,l6784h		;6777	38 0b 	8 . 
	ld (de),a			;6779	12 	. 
	djnz l676eh		;677a	10 f2 	. . 
	call 00df1h		;677c	cd f1 0d 	. . . 
	jr z,l679eh		;677f	28 1d 	( . 
	ccf			;6781	3f 	? 
	ret c			;6782	d8 	. 
	inc b			;6783	04 	. 
l6784h:
	inc de			;6784	13 	. 
	djnz l6784h		;6785	10 fd 	. . 
	ld b,003h		;6787	06 03 	. . 
l6789h:
	call 00df1h		;6789	cd f1 0d 	. . . 
	ret z			;678c	c8 	. 
	ret c			;678d	d8 	. 
	ld (de),a			;678e	12 	. 
	inc de			;678f	13 	. 
	djnz l6789h		;6790	10 f7 	. . 
	call 00df1h		;6792	cd f1 0d 	. . . 
	ret z			;6795	c8 	. 
	scf			;6796	37 	7 
	ret			;6797	c9 	. 
l6798h:
	ld c,a			;6798	4f 	O 
	ld a,007h		;6799	3e 07 	> . 
	cp b			;679b	b8 	. 
	ld a,c			;679c	79 	y 
	ret			;679d	c9 	. 
l679eh:
	push hl			;679e	e5 	. 
	push de			;679f	d5 	. 
	push bc			;67a0	c5 	. 
	push af			;67a1	f5 	. 
	ld hl,00db2h		;67a2	21 b2 0d 	! . . 
	ld de,00e6fh		;67a5	11 6f 0e 	. o . 
	ld bc,l0002h+1		;67a8	01 03 00 	. . . 
	ldir		;67ab	ed b0 	. . 
	pop af			;67ad	f1 	. 
	pop bc			;67ae	c1 	. 
	pop de			;67af	d1 	. 
	pop hl			;67b0	e1 	. 
	ret			;67b1	c9 	. 
	jr nz,l67d4h		;67b2	20 20 	    
	jr nz,$+78		;67b4	20 4c 	  L 
	ld d,e			;67b6	53 	S 
	ld d,h			;67b7	54 	T 
	ld a,(l5550h)		;67b8	3a 50 55 	: P U 
	ld c,(hl)			;67bb	4e 	N 
	ld a,(l4452h)		;67bc	3a 52 44 	: R D 
	ld d,d			;67bf	52 	R 
	ld a,(l2a00h)		;67c0	3a 00 2a 	: . * 
	ld l,02ah		;67c3	2e 2a 	. * 
	nop			;67c5	00 	. 
	cp 061h		;67c6	fe 61 	. a 
	ret c			;67c8	d8 	. 
	cp 07bh		;67c9	fe 7b 	. { 
	ret nc			;67cb	d0 	. 
	sub 020h		;67cc	d6 20 	.   
	ret			;67ce	c9 	. 
	nop			;67cf	00 	. 
	jr nz,l67f2h		;67d0	20 20 	    
	jr nz,$+34		;67d2	20 20 	    
l67d4h:
	jr nz,$+34		;67d4	20 20 	    
	jr nz,$+34		;67d6	20 20 	    
	jr nz,l67fah		;67d8	20 20 	    
	jr nz,l67dch		;67da	20 00 	  . 
l67dch:
	nop			;67dc	00 	. 
	nop			;67dd	00 	. 
	nop			;67de	00 	. 
	nop			;67df	00 	. 
	nop			;67e0	00 	. 
	nop			;67e1	00 	. 
	nop			;67e2	00 	. 
	nop			;67e3	00 	. 
	nop			;67e4	00 	. 
	nop			;67e5	00 	. 
	nop			;67e6	00 	. 
	nop			;67e7	00 	. 
	nop			;67e8	00 	. 
	nop			;67e9	00 	. 
	nop			;67ea	00 	. 
	nop			;67eb	00 	. 
	nop			;67ec	00 	. 
	nop			;67ed	00 	. 
	nop			;67ee	00 	. 
	nop			;67ef	00 	. 
	nop			;67f0	00 	. 
	ld a,(hl)			;67f1	7e 	~ 
l67f2h:
	inc hl			;67f2	23 	# 
	cp 02eh		;67f3	fe 2e 	. . 
	jr z,l680dh		;67f5	28 16 	( . 
	call 00dc6h		;67f7	cd c6 0d 	. . . 
l67fah:
	cp 021h		;67fa	fe 21 	. ! 
	jr c,l680bh		;67fc	38 0d 	8 . 
	push hl			;67fe	e5 	. 
	push bc			;67ff	c5 	. 
	ld hl,00e10h		;6800	21 10 0e 	! . . 
	ld bc,l000eh+1		;6803	01 0f 00 	. . . 
	cpir		;6806	ed b1 	. . 
	pop bc			;6808	c1 	. 
	pop hl			;6809	e1 	. 
	ret			;680a	c9 	. 
l680bh:
	cp a			;680b	bf 	. 
	ret			;680c	c9 	. 
l680dh:
	or a			;680d	b7 	. 
	scf			;680e	37 	7 
	ret			;680f	c9 	. 
	inc a			;6810	3c 	< 
	ld a,02ch		;6811	3e 2c 	> , 
	dec sp			;6813	3b 	; 
	ld a,(05b3dh)		;6814	3a 3d 5b 	: = [ 
	ld e,l			;6817	5d 	] 
	ld e,a			;6818	5f 	_ 
	dec h			;6819	25 	% 
	ld a,h			;681a	7c 	| 
	jr z,l6846h		;681b	28 29 	( ) 
	cpl			;681d	2f 	/ 
	ld e,h			;681e	5c 	\ 
	ld a,(l0e66h)		;681f	3a 66 0e 	: f . 
	push af			;6822	f5 	. 
	ld c,01dh		;6823	0e 1d 	. . 
	push ix		;6825	dd e5 	. . 
	call l0005h		;6827	cd 05 00 	. . . 
	pop ix		;682a	dd e1 	. . 
	pop af			;682c	f1 	. 
	push hl			;682d	e5 	. 
	or a			;682e	b7 	. 
	jr nz,l6835h		;682f	20 04 	  . 
	ld a,(l0002h+2)		;6831	3a 04 00 	: . . 
	inc a			;6834	3c 	< 
l6835h:
	ld b,a			;6835	47 	G 
	ld hl,l0000h		;6836	21 00 00 	! . . 
	scf			;6839	37 	7 
l683ah:
	adc hl,hl		;683a	ed 6a 	. j 
	djnz l683ah		;683c	10 fc 	. . 
	pop de			;683e	d1 	. 
	ld a,e			;683f	7b 	{ 
	and l			;6840	a5 	. 
	jr nz,l6846h		;6841	20 03 	  . 
	ld a,d			;6843	7a 	z 
	and h			;6844	a4 	. 
	ret z			;6845	c8 	. 
l6846h:
	ld a,(l0002h+2)		;6846	3a 04 00 	: . . 
	push af			;6849	f5 	. 
	ld c,00dh		;684a	0e 0d 	. . 
	call sub_0e58h		;684c	cd 58 0e 	. X . 
	pop af			;684f	f1 	. 
	ld e,a			;6850	5f 	_ 
	ld c,00eh		;6851	0e 0e 	. . 
	jr l6858h		;6853	18 03 	. . 
	ld de,l0e66h		;6855	11 66 0e 	. f . 
l6858h:
	push ix		;6858	dd e5 	. . 
	push hl			;685a	e5 	. 
	push de			;685b	d5 	. 
	push bc			;685c	c5 	. 
	call l0005h		;685d	cd 05 00 	. . . 
	pop bc			;6860	c1 	. 
	pop de			;6861	d1 	. 
	pop hl			;6862	e1 	. 
	pop ix		;6863	dd e1 	. . 
	ret			;6865	c9 	. 
	nop			;6866	00 	. 
	nop			;6867	00 	. 
	nop			;6868	00 	. 
	nop			;6869	00 	. 
	nop			;686a	00 	. 
	nop			;686b	00 	. 
	nop			;686c	00 	. 
	nop			;686d	00 	. 
	nop			;686e	00 	. 
	nop			;686f	00 	. 
	nop			;6870	00 	. 
	nop			;6871	00 	. 
	nop			;6872	00 	. 
	nop			;6873	00 	. 
	nop			;6874	00 	. 
	nop			;6875	00 	. 
	nop			;6876	00 	. 
	nop			;6877	00 	. 
	nop			;6878	00 	. 
	nop			;6879	00 	. 
	nop			;687a	00 	. 
	nop			;687b	00 	. 
	nop			;687c	00 	. 
	nop			;687d	00 	. 
	nop			;687e	00 	. 
	nop			;687f	00 	. 
	nop			;6880	00 	. 
	nop			;6881	00 	. 
	nop			;6882	00 	. 
	nop			;6883	00 	. 
	nop			;6884	00 	. 
	nop			;6885	00 	. 
	nop			;6886	00 	. 
	nop			;6887	00 	. 
	nop			;6888	00 	. 
	jp c,l12b8h		;6889	da b8 12 	. . . 
	bit 5,(ix+000h)		;688c	dd cb 00 6e 	. . . n 
	jr nz,l68adh		;6890	20 1b 	  . 
	cp 0ffh		;6892	fe ff 	. . 
	jp z,l1947h		;6894	ca 47 19 	. G . 
	push hl			;6897	e5 	. 
	push de			;6898	d5 	. 
	ld hl,l2331h		;6899	21 31 23 	! 1 # 
	add a,a			;689c	87 	. 
	ld d,000h		;689d	16 00 	. . 
	ld e,a			;689f	5f 	_ 
	add hl,de			;68a0	19 	. 
	ld e,(hl)			;68a1	5e 	^ 
	inc hl			;68a2	23 	# 
	ld d,(hl)			;68a3	56 	V 
	ex de,hl			;68a4	eb 	. 
	pop de			;68a5	d1 	. 
	ex (sp),hl			;68a6	e3 	. 
	cp 056h		;68a7	fe 56 	. V 
	call c,sub_14ach		;68a9	dc ac 14 	. . . 
	ret			;68ac	c9 	. 
l68adh:
	or a			;68ad	b7 	. 
	ret z			;68ae	c8 	. 
	ld (l22f7h),a		;68af	32 f7 22 	2 . " 
	call sub_13deh		;68b2	cd de 13 	. . . 
	jp c,l12b0h		;68b5	da b0 12 	. . . 
	bit 4,(ix+000h)		;68b8	dd cb 00 66 	. . . f 
	jr z,l68d0h		;68bc	28 12 	( . 
	ld a,(hl)			;68be	7e 	~ 
	or a			;68bf	b7 	. 
	ret z			;68c0	c8 	. 
	cp 00dh		;68c1	fe 0d 	. . 
	ret z			;68c3	c8 	. 
	cp 009h		;68c4	fe 09 	. . 
	jr nz,l68d6h		;68c6	20 0e 	  . 
	ld a,(l23cdh)		;68c8	3a cd 23 	: . # 
	ld (l22fah),a		;68cb	32 fa 22 	2 . " 
	jr l68d6h		;68ce	18 06 	. . 
l68d0h:
	call l147ch+1		;68d0	cd 7d 14 	. } . 
	jp c,012b4h		;68d3	da b4 12 	. . . 
l68d6h:
	ld a,(l22f7h)		;68d6	3a f7 22 	: . " 
	ld (hl),a			;68d9	77 	w 
	inc hl			;68da	23 	# 
	cp 00dh		;68db	fe 0d 	. . 
	call z,l0ee2h+1		;68dd	cc e3 0e 	. . . 
	jp l0f9dh		;68e0	c3 9d 0f 	. . . 
	call sub_14ach		;68e3	cd ac 14 	. . . 
	ld d,h			;68e6	54 	T 
	ld e,l			;68e7	5d 	] 
	ld a,(l225fh+2)		;68e8	3a 61 22 	: a " 
	cp b			;68eb	b8 	. 
	jr nz,l68f2h		;68ec	20 04 	  . 
	call 01084h		;68ee	cd 84 10 	. . . 
	dec b			;68f1	05 	. 
l68f2h:
	inc b			;68f2	04 	. 
	set 3,(ix+000h)		;68f3	dd cb 00 de 	. . . . 
	scf			;68f7	37 	7 
	call sub_1091h		;68f8	cd 91 10 	. . . 
	call sub_13deh		;68fb	cd de 13 	. . . 
	ld a,(l2262h+2)		;68fe	3a 64 22 	: d " 
	bit 0,a		;6901	cb 47 	. G 
	ret z			;6903	c8 	. 
	bit 4,a		;6904	cb 67 	. g 
	ret nz			;6906	c0 	. 
	push de			;6907	d5 	. 
	push bc			;6908	c5 	. 
	ld de,(l214fh+1)		;6909	ed 5b 50 21 	. [ P ! 
	call 00f63h		;690d	cd 63 0f 	. c . 
l6910h:
	call sub_0f21h		;6910	cd 21 0f 	. ! . 
	jr nc,l691eh		;6913	30 09 	0 . 
	push af			;6915	f5 	. 
	call l147ch+1		;6916	cd 7d 14 	. } . 
	pop af			;6919	f1 	. 
	ld (hl),a			;691a	77 	w 
	inc hl			;691b	23 	# 
	jr l6910h		;691c	18 f2 	. . 
l691eh:
	pop bc			;691e	c1 	. 
	pop de			;691f	d1 	. 
	ret			;6920	c9 	. 
	ld a,(de)			;6921	1a 	. 
	inc de			;6922	13 	. 
	cp 020h		;6923	fe 20 	.   
	jr z,l692dh		;6925	28 06 	( . 
	cp 009h		;6927	fe 09 	. . 
	jr z,l692dh		;6929	28 02 	( . 
	or a			;692b	b7 	. 
	ret			;692c	c9 	. 
l692dh:
	scf			;692d	37 	7 
	ret			;692e	c9 	. 
	push hl			;692f	e5 	. 
	push bc			;6930	c5 	. 
	ld a,(l225fh)		;6931	3a 5f 22 	: _ " 
	neg		;6934	ed 44 	. D 
	add a,c			;6936	81 	. 
	ld c,000h		;6937	0e 00 	. . 
	or a			;6939	b7 	. 
	jr z,l694bh		;693a	28 0f 	( . 
	ld l,a			;693c	6f 	o 
	ld a,(l23cdh)		;693d	3a cd 23 	: . # 
	ld h,a			;6940	67 	g 
l6941h:
	ld a,l			;6941	7d 	} 
l6942h:
	sub h			;6942	94 	. 
	jr z,l694bh		;6943	28 06 	( . 
	jr nc,l6942h		;6945	30 fb 	0 . 
	inc l			;6947	2c 	, 
	inc c			;6948	0c 	. 
	jr l6941h		;6949	18 f6 	. . 
l694bh:
	ld a,c			;694b	79 	y 
	or a			;694c	b7 	. 
	pop bc			;694d	c1 	. 
	pop hl			;694e	e1 	. 
	ret nz			;694f	c0 	. 
	ld a,(l23cdh)		;6950	3a cd 23 	: . # 
	ret			;6953	c9 	. 
	dec de			;6954	1b 	. 
	ld a,(de)			;6955	1a 	. 
	inc de			;6956	13 	. 
	jr l695eh		;6957	18 05 	. . 
l6959h:
	ld a,(de)			;6959	1a 	. 
	inc de			;695a	13 	. 
	cp 00dh		;695b	fe 0d 	. . 
	ret z			;695d	c8 	. 
l695eh:
	cp 001h		;695e	fe 01 	. . 
	jr nc,l6959h		;6960	30 f7 	0 . 
	ret			;6962	c9 	. 
	dec de			;6963	1b 	. 
	ld a,(de)			;6964	1a 	. 
	cp 0ffh		;6965	fe ff 	. . 
	jr z,l6974h		;6967	28 0b 	( . 
l6969h:
	dec de			;6969	1b 	. 
	ld a,(de)			;696a	1a 	. 
	cp 0ffh		;696b	fe ff 	. . 
	jr z,l6974h		;696d	28 05 	( . 
	cp 00dh		;696f	fe 0d 	. . 
	jr nz,l6969h		;6971	20 f6 	  . 
	scf			;6973	37 	7 
l6974h:
	inc de			;6974	13 	. 
	ret			;6975	c9 	. 
	push de			;6976	d5 	. 
	ld de,(l2306h)		;6977	ed 5b 06 23 	. [ . # 
	call 00f63h		;697b	cd 63 0f 	. c . 
	ld (l2306h),de		;697e	ed 53 06 23 	. S . # 
	pop de			;6982	d1 	. 
	ret			;6983	c9 	. 
	push de			;6984	d5 	. 
	ld de,(l2306h)		;6985	ed 5b 06 23 	. [ . # 
	call 00f54h		;6989	cd 54 0f 	. T . 
	ld (l2306h),de		;698c	ed 53 06 23 	. S . # 
	pop de			;6990	d1 	. 
	ret			;6991	c9 	. 
	push de			;6992	d5 	. 
	ld de,(023c3h)		;6993	ed 5b c3 23 	. [ . # 
	or a			;6997	b7 	. 
	sbc hl,de		;6998	ed 52 	. R 
	add hl,de			;699a	19 	. 
	pop de			;699b	d1 	. 
	ret			;699c	c9 	. 
	push hl			;699d	e5 	. 
	push de			;699e	d5 	. 
	push bc			;699f	c5 	. 
	or a			;69a0	b7 	. 
	sbc hl,de		;69a1	ed 52 	. R 
	ld b,l			;69a3	45 	E 
	ld a,(l225fh)		;69a4	3a 5f 22 	: _ " 
	ld c,a			;69a7	4f 	O 
	ld h,d			;69a8	62 	b 
	ld l,e			;69a9	6b 	k 
	ld e,000h		;69aa	1e 00 	. . 
	ld a,b			;69ac	78 	x 
	or a			;69ad	b7 	. 
	jr z,l69d4h		;69ae	28 24 	( $ 
l69b0h:
	ld a,(hl)			;69b0	7e 	~ 
	cp 009h		;69b1	fe 09 	. . 
	jr nz,l69bdh		;69b3	20 08 	  . 
	call 00f2fh		;69b5	cd 2f 0f 	. / . 
	dec a			;69b8	3d 	= 
	add a,c			;69b9	81 	. 
	ld c,a			;69ba	4f 	O 
	jr l69c2h		;69bb	18 05 	. . 
l69bdh:
	cp 020h		;69bd	fe 20 	.   
	jr nc,l69c2h		;69bf	30 01 	0 . 
	inc c			;69c1	0c 	. 
l69c2h:
	inc hl			;69c2	23 	# 
	inc c			;69c3	0c 	. 
	ld a,(l225eh)		;69c4	3a 5e 22 	: ^ " 
	cp c			;69c7	b9 	. 
	jr nc,l69d2h		;69c8	30 08 	0 . 
	inc e			;69ca	1c 	. 
	call sub_1034h		;69cb	cd 34 10 	. 4 . 
	neg		;69ce	ed 44 	. D 
	add a,c			;69d0	81 	. 
	ld c,a			;69d1	4f 	O 
l69d2h:
	djnz l69b0h		;69d2	10 dc 	. . 
l69d4h:
	ld a,c			;69d4	79 	y 
	pop bc			;69d5	c1 	. 
	ld c,a			;69d6	4f 	O 
	ld a,e			;69d7	7b 	{ 
	ld hl,l2301h		;69d8	21 01 23 	! . # 
	cp (hl)			;69db	be 	. 
	ld (hl),a			;69dc	77 	w 
	jr z,l69e3h		;69dd	28 04 	( . 
	set 1,(ix+000h)		;69df	dd cb 00 ce 	. . . . 
l69e3h:
	pop de			;69e3	d1 	. 
	pop hl			;69e4	e1 	. 
	ret			;69e5	c9 	. 
	push bc			;69e6	c5 	. 
	ld a,(l2301h)		;69e7	3a 01 23 	: . # 
	or a			;69ea	b7 	. 
	jr z,l69f5h		;69eb	28 08 	( . 
	ld b,a			;69ed	47 	G 
l69eeh:
	call sub_1034h		;69ee	cd 34 10 	. 4 . 
	add a,c			;69f1	81 	. 
	ld c,a			;69f2	4f 	O 
	djnz l69eeh		;69f3	10 f9 	. . 
l69f5h:
	ld a,(l225fh)		;69f5	3a 5f 22 	: _ " 
	push af			;69f8	f5 	. 
	neg		;69f9	ed 44 	. D 
	add a,c			;69fb	81 	. 
	inc a			;69fc	3c 	< 
	ld b,a			;69fd	47 	G 
	pop af			;69fe	f1 	. 
	ld c,a			;69ff	4f 	O 
	ld h,d			;6a00	62 	b 
	ld l,e			;6a01	6b 	k 
l6a02h:
	ld a,(hl)			;6a02	7e 	~ 
	cp 00dh		;6a03	fe 0d 	. . 
	jr z,l6a32h		;6a05	28 2b 	( + 
	or a			;6a07	b7 	. 
	jr z,l6a32h		;6a08	28 28 	( ( 
	cp 009h		;6a0a	fe 09 	. . 
	jr nz,l6a25h		;6a0c	20 17 	  . 
	call 00f2fh		;6a0e	cd 2f 0f 	. / . 
	cp b			;6a11	b8 	. 
	jr c,l6a1ah		;6a12	38 06 	8 . 
	dec b			;6a14	05 	. 
	jr z,l6a32h		;6a15	28 1b 	( . 
	inc hl			;6a17	23 	# 
	jr l6a32h		;6a18	18 18 	. . 
l6a1ah:
	dec a			;6a1a	3d 	= 
	push af			;6a1b	f5 	. 
	neg		;6a1c	ed 44 	. D 
	add a,b			;6a1e	80 	. 
	ld b,a			;6a1f	47 	G 
	pop af			;6a20	f1 	. 
	add a,c			;6a21	81 	. 
	ld c,a			;6a22	4f 	O 
	jr l6a2dh		;6a23	18 08 	. . 
l6a25h:
	cp 020h		;6a25	fe 20 	.   
	jr nc,l6a2dh		;6a27	30 04 	0 . 
	inc c			;6a29	0c 	. 
	dec b			;6a2a	05 	. 
	jr z,l6a32h		;6a2b	28 05 	( . 
l6a2dh:
	inc c			;6a2d	0c 	. 
	inc hl			;6a2e	23 	# 
	djnz l6a02h		;6a2f	10 d1 	. . 
	dec hl			;6a31	2b 	+ 
l6a32h:
	pop bc			;6a32	c1 	. 
	ret			;6a33	c9 	. 
	push hl			;6a34	e5 	. 
	ld a,(l23cdh+1)		;6a35	3a ce 23 	: . # 
	ld l,a			;6a38	6f 	o 
	ld a,(l23cdh)		;6a39	3a cd 23 	: . # 
	ld h,a			;6a3c	67 	g 
	xor a			;6a3d	af 	. 
l6a3eh:
	add a,h			;6a3e	84 	. 
	dec l			;6a3f	2d 	- 
	jr nz,l6a3eh		;6a40	20 fc 	  . 
	pop hl			;6a42	e1 	. 
	ret			;6a43	c9 	. 
	ld a,(hl)			;6a44	7e 	~ 
	cp 00dh		;6a45	fe 0d 	. . 
	inc hl			;6a47	23 	# 
	call z,sub_1056h		;6a48	cc 56 10 	. V . 
	dec hl			;6a4b	2b 	+ 
	ret			;6a4c	c9 	. 
	dec hl			;6a4d	2b 	+ 
	ld a,(hl)			;6a4e	7e 	~ 
	cp 00dh		;6a4f	fe 0d 	. . 
	call z,sub_1069h		;6a51	cc 69 10 	. i . 
	inc hl			;6a54	23 	# 
	ret			;6a55	c9 	. 
	call sub_14ach		;6a56	cd ac 14 	. . . 
	call 00f63h		;6a59	cd 63 0f 	. c . 
	or a			;6a5c	b7 	. 
	call sub_1091h		;6a5d	cd 91 10 	. . . 
	ld a,(l225fh+1)		;6a60	3a 60 22 	: ` " 
	cp b			;6a63	b8 	. 
	jp z,l107ch		;6a64	ca 7c 10 	. | . 
	dec b			;6a67	05 	. 
	ret			;6a68	c9 	. 
	call sub_14ach		;6a69	cd ac 14 	. . . 
	call 00f54h		;6a6c	cd 54 0f 	. T . 
	scf			;6a6f	37 	7 
	call sub_1091h		;6a70	cd 91 10 	. . . 
	ld a,(l225fh+2)		;6a73	3a 61 22 	: a " 
	cp b			;6a76	b8 	. 
	jp z,01084h		;6a77	ca 84 10 	. . . 
	inc b			;6a7a	04 	. 
	ret			;6a7b	c9 	. 
	call sub_0f76h		;6a7c	cd 76 0f 	. v . 
	set 1,(ix+000h)		;6a7f	dd cb 00 ce 	. . . . 
	ret			;6a83	c9 	. 
	call sub_0f84h		;6a84	cd 84 0f 	. . . 
	ld a,0ffh		;6a87	3e ff 	> . 
	ld (l22fah),a		;6a89	32 fa 22 	2 . " 
	set 6,(ix+002h)		;6a8c	dd cb 02 f6 	. . . . 
	ret			;6a90	c9 	. 
	push hl			;6a91	e5 	. 
	ld hl,(l22fbh)		;6a92	2a fb 22 	* . " 
	jr c,l6a99h		;6a95	38 02 	8 . 
	dec hl			;6a97	2b 	+ 
	dec hl			;6a98	2b 	+ 
l6a99h:
	inc hl			;6a99	23 	# 
	ld (l22fbh),hl		;6a9a	22 fb 22 	" . " 
	pop hl			;6a9d	e1 	. 
	ret			;6a9e	c9 	. 
	ld d,h			;6a9f	54 	T 
	ld e,l			;6aa0	5d 	] 
	inc de			;6aa1	13 	. 
	call 00f63h		;6aa2	cd 63 0f 	. c . 
	push hl			;6aa5	e5 	. 
	ex de,hl			;6aa6	eb 	. 
	ld de,(023c3h)		;6aa7	ed 5b c3 23 	. [ . # 
	ld bc,l0000h		;6aab	01 00 00 	. . . 
	jr l6ab3h		;6aae	18 03 	. . 
l6ab0h:
	call 00f54h		;6ab0	cd 54 0f 	. T . 
l6ab3h:
	or a			;6ab3	b7 	. 
	sbc hl,de		;6ab4	ed 52 	. R 
	add hl,de			;6ab6	19 	. 
	inc bc			;6ab7	03 	. 
	jr nz,l6ab0h		;6ab8	20 f6 	  . 
	ld (l22fbh),bc		;6aba	ed 43 fb 22 	. C . " 
	ex de,hl			;6abe	eb 	. 
	pop hl			;6abf	e1 	. 
	ld a,(l23cah)		;6ac0	3a ca 23 	: . # 
	srl a		;6ac3	cb 3f 	. ? 
	dec a			;6ac5	3d 	= 
	ld b,a			;6ac6	47 	G 
	push af			;6ac7	f5 	. 
	push de			;6ac8	d5 	. 
	push hl			;6ac9	e5 	. 
	ld hl,(023c3h)		;6aca	2a c3 23 	* . # 
	or a			;6acd	b7 	. 
	sbc hl,de		;6ace	ed 52 	. R 
	pop hl			;6ad0	e1 	. 
	jr z,l6addh		;6ad1	28 0a 	( . 
l6ad3h:
	call 00f63h		;6ad3	cd 63 0f 	. c . 
	jr nc,l6adch		;6ad6	30 04 	0 . 
	djnz l6ad3h		;6ad8	10 f9 	. . 
	jr l6addh		;6ada	18 01 	. . 
l6adch:
	dec b			;6adc	05 	. 
l6addh:
	ld (l2306h),de		;6add	ed 53 06 23 	. S . # 
	pop de			;6ae1	d1 	. 
	pop af			;6ae2	f1 	. 
	sub b			;6ae3	90 	. 
	ld b,a			;6ae4	47 	G 
	ld a,(l225fh+1)		;6ae5	3a 60 22 	: ` " 
	add a,b			;6ae8	80 	. 
	ld b,a			;6ae9	47 	G 
	set 1,(ix+000h)		;6aea	dd cb 00 ce 	. . . . 
	jp l0f9dh		;6aee	c3 9d 0f 	. . . 
	push hl			;6af1	e5 	. 
	ld hl,l2397h		;6af2	21 97 23 	! . # 
l6af5h:
	push af			;6af5	f5 	. 
	ld a,(hl)			;6af6	7e 	~ 
	or a			;6af7	b7 	. 
	jr z,l6b02h		;6af8	28 08 	( . 
	pop af			;6afa	f1 	. 
	cp (hl)			;6afb	be 	. 
	inc hl			;6afc	23 	# 
	jr nz,l6af5h		;6afd	20 f6 	  . 
	pop hl			;6aff	e1 	. 
	scf			;6b00	37 	7 
	ret			;6b01	c9 	. 
l6b02h:
	pop af			;6b02	f1 	. 
	pop hl			;6b03	e1 	. 
	xor a			;6b04	af 	. 
	ret			;6b05	c9 	. 
	sbc hl,de		;6b06	ed 52 	. R 
	add hl,de			;6b08	19 	. 
	ret nz			;6b09	c0 	. 
	push hl			;6b0a	e5 	. 
	push de			;6b0b	d5 	. 
	ld hl,(l214fh+1)		;6b0c	2a 50 21 	* P ! 
	ld de,(023c3h)		;6b0f	ed 5b c3 23 	. [ . # 
	sbc hl,de		;6b13	ed 52 	. R 
	pop de			;6b15	d1 	. 
	pop hl			;6b16	e1 	. 
	ret z			;6b17	c8 	. 
	push hl			;6b18	e5 	. 
	push de			;6b19	d5 	. 
	ld hl,(l214fh+1)		;6b1a	2a 50 21 	* P ! 
	ld d,h			;6b1d	54 	T 
	ld e,l			;6b1e	5d 	] 
	call 00f63h		;6b1f	cd 63 0f 	. c . 
	call 01184h		;6b22	cd 84 11 	. . . 
	pop de			;6b25	d1 	. 
	pop hl			;6b26	e1 	. 
	jr nc,l6b2ch		;6b27	30 03 	0 . 
	xor a			;6b29	af 	. 
	scf			;6b2a	37 	7 
	ret			;6b2b	c9 	. 
l6b2ch:
	call sub_1056h		;6b2c	cd 56 10 	. V . 
	push hl			;6b2f	e5 	. 
	ld hl,(l214fh+1)		;6b30	2a 50 21 	* P ! 
	dec hl			;6b33	2b 	+ 
	ld (hl),020h		;6b34	36 20 	6   
	ex (sp),hl			;6b36	e3 	. 
	call sub_13deh		;6b37	cd de 13 	. . . 
	ex (sp),hl			;6b3a	e3 	. 
	ld (hl),00dh		;6b3b	36 0d 	6 . 
	set 1,(ix+000h)		;6b3d	dd cb 00 ce 	. . . . 
	pop hl			;6b41	e1 	. 
	xor a			;6b42	af 	. 
	inc a			;6b43	3c 	< 
	ret			;6b44	c9 	. 
	ld a,(hl)			;6b45	7e 	~ 
	or a			;6b46	b7 	. 
	ret z			;6b47	c8 	. 
	cp 00dh		;6b48	fe 0d 	. . 
	ret nz			;6b4a	c0 	. 
	push hl			;6b4b	e5 	. 
	push de			;6b4c	d5 	. 
	ld hl,(l2152h)		;6b4d	2a 52 21 	* R ! 
	ld d,h			;6b50	54 	T 
	ld e,l			;6b51	5d 	] 
	call 00f54h		;6b52	cd 54 0f 	. T . 
	call 01184h		;6b55	cd 84 11 	. . . 
	pop de			;6b58	d1 	. 
	pop hl			;6b59	e1 	. 
	jr nc,l6b5fh		;6b5a	30 03 	0 . 
	xor a			;6b5c	af 	. 
	scf			;6b5d	37 	7 
	ret			;6b5e	c9 	. 
l6b5fh:
	call sub_14ach		;6b5f	cd ac 14 	. . . 
	push hl			;6b62	e5 	. 
	push de			;6b63	d5 	. 
	call 00f54h		;6b64	cd 54 0f 	. T . 
	ld h,d			;6b67	62 	b 
	ld l,e			;6b68	6b 	k 
	pop de			;6b69	d1 	. 
	dec hl			;6b6a	2b 	+ 
	ld a,(hl)			;6b6b	7e 	~ 
	or a			;6b6c	b7 	. 
	jr z,l6b71h		;6b6d	28 02 	( . 
	ld (hl),020h		;6b6f	36 20 	6   
l6b71h:
	ex (sp),hl			;6b71	e3 	. 
	call sub_13deh		;6b72	cd de 13 	. . . 
	ex (sp),hl			;6b75	e3 	. 
	ld a,(hl)			;6b76	7e 	~ 
	or a			;6b77	b7 	. 
	jr z,l6b7ch		;6b78	28 02 	( . 
	ld (hl),00dh		;6b7a	36 0d 	6 . 
l6b7ch:
	set 1,(ix+000h)		;6b7c	dd cb 00 ce 	. . . . 
	pop hl			;6b80	e1 	. 
	xor a			;6b81	af 	. 
	inc a			;6b82	3c 	< 
	ret			;6b83	c9 	. 
	or a			;6b84	b7 	. 
	sbc hl,de		;6b85	ed 52 	. R 
	jr nc,l6b90h		;6b87	30 07 	0 . 
	ld a,l			;6b89	7d 	} 
	cpl			;6b8a	2f 	/ 
	ld l,a			;6b8b	6f 	o 
	ld a,h			;6b8c	7c 	| 
	cpl			;6b8d	2f 	/ 
	ld h,a			;6b8e	67 	g 
	inc hl			;6b8f	23 	# 
l6b90h:
	ld a,(l2154h)		;6b90	3a 54 21 	: T ! 
	add a,l			;6b93	85 	. 
	ld l,a			;6b94	6f 	o 
	jr nc,l6b98h		;6b95	30 01 	0 . 
	inc h			;6b97	24 	$ 
l6b98h:
	push hl			;6b98	e5 	. 
	ld hl,(l2157h)		;6b99	2a 57 21 	* W ! 
	ld de,(l2154h+1)		;6b9c	ed 5b 55 21 	. [ U ! 
	sbc hl,de		;6ba0	ed 52 	. R 
	pop de			;6ba2	d1 	. 
	sbc hl,de		;6ba3	ed 52 	. R 
	ret			;6ba5	c9 	. 
	ld a,(l2154h)		;6ba6	3a 54 21 	: T ! 
	ld de,(l2154h+1)		;6ba9	ed 5b 55 21 	. [ U ! 
	add a,e			;6bad	83 	. 
	ld e,a			;6bae	5f 	_ 
	jr nc,l6bb2h		;6baf	30 01 	0 . 
	inc d			;6bb1	14 	. 
l6bb2h:
	ex de,hl			;6bb2	eb 	. 
	or a			;6bb3	b7 	. 
	sbc hl,de		;6bb4	ed 52 	. R 
	ld b,h			;6bb6	44 	D 
	ld c,l			;6bb7	4d 	M 
	ex de,hl			;6bb8	eb 	. 
	ld d,h			;6bb9	54 	T 
	ld e,l			;6bba	5d 	] 
	ret			;6bbb	c9 	. 
	push hl			;6bbc	e5 	. 
	ld hl,(l2154h+1)		;6bbd	2a 55 21 	* U ! 
l6bc0h:
	dec de			;6bc0	1b 	. 
	or a			;6bc1	b7 	. 
	sbc hl,de		;6bc2	ed 52 	. R 
	add hl,de			;6bc4	19 	. 
	jr z,l6bdbh		;6bc5	28 14 	( . 
	ld a,(de)			;6bc7	1a 	. 
	call sub_10f1h		;6bc8	cd f1 10 	. . . 
	jr c,l6bc0h		;6bcb	38 f3 	8 . 
l6bcdh:
	dec de			;6bcd	1b 	. 
	or a			;6bce	b7 	. 
	sbc hl,de		;6bcf	ed 52 	. R 
	add hl,de			;6bd1	19 	. 
	jr z,l6bdbh		;6bd2	28 07 	( . 
	ld a,(de)			;6bd4	1a 	. 
	call sub_10f1h		;6bd5	cd f1 10 	. . . 
	jr nc,l6bcdh		;6bd8	30 f3 	0 . 
	inc de			;6bda	13 	. 
l6bdbh:
	pop hl			;6bdb	e1 	. 
	ret			;6bdc	c9 	. 
l6bddh:
	inc bc			;6bdd	03 	. 
	ld a,(bc)			;6bde	0a 	. 
	or a			;6bdf	b7 	. 
	ret z			;6be0	c8 	. 
	cp 00dh		;6be1	fe 0d 	. . 
	ret z			;6be3	c8 	. 
	call sub_10f1h		;6be4	cd f1 10 	. . . 
	jr nc,l6bddh		;6be7	30 f4 	0 . 
l6be9h:
	inc bc			;6be9	03 	. 
	ld a,(bc)			;6bea	0a 	. 
	or a			;6beb	b7 	. 
	ret z			;6bec	c8 	. 
	cp 00dh		;6bed	fe 0d 	. . 
	ret z			;6bef	c8 	. 
	call sub_10f1h		;6bf0	cd f1 10 	. . . 
	jr c,l6be9h		;6bf3	38 f4 	8 . 
	ret			;6bf5	c9 	. 
	push hl			;6bf6	e5 	. 
	or a			;6bf7	b7 	. 
	sbc hl,de		;6bf8	ed 52 	. R 
	ld a,(l2154h)		;6bfa	3a 54 21 	: T ! 
	sub l			;6bfd	95 	. 
	ld (l2154h),a		;6bfe	32 54 21 	2 T ! 
	pop hl			;6c01	e1 	. 
	ret			;6c02	c9 	. 
	push hl			;6c03	e5 	. 
	push de			;6c04	d5 	. 
	ld de,l230fh		;6c05	11 0f 23 	. . # 
	call sub_2142h		;6c08	cd 42 21 	. B ! 
	ex de,hl			;6c0b	eb 	. 
	dec hl			;6c0c	2b 	+ 
	or a			;6c0d	b7 	. 
	sbc hl,de		;6c0e	ed 52 	. R 
	jr nc,l6c1ch		;6c10	30 0a 	0 . 
	ld hl,l2312h		;6c12	21 12 23 	! . # 
	call sub_2135h		;6c15	cd 35 21 	. 5 ! 
	or a			;6c18	b7 	. 
	sbc hl,de		;6c19	ed 52 	. R 
	ccf			;6c1b	3f 	? 
l6c1ch:
	pop de			;6c1c	d1 	. 
	pop hl			;6c1d	e1 	. 
	jp c,l12c4h		;6c1e	da c4 12 	. . . 
	ld a,(l230fh)		;6c21	3a 0f 23 	: . # 
	inc a			;6c24	3c 	< 
	scf			;6c25	37 	7 
	jp z,l12bch		;6c26	ca bc 12 	. . . 
	ld a,(l2312h)		;6c29	3a 12 23 	: . # 
	inc a			;6c2c	3c 	< 
	scf			;6c2d	37 	7 
	jp z,l12c0h		;6c2e	ca c0 12 	. . . 
	push hl			;6c31	e5 	. 
	push de			;6c32	d5 	. 
	push bc			;6c33	c5 	. 
	call 01243h		;6c34	cd 43 12 	. C . 
	or a			;6c37	b7 	. 
	ex de,hl			;6c38	eb 	. 
	sbc hl,de		;6c39	ed 52 	. R 
	pop bc			;6c3b	c1 	. 
	pop de			;6c3c	d1 	. 
	pop hl			;6c3d	e1 	. 
	ccf			;6c3e	3f 	? 
	jp c,l12c8h		;6c3f	da c8 12 	. . . 
	ret			;6c42	c9 	. 
	ld de,l230fh		;6c43	11 0f 23 	. . # 
	call sub_2142h		;6c46	cd 42 21 	. B ! 
	ld hl,l2312h		;6c49	21 12 23 	! . # 
	call sub_2135h		;6c4c	cd 35 21 	. 5 ! 
	or a			;6c4f	b7 	. 
l6c50h:
	sbc hl,de		;6c50	ed 52 	. R 
	ld b,h			;6c52	44 	D 
	ld c,l			;6c53	4d 	M 
	inc bc			;6c54	03 	. 
	add hl,de			;6c55	19 	. 
	ret			;6c56	c9 	. 
	ld a,b			;6c57	78 	x 
	cpl			;6c58	2f 	/ 
	ld b,a			;6c59	47 	G 
	ld a,c			;6c5a	79 	y 
	cpl			;6c5b	2f 	/ 
	ld c,a			;6c5c	4f 	O 
	inc bc			;6c5d	03 	. 
	ld (l230ah),bc		;6c5e	ed 43 0a 23 	. C . # 
	ld (02308h),hl		;6c62	22 08 23 	" . # 
	push hl			;6c65	e5 	. 
	push de			;6c66	d5 	. 
	push bc			;6c67	c5 	. 
	ld d,h			;6c68	54 	T 
	ld e,l			;6c69	5d 	] 
	inc de			;6c6a	13 	. 
	call 00f63h		;6c6b	cd 63 0f 	. c . 
	ld a,0ffh		;6c6e	3e ff 	> . 
	ld hl,l230ch		;6c70	21 0c 23 	! . # 
	ld b,003h		;6c73	06 03 	. . 
l6c75h:
	push bc			;6c75	c5 	. 
	inc hl			;6c76	23 	# 
	ld c,(hl)			;6c77	4e 	N 
	inc hl			;6c78	23 	# 
	ld b,(hl)			;6c79	46 	F 
	dec hl			;6c7a	2b 	+ 
	dec hl			;6c7b	2b 	+ 
	ex de,hl			;6c7c	eb 	. 
	or a			;6c7d	b7 	. 
	sbc hl,bc		;6c7e	ed 42 	. B 
	add hl,bc			;6c80	09 	. 
	ex de,hl			;6c81	eb 	. 
	jr nz,l6c85h		;6c82	20 01 	  . 
	ld (hl),a			;6c84	77 	w 
l6c85h:
	inc hl			;6c85	23 	# 
	inc hl			;6c86	23 	# 
	inc hl			;6c87	23 	# 
	pop bc			;6c88	c1 	. 
	djnz l6c75h		;6c89	10 ea 	. . 
	ld b,003h		;6c8b	06 03 	. . 
	ld hl,l230ch		;6c8d	21 0c 23 	! . # 
	or a			;6c90	b7 	. 
l6c91h:
	inc hl			;6c91	23 	# 
	ld e,(hl)			;6c92	5e 	^ 
	inc hl			;6c93	23 	# 
	ld d,(hl)			;6c94	56 	V 
	push hl			;6c95	e5 	. 
	ld hl,(02308h)		;6c96	2a 08 23 	* . # 
	sbc hl,de		;6c99	ed 52 	. R 
	jr z,l6c9fh		;6c9b	28 02 	( . 
	jr nc,l6ca4h		;6c9d	30 05 	0 . 
l6c9fh:
	ld hl,(l230ah)		;6c9f	2a 0a 23 	* . # 
	add hl,de			;6ca2	19 	. 
	ex de,hl			;6ca3	eb 	. 
l6ca4h:
	pop hl			;6ca4	e1 	. 
	ld (hl),d			;6ca5	72 	r 
	dec hl			;6ca6	2b 	+ 
	ld (hl),e			;6ca7	73 	s 
	inc hl			;6ca8	23 	# 
	inc hl			;6ca9	23 	# 
	djnz l6c91h		;6caa	10 e5 	. . 
	pop bc			;6cac	c1 	. 
	pop de			;6cad	d1 	. 
	pop hl			;6cae	e1 	. 
	ret			;6caf	c9 	. 
	ld a,001h		;6cb0	3e 01 	> . 
	jr l6ce2h		;6cb2	18 2e 	. . 
	ld a,002h		;6cb4	3e 02 	> . 
	jr l6ce2h		;6cb6	18 2a 	. * 
	ld a,003h		;6cb8	3e 03 	> . 
	jr l6ce2h		;6cba	18 26 	. & 
	ld a,004h		;6cbc	3e 04 	> . 
	jr l6ce2h		;6cbe	18 22 	. " 
	ld a,005h		;6cc0	3e 05 	> . 
	jr l6ce2h		;6cc2	18 1e 	. . 
	ld a,006h		;6cc4	3e 06 	> . 
	jr l6ce2h		;6cc6	18 1a 	. . 
	ld a,007h		;6cc8	3e 07 	> . 
	jr l6ce2h		;6cca	18 16 	. . 
	ld a,008h		;6ccc	3e 08 	> . 
	jr l6ce2h		;6cce	18 12 	. . 
	ld a,009h		;6cd0	3e 09 	> . 
	jr l6ce2h		;6cd2	18 0e 	. . 
	ld a,00ah		;6cd4	3e 0a 	> . 
	jr l6ce2h		;6cd6	18 0a 	. . 
	ld a,00bh		;6cd8	3e 0b 	> . 
	jr l6ce2h		;6cda	18 06 	. . 
	ld a,00ch		;6cdc	3e 0c 	> . 
	jr l6ce2h		;6cde	18 02 	. . 
	ld a,00dh		;6ce0	3e 0d 	> . 
l6ce2h:
	ld (l2265h),a		;6ce2	32 65 22 	2 e " 
	ret			;6ce5	c9 	. 
	ld (bc),a			;6ce6	02 	. 
	inc de			;6ce7	13 	. 
	inc bc			;6ce8	03 	. 
	inc de			;6ce9	13 	. 
	ld de,02213h		;6cea	11 13 22 	. . " 
	inc de			;6ced	13 	. 
	inc (hl)			;6cee	34 	4 
	inc de			;6cef	13 	. 
	ld c,c			;6cf0	49 	I 
	inc de			;6cf1	13 	. 
	ld e,h			;6cf2	5c 	\ 
	inc de			;6cf3	13 	. 
	ld (hl),b			;6cf4	70 	p 
	inc de			;6cf5	13 	. 
	add a,l			;6cf6	85 	. 
	inc de			;6cf7	13 	. 
	sub d			;6cf8	92 	. 
	inc de			;6cf9	13 	. 
	and b			;6cfa	a0 	. 
	inc de			;6cfb	13 	. 
	xor h			;6cfc	ac 	. 
	inc de			;6cfd	13 	. 
	cp a			;6cfe	bf 	. 
	inc de			;6cff	13 	. 
	call nc,sub_0011h+2		;6d00	d4 13 00 	. . . 
	ld c,a			;6d03	4f 	O 
	ld (hl),l			;6d04	75 	u 
	ld (hl),h			;6d05	74 	t 
	jr nz,l6d77h		;6d06	20 6f 	  o 
	ld h,(hl)			;6d08	66 	f 
	jr nz,l6d78h		;6d09	20 6d 	  m 
	ld h,l			;6d0b	65 	e 
	ld l,l			;6d0c	6d 	m 
	ld l,a			;6d0d	6f 	o 
	ld (hl),d			;6d0e	72 	r 
	ld a,c			;6d0f	79 	y 
	nop			;6d10	00 	. 
	ld c,h			;6d11	4c 	L 
	ld l,c			;6d12	69 	i 
	ld l,(hl)			;6d13	6e 	n 
	ld h,l			;6d14	65 	e 
	jr nz,l6d80h		;6d15	20 69 	  i 
	ld (hl),e			;6d17	73 	s 
	jr nz,l6d8eh		;6d18	20 74 	  t 
	ld l,a			;6d1a	6f 	o 
	ld l,a			;6d1b	6f 	o 
	jr nz,l6d8ah		;6d1c	20 6c 	  l 
	ld l,a			;6d1e	6f 	o 
	ld l,(hl)			;6d1f	6e 	n 
	ld h,a			;6d20	67 	g 
	nop			;6d21	00 	. 
	ld d,l			;6d22	55 	U 
	ld l,(hl)			;6d23	6e 	n 
	ld h,h			;6d24	64 	d 
	ld h,l			;6d25	65 	e 
	ld h,(hl)			;6d26	66 	f 
	ld l,c			;6d27	69 	i 
	ld l,(hl)			;6d28	6e 	n 
	ld h,l			;6d29	65 	e 
	ld h,h			;6d2a	64 	d 
	jr nz,l6d90h		;6d2b	20 63 	  c 
	ld l,a			;6d2d	6f 	o 
	ld l,l			;6d2e	6d 	m 
	ld l,l			;6d2f	6d 	m 
	ld h,c			;6d30	61 	a 
	ld l,(hl)			;6d31	6e 	n 
	ld h,h			;6d32	64 	d 
	nop			;6d33	00 	. 
	ld b,d			;6d34	42 	B 
	ld l,h			;6d35	6c 	l 
	ld l,a			;6d36	6f 	o 
	ld h,e			;6d37	63 	c 
	ld l,e			;6d38	6b 	k 
	jr nz,l6daeh		;6d39	20 73 	  s 
	ld (hl),h			;6d3b	74 	t 
	ld h,c			;6d3c	61 	a 
	ld (hl),d			;6d3d	72 	r 
	ld (hl),h			;6d3e	74 	t 
	jr nz,l6db6h		;6d3f	20 75 	  u 
	ld l,(hl)			;6d41	6e 	n 
	ld l,l			;6d42	6d 	m 
	ld h,c			;6d43	61 	a 
	ld (hl),d			;6d44	72 	r 
	ld l,e			;6d45	6b 	k 
	ld h,l			;6d46	65 	e 
	ld h,h			;6d47	64 	d 
	nop			;6d48	00 	. 
	ld b,d			;6d49	42 	B 
	ld l,h			;6d4a	6c 	l 
	ld l,a			;6d4b	6f 	o 
	ld h,e			;6d4c	63 	c 
	ld l,e			;6d4d	6b 	k 
	jr nz,$+103		;6d4e	20 65 	  e 
	ld l,(hl)			;6d50	6e 	n 
	ld h,h			;6d51	64 	d 
	jr nz,l6dc9h		;6d52	20 75 	  u 
	ld l,(hl)			;6d54	6e 	n 
	ld l,l			;6d55	6d 	m 
	ld h,c			;6d56	61 	a 
	ld (hl),d			;6d57	72 	r 
	ld l,e			;6d58	6b 	k 
	ld h,l			;6d59	65 	e 
	ld h,h			;6d5a	64 	d 
	nop			;6d5b	00 	. 
	ld c,c			;6d5c	49 	I 
	ld l,(hl)			;6d5d	6e 	n 
	halt			;6d5e	76 	v 
	ld h,c			;6d5f	61 	a 
	ld l,h			;6d60	6c 	l 
	ld l,c			;6d61	69 	i 
	ld h,h			;6d62	64 	d 
	jr nz,l6dc9h		;6d63	20 64 	  d 
	ld h,l			;6d65	65 	e 
	ld (hl),e			;6d66	73 	s 
	ld (hl),h			;6d67	74 	t 
	ld l,c			;6d68	69 	i 
	ld l,(hl)			;6d69	6e 	n 
	ld h,c			;6d6a	61 	a 
	ld (hl),h			;6d6b	74 	t 
	ld l,c			;6d6c	69 	i 
	ld l,a			;6d6d	6f 	o 
	ld l,(hl)			;6d6e	6e 	n 
	nop			;6d6f	00 	. 
	ld b,d			;6d70	42 	B 
	ld l,h			;6d71	6c 	l 
	ld l,a			;6d72	6f 	o 
	ld h,e			;6d73	63 	c 
	ld l,e			;6d74	6b 	k 
	jr nz,l6de4h		;6d75	20 6d 	  m 
l6d77h:
	ld h,c			;6d77	61 	a 
l6d78h:
	ld (hl),d			;6d78	72 	r 
	ld l,e			;6d79	6b 	k 
	ld (hl),e			;6d7a	73 	s 
	jr nz,l6defh		;6d7b	20 72 	  r 
	ld h,l			;6d7d	65 	e 
	halt			;6d7e	76 	v 
	ld h,l			;6d7f	65 	e 
l6d80h:
	ld (hl),d			;6d80	72 	r 
	ld (hl),e			;6d81	73 	s 
	ld h,l			;6d82	65 	e 
	ld h,h			;6d83	64 	d 
	nop			;6d84	00 	. 
	ld c,(hl)			;6d85	4e 	N 
	ld l,a			;6d86	6f 	o 
	jr nz,$+117		;6d87	20 73 	  s 
	ld (hl),l			;6d89	75 	u 
l6d8ah:
	ld h,e			;6d8a	63 	c 
	ld l,b			;6d8b	68 	h 
	jr nz,l6dfah		;6d8c	20 6c 	  l 
l6d8eh:
	ld l,c			;6d8e	69 	i 
	ld l,(hl)			;6d8f	6e 	n 
l6d90h:
	ld h,l			;6d90	65 	e 
	nop			;6d91	00 	. 
	ld b,d			;6d92	42 	B 
	ld l,h			;6d93	6c 	l 
	ld l,a			;6d94	6f 	o 
	ld h,e			;6d95	63 	c 
	ld l,e			;6d96	6b 	k 
	jr nz,l6e0dh		;6d97	20 74 	  t 
	ld l,a			;6d99	6f 	o 
	ld l,a			;6d9a	6f 	o 
	jr nz,l6dffh		;6d9b	20 62 	  b 
	ld l,c			;6d9d	69 	i 
	ld h,a			;6d9e	67 	g 
	nop			;6d9f	00 	. 
	ld c,l			;6da0	4d 	M 
	ld h,c			;6da1	61 	a 
	ld (hl),d			;6da2	72 	r 
	ld l,e			;6da3	6b 	k 
	ld h,l			;6da4	65 	e 
	ld (hl),d			;6da5	72 	r 
	jr nz,l6e14h		;6da6	20 6c 	  l 
	ld l,a			;6da8	6f 	o 
	ld (hl),e			;6da9	73 	s 
	ld (hl),h			;6daa	74 	t 
	nop			;6dab	00 	. 
	ld c,(hl)			;6dac	4e 	N 
	ld l,a			;6dad	6f 	o 
l6daeh:
	jr nz,$+100		;6dae	20 62 	  b 
	ld l,h			;6db0	6c 	l 
	ld l,a			;6db1	6f 	o 
	ld h,e			;6db2	63 	c 
	ld l,e			;6db3	6b 	k 
	jr nz,l6e1fh		;6db4	20 69 	  i 
l6db6h:
	ld l,(hl)			;6db6	6e 	n 
	jr nz,l6e1bh		;6db7	20 62 	  b 
	ld (hl),l			;6db9	75 	u 
	ld h,(hl)			;6dba	66 	f 
	ld h,(hl)			;6dbb	66 	f 
	ld h,l			;6dbc	65 	e 
	ld (hl),d			;6dbd	72 	r 
	nop			;6dbe	00 	. 
	ld c,(hl)			;6dbf	4e 	N 
	ld l,a			;6dc0	6f 	o 
	jr nz,l6e29h		;6dc1	20 66 	  f 
	ld l,c			;6dc3	69 	i 
	ld l,h			;6dc4	6c 	l 
	ld h,l			;6dc5	65 	e 
	cpl			;6dc6	2f 	/ 
	ld b,d			;6dc7	42 	B 
	ld h,c			;6dc8	61 	a 
l6dc9h:
	ld h,h			;6dc9	64 	d 
	jr nz,$+104		;6dca	20 66 	  f 
	ld l,c			;6dcc	69 	i 
	ld l,h			;6dcd	6c 	l 
	ld h,l			;6dce	65 	e 
	ld l,(hl)			;6dcf	6e 	n 
	ld h,c			;6dd0	61 	a 
	ld l,l			;6dd1	6d 	m 
	ld h,l			;6dd2	65 	e 
	nop			;6dd3	00 	. 
	ld b,h			;6dd4	44 	D 
	ld l,c			;6dd5	69 	i 
	ld (hl),e			;6dd6	73 	s 
	ld h,e			;6dd7	63 	c 
	jr nz,l6e40h		;6dd8	20 66 	  f 
	ld (hl),l			;6dda	75 	u 
	ld l,h			;6ddb	6c 	l 
	ld l,h			;6ddc	6c 	l 
	nop			;6ddd	00 	. 
l6ddeh:
	or a			;6dde	b7 	. 
	bit 6,(ix+000h)		;6ddf	dd cb 00 76 	. . . v 
	ret nz			;6de3	c0 	. 
l6de4h:
	push hl			;6de4	e5 	. 
	push de			;6de5	d5 	. 
	call 00f54h		;6de6	cd 54 0f 	. T . 
	pop hl			;6de9	e1 	. 
	push hl			;6dea	e5 	. 
	ex de,hl			;6deb	eb 	. 
	or a			;6dec	b7 	. 
	sbc hl,de		;6ded	ed 52 	. R 
l6defh:
	push hl			;6def	e5 	. 
	ld hl,(l2157h)		;6df0	2a 57 21 	* W ! 
	ld de,(l2154h+1)		;6df3	ed 5b 55 21 	. [ U ! 
	or a			;6df7	b7 	. 
	sbc hl,de		;6df8	ed 52 	. R 
l6dfah:
	pop de			;6dfa	d1 	. 
	sbc hl,de		;6dfb	ed 52 	. R 
	jr nc,l6e06h		;6dfd	30 07 	0 . 
l6dffh:
	pop de			;6dff	d1 	. 
	pop hl			;6e00	e1 	. 
	ex (sp),hl			;6e01	e3 	. 
	pop hl			;6e02	e1 	. 
	jp 012b4h		;6e03	c3 b4 12 	. . . 
l6e06h:
	ld de,(l2302h)		;6e06	ed 5b 02 23 	. [ . # 
	ld hl,(02304h)		;6e0a	2a 04 23 	* . # 
l6e0dh:
	or a			;6e0d	b7 	. 
	sbc hl,de		;6e0e	ed 52 	. R 
	ld de,(l2154h+1)		;6e10	ed 5b 55 21 	. [ U ! 
l6e14h:
	add hl,de			;6e14	19 	. 
	ld de,(l2157h)		;6e15	ed 5b 57 21 	. [ W ! 
	sbc hl,de		;6e19	ed 52 	. R 
l6e1bh:
	pop de			;6e1b	d1 	. 
	pop hl			;6e1c	e1 	. 
	jr nc,l6e37h		;6e1d	30 18 	0 . 
l6e1fh:
	bit 2,(ix+000h)		;6e1f	dd cb 00 56 	. . . V 
	ret z			;6e23	c8 	. 
	call sub_1b67h		;6e24	cd 67 1b 	. g . 
	scf			;6e27	37 	7 
	ret nz			;6e28	c0 	. 
l6e29h:
	res 2,(ix+000h)		;6e29	dd cb 00 96 	. . . . 
	push hl			;6e2d	e5 	. 
	ld hl,(0225ch)		;6e2e	2a 5c 22 	* \ " 
	ld (02304h),hl		;6e31	22 04 23 	" . # 
	pop hl			;6e34	e1 	. 
	jr l6ddeh		;6e35	18 a7 	. . 
l6e37h:
	push bc			;6e37	c5 	. 
	ld bc,l0000h		;6e38	01 00 00 	. . . 
	call sub_125eh		;6e3b	cd 5e 12 	. ^ . 
	pop bc			;6e3e	c1 	. 
	or a			;6e3f	b7 	. 
l6e40h:
	sbc hl,de		;6e40	ed 52 	. R 
	push hl			;6e42	e5 	. 
	set 6,(ix+000h)		;6e43	dd cb 00 f6 	. . . . 
	ld (l214fh+1),de		;6e47	ed 53 50 21 	. S P ! 
	push de			;6e4b	d5 	. 
	call 00f54h		;6e4c	cd 54 0f 	. T . 
	ld (l2152h),de		;6e4f	ed 53 52 21 	. S R ! 
	pop hl			;6e53	e1 	. 
	ex de,hl			;6e54	eb 	. 
	or a			;6e55	b7 	. 
	sbc hl,de		;6e56	ed 52 	. R 
	ld a,l			;6e58	7d 	} 
	ld (l2154h),a		;6e59	32 54 21 	2 T ! 
	pop hl			;6e5c	e1 	. 
	ld a,l			;6e5d	7d 	} 
	ld hl,(l2154h+1)		;6e5e	2a 55 21 	* U ! 
	push hl			;6e61	e5 	. 
	add a,l			;6e62	85 	. 
	ld l,a			;6e63	6f 	o 
	jr nc,l6e67h		;6e64	30 01 	0 . 
	inc h			;6e66	24 	$ 
l6e67h:
	push hl			;6e67	e5 	. 
	push bc			;6e68	c5 	. 
	ld hl,(l214fh+1)		;6e69	2a 50 21 	* P ! 
	ld de,(l2154h+1)		;6e6c	ed 5b 55 21 	. [ U ! 
	ld a,(l2154h)		;6e70	3a 54 21 	: T ! 
	ld b,000h		;6e73	06 00 	. . 
	ld c,a			;6e75	4f 	O 
	ldir		;6e76	ed b0 	. . 
	pop bc			;6e78	c1 	. 
	pop hl			;6e79	e1 	. 
	pop de			;6e7a	d1 	. 
	or a			;6e7b	b7 	. 
	ret			;6e7c	c9 	. 
	push de			;6e7d	d5 	. 
	push bc			;6e7e	c5 	. 
	push hl			;6e7f	e5 	. 
	ld a,(l2154h)		;6e80	3a 54 21 	: T ! 
	ld hl,(l2154h+1)		;6e83	2a 55 21 	* U ! 
	ld b,000h		;6e86	06 00 	. . 
	ld c,a			;6e88	4f 	O 
	add hl,bc			;6e89	09 	. 
	ld de,(l2157h)		;6e8a	ed 5b 57 21 	. [ W ! 
	sbc hl,de		;6e8e	ed 52 	. R 
	scf			;6e90	37 	7 
	jr z,l6ea8h		;6e91	28 15 	( . 
	inc a			;6e93	3c 	< 
	ld (l2154h),a		;6e94	32 54 21 	2 T ! 
	ld hl,(l2157h)		;6e97	2a 57 21 	* W ! 
	pop de			;6e9a	d1 	. 
	push de			;6e9b	d5 	. 
	or a			;6e9c	b7 	. 
	sbc hl,de		;6e9d	ed 52 	. R 
	ld b,h			;6e9f	44 	D 
	ld c,l			;6ea0	4d 	M 
	add hl,de			;6ea1	19 	. 
	ld d,h			;6ea2	54 	T 
	ld e,l			;6ea3	5d 	] 
	dec hl			;6ea4	2b 	+ 
	lddr		;6ea5	ed b8 	. . 
	xor a			;6ea7	af 	. 
l6ea8h:
	pop hl			;6ea8	e1 	. 
	pop bc			;6ea9	c1 	. 
	pop de			;6eaa	d1 	. 
	ret			;6eab	c9 	. 
	bit 6,(ix+000h)		;6eac	dd cb 00 76 	. . . v 
	ret z			;6eb0	c8 	. 
	push bc			;6eb1	c5 	. 
	or a			;6eb2	b7 	. 
	sbc hl,de		;6eb3	ed 52 	. R 
	push hl			;6eb5	e5 	. 
	res 6,(ix+000h)		;6eb6	dd cb 00 b6 	. . . . 
	ld hl,(l2152h)		;6eba	2a 52 21 	* R ! 
	ld de,(l214fh+1)		;6ebd	ed 5b 50 21 	. [ P ! 
	sbc hl,de		;6ec1	ed 52 	. R 
	ld a,(l2154h)		;6ec3	3a 54 21 	: T ! 
	push af			;6ec6	f5 	. 
	ld d,000h		;6ec7	16 00 	. . 
	ld e,a			;6ec9	5f 	_ 
	ex de,hl			;6eca	eb 	. 
	sbc hl,de		;6ecb	ed 52 	. R 
	jr z,l6ed5h		;6ecd	28 06 	( . 
	call nc,sub_14ech		;6ecf	d4 ec 14 	. . . 
	call c,01514h		;6ed2	dc 14 15 	. . . 
l6ed5h:
	pop af			;6ed5	f1 	. 
	ld b,000h		;6ed6	06 00 	. . 
	ld c,a			;6ed8	4f 	O 
	ld hl,(l2154h+1)		;6ed9	2a 55 21 	* U ! 
	ld de,(l214fh+1)		;6edc	ed 5b 50 21 	. [ P ! 
	push de			;6ee0	d5 	. 
	ldir		;6ee1	ed b0 	. . 
	pop de			;6ee3	d1 	. 
	pop hl			;6ee4	e1 	. 
	add hl,de			;6ee5	19 	. 
	pop bc			;6ee6	c1 	. 
	set 0,(ix+002h)		;6ee7	dd cb 02 c6 	. . . . 
	ret			;6eeb	c9 	. 
	ld de,(l2302h)		;6eec	ed 5b 02 23 	. [ . # 
	push de			;6ef0	d5 	. 
	add hl,de			;6ef1	19 	. 
	ld d,h			;6ef2	54 	T 
	ld e,l			;6ef3	5d 	] 
	ld (l2302h),de		;6ef4	ed 53 02 23 	. S . # 
	pop hl			;6ef8	e1 	. 
	push hl			;6ef9	e5 	. 
	inc hl			;6efa	23 	# 
	ld bc,(l2152h)		;6efb	ed 4b 52 21 	. K R ! 
	sbc hl,bc		;6eff	ed 42 	. B 
	ld b,h			;6f01	44 	D 
	ld c,l			;6f02	4d 	M 
	pop hl			;6f03	e1 	. 
	ld a,b			;6f04	78 	x 
	or c			;6f05	b1 	. 
	ret z			;6f06	c8 	. 
	lddr		;6f07	ed b8 	. . 
	sbc hl,de		;6f09	ed 52 	. R 
	ld b,h			;6f0b	44 	D 
	ld c,l			;6f0c	4d 	M 
	add hl,de			;6f0d	19 	. 
	inc hl			;6f0e	23 	# 
	call sub_1257h		;6f0f	cd 57 12 	. W . 
	or a			;6f12	b7 	. 
	ret			;6f13	c9 	. 
	ld de,(l2152h)		;6f14	ed 5b 52 21 	. [ R ! 
	push de			;6f18	d5 	. 
	add hl,de			;6f19	19 	. 
	ld d,h			;6f1a	54 	T 
	ld e,l			;6f1b	5d 	] 
	pop bc			;6f1c	c1 	. 
	push bc			;6f1d	c5 	. 
	ld hl,(l2302h)		;6f1e	2a 02 23 	* . # 
	inc hl			;6f21	23 	# 
	or a			;6f22	b7 	. 
	sbc hl,bc		;6f23	ed 42 	. B 
	ld b,h			;6f25	44 	D 
	ld c,l			;6f26	4d 	M 
	pop hl			;6f27	e1 	. 
	ld a,b			;6f28	78 	x 
	or c			;6f29	b1 	. 
	jr z,l6f37h		;6f2a	28 0b 	( . 
	push hl			;6f2c	e5 	. 
	ldir		;6f2d	ed b0 	. . 
	sbc hl,de		;6f2f	ed 52 	. R 
	ld b,h			;6f31	44 	D 
	ld c,l			;6f32	4d 	M 
	pop hl			;6f33	e1 	. 
	call sub_1257h		;6f34	cd 57 12 	. W . 
l6f37h:
	dec de			;6f37	1b 	. 
	ld (l2302h),de		;6f38	ed 53 02 23 	. S . # 
	ret			;6f3c	c9 	. 
	set 5,(ix+000h)		;6f3d	dd cb 00 ee 	. . . . 
	ld a,009h		;6f41	3e 09 	> . 
	jp sub_0e89h		;6f43	c3 89 0e 	. . . 
	call sub_0f92h		;6f46	cd 92 0f 	. . . 
	ret z			;6f49	c8 	. 
	dec hl			;6f4a	2b 	+ 
	call 01044h		;6f4b	cd 44 10 	. D . 
	jr l6fbah		;6f4e	18 6a 	. j 
l6f50h:
	push hl			;6f50	e5 	. 
	ld hl,00e10h		;6f51	21 10 0e 	! . . 
	ld a,04dh		;6f54	3e 4d 	> M 
	cp (hl)			;6f56	be 	. 
	nop			;6f57	00 	. 
	nop			;6f58	00 	. 
	nop			;6f59	00 	. 
	pop hl			;6f5a	e1 	. 
	ld a,(hl)			;6f5b	7e 	~ 
	or a			;6f5c	b7 	. 
	ret z			;6f5d	c8 	. 
	inc hl			;6f5e	23 	# 
	call 0104dh		;6f5f	cd 4d 10 	. M . 
	jr l6fbah		;6f62	18 56 	. V 
	dec hl			;6f64	2b 	+ 
	ld a,(hl)			;6f65	7e 	~ 
	cp 00dh		;6f66	fe 0d 	. . 
	inc hl			;6f68	23 	# 
	jr nz,l6f71h		;6f69	20 06 	  . 
l6f6bh:
	dec hl			;6f6b	2b 	+ 
	call sub_1056h		;6f6c	cd 56 10 	. V . 
	jr l6f8eh		;6f6f	18 1d 	. . 
l6f71h:
	call sub_0f92h		;6f71	cd 92 0f 	. . . 
	jr z,l6f8eh		;6f74	28 18 	( . 
	dec hl			;6f76	2b 	+ 
	ld a,(hl)			;6f77	7e 	~ 
	cp 00dh		;6f78	fe 0d 	. . 
	jr z,l6f8dh		;6f7a	28 11 	( . 
	call sub_10f1h		;6f7c	cd f1 10 	. . . 
	jr c,l6f71h		;6f7f	38 f0 	8 . 
l6f81h:
	call sub_0f92h		;6f81	cd 92 0f 	. . . 
	jr z,l6f8eh		;6f84	28 08 	( . 
	dec hl			;6f86	2b 	+ 
	ld a,(hl)			;6f87	7e 	~ 
	call sub_10f1h		;6f88	cd f1 10 	. . . 
	jr nc,l6f81h		;6f8b	30 f4 	0 . 
l6f8dh:
	inc hl			;6f8d	23 	# 
l6f8eh:
	jr l6fbah		;6f8e	18 2a 	. * 
	ld a,(hl)			;6f90	7e 	~ 
	inc hl			;6f91	23 	# 
	or a			;6f92	b7 	. 
	ret z			;6f93	c8 	. 
	cp 00dh		;6f94	fe 0d 	. . 
	ret			;6f96	c9 	. 
	ld a,(hl)			;6f97	7e 	~ 
	or a			;6f98	b7 	. 
	jr z,l6fbah		;6f99	28 1f 	( . 
	cp 00dh		;6f9b	fe 0d 	. . 
	jr nz,l6fa5h		;6f9d	20 06 	  . 
	inc hl			;6f9f	23 	# 
	call sub_1069h		;6fa0	cd 69 10 	. i . 
	jr l6fbah		;6fa3	18 15 	. . 
l6fa5h:
	call 01590h		;6fa5	cd 90 15 	. . . 
	jr z,l6fb9h		;6fa8	28 0f 	( . 
	call sub_10f1h		;6faa	cd f1 10 	. . . 
	jr nc,l6fa5h		;6fad	30 f6 	0 . 
l6fafh:
	call 01590h		;6faf	cd 90 15 	. . . 
	jr z,l6fb9h		;6fb2	28 05 	( . 
	call sub_10f1h		;6fb4	cd f1 10 	. . . 
	jr c,l6fafh		;6fb7	38 f6 	8 . 
l6fb9h:
	dec hl			;6fb9	2b 	+ 
l6fbah:
	jp l0f9dh		;6fba	c3 9d 0f 	. . . 
	call sub_0f92h		;6fbd	cd 92 0f 	. . . 
	ret z			;6fc0	c8 	. 
l6fc1h:
	dec hl			;6fc1	2b 	+ 
	ld a,(hl)			;6fc2	7e 	~ 
	cp 00dh		;6fc3	fe 0d 	. . 
	jr z,l6fcfh		;6fc5	28 08 	( . 
	call l0f9dh		;6fc7	cd 9d 0f 	. . . 
	call 00f2fh		;6fca	cd 2f 0f 	. / . 
	jr nz,l6fc1h		;6fcd	20 f2 	  . 
l6fcfh:
	call 01044h		;6fcf	cd 44 10 	. D . 
	jr l6fbah		;6fd2	18 e6 	. . 
	ld a,(hl)			;6fd4	7e 	~ 
	or a			;6fd5	b7 	. 
	ret z			;6fd6	c8 	. 
	cp 00dh		;6fd7	fe 0d 	. . 
	inc hl			;6fd9	23 	# 
	jr z,l6feeh		;6fda	28 12 	( . 
	dec hl			;6fdc	2b 	+ 
l6fddh:
	inc hl			;6fdd	23 	# 
	ld a,(hl)			;6fde	7e 	~ 
	cp 00dh		;6fdf	fe 0d 	. . 
	jr z,l6feeh		;6fe1	28 0b 	( . 
	or a			;6fe3	b7 	. 
	jr z,l6feeh		;6fe4	28 08 	( . 
	call l0f9dh		;6fe6	cd 9d 0f 	. . . 
	call 00f2fh		;6fe9	cd 2f 0f 	. / . 
	jr nz,l6fddh		;6fec	20 ef 	  . 
l6feeh:
	call 0104dh		;6fee	cd 4d 10 	. M . 
	jr l6fbah		;6ff1	18 c7 	. . 
	ld h,d			;6ff3	62 	b 
	ld l,e			;6ff4	6b 	k 
	jr l6fbah		;6ff5	18 c3 	. . 
	push de			;6ff7	d5 	. 
	call 00f54h		;6ff8	cd 54 0f 	. T . 
	dec de			;6ffb	1b 	. 
	ld h,d			;6ffc	62 	b 
	ld l,e			;6ffd	6b 	k 
	pop de			;6ffe	d1 	. 
	jr l6fbah		;6fff	18 b9 	. . 
	push hl			;7001	e5 	. 
	ld h,d			;7002	62 	b 
	ld l,e			;7003	6b 	k 
	call sub_0f92h		;7004	cd 92 0f 	. . . 
	pop hl			;7007	e1 	. 
	ret z			;7008	c8 	. 
	call sub_1056h		;7009	cd 56 10 	. V . 
l700ch:
	jp sub_0fe4h+2		;700c	c3 e6 0f 	. . . 
	push de			;700f	d5 	. 
	call 00f54h		;7010	cd 54 0f 	. T . 
	pop de			;7013	d1 	. 
	ret c			;7014	d8 	. 
	call sub_1069h		;7015	cd 69 10 	. i . 
	jr l700ch		;7018	18 f2 	. . 
	ld hl,(l2306h)		;701a	2a 06 23 	* . # 
	ld d,h			;701d	54 	T 
	ld e,l			;701e	5d 	] 
	ld a,(l225fh+1)		;701f	3a 60 22 	: ` " 
	ld c,a			;7022	4f 	O 
	ld a,b			;7023	78 	x 
	sub c			;7024	91 	. 
	or a			;7025	b7 	. 
	jr z,l702eh		;7026	28 06 	( . 
l7028h:
	call sub_1091h		;7028	cd 91 10 	. . . 
	dec a			;702b	3d 	= 
	jr nz,l7028h		;702c	20 fa 	  . 
l702eh:
	ld a,(l225fh+1)		;702e	3a 60 22 	: ` " 
	ld b,a			;7031	47 	G 
	jr l7074h		;7032	18 40 	. @ 
	ld (07600h),hl		;7034	22 00 76 	" . v 
	jr $-2		;7037	18 fc 	. . 
	ld a,(l225fh+1)		;7039	3a 60 22 	: ` " 
	cp 058h		;703c	fe 58 	. X 
	nop			;703e	00 	. 
	nop			;703f	00 	. 
	ld a,(l225fh+1)		;7040	3a 60 22 	: ` " 
	ld c,a			;7043	4f 	O 
	ld a,b			;7044	78 	x 
	sub c			;7045	91 	. 
	or a			;7046	b7 	. 
	jr z,l704fh		;7047	28 06 	( . 
l7049h:
	call sub_1091h		;7049	cd 91 10 	. . . 
	dec a			;704c	3d 	= 
	jr nz,l7049h		;704d	20 fa 	  . 
l704fh:
	ld a,(l225fh+1)		;704f	3a 60 22 	: ` " 
	ld b,a			;7052	47 	G 
	ld de,(l2306h)		;7053	ed 5b 06 23 	. [ . # 
l7057h:
	call 00f54h		;7057	cd 54 0f 	. T . 
	push af			;705a	f5 	. 
	scf			;705b	37 	7 
	call sub_1091h		;705c	cd 91 10 	. . . 
	pop af			;705f	f1 	. 
	inc b			;7060	04 	. 
	jr c,l7069h		;7061	38 06 	8 . 
	ld a,(l225fh+2)		;7063	3a 61 22 	: a " 
	cp b			;7066	b8 	. 
	jr nc,l7057h		;7067	30 ee 	0 . 
l7069h:
	dec b			;7069	05 	. 
	ld h,d			;706a	62 	b 
	ld l,e			;706b	6b 	k 
	dec hl			;706c	2b 	+ 
	call 00f63h		;706d	cd 63 0f 	. c . 
	or a			;7070	b7 	. 
	call sub_1091h		;7071	cd 91 10 	. . . 
l7074h:
	jp l0f9dh		;7074	c3 9d 0f 	. . . 
	push hl			;7077	e5 	. 
	ld hl,(l2306h)		;7078	2a 06 23 	* . # 
	call sub_0f92h		;707b	cd 92 0f 	. . . 
	pop hl			;707e	e1 	. 
	ret z			;707f	c8 	. 
	ld a,(l23cah)		;7080	3a ca 23 	: . # 
	ld l,a			;7083	6f 	o 
	dec l			;7084	2d 	- 
	dec l			;7085	2d 	- 
	dec l			;7086	2d 	- 
l7087h:
	call 00f63h		;7087	cd 63 0f 	. c . 
	call sub_0f76h		;708a	cd 76 0f 	. v . 
	push af			;708d	f5 	. 
	or a			;708e	b7 	. 
	call sub_1091h		;708f	cd 91 10 	. . . 
	pop af			;7092	f1 	. 
	jr c,l709bh		;7093	38 06 	8 . 
	call sub_0fe4h+2		;7095	cd e6 0f 	. . . 
	jp l109fh		;7098	c3 9f 10 	. . . 
l709bh:
	dec l			;709b	2d 	- 
	jr nz,l7087h		;709c	20 e9 	  . 
l709eh:
	set 1,(ix+000h)		;709e	dd cb 00 ce 	. . . . 
	jp sub_0fe4h+2		;70a2	c3 e6 0f 	. . . 
	set 1,(ix+000h)		;70a5	dd cb 00 ce 	. . . . 
	ld a,(l23cah)		;70a9	3a ca 23 	: . # 
	ld l,a			;70ac	6f 	o 
	dec l			;70ad	2d 	- 
	dec l			;70ae	2d 	- 
	dec l			;70af	2d 	- 
l70b0h:
	call sub_0f84h		;70b0	cd 84 0f 	. . . 
	call 00f54h		;70b3	cd 54 0f 	. T . 
	jr nc,l70c1h		;70b6	30 09 	0 . 
	call 00f63h		;70b8	cd 63 0f 	. c . 
	call sub_0fe4h+2		;70bb	cd e6 0f 	. . . 
	jp l109fh		;70be	c3 9f 10 	. . . 
l70c1h:
	scf			;70c1	37 	7 
	call sub_1091h		;70c2	cd 91 10 	. . . 
	dec l			;70c5	2d 	- 
	jr nz,l70b0h		;70c6	20 e8 	  . 
	jr l709eh		;70c8	18 d4 	. . 
	call sub_0f92h		;70ca	cd 92 0f 	. . . 
	ret z			;70cd	c8 	. 
	set 1,(ix+000h)		;70ce	dd cb 00 ce 	. . . . 
	ld hl,l0001h		;70d2	21 01 00 	! . . 
	ld (l22fbh),hl		;70d5	22 fb 22 	" . " 
	ld hl,(023c3h)		;70d8	2a c3 23 	* . # 
	ld d,h			;70db	54 	T 
	ld e,l			;70dc	5d 	] 
	ld (l2306h),hl		;70dd	22 06 23 	" . # 
	ld a,(l225fh+1)		;70e0	3a 60 22 	: ` " 
	ld b,a			;70e3	47 	G 
	jp l0f9dh		;70e4	c3 9d 0f 	. . . 
	ld bc,0ffffh		;70e7	01 ff ff 	. . . 
l70eah:
	inc bc			;70ea	03 	. 
	call 00f54h		;70eb	cd 54 0f 	. T . 
	jr nc,l70eah		;70ee	30 fa 	0 . 
	ld hl,(l22fbh)		;70f0	2a fb 22 	* . " 
	add hl,bc			;70f3	09 	. 
	ld (l22fbh),hl		;70f4	22 fb 22 	" . " 
	ld h,d			;70f7	62 	b 
	ld l,e			;70f8	6b 	k 
	dec hl			;70f9	2b 	+ 
	call 00f63h		;70fa	cd 63 0f 	. c . 
	ld a,(l23cah)		;70fd	3a ca 23 	: . # 
	dec a			;7100	3d 	= 
	dec a			;7101	3d 	= 
	jp l10c5h		;7102	c3 c5 10 	. . . 
	or a			;7105	b7 	. 
	sbc hl,de		;7106	ed 52 	. R 
	ld a,l			;7108	7d 	} 
	add hl,de			;7109	19 	. 
	ld (bc),a			;710a	02 	. 
	inc bc			;710b	03 	. 
	ld a,e			;710c	7b 	{ 
	ld (bc),a			;710d	02 	. 
	inc bc			;710e	03 	. 
	ld a,d			;710f	7a 	z 
	ld (bc),a			;7110	02 	. 
	ret			;7111	c9 	. 
l7112h:
	ld a,(hl)			;7112	7e 	~ 
	cp 0ffh		;7113	fe ff 	. . 
	jr nz,l711bh		;7115	20 04 	  . 
	pop hl			;7117	e1 	. 
	jp l12d4h		;7118	c3 d4 12 	. . . 
l711bh:
	pop de			;711b	d1 	. 
	inc hl			;711c	23 	# 
	ld e,(hl)			;711d	5e 	^ 
	inc hl			;711e	23 	# 
	ld d,(hl)			;711f	56 	V 
	add a,e			;7120	83 	. 
	ld l,a			;7121	6f 	o 
	ld h,d			;7122	62 	b 
	jr nc,l7126h		;7123	30 01 	0 . 
	inc h			;7125	24 	$ 
l7126h:
	jp l109fh		;7126	c3 9f 10 	. . . 
	push bc			;7129	c5 	. 
	ld bc,l230ch		;712a	01 0c 23 	. . # 
	call 01705h		;712d	cd 05 17 	. . . 
	pop bc			;7130	c1 	. 
	ret			;7131	c9 	. 
	push hl			;7132	e5 	. 
	ld hl,l230ch		;7133	21 0c 23 	! . # 
	jr l7112h		;7136	18 da 	. . 
	bit 6,(ix+000h)		;7138	dd cb 00 76 	. . . v 
	jr z,l7154h		;713c	28 16 	( . 
	ld de,(l214fh+1)		;713e	ed 5b 50 21 	. [ P ! 
	ld hl,l2262h+2		;7142	21 64 22 	! d " 
	res 6,(hl)		;7145	cb b6 	. . 
	set 1,(hl)		;7147	cb ce 	. . 
	ld a,(l23c8h+1)		;7149	3a c9 23 	: . # 
	ld (l22fah),a		;714c	32 fa 22 	2 . " 
l714fh:
	ld h,d			;714f	62 	b 
	ld l,e			;7150	6b 	k 
	jp l0f9dh		;7151	c3 9d 0f 	. . . 
l7154h:
	bit 7,(ix+000h)		;7154	dd cb 00 7e 	. . . ~ 
	ret z			;7158	c8 	. 
	ld a,(l2154h)		;7159	3a 54 21 	: T ! 
	push hl			;715c	e5 	. 
	ld hl,(l2302h)		;715d	2a 02 23 	* . # 
	add a,l			;7160	85 	. 
	ld l,a			;7161	6f 	o 
	jr nc,l7165h		;7162	30 01 	0 . 
	inc h			;7164	24 	$ 
l7165h:
	push de			;7165	d5 	. 
	ld de,(02304h)		;7166	ed 5b 04 23 	. [ . # 
	or a			;716a	b7 	. 
	sbc hl,de		;716b	ed 52 	. R 
	pop de			;716d	d1 	. 
	bit 2,(ix+000h)		;716e	dd cb 00 56 	. . . V 
	pop hl			;7172	e1 	. 
	jr c,l718ah		;7173	38 15 	8 . 
	jp z,l12b0h		;7175	ca b0 12 	. . . 
	call sub_1b67h		;7178	cd 67 1b 	. g . 
	ret nz			;717b	c0 	. 
	push hl			;717c	e5 	. 
	res 2,(ix+000h)		;717d	dd cb 00 96 	. . . . 
	ld hl,(0225ch)		;7181	2a 5c 22 	* \ " 
	ld (02304h),hl		;7184	22 04 23 	" . # 
	pop hl			;7187	e1 	. 
	jr l7154h		;7188	18 ca 	. . 
l718ah:
	ld hl,l2262h+2		;718a	21 64 22 	! d " 
	set 6,(hl)		;718d	cb f6 	. . 
	set 1,(hl)		;718f	cb ce 	. . 
	ld (l214fh+1),de		;7191	ed 53 50 21 	. S P ! 
	ld (l2152h),de		;7195	ed 53 52 21 	. S R ! 
	ld de,(l2154h+1)		;7199	ed 5b 55 21 	. [ U ! 
	push hl			;719d	e5 	. 
	ld a,(l2154h)		;719e	3a 54 21 	: T ! 
	add a,e			;71a1	83 	. 
	ld l,a			;71a2	6f 	o 
	ld h,d			;71a3	62 	b 
	jr nc,l71a7h		;71a4	30 01 	0 . 
	inc h			;71a6	24 	$ 
l71a7h:
	dec hl			;71a7	2b 	+ 
	ld (hl),00dh		;71a8	36 0d 	6 . 
	pop hl			;71aa	e1 	. 
	call sub_14ach		;71ab	cd ac 14 	. . . 
	jr l714fh		;71ae	18 9f 	. . 
	ld a,(l2262h+2)		;71b0	3a 64 22 	: d " 
	xor 001h		;71b3	ee 01 	. . 
	jr l71bch		;71b5	18 05 	. . 
	ld a,(l2262h+2)		;71b7	3a 64 22 	: d " 
	xor 010h		;71ba	ee 10 	. . 
l71bch:
	ld (l2262h+2),a		;71bc	32 64 22 	2 d " 
	set 1,(ix+002h)		;71bf	dd cb 02 ce 	. . . . 
	ret			;71c3	c9 	. 
	ld a,(l2266h)		;71c4	3a 66 22 	: f " 
	xor 010h		;71c7	ee 10 	. . 
	set 0,a		;71c9	cb c7 	. . 
	ld (l2266h),a		;71cb	32 66 22 	2 f " 
	ret			;71ce	c9 	. 
	push bc			;71cf	c5 	. 
	ld bc,l230fh		;71d0	01 0f 23 	. . # 
	call 01705h		;71d3	cd 05 17 	. . . 
	pop bc			;71d6	c1 	. 
	ret			;71d7	c9 	. 
	ld a,(hl)			;71d8	7e 	~ 
	or a			;71d9	b7 	. 
	push af			;71da	f5 	. 
	jr nz,l71e4h		;71db	20 07 	  . 
	dec hl			;71dd	2b 	+ 
	ld a,(hl)			;71de	7e 	~ 
	cp 00dh		;71df	fe 0d 	. . 
	call z,00f63h		;71e1	cc 63 0f 	. c . 
l71e4h:
	push bc			;71e4	c5 	. 
	ld bc,l2312h		;71e5	01 12 23 	. . # 
	call 01705h		;71e8	cd 05 17 	. . . 
	pop bc			;71eb	c1 	. 
	pop af			;71ec	f1 	. 
	ret nz			;71ed	c0 	. 
	ld a,(hl)			;71ee	7e 	~ 
	inc hl			;71ef	23 	# 
	cp 00dh		;71f0	fe 0d 	. . 
	ret nz			;71f2	c0 	. 
	ld d,h			;71f3	54 	T 
	ld e,l			;71f4	5d 	] 
	ret			;71f5	c9 	. 
	push hl			;71f6	e5 	. 
	ld hl,l230fh		;71f7	21 0f 23 	! . # 
	jr l7200h		;71fa	18 04 	. . 
	push hl			;71fc	e5 	. 
	ld hl,l2312h		;71fd	21 12 23 	! . # 
l7200h:
	jp 01712h		;7200	c3 12 17 	. . . 
	push hl			;7203	e5 	. 
	push bc			;7204	c5 	. 
	ld b,00ah		;7205	06 0a 	. . 
	ld hl,l1817h		;7207	21 17 18 	! . . 
	call 007d8h		;720a	cd d8 07 	. . . 
	call 008b7h		;720d	cd b7 08 	. . . 
	res 5,a		;7210	cb af 	. . 
	cp 059h		;7212	fe 59 	. Y 
	pop bc			;7214	c1 	. 
	pop hl			;7215	e1 	. 
	ret			;7216	c9 	. 
	ld d,e			;7217	53 	S 
	ld (hl),l			;7218	75 	u 
	ld (hl),d			;7219	72 	r 
	ld h,l			;721a	65 	e 
	ccf			;721b	3f 	? 
	jr nz,l723eh		;721c	20 20 	    
	jr nz,$+34		;721e	20 20 	    
	jr nz,$+64		;7220	20 3e 	  > 
	ex af,af'			;7222	08 	. 
	call 008c0h		;7223	cd c0 08 	. . . 
	ld a,020h		;7226	3e 20 	>   
	call 008c0h		;7228	cd c0 08 	. . . 
	ld a,008h		;722b	3e 08 	> . 
	jp 008c0h		;722d	c3 c0 08 	. . . 
	set 1,(ix+000h)		;7230	dd cb 00 ce 	. . . . 
	ld b,a			;7234	47 	G 
	ld a,(l225fh)		;7235	3a 5f 22 	: _ " 
	ld c,a			;7238	4f 	O 
	push hl			;7239	e5 	. 
	push bc			;723a	c5 	. 
	call 0084dh		;723b	cd 4d 08 	. M . 
l723eh:
	ld hl,l1302h		;723e	21 02 13 	! . . 
	ld a,(l23c8h+1)		;7241	3a c9 23 	: . # 
	ld b,a			;7244	47 	G 
	call 007d8h		;7245	cd d8 07 	. . . 
	pop bc			;7248	c1 	. 
	ld a,(l23cdh+2)		;7249	3a cf 23 	: . # 
	ld c,a			;724c	4f 	O 
	ld a,(l23c8h)		;724d	3a c8 23 	: . # 
	add a,c			;7250	81 	. 
l7251h:
	ld c,a			;7251	4f 	O 
	call 0084dh		;7252	cd 4d 08 	. M . 
	pop hl			;7255	e1 	. 
	jp l05ech+2		;7256	c3 ee 05 	. . . 
	push hl			;7259	e5 	. 
	push bc			;725a	c5 	. 
	ld a,(l225fh+1)		;725b	3a 60 22 	: ` " 
	ld hl,018beh		;725e	21 be 18 	! . . 
	call sub_1830h		;7261	cd 30 18 	. 0 . 
	call sub_05c1h		;7264	cd c1 05 	. . . 
	ld b,00eh		;7267	06 0e 	. . 
	ld hl,l1875h		;7269	21 75 18 	! u . 
	call 007d8h		;726c	cd d8 07 	. . . 
	call sub_1803h		;726f	cd 03 18 	. . . 
	pop bc			;7272	c1 	. 
	pop hl			;7273	e1 	. 
	ret			;7274	c9 	. 
	ld b,c			;7275	41 	A 
	ld h,d			;7276	62 	b 
	ld h,c			;7277	61 	a 
	ld l,(hl)			;7278	6e 	n 
	ld h,h			;7279	64 	d 
	ld l,a			;727a	6f 	o 
	ld l,(hl)			;727b	6e 	n 
	jr nz,$+118		;727c	20 74 	  t 
	ld h,l			;727e	65 	e 
	ld a,b			;727f	78 	x 
	ld (hl),h			;7280	74 	t 
	ld a,(0cd20h)		;7281	3a 20 cd 	:   . 
	ld e,c			;7284	59 	Y 
	jr l7251h		;7285	18 ca 	. . 
	or c			;7287	b1 	. 
	ld (bc),a			;7288	02 	. 
	or a			;7289	b7 	. 
	ret nz			;728a	c0 	. 
	ld hl,l1c12h		;728b	21 12 1c 	! . . 
	ld (hl),000h		;728e	36 00 	6 . 
	call 01bb6h		;7290	cd b6 1b 	. . . 
	jr z,$-13		;7293	28 f1 	( . 
	ld de,l0080h		;7295	11 80 00 	. . . 
	ld a,00fh		;7298	3e 0f 	> . 
	ld (de),a			;729a	12 	. 
	inc de			;729b	13 	. 
	ld a,020h		;729c	3e 20 	>   
	ld (de),a			;729e	12 	. 
	inc de			;729f	13 	. 
	ld bc,l000eh+1		;72a0	01 0f 00 	. . . 
	push bc			;72a3	c5 	. 
	ldir		;72a4	ed b0 	. . 
	pop bc			;72a6	c1 	. 
	jp 0021dh		;72a7	c3 1d 02 	. . . 
	ld e,(hl)			;72aa	5e 	^ 
	ld d,l			;72ab	55 	U 
	jr nz,$+118		;72ac	20 74 	  t 
	ld l,a			;72ae	6f 	o 
	jr nz,$+99		;72af	20 61 	  a 
	ld h,d			;72b1	62 	b 
	ld l,a			;72b2	6f 	o 
	ld (hl),d			;72b3	72 	r 
	ld (hl),h			;72b4	74 	t 
	jr nz,l731ah		;72b5	20 63 	  c 
	ld l,a			;72b7	6f 	o 
	ld l,l			;72b8	6d 	m 
	ld l,l			;72b9	6d 	m 
	ld h,c			;72ba	61 	a 
	ld l,(hl)			;72bb	6e 	n 
	ld h,h			;72bc	64 	d 
	nop			;72bd	00 	. 
	ld d,e			;72be	53 	S 
	ld h,l			;72bf	65 	e 
	ld h,l			;72c0	65 	e 
	jr nz,l7330h		;72c1	20 6d 	  m 
	ld h,c			;72c3	61 	a 
	ld l,(hl)			;72c4	6e 	n 
	ld (hl),l			;72c5	75 	u 
	ld h,c			;72c6	61 	a 
	ld l,h			;72c7	6c 	l 
	jr nz,l7330h		;72c8	20 66 	  f 
	ld l,a			;72ca	6f 	o 
	ld (hl),d			;72cb	72 	r 
	jr nz,$+102		;72cc	20 64 	  d 
	ld h,l			;72ce	65 	e 
	ld (hl),h			;72cf	74 	t 
	ld h,c			;72d0	61 	a 
	ld l,c			;72d1	69 	i 
	ld l,h			;72d2	6c 	l 
	ld (hl),e			;72d3	73 	s 
	nop			;72d4	00 	. 
	ld a,001h		;72d5	3e 01 	> . 
	jr l72dah		;72d7	18 01 	. . 
	xor a			;72d9	af 	. 
l72dah:
	ld (l22f7h),a		;72da	32 f7 22 	2 . " 
	push hl			;72dd	e5 	. 
	push de			;72de	d5 	. 
	push bc			;72df	c5 	. 
	ld hl,(l2315h)		;72e0	2a 15 23 	* . # 
	ld de,l1c12h		;72e3	11 12 1c 	. . . 
	jr l72ebh		;72e6	18 03 	. . 
l72e8h:
	ld (de),a			;72e8	12 	. 
	inc de			;72e9	13 	. 
	inc hl			;72ea	23 	# 
l72ebh:
	ld a,(hl)			;72eb	7e 	~ 
	or a			;72ec	b7 	. 
	jr nz,l72e8h		;72ed	20 f9 	  . 
	ld (de),a			;72ef	12 	. 
	ld a,(l225fh+1)		;72f0	3a 60 22 	: ` " 
	ld hl,sub_18a8h+2		;72f3	21 aa 18 	! . . 
	push af			;72f6	f5 	. 
	call sub_1830h		;72f7	cd 30 18 	. 0 . 
	pop af			;72fa	f1 	. 
	inc a			;72fb	3c 	< 
	inc hl			;72fc	23 	# 
	call sub_1830h		;72fd	cd 30 18 	. 0 . 
	res 5,(ix+002h)		;7300	dd cb 02 ae 	. . . . 
	call 01bb6h		;7304	cd b6 1b 	. . . 
	jr z,l7343h		;7307	28 3a 	( : 
	ld a,(l22f7h)		;7309	3a f7 22 	: . " 
	or a			;730c	b7 	. 
	push hl			;730d	e5 	. 
	push de			;730e	d5 	. 
	push bc			;730f	c5 	. 
	call nz,sub_0b36h		;7310	c4 36 0b 	. 6 . 
	pop bc			;7313	c1 	. 
	pop de			;7314	d1 	. 
	pop hl			;7315	e1 	. 
	or a			;7316	b7 	. 
	call nz,sub_12dch		;7317	c4 dc 12 	. . . 
l731ah:
	jr nz,l7343h		;731a	20 27 	  ' 
	push hl			;731c	e5 	. 
	ld hl,(l2302h)		;731d	2a 02 23 	* . # 
	ld de,(023c3h)		;7320	ed 5b c3 23 	. [ . # 
	or a			;7324	b7 	. 
	sbc hl,de		;7325	ed 52 	. R 
	ld b,h			;7327	44 	D 
	ld c,l			;7328	4d 	M 
	pop hl			;7329	e1 	. 
	call sub_0b9fh		;732a	cd 9f 0b 	. . . 
	or a			;732d	b7 	. 
	jr nz,l733ah		;732e	20 0a 	  . 
l7330h:
	bit 5,(ix+002h)		;7330	dd cb 02 6e 	. . . n 
	jp nz,l188bh		;7334	c2 8b 18 	. . . 
	jp l02b1h		;7337	c3 b1 02 	. . . 
l733ah:
	dec a			;733a	3d 	= 
	call z,sub_12dch		;733b	cc dc 12 	. . . 
	jr z,l7343h		;733e	28 03 	( . 
	call sub_12e0h		;7340	cd e0 12 	. . . 
l7343h:
	pop bc			;7343	c1 	. 
	pop de			;7344	d1 	. 
	pop hl			;7345	e1 	. 
	ret			;7346	c9 	. 
	push hl			;7347	e5 	. 
	call 019d5h		;7348	cd d5 19 	. . . 
	jr l7351h		;734b	18 04 	. . 
	push hl			;734d	e5 	. 
	call 0198bh		;734e	cd 8b 19 	. . . 
l7351h:
	ld a,h			;7351	7c 	| 
	or l			;7352	b5 	. 
	jr nz,l7357h		;7353	20 02 	  . 
	pop hl			;7355	e1 	. 
	ret			;7356	c9 	. 
l7357h:
	push bc			;7357	c5 	. 
	push de			;7358	d5 	. 
	ld b,h			;7359	44 	D 
	ld c,l			;735a	4d 	M 
	ld hl,l2317h		;735b	21 17 23 	! . # 
	ld (hl),000h		;735e	36 00 	6 . 
	ld de,(023c3h)		;7360	ed 5b c3 23 	. [ . # 
l7364h:
	dec bc			;7364	0b 	. 
	ld a,b			;7365	78 	x 
	or c			;7366	b1 	. 
	jr z,l7374h		;7367	28 0b 	( . 
	call 00f54h		;7369	cd 54 0f 	. T . 
	jr nc,l7364h		;736c	30 f6 	0 . 
	pop de			;736e	d1 	. 
	pop bc			;736f	c1 	. 
	pop hl			;7370	e1 	. 
	jp l12cch		;7371	c3 cc 12 	. . . 
l7374h:
	pop bc			;7374	c1 	. 
	pop bc			;7375	c1 	. 
	pop bc			;7376	c1 	. 
	ld h,d			;7377	62 	b 
	ld l,e			;7378	6b 	k 
	jp l109fh		;7379	c3 9f 10 	. . . 
	ld hl,l2266h		;737c	21 66 22 	! f " 
	set 2,(hl)		;737f	cb d6 	. . 
	call 005c7h		;7381	cd c7 05 	. . . 
	set 2,(ix+002h)		;7384	dd cb 02 d6 	. . . . 
	jp sub_05c1h		;7388	c3 c1 05 	. . . 
	push de			;738b	d5 	. 
	push bc			;738c	c5 	. 
	call sub_197ch		;738d	cd 7c 19 	. | . 
	ld b,00ch		;7390	06 0c 	. . 
	ld hl,019eeh		;7392	21 ee 19 	! . . 
	call 007d8h		;7395	cd d8 07 	. . . 
	ld b,004h		;7398	06 04 	. . 
	ld hl,l2317h		;739a	21 17 23 	! . # 
	ld a,02dh		;739d	3e 2d 	> - 
	ld (l22f5h),a		;739f	32 f5 22 	2 . " 
l73a2h:
	inc b			;73a2	04 	. 
l73a3h:
	call 008b7h		;73a3	cd b7 08 	. . . 
	call sub_1c2bh		;73a6	cd 2b 1c 	. + . 
	jr z,l73c1h		;73a9	28 16 	( . 
	cp 00dh		;73ab	fe 0d 	. . 
	jr z,l73cdh		;73ad	28 1e 	( . 
	sub 030h		;73af	d6 30 	. 0 
	cp 00ah		;73b1	fe 0a 	. . 
	jr nc,l73a3h		;73b3	30 ee 	0 . 
	dec b			;73b5	05 	. 
	jr z,l73a2h		;73b6	28 ea 	( . 
	add a,030h		;73b8	c6 30 	. 0 
	ld (hl),a			;73ba	77 	w 
	inc hl			;73bb	23 	# 
	call 008c0h		;73bc	cd c0 08 	. . . 
	jr l73a3h		;73bf	18 e2 	. . 
l73c1h:
	ld a,b			;73c1	78 	x 
	cp 005h		;73c2	fe 05 	. . 
	jr z,l73a3h		;73c4	28 dd 	( . 
	dec hl			;73c6	2b 	+ 
	inc b			;73c7	04 	. 
	call sub_1821h		;73c8	cd 21 18 	. ! . 
	jr l73a3h		;73cb	18 d6 	. . 
l73cdh:
	ld (hl),000h		;73cd	36 00 	6 . 
	call 019d5h		;73cf	cd d5 19 	. . . 
	pop bc			;73d2	c1 	. 
	pop de			;73d3	d1 	. 
	ret			;73d4	c9 	. 
	ld hl,l0000h		;73d5	21 00 00 	! . . 
	ld de,l2317h		;73d8	11 17 23 	. . # 
l73dbh:
	ld a,(de)			;73db	1a 	. 
	inc de			;73dc	13 	. 
	or a			;73dd	b7 	. 
	ret z			;73de	c8 	. 
	sub 030h		;73df	d6 30 	. 0 
	add hl,hl			;73e1	29 	) 
	push hl			;73e2	e5 	. 
	add hl,hl			;73e3	29 	) 
	add hl,hl			;73e4	29 	) 
	pop bc			;73e5	c1 	. 
	add hl,bc			;73e6	09 	. 
	add a,l			;73e7	85 	. 
	ld l,a			;73e8	6f 	o 
	jr nc,l73dbh		;73e9	30 f0 	0 . 
	inc h			;73eb	24 	$ 
	jr l73dbh		;73ec	18 ed 	. . 
	ld b,a			;73ee	47 	G 
	ld l,a			;73ef	6f 	o 
	jr nz,l7466h		;73f0	20 74 	  t 
	ld l,a			;73f2	6f 	o 
	jr nz,l7461h		;73f3	20 6c 	  l 
	ld l,c			;73f5	69 	i 
	ld l,(hl)			;73f6	6e 	n 
	ld h,l			;73f7	65 	e 
	ld a,(0cd20h)		;73f8	3a 20 cd 	:   . 
	inc bc			;73fb	03 	. 
	ld (de),a			;73fc	12 	. 
	ret c			;73fd	d8 	. 
	call 0205ch		;73fe	cd 5c 20 	. \   
	jp z,l12b0h		;7401	ca b0 12 	. . . 
	call 02073h		;7404	cd 73 20 	. s   
	jp 01ab5h		;7407	c3 b5 1a 	. . . 
	call 01203h		;740a	cd 03 12 	. . . 
	ret c			;740d	d8 	. 
	push hl			;740e	e5 	. 
	push de			;740f	d5 	. 
	push bc			;7410	c5 	. 
	call 01243h		;7411	cd 43 12 	. C . 
	ld hl,(l2302h)		;7414	2a 02 23 	* . # 
	add hl,bc			;7417	09 	. 
	ld de,(0225ch)		;7418	ed 5b 5c 22 	. [ \ " 
	ex de,hl			;741c	eb 	. 
	sbc hl,de		;741d	ed 52 	. R 
	pop bc			;741f	c1 	. 
	pop de			;7420	d1 	. 
	pop hl			;7421	e1 	. 
	jp c,012d0h		;7422	da d0 12 	. . . 
	push hl			;7425	e5 	. 
	call 01243h		;7426	cd 43 12 	. C . 
	ld (l22f7h),bc		;7429	ed 43 f7 22 	. C . " 
	pop hl			;742d	e1 	. 
	push hl			;742e	e5 	. 
	ld a,(l230fh)		;742f	3a 0f 23 	: . # 
	push af			;7432	f5 	. 
	call sub_125eh		;7433	cd 5e 12 	. ^ . 
	pop af			;7436	f1 	. 
	ld (l230fh),a		;7437	32 0f 23 	2 . # 
	ld de,(l2302h)		;743a	ed 5b 02 23 	. [ . # 
	ex de,hl			;743e	eb 	. 
	or a			;743f	b7 	. 
	sbc hl,de		;7440	ed 52 	. R 
	ld b,h			;7442	44 	D 
	ld c,l			;7443	4d 	M 
	inc bc			;7444	03 	. 
	add hl,de			;7445	19 	. 
	ld de,(l22f7h)		;7446	ed 5b f7 22 	. [ . " 
	push hl			;744a	e5 	. 
	add hl,de			;744b	19 	. 
	ld d,h			;744c	54 	T 
	ld e,l			;744d	5d 	] 
	ld (l2302h),de		;744e	ed 53 02 23 	. S . # 
	pop hl			;7452	e1 	. 
	lddr		;7453	ed b8 	. . 
	ld bc,(l22f7h)		;7455	ed 4b f7 22 	. K . " 
	pop de			;7459	d1 	. 
	push de			;745a	d5 	. 
	ld hl,l230fh		;745b	21 0f 23 	! . # 
	call sub_2135h		;745e	cd 35 21 	. 5 ! 
l7461h:
	ldir		;7461	ed b0 	. . 
	ld h,d			;7463	62 	b 
	ld l,e			;7464	6b 	k 
	dec hl			;7465	2b 	+ 
l7466h:
	call 00f63h		;7466	cd 63 0f 	. c . 
	call 017d8h		;7469	cd d8 17 	. . . 
	pop hl			;746c	e1 	. 
	ld d,h			;746d	54 	T 
	ld e,l			;746e	5d 	] 
	inc de			;746f	13 	. 
	call 00f63h		;7470	cd 63 0f 	. c . 
	call 017cfh		;7473	cd cf 17 	. . . 
	jp l109fh		;7476	c3 9f 10 	. . . 
	call l1220h+1		;7479	cd 21 12 	. ! . 
	ret c			;747c	d8 	. 
	call 0205ch		;747d	cd 5c 20 	. \   
	jr nz,l7486h		;7480	20 04 	  . 
	call sub_1b67h		;7482	cd 67 1b 	. g . 
	ret nz			;7485	c0 	. 
l7486h:
	call 02073h		;7486	cd 73 20 	. s   
	ld hl,(l230fh+1)		;7489	2a 10 23 	* . # 
	jp l109fh		;748c	c3 9f 10 	. . . 
	bit 2,(ix+000h)		;748f	dd cb 00 56 	. . . V 
	jp z,l12d8h		;7493	ca d8 12 	. . . 
	push hl			;7496	e5 	. 
	push de			;7497	d5 	. 
	ld hl,(0225ch)		;7498	2a 5c 22 	* \ " 
	push hl			;749b	e5 	. 
	ld de,(l2259h+1)		;749c	ed 5b 5a 22 	. [ Z " 
	or a			;74a0	b7 	. 
	sbc hl,de		;74a1	ed 52 	. R 
	inc hl			;74a3	23 	# 
	ld de,(l2302h)		;74a4	ed 5b 02 23 	. [ . # 
	add hl,de			;74a8	19 	. 
	pop de			;74a9	d1 	. 
	jr c,l74b0h		;74aa	38 04 	8 . 
	ex de,hl			;74ac	eb 	. 
	dec hl			;74ad	2b 	+ 
	sbc hl,de		;74ae	ed 52 	. R 
l74b0h:
	pop de			;74b0	d1 	. 
	pop hl			;74b1	e1 	. 
	jp c,012d0h		;74b2	da d0 12 	. . . 
	push hl			;74b5	e5 	. 
	ld hl,(0225ch)		;74b6	2a 5c 22 	* \ " 
	ld bc,(l2259h+1)		;74b9	ed 4b 5a 22 	. K Z " 
	ld (l22f1h),bc		;74bd	ed 43 f1 22 	. C . " 
	or a			;74c1	b7 	. 
	sbc hl,bc		;74c2	ed 42 	. B 
	ld b,h			;74c4	44 	D 
	ld c,l			;74c5	4d 	M 
	inc bc			;74c6	03 	. 
	pop hl			;74c7	e1 	. 
	push hl			;74c8	e5 	. 
	call sub_125eh		;74c9	cd 5e 12 	. ^ . 
	ld hl,(02304h)		;74cc	2a 04 23 	* . # 
	ld de,(l2302h)		;74cf	ed 5b 02 23 	. [ . # 
	ld (022f3h),de		;74d3	ed 53 f3 22 	. S . " 
	or a			;74d7	b7 	. 
	sbc hl,de		;74d8	ed 52 	. R 
	ld (l22f7h),hl		;74da	22 f7 22 	" . " 
	ex de,hl			;74dd	eb 	. 
	pop de			;74de	d1 	. 
	push de			;74df	d5 	. 
	sbc hl,de		;74e0	ed 52 	. R 
	inc hl			;74e2	23 	# 
	ld (l22f5h),hl		;74e3	22 f5 22 	" . " 
l74e6h:
	ld hl,(l22f7h)		;74e6	2a f7 22 	* . " 
	ld de,(l22f1h)		;74e9	ed 5b f1 22 	. [ . " 
	push de			;74ed	d5 	. 
	push hl			;74ee	e5 	. 
	add hl,de			;74ef	19 	. 
	dec hl			;74f0	2b 	+ 
	ld de,(0225ch)		;74f1	ed 5b 5c 22 	. [ \ " 
	jr c,l74fbh		;74f5	38 04 	8 . 
	sbc hl,de		;74f7	ed 52 	. R 
	jr c,l7507h		;74f9	38 0c 	8 . 
l74fbh:
	pop hl			;74fb	e1 	. 
	ex de,hl			;74fc	eb 	. 
	pop de			;74fd	d1 	. 
	push de			;74fe	d5 	. 
	or a			;74ff	b7 	. 
	sbc hl,de		;7500	ed 52 	. R 
	inc hl			;7502	23 	# 
	ld (l22f7h),hl		;7503	22 f7 22 	" . " 
	push hl			;7506	e5 	. 
l7507h:
	pop hl			;7507	e1 	. 
	ld de,(022f3h)		;7508	ed 5b f3 22 	. [ . " 
	add hl,de			;750c	19 	. 
	ld (022f3h),hl		;750d	22 f3 22 	" . " 
	ex de,hl			;7510	eb 	. 
	ld bc,(l22f5h)		;7511	ed 4b f5 22 	. K . " 
	lddr		;7515	ed b8 	. . 
	ld (02308h),de		;7517	ed 53 08 23 	. S . # 
	ld d,h			;751b	54 	T 
	ld e,l			;751c	5d 	] 
	inc de			;751d	13 	. 
	ld bc,(l22f7h)		;751e	ed 4b f7 22 	. K . " 
	pop hl			;7522	e1 	. 
	ldir		;7523	ed b0 	. . 
	ld (l22f1h),hl		;7525	22 f1 22 	" . " 
	dec hl			;7528	2b 	+ 
	ld de,(0225ch)		;7529	ed 5b 5c 22 	. [ \ " 
	or a			;752d	b7 	. 
	sbc hl,de		;752e	ed 52 	. R 
	jr nz,l74e6h		;7530	20 b4 	  . 
	ld hl,(022f3h)		;7532	2a f3 22 	* . " 
	ld (l2302h),hl		;7535	22 02 23 	" . # 
	ld de,(l2259h+1)		;7538	ed 5b 5a 22 	. [ Z " 
	or a			;753c	b7 	. 
	sbc hl,de		;753d	ed 52 	. R 
	jr c,l754eh		;753f	38 0d 	8 . 
	res 2,(ix+000h)		;7541	dd cb 00 96 	. . . . 
	ld hl,(0225ch)		;7545	2a 5c 22 	* \ " 
	ld (02304h),hl		;7548	22 04 23 	" . # 
	ld (l2259h+1),hl		;754b	22 5a 22 	" Z " 
l754eh:
	ld hl,(02308h)		;754e	2a 08 23 	* . # 
	ld d,h			;7551	54 	T 
	ld e,l			;7552	5d 	] 
	inc de			;7553	13 	. 
	call 00f63h		;7554	cd 63 0f 	. c . 
	call 017d8h		;7557	cd d8 17 	. . . 
	pop hl			;755a	e1 	. 
	ld d,h			;755b	54 	T 
	ld e,l			;755c	5d 	] 
	inc de			;755d	13 	. 
	call 00f63h		;755e	cd 63 0f 	. c . 
	call 017cfh		;7561	cd cf 17 	. . . 
l7564h:
	jp l109fh		;7564	c3 9f 10 	. . . 
	push hl			;7567	e5 	. 
	push bc			;7568	c5 	. 
	call sub_05c1h		;7569	cd c1 05 	. . . 
	ld b,00fh		;756c	06 0f 	. . 
	ld hl,01b7eh		;756e	21 7e 1b 	! ~ . 
	call 007d8h		;7571	cd d8 07 	. . . 
	set 2,(ix+002h)		;7574	dd cb 02 d6 	. . . . 
	call sub_1803h		;7578	cd 03 18 	. . . 
	pop bc			;757b	c1 	. 
	pop hl			;757c	e1 	. 
	ret			;757d	c9 	. 
	ld b,c			;757e	41 	A 
	ld h,d			;757f	62 	b 
	ld h,c			;7580	61 	a 
	ld l,(hl)			;7581	6e 	n 
	ld h,h			;7582	64 	d 
	ld l,a			;7583	6f 	o 
	ld l,(hl)			;7584	6e 	n 
	jr nz,$+100		;7585	20 62 	  b 
	ld l,h			;7587	6c 	l 
	ld l,a			;7588	6f 	o 
	ld h,e			;7589	63 	c 
	ld l,e			;758a	6b 	k 
	ld a,(0cd20h)		;758b	3a 20 cd 	:   . 
	ld hl,0d812h		;758e	21 12 d8 	! . . 
	push hl			;7591	e5 	. 
	push de			;7592	d5 	. 
	push bc			;7593	c5 	. 
	ld hl,l1c12h		;7594	21 12 1c 	! . . 
	ld (hl),000h		;7597	36 00 	6 . 
	call 01bb6h		;7599	cd b6 1b 	. . . 
	jr z,l75b2h		;759c	28 14 	( . 
	push hl			;759e	e5 	. 
	call 01243h		;759f	cd 43 12 	. C . 
	pop hl			;75a2	e1 	. 
	call sub_0b9fh		;75a3	cd 9f 0b 	. . . 
	or a			;75a6	b7 	. 
	jr z,l75b2h		;75a7	28 09 	( . 
	dec a			;75a9	3d 	= 
	call z,sub_12dch		;75aa	cc dc 12 	. . . 
	jr z,l75b2h		;75ad	28 03 	( . 
	call sub_12e0h		;75af	cd e0 12 	. . . 
l75b2h:
	pop bc			;75b2	c1 	. 
	pop de			;75b3	d1 	. 
	pop hl			;75b4	e1 	. 
	ret			;75b5	c9 	. 
	push bc			;75b6	c5 	. 
	call sub_197ch		;75b7	cd 7c 19 	. | . 
	ld b,00ah		;75ba	06 0a 	. . 
	ld hl,l1c21h		;75bc	21 21 1c 	! ! . 
	call 007d8h		;75bf	cd d8 07 	. . . 
	ld b,00eh		;75c2	06 0e 	. . 
	ld a,02dh		;75c4	3e 2d 	> - 
	ld (l22f5h),a		;75c6	32 f5 22 	2 . " 
	ld hl,l1c12h		;75c9	21 12 1c 	! . . 
l75cch:
	ld a,(hl)			;75cc	7e 	~ 
	or a			;75cd	b7 	. 
	jr z,l75d7h		;75ce	28 07 	( . 
	dec b			;75d0	05 	. 
	inc hl			;75d1	23 	# 
	call 008c0h		;75d2	cd c0 08 	. . . 
	jr l75cch		;75d5	18 f5 	. . 
l75d7h:
	inc b			;75d7	04 	. 
l75d8h:
	call 008b7h		;75d8	cd b7 08 	. . . 
	call sub_1c2bh		;75db	cd 2b 1c 	. + . 
	jr z,l75f8h		;75de	28 18 	( . 
	cp 015h		;75e0	fe 15 	. . 
	jr z,l7610h		;75e2	28 2c 	( , 
	cp 00dh		;75e4	fe 0d 	. . 
	jr z,l7608h		;75e6	28 20 	(   
	cp 020h		;75e8	fe 20 	.   
	jr c,l75d8h		;75ea	38 ec 	8 . 
	jr z,l7604h		;75ec	28 16 	( . 
	dec b			;75ee	05 	. 
	jr z,l75d7h		;75ef	28 e6 	( . 
	ld (hl),a			;75f1	77 	w 
	call 008c0h		;75f2	cd c0 08 	. . . 
	inc hl			;75f5	23 	# 
	jr l75d8h		;75f6	18 e0 	. . 
l75f8h:
	ld a,b			;75f8	78 	x 
	cp 00fh		;75f9	fe 0f 	. . 
	jr z,l75d8h		;75fb	28 db 	( . 
	dec hl			;75fd	2b 	+ 
	inc b			;75fe	04 	. 
	call sub_1821h		;75ff	cd 21 18 	. ! . 
	jr l75d8h		;7602	18 d4 	. . 
l7604h:
	set 5,(ix+002h)		;7604	dd cb 02 ee 	. . . . 
l7608h:
	ld (hl),000h		;7608	36 00 	6 . 
	ld hl,l1c12h		;760a	21 12 1c 	! . . 
	ld a,b			;760d	78 	x 
	sub 00fh		;760e	d6 0f 	. . 
l7610h:
	pop bc			;7610	c1 	. 
	ret			;7611	c9 	. 
	nop			;7612	00 	. 
	nop			;7613	00 	. 
	nop			;7614	00 	. 
	nop			;7615	00 	. 
	nop			;7616	00 	. 
	nop			;7617	00 	. 
	nop			;7618	00 	. 
	nop			;7619	00 	. 
	nop			;761a	00 	. 
	nop			;761b	00 	. 
	nop			;761c	00 	. 
	nop			;761d	00 	. 
	nop			;761e	00 	. 
	nop			;761f	00 	. 
	nop			;7620	00 	. 
	ld b,(hl)			;7621	46 	F 
	ld l,c			;7622	69 	i 
	ld l,h			;7623	6c 	l 
	ld h,l			;7624	65 	e 
	ld l,(hl)			;7625	6e 	n 
	ld h,c			;7626	61 	a 
	ld l,l			;7627	6d 	m 
	ld h,l			;7628	65 	e 
	ld a,(0e520h)		;7629	3a 20 e5 	:   . 
	push bc			;762c	c5 	. 
	push af			;762d	f5 	. 
	ld hl,(l23f4h+1)		;762e	2a f5 23 	* . # 
	ld bc,l23f4h+1		;7631	01 f5 23 	. . # 
	add hl,bc			;7634	09 	. 
	ld a,(l22f5h)		;7635	3a f5 22 	: . " 
	ld b,a			;7638	47 	G 
l7639h:
	ld a,(hl)			;7639	7e 	~ 
	inc hl			;763a	23 	# 
	or a			;763b	b7 	. 
	jr nz,l7639h		;763c	20 fb 	  . 
	djnz l7639h		;763e	10 f9 	. . 
	pop af			;7640	f1 	. 
	cp (hl)			;7641	be 	. 
	pop bc			;7642	c1 	. 
	pop hl			;7643	e1 	. 
	ret			;7644	c9 	. 
	push hl			;7645	e5 	. 
	push de			;7646	d5 	. 
	push bc			;7647	c5 	. 
	ld (l22f1h),hl		;7648	22 f1 22 	" . " 
	ld hl,l1c12h		;764b	21 12 1c 	! . . 
	ld (hl),000h		;764e	36 00 	6 . 
	call 01bb6h		;7650	cd b6 1b 	. . . 
	jp z,l1ce0h		;7653	ca e0 1c 	. . . 
	push hl			;7656	e5 	. 
	res 2,(ix+000h)		;7657	dd cb 00 96 	. . . . 
	ld hl,(0225ch)		;765b	2a 5c 22 	* \ " 
	ld de,(l2302h)		;765e	ed 5b 02 23 	. [ . # 
	or a			;7662	b7 	. 
	sbc hl,de		;7663	ed 52 	. R 
	ld b,h			;7665	44 	D 
	ld c,l			;7666	4d 	M 
	ld hl,(l22f1h)		;7667	2a f1 22 	* . " 
	call sub_125eh		;766a	cd 5e 12 	. ^ . 
	ld d,h			;766d	54 	T 
	ld e,l			;766e	5d 	] 
	push bc			;766f	c5 	. 
	ld hl,(l2302h)		;7670	2a 02 23 	* . # 
	or a			;7673	b7 	. 
	sbc hl,de		;7674	ed 52 	. R 
	ld b,h			;7676	44 	D 
	ld c,l			;7677	4d 	M 
	inc bc			;7678	03 	. 
	ld (l22f7h),bc		;7679	ed 43 f7 22 	. C . " 
	add hl,de			;767d	19 	. 
	push de			;767e	d5 	. 
	ld de,(0225ch)		;767f	ed 5b 5c 22 	. [ \ " 
	ld (l2302h),de		;7683	ed 53 02 23 	. S . # 
	ld (02304h),de		;7687	ed 53 04 23 	. S . # 
	lddr		;768b	ed b8 	. . 
	inc de			;768d	13 	. 
	ld (022f3h),de		;768e	ed 53 f3 22 	. S . " 
	pop de			;7692	d1 	. 
	pop bc			;7693	c1 	. 
	ld a,b			;7694	78 	x 
	or c			;7695	b1 	. 
	jr z,l76b6h		;7696	28 1e 	( . 
	pop hl			;7698	e1 	. 
	call sub_0c59h		;7699	cd 59 0c 	. Y . 
	dec a			;769c	3d 	= 
	jr z,l76ach		;769d	28 0d 	( . 
	dec a			;769f	3d 	= 
	jr z,l76b1h		;76a0	28 0f 	( . 
	set 1,(ix+000h)		;76a2	dd cb 00 ce 	. . . . 
	ld (l22f1h),de		;76a6	ed 53 f1 22 	. S . " 
	jr l76b9h		;76aa	18 0d 	. . 
l76ach:
	call sub_12dch		;76ac	cd dc 12 	. . . 
	jr l76b9h		;76af	18 08 	. . 
l76b1h:
	call 012d0h		;76b1	cd d0 12 	. . . 
	jr l76b9h		;76b4	18 03 	. . 
l76b6h:
	call l12b0h		;76b6	cd b0 12 	. . . 
l76b9h:
	ld de,(l22f1h)		;76b9	ed 5b f1 22 	. [ . " 
	ld hl,(022f3h)		;76bd	2a f3 22 	* . " 
	or a			;76c0	b7 	. 
	sbc hl,de		;76c1	ed 52 	. R 
	ld b,h			;76c3	44 	D 
	ld c,l			;76c4	4d 	M 
	add hl,de			;76c5	19 	. 
	call sub_1257h		;76c6	cd 57 12 	. W . 
	ld bc,(l22f7h)		;76c9	ed 4b f7 22 	. K . " 
	ldir		;76cd	ed b0 	. . 
	dec de			;76cf	1b 	. 
	ld (l2302h),de		;76d0	ed 53 02 23 	. S . # 
	ld hl,(l22f1h)		;76d4	2a f1 22 	* . " 
	ld d,h			;76d7	54 	T 
	ld e,l			;76d8	5d 	] 
	inc de			;76d9	13 	. 
	call 00f63h		;76da	cd 63 0f 	. c . 
	call 017d8h		;76dd	cd d8 17 	. . . 
	pop bc			;76e0	c1 	. 
	pop de			;76e1	d1 	. 
	pop hl			;76e2	e1 	. 
	call 017cfh		;76e3	cd cf 17 	. . . 
	jp l109fh		;76e6	c3 9f 10 	. . . 
	push hl			;76e9	e5 	. 
	push de			;76ea	d5 	. 
	push bc			;76eb	c5 	. 
	ld a,(l23d3h)		;76ec	3a d3 23 	: . # 
	ld hl,l2266h+1		;76ef	21 67 22 	! g " 
	ld (l22f7h),hl		;76f2	22 f7 22 	" . " 
	call l1d65h+1		;76f5	cd 66 1d 	. f . 
	ld (l22f1h),a		;76f8	32 f1 22 	2 . " 
	jr c,l7714h		;76fb	38 17 	8 . 
	ld a,(l23d4h)		;76fd	3a d4 23 	: . # 
	ld hl,l22a9h		;7700	21 a9 22 	! . " 
	ld (l22f7h),hl		;7703	22 f7 22 	" . " 
	call l1d65h+1		;7706	cd 66 1d 	. f . 
	ld (022f3h),a		;7709	32 f3 22 	2 . " 
	jr c,l7714h		;770c	38 06 	8 . 
	call sub_1e75h		;770e	cd 75 1e 	. u . 
	call sub_1d52h		;7711	cd 52 1d 	. R . 
l7714h:
	pop bc			;7714	c1 	. 
	pop de			;7715	d1 	. 
	pop hl			;7716	e1 	. 
	ret c			;7717	d8 	. 
	call sub_1d4ah		;7718	cd 4a 1d 	. J . 
	ret z			;771b	c8 	. 
	inc hl			;771c	23 	# 
	call sub_1e96h		;771d	cd 96 1e 	. . . 
	dec hl			;7720	2b 	+ 
	ret c			;7721	d8 	. 
	inc hl			;7722	23 	# 
	jr l7747h		;7723	18 22 	. " 
	call sub_1d4ah		;7725	cd 4a 1d 	. J . 
	ret z			;7728	c8 	. 
	call sub_1e96h		;7729	cd 96 1e 	. . . 
	ret c			;772c	d8 	. 
	call sub_1ecbh		;772d	cd cb 1e 	. . . 
	call sub_1e96h		;7730	cd 96 1e 	. . . 
	jr l7747h		;7733	18 12 	. . 
	call sub_1d4ah		;7735	cd 4a 1d 	. J . 
	ret z			;7738	c8 	. 
l7739h:
	ld a,(hl)			;7739	7e 	~ 
	or a			;773a	b7 	. 
	jr z,l7747h		;773b	28 0a 	( . 
	call sub_1e96h		;773d	cd 96 1e 	. . . 
	jr c,l7747h		;7740	38 05 	8 . 
	call sub_1ecbh		;7742	cd cb 1e 	. . . 
	jr nc,l7739h		;7745	30 f2 	0 . 
l7747h:
	jp l109fh		;7747	c3 9f 10 	. . . 
	ld a,(hl)			;774a	7e 	~ 
	or a			;774b	b7 	. 
	ret z			;774c	c8 	. 
	ld a,(l22edh)		;774d	3a ed 22 	: . " 
	or a			;7750	b7 	. 
	ret			;7751	c9 	. 
	ld a,(l22efh)		;7752	3a ef 22 	: . " 
	ld hl,l22edh		;7755	21 ed 22 	! . " 
	sub (hl)			;7758	96 	. 
	ld hl,l22ebh		;7759	21 eb 22 	! . " 
	ld (hl),a			;775c	77 	w 
	xor a			;775d	af 	. 
	bit 7,(hl)		;775e	cb 7e 	. ~ 
	jr z,l7763h		;7760	28 01 	( . 
	dec a			;7762	3d 	= 
l7763h:
	inc hl			;7763	23 	# 
	ld (hl),a			;7764	77 	w 
	ret			;7765	c9 	. 
	ld c,a			;7766	4f 	O 
l7767h:
	call sub_1e5ah		;7767	cd 5a 1e 	. Z . 
	ld (022f3h),hl		;776a	22 f3 22 	" . " 
	res 1,e		;776d	cb 8b 	. . 
	push hl			;776f	e5 	. 
	push bc			;7770	c5 	. 
	ld a,c			;7771	79 	y 
	call 0076dh		;7772	cd 6d 07 	. m . 
	ld a,(l23cbh+1)		;7775	3a cc 23 	: . # 
	ld b,a			;7778	47 	G 
	ld hl,(022f3h)		;7779	2a f3 22 	* . " 
	call 007d8h		;777c	cd d8 07 	. . . 
	ld a,c			;777f	79 	y 
	call 0076dh		;7780	cd 6d 07 	. m . 
	pop bc			;7783	c1 	. 
	pop hl			;7784	e1 	. 
	bit 1,e		;7785	cb 4b 	. K 
	jr z,l778fh		;7787	28 06 	( . 
	dec hl			;7789	2b 	+ 
	ld a,(hl)			;778a	7e 	~ 
	inc hl			;778b	23 	# 
	call sub_07fdh		;778c	cd fd 07 	. . . 
l778fh:
	res 0,e		;778f	cb 83 	. . 
l7791h:
	call 008b7h		;7791	cd b7 08 	. . . 
	ld b,a			;7794	47 	G 
	push hl			;7795	e5 	. 
	ld hl,l23f7h		;7796	21 f7 23 	! . # 
	cp (hl)			;7799	be 	. 
	pop hl			;779a	e1 	. 
	jr nz,l77a3h		;779b	20 06 	  . 
	bit 0,e		;779d	cb 43 	. C 
	set 0,e		;779f	cb c3 	. . 
	jr z,l7791h		;77a1	28 ee 	( . 
l77a3h:
	bit 0,e		;77a3	cb 43 	. C 
	jr z,l77afh		;77a5	28 08 	( . 
	cp 03fh		;77a7	fe 3f 	. ? 
	jr nz,l77dah		;77a9	20 2f 	  / 
	ld b,080h		;77ab	06 80 	. . 
	jr l77dah		;77ad	18 2b 	. + 
l77afh:
	ld a,02dh		;77af	3e 2d 	> - 
	ld (l22f5h),a		;77b1	32 f5 22 	2 . " 
	ld a,b			;77b4	78 	x 
	call sub_1c2bh		;77b5	cd 2b 1c 	. + . 
	jr z,l7804h		;77b8	28 4a 	( J 
	ld a,02bh		;77ba	3e 2b 	> + 
	ld (l22f5h),a		;77bc	32 f5 22 	2 . " 
	ld a,b			;77bf	78 	x 
	call sub_1c2bh		;77c0	cd 2b 1c 	. + . 
	jr z,l7800h		;77c3	28 3b 	( ; 
	ld a,b			;77c5	78 	x 
	cp 012h		;77c6	fe 12 	. . 
	jr z,l7767h		;77c8	28 9d 	( . 
	cp 013h		;77ca	fe 13 	. . 
	jr z,l782eh		;77cc	28 60 	( ` 
	cp 015h		;77ce	fe 15 	. . 
	jr z,l77fbh		;77d0	28 29 	( ) 
	cp 00dh		;77d2	fe 0d 	. . 
	jr z,l77f8h		;77d4	28 22 	( " 
	cp 020h		;77d6	fe 20 	.   
	jr c,l7791h		;77d8	38 b7 	8 . 
l77dah:
	bit 1,e		;77da	cb 4b 	. K 
	jr z,l77e4h		;77dc	28 06 	( . 
	ld a,d			;77de	7a 	z 
	cp 020h		;77df	fe 20 	.   
	ld a,b			;77e1	78 	x 
	jr z,l7791h		;77e2	28 ad 	( . 
l77e4h:
	ld (hl),a			;77e4	77 	w 
	inc hl			;77e5	23 	# 
	inc d			;77e6	14 	. 
	ld (hl),000h		;77e7	36 00 	6 . 
	call sub_07fdh		;77e9	cd fd 07 	. . . 
	bit 1,e		;77ec	cb 4b 	. K 
	jp nz,l1d8fh		;77ee	c2 8f 1d 	. . . 
	ld d,001h		;77f1	16 01 	. . 
	set 1,e		;77f3	cb cb 	. . 
	jp l1d6fh		;77f5	c3 6f 1d 	. o . 
l77f8h:
	xor a			;77f8	af 	. 
	ld a,d			;77f9	7a 	z 
	ret			;77fa	c9 	. 
l77fbh:
	call l074ch		;77fb	cd 4c 07 	. L . 
	scf			;77fe	37 	7 
	ret			;77ff	c9 	. 
l7800h:
	ld b,009h		;7800	06 09 	. . 
	jr l77dah		;7802	18 d6 	. . 
l7804h:
	bit 1,e		;7804	cb 4b 	. K 
	jp z,01d91h		;7806	ca 91 1d 	. . . 
	ld a,d			;7809	7a 	z 
	or a			;780a	b7 	. 
	jp z,01d91h		;780b	ca 91 1d 	. . . 
	dec hl			;780e	2b 	+ 
	dec d			;780f	15 	. 
	call sub_1821h		;7810	cd 21 18 	. ! . 
	ld a,(hl)			;7813	7e 	~ 
	ld (hl),000h		;7814	36 00 	6 . 
	ld b,004h		;7816	06 04 	. . 
	cp 01bh		;7818	fe 1b 	. . 
	jr z,l7826h		;781a	28 0a 	( . 
	cp 07fh		;781c	fe 7f 	.  
	jr z,l7826h		;781e	28 06 	( . 
	ld b,001h		;7820	06 01 	. . 
	cp 020h		;7822	fe 20 	.   
	jr nc,l782bh		;7824	30 05 	0 . 
l7826h:
	call sub_1821h		;7826	cd 21 18 	. ! . 
	djnz l7826h		;7829	10 fb 	. . 
l782bh:
	jp l1d8fh		;782b	c3 8f 1d 	. . . 
l782eh:
	push hl			;782e	e5 	. 
	push bc			;782f	c5 	. 
	ld b,021h		;7830	06 21 	. ! 
	ld hl,l2266h+1		;7832	21 67 22 	! g " 
	ld de,l22a9h		;7835	11 a9 22 	. . " 
l7838h:
	ld c,(hl)			;7838	4e 	N 
	ld a,(de)			;7839	1a 	. 
	ld (hl),a			;783a	77 	w 
	ld a,c			;783b	79 	y 
	ld (de),a			;783c	12 	. 
	inc hl			;783d	23 	# 
	inc de			;783e	13 	. 
	djnz l7838h		;783f	10 f7 	. . 
	ld hl,(l22edh)		;7841	2a ed 22 	* . " 
	ld de,(l22efh)		;7844	ed 5b ef 22 	. [ . " 
	ld (l22edh),de		;7848	ed 53 ed 22 	. S . " 
	ld (l22efh),hl		;784c	22 ef 22 	" . " 
	call sub_1d52h		;784f	cd 52 1d 	. R . 
	call l074ch		;7852	cd 4c 07 	. L . 
	pop bc			;7855	c1 	. 
	pop hl			;7856	e1 	. 
	jp l1d65h+2		;7857	c3 67 1d 	. g . 
	ld hl,(l22f7h)		;785a	2a f7 22 	* . " 
	ld de,l0021h		;785d	11 21 00 	. ! . 
	ex de,hl			;7860	eb 	. 
	add hl,de			;7861	19 	. 
	ex de,hl			;7862	eb 	. 
	push bc			;7863	c5 	. 
	ld bc,l0021h		;7864	01 21 00 	. ! . 
	ldir		;7867	ed b0 	. . 
	pop bc			;7869	c1 	. 
	push hl			;786a	e5 	. 
	ld d,0ffh		;786b	16 ff 	. . 
l786dh:
	ld a,(hl)			;786d	7e 	~ 
	inc hl			;786e	23 	# 
	inc d			;786f	14 	. 
	or a			;7870	b7 	. 
	jr nz,l786dh		;7871	20 fa 	  . 
	pop hl			;7873	e1 	. 
	ret			;7874	c9 	. 
	ld hl,02288h		;7875	21 88 22 	! . " 
	ld de,l2266h+1		;7878	11 67 22 	. g " 
	ld bc,l0021h		;787b	01 21 00 	. ! . 
	push bc			;787e	c5 	. 
	ldir		;787f	ed b0 	. . 
	pop bc			;7881	c1 	. 
	ld d,h			;7882	54 	T 
	ld e,l			;7883	5d 	] 
	ld hl,l22cah		;7884	21 ca 22 	! . " 
	ldir		;7887	ed b0 	. . 
	ld a,(l22f1h)		;7889	3a f1 22 	: . " 
	ld (l22edh),a		;788c	32 ed 22 	2 . " 
	ld a,(022f3h)		;788f	3a f3 22 	: . " 
	ld (l22efh),a		;7892	32 ef 22 	2 . " 
	ret			;7895	c9 	. 
	push de			;7896	d5 	. 
	push bc			;7897	c5 	. 
	push hl			;7898	e5 	. 
	dec hl			;7899	2b 	+ 
l789ah:
	ld de,l2266h+1		;789a	11 67 22 	. g " 
l789dh:
	inc hl			;789d	23 	# 
	ld a,(hl)			;789e	7e 	~ 
	or a			;789f	b7 	. 
	jr z,l78c1h		;78a0	28 1f 	( . 
	ld a,(de)			;78a2	1a 	. 
	cp 080h		;78a3	fe 80 	. . 
	jr z,l78aah		;78a5	28 03 	( . 
	cp (hl)			;78a7	be 	. 
	jr nz,l789dh		;78a8	20 f3 	  . 
l78aah:
	push hl			;78aa	e5 	. 
l78abh:
	inc hl			;78ab	23 	# 
	inc de			;78ac	13 	. 
	ld a,(de)			;78ad	1a 	. 
	or a			;78ae	b7 	. 
	jr z,l78c6h		;78af	28 15 	( . 
	ld a,(hl)			;78b1	7e 	~ 
	or a			;78b2	b7 	. 
	jr z,l78c0h		;78b3	28 0b 	( . 
	ld a,(de)			;78b5	1a 	. 
	cp 080h		;78b6	fe 80 	. . 
	jr z,l78abh		;78b8	28 f1 	( . 
	cp (hl)			;78ba	be 	. 
	jr z,l78abh		;78bb	28 ee 	( . 
	pop hl			;78bd	e1 	. 
	jr l789ah		;78be	18 da 	. . 
l78c0h:
	pop hl			;78c0	e1 	. 
l78c1h:
	pop hl			;78c1	e1 	. 
	pop bc			;78c2	c1 	. 
	pop de			;78c3	d1 	. 
	ccf			;78c4	3f 	? 
	ret			;78c5	c9 	. 
l78c6h:
	pop hl			;78c6	e1 	. 
	ex (sp),hl			;78c7	e3 	. 
	scf			;78c8	37 	7 
	jr l78c1h		;78c9	18 f6 	. . 
	push de			;78cb	d5 	. 
	push bc			;78cc	c5 	. 
	push af			;78cd	f5 	. 
	ld (l22f7h),hl		;78ce	22 f7 22 	" . " 
	ld bc,(l22ebh)		;78d1	ed 4b eb 22 	. K . " 
	ld hl,(l2302h)		;78d5	2a 02 23 	* . # 
	add hl,bc			;78d8	09 	. 
	ld de,(02304h)		;78d9	ed 5b 04 23 	. [ . # 
	or a			;78dd	b7 	. 
	sbc hl,de		;78de	ed 52 	. R 
	jr nc,l7939h		;78e0	30 57 	0 W 
	ld a,b			;78e2	78 	x 
	or c			;78e3	b1 	. 
	jr z,l7921h		;78e4	28 3b 	( ; 
	ld hl,(l2302h)		;78e6	2a 02 23 	* . # 
	push hl			;78e9	e5 	. 
	add hl,bc			;78ea	09 	. 
	ld (l2302h),hl		;78eb	22 02 23 	" . # 
	ld hl,(l22f7h)		;78ee	2a f7 22 	* . " 
	ld de,(l22edh)		;78f1	ed 5b ed 22 	. [ . " 
	add hl,de			;78f5	19 	. 
	call sub_125eh		;78f6	cd 5e 12 	. ^ . 
	bit 7,b		;78f9	cb 78 	. x 
	jr z,l7911h		;78fb	28 14 	( . 
	add hl,bc			;78fd	09 	. 
	ld d,h			;78fe	54 	T 
	ld e,l			;78ff	5d 	] 
	or a			;7900	b7 	. 
	sbc hl,bc		;7901	ed 42 	. B 
	ex (sp),hl			;7903	e3 	. 
	pop bc			;7904	c1 	. 
	push bc			;7905	c5 	. 
	or a			;7906	b7 	. 
	sbc hl,bc		;7907	ed 42 	. B 
	ld b,h			;7909	44 	D 
	ld c,l			;790a	4d 	M 
	inc bc			;790b	03 	. 
	pop hl			;790c	e1 	. 
	ldir		;790d	ed b0 	. . 
	jr l7921h		;790f	18 10 	. . 
l7911h:
	ex de,hl			;7911	eb 	. 
	pop hl			;7912	e1 	. 
	push bc			;7913	c5 	. 
	or a			;7914	b7 	. 
	sbc hl,de		;7915	ed 52 	. R 
	ld b,h			;7917	44 	D 
	ld c,l			;7918	4d 	M 
	inc bc			;7919	03 	. 
	add hl,de			;791a	19 	. 
	pop de			;791b	d1 	. 
	ex de,hl			;791c	eb 	. 
	add hl,de			;791d	19 	. 
	ex de,hl			;791e	eb 	. 
	lddr		;791f	ed b8 	. . 
l7921h:
	ld hl,(l22f7h)		;7921	2a f7 22 	* . " 
	ld de,l22a9h		;7924	11 a9 22 	. . " 
	ex de,hl			;7927	eb 	. 
	ld bc,(l22efh)		;7928	ed 4b ef 22 	. K . " 
	ld a,b			;792c	78 	x 
	or c			;792d	b1 	. 
	jr z,l7932h		;792e	28 02 	( . 
	ldir		;7930	ed b0 	. . 
l7932h:
	ld h,d			;7932	62 	b 
	ld l,e			;7933	6b 	k 
	pop af			;7934	f1 	. 
	pop bc			;7935	c1 	. 
	pop de			;7936	d1 	. 
	or a			;7937	b7 	. 
	ret			;7938	c9 	. 
l7939h:
	call l12b0h		;7939	cd b0 12 	. . . 
	ld hl,(l22f7h)		;793c	2a f7 22 	* . " 
	pop af			;793f	f1 	. 
	pop bc			;7940	c1 	. 
	pop de			;7941	d1 	. 
	scf			;7942	37 	7 
	ret			;7943	c9 	. 
	xor a			;7944	af 	. 
	jr l7949h		;7945	18 02 	. . 
	ld a,001h		;7947	3e 01 	> . 
l7949h:
	push hl			;7949	e5 	. 
	push de			;794a	d5 	. 
	push bc			;794b	c5 	. 
	push af			;794c	f5 	. 
	ld hl,l1c12h		;794d	21 12 1c 	! . . 
	ld (hl),000h		;7950	36 00 	6 . 
	call 01bb6h		;7952	cd b6 1b 	. . . 
	jr z,l796eh		;7955	28 17 	( . 
	pop af			;7957	f1 	. 
	push af			;7958	f5 	. 
	or a			;7959	b7 	. 
	jr z,l7961h		;795a	28 05 	( . 
	call sub_0a77h		;795c	cd 77 0a 	. w . 
	jr l7964h		;795f	18 03 	. . 
l7961h:
	call sub_0b2bh		;7961	cd 2b 0b 	. + . 
l7964h:
	dec a			;7964	3d 	= 
	call z,sub_12dch		;7965	cc dc 12 	. . . 
	jr z,l796eh		;7968	28 04 	( . 
	set 1,(ix+000h)		;796a	dd cb 00 ce 	. . . . 
l796eh:
	pop af			;796e	f1 	. 
	pop bc			;796f	c1 	. 
	pop de			;7970	d1 	. 
	pop hl			;7971	e1 	. 
	ret			;7972	c9 	. 
	xor a			;7973	af 	. 
l7974h:
	jr l7983h		;7974	18 0d 	. . 
	xor a			;7976	af 	. 
	jr l798ah		;7977	18 11 	. . 
	ld a,001h		;7979	3e 01 	> . 
	jr l7983h		;797b	18 06 	. . 
	ld a,001h		;797d	3e 01 	> . 
	jr l798ah		;797f	18 09 	. . 
	ld a,002h		;7981	3e 02 	> . 
l7983h:
	ld (l22f9h),a		;7983	32 f9 22 	2 . " 
	jr l79c5h		;7986	18 3d 	. = 
	ld a,002h		;7988	3e 02 	> . 
l798ah:
	ld (l22f9h),a		;798a	32 f9 22 	2 . " 
	call sub_13deh		;798d	cd de 13 	. . . 
	jp c,l12b0h		;7990	da b0 12 	. . . 
	call sub_1104h+2		;7993	cd 06 11 	. . . 
	jr nz,l799ch		;7996	20 04 	  . 
	jp c,012b4h		;7998	da b4 12 	. . . 
	ret			;799b	c9 	. 
l799ch:
	push bc			;799c	c5 	. 
	push de			;799d	d5 	. 
	call sub_11a6h		;799e	cd a6 11 	. . . 
	ld a,(l22f9h)		;79a1	3a f9 22 	: . " 
	cp 001h		;79a4	fe 01 	. . 
	jr z,l79b1h		;79a6	28 09 	( . 
	jr c,l79aeh		;79a8	38 04 	8 . 
	pop de			;79aa	d1 	. 
	push de			;79ab	d5 	. 
	jr l79b4h		;79ac	18 06 	. . 
l79aeh:
	dec de			;79ae	1b 	. 
	jr l79b4h		;79af	18 03 	. . 
l79b1h:
	call 011bch		;79b1	cd bc 11 	. . . 
l79b4h:
	call 011f6h		;79b4	cd f6 11 	. . . 
	push de			;79b7	d5 	. 
	ldir		;79b8	ed b0 	. . 
	pop hl			;79ba	e1 	. 
	pop de			;79bb	d1 	. 
	pop bc			;79bc	c1 	. 
	ld a,0ffh		;79bd	3e ff 	> . 
	ld (l22fah),a		;79bf	32 fa 22 	2 . " 
	jp l0f9dh		;79c2	c3 9d 0f 	. . . 
l79c5h:
	call sub_13deh		;79c5	cd de 13 	. . . 
	jp c,l12b0h		;79c8	da b0 12 	. . . 
	call 01145h		;79cb	cd 45 11 	. E . 
	jr nz,l79d4h		;79ce	20 04 	  . 
	jp c,012b4h		;79d0	da b4 12 	. . . 
	ret			;79d3	c9 	. 
l79d4h:
	push hl			;79d4	e5 	. 
	push de			;79d5	d5 	. 
	push bc			;79d6	c5 	. 
	ld d,h			;79d7	54 	T 
	ld e,l			;79d8	5d 	] 
	ld b,h			;79d9	44 	D 
	ld c,l			;79da	4d 	M 
	ld hl,(l2154h+1)		;79db	2a 55 21 	* U ! 
	ld a,(l2154h)		;79de	3a 54 21 	: T ! 
	add a,l			;79e1	85 	. 
	ld l,a			;79e2	6f 	o 
	jr nc,l79e6h		;79e3	30 01 	0 . 
	inc h			;79e5	24 	$ 
l79e6h:
	ld a,(l22f9h)		;79e6	3a f9 22 	: . " 
	cp 001h		;79e9	fe 01 	. . 
	jr c,l79f4h		;79eb	38 07 	8 . 
	jr z,l79f7h		;79ed	28 08 	( . 
	ld b,h			;79ef	44 	D 
	ld c,l			;79f0	4d 	M 
	dec bc			;79f1	0b 	. 
	jr l79fah		;79f2	18 06 	. . 
l79f4h:
	inc bc			;79f4	03 	. 
	jr l79fah		;79f5	18 03 	. . 
l79f7h:
	call l11ddh		;79f7	cd dd 11 	. . . 
l79fah:
	push bc			;79fa	c5 	. 
	or a			;79fb	b7 	. 
	sbc hl,bc		;79fc	ed 42 	. B 
	ld b,h			;79fe	44 	D 
	ld c,l			;79ff	4d 	M 
	inc bc			;7a00	03 	. 
	pop hl			;7a01	e1 	. 
	call 011f6h		;7a02	cd f6 11 	. . . 
	ldir		;7a05	ed b0 	. . 
	pop bc			;7a07	c1 	. 
	pop de			;7a08	d1 	. 
	pop hl			;7a09	e1 	. 
	ld a,0ffh		;7a0a	3e ff 	> . 
	ld (l22fah),a		;7a0c	32 fa 22 	2 . " 
	jp l0f9dh		;7a0f	c3 9d 0f 	. . . 
	call 01437h		;7a12	cd 37 14 	. 7 . 
	push bc			;7a15	c5 	. 
	ld hl,l2262h+2		;7a16	21 64 22 	! d " 
	res 6,(hl)		;7a19	cb b6 	. . 
	set 7,(hl)		;7a1b	cb fe 	. . 
	set 1,(hl)		;7a1d	cb ce 	. . 
	ld de,(l214fh+1)		;7a1f	ed 5b 50 21 	. [ P ! 
	push de			;7a23	d5 	. 
	ld hl,(l2302h)		;7a24	2a 02 23 	* . # 
	inc hl			;7a27	23 	# 
	ld bc,(l2152h)		;7a28	ed 4b 52 21 	. K R ! 
	push bc			;7a2c	c5 	. 
	or a			;7a2d	b7 	. 
	sbc hl,bc		;7a2e	ed 42 	. B 
	ld b,h			;7a30	44 	D 
	ld c,l			;7a31	4d 	M 
	pop hl			;7a32	e1 	. 
	ld a,b			;7a33	78 	x 
	or c			;7a34	b1 	. 
	jr nz,l7a39h		;7a35	20 02 	  . 
	inc bc			;7a37	03 	. 
	dec hl			;7a38	2b 	+ 
l7a39h:
	push hl			;7a39	e5 	. 
	push de			;7a3a	d5 	. 
	ex de,hl			;7a3b	eb 	. 
	sbc hl,de		;7a3c	ed 52 	. R 
	ld de,(l2302h)		;7a3e	ed 5b 02 23 	. [ . # 
	add hl,de			;7a42	19 	. 
	ld (l2302h),hl		;7a43	22 02 23 	" . # 
	pop de			;7a46	d1 	. 
	pop hl			;7a47	e1 	. 
	push bc			;7a48	c5 	. 
	or a			;7a49	b7 	. 
	sbc hl,de		;7a4a	ed 52 	. R 
	ld b,h			;7a4c	44 	D 
	ld c,l			;7a4d	4d 	M 
	add hl,de			;7a4e	19 	. 
	dec hl			;7a4f	2b 	+ 
	call sub_1257h		;7a50	cd 57 12 	. W . 
	inc hl			;7a53	23 	# 
	pop bc			;7a54	c1 	. 
	ldir		;7a55	ed b0 	. . 
	pop de			;7a57	d1 	. 
	pop bc			;7a58	c1 	. 
	jp sub_0fe4h+2		;7a59	c3 e6 0f 	. . . 
	push hl			;7a5c	e5 	. 
	push de			;7a5d	d5 	. 
	ld hl,(0225ch)		;7a5e	2a 5c 22 	* \ " 
	ld de,(l2302h)		;7a61	ed 5b 02 23 	. [ . # 
	or a			;7a65	b7 	. 
	sbc hl,de		;7a66	ed 52 	. R 
	ld a,h			;7a68	7c 	| 
	or a			;7a69	b7 	. 
	ld (l22f7h),hl		;7a6a	22 f7 22 	" . " 
	ld (l22f1h),a		;7a6d	32 f1 22 	2 . " 
	pop de			;7a70	d1 	. 
	pop hl			;7a71	e1 	. 
	ret			;7a72	c9 	. 
	push hl			;7a73	e5 	. 
	ld de,l2312h		;7a74	11 12 23 	. . # 
	call sub_2142h		;7a77	cd 42 21 	. B ! 
	or a			;7a7a	b7 	. 
	sbc hl,de		;7a7b	ed 52 	. R 
	push af			;7a7d	f5 	. 
	call 01243h		;7a7e	cd 43 12 	. C . 
	pop af			;7a81	f1 	. 
	pop hl			;7a82	e1 	. 
	jr c,l7a87h		;7a83	38 02 	8 . 
	sbc hl,bc		;7a85	ed 42 	. B 
l7a87h:
	push hl			;7a87	e5 	. 
	ld a,(l22f1h)		;7a88	3a f1 22 	: . " 
	or a			;7a8b	b7 	. 
	jp z,0211bh		;7a8c	ca 1b 21 	. . ! 
	set 2,(ix+000h)		;7a8f	dd cb 00 d6 	. . . . 
	ld de,l2312h		;7a93	11 12 23 	. . # 
	call sub_2142h		;7a96	cd 42 21 	. B ! 
	ld (l22f1h),de		;7a99	ed 53 f1 22 	. S . " 
	ld hl,(0225ch)		;7a9d	2a 5c 22 	* \ " 
	ld (022f3h),hl		;7aa0	22 f3 22 	" . " 
	ld hl,(l2302h)		;7aa3	2a 02 23 	* . # 
	or a			;7aa6	b7 	. 
	sbc hl,de		;7aa7	ed 52 	. R 
	ld (l22f5h),hl		;7aa9	22 f5 22 	" . " 
l7aach:
	ld hl,(l22f1h)		;7aac	2a f1 22 	* . " 
	ld de,(l22f7h)		;7aaf	ed 5b f7 22 	. [ . " 
	or a			;7ab3	b7 	. 
	sbc hl,de		;7ab4	ed 52 	. R 
	push af			;7ab6	f5 	. 
	ld de,l230fh		;7ab7	11 0f 23 	. . # 
	call sub_2142h		;7aba	cd 42 21 	. B ! 
	pop af			;7abd	f1 	. 
	jr c,l7ac5h		;7abe	38 05 	8 . 
	or a			;7ac0	b7 	. 
	sbc hl,de		;7ac1	ed 52 	. R 
	jr nc,l7acfh		;7ac3	30 0a 	0 . 
l7ac5h:
	ld hl,(l22f1h)		;7ac5	2a f1 22 	* . " 
	or a			;7ac8	b7 	. 
	sbc hl,de		;7ac9	ed 52 	. R 
	inc hl			;7acb	23 	# 
	ld (l22f7h),hl		;7acc	22 f7 22 	" . " 
l7acfh:
	ld hl,(l22f1h)		;7acf	2a f1 22 	* . " 
	ld de,(022f3h)		;7ad2	ed 5b f3 22 	. [ . " 
	ld bc,(l22f7h)		;7ad6	ed 4b f7 22 	. K . " 
	push hl			;7ada	e5 	. 
	lddr		;7adb	ed b8 	. . 
	ld (l22f1h),hl		;7add	22 f1 22 	" . " 
	ld (022f3h),de		;7ae0	ed 53 f3 22 	. S . " 
	pop de			;7ae4	d1 	. 
	ex de,hl			;7ae5	eb 	. 
	inc hl			;7ae6	23 	# 
	inc de			;7ae7	13 	. 
	ld bc,(l22f5h)		;7ae8	ed 4b f5 22 	. K . " 
	push de			;7aec	d5 	. 
	ldir		;7aed	ed b0 	. . 
	pop hl			;7aef	e1 	. 
	dec de			;7af0	1b 	. 
	push de			;7af1	d5 	. 
	ld de,l230fh		;7af2	11 0f 23 	. . # 
	call sub_2142h		;7af5	cd 42 21 	. B ! 
	or a			;7af8	b7 	. 
	sbc hl,de		;7af9	ed 52 	. R 
	pop hl			;7afb	e1 	. 
	jr nz,l7aach		;7afc	20 ae 	  . 
	ld (l2302h),hl		;7afe	22 02 23 	" . # 
	ld hl,(022f3h)		;7b01	2a f3 22 	* . " 
	ld (02304h),hl		;7b04	22 04 23 	" . # 
	inc hl			;7b07	23 	# 
	ld (l2259h+1),hl		;7b08	22 5a 22 	" Z " 
l7b0bh:
	call 01243h		;7b0b	cd 43 12 	. C . 
	call sub_1257h		;7b0e	cd 57 12 	. W . 
	xor a			;7b11	af 	. 
	dec a			;7b12	3d 	= 
	ld (l230fh),a		;7b13	32 0f 23 	2 . # 
	ld (l2312h),a		;7b16	32 12 23 	2 . # 
	pop hl			;7b19	e1 	. 
	ret			;7b1a	c9 	. 
	call 01243h		;7b1b	cd 43 12 	. C . 
	push hl			;7b1e	e5 	. 
	push de			;7b1f	d5 	. 
	ex de,hl			;7b20	eb 	. 
	ld hl,(l2302h)		;7b21	2a 02 23 	* . # 
	or a			;7b24	b7 	. 
	sbc hl,de		;7b25	ed 52 	. R 
	ld b,h			;7b27	44 	D 
	ld c,l			;7b28	4d 	M 
	pop de			;7b29	d1 	. 
	pop hl			;7b2a	e1 	. 
	inc hl			;7b2b	23 	# 
	ldir		;7b2c	ed b0 	. . 
	dec de			;7b2e	1b 	. 
	ld (l2302h),de		;7b2f	ed 53 02 23 	. S . # 
	jr l7b0bh		;7b33	18 d6 	. . 
	ld a,(hl)			;7b35	7e 	~ 
	push de			;7b36	d5 	. 
	inc hl			;7b37	23 	# 
	ld e,(hl)			;7b38	5e 	^ 
	inc hl			;7b39	23 	# 
	ld d,(hl)			;7b3a	56 	V 
	ld h,d			;7b3b	62 	b 
	add a,e			;7b3c	83 	. 
	ld l,a			;7b3d	6f 	o 
	pop de			;7b3e	d1 	. 
	ret nc			;7b3f	d0 	. 
	inc h			;7b40	24 	$ 
	ret			;7b41	c9 	. 
	ld a,(de)			;7b42	1a 	. 
	push hl			;7b43	e5 	. 
	ex de,hl			;7b44	eb 	. 
	inc hl			;7b45	23 	# 
	ld e,(hl)			;7b46	5e 	^ 
	inc hl			;7b47	23 	# 
	ld d,(hl)			;7b48	56 	V 
	pop hl			;7b49	e1 	. 
	add a,e			;7b4a	83 	. 
	ld e,a			;7b4b	5f 	_ 
	ret nc			;7b4c	d0 	. 
	inc d			;7b4d	14 	. 
	ret			;7b4e	c9 	. 
	nop			;7b4f	00 	. 
	nop			;7b50	00 	. 
	nop			;7b51	00 	. 
	nop			;7b52	00 	. 
	nop			;7b53	00 	. 
	nop			;7b54	00 	. 
	ld e,d			;7b55	5a 	Z 
	ld hl,l2259h		;7b56	21 59 22 	! Y " 
	rst 38h			;7b59	ff 	. 
	nop			;7b5a	00 	. 
	nop			;7b5b	00 	. 
	nop			;7b5c	00 	. 
	nop			;7b5d	00 	. 
	nop			;7b5e	00 	. 
	nop			;7b5f	00 	. 
	nop			;7b60	00 	. 
	nop			;7b61	00 	. 
	nop			;7b62	00 	. 
	nop			;7b63	00 	. 
	nop			;7b64	00 	. 
	nop			;7b65	00 	. 
	nop			;7b66	00 	. 
	nop			;7b67	00 	. 
	nop			;7b68	00 	. 
	nop			;7b69	00 	. 
	nop			;7b6a	00 	. 
	nop			;7b6b	00 	. 
	nop			;7b6c	00 	. 
	nop			;7b6d	00 	. 
	nop			;7b6e	00 	. 
	nop			;7b6f	00 	. 
	nop			;7b70	00 	. 
	nop			;7b71	00 	. 
	nop			;7b72	00 	. 
	nop			;7b73	00 	. 
	nop			;7b74	00 	. 
	nop			;7b75	00 	. 
	nop			;7b76	00 	. 
	nop			;7b77	00 	. 
	nop			;7b78	00 	. 
	nop			;7b79	00 	. 
	nop			;7b7a	00 	. 
	nop			;7b7b	00 	. 
	nop			;7b7c	00 	. 
	nop			;7b7d	00 	. 
	nop			;7b7e	00 	. 
	nop			;7b7f	00 	. 
	nop			;7b80	00 	. 
	nop			;7b81	00 	. 
	nop			;7b82	00 	. 
	nop			;7b83	00 	. 
	nop			;7b84	00 	. 
	nop			;7b85	00 	. 
	nop			;7b86	00 	. 
	nop			;7b87	00 	. 
	nop			;7b88	00 	. 
	nop			;7b89	00 	. 
	nop			;7b8a	00 	. 
	nop			;7b8b	00 	. 
	nop			;7b8c	00 	. 
	nop			;7b8d	00 	. 
	nop			;7b8e	00 	. 
	nop			;7b8f	00 	. 
	nop			;7b90	00 	. 
	nop			;7b91	00 	. 
	nop			;7b92	00 	. 
	nop			;7b93	00 	. 
	nop			;7b94	00 	. 
	nop			;7b95	00 	. 
	nop			;7b96	00 	. 
	nop			;7b97	00 	. 
	nop			;7b98	00 	. 
	nop			;7b99	00 	. 
	nop			;7b9a	00 	. 
	nop			;7b9b	00 	. 
	nop			;7b9c	00 	. 
	nop			;7b9d	00 	. 
	nop			;7b9e	00 	. 
	nop			;7b9f	00 	. 
	nop			;7ba0	00 	. 
	nop			;7ba1	00 	. 
	nop			;7ba2	00 	. 
	nop			;7ba3	00 	. 
	nop			;7ba4	00 	. 
	nop			;7ba5	00 	. 
	nop			;7ba6	00 	. 
	nop			;7ba7	00 	. 
	nop			;7ba8	00 	. 
	nop			;7ba9	00 	. 
	nop			;7baa	00 	. 
	nop			;7bab	00 	. 
	nop			;7bac	00 	. 
	nop			;7bad	00 	. 
	nop			;7bae	00 	. 
	nop			;7baf	00 	. 
	nop			;7bb0	00 	. 
	nop			;7bb1	00 	. 
	nop			;7bb2	00 	. 
	nop			;7bb3	00 	. 
	nop			;7bb4	00 	. 
	nop			;7bb5	00 	. 
	nop			;7bb6	00 	. 
	nop			;7bb7	00 	. 
	nop			;7bb8	00 	. 
	nop			;7bb9	00 	. 
	nop			;7bba	00 	. 
	nop			;7bbb	00 	. 
	nop			;7bbc	00 	. 
	nop			;7bbd	00 	. 
	nop			;7bbe	00 	. 
	nop			;7bbf	00 	. 
	nop			;7bc0	00 	. 
	nop			;7bc1	00 	. 
	nop			;7bc2	00 	. 
	nop			;7bc3	00 	. 
	nop			;7bc4	00 	. 
	nop			;7bc5	00 	. 
	nop			;7bc6	00 	. 
	nop			;7bc7	00 	. 
	nop			;7bc8	00 	. 
	nop			;7bc9	00 	. 
	nop			;7bca	00 	. 
	nop			;7bcb	00 	. 
	nop			;7bcc	00 	. 
	nop			;7bcd	00 	. 
	nop			;7bce	00 	. 
	nop			;7bcf	00 	. 
	nop			;7bd0	00 	. 
	nop			;7bd1	00 	. 
	nop			;7bd2	00 	. 
	nop			;7bd3	00 	. 
	nop			;7bd4	00 	. 
	nop			;7bd5	00 	. 
	nop			;7bd6	00 	. 
	nop			;7bd7	00 	. 
	nop			;7bd8	00 	. 
	nop			;7bd9	00 	. 
	nop			;7bda	00 	. 
	nop			;7bdb	00 	. 
	nop			;7bdc	00 	. 
	nop			;7bdd	00 	. 
	nop			;7bde	00 	. 
	nop			;7bdf	00 	. 
	nop			;7be0	00 	. 
	nop			;7be1	00 	. 
	nop			;7be2	00 	. 
	nop			;7be3	00 	. 
	nop			;7be4	00 	. 
	nop			;7be5	00 	. 
	nop			;7be6	00 	. 
	nop			;7be7	00 	. 
	nop			;7be8	00 	. 
	nop			;7be9	00 	. 
	nop			;7bea	00 	. 
	nop			;7beb	00 	. 
	nop			;7bec	00 	. 
	nop			;7bed	00 	. 
	nop			;7bee	00 	. 
	nop			;7bef	00 	. 
	nop			;7bf0	00 	. 
	nop			;7bf1	00 	. 
	nop			;7bf2	00 	. 
	nop			;7bf3	00 	. 
	nop			;7bf4	00 	. 
	nop			;7bf5	00 	. 
	nop			;7bf6	00 	. 
	nop			;7bf7	00 	. 
	nop			;7bf8	00 	. 
	nop			;7bf9	00 	. 
	nop			;7bfa	00 	. 
	nop			;7bfb	00 	. 
	nop			;7bfc	00 	. 
	nop			;7bfd	00 	. 
	nop			;7bfe	00 	. 
	nop			;7bff	00 	. 
	nop			;7c00	00 	. 
	nop			;7c01	00 	. 
	nop			;7c02	00 	. 
	nop			;7c03	00 	. 
	nop			;7c04	00 	. 
	nop			;7c05	00 	. 
	nop			;7c06	00 	. 
	nop			;7c07	00 	. 
	nop			;7c08	00 	. 
	nop			;7c09	00 	. 
	nop			;7c0a	00 	. 
	nop			;7c0b	00 	. 
	nop			;7c0c	00 	. 
	nop			;7c0d	00 	. 
	nop			;7c0e	00 	. 
	nop			;7c0f	00 	. 
	nop			;7c10	00 	. 
	nop			;7c11	00 	. 
	nop			;7c12	00 	. 
	nop			;7c13	00 	. 
	nop			;7c14	00 	. 
	nop			;7c15	00 	. 
	nop			;7c16	00 	. 
	nop			;7c17	00 	. 
	nop			;7c18	00 	. 
	nop			;7c19	00 	. 
	nop			;7c1a	00 	. 
	nop			;7c1b	00 	. 
	nop			;7c1c	00 	. 
	nop			;7c1d	00 	. 
	nop			;7c1e	00 	. 
	nop			;7c1f	00 	. 
	nop			;7c20	00 	. 
	nop			;7c21	00 	. 
	nop			;7c22	00 	. 
	nop			;7c23	00 	. 
	nop			;7c24	00 	. 
	nop			;7c25	00 	. 
	nop			;7c26	00 	. 
	nop			;7c27	00 	. 
	nop			;7c28	00 	. 
	nop			;7c29	00 	. 
	nop			;7c2a	00 	. 
	nop			;7c2b	00 	. 
	nop			;7c2c	00 	. 
	nop			;7c2d	00 	. 
	nop			;7c2e	00 	. 
	nop			;7c2f	00 	. 
	nop			;7c30	00 	. 
	nop			;7c31	00 	. 
	nop			;7c32	00 	. 
	nop			;7c33	00 	. 
	nop			;7c34	00 	. 
	nop			;7c35	00 	. 
	nop			;7c36	00 	. 
	nop			;7c37	00 	. 
	nop			;7c38	00 	. 
	nop			;7c39	00 	. 
	nop			;7c3a	00 	. 
	nop			;7c3b	00 	. 
	nop			;7c3c	00 	. 
	nop			;7c3d	00 	. 
	nop			;7c3e	00 	. 
	nop			;7c3f	00 	. 
	nop			;7c40	00 	. 
	nop			;7c41	00 	. 
	nop			;7c42	00 	. 
	nop			;7c43	00 	. 
	nop			;7c44	00 	. 
	nop			;7c45	00 	. 
	nop			;7c46	00 	. 
	nop			;7c47	00 	. 
	nop			;7c48	00 	. 
	nop			;7c49	00 	. 
	nop			;7c4a	00 	. 
	nop			;7c4b	00 	. 
	nop			;7c4c	00 	. 
	nop			;7c4d	00 	. 
	nop			;7c4e	00 	. 
	nop			;7c4f	00 	. 
	nop			;7c50	00 	. 
	nop			;7c51	00 	. 
	nop			;7c52	00 	. 
	nop			;7c53	00 	. 
	nop			;7c54	00 	. 
	nop			;7c55	00 	. 
	nop			;7c56	00 	. 
	nop			;7c57	00 	. 
	nop			;7c58	00 	. 
	nop			;7c59	00 	. 
	nop			;7c5a	00 	. 
	nop			;7c5b	00 	. 
	nop			;7c5c	00 	. 
	nop			;7c5d	00 	. 
	nop			;7c5e	00 	. 
	nop			;7c5f	00 	. 
	nop			;7c60	00 	. 
	nop			;7c61	00 	. 
	nop			;7c62	00 	. 
	nop			;7c63	00 	. 
	nop			;7c64	00 	. 
	nop			;7c65	00 	. 
	nop			;7c66	00 	. 
	nop			;7c67	00 	. 
	nop			;7c68	00 	. 
	nop			;7c69	00 	. 
	nop			;7c6a	00 	. 
	nop			;7c6b	00 	. 
	nop			;7c6c	00 	. 
	nop			;7c6d	00 	. 
	nop			;7c6e	00 	. 
	nop			;7c6f	00 	. 
	nop			;7c70	00 	. 
	nop			;7c71	00 	. 
	nop			;7c72	00 	. 
	nop			;7c73	00 	. 
	nop			;7c74	00 	. 
	nop			;7c75	00 	. 
	nop			;7c76	00 	. 
	nop			;7c77	00 	. 
	nop			;7c78	00 	. 
	nop			;7c79	00 	. 
l7c7ah:
	nop			;7c7a	00 	. 
	nop			;7c7b	00 	. 
	nop			;7c7c	00 	. 
	nop			;7c7d	00 	. 
	nop			;7c7e	00 	. 
	nop			;7c7f	00 	. 
	nop			;7c80	00 	. 
	nop			;7c81	00 	. 
	nop			;7c82	00 	. 
	nop			;7c83	00 	. 
	nop			;7c84	00 	. 
	nop			;7c85	00 	. 
	nop			;7c86	00 	. 
	nop			;7c87	00 	. 
	nop			;7c88	00 	. 
	nop			;7c89	00 	. 
	nop			;7c8a	00 	. 
	nop			;7c8b	00 	. 
	nop			;7c8c	00 	. 
	nop			;7c8d	00 	. 
	nop			;7c8e	00 	. 
	nop			;7c8f	00 	. 
	nop			;7c90	00 	. 
	nop			;7c91	00 	. 
	nop			;7c92	00 	. 
	nop			;7c93	00 	. 
	nop			;7c94	00 	. 
	nop			;7c95	00 	. 
	nop			;7c96	00 	. 
	nop			;7c97	00 	. 
	nop			;7c98	00 	. 
	nop			;7c99	00 	. 
	nop			;7c9a	00 	. 
	nop			;7c9b	00 	. 
	nop			;7c9c	00 	. 
	nop			;7c9d	00 	. 
	nop			;7c9e	00 	. 
	nop			;7c9f	00 	. 
	nop			;7ca0	00 	. 
	nop			;7ca1	00 	. 
	nop			;7ca2	00 	. 
	nop			;7ca3	00 	. 
	nop			;7ca4	00 	. 
	nop			;7ca5	00 	. 
	nop			;7ca6	00 	. 
	nop			;7ca7	00 	. 
	nop			;7ca8	00 	. 
	nop			;7ca9	00 	. 
	nop			;7caa	00 	. 
	nop			;7cab	00 	. 
	nop			;7cac	00 	. 
	nop			;7cad	00 	. 
	nop			;7cae	00 	. 
	nop			;7caf	00 	. 
	nop			;7cb0	00 	. 
	nop			;7cb1	00 	. 
	nop			;7cb2	00 	. 
	nop			;7cb3	00 	. 
	nop			;7cb4	00 	. 
	nop			;7cb5	00 	. 
	nop			;7cb6	00 	. 
	nop			;7cb7	00 	. 
	nop			;7cb8	00 	. 
	nop			;7cb9	00 	. 
	nop			;7cba	00 	. 
	nop			;7cbb	00 	. 
	nop			;7cbc	00 	. 
	nop			;7cbd	00 	. 
	nop			;7cbe	00 	. 
	nop			;7cbf	00 	. 
	nop			;7cc0	00 	. 
	nop			;7cc1	00 	. 
	nop			;7cc2	00 	. 
	nop			;7cc3	00 	. 
	nop			;7cc4	00 	. 
	nop			;7cc5	00 	. 
	nop			;7cc6	00 	. 
	nop			;7cc7	00 	. 
	nop			;7cc8	00 	. 
	nop			;7cc9	00 	. 
	nop			;7cca	00 	. 
	nop			;7ccb	00 	. 
	nop			;7ccc	00 	. 
	nop			;7ccd	00 	. 
	nop			;7cce	00 	. 
	nop			;7ccf	00 	. 
	nop			;7cd0	00 	. 
	nop			;7cd1	00 	. 
	nop			;7cd2	00 	. 
	nop			;7cd3	00 	. 
	nop			;7cd4	00 	. 
	nop			;7cd5	00 	. 
	nop			;7cd6	00 	. 
	nop			;7cd7	00 	. 
	nop			;7cd8	00 	. 
	nop			;7cd9	00 	. 
	nop			;7cda	00 	. 
	nop			;7cdb	00 	. 
	nop			;7cdc	00 	. 
	nop			;7cdd	00 	. 
	nop			;7cde	00 	. 
	nop			;7cdf	00 	. 
	nop			;7ce0	00 	. 
	nop			;7ce1	00 	. 
	nop			;7ce2	00 	. 
	nop			;7ce3	00 	. 
	nop			;7ce4	00 	. 
	nop			;7ce5	00 	. 
	nop			;7ce6	00 	. 
	nop			;7ce7	00 	. 
	nop			;7ce8	00 	. 
	nop			;7ce9	00 	. 
	nop			;7cea	00 	. 
	nop			;7ceb	00 	. 
	nop			;7cec	00 	. 
	nop			;7ced	00 	. 
	nop			;7cee	00 	. 
	nop			;7cef	00 	. 
	nop			;7cf0	00 	. 
	nop			;7cf1	00 	. 
	nop			;7cf2	00 	. 
	nop			;7cf3	00 	. 
	nop			;7cf4	00 	. 
	nop			;7cf5	00 	. 
	nop			;7cf6	00 	. 
	nop			;7cf7	00 	. 
	nop			;7cf8	00 	. 
	nop			;7cf9	00 	. 
	nop			;7cfa	00 	. 
	ld bc,l0000h		;7cfb	01 00 00 	. . . 
	nop			;7cfe	00 	. 
	nop			;7cff	00 	. 
	nop			;7d00	00 	. 
	nop			;7d01	00 	. 
	nop			;7d02	00 	. 
	nop			;7d03	00 	. 
	nop			;7d04	00 	. 
	nop			;7d05	00 	. 
	xor h			;7d06	ac 	. 
	inc h			;7d07	24 	$ 
	nop			;7d08	00 	. 
	nop			;7d09	00 	. 
	nop			;7d0a	00 	. 
	nop			;7d0b	00 	. 
	rst 38h			;7d0c	ff 	. 
	nop			;7d0d	00 	. 
	nop			;7d0e	00 	. 
	rst 38h			;7d0f	ff 	. 
	nop			;7d10	00 	. 
	nop			;7d11	00 	. 
	rst 38h			;7d12	ff 	. 
	nop			;7d13	00 	. 
	nop			;7d14	00 	. 
	inc e			;7d15	1c 	. 
	inc hl			;7d16	23 	# 
	nop			;7d17	00 	. 
	nop			;7d18	00 	. 
	nop			;7d19	00 	. 
	nop			;7d1a	00 	. 
	nop			;7d1b	00 	. 
	nop			;7d1c	00 	. 
	nop			;7d1d	00 	. 
	nop			;7d1e	00 	. 
	nop			;7d1f	00 	. 
	nop			;7d20	00 	. 
	nop			;7d21	00 	. 
	nop			;7d22	00 	. 
	nop			;7d23	00 	. 
	nop			;7d24	00 	. 
	nop			;7d25	00 	. 
	nop			;7d26	00 	. 
	nop			;7d27	00 	. 
	nop			;7d28	00 	. 
	nop			;7d29	00 	. 
	nop			;7d2a	00 	. 
	nop			;7d2b	00 	. 
	nop			;7d2c	00 	. 
	nop			;7d2d	00 	. 
	nop			;7d2e	00 	. 
	nop			;7d2f	00 	. 
	nop			;7d30	00 	. 
	ld b,a			;7d31	47 	G 
	rra			;7d32	1f 	. 
	ld b,(hl)			;7d33	46 	F 
	dec d			;7d34	15 	. 
	ld b,(hl)			;7d35	46 	F 
l7d36h:
	dec d			;7d36	15 	. 
	ld d,b			;7d37	50 	P 
	dec d			;7d38	15 	. 
	ld h,h			;7d39	64 	d 
	dec d			;7d3a	15 	. 
	sub a			;7d3b	97 	. 
	dec d			;7d3c	15 	. 
	cp l			;7d3d	bd 	. 
	dec d			;7d3e	15 	. 
	call nc,0f315h		;7d3f	d4 15 f3 	. . . 
	dec d			;7d42	15 	. 
	rst 30h			;7d43	f7 	. 
	dec d			;7d44	15 	. 
	ld bc,l0f16h		;7d45	01 16 0f 	. . . 
	ld d,01ah		;7d48	16 1a 	. . 
	ld d,039h		;7d4a	16 39 	. 9 
	ld d,077h		;7d4c	16 77 	. w 
	ld d,0a5h		;7d4e	16 a5 	. . 
	ld d,0cah		;7d50	16 ca 	. . 
	ld d,0e7h		;7d52	16 e7 	. . 
	ld d,04dh		;7d54	16 4d 	. M 
	add hl,de			;7d56	19 	. 
l7d57h:
	or 017h		;7d57	f6 17 	. . 
	call m,0b717h		;7d59	fc 17 b7 	. . . 
	rla			;7d5c	17 	. 
	call nz,0cf17h		;7d5d	c4 17 cf 	. . . 
	rla			;7d60	17 	. 
	ret c			;7d61	d8 	. 
	rla			;7d62	17 	. 
	jp m,l0a19h		;7d63	fa 19 0a 	. . . 
	ld a,(de)			;7d66	1a 	. 
	ld a,c			;7d67	79 	y 
	ld a,(de)			;7d68	1a 	. 
	adc a,a			;7d69	8f 	. 
	ld a,(de)			;7d6a	1a 	. 
	adc a,l			;7d6b	8d 	. 
	dec de			;7d6c	1b 	. 
	ld b,l			;7d6d	45 	E 
	inc e			;7d6e	1c 	. 
	add hl,hl			;7d6f	29 	) 
	rla			;7d70	17 	. 
	ld (0e917h),a		;7d71	32 17 e9 	2 . . 
	inc e			;7d74	1c 	. 
	jr l7d94h		;7d75	18 1d 	. . 
	dec h			;7d77	25 	% 
	dec e			;7d78	1d 	. 
	dec (hl)			;7d79	35 	5 
	dec e			;7d7a	1d 	. 
	add a,e			;7d7b	83 	. 
	jr l7d57h		;7d7c	18 d9 	. . 
	jr $-41		;7d7e	18 d5 	. . 
	jr l7dc6h		;7d80	18 44 	. D 
	rra			;7d82	1f 	. 
	ld (de),a			;7d83	12 	. 
	jr nz,l7d36h		;7d84	20 b0 	  . 
	rla			;7d86	17 	. 
	dec a			;7d87	3d 	= 
	dec d			;7d88	15 	. 
	jr c,l7da2h		;7d89	38 17 	8 . 
	halt			;7d8b	76 	v 
	rra			;7d8c	1f 	. 
	ld (hl),e			;7d8d	73 	s 
	rra			;7d8e	1f 	. 
	ld a,l			;7d8f	7d 	} 
	rra			;7d90	1f 	. 
	ld a,c			;7d91	79 	y 
	rra			;7d92	1f 	. 
	adc a,b			;7d93	88 	. 
l7d94h:
	rra			;7d94	1f 	. 
	add a,c			;7d95	81 	. 
	rra			;7d96	1f 	. 
	dec c			;7d97	0d 	. 
	add hl,bc			;7d98	09 	. 
	jr nz,l7dbdh		;7d99	20 22 	  " 
	jr z,l7dc6h		;7d9b	28 29 	( ) 
	ld e,e			;7d9d	5b 	[ 
	ld e,l			;7d9e	5d 	] 
	ld a,e			;7d9f	7b 	{ 
	ld a,l			;7da0	7d 	} 
	dec a			;7da1	3d 	= 
l7da2h:
	dec hl			;7da2	2b 	+ 
	dec l			;7da3	2d 	- 
	ld hl,(03c2fh)		;7da4	2a 2f 3c 	* / < 
	ld a,05eh		;7da7	3e 5e 	> ^ 
	dec sp			;7da9	3b 	; 
	ld a,(l232ch)		;7daa	3a 2c 23 	: , # 
	inc h			;7dad	24 	$ 
	ld h,05ch		;7dae	26 5c 	& \ 
	nop			;7db0	00 	. 
	nop			;7db1	00 	. 
	nop			;7db2	00 	. 
	nop			;7db3	00 	. 
	nop			;7db4	00 	. 
	nop			;7db5	00 	. 
	ld b,l			;7db6	45 	E 
	ld b,h			;7db7	44 	D 
	jr c,l7deah		;7db8	38 30 	8 0 
	ld l,048h		;7dba	2e 48 	. H 
	ld c,h			;7dbc	4c 	L 
l7dbdh:
	ld d,b			;7dbd	50 	P 
	nop			;7dbe	00 	. 
	ld c,h			;7dbf	4c 	L 
	ld d,b			;7dc0	50 	P 
	nop			;7dc1	00 	. 
	nop			;7dc2	00 	. 
	xor h			;7dc3	ac 	. 
	inc h			;7dc4	24 	$ 
	nop			;7dc5	00 	. 
l7dc6h:
	nop			;7dc6	00 	. 
	jr nz,l7de9h		;7dc7	20 20 	    
	ld d,b			;7dc9	50 	P 
	jr l7de9h		;7dca	18 1d 	. . 
	jr nz,$+10		;7dcc	20 08 	  . 
	ld (bc),a			;7dce	02 	. 
	ld (sub_1a0eh+2),a		;7dcf	32 10 1a 	2 . . 
	add hl,hl			;7dd2	29 	) 
	adc a,e			;7dd3	8b 	. 
	xor l			;7dd4	ad 	. 
	ld (l0080h),hl		;7dd5	22 80 00 	" . . 
	ld a,(bc)			;7dd8	0a 	. 
	nop			;7dd9	00 	. 
	nop			;7dda	00 	. 
	rst 38h			;7ddb	ff 	. 
	ld (bc),a			;7ddc	02 	. 
	dec de			;7ddd	1b 	. 
	ld e,c			;7dde	59 	Y 
	nop			;7ddf	00 	. 
	nop			;7de0	00 	. 
	ld bc,l001ah		;7de1	01 1a 00 	. . . 
	nop			;7de4	00 	. 
	nop			;7de5	00 	. 
	nop			;7de6	00 	. 
	nop			;7de7	00 	. 
	nop			;7de8	00 	. 
l7de9h:
	nop			;7de9	00 	. 
l7deah:
	nop			;7dea	00 	. 
	nop			;7deb	00 	. 
	nop			;7dec	00 	. 
	nop			;7ded	00 	. 
	nop			;7dee	00 	. 
	nop			;7def	00 	. 
	nop			;7df0	00 	. 
	nop			;7df1	00 	. 
	nop			;7df2	00 	. 
	nop			;7df3	00 	. 
	nop			;7df4	00 	. 
	inc l			;7df5	2c 	, 
	nop			;7df6	00 	. 
	djnz l7df9h		;7df7	10 00 	. . 
l7df9h:
	nop			;7df9	00 	. 
	nop			;7dfa	00 	. 
	nop			;7dfb	00 	. 
	nop			;7dfc	00 	. 
	nop			;7dfd	00 	. 
	nop			;7dfe	00 	. 
	nop			;7dff	00 	. 
	nop			;7e00	00 	. 
	nop			;7e01	00 	. 
	nop			;7e02	00 	. 
	nop			;7e03	00 	. 
	nop			;7e04	00 	. 
	nop			;7e05	00 	. 
	nop			;7e06	00 	. 
	nop			;7e07	00 	. 
	nop			;7e08	00 	. 
	nop			;7e09	00 	. 
	nop			;7e0a	00 	. 
	nop			;7e0b	00 	. 
	nop			;7e0c	00 	. 
	nop			;7e0d	00 	. 
	nop			;7e0e	00 	. 
	nop			;7e0f	00 	. 
	nop			;7e10	00 	. 
	nop			;7e11	00 	. 
	nop			;7e12	00 	. 
	nop			;7e13	00 	. 
	nop			;7e14	00 	. 
	nop			;7e15	00 	. 
	nop			;7e16	00 	. 
	nop			;7e17	00 	. 
	nop			;7e18	00 	. 
	nop			;7e19	00 	. 
	nop			;7e1a	00 	. 
	nop			;7e1b	00 	. 
	nop			;7e1c	00 	. 
	nop			;7e1d	00 	. 
	nop			;7e1e	00 	. 
	nop			;7e1f	00 	. 
	nop			;7e20	00 	. 
	dec bc			;7e21	0b 	. 
	ld b,(hl)			;7e22	46 	F 
	nop			;7e23	00 	. 
	inc de			;7e24	13 	. 
	nop			;7e25	00 	. 
	ex af,af'			;7e26	08 	. 
	nop			;7e27	00 	. 
	inc b			;7e28	04 	. 
	nop			;7e29	00 	. 
	ld bc,l0600h		;7e2a	01 00 06 	. . . 
	nop			;7e2d	00 	. 
	rrca			;7e2e	0f 	. 
	ld d,e			;7e2f	53 	S 
	nop			;7e30	00 	. 
	rrca			;7e31	0f 	. 
	ld b,h			;7e32	44 	D 
	nop			;7e33	00 	. 
	ld de,l0053h		;7e34	11 53 00 	. S . 
	ld de,l0044h		;7e37	11 44 00 	. D . 
	dec b			;7e3a	05 	. 
	nop			;7e3b	00 	. 
	jr l7e3eh		;7e3c	18 00 	. . 
l7e3eh:
	rrca			;7e3e	0f 	. 
	ld b,l			;7e3f	45 	E 
	nop			;7e40	00 	. 
	rrca			;7e41	0f 	. 
	ld e,b			;7e42	58 	X 
	nop			;7e43	00 	. 
	ld (de),a			;7e44	12 	. 
	nop			;7e45	00 	. 
	inc bc			;7e46	03 	. 
	nop			;7e47	00 	. 
	ld de,00052h		;7e48	11 52 00 	. R . 
	ld de,l0043h		;7e4b	11 43 00 	. C . 
	rrca			;7e4e	0f 	. 
	ld b,a			;7e4f	47 	G 
	nop			;7e50	00 	. 
	ld de,l0042h		;7e51	11 42 00 	. B . 
	ld de,l004bh		;7e54	11 4b 00 	. K . 
	ld d,000h		;7e57	16 00 	. . 
	rrca			;7e59	0f 	. 
	ld b,(hl)			;7e5a	46 	F 
	nop			;7e5b	00 	. 
	dec bc			;7e5c	0b 	. 
	ld b,d			;7e5d	42 	B 
	nop			;7e5e	00 	. 
	dec bc			;7e5f	0b 	. 
	ld c,e			;7e60	4b 	K 
	nop			;7e61	00 	. 
	dec bc			;7e62	0b 	. 
	ld d,(hl)			;7e63	56 	V 
	nop			;7e64	00 	. 
	dec bc			;7e65	0b 	. 
	ld b,e			;7e66	43 	C 
	nop			;7e67	00 	. 
	dec bc			;7e68	0b 	. 
	ld e,c			;7e69	59 	Y 
	nop			;7e6a	00 	. 
	rrca			;7e6b	0f 	. 
	ld d,b			;7e6c	50 	P 
	nop			;7e6d	00 	. 
	dec bc			;7e6e	0b 	. 
	ld d,a			;7e6f	57 	W 
	nop			;7e70	00 	. 
	dec bc			;7e71	0b 	. 
	ld d,d			;7e72	52 	R 
	nop			;7e73	00 	. 
	dec bc			;7e74	0b 	. 
	jr nc,l7e77h		;7e75	30 00 	0 . 
l7e77h:
	ld de,l0030h		;7e77	11 30 00 	. 0 . 
	ld de,l0046h		;7e7a	11 46 00 	. F . 
	inc c			;7e7d	0c 	. 
	nop			;7e7e	00 	. 
	rrca			;7e7f	0f 	. 
	ld c,h			;7e80	4c 	L 
	nop			;7e81	00 	. 
	rrca			;7e82	0f 	. 
	ld b,c			;7e83	41 	A 
	nop			;7e84	00 	. 
	dec bc			;7e85	0b 	. 
	ld d,c			;7e86	51 	Q 
	nop			;7e87	00 	. 
	rrca			;7e88	0f 	. 
	ld d,c			;7e89	51 	Q 
	nop			;7e8a	00 	. 
	dec bc			;7e8b	0b 	. 
	ld e,b			;7e8c	58 	X 
	nop			;7e8d	00 	. 
	dec bc			;7e8e	0b 	. 
	ld c,d			;7e8f	4a 	J 
	nop			;7e90	00 	. 
	add hl,de			;7e91	19 	. 
	nop			;7e92	00 	. 
	rrca			;7e93	0f 	. 
	ld c,c			;7e94	49 	I 
	nop			;7e95	00 	. 
	add hl,bc			;7e96	09 	. 
	nop			;7e97	00 	. 
	rrca			;7e98	0f 	. 
	ld d,d			;7e99	52 	R 
	nop			;7e9a	00 	. 
	ld a,a			;7e9b	7f 	 
	nop			;7e9c	00 	. 
	rlca			;7e9d	07 	. 
	nop			;7e9e	00 	. 
	rrca			;7e9f	0f 	. 
	ld d,h			;7ea0	54 	T 
	nop			;7ea1	00 	. 
	inc d			;7ea2	14 	. 
	nop			;7ea3	00 	. 
	ld de,l007fh		;7ea4	11 7f 00 	.  . 
	ld de,l0059h		;7ea7	11 59 00 	. Y . 
	nop			;7eaa	00 	. 
	call 00ceeh		;7eab	cd ee 0c 	. . . 
	call sub_0d25h		;7eae	cd 25 0d 	. % . 
	ret c			;7eb1	d8 	. 
	ld c,013h		;7eb2	0e 13 	. . 
	jr l7ef5h		;7eb4	18 3f 	. ? 
	push hl			;7eb6	e5 	. 
	call sub_0d19h		;7eb7	cd 19 0d 	. . . 
	jr c,l7efeh		;7eba	38 42 	8 B 
	ld de,00e6fh		;7ebc	11 6f 0e 	. o . 
	ld hl,00b8ch		;7ebf	21 8c 0b 	! . . 
	call 00d05h		;7ec2	cd 05 0d 	. . . 
	jr z,l7efeh		;7ec5	28 37 	( 7 
	push de			;7ec7	d5 	. 
	ld c,011h		;7ec8	0e 11 	. . 
	call sub_0e55h		;7eca	cd 55 0e 	. U . 
	inc a			;7ecd	3c 	< 
	pop de			;7ece	d1 	. 
	pop bc			;7ecf	c1 	. 
	ret z			;7ed0	c8 	. 
	push bc			;7ed1	c5 	. 
	push de			;7ed2	d5 	. 
	call 00e1fh		;7ed3	cd 1f 0e 	. . . 
	pop de			;7ed6	d1 	. 
	call sub_0b82h		;7ed7	cd 82 0b 	. . . 
	ld c,013h		;7eda	0e 13 	. . 
	call sub_0e55h		;7edc	cd 55 0e 	. U . 
	pop hl			;7edf	e1 	. 
	call sub_0d19h		;7ee0	cd 19 0d 	. . . 
	ld de,00e76h		;7ee3	11 76 0e 	. v . 
	ld hl,l0e66h		;7ee6	21 66 0e 	! f . 
	xor a			;7ee9	af 	. 
	ld (de),a			;7eea	12 	. 
	ld bc,l0008h+1		;7eeb	01 09 00 	. . . 
	ldir		;7eee	ed b0 	. . 
	call sub_0b82h		;7ef0	cd 82 0b 	. . . 
	ld c,017h		;7ef3	0e 17 	. . 
l7ef5h:
	call sub_0e55h		;7ef5	cd 55 0e 	. U . 
	inc a			;7ef8	3c 	< 
	ld a,001h		;7ef9	3e 01 	> . 
	ret z			;7efb	c8 	. 
	xor a			;7efc	af 	. 
	ret			;7efd	c9 	. 
l7efeh:
	pop hl			;7efe	e1 	. 
	ld a,01ah		;7eff	3e 1a 	> . 
	nop			;7f01	00 	. 
	rrca			;7f02	0f 	. 
	ld b,c			;7f03	41 	A 
	nop			;7f04	00 	. 
	dec bc			;7f05	0b 	. 
	ld d,c			;7f06	51 	Q 
	nop			;7f07	00 	. 
	rrca			;7f08	0f 	. 
	ld d,c			;7f09	51 	Q 
	nop			;7f0a	00 	. 
	dec bc			;7f0b	0b 	. 
	ld e,b			;7f0c	58 	X 
	nop			;7f0d	00 	. 
	dec bc			;7f0e	0b 	. 
	ld c,d			;7f0f	4a 	J 
	nop			;7f10	00 	. 
	add hl,de			;7f11	19 	. 
	nop			;7f12	00 	. 
	rrca			;7f13	0f 	. 
	ld c,c			;7f14	49 	I 
	nop			;7f15	00 	. 
	add hl,bc			;7f16	09 	. 
	nop			;7f17	00 	. 
	rrca			;7f18	0f 	. 
	ld d,d			;7f19	52 	R 
	nop			;7f1a	00 	. 
	ld a,a			;7f1b	7f 	 
	nop			;7f1c	00 	. 
	rlca			;7f1d	07 	. 
	nop			;7f1e	00 	. 
	rrca			;7f1f	0f 	. 
	ld d,h			;7f20	54 	T 
	nop			;7f21	00 	. 
	inc d			;7f22	14 	. 
	nop			;7f23	00 	. 
	ld de,l007fh		;7f24	11 7f 00 	.  . 
	ld de,l0059h		;7f27	11 59 00 	. Y . 
	nop			;7f2a	00 	. 
	call 00ceeh		;7f2b	cd ee 0c 	. . . 
	call sub_0d25h		;7f2e	cd 25 0d 	. % . 
	ret c			;7f31	d8 	. 
	ld c,013h		;7f32	0e 13 	. . 
	jr l7f75h		;7f34	18 3f 	. ? 
	push hl			;7f36	e5 	. 
	call sub_0d19h		;7f37	cd 19 0d 	. . . 
	jr c,l7f7eh		;7f3a	38 42 	8 B 
	ld de,00e6fh		;7f3c	11 6f 0e 	. o . 
	ld hl,00b8ch		;7f3f	21 8c 0b 	! . . 
	call 00d05h		;7f42	cd 05 0d 	. . . 
	jr z,l7f7eh		;7f45	28 37 	( 7 
	push de			;7f47	d5 	. 
	ld c,011h		;7f48	0e 11 	. . 
	call sub_0e55h		;7f4a	cd 55 0e 	. U . 
	inc a			;7f4d	3c 	< 
	pop de			;7f4e	d1 	. 
	pop bc			;7f4f	c1 	. 
	ret z			;7f50	c8 	. 
	push bc			;7f51	c5 	. 
	push de			;7f52	d5 	. 
	call 00e1fh		;7f53	cd 1f 0e 	. . . 
	pop de			;7f56	d1 	. 
	call sub_0b82h		;7f57	cd 82 0b 	. . . 
	ld c,013h		;7f5a	0e 13 	. . 
	call sub_0e55h		;7f5c	cd 55 0e 	. U . 
	pop hl			;7f5f	e1 	. 
	call sub_0d19h		;7f60	cd 19 0d 	. . . 
	ld de,00e76h		;7f63	11 76 0e 	. v . 
	ld hl,l0e66h		;7f66	21 66 0e 	! f . 
	xor a			;7f69	af 	. 
	ld (de),a			;7f6a	12 	. 
	ld bc,l0008h+1		;7f6b	01 09 00 	. . . 
	ldir		;7f6e	ed b0 	. . 
	call sub_0b82h		;7f70	cd 82 0b 	. . . 
	ld c,017h		;7f73	0e 17 	. . 
l7f75h:
	call sub_0e55h		;7f75	cd 55 0e 	. U . 
	inc a			;7f78	3c 	< 
	ld a,001h		;7f79	3e 01 	> . 
	ret z			;7f7b	c8 	. 
	xor a			;7f7c	af 	. 
	ret			;7f7d	c9 	. 
l7f7eh:
	pop hl			;7f7e	e1 	. 
	ld a,000h		;7f7f	3e 00 	> . 
	nop			;7f81	00 	. 
	nop			;7f82	00 	. 
	nop			;7f83	00 	. 
	nop			;7f84	00 	. 
	nop			;7f85	00 	. 
	nop			;7f86	00 	. 
	nop			;7f87	00 	. 
	nop			;7f88	00 	. 
	nop			;7f89	00 	. 
	nop			;7f8a	00 	. 
	nop			;7f8b	00 	. 
	nop			;7f8c	00 	. 
	nop			;7f8d	00 	. 
l7f8eh:
	nop			;7f8e	00 	. 
	nop			;7f8f	00 	. 
	nop			;7f90	00 	. 
	nop			;7f91	00 	. 
	nop			;7f92	00 	. 
	nop			;7f93	00 	. 
	nop			;7f94	00 	. 
	nop			;7f95	00 	. 
	nop			;7f96	00 	. 
	nop			;7f97	00 	. 
	nop			;7f98	00 	. 
	nop			;7f99	00 	. 
	nop			;7f9a	00 	. 
	nop			;7f9b	00 	. 
	nop			;7f9c	00 	. 
	nop			;7f9d	00 	. 
	nop			;7f9e	00 	. 
	nop			;7f9f	00 	. 
	nop			;7fa0	00 	. 
	nop			;7fa1	00 	. 
	nop			;7fa2	00 	. 
	nop			;7fa3	00 	. 
	nop			;7fa4	00 	. 
	nop			;7fa5	00 	. 
	nop			;7fa6	00 	. 
	nop			;7fa7	00 	. 
	nop			;7fa8	00 	. 
	nop			;7fa9	00 	. 
	nop			;7faa	00 	. 
	nop			;7fab	00 	. 
	nop			;7fac	00 	. 
	nop			;7fad	00 	. 
	nop			;7fae	00 	. 
	nop			;7faf	00 	. 
	nop			;7fb0	00 	. 
	nop			;7fb1	00 	. 
	nop			;7fb2	00 	. 
	nop			;7fb3	00 	. 
	nop			;7fb4	00 	. 
	nop			;7fb5	00 	. 
	nop			;7fb6	00 	. 
	nop			;7fb7	00 	. 
	nop			;7fb8	00 	. 
	nop			;7fb9	00 	. 
	nop			;7fba	00 	. 
	ld (bc),a			;7fbb	02 	. 
	ld c,c			;7fbc	49 	I 
	inc b			;7fbd	04 	. 
	nop			;7fbe	00 	. 
	nop			;7fbf	00 	. 
	nop			;7fc0	00 	. 
	nop			;7fc1	00 	. 
	nop			;7fc2	00 	. 
	nop			;7fc3	00 	. 
	nop			;7fc4	00 	. 
	nop			;7fc5	00 	. 
	nop			;7fc6	00 	. 
	nop			;7fc7	00 	. 
	nop			;7fc8	00 	. 
	inc h			;7fc9	24 	$ 
	sub d			;7fca	92 	. 
	ld c,c			;7fcb	49 	I 
	inc h			;7fcc	24 	$ 
	sub d			;7fcd	92 	. 
	ld c,d			;7fce	4a 	J 
	jr nz,l7fdah		;7fcf	20 09 	  . 
	inc h			;7fd1	24 	$ 
	ld de,08224h		;7fd2	11 24 82 	. $ . 
	ld c,c			;7fd5	49 	I 
	inc b			;7fd6	04 	. 
	ld bc,l0807h+1		;7fd7	01 08 08 	. . . 
l7fdah:
	ld bc,09004h		;7fda	01 04 90 	. . . 
	sub b			;7fdd	90 	. 
	sub d			;7fde	92 	. 
	ld (de),a			;7fdf	12 	. 
	inc b			;7fe0	04 	. 
	ld b,d			;7fe1	42 	B 
	djnz $+66		;7fe2	10 40 	. @ 
	ld hl,(0aaaah)		;7fe4	2a aa aa 	* . . 
	xor d			;7fe7	aa 	. 
	xor d			;7fe8	aa 	. 
	xor d			;7fe9	aa 	. 
	xor b			;7fea	a8 	. 
	nop			;7feb	00 	. 
	djnz $+11		;7fec	10 09 	. . 
	inc b			;7fee	04 	. 
	ld c,c			;7fef	49 	I 
	ld (de),a			;7ff0	12 	. 
	inc h			;7ff1	24 	$ 
	adc a,c			;7ff2	89 	. 
	inc h			;7ff3	24 	$ 
	sub d			;7ff4	92 	. 
	ld c,c			;7ff5	49 	I 
	ld (08848h),hl		;7ff6	22 48 88 	" H . 
	ld c,c			;7ff9	49 	I 
	inc h			;7ffa	24 	$ 
	sub b			;7ffb	90 	. 
	djnz l7f8eh		;7ffc	10 90 	. . 
	adc a,c			;7ffe	89 	. 
	inc b			;7fff	04 	. 
