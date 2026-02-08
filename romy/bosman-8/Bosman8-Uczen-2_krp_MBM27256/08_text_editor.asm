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
