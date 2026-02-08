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
