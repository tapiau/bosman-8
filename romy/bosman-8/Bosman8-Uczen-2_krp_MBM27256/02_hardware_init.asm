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
