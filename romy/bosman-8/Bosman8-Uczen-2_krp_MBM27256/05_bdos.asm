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
