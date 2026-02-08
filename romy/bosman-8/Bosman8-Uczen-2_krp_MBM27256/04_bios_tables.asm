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
