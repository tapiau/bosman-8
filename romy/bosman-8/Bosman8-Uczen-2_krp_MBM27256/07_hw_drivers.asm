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
