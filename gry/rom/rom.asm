; z80dasm 1.1.6
; command line: z80dasm -a rom.bin

	org	00100h

	dec h			;0100
	nop			;0101
	jp 001b1h		;0102
	jp 00cc9h		;0105
	jp 00624h		;0108
	jp 0037bh		;010b
	jp 00436h		;010e
	jp 0f35ah		;0111
	jp 0f360h		;0114
	jp 0071fh		;0117
	jp 00000h		;011a
	jp 00000h		;011d
	nop			;0120
	add hl,de			;0121
	add a,a			;0122
	add hl,bc			;0123
	jr nc,$-57		;0124
	ld b,0f4h		;0126
	dec b			;0128
	jr nz,$-1		;0129
	dec a			;012b
	jr nz,$-6		;012c
	pop bc			;012e
	ret			;012f
	jp 0f275h		;0130
	nop			;0133
	nop			;0134
	nop			;0135
	nop			;0136
	nop			;0137
	jp 0f272h		;0138
	ld d,e			;013b
	nop			;013c
	ld d,e			;013d
	nop			;013e
	ld b,0f5h		;013f
	ld d,e			;0141
	nop			;0142
	ld b,h			;0143
	ld e,d			;0144
	ld c,l			;0145
	dec l			;0146
	ld sp,03038h		;0147
	add a,b			;014a
	ld l,c			;014b
	ld (hl),e			;014c
	ld l,020h		;014d
	ld d,(hl)			;014f
	ld (08034h),a		;0150
	ld b,e			;0153
	ld b,l			;0154
	ld c,(hl)			;0155
	ld d,h			;0156
	ld d,d			;0157
	ld c,a			;0158
	ld c,(hl)			;0159
	ld c,c			;015a
	ld b,e			;015b
	ld d,e			;015c
	add a,b			;015d
	nop			;015e
	nop			;015f
	nop			;0160
	nop			;0161
	nop			;0162
	nop			;0163
	nop			;0164
	nop			;0165
	jp 0f29fh		;0166
	jr nz,$+34		;0169
	jr nz,$+28		;016b
	dec de			;016d
	ld d,h			;016e
	dec de			;016f
	ld c,a			;0170
	dec de			;0171
	ld b,b			;0172
	dec de			;0173
	ld a,01bh		;0174
	ld b,a			;0176
	dec de			;0177
	ld e,b			;0178
	jr nz,$+28		;0179
	ld c,l			;017b
	ld l,c			;017c
	ld l,e			;017d
	ld (hl),d			;017e
	ld l,a			;017f
	ld l,e			;0180
	ld l,a			;0181
	ld l,l			;0182
	ld (hl),b			;0183
	ld (hl),l			;0184
	ld (hl),h			;0185
	ld h,l			;0186
	ld (hl),d			;0187
	jr nz,$+34		;0188
	dec de			;018a
	ld d,e			;018b
	jr nz,$+68		;018c
	ld c,a			;018e
	ld d,e			;018f
	ld c,l			;0190
	ld b,c			;0191
	ld c,(hl)			;0192
	jr nz,$+58		;0193
	jr nz,$+47		;0195
	jr nz,$+50		;0197
	jr nc,$+50		;0199
	ld (05320h),a		;019b
	jr nz,$+29		;019e
	ld d,h			;01a0
	jr nz,$+34		;01a1
	ld d,e			;01a3
	ld (hl),h			;01a4
	ld h,c			;01a5
	ld l,(hl)			;01a6
	ld l,a			;01a7
	ld (hl),a			;01a8
	ld l,c			;01a9
	ld (hl),e			;01aa
	ld l,e			;01ab
	ld l,a			;01ac
	jr nz,$+112		;01ad
	ld (hl),d			;01af
	jr nz,$-126		;01b0
	nop			;01b2
	nop			;01b3
	nop			;01b4
	add a,c			;01b5
	jr nz,$+34		;01b6
	jr nz,$+34		;01b8
	jr nz,$+34		;01ba
	jr nz,$+69		;01bc
	ld d,b			;01be
	ld d,l			;01bf
	dec l			;01c0
	ld e,d			;01c1
	jr c,$+50		;01c2
	ld b,c			;01c4
	dec c			;01c5
	ld a,(bc)			;01c6
	ld a,(bc)			;01c7
	ld b,h			;01c8
	ld a,c			;01c9
	ld (hl),e			;01ca
	ld l,e			;01cb
	ld l,a			;01cc
	ld (hl),a			;01cd
	ld a,c			;01ce
	jr nz,$+117		;01cf
	ld a,c			;01d1
	ld (hl),e			;01d2
	ld (hl),h			;01d3
	ld h,l			;01d4
	ld l,l			;01d5
	jr nz,$+113		;01d6
	ld (hl),b			;01d8
	ld h,l			;01d9
	ld (hl),d			;01da
	ld h,c			;01db
	ld h,e			;01dc
	ld a,c			;01dd
	ld l,d			;01de
	ld l,(hl)			;01df
	ld a,c			;01e0
	jr nz,$+34		;01e1
	ld b,e			;01e3
	ld d,b			;01e4
	ld c,l			;01e5
	cpl			;01e6
	ld d,d			;01e7
	jr nz,$+120		;01e8
	ld (0352eh),a		;01ea
	jr nz,$+34		;01ed
	jr nz,$+34		;01ef
	ld d,h			;01f1
	ld d,b			;01f2
	ld b,c			;01f3
	dec a			;01f4
	ld (hl),030h		;01f5
	ld c,e			;01f7
	ld b,d			;01f8
	jr nz,$+34		;01f9
	dec c			;01fb
	ld a,(bc)			;01fc
	ld a,(bc)			;01fd
	ld a,(bc)			;01fe
	add a,b			;01ff
	nop			;0200
	nop			;0201
	nop			;0202
	nop			;0203
	nop			;0204
	nop			;0205
	nop			;0206
	nop			;0207
	nop			;0208
	nop			;0209
	nop			;020a
	nop			;020b
	nop			;020c
	nop			;020d
	nop			;020e
	nop			;020f
	ld d,d			;0210
	ld b,c			;0211
	ld c,l			;0212
	ld b,h			;0213
	ld e,c			;0214
	ld d,e			;0215
	ld c,e			;0216
	jr nz,$+119		;0217
	ld (hl),e			;0219
	ld a,d			;021a
	ld l,e			;021b
	ld l,a			;021c
	ld h,h			;021d
	ld a,d			;021e
	ld l,a			;021f
	ld l,(hl)			;0220
	ld a,c			;0221
	dec c			;0222
	ld a,(bc)			;0223
	add a,b			;0224
	ld a,(de)			;0225
	ld d,d			;0226
	ld c,a			;0227
	ld c,l			;0228
	jr nz,$+119		;0229
	ld (hl),e			;022b
	ld a,d			;022c
	ld l,e			;022d
	ld l,a			;022e
	ld h,h			;022f
	ld a,d			;0230
	ld l,a			;0231
	ld l,(hl)			;0232
	ld a,c			;0233
	dec c			;0234
	ld a,(bc)			;0235
	add a,b			;0236
	dec c			;0237
	dec c			;0238
	dec de			;0239
	ld d,h			;023a
	dec de			;023b
	ld c,a			;023c
	dec de			;023d
	ld b,b			;023e
	dec de			;023f
	ld a,01bh		;0240
	ld b,a			;0242
	dec de			;0243
	ld e,b			;0244
	jr nz,$+28		;0245
	dec de			;0247
	dec h			;0248
	dec c			;0249
	ld a,(bc)			;024a
	add a,b			;024b
	nop			;024c
	nop			;024d
	jr nc,$+56		;024e
	inc (hl)			;0250
	add a,b			;0251
	ex af,af'			;0252
	ld e,c			;0253
	ld (03635h),a		;0254
	add a,b			;0257
	ld b,01dh		;0258
	ld sp,03832h		;025a
	add a,b			;025d
	ld b,077h		;025e
	inc sp			;0260
	ld (08030h),a		;0261
	nop			;0264
	ld (hl),a			;0265
	inc sp			;0266
	ld (08030h),a		;0267
	nop			;026a
	pop de			;026b
	dec (hl)			;026c
	ld sp,08032h		;026d
	nop			;0270
	jr $+4		;0271
	ret p			;0273
	inc b			;0274
	jr nz,$+3		;0275
	ld e,007h		;0277
	ld a,(hl)			;0279
	dec b			;027a
	ld h,c			;027b
	inc bc			;027c
	call 021f3h		;027d
	ld (hl),b			;0280
	ld bc,0830eh		;0281
	ld b,00eh		;0284
	otir		;0286
	ld a,006h		;0288
	out (083h),a		;028a
	ld a,(0fb7dh)		;028c
	out (083h),a		;028f
	ld a,0f3h		;0291
	ld i,a		;0293
	im 2		;0295
	ld a,0b7h		;0297
	out (087h),a		;0299
	ld a,020h		;029b
	out (086h),a		;029d
	ld a,000h		;029f
	out (086h),a		;02a1
	xor a			;02a3
	ld (0ffadh),a		;02a4
	ld (0ffaah),a		;02a7
	ld (0ffaeh),a		;02aa
	ld (0ffb0h),a		;02ad
	ret			;02b0
	out (007h),a		;02b1
	ld sp,0f200h		;02b3
	ld hl,00000h		;02b6
	xor a			;02b9
	add a,(hl)			;02ba
	inc hl			;02bb
	bit 6,h		;02bc
	jr z,$-4		;02be
	or a			;02c0
	out (006h),a		;02c1
	ex af,af'			;02c3
	ld hl,008a9h		;02c4
	ld de,0f200h		;02c7
	ld bc,00400h		;02ca
	ldir		;02cd
	ld a,035h		;02cf
	out (087h),a		;02d1
	ld a,076h		;02d3
	out (087h),a		;02d5
	ld a,0b6h		;02d7
	out (087h),a		;02d9
	ld a,003h		;02db
	out (082h),a		;02dd
	ld a,0e1h		;02df
	out (082h),a		;02e1
	ld a,004h		;02e3
	out (082h),a		;02e5
	ld a,00ch		;02e7
	out (082h),a		;02e9
	ld a,005h		;02eb
	out (082h),a		;02ed
	ld a,0e8h		;02ef
	out (082h),a		;02f1
	ld a,014h		;02f3
	out (085h),a		;02f5
	ld a,000h		;02f7
	out (085h),a		;02f9
	in a,(080h)		;02fb
	ld a,001h		;02fd
	call 00025h		;02ff
	in a,(080h)		;0302
	xor a			;0304
	ld b,a			;0305
	in a,(098h)		;0306
	bit 6,a		;0308
	jr z,$+4		;030a
	set 2,b		;030c
	bit 5,a		;030e
	jr z,$+4		;0310
	set 1,b		;0312
	bit 3,a		;0314
	jr z,$+4		;0316
	set 0,b		;0318
	inc b			;031a
	ld a,b			;031b
	ld (0fb7dh),a		;031c
	call 0017eh		;031f
	ld a,0d5h		;0322
	ld (00003h),a		;0324
	xor a			;0327
	ld (00004h),a		;0328
	ld hl,0f000h		;032b
	ld b,000h		;032e
	ld (hl),a			;0330
	inc hl			;0331
	djnz $-2		;0332
	ld a,001h		;0334
	ld (0f13ah),a		;0336
	call 00365h		;0339
	ld b,004h		;033c
	call 0032bh		;033e
	add a,a			;0341
	push af			;0342
	ld b,000h		;0343
	call 0032bh		;0345
	dec a			;0348
	pop bc			;0349
	add a,b			;034a
	add a,a			;034b
	ld c,a			;034c
	ld b,000h		;034d
	ld hl,0014ch		;034f
	add hl,bc			;0352
	add hl,bc			;0353
	add hl,bc			;0354
	ld d,(hl)			;0355
	inc hl			;0356
	ld e,(hl)			;0357
	inc hl			;0358
	push hl			;0359
	ld a,(0f298h)		;035a
	ld b,a			;035d
	add a,d			;035e
	ld (0f298h),a		;035f
	ld a,b			;0362
	add a,a			;0363
	add a,a			;0364
	add a,a			;0365
	add a,a			;0366
	sub b			;0367
	sub e			;0368
	jr c,$+3		;0369
	xor a			;036b
	neg		;036c
	ld (0f290h),a		;036e
	ld c,000h		;0371
	ld a,(0f296h)		;0373
	ld b,a			;0376
	ld a,(0f298h)		;0377
	xor 00eh		;037a
	ld hl,00000h		;037c
	or a			;037f
	rra			;0380
	jr nc,$+5		;0381
	ld hl,07800h		;0383
	ld de,0fa20h		;0386
	push bc			;0389
	call 0f321h		;038a
	pop bc			;038d
	push hl			;038e
	push bc			;038f
	push bc			;0390
	call 0f34eh		;0391
	ld c,a			;0394
	ld a,(de)			;0395
	inc de			;0396
	cp c			;0397
	pop bc			;0398
	jr z,$+3		;0399
	inc c			;039b
	djnz $-12		;039c
	ld a,c			;039e
	ld (0fb7ah),a		;039f
	pop bc			;03a2
	pop hl			;03a3
	cp 004h		;03a4
	jr c,$+26		;03a6
	ld c,080h		;03a8
	ld a,040h		;03aa
	call 00025h		;03ac
	ld (hl),0e5h		;03af
	inc hl			;03b1
	dec c			;03b2
	jr nz,$-4		;03b3
	djnz $-13		;03b5
	xor a			;03b7
	ld (0fb7ah),a		;03b8
	ld (0fb7ch),a		;03bb
	jr $+15		;03be
	ld a,(0f290h)		;03c0
	ld b,a			;03c3
	ld a,(0fb7bh)		;03c4
	cp b			;03c7
	jr nc,$+5		;03c8
	ld (0f290h),a		;03ca
	xor a			;03cd
	call 0f321h		;03ce
	ex af,af'			;03d1
	ld hl,00069h		;03d2
	call 006f8h		;03d5
	ld a,(0fb7dh)		;03d8
	add a,030h		;03db
	ld c,a			;03dd
	call 00702h		;03de
	pop hl			;03e1
	ld a,(000b5h)		;03e2
	bit 0,a		;03e5
	call z,006f8h		;03e7
	ld hl,000b6h		;03ea
	call 006f8h		;03ed
	ld hl,00110h		;03f0
	ld a,(0fb7ah)		;03f3
	or a			;03f6
	call nz,006f8h		;03f7
	jr $+21		;03fa
	ld hl,00125h		;03fc
	call 006f8h		;03ff
	jp 0f36ah		;0402
	ld sp,0f200h		;0405
	xor a			;0408
	call 0071fh		;0409
	call 00365h		;040c
	ld a,(0f290h)		;040f
	ld (0fb7bh),a		;0412
	ld hl,00137h		;0415
	call 006f8h		;0418
	ld hl,0f26bh		;041b
	res 3,(hl)		;041e
	ld hl,00004h		;0420
	call 0f35ah		;0423
	ld c,a			;0426
	ei			;0427
	jp 01a35h		;0428
	ld a,b			;042b
	call 0f321h		;042c
	ld hl,00000h		;042f
	call 0f35ah		;0432
	ld d,a			;0435
	ld (hl),055h		;0436
	ld a,b			;0438
	inc a			;0439
	call 0f321h		;043a
	call 0f35ah		;043d
	ld e,a			;0440
	ld (hl),0aah		;0441
	ld a,b			;0443
	call 0f321h		;0444
	call 0f35ah		;0447
	cp 055h		;044a
	jr z,$+11		;044c
	cp 0aah		;044e
	ld a,000h		;0450
	ret nz			;0452
	ld (hl),d			;0453
	ld a,001h		;0454
	ret			;0456
	ld a,b			;0457
	inc a			;0458
	call 0f321h		;0459
	ld (hl),e			;045c
	ld a,b			;045d
	call 0f321h		;045e
	ld (hl),d			;0461
	ld a,002h		;0462
	ret			;0464
	ld hl,00ca9h		;0465
	ld de,0f060h		;0468
	ld bc,00010h		;046b
	ldir		;046e
	ld hl,00cb9h		;0470
	ld de,0f000h		;0473
	ld bc,00010h		;0476
	ldir		;0479
	ld a,0c3h		;047b
	ld (00000h),a		;047d
	ld (00005h),a		;0480
	ld (00030h),a		;0483
	ld (00038h),a		;0486
	ld hl,0f203h		;0489
	ld (00001h),hl		;048c
	ld hl,0f006h		;048f
	ld (00006h),hl		;0492
	ld hl,0f275h		;0495
	ld (00031h),hl		;0498
	ld hl,0f272h		;049b
	ld (00039h),hl		;049e
	ret			;04a1
	ld a,c			;04a2
	cp 004h		;04a3
	jr nc,$+42		;04a5
	ld l,c			;04a7
	inc l			;04a8
	ld a,(0f2b7h)		;04a9
	rrca			;04ac
	dec l			;04ad
	jr nz,$-2		;04ae
	jr nc,$+31		;04b0
	ld a,c			;04b2
	ld (0f2abh),a		;04b3
	rlca			;04b6
	rlca			;04b7
	rlca			;04b8
	rlca			;04b9
	ld l,a			;04ba
	ld h,000h		;04bb
	ld de,0f27bh		;04bd
	add hl,de			;04c0
	push hl			;04c1
	ld de,0000ah		;04c2
	add hl,de			;04c5
	ld a,(hl)			;04c6
	inc hl			;04c7
	ld h,(hl)			;04c8
	ld l,a			;04c9
	ld (0f2b1h),hl		;04ca
	pop hl			;04cd
	ret			;04ce
	ld hl,00000h		;04cf
	xor a			;04d2
	ld (00004h),a		;04d3
	ret			;04d6
	jp 003ddh		;04d7
	jp 003ffh		;04da
	ld hl,(0f2afh)		;04dd
	ld de,0f9a0h		;04e0
	ld bc,00080h		;04e3
	call 0f347h		;04e6
	call 00421h		;04e9
	call 0f321h		;04ec
	ex de,hl			;04ef
	ld hl,0f9a0h		;04f0
	ld bc,00080h		;04f3
	ldir		;04f6
	ld a,0ffh		;04f8
	call 0f321h		;04fa
	xor a			;04fd
	ret			;04fe
	call 00421h		;04ff
	call 0f321h		;0502
	ld de,0f9a0h		;0505
	ld bc,00080h		;0508
	call 0f347h		;050b
	ld a,0ffh		;050e
	call 0f321h		;0510
	ld hl,(0f2afh)		;0513
	ex de,hl			;0516
	ld hl,0f9a0h		;0517
	ld bc,00080h		;051a
	ldir		;051d
	xor a			;051f
	ret			;0520
	ld hl,(0f2adh)		;0521
	ld l,000h		;0524
	srl h		;0526
	rr l		;0528
	ld de,07800h		;052a
	ld a,(0f2ach)		;052d
	xor 00eh		;0530
	rrca			;0532
	ret nc			;0533
	add hl,de			;0534
	ret			;0535
	ret			;0536
	push hl			;0537
	ld hl,00003h		;0538
	call 0f35ah		;053b
	pop hl			;053e
	ret			;053f
	call 00437h		;0540
	and b			;0543
	or c			;0544
	ld (00003h),a		;0545
	ret			;0548
	jr nz,$+70		;0549
	ld (hl),d			;054b
	ld (hl),l			;054c
	ld l,e			;054d
	ld h,c			;054e
	ld (hl),d			;054f
	ld l,e			;0550
	ld h,c			;0551
	jr nz,$+102		;0552
	ld (hl),d			;0554
	ld (hl),l			;0555
	ld l,e			;0556
	ld (hl),l			;0557
	ld l,d			;0558
	ld h,l			;0559
	jr nz,$+47		;055a
	jr nz,$+114		;055c
	ld (hl),d			;055e
	ld a,d			;055f
	ld h,l			;0560
	ld (hl),d			;0561
	ld (hl),a			;0562
	ld l,c			;0563
	ld l,d			;0564
	jr nz,$+42		;0565
	ld d,b			;0567
	add hl,hl			;0568
	jr nz,$+34		;0569
	ld l,e			;056b
	ld l,a			;056c
	ld l,(hl)			;056d
	ld (hl),h			;056e
	ld a,c			;056f
	ld l,(hl)			;0570
	ld (hl),l			;0571
	ld (hl),l			;0572
	ld l,d			;0573
	jr nz,$+42		;0574
	ld c,e			;0576
	add hl,hl			;0577
	jr nz,$+34		;0578
	ccf			;057a
	jr nz,$-126		;057b
	ld c,e			;057d
	ld d,b			;057e
	add a,b			;057f
	jr nz,$+70		;0580
	ld (hl),d			;0582
	ld (hl),l			;0583
	ld l,e			;0584
	ld h,c			;0585
	ld (hl),d			;0586
	ld l,e			;0587
	ld h,c			;0588
	nop			;0589
	ld l,(hl)			;058a
	ld l,c			;058b
	ld h,l			;058c
	ld h,a			;058d
	ld l,a			;058e
	ld (hl),h			;058f
	ld l,a			;0590
	ld (hl),a			;0591
	ld h,c			;0592
	jr nz,$+47		;0593
	jr nz,$+121		;0595
	ld a,c			;0597
	ex af,af'			;0598
	ld b,063h		;0599
	ld a,d			;059b
	jr nz,$+42		;059c
	ld d,a			;059e
	add hl,hl			;059f
	jr nz,$+34		;05a0
	ld (hl),b			;05a2
	ld l,a			;05a3
	ld (hl),a			;05a4
	ld (hl),h			;05a5
	rlca			;05a6
	ld (hl),d			;05a7
	ld a,d			;05a8
	jr nz,$+42		;05a9
	ld d,b			;05ab
	add hl,hl			;05ac
	jr nz,$+34		;05ad
	ld a,d			;05af
	ld l,l			;05b0
	ld l,c			;05b1
	ld h,l			;05b2
	inc b			;05b3
	jr nz,$+42		;05b4
	ld e,d			;05b6
	add hl,hl			;05b7
	jr nz,$+34		;05b8
	ccf			;05ba
	jr nz,$-126		;05bb
	ld d,a			;05bd
	ld d,b			;05be
	ld d,b			;05bf
	ld e,d			;05c0
	add a,b			;05c1
	ld a,(0f26bh)		;05c2
	bit 2,a		;05c5
	jr z,$+17		;05c7
	ld hl,00449h		;05c9
	call 00624h		;05cc
	ld hl,0f26bh		;05cf
	or a			;05d2
	jp z,00572h		;05d3
	res 2,(hl)		;05d6
	push bc			;05d8
	ld bc,02500h		;05d9
	call 00580h		;05dc
	jr nz,$+28		;05df
	ld a,001h		;05e1
	call 00025h		;05e3
	dec bc			;05e6
	ld a,b			;05e7
	or c			;05e8
	jr nz,$-13		;05e9
	pop bc			;05eb
	ld hl,00480h		;05ec
	call 00624h		;05ef
	ld hl,0f26bh		;05f2
	or a			;05f5
	jp z,00572h		;05f6
	jr $-33		;05f9
	pop bc			;05fb
	ld a,c			;05fc
	cp 020h		;05fd
	ld a,000h		;05ff
	jr c,$+6		;0601
	ld a,(0f2b6h)		;0603
	inc a			;0606
	ld (0f2b6h),a		;0607
	ld a,(0f26bh)		;060a
	bit 1,a		;060d
	jr z,$+4		;060f
	res 7,c		;0611
	call 00437h		;0613
	bit 6,a		;0616
	jp z,0f500h		;0618
	in a,(098h)		;061b
	rlca			;061d
	jr nc,$-3		;061e
	call 00528h		;0620
	ld a,c			;0623
	nop			;0624
	out (098h),a		;0625
	ret			;0627
	ld a,(0f26bh)		;0628
	bit 4,a		;062b
	jr z,$+19		;062d
	bit 5,a		;062f
	ret nz			;0631
	ld hl,00548h		;0632
	ld a,(hl)			;0635
	or a			;0636
	ret z			;0637
	cp c			;0638
	inc hl			;0639
	ld a,(hl)			;063a
	inc hl			;063b
	jr nz,$-7		;063c
	ld c,a			;063e
	ret			;063f
	bit 5,a		;0640
	ret z			;0642
	ld hl,0055dh		;0643
	jr $-17		;0646
	ld h,b			;0648
	ld h,c			;0649
	ld b,b			;064a
	ld h,l			;064b
	ld a,(hl)			;064c
	ld h,e			;064d
	ld e,(hl)			;064e
	ld (hl),e			;064f
	ld a,l			;0650
	ld a,d			;0651
	ld e,l			;0652
	ld l,(hl)			;0653
	ld a,e			;0654
	ld l,a			;0655
	ld e,e			;0656
	ld a,d			;0657
	ld a,h			;0658
	ld l,h			;0659
	ld e,h			;065a
	ld c,h			;065b
	nop			;065c
	ld h,b			;065d
	jr nz,$+66		;065e
	jr nz,$+128		;0660
	jr nz,$+96		;0662
	jr nz,$+127		;0664
	jr nz,$+95		;0666
	jr nz,$+125		;0668
	jr nz,$+93		;066a
	jr nz,$+126		;066c
	jr nz,$+94		;066e
	jr nz,$+2		;0670
	set 3,(hl)		;0672
	res 6,(hl)		;0674
	ret			;0676
	ld a,(0f26bh)		;0677
	bit 2,a		;067a
	jr z,$+4		;067c
	xor a			;067e
	ret			;067f
	call 00437h		;0680
	bit 6,a		;0683
	jp z,0f503h		;0685
	in a,(098h)		;0688
	rlca			;068a
	sbc a,a			;068b
	ret			;068c
	call 00580h		;068d
	ret z			;0690
	ld hl,(0f6feh)		;0691
	ld a,l			;0694
	or h			;0695
	jr z,$+86		;0696
	dec hl			;0698
	ld (0f6feh),hl		;0699
	ld hl,(0f6fbh)		;069c
	inc hl			;069f
	ld (0f6fbh),hl		;06a0
	dec hl			;06a3
	ld a,(0f6fdh)		;06a4
	call 0f321h		;06a7
	call 0f35ah		;06aa
	push af			;06ad
	ld a,0ffh		;06ae
	call 0f321h		;06b0
	pop af			;06b3
	ld c,a			;06b4
	cp 01ah		;06b5
	jr z,$+44		;06b7
	cp 009h		;06b9
	jp nz,004fch		;06bb
	ld a,(0f26bh)		;06be
	bit 0,a		;06c1
	jp nz,004fch		;06c3
	ld c,020h		;06c6
	ld a,(0f2b6h)		;06c8
	and 007h		;06cb
	cp 007h		;06cd
	jp z,004fch		;06cf
	ld hl,(0f6feh)		;06d2
	inc hl			;06d5
	ld (0f6feh),hl		;06d6
	ld hl,(0f6fbh)		;06d9
	dec hl			;06dc
	ld (0f6fbh),hl		;06dd
	jp 004fch		;06e0
	ld a,(0f26bh)		;06e3
	res 2,a		;06e6
	ld (0f26bh),a		;06e8
	ret			;06eb
	ld hl,0f67fh		;06ec
	ld a,(0f6f9h)		;06ef
	inc a			;06f2
	inc a			;06f3
	ld (0f6f9h),a		;06f4
	add a,l			;06f7
	ld l,a			;06f8
	ld b,(hl)			;06f9
	dec hl			;06fa
	ld a,(hl)			;06fb
	or a			;06fc
	jp z,005e3h		;06fd
	and 007h		;0700
	ld (0f6fdh),a		;0702
	ld a,(hl)			;0705
	and 0f8h		;0706
	ld h,a			;0708
	ld l,000h		;0709
	ld (0f6fbh),hl		;070b
	or a			;070e
	ld h,b			;070f
	rr h		;0710
	rr l		;0712
	ld (0f6feh),hl		;0714
	ld a,(0f6f9h)		;0717
	cp 002h		;071a
	jp nz,00591h		;071c
	ld c,00dh		;071f
	jp 004fch		;0721
	push hl			;0724
	push bc			;0725
	push hl			;0726
	ld hl,006eeh		;0727
	call 006f8h		;072a
	pop hl			;072d
	ld c,007h		;072e
	call 00702h		;0730
	ld b,020h		;0733
	call 0068bh		;0735
	ld c,(hl)			;0738
	ld a,c			;0739
	or a			;073a
	jr z,$+20		;073b
	cp 07eh		;073d
	jr nz,$+5		;073f
	ex (sp),hl			;0741
	ld c,l			;0742
	ex (sp),hl			;0743
	inc hl			;0744
	bit 7,c		;0745
	jr nz,$+82		;0747
	call 00702h		;0749
	inc b			;074c
	jr $-24		;074d
	ld c,020h		;074f
	call 00702h		;0751
	inc hl			;0754
	inc b			;0755
	push hl			;0756
	ld hl,00003h		;0757
	call 0f35ah		;075a
	rlca			;075d
	rlca			;075e
	rlca			;075f
	and 006h		;0760
	ld hl,0003bh		;0762
	add a,l			;0765
	ld l,a			;0766
	ld a,(hl)			;0767
	inc hl			;0768
	ld h,(hl)			;0769
	ld l,a			;076a
	push de			;076b
	ld e,00ch		;076c
	call 0068bh		;076e
	ld c,(hl)			;0771
	inc hl			;0772
	bit 7,c		;0773
	jr nz,$+12		;0775
	call 00702h		;0777
	inc b			;077a
	dec e			;077b
	jr nz,$-14		;077c
	call 0068bh		;077e
	ld c,020h		;0781
	call 00702h		;0783
	inc b			;0786
	pop de			;0787
	pop hl			;0788
	jr $-84		;0789
	ld c,01bh		;078b
	call 00702h		;078d
	ld c,058h		;0790
	call 00702h		;0792
	ld c,b			;0795
	jp 00702h		;0796
	ld c,020h		;0799
	call 00702h		;079b
	xor a			;079e
	bit 7,(hl)		;079f
	jr nz,$+58		;07a1
	ld b,0fah		;07a3
	call 0070ah		;07a5
	jr nz,$+19		;07a8
	ld a,004h		;07aa
	call 00025h		;07ac
	djnz $-10		;07af
	push hl			;07b1
	ld hl,006f3h		;07b2
	call 006f8h		;07b5
	pop hl			;07b8
	jr $-22		;07b9
	call 0070fh		;07bb
	ld c,a			;07be
	ld b,000h		;07bf
	push hl			;07c1
	ld a,(hl)			;07c2
	cp c			;07c3
	jr z,$+15		;07c4
	cp 07eh		;07c6
	jr z,$+11		;07c8
	inc b			;07ca
	inc hl			;07cb
	bit 7,(hl)		;07cc
	jr z,$-12		;07ce
	pop hl			;07d0
	jr $-46		;07d1
	pop hl			;07d3
	ld hl,006eeh		;07d4
	call 006f8h		;07d7
	ld a,b			;07da
	pop bc			;07db
	pop hl			;07dc
	cp 003h		;07dd
	ret c			;07df
	push hl			;07e0
	ld hl,00003h		;07e1
	call 0f35ah		;07e4
	add a,040h		;07e7
	ld (hl),a			;07e9
	pop hl			;07ea
	jp 00624h		;07eb
	dec de			;07ee
	ld e,b			;07ef
	jr nz,$+28		;07f0
	add a,b			;07f2
	dec de			;07f3
	ld e,b			;07f4
	ld a,d			;07f5
	jr nz,$-126		;07f6
	ld c,(hl)			;07f8
	bit 7,c		;07f9
	ret nz			;07fb
	inc hl			;07fc
	call 00702h		;07fd
	jr $-8		;0800
	call 0f381h		;0802
	jr z,$-3		;0805
	jp 0f39ah		;0807
	in a,(082h)		;080a
	and 001h		;080c
	ret			;080e
	call 0070ah		;080f
	jr z,$-3		;0812
	in a,(080h)		;0814
	cp 061h		;0816
	ret c			;0818
	cp 07bh		;0819
	ret nc			;081b
	and 05fh		;081c
	ret			;081e
	ld hl,0fb7ch		;081f
	inc a			;0822
	jp z,007e7h		;0823
	dec a			;0826
	jp nz,00767h		;0827
	bit 7,(hl)		;082a
	jr z,$+42		;082c
	ld hl,0f26bh		;082e
	bit 7,(hl)		;0831
	jr z,$+25		;0833
	res 7,(hl)		;0835
	ld hl,00881h		;0837
	call 0083fh		;083a
	call 00848h		;083d
	call 00830h		;0840
	ld hl,00868h		;0843
	call 0083fh		;0846
	call 00848h		;0849
	ld hl,0fb7ch		;084c
	bit 0,(hl)		;084f
	call z,007e7h		;0851
	jr $+15		;0854
	res 0,(hl)		;0856
	ld hl,0f26bh		;0858
	res 7,(hl)		;085b
	ld hl,0f2e7h		;085d
	ld (0f273h),hl		;0860
	out (00ch),a		;0863
	or a			;0865
	ret			;0866
	bit 7,(hl)		;0867
	jp nz,007c5h		;0869
	res 0,(hl)		;086c
	call 0089ah		;086e
	cp 0d1h		;0871
	jp nz,00812h		;0873
	ld a,00ch		;0876
	sub c			;0878
	ld c,a			;0879
	jp c,00812h		;087a
	jp z,00812h		;087d
	add a,a			;0880
	add a,a			;0881
	add a,a			;0882
	add a,a			;0883
	sub c			;0884
	ld hl,0fa40h		;0885
	sub 008h		;0888
	jr c,$+5		;088a
	inc hl			;088c
	jr $-5		;088d
	add a,008h		;088f
	xor 007h		;0891
	inc a			;0893
	ld b,a			;0894
	ld a,01eh		;0895
	sub b			;0897
	ld c,a			;0898
	xor a			;0899
	scf			;089a
	rla			;089b
	djnz $-2		;089c
	and (hl)			;089e
	jp nz,00812h		;089f
	inc hl			;08a2
	ld a,c			;08a3
	or a			;08a4
	jr z,$+14		;08a5
	ld a,(hl)			;08a7
	or a			;08a8
	jp nz,00812h		;08a9
	inc hl			;08ac
	ld a,c			;08ad
	sub 008h		;08ae
	ld c,a			;08b0
	jr nc,$-14		;08b1
	ld a,(0f290h)		;08b3
	sub 01eh		;08b6
	ld (0f290h),a		;08b8
	ld (0fb7bh),a		;08bb
	ld hl,0fb7ch		;08be
	set 7,(hl)		;08c1
	res 0,(hl)		;08c3
	ld hl,0f26bh		;08c5
	bit 7,(hl)		;08c8
	jr nz,$+16		;08ca
	set 7,(hl)		;08cc
	ld hl,00868h		;08ce
	call 0083fh		;08d1
	call 00848h		;08d4
	call 00830h		;08d7
	ld hl,00881h		;08da
	call 0083fh		;08dd
	call 00848h		;08e0
	out (00dh),a		;08e3
	or a			;08e5
	ret			;08e6
	bit 7,(hl)		;08e7
	ret z			;08e9
	res 7,(hl)		;08ea
	call 00756h		;08ec
	ld hl,00868h		;08ef
	call 0083fh		;08f2
	call 00848h		;08f5
	call 0089ah		;08f8
	ld b,01eh		;08fb
	cp 0b3h		;08fd
	jr z,$+8		;08ff
	ret c			;0901
	ld b,a			;0902
	ld a,0d1h		;0903
	sub b			;0905
	ld b,a			;0906
	ld a,(0f290h)		;0907
	add a,b			;090a
	ld (0f290h),a		;090b
	ld (0fb7bh),a		;090e
	ret			;0911
	ld hl,0081ah		;0912
	call 00624h		;0915
	scf			;0918
	ret			;0919
	jr nz,$+68		;091a
	ld h,c			;091c
	ld l,(hl)			;091d
	ld l,e			;091e
	jr nz,$+51		;091f
	jr nz,$+124		;0921
	ld h,c			;0923
	ld l,d			;0924
	ld bc,07974h		;0925
	jr nz,$+34		;0928
	jr z,$+34		;092a
	add hl,hl			;092c
	add a,b			;092d
	ld a,(hl)			;092e
	add a,b			;092f
	ld hl,00000h		;0930
	ld b,000h		;0933
	call 0f35ah		;0935
	call 0f98ch		;0938
	inc hl			;093b
	djnz $-7		;093c
	ret			;093e
	ld de,0f604h		;093f
	ld bc,00019h		;0942
	ldir		;0945
	ret			;0947
	ld hl,00854h		;0948
	ld de,0f98ch		;094b
	ld bc,00014h		;094e
	ldir		;0951
	ret			;0953
	jp 0f604h		;0954
	nop			;0957
	nop			;0958
	jp 0f60ch		;0959
	nop			;095c
	nop			;095d
	nop			;095e
	jp 0f614h		;095f
	nop			;0962
	nop			;0963
	nop			;0964
	nop			;0965
	nop			;0966
	nop			;0967
	di			;0968
	out (00dh),a		;0969
	ld (hl),a			;096b
	out (00ch),a		;096c
	ei			;096e
	ret			;096f
	di			;0970
	out (00dh),a		;0971
	ld a,(hl)			;0973
	out (00ch),a		;0974
	ei			;0976
	ret			;0977
	out (00fh),a		;0978
	call 0f61ch		;097a
	out (00eh),a		;097d
	ret			;097f
	jp (hl)			;0980
	di			;0981
	out (00ch),a		;0982
	ld (hl),a			;0984
	out (00dh),a		;0985
	ei			;0987
	ret			;0988
	di			;0989
	out (00ch),a		;098a
	ld a,(hl)			;098c
	out (00dh),a		;098d
	ei			;098f
	ret			;0990
	out (00fh),a		;0991
	call 0f61ch		;0993
	out (00eh),a		;0996
	ret			;0998
	jp (hl)			;0999
	ld a,(0f290h)		;099a
	ld b,a			;099d
	ld a,(0f298h)		;099e
	ld c,a			;09a1
	add a,a			;09a2
	add a,a			;09a3
	add a,a			;09a4
	add a,a			;09a5
	sub c			;09a6
	add a,b			;09a7
	ret			;09a8
	jp 0f2e7h		;09a9
	jp 0f2e7h		;09ac
	jp 0f373h		;09af
	jp 0f36bh		;09b2
	jp 0f390h		;09b5
	jp 0f3cfh		;09b8
	jp 0f3ceh		;09bb
	jp 0f3c9h		;09be
	jp 0f2ech		;09c1
	jp 0f2b8h		;09c4
	jp 0f2f5h		;09c7
	jp 0f2fah		;09ca
	jp 0f2ffh		;09cd
	jp 0f318h		;09d0
	jp 0f30fh		;09d3
	jp 0f3deh		;09d6
	jp 0f305h		;09d9
	jp 0f381h		;09dc
	jp 0f3c5h		;09df
	jp 0f3cah		;09e2
	nop			;09e5
	nop			;09e6
	ret			;09e7
	nop			;09e8
	nop			;09e9
	ret			;09ea
	nop			;09eb
	nop			;09ec
	ret			;09ed
	nop			;09ee
	nop			;09ef
	ret			;09f0
	nop			;09f1
	nop			;09f2
	ret			;09f3
	nop			;09f4
	nop			;09f5
	ret			;09f6
	nop			;09f7
	nop			;09f8
	ret			;09f9
	nop			;09fa
	nop			;09fb
	ret			;09fc
	jp 0f321h		;09fd
	nop			;0a00
	nop			;0a01
	ret			;0a02
	nop			;0a03
	nop			;0a04
	ret			;0a05
	nop			;0a06
	nop			;0a07
	ret			;0a08
	nop			;0a09
	nop			;0a0a
	ret			;0a0b
	nop			;0a0c
	nop			;0a0d
	ret			;0a0e
	nop			;0a0f
	nop			;0a10
	ld bc,0f2b5h		;0a11
	ld (bc),a			;0a14
	nop			;0a15
	nop			;0a16
	ret			;0a17
	nop			;0a18
	nop			;0a19
	ret			;0a1a
	jp 0f2e7h		;0a1b
	jp 0f366h		;0a1e
	jp 0f36ah		;0a21
	nop			;0a24
	nop			;0a25
	nop			;0a26
	nop			;0a27
	nop			;0a28
	nop			;0a29
	nop			;0a2a
	nop			;0a2b
	add a,b			;0a2c
	pop af			;0a2d
	adc a,e			;0a2e
	jp p,0fa20h		;0a2f
	ld b,b			;0a32
	jp m,000f0h		;0a33
	inc b			;0a36
	rrca			;0a37
	ld bc,000d1h		;0a38
	ld a,a			;0a3b
	nop			;0a3c
	ret nz			;0a3d
	nop			;0a3e
	jr nz,$+2		;0a3f
	nop			;0a41
	nop			;0a42
	ld bc,00001h		;0a43
	nop			;0a46
	nop			;0a47
	jp 00000h		;0a48
	nop			;0a4b
	nop			;0a4c
	ld bc,00000h		;0a4d
	add a,b			;0a50
	ei			;0a51
	adc a,e			;0a52
	jp p,00000h		;0a53
	nop			;0a56
	nop			;0a57
	nop			;0a58
	nop			;0a59
	adc a,e			;0a5a
	jp p,00000h		;0a5b
	ld bc,00100h		;0a5e
	call 0f2d6h		;0a61
	call 003a2h		;0a64
	ex de,hl			;0a67
	ld hl,(0fb78h)		;0a68
	ld (hl),e			;0a6b
	inc hl			;0a6c
	ld (hl),d			;0a6d
	push af			;0a6e
	ld a,(0fb7ah)		;0a6f
	cp 025h		;0a72
	jr z,$+4		;0a74
	out (00fh),a		;0a76
	pop af			;0a78
	ld sp,(0fb78h)		;0a79
	pop hl			;0a7d
	ret			;0a7e
	ex (sp),hl			;0a7f
	ld a,(00000h)		;0a80
	ld (0fb7ah),a		;0a83
	ld (0fb78h),sp		;0a86
	ld sp,0fb78h		;0a8a
	out (00eh),a		;0a8d
	jp (hl)			;0a8f
	out (00eh),a		;0a90
	jp 00305h		;0a92
	ld a,(0f2b4h)		;0a95
	or a			;0a98
	ret nz			;0a99
	ld (0f2b3h),a		;0a9a
	ret			;0a9d
	ld a,c			;0a9e
	ld (0f2ach),a		;0a9f
	ret			;0aa2
	ld a,c			;0aa3
	ld (0f2aeh),a		;0aa4
	ret			;0aa7
	ld l,c			;0aa8
	ld h,b			;0aa9
	ld (0f2afh),hl		;0aaa
	ret			;0aad
	ld l,c			;0aae
	ld h,b			;0aaf
	ld a,d			;0ab0
	or e			;0ab1
	ret z			;0ab2
	add hl,de			;0ab3
	ld l,(hl)			;0ab4
	ld h,000h		;0ab5
	ret			;0ab7
	call 0f2d6h		;0ab8
	call 003d7h		;0abb
	jp 0f2c5h		;0abe
	call 0f2d6h		;0ac1
	call 003dah		;0ac4
	jp 0f2c5h		;0ac7
	inc a			;0aca
	jr z,$+25		;0acb
	dec a			;0acd
	ld c,006h		;0ace
	rrca			;0ad0
	rl c		;0ad1
	out (c),a		;0ad3
	ld c,004h		;0ad5
	rrca			;0ad7
	rl c		;0ad8
	out (c),a		;0ada
	ld c,005h		;0adc
	rrca			;0ade
	rl c		;0adf
	out (c),a		;0ae1
	ret			;0ae3
	out (008h),a		;0ae4
	out (00ah),a		;0ae6
	ld c,006h		;0ae8
	ld a,(0f26bh)		;0aea
	rlca			;0aed
	jr $-15		;0aee
	out (00fh),a		;0af0
	ldir		;0af2
	out (00eh),a		;0af4
	ret			;0af6
	xor a			;0af7
	ld b,080h		;0af8
	out (00fh),a		;0afa
	add a,(hl)			;0afc
	inc hl			;0afd
	djnz $-2		;0afe
	out (00eh),a		;0b00
	ret			;0b02
	out (00fh),a		;0b03
	ld a,(hl)			;0b05
	out (00eh),a		;0b06
	ret			;0b08
	out (00fh),a		;0b09
	ld a,(de)			;0b0b
	out (00eh),a		;0b0c
	ret			;0b0e
	ret			;0b0f
	nop			;0b10
	nop			;0b11
	nop			;0b12
	ret			;0b13
	call 0f373h		;0b14
	jr z,$-3		;0b17
	in a,(080h)		;0b19
	ret			;0b1b
	call 0f3b4h		;0b1c
	call 0f39eh		;0b1f
	in a,(082h)		;0b22
	and 001h		;0b24
	ret z			;0b26
	ld a,0ffh		;0b27
	ret			;0b29
	call 0f39eh		;0b2a
	ld a,001h		;0b2d
	di			;0b2f
	out (082h),a		;0b30
	in a,(082h)		;0b32
	ei			;0b34
	and 001h		;0b35
	jr $-17		;0b37
	call 0f381h		;0b39
	jr nz,$+7		;0b3c
	call 0f3b4h		;0b3e
	jr $-8		;0b41
	ld a,c			;0b43
	out (080h),a		;0b44
	ret			;0b46
	ld a,010h		;0b47
	out (082h),a		;0b49
	in a,(082h)		;0b4b
	bit 7,a		;0b4d
	ret z			;0b4f
	ld a,010h		;0b50
	out (082h),a		;0b52
	in a,(082h)		;0b54
	bit 7,a		;0b56
	jr nz,$-8		;0b58
	in a,(080h)		;0b5a
	ret			;0b5c
	ld a,(0f26bh)		;0b5d
	bit 2,a		;0b60
	ret z			;0b62
	call 0f2d6h		;0b63
	push bc			;0b66
	call 0058dh		;0b67
	pop bc			;0b6a
	jp 0f2c5h		;0b6b
	ld a,0ffh		;0b6e
	or a			;0b70
	ret			;0b71
	ret			;0b72
	ld a,0ffh		;0b73
	or a			;0b75
	ret			;0b76
	ret			;0b77
	ld a,(0f26bh)		;0b78
	bit 3,a		;0b7b
	ret nz			;0b7d
	call 0f2d6h		;0b7e
	call 004c2h		;0b81
	jp 0f2c5h		;0b84
	ld a,(0f26bh)		;0b87
	bit 3,a		;0b8a
	ld a,0ffh		;0b8c
	ret nz			;0b8e
	call 0f2d6h		;0b8f
	call 00577h		;0b92
	jp 0f2c5h		;0b95
	nop			;0b98
	ret m			;0b99
	di			;0b9a
	ld e,0f4h		;0b9b
	daa			;0b9d
	call p,0f484h		;0b9e
	push af			;0ba1
	bit 2,(hl)		;0ba2
	jr nz,$+23		;0ba4
	ld a,d			;0ba6
	or e			;0ba7
	jr z,$+11		;0ba8
	dec de			;0baa
	ld a,(bc)			;0bab
	out (081h),a		;0bac
	inc bc			;0bae
	pop af			;0baf
	ei			;0bb0
	reti		;0bb1
	set 2,(hl)		;0bb3
	ld a,0c0h		;0bb5
	out (083h),a		;0bb7
	jr $+6		;0bb9
	res 2,(hl)		;0bbb
	res 0,(hl)		;0bbd
	ld a,028h		;0bbf
	out (083h),a		;0bc1
	pop af			;0bc3
	ei			;0bc4
	reti		;0bc5
	push af			;0bc7
	ld a,010h		;0bc8
	out (083h),a		;0bca
	pop af			;0bcc
	ei			;0bcd
	reti		;0bce
	ld (0ffd1h),sp		;0bd0
	ld sp,0ffd1h		;0bd4
	push af			;0bd7
	push bc			;0bd8
	push de			;0bd9
	push hl			;0bda
	push ix		;0bdb
	ld a,(0ffaeh)		;0bdd
	and 002h		;0be0
	jr nz,$+42		;0be2
	ld a,005h		;0be4
	out (082h),a		;0be6
	ld a,0eah		;0be8
	out (082h),a		;0bea
	ld c,000h		;0bec
	in a,(082h)		;0bee
	rra			;0bf0
	jr nc,$+15		;0bf1
	in a,(080h)		;0bf3
	ld l,a			;0bf5
	inc c			;0bf6
	in a,(082h)		;0bf7
	rra			;0bf9
	jr nc,$+6		;0bfa
	in a,(080h)		;0bfc
	ld h,a			;0bfe
	inc c			;0bff
	ld (0f602h),hl		;0c00
	ld (0f600h),bc		;0c03
	ld hl,0ffaeh		;0c07
	set 0,(hl)		;0c0a
	ld a,(00000h)		;0c0c
	ld (0ffd3h),a		;0c0f
	out (00eh),a		;0c12
	ld hl,04456h		;0c14
	push hl			;0c17
	in a,(081h)		;0c18
	ld hl,0f47dh		;0c1a
	ld (0f3f4h),hl		;0c1d
	ld de,0fb7fh		;0c20
	ei			;0c23
	reti		;0c24
	in a,(081h)		;0c26
	ld (de),a			;0c28
	inc de			;0c29
	ei			;0c2a
	reti		;0c2b
	ld a,001h		;0c2d
	out (083h),a		;0c2f
	in a,(083h)		;0c31
	ld hl,0ffaah		;0c33
	bit 6,a		;0c36
	jr z,$+4		;0c38
	set 6,(hl)		;0c3a
	bit 5,a		;0c3c
	jr z,$+4		;0c3e
	set 5,(hl)		;0c40
	bit 7,a		;0c42
	jr z,$+29		;0c44
	in a,(081h)		;0c46
	ld hl,04459h		;0c48
	ex (sp),hl			;0c4b
	ld a,(0ffb0h)		;0c4c
	ld hl,0f427h		;0c4f
	bit 2,a		;0c52
	jr z,$+5		;0c54
	ld hl,0f46fh		;0c56
	ld (0f3f4h),hl		;0c59
	dec de			;0c5c
	ld (0ffabh),de		;0c5d
	ld a,030h		;0c61
	out (083h),a		;0c63
	ei			;0c65
	reti		;0c66
	ld a,(0ffaeh)		;0c68
	and 002h		;0c6b
	jr nz,$+17		;0c6d
	ld a,0c8h		;0c6f
	call 00025h		;0c71
	ld c,01bh		;0c74
	call 0436ah		;0c76
	ld c,025h		;0c79
	call 0436ah		;0c7b
	in a,(081h)		;0c7e
	in a,(081h)		;0c80
	in a,(081h)		;0c82
	in a,(081h)		;0c84
	ld a,030h		;0c86
	out (083h),a		;0c88
	ld a,(0ffd3h)		;0c8a
	cp 025h		;0c8d
	jr z,$+4		;0c8f
	out (00fh),a		;0c91
	pop ix		;0c93
	pop hl			;0c95
	pop de			;0c96
	pop bc			;0c97
	pop af			;0c98
	ld sp,(0ffd1h)		;0c99
	out (004h),a		;0c9d
	ei			;0c9f
	ret			;0ca0
	nop			;0ca1
	nop			;0ca2
	nop			;0ca3
	nop			;0ca4
	nop			;0ca5
	nop			;0ca6
	nop			;0ca7
	nop			;0ca8
	ret			;0ca9
	nop			;0caa
	nop			;0cab
	xor a			;0cac
	ret			;0cad
	nop			;0cae
	ld d,l			;0caf
	ld d,e			;0cb0
	ld b,l			;0cb1
	ld d,d			;0cb2
	add a,b			;0cb3
	nop			;0cb4
	nop			;0cb5
	nop			;0cb6
	nop			;0cb7
	nop			;0cb8
	nop			;0cb9
	nop			;0cba
	nop			;0cbb
	nop			;0cbc
	nop			;0cbd
	nop			;0cbe
	nop			;0cbf
	nop			;0cc0
	nop			;0cc1
	nop			;0cc2
	nop			;0cc3
	nop			;0cc4
	nop			;0cc5
	nop			;0cc6
	nop			;0cc7
	nop			;0cc8
	nop			;0cc9
	nop			;0cca
	nop			;0ccb
	nop			;0ccc
	nop			;0ccd
	nop			;0cce
	nop			;0ccf
	nop			;0cd0
	nop			;0cd1
	nop			;0cd2
	nop			;0cd3
	nop			;0cd4
	nop			;0cd5
	nop			;0cd6
	nop			;0cd7
	nop			;0cd8
	nop			;0cd9
	nop			;0cda
	nop			;0cdb
	nop			;0cdc
	nop			;0cdd
	nop			;0cde
	nop			;0cdf
	nop			;0ce0
	nop			;0ce1
	nop			;0ce2
	nop			;0ce3
	nop			;0ce4
	nop			;0ce5
	nop			;0ce6
	nop			;0ce7
	nop			;0ce8
	nop			;0ce9
	nop			;0cea
	nop			;0ceb
	nop			;0cec
	nop			;0ced
	nop			;0cee
	nop			;0cef
	nop			;0cf0
	nop			;0cf1
	nop			;0cf2
	nop			;0cf3
	nop			;0cf4
	nop			;0cf5
	nop			;0cf6
	nop			;0cf7
	nop			;0cf8
	nop			;0cf9
	nop			;0cfa
	nop			;0cfb
	nop			;0cfc
	nop			;0cfd
	nop			;0cfe
	nop			;0cff
	nop			;0d00
	nop			;0d01
	nop			;0d02
	nop			;0d03
	nop			;0d04
	nop			;0d05
	nop			;0d06
	nop			;0d07
	nop			;0d08
	nop			;0d09
	nop			;0d0a
	nop			;0d0b
	nop			;0d0c
	nop			;0d0d
	nop			;0d0e
	nop			;0d0f
	nop			;0d10
	nop			;0d11
	nop			;0d12
	nop			;0d13
	nop			;0d14
	nop			;0d15
	nop			;0d16
	nop			;0d17
	nop			;0d18
	nop			;0d19
	nop			;0d1a
	nop			;0d1b
	nop			;0d1c
	nop			;0d1d
	nop			;0d1e
	nop			;0d1f
	nop			;0d20
	nop			;0d21
	nop			;0d22
	nop			;0d23
	nop			;0d24
	nop			;0d25
	nop			;0d26
	nop			;0d27
	nop			;0d28
	nop			;0d29
	nop			;0d2a
	nop			;0d2b
	nop			;0d2c
	nop			;0d2d
	nop			;0d2e
	nop			;0d2f
	nop			;0d30
	nop			;0d31
	nop			;0d32
	nop			;0d33
	nop			;0d34
	nop			;0d35
	nop			;0d36
	nop			;0d37
	nop			;0d38
	nop			;0d39
	nop			;0d3a
	nop			;0d3b
	nop			;0d3c
	nop			;0d3d
	nop			;0d3e
	nop			;0d3f
	nop			;0d40
	nop			;0d41
	nop			;0d42
	nop			;0d43
	nop			;0d44
	nop			;0d45
	nop			;0d46
	nop			;0d47
	nop			;0d48
	nop			;0d49
	nop			;0d4a
	nop			;0d4b
	nop			;0d4c
	nop			;0d4d
	nop			;0d4e
	nop			;0d4f
	nop			;0d50
	nop			;0d51
	nop			;0d52
	nop			;0d53
	nop			;0d54
	nop			;0d55
	nop			;0d56
	nop			;0d57
	nop			;0d58
	nop			;0d59
	nop			;0d5a
	nop			;0d5b
	nop			;0d5c
	nop			;0d5d
	nop			;0d5e
	nop			;0d5f
	nop			;0d60
	nop			;0d61
	nop			;0d62
	nop			;0d63
	nop			;0d64
	nop			;0d65
	nop			;0d66
	nop			;0d67
	nop			;0d68
	nop			;0d69
	nop			;0d6a
	nop			;0d6b
	nop			;0d6c
	nop			;0d6d
	nop			;0d6e
	nop			;0d6f
	nop			;0d70
	nop			;0d71
	nop			;0d72
	nop			;0d73
	nop			;0d74
	nop			;0d75
	nop			;0d76
	nop			;0d77
	nop			;0d78
	nop			;0d79
	nop			;0d7a
	nop			;0d7b
	nop			;0d7c
	nop			;0d7d
	nop			;0d7e
	nop			;0d7f
	nop			;0d80
	nop			;0d81
	nop			;0d82
	nop			;0d83
	nop			;0d84
	nop			;0d85
	nop			;0d86
	nop			;0d87
	nop			;0d88
	nop			;0d89
	nop			;0d8a
	nop			;0d8b
	nop			;0d8c
	nop			;0d8d
	nop			;0d8e
	nop			;0d8f
	nop			;0d90
	nop			;0d91
	nop			;0d92
	nop			;0d93
	nop			;0d94
	nop			;0d95
	nop			;0d96
	nop			;0d97
	nop			;0d98
	nop			;0d99
	nop			;0d9a
	nop			;0d9b
	nop			;0d9c
	nop			;0d9d
	nop			;0d9e
	nop			;0d9f
	nop			;0da0
	nop			;0da1
	nop			;0da2
	nop			;0da3
	nop			;0da4
	nop			;0da5
	nop			;0da6
	nop			;0da7
	nop			;0da8
	out (00fh),a		;0da9
	call 00100h		;0dab
	out (00eh),a		;0dae
	jp 01ba5h		;0db0
	nop			;0db3
	nop			;0db4
	nop			;0db5
	nop			;0db6
	nop			;0db7
	nop			;0db8
	nop			;0db9
	ld d,000h		;0dba
	nop			;0dbc
	nop			;0dbd
	add hl,bc			;0dbe
	out (00eh),a		;0dbf
	jp 00cffh		;0dc1
	out (00fh),a		;0dc4
	ret			;0dc6
	push hl			;0dc7
	nop			;0dc8
	ld a,c			;0dc9
	cp 00dh		;0dca
	jr c,$+36		;0dcc
	ld (0f054h),sp		;0dce
	ld sp,0f180h		;0dd2
	push hl			;0dd5
	ld hl,0ffb0h		;0dd6
	set 0,(hl)		;0dd9
	pop hl			;0ddb
	call 00d5ah		;0ddc
	ld sp,(0f054h)		;0ddf
	push hl			;0de3
	ld hl,0ffb0h		;0de4
	res 0,(hl)		;0de7
	bit 1,(hl)		;0de9
	pop hl			;0deb
	call nz,046a2h		;0dec
	ret			;0def
	ld (0f05eh),sp		;0df0
	ld sp,0f160h		;0df4
	call 00d39h		;0df7
	ld sp,(0f05eh)		;0dfa
	ret			;0dfe
	ld a,c			;0dff
	cp 00dh		;0e00
	jr c,$+38		;0e02
	ld (0f054h),sp		;0e04
	ld sp,0f180h		;0e08
	push hl			;0e0b
	ld hl,0ffb0h		;0e0c
	set 0,(hl)		;0e0f
	pop hl			;0e11
	call 00d5ah		;0e12
	ld sp,(0f054h)		;0e15
	push hl			;0e19
	ld hl,0ffb0h		;0e1a
	res 0,(hl)		;0e1d
	bit 1,(hl)		;0e1f
	pop hl			;0e21
	call nz,046a2h		;0e22
	jp 0f00bh		;0e25
	ld (0f05eh),sp		;0e28
	ld sp,0f160h		;0e2c
	call 00d39h		;0e2f
	ld sp,(0f05eh)		;0e32
	jp 0f00bh		;0e36
	ld (0f05ah),de		;0e39
	ld hl,00000h		;0e3d
	ld (0f05ch),hl		;0e40
	ld hl,00d54h		;0e43
	push hl			;0e46
	ld hl,00da0h		;0e47
	ld b,000h		;0e4a
	add hl,bc			;0e4c
	add hl,bc			;0e4d
	ld a,(hl)			;0e4e
	inc hl			;0e4f
	ld h,(hl)			;0e50
	ld l,a			;0e51
	ld c,e			;0e52
	jp (hl)			;0e53
	ld hl,(0f05ch)		;0e54
	ld b,h			;0e57
	ld a,l			;0e58
	ret			;0e59
	ld (0f050h),de		;0e5a
	ld a,e			;0e5e
	ld (0f039h),a		;0e5f
	ld hl,00000h		;0e62
	ld (0f052h),hl		;0e65
	ld (0f03eh),hl		;0e68
	ld b,h			;0e6b
	ld hl,00d7fh		;0e6c
	push hl			;0e6f
	ld a,c			;0e70
	cp 029h		;0e71
	ret nc			;0e73
	ld hl,00da0h		;0e74
	add hl,bc			;0e77
	add hl,bc			;0e78
	ld a,(hl)			;0e79
	inc hl			;0e7a
	ld h,(hl)			;0e7b
	ld l,a			;0e7c
	ld c,e			;0e7d
	jp (hl)			;0e7e
	ld a,(0f03eh)		;0e7f
	or a			;0e82
	jr z,$+23		;0e83
	ld hl,(0f050h)		;0e85
	ld (hl),000h		;0e88
	ld a,(0f03fh)		;0e8a
	or a			;0e8d
	jr z,$+12		;0e8e
	ld (hl),a			;0e90
	ld a,(0f040h)		;0e91
	ld (0f039h),a		;0e94
	call 01014h		;0e97
	ld hl,(0f052h)		;0e9a
	ld a,l			;0e9d
	ld b,h			;0e9e
	ret			;0e9f
	inc bc			;0ea0
	jp p,00df2h		;0ea1
	ld c,00eh		;0ea4
	sub b			;0ea6
	ld c,012h		;0ea7
	jp p,0f20fh		;0ea9
	sub (hl)			;0eac
	ld c,0c4h		;0ead
	ld c,0cdh		;0eaf
	ld c,0d2h		;0eb1
	ld c,0e2h		;0eb3
	ld c,0f1h		;0eb5
	rrca			;0eb7
	ret m			;0eb8
	rrca			;0eb9
	call m,0140fh		;0eba
	djnz $-9		;0ebd
	djnz $+59		;0ebf
	ld de,011ddh		;0ec1
	call m,01511h		;0ec4
	ld (de),a			;0ec7
	ld b,c			;0ec8
	ld (de),a			;0ec9
	add a,(hl)			;0eca
	ld (de),a			;0ecb
	rl e		;0ecc
	dec c			;0ece
	inc d			;0ecf
	jr c,$+22		;0ed0
	dec a			;0ed2
	inc d			;0ed3
	ld b,e			;0ed4
	inc d			;0ed5
	ld d,h			;0ed6
	inc d			;0ed7
	ld e,c			;0ed8
	inc d			;0ed9
	ld l,a			;0eda
	inc d			;0edb
	ld (hl),h			;0edc
	inc d			;0edd
	adc a,(hl)			;0ede
	inc d			;0edf
	sub l			;0ee0
	inc d			;0ee1
	xor b			;0ee2
	inc d			;0ee3
	or l			;0ee4
	inc d			;0ee5
	jp nz,00a14h		;0ee6
	dec d			;0ee9
	dec e			;0eea
	dec d			;0eeb
	dec a			;0eec
	dec d			;0eed
	dec a			;0eee
	dec d			;0eef
	ld a,015h		;0ef0
	call 00eb9h		;0ef2
	call 00e21h		;0ef5
	ld (0f05ch),a		;0ef8
	ld c,a			;0efb
	jr nc,$+18		;0efc
	ret			;0efe
	ld a,c			;0eff
	call 00e21h		;0f00
	jr nc,$+11		;0f03
	push bc			;0f05
	ld c,05eh		;0f06
	call 00e5ah		;0f08
	pop bc			;0f0b
	set 6,c		;0f0c
	ld a,c			;0f0e
	cp 009h		;0f0f
	jp nz,00e5ah		;0f11
	ld c,020h		;0f14
	call 00e5ah		;0f16
	ld a,(0f058h)		;0f19
	and 007h		;0f1c
	jr nz,$-10		;0f1e
	ret			;0f20
	cp 00dh		;0f21
	ret z			;0f23
	cp 00ah		;0f24
	ret z			;0f26
	cp 009h		;0f27
	ret z			;0f29
	cp 008h		;0f2a
	ret z			;0f2c
	cp 020h		;0f2d
	ret			;0f2f
	ld a,(0f059h)		;0f30
	or a			;0f33
	jr nz,$+28		;0f34
	call 0f206h		;0f36
	and 001h		;0f39
	ret z			;0f3b
	call 0f209h		;0f3c
	cp 013h		;0f3f
	jr nz,$+12		;0f41
	call 0f209h		;0f43
	cp 003h		;0f46
	jp z,0f203h		;0f48
	xor a			;0f4b
	ret			;0f4c
	ld (0f059h),a		;0f4d
	ld a,001h		;0f50
	ret			;0f52
	ld c,00dh		;0f53
	call 00e5ah		;0f55
	ld c,00ah		;0f58
	ld a,(0f056h)		;0f5a
	or a			;0f5d
	jr nz,$+22		;0f5e
	push bc			;0f60
	call 00e30h		;0f61
	pop bc			;0f64
	push bc			;0f65
	call 0f20ch		;0f66
	pop bc			;0f69
	push bc			;0f6a
	ld a,(0f26bh)		;0f6b
	bit 6,a		;0f6e
	call nz,0f20fh		;0f70
	pop bc			;0f73
	ld a,c			;0f74
	ld hl,0f058h		;0f75
	cp 07fh		;0f78
	ret z			;0f7a
	inc (hl)			;0f7b
	cp 020h		;0f7c
	ret nc			;0f7e
	dec (hl)			;0f7f
	ld a,(hl)			;0f80
	or a			;0f81
	ret z			;0f82
	ld a,c			;0f83
	cp 008h		;0f84
	jr nz,$+4		;0f86
	dec (hl)			;0f88
	ret			;0f89
	cp 00ah		;0f8a
	ret nz			;0f8c
	ld (hl),000h		;0f8d
	ret			;0f8f
	call 0f215h		;0f90
	jp 00ff4h		;0f93
	ld a,c			;0f96
	inc a			;0f97
	jr z,$+12		;0f98
	inc a			;0f9a
	jp nz,0f20ch		;0f9b
	call 00eb1h		;0f9e
	jp 00ff4h		;0fa1
	call 00eb1h		;0fa4
	or a			;0fa7
	jp z,00ff4h		;0fa8
	call 00eb9h		;0fab
	jp 00ff4h		;0fae
	ld a,(0f059h)		;0fb1
	or a			;0fb4
	ret nz			;0fb5
	jp 0f206h		;0fb6
	ld hl,0f059h		;0fb9
	ld a,(hl)			;0fbc
	ld (hl),000h		;0fbd
	or a			;0fbf
	ret nz			;0fc0
	jp 0f209h		;0fc1
	ld hl,00003h		;0fc4
	call 00011h		;0fc7
	jp 00ff4h		;0fca
	ld hl,00003h		;0fcd
	ld (hl),c			;0fd0
	ret			;0fd1
	ex de,hl			;0fd2
	call 00011h		;0fd3
	cp 024h		;0fd6
	ret z			;0fd8
	inc hl			;0fd9
	push hl			;0fda
	ld c,a			;0fdb
	call 00e0eh		;0fdc
	pop hl			;0fdf
	jr $-13		;0fe0
	ld a,(0f058h)		;0fe2
	ld (0f057h),a		;0fe5
	ld hl,(0f05ah)		;0fe8
	call 00011h		;0feb
	ld c,a			;0fee
	inc hl			;0fef
	push hl			;0ff0
	ld b,000h		;0ff1
	push bc			;0ff3
	push hl			;0ff4
	call 00eb9h		;0ff5
	nop			;0ff8
	nop			;0ff9
	pop hl			;0ffa
	pop bc			;0ffb
	cp 00dh		;0ffc
	jr z,$+61		;0ffe
	cp 00ah		;1000
	jr z,$+57		;1002
	cp 008h		;1004
	jr z,$+121		;1006
	cp 07fh		;1008
	jr z,$+117		;100a
	cp 005h		;100c
	jr z,$+52		;100e
	cp 010h		;1010
	jr z,$+59		;1012
	cp 018h		;1014
	jr z,$+81		;1016
	cp 015h		;1018
	jr z,$+94		;101a
	cp 012h		;101c
	jr z,$+109		;101e
	inc hl			;1020
	ld (hl),a			;1021
	inc b			;1022
	push bc			;1023
	push hl			;1024
	ld c,a			;1025
	call 00dffh		;1026
	pop hl			;1029
	pop bc			;102a
	call 00011h		;102b
	cp 003h		;102e
	ld a,b			;1030
	jr nz,$+7		;1031
	cp 001h		;1033
	jp z,0f203h		;1035
	cp c			;1038
	jr c,$-70		;1039
	pop hl			;103b
	ld (hl),b			;103c
	ld c,00dh		;103d
	jp 00e5ah		;103f
	push bc			;1042
	push hl			;1043
	call 00e53h		;1044
	xor a			;1047
	ld (0f057h),a		;1048
	jr $-86		;104b
	ld a,(0f26bh)		;104d
	xor 040h		;1050
	ld (0f26bh),a		;1052
	bit 6,a		;1055
	jr z,$-100		;1057
	res 3,a		;1059
	ld (0f26bh),a		;105b
	push bc			;105e
	ld c,007h		;105f
	call 0f20ch		;1061
	pop bc			;1064
	jr $-114		;1065
	pop hl			;1067
	ld a,(0f057h)		;1068
	ld hl,0f058h		;106b
	cp (hl)			;106e
	jp nc,00ee2h		;106f
	dec (hl)			;1072
	call 00fe4h		;1073
	jr $-14		;1076
	call 00fcdh		;1078
	pop hl			;107b
	jp 00ee2h		;107c
	ld a,b			;107f
	or a			;1080
	jp z,00ef3h		;1081
	dec b			;1084
	ld a,(0f058h)		;1085
	ld (0f056h),a		;1088
	push bc			;108b
	call 00fcdh		;108c
	pop bc			;108f
	pop hl			;1090
	push hl			;1091
	push bc			;1092
	ld a,b			;1093
	or a			;1094
	jr z,$+17		;1095
	inc hl			;1097
	call 00011h		;1098
	ld c,a			;109b
	dec b			;109c
	push bc			;109d
	push hl			;109e
	call 00dffh		;109f
	pop hl			;10a2
	pop bc			;10a3
	jr $-17		;10a4
	push hl			;10a6
	ld a,(0f056h)		;10a7
	or a			;10aa
	jp z,00ef5h		;10ab
	ld hl,0f058h		;10ae
	sub (hl)			;10b1
	jr c,$+19		;10b2
	jr z,$+17		;10b4
	ld (0f056h),a		;10b6
	call 00fe4h		;10b9
	ld hl,0f056h		;10bc
	dec (hl)			;10bf
	jr nz,$-7		;10c0
	jp 00ef5h		;10c2
	pop hl			;10c5
	pop bc			;10c6
	xor a			;10c7
	ld (0f056h),a		;10c8
	jr $-64		;10cb
	ld c,023h		;10cd
	call 00e5ah		;10cf
	call 00e53h		;10d2
	ld a,(0f058h)		;10d5
	ld hl,0f057h		;10d8
	cp (hl)			;10db
	ret nc			;10dc
	ld c,020h		;10dd
	call 00e5ah		;10df
	jr $-13		;10e2
	call 00fech		;10e4
	ld c,020h		;10e7
	call 0f20ch		;10e9
	ld c,008h		;10ec
	jp 0f20ch		;10ee
	call 00e30h		;10f1
	ld (0f05ch),a		;10f4
	ret			;10f7
	ld a,025h		;10f8
	jr $-6		;10fa
	ld hl,00000h		;10fc
	ld (0f010h),hl		;10ff
	ld (0f012h),hl		;1102
	xor a			;1105
	ld (0f04fh),a		;1106
	ld hl,00080h		;1109
	ld (0f014h),hl		;110c
	call 01447h		;110f
	jr $+11		;1112
	ld a,(0f039h)		;1114
	ld hl,0f04fh		;1117
	cp (hl)			;111a
	ret z			;111b
	ld (hl),a			;111c
	ld hl,(0f012h)		;111d
	ld a,(0f04fh)		;1120
	ld c,a			;1123
	call 01804h		;1124
	push hl			;1127
	ld c,a			;1128
	call 0f21bh		;1129
	ld a,h			;112c
	or l			;112d
	jp z,010d7h		;112e
	ld e,(hl)			;1131
	inc hl			;1132
	ld d,(hl)			;1133
	inc hl			;1134
	ld (0f033h),de		;1135
	ld (0f016h),hl		;1139
	inc hl			;113c
	inc hl			;113d
	ld (0f018h),hl		;113e
	inc hl			;1141
	inc hl			;1142
	ld (0f01ah),hl		;1143
	inc hl			;1146
	inc hl			;1147
	ld de,0f01ch		;1148
	ld bc,00008h		;114b
	ldir		;114e
	ld hl,(0f01eh)		;1150
	ld de,0f024h		;1153
	ld bc,0000fh		;1156
	ldir		;1159
	pop hl			;115b
	ld a,l			;115c
	rra			;115d
	ret c			;115e
	ld bc,(0f012h)		;115f
	call 01813h		;1163
	ld (0f012h),hl		;1166
	ld hl,(0f029h)		;1169
	ld c,003h		;116c
	call 01804h		;116e
	inc hl			;1171
	ld b,h			;1172
	ld c,l			;1173
	ld hl,(0f022h)		;1174
	ld (hl),000h		;1177
	inc hl			;1179
	dec bc			;117a
	ld a,b			;117b
	or c			;117c
	jr nz,$-6		;117d
	ld de,(0f02dh)		;117f
	ld hl,(0f022h)		;1183
	ld (hl),e			;1186
	inc hl			;1187
	ld (hl),d			;1188
	call 019fdh		;1189
	ld hl,(0f016h)		;118c
	ld (hl),003h		;118f
	inc hl			;1191
	ld (hl),000h		;1192
	call 018f2h		;1194
	ld c,0ffh		;1197
	call 018e2h		;1199
	call 01919h		;119c
	ret z			;119f
	call 01895h		;11a0
	ld a,0e5h		;11a3
	cp (hl)			;11a5
	jr z,$-15		;11a6
	ld a,(0f04eh)		;11a8
	cp (hl)			;11ab
	jr nz,$+33		;11ac
	inc hl			;11ae
	ld a,(hl)			;11af
	sub 024h		;11b0
	jr nz,$+6		;11b2
	dec a			;11b4
	ld (0f052h),a		;11b5
	ld a,(hl)			;11b8
	sub 041h		;11b9
	jr nz,$+18		;11bb
	ld b,00bh		;11bd
	ld a,0b8h		;11bf
	add a,(hl)			;11c1
	inc hl			;11c2
	djnz $-2		;11c3
	and 07fh		;11c5
	jr nz,$+6		;11c7
	dec a			;11c9
	ld (0f053h),a		;11ca
	ld c,001h		;11cd
	call 019bbh		;11cf
	call 018d2h		;11d2
	jr $-62		;11d5
	pop hl			;11d7
	ld hl,010deh		;11d8
	jp 01842h		;11db
	jr nz,$+128		;11de
	ld a,(06220h)		;11e0
	ld (hl),d			;11e3
	ld h,c			;11e4
	ld l,e			;11e5
	jr nz,$+112		;11e6
	ld h,c			;11e8
	ld (hl),b			;11e9
	ld bc,07564h		;11ea
	jr nz,$+34		;11ed
	jr z,$+34		;11ef
	add hl,hl			;11f1
	add a,b			;11f2
	ld a,(hl)			;11f3
	add a,b			;11f4
	call 018bfh		;11f5
	call 016f9h		;11f8
	ld c,00fh		;11fb
	call 01546h		;11fd
	call 01919h		;1200
	ret z			;1203
	call 018a0h		;1204
	call 00011h		;1207
	push af			;120a
	push hl			;120b
	call 01895h		;120c
	ld de,(0f050h)		;120f
	ld bc,00020h		;1213
	push hl			;1216
	ldir		;1217
	call 01406h		;1219
	pop de			;121c
	ld hl,0000ch		;121d
	add hl,de			;1220
	ld c,(hl)			;1221
	ld hl,0000fh		;1222
	add hl,de			;1225
	ld b,(hl)			;1226
	pop hl			;1227
	pop af			;1228
	ld (hl),a			;1229
	cp c			;122a
	ld a,b			;122b
	jr z,$+8		;122c
	ld a,000h		;122e
	jr nc,$+4		;1230
	ld a,080h		;1232
	inc hl			;1234
	inc hl			;1235
	inc hl			;1236
	ld (hl),a			;1237
	ret			;1238
	call 016f9h		;1239
	xor a			;123c
	ld (0f052h),a		;123d
	ld (0f04ah),a		;1240
	ld (0f04bh),a		;1243
	call 01826h		;1246
	ret nz			;1249
	call 018b5h		;124a
	and 080h		;124d
	ret nz			;124f
	ld c,00fh		;1250
	call 01546h		;1252
	call 01919h		;1255
	ret z			;1258
	ld bc,00010h		;1259
	call 01895h		;125c
	add hl,bc			;125f
	ex de,hl			;1260
	ld hl,(0f050h)		;1261
	add hl,bc			;1264
	ld c,010h		;1265
	ld a,(0f02ah)		;1267
	or a			;126a
	jr nz,$+26		;126b
	call 00011h		;126d
	or a			;1270
	ld a,(de)			;1271
	jr nz,$+3		;1272
	ld (hl),a			;1274
	or a			;1275
	jr nz,$+6		;1276
	call 00011h		;1278
	ld (de),a			;127b
	ld b,a			;127c
	call 00011h		;127d
	cp b			;1280
	jr nz,$+63		;1281
	jr $+25		;1283
	call 011c5h		;1285
	ex de,hl			;1288
	call 011c5h		;1289
	call 00014h		;128c
	cp (hl)			;128f
	jr nz,$+48		;1290
	inc de			;1292
	inc hl			;1293
	call 00014h		;1294
	cp (hl)			;1297
	jr nz,$+40		;1298
	ex de,hl			;129a
	dec c			;129b
	inc de			;129c
	inc hl			;129d
	dec c			;129e
	jr nz,$-56		;129f
	ld bc,0ffech		;12a1
	add hl,bc			;12a4
	ex de,hl			;12a5
	add hl,bc			;12a6
	call 00014h		;12a7
	cp (hl)			;12aa
	jr c,$+13		;12ab
	ld (hl),a			;12ad
	ld bc,00003h		;12ae
	add hl,bc			;12b1
	ex de,hl			;12b2
	add hl,bc			;12b3
	call 00011h		;12b4
	ld (de),a			;12b7
	ld a,0ffh		;12b8
	ld (0f035h),a		;12ba
	jp 0173fh		;12bd
	ld hl,0f052h		;12c0
	dec (hl)			;12c3
	ret			;12c4
	call 00011h		;12c5
	inc hl			;12c8
	ld b,a			;12c9
	call 00011h		;12ca
	or b			;12cd
	dec hl			;12ce
	ret nz			;12cf
	call 00014h		;12d0
	ld (hl),a			;12d3
	inc de			;12d4
	inc hl			;12d5
	call 00014h		;12d6
	ld (hl),a			;12d9
	dec de			;12da
	dec hl			;12db
	ret			;12dc
	ld c,000h		;12dd
	ex de,hl			;12df
	call 00011h		;12e0
	cp 03fh		;12e3
	jr z,$+18		;12e5
	call 018a0h		;12e7
	call 00011h		;12ea
	cp 03fh		;12ed
	call nz,018bfh		;12ef
	call 016f9h		;12f2
	ld c,00fh		;12f5
	call 01546h		;12f7
	jr $+14		;12fa
	ld hl,(0f03ch)		;12fc
	ld (0f050h),hl		;12ff
	call 016f9h		;1302
	call 0155bh		;1305
	ld hl,(0f01ch)		;1308
	ld de,(0f014h)		;130b
	ld bc,00080h		;130f
	ldir		;1312
	ret			;1314
	call 016f9h		;1315
	call 0188ch		;1318
	ld c,00ch		;131b
	call 01546h		;131d
	call 01919h		;1320
	jr z,$+23		;1323
	call 01833h		;1325
	call 01895h		;1328
	ld (hl),0e5h		;132b
	ld c,000h		;132d
	call 019bbh		;132f
	call 01742h		;1332
	call 0155bh		;1335
	jr $-24		;1338
	ld a,(0f037h)		;133a
	ld (0f052h),a		;133d
	ret			;1340
	call 016f9h		;1341
	ld a,001h		;1344
	ld (0f038h),a		;1346
	ld a,0ffh		;1349
	ld (0f036h),a		;134b
	call 017e5h		;134e
	ld a,(0f043h)		;1351
	ld hl,0f041h		;1354
	cp (hl)			;1357
	jr c,$+19		;1358
	cp 080h		;135a
	jr nz,$+37		;135c
	call 015d1h		;135e
	xor a			;1361
	ld (0f043h),a		;1362
	ld a,(0f052h)		;1365
	or a			;1368
	jr nz,$+24		;1369
	call 0177fh		;136b
	ld hl,(0f045h)		;136e
	ld a,l			;1371
	or h			;1372
	jr z,$+14		;1373
	call 017cah		;1375
	call 01930h		;1378
	call 01a0eh		;137b
	jp 0137ah		;137e
	ld a,001h		;1381
	jp 0123dh		;1383
	call 016f9h		;1386
	ld a,001h		;1389
	ld (0f038h),a		;138b
	ld a,000h		;138e
	ld (0f036h),a		;1390
	call 0188ch		;1393
	ld hl,(0f050h)		;1396
	call 01836h		;1399
	call 017e5h		;139c
	ld a,(0f043h)		;139f
	cp 080h		;13a2
	jr nc,$-35		;13a4
	call 0177fh		;13a6
	ld hl,(0f045h)		;13a9
	ld a,l			;13ac
	or h			;13ad
	ld c,000h		;13ae
	jr nz,$+69		;13b0
	call 0178ch		;13b2
	ld (0f03ah),a		;13b5
	ld bc,00000h		;13b8
	or a			;13bb
	jr z,$+9		;13bc
	ld c,a			;13be
	dec bc			;13bf
	call 017a9h		;13c0
	ld b,h			;13c3
	ld c,l			;13c4
	call 01391h		;13c5
	ld a,l			;13c8
	or h			;13c9
	jr nz,$+7		;13ca
	ld a,002h		;13cc
	jp 0123dh		;13ce
	ld (0f045h),hl		;13d1
	ex de,hl			;13d4
	ld hl,(0f050h)		;13d5
	ld bc,00010h		;13d8
	add hl,bc			;13db
	ld a,(0f02ah)		;13dc
	or a			;13df
	ld a,(0f03ah)		;13e0
	jr nz,$+8		;13e3
	call 0189bh		;13e5
	ld (hl),e			;13e8
	jr $+10		;13e9
	ld c,a			;13eb
	ld b,000h		;13ec
	add hl,bc			;13ee
	add hl,bc			;13ef
	ld (hl),e			;13f0
	inc hl			;13f1
	ld (hl),d			;13f2
	ld c,002h		;13f3
	ld a,(0f052h)		;13f5
	or a			;13f8
	ret nz			;13f9
	push bc			;13fa
	call 017cah		;13fb
	ld a,(0f038h)		;13fe
	dec a			;1401
	dec a			;1402
	jr nz,$+59		;1403
	pop bc			;1405
	push bc			;1406
	ld a,c			;1407
	dec a			;1408
	dec a			;1409
	jr nz,$+52		;140a
	push hl			;140c
	ld hl,(0f01ch)		;140d
	ld b,080h		;1410
	ld (hl),a			;1412
	inc hl			;1413
	djnz $-2		;1414
	call 0144dh		;1416
	ld hl,(0f047h)		;1419
	ld c,002h		;141c
	ld (0f045h),hl		;141e
	push bc			;1421
	call 01930h		;1422
	pop bc			;1425
	call 01a13h		;1426
	ld hl,(0f045h)		;1429
	ld c,000h		;142c
	ld a,(0f027h)		;142e
	ld b,a			;1431
	and l			;1432
	cp b			;1433
	inc hl			;1434
	jr nz,$-23		;1435
	pop hl			;1437
	ld (0f045h),hl		;1438
	call 01447h		;143b
	call 01930h		;143e
	pop bc			;1441
	push bc			;1442
	call 01a13h		;1443
	pop bc			;1446
	ld a,(0f043h)		;1447
	ld hl,0f041h		;144a
	cp (hl)			;144d
	jr c,$+6		;144e
	ld (hl),a			;1450
	inc (hl)			;1451
	ld c,002h		;1452
	push af			;1454
	call 018b5h		;1455
	and 07fh		;1458
	ld (hl),a			;145a
	pop af			;145b
	cp 07fh		;145c
	jr nz,$+28		;145e
	ld a,(0f038h)		;1460
	cp 001h		;1463
	jr nz,$+21		;1465
	call 0137ah		;1467
	call 015d1h		;146a
	ld hl,0f052h		;146d
	ld a,(hl)			;1470
	or a			;1471
	jr nz,$+6		;1472
	dec a			;1474
	ld (0f043h),a		;1475
	ld (hl),000h		;1478
	call 018a8h		;147a
	ld a,(0f038h)		;147d
	cp 002h		;1480
	jr nz,$+3		;1482
	xor a			;1484
	ld c,a			;1485
	ld a,(0f043h)		;1486
	add a,c			;1489
	ld (hl),a			;148a
	ex de,hl			;148b
	ld a,(0f041h)		;148c
	ld (hl),a			;148f
	ret			;1490
	ld d,b			;1491
	ld e,c			;1492
	ld a,c			;1493
	or b			;1494
	jr z,$+14		;1495
	dec bc			;1497
	push de			;1498
	push bc			;1499
	call 01995h		;149a
	rra			;149d
	jp nc,013bbh		;149e
	pop bc			;14a1
	pop de			;14a2
	ld hl,(0f029h)		;14a3
	ld a,e			;14a6
	sub l			;14a7
	ld a,d			;14a8
	sbc a,h			;14a9
	jr nc,$+25		;14aa
	inc de			;14ac
	push bc			;14ad
	push de			;14ae
	ld b,d			;14af
	ld c,e			;14b0
	call 01995h		;14b1
	rra			;14b4
	jr nc,$+6		;14b5
	pop de			;14b7
	pop bc			;14b8
	jr $-38		;14b9
	rla			;14bb
	inc a			;14bc
	call 019f7h		;14bd
	pop hl			;14c0
	pop de			;14c1
	ret			;14c2
	ld a,c			;14c3
	or b			;14c4
	jr nz,$-50		;14c5
	ld hl,00000h		;14c7
	ret			;14ca
	call 018bfh		;14cb
	call 016f9h		;14ce
	call 0188ch		;14d1
	ld hl,(0f050h)		;14d4
	push hl			;14d7
	ld hl,0f00eh		;14d8
	ld (0f050h),hl		;14db
	ld c,001h		;14de
	call 01546h		;14e0
	call 01919h		;14e3
	pop hl			;14e6
	ld (0f050h),hl		;14e7
	ret z			;14ea
	ex de,hl			;14eb
	ld hl,0000fh		;14ec
	add hl,de			;14ef
	ld b,011h		;14f0
	xor a			;14f2
	ld (hl),a			;14f3
	inc hl			;14f4
	djnz $-2		;14f5
	ld hl,0000dh		;14f7
	add hl,de			;14fa
	ld (hl),a			;14fb
	call 018d2h		;14fc
	ld e,000h		;14ff
	ld b,020h		;1501
	call 0172dh		;1503
	call 018b5h		;1506
	or 080h		;1509
	ld (hl),a			;150b
	ret			;150c
	call 016f9h		;150d
	call 0188ch		;1510
	ld c,00ch		;1513
	call 01546h		;1515
	ld hl,(0f050h)		;1518
	call 00011h		;151b
	ld de,00010h		;151e
	add hl,de			;1521
	ld (hl),a			;1522
	call 01919h		;1523
	jp z,0123ah		;1526
	call 01833h		;1529
	ld e,010h		;152c
	ld b,00ch		;152e
	call 0172dh		;1530
	call 0155bh		;1533
	jr $-19		;1536
	ld hl,(0f012h)		;1538
	jr $+86		;153b
	ld a,(0f04fh)		;153d
	jp 0123dh		;1540
	ld (0f014h),de		;1543
	ld bc,(0f014h)		;1547
	jr $+6		;154b
	ld bc,(0f01ch)		;154d
	jp 0f224h		;1551
	ld hl,(0f022h)		;1554
	jr $+58		;1557
	ld bc,(0f010h)		;1559
	call 01813h		;155d
	ld (0f010h),hl		;1560
	ld hl,(0f02bh)		;1563
	inc hl			;1566
	ex de,hl			;1567
	ld hl,(0f016h)		;1568
	ld (hl),e			;156b
	inc hl			;156c
	ld (hl),d			;156d
	ret			;156e
	ld hl,(0f010h)		;156f
	jr $+31		;1572
	call 016f9h		;1574
	ld c,00ch		;1577
	call 01546h		;1579
	call 01919h		;157c
	jp z,0123ah		;157f
	ld e,000h		;1582
	ld b,00ch		;1584
	call 0172dh		;1586
	call 0155bh		;1589
	jr $-16		;158c
	ld hl,(0f01eh)		;158e
	ld (0f052h),hl		;1591
	ret			;1594
	ld a,(0f039h)		;1595
	cp 0ffh		;1598
	jr nz,$+8		;159a
	ld a,(0f04eh)		;159c
	jp 0123dh		;159f
	and 01fh		;15a2
	ld (0f04eh),a		;15a4
	ret			;15a7
	call 016f9h		;15a8
	xor a			;15ab
	ld c,0ffh		;15ac
	call 01630h		;15ae
	call z,01249h		;15b1
	ret			;15b4
	call 016f9h		;15b5
	xor a			;15b8
	ld c,000h		;15b9
	call 01630h		;15bb
	call z,0128eh		;15be
	ret			;15c1
	call 016f9h		;15c2
	ld c,00ch		;15c5
	call 01546h		;15c7
	ld hl,(0f050h)		;15ca
	ld de,00021h		;15cd
	add hl,de			;15d0
	push hl			;15d1
	ld (hl),d			;15d2
	inc hl			;15d3
	ld (hl),d			;15d4
	inc hl			;15d5
	ld (hl),d			;15d6
	call 01919h		;15d7
	jr z,$+46		;15da
	call 01895h		;15dc
	ld de,0000fh		;15df
	call 016c7h		;15e2
	pop hl			;15e5
	push hl			;15e6
	ld e,a			;15e7
	call 00011h		;15e8
	ld d,a			;15eb
	ld a,c			;15ec
	sub d			;15ed
	inc hl			;15ee
	call 00011h		;15ef
	ld d,a			;15f2
	ld a,b			;15f3
	sbc a,d			;15f4
	inc hl			;15f5
	call 00011h		;15f6
	ld d,a			;15f9
	ld a,e			;15fa
	sbc a,d			;15fb
	jr c,$+7		;15fc
	ld (hl),e			;15fe
	dec hl			;15ff
	ld (hl),b			;1600
	dec hl			;1601
	ld (hl),c			;1602
	call 0155bh		;1603
	jr $-47		;1606
	pop hl			;1608
	ret			;1609
	ld hl,(0f050h)		;160a
	ld de,00020h		;160d
	call 016c7h		;1610
	ld hl,00021h		;1613
	add hl,de			;1616
	ld (hl),c			;1617
	inc hl			;1618
	ld (hl),b			;1619
	inc hl			;161a
	ld (hl),a			;161b
	ret			;161c
	ld hl,(0f050h)		;161d
	ld a,l			;1620
	cpl			;1621
	ld e,a			;1622
	ld a,h			;1623
	cpl			;1624
	ld hl,(0f012h)		;1625
	and h			;1628
	ld d,a			;1629
	ld a,l			;162a
	and e			;162b
	ld e,a			;162c
	ld hl,(0f010h)		;162d
	ex de,hl			;1630
	ld (0f012h),hl		;1631
	ld a,l			;1634
	and e			;1635
	ld l,a			;1636
	ld a,h			;1637
	and d			;1638
	ld h,a			;1639
	ld (0f010h),hl		;163a
	ret			;163d
	call 016f9h		;163e
	ld a,002h		;1641
	jp 014b9h		;1643
	ld a,0ffh		;1646
	ld (0f037h),a		;1648
	ld hl,0f03bh		;164b
	ld (hl),c			;164e
	ld hl,(0f050h)		;164f
	ld (0f03ch),hl		;1652
	call 018f2h		;1655
	call 019fdh		;1658
	ld c,000h		;165b
	call 018e2h		;165d
	call 01919h		;1660
	jp z,015c9h		;1663
	ld hl,(0f03ch)		;1666
	ex de,hl			;1669
	call 00014h		;166a
	cp 0e5h		;166d
	jr z,$+9		;166f
	push de			;1671
	call 018c5h		;1672
	pop de			;1675
	jr nc,$+83		;1676
	call 01895h		;1678
	ld a,(0f03bh)		;167b
	ld c,a			;167e
	ld b,000h		;167f
	ld a,c			;1681
	or a			;1682
	jr z,$+53		;1683
	call 00014h		;1685
	cp 03fh		;1688
	jr z,$+40		;168a
	ld a,b			;168c
	cp 00dh		;168d
	jr z,$+35		;168f
	cp 00ch		;1691
	call 00014h		;1693
	jr z,$+9		;1696
	sub (hl)			;1698
	and 07fh		;1699
	jr z,$+23		;169b
	jr $-66		;169d
	push bc			;169f
	ld c,(hl)			;16a0
	push af			;16a1
	ld a,(0f028h)		;16a2
	cpl			;16a5
	ld b,a			;16a6
	ld a,c			;16a7
	and b			;16a8
	ld c,a			;16a9
	pop af			;16aa
	and b			;16ab
	sub c			;16ac
	and 01fh		;16ad
	pop bc			;16af
	jr nz,$-85		;16b0
	inc de			;16b2
	inc hl			;16b3
	inc b			;16b4
	dec c			;16b5
	jr $-53		;16b6
	ld a,(0f04ah)		;16b8
	and 003h		;16bb
	ld (0f052h),a		;16bd
	ld hl,0f037h		;16c0
	ld a,(hl)			;16c3
	rla			;16c4
	ret nc			;16c5
	xor a			;16c6
	ld (hl),a			;16c7
	ret			;16c8
	call 018f2h		;16c9
	ld a,0ffh		;16cc
	jp 0123dh		;16ce
	xor a			;16d1
	ld (0f035h),a		;16d2
	call 0113ch		;16d5
	call 01919h		;16d8
	ret z			;16db
	ld hl,(0f050h)		;16dc
	ld bc,0000ch		;16df
	add hl,bc			;16e2
	call 00011h		;16e3
	inc a			;16e6
	and 01fh		;16e7
	ld (hl),a			;16e9
	jr z,$+15		;16ea
	ld b,a			;16ec
	ld a,(0f028h)		;16ed
	and b			;16f0
	ld hl,0f035h		;16f1
	and (hl)			;16f4
	jr z,$+17		;16f5
	jr $+41		;16f7
	ld bc,00002h		;16f9
	add hl,bc			;16fc
	call 00011h		;16fd
	inc a			;1700
	ld (hl),a			;1701
	and 00fh		;1702
	jr z,$+38		;1704
	ld c,00fh		;1706
	call 01546h		;1708
	call 01919h		;170b
	jr nz,$+18		;170e
	ld a,(0f036h)		;1710
	inc a			;1713
	jr z,$+22		;1714
	call 013d1h		;1716
	call 01919h		;1719
	jr z,$+14		;171c
	jr $+5		;171e
	call 01104h		;1720
	call 017e5h		;1723
	xor a			;1726
	jp 0123dh		;1727
	call 01281h		;172a
	jp 01406h		;172d
	ld (0f038h),a		;1730
	push bc			;1733
	ld de,(0f050h)		;1734
	ld hl,00021h		;1738
	add hl,de			;173b
	call 00011h		;173c
	and 07fh		;173f
	push af			;1741
	call 00011h		;1742
	rla			;1745
	inc hl			;1746
	call 00011h		;1747
	rla			;174a
	and 01fh		;174b
	ld c,a			;174d
	call 00011h		;174e
	rra			;1751
	rra			;1752
	rra			;1753
	rra			;1754
	and 00fh		;1755
	ld b,a			;1757
	inc hl			;1758
	call 00011h		;1759
	ld l,a			;175c
	pop af			;175d
	inc l			;175e
	dec l			;175f
	ld l,006h		;1760
	jr nz,$+93		;1762
	ld hl,00020h		;1764
	add hl,de			;1767
	ld (hl),a			;1768
	ld hl,0000ch		;1769
	add hl,de			;176c
	call 00011h		;176d
	sub c			;1770
	jr nz,$+14		;1771
	ld hl,0000eh		;1773
	add hl,de			;1776
	call 00011h		;1777
	sub b			;177a
	and 07fh		;177b
	jr z,$+54		;177d
	push bc			;177f
	push de			;1780
	call 0113ch		;1781
	pop de			;1784
	pop bc			;1785
	ld l,003h		;1786
	ld a,(0f052h)		;1788
	inc a			;178b
	jr z,$+44		;178c
	ld hl,0000ch		;178e
	add hl,de			;1791
	ld (hl),c			;1792
	ld hl,0000eh		;1793
	add hl,de			;1796
	ld (hl),b			;1797
	call 010fbh		;1798
	ld a,(0f052h)		;179b
	inc a			;179e
	jr nz,$+20		;179f
	pop bc			;17a1
	push bc			;17a2
	ld l,004h		;17a3
	inc c			;17a5
	jr z,$+18		;17a6
	call 013d1h		;17a8
	ld l,005h		;17ab
	ld a,(0f052h)		;17ad
	inc a			;17b0
	jr z,$+7		;17b1
	pop bc			;17b3
	xor a			;17b4
	jp 0123dh		;17b5
	push hl			;17b8
	call 018b5h		;17b9
	ld (hl),0c0h		;17bc
	pop hl			;17be
	pop bc			;17bf
	ld a,l			;17c0
	ld (0f052h),a		;17c1
	jp 01406h		;17c4
	ex de,hl			;17c7
	add hl,de			;17c8
	call 00011h		;17c9
	ld c,a			;17cc
	ld b,000h		;17cd
	ld hl,0000ch		;17cf
	add hl,de			;17d2
	call 00011h		;17d3
	rrca			;17d6
	and 080h		;17d7
	add a,c			;17d9
	ld c,a			;17da
	ld a,000h		;17db
	adc a,b			;17dd
	ld b,a			;17de
	call 00011h		;17df
	rrca			;17e2
	and 00fh		;17e3
	add a,b			;17e5
	ld b,a			;17e6
	inc hl			;17e7
	inc hl			;17e8
	call 00011h		;17e9
	add a,a			;17ec
	add a,a			;17ed
	add a,a			;17ee
	add a,a			;17ef
	rl h		;17f0
	add a,b			;17f2
	ld b,a			;17f3
	rla			;17f4
	or h			;17f5
	and 001h		;17f6
	ret			;17f8
	ld a,0ffh		;17f9
	ld (0f03eh),a		;17fb
	ld hl,(0f050h)		;17fe
	call 00011h		;1801
	and 01fh		;1804
	dec a			;1806
	ld (0f039h),a		;1807
	cp 01eh		;180a
	jr nc,$+20		;180c
	ld a,(0f04fh)		;180e
	ld (0f040h),a		;1811
	call 00011h		;1814
	ld (0f03fh),a		;1817
	and 0e0h		;181a
	ld (hl),a			;181c
	call 01014h		;181d
	ld a,(0f04eh)		;1820
	ld c,a			;1823
	ld hl,(0f050h)		;1824
	call 00011h		;1827
	or c			;182a
	ld (hl),a			;182b
	ret			;182c
	ld d,000h		;182d
	ld hl,(0f050h)		;182f
	add hl,de			;1832
	ex de,hl			;1833
	call 01895h		;1834
	call 00014h		;1837
	ld (hl),a			;183a
	inc de			;183b
	inc hl			;183c
	djnz $-6		;183d
	call 01922h		;183f
	call 01750h		;1842
	call 0144dh		;1845
	ld c,001h		;1848
	call 01a13h		;184a
	jp 01447h		;184d
	ld c,0ffh		;1850
	ld hl,(0f04ch)		;1852
	ex de,hl			;1855
	ld hl,(0f02fh)		;1856
	call 018dbh		;1859
	ret nc			;185c
	push bc			;185d
	ld b,080h		;185e
	ld hl,(0f01ch)		;1860
	xor a			;1863
	add a,(hl)			;1864
	inc hl			;1865
	djnz $-2		;1866
	ld de,(0f020h)		;1868
	ld hl,(0f04ch)		;186c
	add hl,de			;186f
	pop bc			;1870
	inc c			;1871
	jr z,$+11		;1872
	cp (hl)			;1874
	ret z			;1875
	call 018c5h		;1876
	ret nc			;1879
	jp 01459h		;187a
	ld (hl),a			;187d
	ret			;187e
	call 0178ch		;187f
	ld c,a			;1882
	ld b,000h		;1883
	call 017a9h		;1885
	ld (0f045h),hl		;1888
	ret			;188b
	ld hl,0f026h		;188c
	ld c,(hl)			;188f
	ld a,(0f043h)		;1890
	or a			;1893
	rra			;1894
	dec c			;1895
	jr nz,$-3		;1896
	ld b,a			;1898
	ld a,008h		;1899
	sub (hl)			;189b
	ld c,a			;189c
	ld a,(0f042h)		;189d
	dec c			;18a0
	jr z,$+6		;18a1
	or a			;18a3
	rla			;18a4
	jr $-5		;18a5
	add a,b			;18a7
	ret			;18a8
	ld hl,(0f050h)		;18a9
	ld de,00010h		;18ac
	add hl,de			;18af
	add hl,bc			;18b0
	ld a,(0f02ah)		;18b1
	or a			;18b4
	jr nz,$+9		;18b5
	call 00011h		;18b7
	ld l,a			;18ba
	ld h,000h		;18bb
	ret			;18bd
	add hl,bc			;18be
	call 00011h		;18bf
	ld e,a			;18c2
	inc hl			;18c3
	call 00011h		;18c4
	ld d,a			;18c7
	ex de,hl			;18c8
	ret			;18c9
	ld a,(0f026h)		;18ca
	ld hl,(0f045h)		;18cd
	add hl,hl			;18d0
	dec a			;18d1
	jr nz,$-2		;18d2
	ld (0f047h),hl		;18d4
	ld a,(0f027h)		;18d7
	ld c,a			;18da
	ld a,(0f043h)		;18db
	and c			;18de
	or l			;18df
	ld l,a			;18e0
	ld (0f045h),hl		;18e1
	ret			;18e4
	call 018a8h		;18e5
	call 00011h		;18e8
	ld (0f043h),a		;18eb
	ex de,hl			;18ee
	call 00011h		;18ef
	ld (0f041h),a		;18f2
	call 018a0h		;18f5
	call 00011h		;18f8
	ld c,a			;18fb
	ld a,(0f028h)		;18fc
	and c			;18ff
	ld (0f042h),a		;1900
	ret			;1903
	inc c			;1904
	dec c			;1905
	ret z			;1906
	srl h		;1907
	rr l		;1909
	jr $-6		;190b
	inc c			;190d
	dec c			;190e
	ret z			;190f
	add hl,hl			;1910
	jr $-3		;1911
	push bc			;1913
	ld a,(0f04fh)		;1914
	ld c,a			;1917
	ld hl,00001h		;1918
	call 0180dh		;191b
	pop bc			;191e
	ld a,c			;191f
	or l			;1920
	ld l,a			;1921
	ld a,b			;1922
	or h			;1923
	ld h,a			;1924
	ret			;1925
	ld hl,(0f010h)		;1926
	ld a,(0f04fh)		;1929
	ld c,a			;192c
	call 01804h		;192d
	bit 0,l		;1930
	ret			;1932
	call 01895h		;1933
	ld de,00009h		;1936
	add hl,de			;1939
	call 00011h		;193a
	rla			;193d
	ret nc			;193e
	ld hl,01848h		;193f
	call 01a2ch		;1942
	jp 0f203h		;1945
	jr nz,$+128		;1948
	ld a,(07a20h)		;194a
	ld h,c			;194d
	ld (hl),b			;194e
	ld l,c			;194f
	ld (hl),e			;1950
	jr nz,$+114		;1951
	ld l,h			;1953
	ld l,c			;1954
	ld l,e			;1955
	ld (hl),l			;1956
	jr nz,$+124		;1957
	ld h,c			;1959
	ld h,d			;195a
	ld (hl),d			;195b
	ld l,a			;195c
	ld l,(hl)			;195d
	ld l,c			;195e
	ld l,a			;195f
	ld l,(hl)			;1960
	ld a,c			;1961
	jr nz,$+47		;1962
	jr nz,$+84		;1964
	cpl			;1966
	ld c,a			;1967
	jr nz,$+34		;1968
	jr z,$+34		;196a
	add hl,hl			;196c
	add a,b			;196d
	ld a,(hl)			;196e
	add a,b			;196f
	jr nz,$+128		;1970
	ld a,(07a20h)		;1972
	ld h,c			;1975
	ld (hl),b			;1976
	ld l,c			;1977
	ld (hl),e			;1978
	jr nz,$+124		;1979
	ld h,c			;197b
	ld h,d			;197c
	ld (hl),d			;197d
	ld l,a			;197e
	ld l,(hl)			;197f
	ld l,c			;1980
	ld l,a			;1981
	ld l,(hl)			;1982
	ld a,c			;1983
	jr nz,$+34		;1984
	jr z,$+34		;1986
	add hl,hl			;1988
	add a,b			;1989
	ld a,(hl)			;198a
	add a,b			;198b
	call 01826h		;198c
	ret z			;198f
	ld hl,01870h		;1990
	jr $-81		;1993
	ld hl,(0f01ch)		;1995
	ld a,(0f049h)		;1998
	add a,l			;199b
	ld l,a			;199c
	ret nc			;199d
	inc h			;199e
	ret			;199f
	ld hl,(0f050h)		;19a0
	ld de,0000ch		;19a3
	add hl,de			;19a6
	ret			;19a7
	ld hl,(0f050h)		;19a8
	ld de,0000fh		;19ab
	add hl,de			;19ae
	ex de,hl			;19af
	ld hl,00011h		;19b0
	add hl,de			;19b3
	ret			;19b4
	ld hl,(0f050h)		;19b5
	ld de,0000eh		;19b8
	add hl,de			;19bb
	jp 00011h		;19bc
	call 018b5h		;19bf
	ld (hl),000h		;19c2
	ret			;19c4
	ld de,(0f04ah)		;19c5
	ld hl,(0f016h)		;19c9
	ld a,e			;19cc
	sub (hl)			;19cd
	inc hl			;19ce
	ld a,d			;19cf
	sbc a,(hl)			;19d0
	ret			;19d1
	call 018c5h		;19d2
	ret c			;19d5
	inc de			;19d6
	ld (hl),d			;19d7
	dec hl			;19d8
	ld (hl),e			;19d9
	ret			;19da
	ld a,e			;19db
	sub l			;19dc
	ld l,a			;19dd
	ld a,d			;19de
	sbc a,h			;19df
	ld h,a			;19e0
	ret			;19e1
	ld de,(0f02bh)		;19e2
	ld hl,(0f04ah)		;19e6
	inc hl			;19e9
	ld (0f04ah),hl		;19ea
	call 018dbh		;19ed
	jr nc,$+9		;19f0
	ld hl,0ffffh		;19f2
	ld (0f04ah),hl		;19f5
	ret			;19f8
	ld a,(0f04ah)		;19f9
	and 003h		;19fc
	ld b,005h		;19fe
	add a,a			;1a00
	djnz $-1		;1a01
	ld (0f049h),a		;1a03
	or a			;1a06
	ret nz			;1a07
	push bc			;1a08
	call 01922h		;1a09
	call 0144dh		;1a0c
	call 01a0eh		;1a0f
	call 01447h		;1a12
	pop bc			;1a15
	jp 01752h		;1a16
	ld hl,0f04ah		;1a19
	ld a,(hl)			;1a1c
	inc hl			;1a1d
	cp (hl)			;1a1e
	ret nz			;1a1f
	inc a			;1a20
	ret			;1a21
	ld hl,(0f04ah)		;1a22
	ld c,002h		;1a25
	call 01804h		;1a27
	ld (0f045h),hl		;1a2a
	ld (0f04ch),hl		;1a2d
	ld bc,(0f045h)		;1a30
	ld hl,(0f01ah)		;1a34
	ld e,(hl)			;1a37
	inc hl			;1a38
	ld d,(hl)			;1a39
	ld hl,(0f018h)		;1a3a
	ld a,(hl)			;1a3d
	inc hl			;1a3e
	ld h,(hl)			;1a3f
	ld l,a			;1a40
	ld a,c			;1a41
	sub e			;1a42
	ld a,b			;1a43
	sbc a,d			;1a44
	jr nc,$+16		;1a45
	push hl			;1a47
	ld hl,(0f024h)		;1a48
	ld a,e			;1a4b
	sub l			;1a4c
	ld e,a			;1a4d
	ld a,d			;1a4e
	sbc a,h			;1a4f
	ld d,a			;1a50
	pop hl			;1a51
	dec hl			;1a52
	jr $-18		;1a53
	push hl			;1a55
	ld hl,(0f024h)		;1a56
	add hl,de			;1a59
	jr c,$+13		;1a5a
	ld a,c			;1a5c
	sub l			;1a5d
	ld a,b			;1a5e
	sbc a,h			;1a5f
	jr c,$+7		;1a60
	ex de,hl			;1a62
	pop hl			;1a63
	inc hl			;1a64
	jr $-16		;1a65
	pop hl			;1a67
	push bc			;1a68
	push de			;1a69
	push hl			;1a6a
	ex de,hl			;1a6b
	ld hl,(0f031h)		;1a6c
	add hl,de			;1a6f
	ld b,h			;1a70
	ld c,l			;1a71
	call 0f21eh		;1a72
	pop de			;1a75
	ld hl,(0f018h)		;1a76
	ld (hl),e			;1a79
	inc hl			;1a7a
	ld (hl),d			;1a7b
	pop de			;1a7c
	ld hl,(0f01ah)		;1a7d
	ld (hl),e			;1a80
	inc hl			;1a81
	ld (hl),d			;1a82
	pop hl			;1a83
	or a			;1a84
	sbc hl,de		;1a85
	ld c,l			;1a87
	ld b,h			;1a88
	ld de,(0f033h)		;1a89
	call 0f230h		;1a8d
	ld c,l			;1a90
	ld b,h			;1a91
	jp 0f221h		;1a92
	ld a,c			;1a95
	and 007h		;1a96
	inc a			;1a98
	ld e,a			;1a99
	ld d,a			;1a9a
	ld a,c			;1a9b
	rrca			;1a9c
	rrca			;1a9d
	rrca			;1a9e
	and 01fh		;1a9f
	ld c,a			;1aa1
	ld a,b			;1aa2
	add a,a			;1aa3
	add a,a			;1aa4
	add a,a			;1aa5
	add a,a			;1aa6
	add a,a			;1aa7
	or c			;1aa8
	ld c,a			;1aa9
	ld a,b			;1aaa
	rrca			;1aab
	rrca			;1aac
	rrca			;1aad
	and 01fh		;1aae
	ld b,a			;1ab0
	ld hl,(0f022h)		;1ab1
	add hl,bc			;1ab4
	ld a,(hl)			;1ab5
	rlca			;1ab6
	dec e			;1ab7
	jr nz,$-2		;1ab8
	ret			;1aba
	call 01895h		;1abb
	ld de,00010h		;1abe
	add hl,de			;1ac1
	push bc			;1ac2
	ld c,011h		;1ac3
	pop de			;1ac5
	dec c			;1ac6
	ret z			;1ac7
	push de			;1ac8
	ld a,(0f02ah)		;1ac9
	or a			;1acc
	jr nz,$+9		;1acd
	push bc			;1acf
	push hl			;1ad0
	ld c,(hl)			;1ad1
	ld b,000h		;1ad2
	jr $+8		;1ad4
	dec c			;1ad6
	push bc			;1ad7
	ld c,(hl)			;1ad8
	inc hl			;1ad9
	ld b,(hl)			;1ada
	push hl			;1adb
	ld a,c			;1adc
	or b			;1add
	jr z,$+12		;1ade
	ld hl,(0f029h)		;1ae0
	ld a,l			;1ae3
	sub c			;1ae4
	ld a,h			;1ae5
	sbc a,b			;1ae6
	call nc,019efh		;1ae7
	pop hl			;1aea
	inc hl			;1aeb
	pop bc			;1aec
	jr $-40		;1aed
	push de			;1aef
	call 01995h		;1af0
	and 0feh		;1af3
	pop bc			;1af5
	or c			;1af6
	rrca			;1af7
	dec d			;1af8
	jr nz,$-2		;1af9
	ld (hl),a			;1afb
	ret			;1afc
	call 0f218h		;1afd
	xor a			;1b00
	ld hl,(0f018h)		;1b01
	ld (hl),a			;1b04
	inc hl			;1b05
	ld (hl),a			;1b06
	ld hl,(0f01ah)		;1b07
	ld (hl),a			;1b0a
	inc hl			;1b0b
	ld (hl),a			;1b0c
	ret			;1b0d
	call 0f227h		;1b0e
	jr $+5		;1b11
	call 0f22ah		;1b13
	or a			;1b16
	ret z			;1b17
	ld hl,01a23h		;1b18
	call 01a2ch		;1b1b
	or a			;1b1e
	jp z,0f203h		;1b1f
	ret			;1b22
	ld a,(hl)			;1b23
	ld a,(05262h)		;1b24
	ld c,c			;1b27
	add a,b			;1b28
	ld d,d			;1b29
	ld c,c			;1b2a
	add a,b			;1b2b
	ld a,(0f04fh)		;1b2c
	add a,041h		;1b2f
	ld c,a			;1b31
	jp 00008h		;1b32
	ld sp,0f13ah		;1b35
	ld ix,0f0b8h		;1b38
	ld (ix-048h),010h		;1b3c
	push bc			;1b40
	ld a,c			;1b41
	rra			;1b42
	rra			;1b43
	rra			;1b44
	rra			;1b45
	and 00fh		;1b46
	ld e,a			;1b48
	call 03445h		;1b49
	call 033d8h		;1b4c
	ld (0f06bh),a		;1b4f
	pop bc			;1b52
	ld a,c			;1b53
	and 00fh		;1b54
	ld (0f06eh),a		;1b56
	xor a			;1b59
	ld (0f06ch),a		;1b5a
	ld hl,0f13ah		;1b5d
	bit 0,(hl)		;1b60
	jr z,$+22		;1b62
	push hl			;1b64
	call 01b2ah		;1b65
	pop hl			;1b68
	bit 1,(hl)		;1b69
	jr z,$+13		;1b6b
	push hl			;1b6d
	ld a,001h		;1b6e
	call 033d2h		;1b70
	ld a,h			;1b73
	ld (0f06ch),a		;1b74
	pop hl			;1b77
	res 0,(hl)		;1b78
	res 1,(hl)		;1b7a
	ld a,(0f06eh)		;1b7c
	call 033d2h		;1b7f
	ld sp,0f13ah		;1b82
	xor a			;1b85
	ld (0f06ah),a		;1b86
	call 0379ah		;1b89
	call 033ddh		;1b8c
	add a,041h		;1b8f
	call 0376bh		;1b91
	call 03443h		;1b94
	and 01fh		;1b97
	ld l,a			;1b99
	ld h,000h		;1b9a
	call nz,0388dh		;1b9c
	ld a,03eh		;1b9f
	call 0376bh		;1ba1
	call 01ed1h		;1ba4
	call 033e2h		;1ba7
	call 033ddh		;1baa
	ld (0f06eh),a		;1bad
	call 02bd3h		;1bb0
	jp nz,01b06h		;1bb3
	ld a,(0f076h)		;1bb6
	or a			;1bb9
	jp nz,01ad4h		;1bba
	call 01c32h		;1bbd
	ld hl,01cbch		;1bc0
	ld e,a			;1bc3
	ld d,000h		;1bc4
	add hl,de			;1bc6
	add hl,de			;1bc7
	ld a,(hl)			;1bc8
	inc hl			;1bc9
	ld h,(hl)			;1bca
	ld l,a			;1bcb
	jp (hl)			;1bcc
	set 0,(ix-04eh)		;1bcd
	call 02bd3h		;1bd1
	ld a,(0f077h)		;1bd4
	cp 020h		;1bd7
	jr nz,$+116		;1bd9
	ld a,(0f076h)		;1bdb
	or a			;1bde
	jr z,$+12		;1bdf
	dec a			;1be1
	ld (0f06eh),a		;1be2
	call 01c2bh		;1be5
	call 033d2h		;1be8
	bit 0,(ix-04eh)		;1beb
	jp nz,0f278h		;1bef
	call 02bd3h		;1bf2
	ld hl,0f077h		;1bf5
	ld a,(hl)			;1bf8
	sub 020h		;1bf9
	dec hl			;1bfb
	or (hl)			;1bfc
	jp nz,01b06h		;1bfd
	jp 01a82h		;1c00
	call 0343eh		;1c03
	call 0379ah		;1c06
	ld hl,(0f072h)		;1c09
	call 00011h		;1c0c
	cp 020h		;1c0f
	jr z,$+11		;1c11
	or a			;1c13
	jr z,$+8		;1c14
	call 0376bh		;1c16
	inc hl			;1c19
	jr $-14		;1c1a
	ld a,03fh		;1c1c
	call 0376bh		;1c1e
	call 0379ah		;1c21
	call 01b2ah		;1c24
	jp 01a82h		;1c27
	ld hl,0f06bh		;1c2a
	ld a,(hl)			;1c2d
	or a			;1c2e
	ret z			;1c2f
	xor a			;1c30
	ld (hl),a			;1c31
	ld hl,0f203h		;1c32
	ld (00001h),hl		;1c35
	ld hl,0f006h		;1c38
	ld (00006h),hl		;1c3b
	call 033d2h		;1c3e
	call 01f39h		;1c41
	call 03414h		;1c44
	ld a,(0f06eh)		;1c47
	jp 033d2h		;1c4a
	ld de,0f07fh		;1c4d
	ld a,(de)			;1c50
	cp 020h		;1c51
	jp nz,01b06h		;1c53
	ld hl,01bbdh		;1c56
	ld bc,00003h		;1c59
	ldir		;1c5c
	call 03443h		;1c5e
	ld (0f071h),a		;1c61
	call 033f3h		;1c64
	jr nz,$+12		;1c67
	ld e,000h		;1c69
	call 03445h		;1c6b
	call 033f3h		;1c6e
	jr z,$-110		;1c71
	call 0335bh		;1c73
	jp c,01bc0h		;1c76
	bit 0,(ix-04eh)		;1c79
	jr z,$+24		;1c7d
	call 037dah		;1c7f
	ld a,(bc)			;1c82
	ld d,b			;1c83
	ld (hl),d			;1c84
	ld l,a			;1c85
	ld h,a			;1c86
	ld (hl),d			;1c87
	ld h,c			;1c88
	ld l,l			;1c89
	jr nz,$+50		;1c8a
	ld sp,03030h		;1c8c
	dec l			;1c8f
	inc h			;1c90
	dec hl			;1c91
	call 0351dh		;1c92
	call 01bdbh		;1c95
	call 01c13h		;1c98
	bit 0,(ix-04eh)		;1c9b
	jp nz,0f278h		;1c9f
	jp 0f060h		;1ca2
	ld sp,0f13ah		;1ca5
	xor a			;1ca8
	call 00017h		;1ca9
	ld ix,0f0b8h		;1cac
	ld (ix-048h),010h		;1cb0
	call 01c2bh		;1cb4
	call 033d2h		;1cb7
	jp 01a82h		;1cba
	ld b,e			;1cbd
	ld c,a			;1cbe
	ld c,l			;1cbf
	call 01bc9h		;1cc0
	call 0343eh		;1cc3
	jp 01af2h		;1cc6
	call 037dah		;1cc9
	ld a,(bc)			;1ccc
	ld b,d			;1ccd
	ld (hl),d			;1cce
	ld h,c			;1ccf
	ld l,e			;1cd0
	jr nz,$+111		;1cd1
	ld l,c			;1cd3
	ld h,l			;1cd4
	ld l,d			;1cd5
	ld (hl),e			;1cd6
	ld h,e			;1cd7
	ld h,c			;1cd8
	inc h			;1cd9
	ret			;1cda
	ld hl,(0f074h)		;1cdb
	push hl			;1cde
	ld hl,0005ch		;1cdf
	call 02bddh		;1ce2
	ld hl,0006ch		;1ce5
	call 02bddh		;1ce8
	xor a			;1ceb
	ld (0007ch),a		;1cec
	pop hl			;1cef
	call 00011h		;1cf0
	or a			;1cf3
	jr z,$+9		;1cf4
	cp 020h		;1cf6
	jr z,$+5		;1cf8
	inc hl			;1cfa
	jr $-11		;1cfb
	ld b,000h		;1cfd
	ld de,00081h		;1cff
	call 00011h		;1d02
	ld (de),a			;1d05
	or a			;1d06
	jr z,$+7		;1d07
	inc b			;1d09
	inc hl			;1d0a
	inc de			;1d0b
	jr $-10		;1d0c
	ld a,b			;1d0e
	ld (00080h),a		;1d0f
	ret			;1d12
	call 0379ah		;1d13
	call 033e2h		;1d16
	call 0343eh		;1d19
	call 03443h		;1d1c
	add a,a			;1d1f
	add a,a			;1d20
	add a,a			;1d21
	add a,a			;1d22
	ld hl,0f06eh		;1d23
	or (hl)			;1d26
	ld (00004h),a		;1d27
	ret			;1d2a
	ld a,(0f06eh)		;1d2b
	ld (00004h),a		;1d2e
	ret			;1d31
	ld a,(0fb7ch)		;1d32
	and 081h		;1d35
	cp 081h		;1d37
	jr nz,$+29		;1d39
	ld a,(0f078h)		;1d3b
	cp 020h		;1d3e
	jr nz,$+22		;1d40
	ld a,(0f077h)		;1d42
	cp 020h		;1d45
	jr z,$+15		;1d47
	ld hl,0f980h		;1d49
	ld b,004h		;1d4c
	cp (hl)			;1d4e
	jr z,$+42		;1d4f
	inc hl			;1d51
	inc hl			;1d52
	inc hl			;1d53
	djnz $-6		;1d54
	ld hl,01c94h		;1d56
	ld c,000h		;1d59
	ld a,c			;1d5b
	cp 008h		;1d5c
	ret nc			;1d5e
	ld de,0f077h		;1d5f
	ld b,005h		;1d62
	ld a,(de)			;1d64
	cp (hl)			;1d65
	jr nz,$+13		;1d66
	inc de			;1d68
	inc hl			;1d69
	djnz $-6		;1d6a
	ld a,(de)			;1d6c
	cp 020h		;1d6d
	jr nz,$+7		;1d6f
	ld a,c			;1d71
	ret			;1d72
	inc hl			;1d73
	djnz $-1		;1d74
	inc c			;1d76
	jr $-28		;1d77
	inc hl			;1d79
	ld e,(hl)			;1d7a
	inc hl			;1d7b
	ld d,(hl)			;1d7c
	push de			;1d7d
	call 01bdbh		;1d7e
	call 01c13h		;1d81
	ld a,001h		;1d84
	call 00017h		;1d86
	jp c,0f203h		;1d89
	pop hl			;1d8c
	pop af			;1d8d
	call 0f997h		;1d8e
	jp 01ba5h		;1d91
	ld b,h			;1d94
	ld c,c			;1d95
	ld d,d			;1d96
	jr nz,$+34		;1d97
	ld b,l			;1d99
	ld d,d			;1d9a
	ld b,c			;1d9b
	jr nz,$+34		;1d9c
	ld d,h			;1d9e
	ld e,c			;1d9f
	ld d,b			;1da0
	ld b,l			;1da1
	jr nz,$+85		;1da2
	ld b,c			;1da4
	ld d,(hl)			;1da5
	ld b,l			;1da6
	jr nz,$+84		;1da7
	ld b,l			;1da9
	ld c,(hl)			;1daa
	jr nz,$+34		;1dab
	ld d,l			;1dad
	ld d,e			;1dae
	ld b,l			;1daf
	ld d,d			;1db0
	jr nz,$+70		;1db1
	ld b,l			;1db3
	ld b,d			;1db4
	ld d,l			;1db5
	ld b,a			;1db6
	ld b,h			;1db7
	jr nz,$+34		;1db8
	jr nz,$+34		;1dba
	adc a,01ch		;1dbc
	ld a,h			;1dbe
	dec e			;1dbf
	jp z,0061dh		;1dc0
	ld e,04ch		;1dc3
	ld e,0b9h		;1dc5
	ld e,0cdh		;1dc7
	ld a,(de)			;1dc9
	ex de,hl			;1dca
	rra			;1dcb
	call nc,0cd1ah		;1dcc
	out (02bh),a		;1dcf
	ld hl,0f077h		;1dd1
	ld a,(hl)			;1dd4
	cp 020h		;1dd5
	call z,02a84h		;1dd7
	ld e,000h		;1dda
	push de			;1ddc
	call 0340ch		;1ddd
	jp z,01d65h		;1de0
	jp z,01d68h		;1de3
	ld a,(0f06dh)		;1de6
	rrca			;1de9
	rrca			;1dea
	rrca			;1deb
	and 060h		;1dec
	ld c,a			;1dee
	ld a,00ah		;1def
	call 01fe1h		;1df1
	rla			;1df4
	jr c,$+99		;1df5
	pop de			;1df7
	ld a,e			;1df8
	inc e			;1df9
	push de			;1dfa
	and 003h		;1dfb
	push af			;1dfd
	jr nz,$+29		;1dfe
	call 0379ah		;1e00
	ld a,(0f076h)		;1e03
	dec a			;1e06
	jp p,01d0fh		;1e07
	push bc			;1e0a
	call 033ddh		;1e0b
	pop bc			;1e0e
	add a,041h		;1e0f
	call 0376bh		;1e11
	ld a,03ah		;1e14
	call 0376bh		;1e16
	jr $+10		;1e19
	call 03769h		;1e1b
	ld a,03ah		;1e1e
	call 0376bh		;1e20
	call 03769h		;1e23
	ld b,001h		;1e26
	ld a,b			;1e28
	call 01fe1h		;1e29
	and 07fh		;1e2c
	cp 020h		;1e2e
	jr nz,$+21		;1e30
	pop af			;1e32
	push af			;1e33
	cp 003h		;1e34
	jr nz,$+13		;1e36
	ld a,009h		;1e38
	call 01fe1h		;1e3a
	and 07fh		;1e3d
	cp 020h		;1e3f
	jr z,$+22		;1e41
	ld a,020h		;1e43
	call 0376bh		;1e45
	inc b			;1e48
	ld a,b			;1e49
	cp 00ch		;1e4a
	jr nc,$+11		;1e4c
	cp 009h		;1e4e
	jr nz,$-40		;1e50
	call 03769h		;1e52
	jr $-45		;1e55
	pop af			;1e57
	call 036f8h		;1e58
	jr nz,$+13		;1e5b
	ld c,012h		;1e5d
	call 033fch		;1e5f
	jp 01ce3h		;1e62
	call 01d6ch		;1e65
	pop de			;1e68
	jp 01af2h		;1e69
	call 037dah		;1e6c
	ld a,(bc)			;1e6f
	ld b,d			;1e70
	ld (hl),d			;1e71
	ld h,c			;1e72
	ld l,e			;1e73
	jr nz,$+114		;1e74
	ld l,h			;1e76
	ld l,c			;1e77
	ld l,e			;1e78
	ld (hl),l			;1e79
	inc h			;1e7a
	ret			;1e7b
	call 02bd3h		;1e7c
	cp 00bh		;1e7f
	jr nz,$+63		;1e81
	call 037dah		;1e83
	ld a,(bc)			;1e86
	ld d,a			;1e87
	ld (hl),e			;1e88
	ld a,d			;1e89
	ld a,c			;1e8a
	ld (hl),e			;1e8b
	ld (hl),h			;1e8c
	ld l,e			;1e8d
	ld l,c			;1e8e
	ld h,l			;1e8f
	jr nz,$+42		;1e90
	ld d,h			;1e92
	cpl			;1e93
	ld c,(hl)			;1e94
	add hl,hl			;1e95
	jr nz,$+65		;1e96
	inc h			;1e98
	ld a,(0f076h)		;1e99
	push af			;1e9c
	call 01ed1h		;1e9d
	pop af			;1ea0
	ld hl,0f076h		;1ea1
	ld (hl),a			;1ea4
	inc hl			;1ea5
	ld b,00bh		;1ea6
	ld (hl),03fh		;1ea8
	inc hl			;1eaa
	djnz $-3		;1eab
	ld hl,0f098h		;1ead
	ld a,(hl)			;1eb0
	dec a			;1eb1
	jp nz,01a82h		;1eb2
	inc hl			;1eb5
	ld a,(hl)			;1eb6
	cp 054h		;1eb7
	jp nz,01a82h		;1eb9
	inc hl			;1ebc
	ld (0f074h),hl		;1ebd
	call 03414h		;1ec0
	inc a			;1ec3
	call z,01d6ch		;1ec4
	jp 01af2h		;1ec7
	call 02bd3h		;1eca
	jp nz,01b06h		;1ecd
	call 033f3h		;1ed0
	jp z,01b06h		;1ed3
	call 0379ah		;1ed6
	ld hl,0f06fh		;1ed9
	ld (hl),0ffh		;1edc
	ld hl,0f06fh		;1ede
	ld a,(hl)			;1ee1
	cp 080h		;1ee2
	jr c,$+12		;1ee4
	push hl			;1ee6
	call 03420h		;1ee7
	pop hl			;1eea
	jp nz,01af2h		;1eeb
	xor a			;1eee
	ld (hl),a			;1eef
	inc (hl)			;1ef0
	ld c,000h		;1ef1
	call 01fe1h		;1ef3
	cp 01ah		;1ef6
	jp z,01af2h		;1ef8
	call 0376bh		;1efb
	call 036f8h		;1efe
	jp nz,01af2h		;1f01
	jr $-38		;1f04
	call 01fadh		;1f06
	push bc			;1f09
	call 02bd3h		;1f0a
	jp nz,01b06h		;1f0d
	ld de,0f076h		;1f10
	call 0342ah		;1f13
	jr z,$+45		;1f16
	xor a			;1f18
	ld (0f096h),a		;1f19
	pop hl			;1f1c
	ld h,000h		;1f1d
	add hl,hl			;1f1f
	ld de,00100h		;1f20
	ld a,h			;1f23
	or l			;1f24
	jr z,$+24		;1f25
	dec hl			;1f27
	push hl			;1f28
	ld hl,00080h		;1f29
	add hl,de			;1f2c
	push hl			;1f2d
	call 033e5h		;1f2e
	ld de,0f076h		;1f31
	call 0341ch		;1f34
	pop de			;1f37
	pop hl			;1f38
	jr nz,$+10		;1f39
	jr $-24		;1f3b
	call 03404h		;1f3d
	inc a			;1f40
	jr nz,$+5		;1f41
	call 01bc9h		;1f43
	call 033e2h		;1f46
	jp 01af2h		;1f49
	call 02bd3h		;1f4c
	jp nz,01b06h		;1f4f
	call 0340ch		;1f52
	jr nz,$+79		;1f55
	ld hl,0f076h		;1f57
	ld de,0f086h		;1f5a
	ld bc,00010h		;1f5d
	ldir		;1f60
	ld hl,(0f074h)		;1f62
	call 02c4bh		;1f65
	cp 03dh		;1f68
	jr z,$+7		;1f6a
	cp 05fh		;1f6c
	jp nz,01b06h		;1f6e
	inc hl			;1f71
	ld (0f074h),hl		;1f72
	call 02bd3h		;1f75
	jp nz,01b06h		;1f78
	ld a,(0f06eh)		;1f7b
	inc a			;1f7e
	ld b,a			;1f7f
	ld a,(0f076h)		;1f80
	or a			;1f83
	ld c,a			;1f84
	jr nz,$+3		;1f85
	ld c,b			;1f87
	ld a,(0f086h)		;1f88
	or a			;1f8b
	jr nz,$+3		;1f8c
	ld a,b			;1f8e
	cp c			;1f8f
	jp nz,01b06h		;1f90
	call 0340ch		;1f93
	jr z,$+8		;1f96
	call 03436h		;1f98
	jp 01af2h		;1f9b
	call 01d6ch		;1f9e
	jp 01af2h		;1fa1
	call 037dah		;1fa4
	ld a,(bc)			;1fa7
	ld d,b			;1fa8
	ld l,h			;1fa9
	ld l,c			;1faa
	ld l,e			;1fab
	jr nz,$+107		;1fac
	ld (hl),e			;1fae
	ld (hl),h			;1faf
	ld l,(hl)			;1fb0
	ld l,c			;1fb1
	ld h,l			;1fb2
	ld l,d			;1fb3
	ld h,l			;1fb4
	inc h			;1fb5
	jp 01af2h		;1fb6
	call 01fadh		;1fb9
	ld a,c			;1fbc
	cp 010h		;1fbd
	jp nc,01b06h		;1fbf
	ld e,a			;1fc2
	ld a,(0f077h)		;1fc3
	cp 020h		;1fc6
	jp z,01b06h		;1fc8
	call 03445h		;1fcb
	jp 01af2h		;1fce
	ld a,(0f06ch)		;1fd1
	or a			;1fd4
	jp nz,01f58h		;1fd5
	ld a,(0f06bh)		;1fd8
	or a			;1fdb
	jp z,01f7eh		;1fdc
	ld a,(0f06eh)		;1fdf
	or a			;1fe2
	ld a,000h		;1fe3
	call nz,033d2h		;1fe5
	call 01f39h		;1fe8
	call 033f3h		;1feb
	jp z,01f7eh		;1fee
	ld a,(0f085h)		;1ff1
	dec a			;1ff4
	ld (0f096h),a		;1ff5
	ld de,0f098h		;1ff8
	call 033e5h		;1ffb
	call 03420h		;1ffe
	push af			;2001
	call 033e2h		;2002
	pop af			;2005
	jp nz,01f7eh		;2006
	ld hl,0f084h		;2009
	ld (hl),000h		;200c
	inc hl			;200e
	dec (hl)			;200f
	call 03404h		;2010
	jp z,01f7eh		;2013
	ld a,(0f06eh)		;2016
	or a			;2019
	call nz,033d2h		;201a
	ld hl,0f099h		;201d
	ld b,080h		;2020
	res 7,(hl)		;2022
	ld a,(hl)			;2024
	inc hl			;2025
	or a			;2026
	jr z,$+7		;2027
	call 0376bh		;2029
	djnz $-10		;202c
	call 036f8h		;202e
	jr z,$+97		;2031
	call 01b2ah		;2033
	jp 01a82h		;2036
	ld hl,01f4ch		;2039
	ld de,0f076h		;203c
	ld bc,0000ch		;203f
	ldir		;2042
	ld b,015h		;2044
	xor a			;2046
	ld (de),a			;2047
	inc de			;2048
	djnz $-3		;2049
	ret			;204b
	nop			;204c
	inc h			;204d
	inc h			;204e
	inc h			;204f
	jr nz,$+34		;2050
	jr nz,$+34		;2052
	jr nz,$+85		;2054
	ld d,l			;2056
	ld b,d			;2057
	ld hl,01f69h		;2058
	ld de,0f098h		;205b
	ld bc,00019h		;205e
	ldir		;2061
	xor a			;2063
	ld (0f06ch),a		;2064
	jr $-74		;2067
	inc de			;2069
	ld b,d			;206a
	ld a,(05553h)		;206b
	ld b,d			;206e
	ld c,l			;206f
	ld c,c			;2070
	ld d,h			;2071
	jr nz,$+68		;2072
	ld a,(05541h)		;2074
	ld d,h			;2077
	ld c,a			;2078
	ld b,l			;2079
	ld e,b			;207a
	ld b,l			;207b
	ld b,e			;207c
	nop			;207d
	call 01b2ah		;207e
	call 01c1ch		;2081
	ld c,00ah		;2084
	ld de,0f097h		;2086
	ld a,07fh		;2089
	ld (de),a			;208b
	call 00005h		;208c
	call 01c2bh		;208f
	ld hl,0f098h		;2092
	ld b,(hl)			;2095
	inc hl			;2096
	ld a,b			;2097
	or a			;2098
	jr z,$+12		;2099
	ld a,(hl)			;209b
	res 7,a		;209c
	call 0373fh		;209e
	ld (hl),a			;20a1
	dec b			;20a2
	jr $-13		;20a3
	ld (hl),a			;20a5
	ld hl,0f099h		;20a6
	ld (0f074h),hl		;20a9
	ret			;20ac
	call 02bd3h		;20ad
	ld a,(0f076h)		;20b0
	or a			;20b3
	jp nz,01b06h		;20b4
	ld hl,0f077h		;20b7
	ld bc,00b00h		;20ba
	ld a,(hl)			;20bd
	cp 020h		;20be
	ret z			;20c0
	inc hl			;20c1
	sub 030h		;20c2
	cp 00ah		;20c4
	jp nc,01b06h		;20c6
	ld d,a			;20c9
	ld a,c			;20ca
	cp 01ah		;20cb
	jp nc,01b06h		;20cd
	add a,a			;20d0
	add a,a			;20d1
	add a,c			;20d2
	add a,a			;20d3
	add a,d			;20d4
	jp c,01b06h		;20d5
	ld c,a			;20d8
	djnz $-28		;20d9
	ret			;20db
	add a,l			;20dc
	ld l,a			;20dd
	ret nc			;20de
	inc h			;20df
	ret			;20e0
	ld hl,00080h		;20e1
	add a,c			;20e4
	call 01fdch		;20e5
	jp 00011h		;20e8
	ld hl,0ffadh		;20eb
	res 5,(hl)		;20ee
	call 02bd3h		;20f0
	ld hl,0f097h		;20f3
	ld b,050h		;20f6
	ld (hl),000h		;20f8
	inc hl			;20fa
	djnz $-3		;20fb
	call 02a81h		;20fd
	ld hl,00100h		;2100
	ld (0f0e2h),hl		;2103
	xor a			;2106
	ld (0f070h),a		;2107
	ld hl,0f076h		;210a
	ld a,(hl)			;210d
	ld (0f0b8h),a		;210e
	inc hl			;2111
	ld a,(hl)			;2112
	cp 020h		;2113
	jr z,$+10		;2115
	ld bc,0000bh		;2117
	ld de,0f0e7h		;211a
	ldir		;211d
	call 033ddh		;211f
	ld (0f0bah),a		;2122
	inc a			;2125
	ld c,a			;2126
	ld a,(0f0b8h)		;2127
	or a			;212a
	jr nz,$+5		;212b
	ld (ix+000h),c		;212d
	call 03443h		;2130
	ld (0f071h),a		;2133
	xor a			;2136
	call 00017h		;2137
	call 033d8h		;213a
	call 03123h		;213d
	call 033e2h		;2140
	res 6,(ix-048h)		;2143
	ld (ix+00dh),000h		;2147
	ld (ix+015h),000h		;214b
	ld a,(0f0cch)		;214f
	or a			;2152
	jr z,$+50		;2153
	call 03716h		;2155
	jr z,$+42		;2158
	call 036feh		;215a
	call 0373fh		;215d
	ld (0f0cdh),a		;2160
	ld hl,02075h		;2163
	ld c,a			;2166
	ld a,(hl)			;2167
	inc hl			;2168
	or a			;2169
	jr z,$+24		;216a
	cp c			;216c
	jr nz,$-6		;216d
	call 0318bh		;216f
	jp 021d6h		;2172
	inc d			;2175
	dec d			;2176
	ld d,a			;2177
	ld d,(hl)			;2178
	ld c,(hl)			;2179
	ld d,b			;217a
	ld b,h			;217b
	ld b,(hl)			;217c
	ld c,a			;217d
	ld d,c			;217e
	ld c,e			;217f
	ld c,h			;2180
	nop			;2181
	call 03126h		;2182
	call 032bah		;2185
	call 0326ah		;2188
	call 037dah		;218b
	dec de			;218e
	dec a			;218f
	dec (hl)			;2190
	ld d,b			;2191
	inc hl			;2192
	inc hl			;2193
	pop af			;2194
	ld b,c			;2195
	ld (hl),h			;2196
	ld (hl),d			;2197
	ld a,c			;2198
	ld h,d			;2199
	ld (hl),l			;219a
	ld (hl),h			;219b
	ld a,c			;219c
	ld a,(04b1bh)		;219d
	inc h			;21a0
	call 032eeh		;21a1
	call 024f5h		;21a4
	call 0251ch		;21a7
	ld hl,0f0ceh		;21aa
	ld a,(0f0c4h)		;21ad
	or a			;21b0
	jr z,$+32		;21b1
	bit 0,(hl)		;21b3
	set 0,(hl)		;21b5
	jr nz,$+26		;21b7
	ld de,01400h		;21b9
	call 03175h		;21bc
	call 037dah		;21bf
	dec de			;21c2
	ld d,e			;21c3
	jr nz,$+62		;21c4
	dec a			;21c6
	jr nz,$+62		;21c7
	dec a			;21c9
	jr nz,$+62		;21ca
	dec a			;21cc
	jr nz,$+29		;21cd
	ld d,h			;21cf
	inc h			;21d0
	ld a,(0f0bdh)		;21d1
	sub (ix+00ch)		;21d4
	cp 03dh		;21d7
	jr c,$+32		;21d9
	bit 1,(hl)		;21db
	set 1,(hl)		;21dd
	jr nz,$+26		;21df
	ld de,01445h		;21e1
	call 03175h		;21e4
	call 037dah		;21e7
	dec de			;21ea
	ld d,e			;21eb
	jr nz,$+63		;21ec
	ld a,020h		;21ee
	dec a			;21f0
	ld a,020h		;21f1
	dec a			;21f3
	ld a,020h		;21f4
	dec de			;21f6
	ld d,h			;21f7
	inc h			;21f8
	ld de,0140ch		;21f9
	call 03175h		;21fc
	ld hl,02159h		;21ff
	ld a,(0f26bh)		;2202
	bit 2,a		;2205
	jr nz,$+38		;2207
	ld hl,02164h		;2209
	bit 3,a		;220c
	jr nz,$+31		;220e
	ld hl,02163h		;2210
	bit 7,(ix-048h)		;2213
	jr z,$+22		;2217
	ld hl,00003h		;2219
	call 00011h		;221c
	rlca			;221f
	rlca			;2220
	rlca			;2221
	and 006h		;2222
	ld hl,0003bh		;2224
	add a,l			;2227
	ld l,a			;2228
	ld a,(hl)			;2229
	inc hl			;222a
	ld h,(hl)			;222b
	ld l,a			;222c
	ld de,(0f0cfh)		;222d
	ld (0f0cfh),hl		;2231
	ld a,e			;2234
	cp l			;2235
	jr nz,$+6		;2236
	ld a,d			;2238
	cp h			;2239
	jr z,$+52		;223a
	call 03823h		;223c
	ld b,00ch		;223f
	ld a,(hl)			;2241
	bit 7,a		;2242
	jr nz,$+8		;2244
	call 0376bh		;2246
	inc hl			;2249
	djnz $-9		;224a
	inc b			;224c
	ld a,020h		;224d
	call 0376bh		;224f
	djnz $-5		;2252
	call 03814h		;2254
	jr $+23		;2257
	ld b,h			;2259
	ld (hl),d			;225a
	ld (hl),l			;225b
	ld l,e			;225c
	ld l,a			;225d
	ld (hl),a			;225e
	ld h,c			;225f
	ld l,(hl)			;2260
	ld l,c			;2261
	ld h,l			;2262
	add a,b			;2263
	ld (hl),a			;2264
	ld a,c			;2265
	ld a,h			;2266
	ld h,b			;2267
	ld h,e			;2268
	ld a,d			;2269
	ld l,a			;226a
	ld l,(hl)			;226b
	ld h,c			;226c
	add a,b			;226d
	ld de,01419h		;226e
	call 03175h		;2271
	ld hl,0f0ceh		;2274
	ld a,(0f0bfh)		;2277
	or a			;227a
	jr z,$+78		;227b
	bit 2,(hl)		;227d
	set 2,(hl)		;227f
	jr nz,$+26		;2281
	call 037dah		;2283
	ld d,b			;2286
	ld l,h			;2287
	ld l,c			;2288
	ld l,e			;2289
	ld l,c			;228a
	jr nz,$+124		;228b
	ld h,c			;228d
	ld a,d			;228e
	ld l,(hl)			;228f
	ld h,c			;2290
	ld h,e			;2291
	ld a,d			;2292
	ld l,a			;2293
	ld l,(hl)			;2294
	ld h,l			;2295
	jr nz,$+63		;2296
	inc h			;2298
	jr $+8		;2299
	ld de,0142bh		;229b
	call 03175h		;229e
	ld hl,(0f0bfh)		;22a1
	ld h,000h		;22a4
	call 03899h		;22a6
	ld hl,(0f0d3h)		;22a9
	call 03893h		;22ac
	call 037dah		;22af
	jr nz,$+77		;22b2
	ld b,d			;22b4
	jp p,02428h		;22b5
	ld hl,(0f0d5h)		;22b8
	call 03893h		;22bb
	call 037dah		;22be
	jr nz,$+77		;22c1
	ld b,d			;22c3
	jr nz,$+43		;22c4
	inc h			;22c6
	jr $+15		;22c7
	bit 2,(hl)		;22c9
	jr z,$+11		;22cb
	res 2,(hl)		;22cd
	call 037dah		;22cf
	rst 38h			;22d2
	rst 38h			;22d3
	defb 0fdh,024h	;inc iyh		;22d4
	ld de,01600h		;22d6
	call 03175h		;22d9
	ld a,(0f0cdh)		;22dc
	ld (ix+015h),000h		;22df
	or a			;22e3
	jr nz,$+8		;22e4
	call 036feh		;22e6
	call 0373fh		;22e9
	push af			;22ec
	ld c,01bh		;22ed
	call 0f20ch		;22ef
	ld c,042h		;22f2
	call 0f20ch		;22f4
	call 037dah		;22f7
	dec de			;22fa
	ld c,e			;22fb
	inc h			;22fc
	ld c,01bh		;22fd
	call 0f20ch		;22ff
	ld c,041h		;2302
	call 0f20ch		;2304
	pop af			;2307
	ld c,a			;2308
	call 03721h		;2309
	call 037dah		;230c
	dec de			;230f
	ld c,e			;2310
	jp p,02124h		;2311
	xor l			;2314
	rst 38h			;2315
	bit 5,(hl)		;2316
	jr z,$+16		;2318
	ld hl,02290h		;231a
	ld a,(0f0bdh)		;231d
	or a			;2320
	jr nz,$+28		;2321
	ld hl,022deh		;2323
	jr $+23		;2326
	ld hl,0235dh		;2328
	ld a,(0f0bdh)		;232b
	or a			;232e
	jr z,$+14		;232f
	ld hl,02327h		;2331
	bit 0,(ix+010h)		;2334
	jr nz,$+5		;2338
	ld hl,022fah		;233a
	inc hl			;233d
	inc hl			;233e
	ld a,(hl)			;233f
	or a			;2340
	jp m,0225fh		;2341
	cp c			;2344
	inc hl			;2345
	jr nz,$-9		;2346
	ld de,02040h		;2348
	push de			;234b
	ld a,(hl)			;234c
	inc hl			;234d
	ld h,(hl)			;234e
	ld l,a			;234f
	ld a,(0f0bdh)		;2350
	ld b,a			;2353
	sub (ix+00ch)		;2354
	cp 03ch		;2357
	jr c,$+4		;2359
	ld a,03ch		;235b
	ld c,a			;235d
	jp (hl)			;235e
	ld sp,0f13ah		;235f
	call 037dah		;2362
	rlca			;2365
	jr nz,$+68		;2366
	ld a,h			;2368
	ld b,b			;2369
	ld h,h			;236a
	ld l,(hl)			;236b
	ld h,l			;236c
	jr nz,$+114		;236d
	ld l,a			;236f
	ld l,h			;2370
	ld h,l			;2371
	ld h,e			;2372
	ld h,l			;2373
	ld l,(hl)			;2374
	ld l,c			;2375
	ld h,l			;2376
	jr nz,$+47		;2377
	jr nz,$+42		;2379
	ld b,l			;237b
	ld d,e			;237c
	ld b,e			;237d
	add hl,hl			;237e
	inc h			;237f
	call 036feh		;2380
	cp 01bh		;2383
	ld a,007h		;2385
	call nz,0376bh		;2387
	jr nz,$-10		;238a
	call 03796h		;238c
	jp 021ech		;238f
	ld b,e			;2392
	sbc a,03ch		;2393
	dec (hl)			;2395
	cp (hl)			;2396
	inc hl			;2397
	ld (hl),0c5h		;2398
	inc hl			;239a
	inc b			;239b
	push bc			;239c
	inc hl			;239d
	inc (hl)			;239e
	cp 023h		;239f
	inc de			;23a1
	cp 023h		;23a2
	jr c,$+37		;23a4
	inc h			;23a6
	dec b			;23a7
	inc hl			;23a8
	inc h			;23a9
	ld (02435h),a		;23aa
	jr $+55		;23ad
	inc h			;23af
	scf			;23b0
	dec hl			;23b1
	inc h			;23b2
	rla			;23b3
	dec hl			;23b4
	inc h			;23b5
	ld sp,0243dh		;23b6
	ld a,(de)			;23b9
	dec a			;23ba
	inc h			;23bb
	ld a,0edh		;23bc
	inc hl			;23be
	inc a			;23bf
	ld a,(de)			;23c0
	inc h			;23c1
	ld l,0edh		;23c2
	inc hl			;23c4
	inc l			;23c5
	ld a,(de)			;23c6
	inc h			;23c7
	ld b,h			;23c8
	ld c,e			;23c9
	inc h			;23ca
	ld b,l			;23cb
	ex (sp),hl			;23cc
	ld a,(0e252h)		;23cd
	dec sp			;23d0
	ld d,b			;23d1
	and 039h		;23d2
	ld d,h			;23d4
	jp nz,01425h		;23d5
	jr c,$+40		;23d8
	ld d,l			;23da
	ret			;23db
	dec h			;23dc
	dec d			;23dd
	ld d,d			;23de
	ld h,051h		;23df
	ld h,031h		;23e1
	ld c,e			;23e3
	ld h,l			;23e4
	ld h,04ch		;23e5
	ld l,a			;23e7
	ld h,003h		;23e8
	sbc a,a			;23ea
	inc hl			;23eb
	dec de			;23ec
	cp l			;23ed
	inc hl			;23ee
	dec c			;23ef
	cp l			;23f0
	inc hl			;23f1
	jr nz,$-65		;23f2
	inc hl			;23f4
	inc sp			;23f5
	cp l			;23f6
	inc hl			;23f7
	add hl,sp			;23f8
	cp l			;23f9
	inc hl			;23fa
	rst 38h			;23fb
	ld d,h			;23fc
	jp nz,05525h		;23fd
	ret			;2400
	dec h			;2401
	inc d			;2402
	jr c,$+40		;2403
	add hl,de			;2405
	inc (hl)			;2406
	ld h,015h		;2407
	ld d,d			;2409
	ld h,045h		;240a
	ex af,af'			;240c
	daa			;240d
	ld d,a			;240e
	jp p,05627h		;240f
	rst 28h			;2412
	daa			;2413
	ld d,e			;2414
	jp (hl)			;2415
	daa			;2416
	ld d,d			;2417
	ld (hl),e			;2418
	jr z,$+69		;2419
	rst 18h			;241b
	jr z,$+4		;241c
	ld h,02bh		;241e
	ld b,d			;2420
	ld e,c			;2421
	dec hl			;2422
	ld e,b			;2423
	ld l,c			;2424
	dec hl			;2425
	ld d,b			;2426
	sbc a,c			;2427
	inc l			;2428
	dec (hl)			;2429
	cp (hl)			;242a
	inc hl			;242b
	ld (hl),0c5h		;242c
	inc hl			;242e
	inc b			;242f
	push bc			;2430
	inc hl			;2431
	inc (hl)			;2432
	cp 023h		;2433
	inc de			;2435
	cp 023h		;2436
	jr c,$+37		;2438
	inc h			;243a
	dec b			;243b
	inc hl			;243c
	inc h			;243d
	ld (02435h),a		;243e
	jr $+55		;2441
	inc h			;2443
	scf			;2444
	dec hl			;2445
	inc h			;2446
	rla			;2447
	dec hl			;2448
	inc h			;2449
	ld sp,0243dh		;244a
	ld a,(de)			;244d
	dec a			;244e
	inc h			;244f
	ld a,0edh		;2450
	inc hl			;2452
	inc a			;2453
	ld a,(de)			;2454
	inc h			;2455
	ld l,0edh		;2456
	inc hl			;2458
	inc l			;2459
	ld a,(de)			;245a
	inc h			;245b
	ld b,h			;245c
	ld c,e			;245d
	inc h			;245e
	ld b,(hl)			;245f
	ld h,l			;2460
	ld hl,(0714fh)		;2461
	dec h			;2464
	ld d,c			;2465
	ld h,031h		;2466
	ld c,e			;2468
	ld h,l			;2469
	ld h,04ch		;246a
	ld l,a			;246c
	ld h,010h		;246d
	and c			;246f
	ld hl,(08c09h)		;2470
	ld hl,(0b10ch)		;2473
	ld hl,(09f03h)		;2476
	inc hl			;2479
	ld b,b			;247a
	add a,l			;247b
	dec l			;247c
	inc sp			;247d
	cp l			;247e
	inc hl			;247f
	add hl,sp			;2480
	cp l			;2481
	inc hl			;2482
	jr nc,$-65		;2483
	inc hl			;2485
	dec l			;2486
	cp l			;2487
	inc hl			;2488
	ld hl,(03919h)		;2489
	dec hl			;248c
	cp l			;248d
	inc hl			;248e
	cpl			;248f
	cp l			;2490
	inc hl			;2491
	dec de			;2492
	cp l			;2493
	inc hl			;2494
	dec c			;2495
	cp l			;2496
	inc hl			;2497
	jr nz,$-65		;2498
	inc hl			;249a
	ld c,l			;249b
	cp a			;249c
	ld a,0ffh		;249d
	ld a,(0f0bah)		;249f
	call 033d2h		;24a2
	call 037dah		;24a5
	dec de			;24a8
	dec a			;24a9
	ld (hl),020h		;24aa
	dec de			;24ac
	ld c,e			;24ad
	dec de			;24ae
	dec a			;24af
	dec (hl)			;24b0
	jr nz,$+38		;24b1
	ld sp,0f13ah		;24b3
	set 4,(ix-048h)		;24b6
	jp 01a82h		;24ba
	ret			;24bd
	xor a			;24be
	ld (0f0c3h),a		;24bf
	jp 0326bh		;24c2
	ld a,(0f0c3h)		;24c5
	add a,014h		;24c8
	cp c			;24ca
	jr c,$-12		;24cb
	ld a,(0f0c4h)		;24cd
	add a,03ch		;24d0
	cp b			;24d2
	ret nc			;24d3
	ld (0f0c4h),a		;24d4
	ld b,a			;24d7
	ld a,(0f0bdh)		;24d8
	sub b			;24db
	ld b,a			;24dc
	ld a,(0f0c3h)		;24dd
	sub 028h		;24e0
	cp b			;24e2
	jr c,$+4		;24e3
	ld a,b			;24e5
	dec a			;24e6
	ld (0f0c3h),a		;24e7
	jp 02690h		;24ea
	ld a,(0f0c4h)		;24ed
	add a,03ch		;24f0
	cp b			;24f2
	ret nc			;24f3
	ld (0f0c4h),a		;24f4
	xor a			;24f7
	ld (0f0c3h),a		;24f8
	jp 02690h		;24fb
	ld a,(0f0c3h)		;24fe
	sub 014h		;2501
	jp p,023bfh		;2503
	ld a,(0f0c4h)		;2506
	sub 03ch		;2509
	ret m			;250b
	ld (0f0c4h),a		;250c
	ld a,(0f0c3h)		;250f
	add a,028h		;2512
	ld (0f0c3h),a		;2514
	jp 02690h		;2517
	ld a,(0f0c4h)		;251a
	sub 03ch		;251d
	jp p,023f4h		;251f
	ret			;2522
	ld a,(0f0c3h)		;2523
	dec a			;2526
	jp p,023bfh		;2527
	ret			;252a
	ld a,(0f0c3h)		;252b
	sub 006h		;252e
	jr nc,$-113		;2530
	xor a			;2532
	jr $-116		;2533
	ld a,(0f0c3h)		;2535
	inc a			;2538
	cp c			;2539
	jr c,$-123		;253a
	ret			;253c
	ld a,(0f0c3h)		;253d
	add a,006h		;2540
	cp c			;2542
	jp c,023bfh		;2543
	ld a,c			;2546
	dec a			;2547
	jp 023bfh		;2548
	call 038f3h		;254b
	xor a			;254e
	ld (0f0c1h),a		;254f
	ld a,(0f0bdh)		;2552
	sub (ix+009h)		;2555
	jr z,$+41		;2558
	push af			;255a
	call 037dah		;255b
	ld a,(bc)			;255e
	ld a,(bc)			;255f
	ld a,(bc)			;2560
	inc h			;2561
	call 02540h		;2562
	pop af			;2565
	cp 015h		;2566
	jr nc,$+44		;2568
	call 0370dh		;256a
	jp nz,02690h		;256d
	call 0379ah		;2570
	call 024e4h		;2573
	inc (ix+009h)		;2576
	ld a,(0f0c1h)		;2579
	sub (ix+005h)		;257c
	jr c,$-21		;257f
	call 0379ah		;2581
	call 0319ah		;2584
	call 0379ah		;2587
	bit 7,(ix-048h)		;258a
	call z,03748h		;258e
	jp 02690h		;2591
	cp 03dh		;2594
	jr c,$+4		;2596
	ld a,03ch		;2598
	ld c,a			;259a
	add a,(ix+009h)		;259b
	ld (0f0c2h),a		;259e
	ld a,c			;25a1
	rrca			;25a2
	adc a,000h		;25a3
	and 07fh		;25a5
	ld b,a			;25a7
	ld c,a			;25a8
	call 03766h		;25a9
	call 02540h		;25ac
	call 0370dh		;25af
	jp nz,02690h		;25b2
	call 0379ah		;25b5
	push bc			;25b8
	call 024e4h		;25b9
	pop bc			;25bc
	ld a,(0f0c1h)		;25bd
	add a,c			;25c0
	ld (0f0c1h),a		;25c1
	push bc			;25c4
	ld c,a			;25c5
	call 03763h		;25c6
	ld a,(0f0bdh)		;25c9
	sub c			;25cc
	call nz,024e4h		;25cd
	pop bc			;25d0
	ld a,(0f0c1h)		;25d1
	sub c			;25d4
	inc a			;25d5
	ld (0f0c1h),a		;25d6
	djnz $-42		;25d9
	ld a,(0f0c2h)		;25db
	ld (0f0c1h),a		;25de
	jp 02452h		;25e1
	call 032cfh		;25e4
	ex de,hl			;25e7
	inc hl			;25e8
	call 03832h		;25e9
	call 0315bh		;25ec
	call 03769h		;25ef
	call 032eeh		;25f2
	call 03769h		;25f5
	ld a,(0f0c8h)		;25f8
	or a			;25fb
	jp z,03763h		;25fc
	ld a,(0f0bdh)		;25ff
	or a			;2602
	jp z,03763h		;2603
	ld a,055h		;2606
	call 0376bh		;2608
	ld bc,0fff6h		;260b
	add hl,bc			;260e
	ld l,(hl)			;260f
	ld h,000h		;2610
	ld (ix+008h),002h		;2612
	call 0386ah		;2616
	jp 03769h		;2619
	ld a,(0fb7ch)		;261c
	bit 7,a		;261f
	jp z,03763h		;2621
	bit 0,a		;2624
	jr z,$+17		;2626
	ld hl,0f980h		;2628
	ld b,004h		;262b
	ld a,(hl)			;262d
	call 0376bh		;262e
	inc hl			;2631
	inc hl			;2632
	inc hl			;2633
	djnz $-7		;2634
	ret			;2636
	call 037dah		;2637
	ld l,02eh		;263a
	ld l,02eh		;263c
	inc h			;263e
	ret			;263f
	call 037dah		;2640
	ld c,(hl)			;2643
	ld h,c			;2644
	ld a,d			;2645
	ld (hl),a			;2646
	ld h,c			;2647
	di			;2648
	ld l,054h		;2649
	ld a,c			;264b
	ld (hl),b			;264c
	di			;264d
	ld d,d			;264e
	ld h,l			;264f
	ld l,e			;2650
	jp p,0424bh		;2651
	jp p,07441h		;2654
	ld (hl),d			;2657
	inc h			;2658
	bit 0,(ix+010h)		;2659
	jr z,$+14		;265d
	call 037dah		;265f
	push af			;2662
	ld d,l			;2663
	ld a,l			;2664
	ld a,c			;2665
	ld (hl),h			;2666
	ld l,e			;2667
	ld l,024h		;2668
	ret			;266a
	call 037dah		;266b
	ei			;266e
	inc h			;266f
	ret			;2670
	call 038f3h		;2671
	ld hl,00000h		;2674
	ld (0f0e2h),hl		;2677
	ld hl,00100h		;267a
	ld (0f0deh),hl		;267d
	ld a,03fh		;2680
	ld (0005ch),a		;2682
	ld c,011h		;2685
	ld de,0005ch		;2687
	call 00005h		;268a
	cp 0ffh		;268d
	jp z,025abh		;268f
	call 03900h		;2692
	ld de,(0f0deh)		;2695
	ld b,020h		;2699
	call 00011h		;269b
	ld (de),a			;269e
	inc hl			;269f
	inc de			;26a0
	djnz $-6		;26a1
	ld (0f0deh),de		;26a3
	ld c,012h		;26a7
	jr $-34		;26a9
	ld hl,00100h		;26ab
	ld de,(0f0deh)		;26ae
	dec de			;26b2
	call 03518h		;26b3
	jp c,02690h		;26b6
	call 0344ah		;26b9
	jp c,0248ah		;26bc
	jp 02690h		;26bf
	push bc			;26c2
	ld b,02bh		;26c3
	ld c,02ah		;26c5
	jr $+7		;26c7
	push bc			;26c9
	ld b,02dh		;26ca
	ld c,020h		;26cc
	call 025d5h		;26ce
	pop bc			;26d1
	jp 02435h		;26d2
	call 032cfh		;26d5
	bit 7,(ix+00dh)		;26d8
	jr z,$+9		;26dc
	ld hl,0000ah		;26de
	add hl,de			;26e1
	bit 7,(hl)		;26e2
	ret z			;26e4
	ld hl,00013h		;26e5
	add hl,de			;26e8
	ld a,(hl)			;26e9
	ld (hl),c			;26ea
	cp c			;26eb
	ret z			;26ec
	ld a,b			;26ed
	cp 02bh		;26ee
	ld a,(0f0bfh)		;26f0
	jr z,$+4		;26f3
	dec a			;26f5
	dec a			;26f6
	inc a			;26f7
	ld (0f0bfh),a		;26f8
	dec hl			;26fb
	dec hl			;26fc
	dec hl			;26fd
	dec hl			;26fe
	ld d,(hl)			;26ff
	dec hl			;2700
	ld e,(hl)			;2701
	ex de,hl			;2702
	push hl			;2703
	call 038d3h		;2704
	ex de,hl			;2707
	ld a,b			;2708
	cp 02bh		;2709
	jr z,$+9		;270b
	xor a			;270d
	sub e			;270e
	ld e,a			;270f
	ld a,000h		;2710
	sbc a,d			;2712
	ld d,a			;2713
	ld hl,(0f0d3h)		;2714
	add hl,de			;2717
	ld (0f0d3h),hl		;2718
	pop hl			;271b
	call 038cfh		;271c
	ex de,hl			;271f
	ld a,b			;2720
	cp 02bh		;2721
	jr z,$+9		;2723
	xor a			;2725
	sub e			;2726
	ld e,a			;2727
	ld a,000h		;2728
	sbc a,d			;272a
	ld d,a			;272b
	ld hl,(0f0d5h)		;272c
	add hl,de			;272f
	ld (0f0d5h),hl		;2730
	ret			;2733
	set 7,(ix+00dh)		;2734
	xor a			;2738
	ld (0f0c1h),a		;2739
	ld b,02bh		;273c
	ld c,02ah		;273e
	call 025d5h		;2740
	ld a,(0f0c1h)		;2743
	inc a			;2746
	cp (ix+005h)		;2747
	jp nc,02690h		;274a
	ld (0f0c1h),a		;274d
	jr $-20		;2750
	xor a			;2752
	ld (0f0c1h),a		;2753
	call 03314h		;2756
	jr nc,$+6		;2759
	ld (hl),020h		;275b
	jr $-7		;275d
	call 0390bh		;275f
	jp 02690h		;2762
	ld a,(0f0cah)		;2765
	cpl			;2768
	ld (0f0cah),a		;2769
	jp 02690h		;276c
	call 03628h		;276f
	ret c			;2772
	ld hl,0ffadh		;2773
	res 5,(hl)		;2776
	cp 03fh		;2778
	jr z,$+27		;277a
	ld (0f0b8h),a		;277c
	call 033d8h		;277f
	xor a			;2782
	ld (0f0c8h),a		;2783
	xor a			;2786
	ld (0f0c3h),a		;2787
	ld (0f0c4h),a		;278a
	call 02e6bh		;278d
	ld (ix+014h),001h		;2790
	ret			;2794
	ld a,e			;2795
	cp 03fh		;2796
	jr z,$-21		;2798
	ld (0f071h),a		;279a
	call 0343eh		;279d
	xor a			;27a0
	jr $-30		;27a1
	xor a			;27a3
	ld (0f0c6h),a		;27a4
	call 037dah		;27a7
	ld b,c			;27aa
	ld (hl),h			;27ab
	ld (hl),d			;27ac
	ld a,c			;27ad
	ld h,d			;27ae
	ld (hl),l			;27af
	ld (hl),h			;27b0
	ld a,c			;27b1
	jr nz,$+42		;27b2
	ld d,d			;27b4
	inc l			;27b5
	ld d,e			;27b6
	add hl,hl			;27b7
	jr nz,$+60		;27b8
	inc h			;27ba
	call 03736h		;27bb
	cp 01bh		;27be
	jp z,02e41h		;27c0
	cp 052h		;27c3
	jr z,$+55		;27c5
	cp 053h		;27c7
	jr z,$+57		;27c9
	cp 020h		;27cb
	jr z,$+7		;27cd
	cp 00dh		;27cf
	jp nz,0225fh		;27d1
	call 032c4h		;27d4
	call 0333bh		;27d7
	ld hl,00009h		;27da
	add hl,de			;27dd
	bit 7,(ix+00eh)		;27de
	jr z,$+4		;27e2
	set 7,(hl)		;27e4
	inc hl			;27e6
	bit 6,(ix+00eh)		;27e7
	jr z,$+4		;27eb
	set 7,(hl)		;27ed
	ld c,01eh		;27ef
	call 00005h		;27f1
	call 03314h		;27f4
	jr c,$-32		;27f7
	jp 0268dh		;27f9
	set 7,(ix+00eh)		;27fc
	jr $-69		;2800
	set 6,(ix+00eh)		;2802
	jr $-75		;2806
	call 032c4h		;2808
	jp c,02798h		;280b
	call 0274dh		;280e
	cp 01bh		;2811
	jp z,02e41h		;2813
	cp 054h		;2816
	ret nz			;2818
	call 03766h		;2819
	call 02768h		;281c
	ret c			;281f
	call 02e6bh		;2820
	ld c,(ix+00ch)		;2823
	ld a,(0f0bdh)		;2826
	sub c			;2829
	jr c,$+19		;282a
	jr z,$+17		;282c
	ld c,a			;282e
	ld a,(0f0c3h)		;282f
	cp c			;2832
	jp c,02690h		;2833
	dec a			;2836
	ld (0f0c3h),a		;2837
	jp 02690h		;283a
	ld a,c			;283d
	or a			;283e
	jr z,$-8		;283f
	ld a,(0f0c4h)		;2841
	sub 03ch		;2844
	ld (0f0c4h),a		;2846
	ld a,03bh		;2849
	jr $-20		;284b
	call 037dah		;284d
	ld l,e			;2850
	ld h,c			;2851
	ld (hl),e			;2852
	ld l,a			;2853
	ld (hl),a			;2854
	ld h,c			;2855
	ld a,(hl)			;2856
	jr nz,$+42		;2857
	ld d,h			;2859
	add hl,hl			;285a
	jr nz,$+38		;285b
	call 03736h		;285d
	cp 054h		;2860
	push af			;2862
	call 03769h		;2863
	pop af			;2866
	ret			;2867
	ld h,d			;2868
	ld l,e			;2869
	inc hl			;286a
	call 03832h		;286b
	call 03766h		;286e
	ld hl,00009h		;2871
	add hl,de			;2874
	bit 7,(hl)		;2875
	jr nz,$+23		;2877
	call 0333bh		;2879
	call 03414h		;287c
	call 037dah		;287f
	ld (hl),e			;2882
	ld l,e			;2883
	ld h,c			;2884
	ld (hl),e			;2885
	ld l,a			;2886
	ld (hl),a			;2887
	ld h,c			;2888
	ld l,(hl)			;2889
	ld a,c			;288a
	inc h			;288b
	or a			;288c
	ret			;288d
	call 037dah		;288e
	rlca			;2891
	ld d,d			;2892
	cpl			;2893
	ld c,a			;2894
	inc h			;2895
	scf			;2896
	ret			;2897
	call 037dah		;2898
	ld c,e			;289b
	ld h,c			;289c
	ld (hl),e			;289d
	ld l,a			;289e
	ld (hl),a			;289f
	ld h,c			;28a0
	ld a,(hl)			;28a1
	jr nz,$+121		;28a2
	ld (hl),e			;28a4
	ld a,d			;28a5
	ld a,c			;28a6
	ld (hl),e			;28a7
	ld (hl),h			;28a8
	ld l,e			;28a9
	ld l,c			;28aa
	ld h,l			;28ab
	jr nz,$+65		;28ac
	jr nz,$+42		;28ae
	ld d,h			;28b0
	ld b,c			;28b1
	ld c,e			;28b2
	add hl,hl			;28b3
	jr nz,$+60		;28b4
	inc h			;28b6
	call 03736h		;28b7
	cp 01bh		;28ba
	jp z,02e41h		;28bc
	cp 054h		;28bf
	ret nz			;28c1
	call 03736h		;28c2
	cp 01bh		;28c5
	jp z,02e41h		;28c7
	cp 041h		;28ca
	ret nz			;28cc
	call 03736h		;28cd
	cp 01bh		;28d0
	jp z,02e41h		;28d2
	cp 04bh		;28d5
	ret nz			;28d7
	call 0379ah		;28d8
	call 02768h		;28db
	call 03314h		;28de
	jr c,$-9		;28e1
	call 03748h		;28e3
	jp 02686h		;28e6
	ld (ix+00fh),002h		;28e9
	jr $+20		;28ed
	ld a,001h		;28ef
	ld b,0afh		;28f1
	ld (0f0c7h),a		;28f3
	call 038f3h		;28f6
	ld a,(0f26bh)		;28f9
	bit 4,a		;28fc
	call nz,03823h		;28fe
	call 03796h		;2901
	ld hl,00100h		;2904
	ld (0f0e2h),hl		;2907
	call 033eah		;290a
	xor a			;290d
	ld (0f0d1h),a		;290e
	ld bc,00020h		;2911
	call 03373h		;2914
	ld a,c			;2917
	cp 020h		;2918
	jr z,$+22		;291a
	ld hl,(0f0e0h)		;291c
	dec hl			;291f
	ex de,hl			;2920
	ld hl,00100h		;2921
	ld a,(0f0c7h)		;2924
	cp 001h		;2927
	jr nz,$+27		;2929
	call 0353ch		;292b
	jr c,$-29		;292e
	bit 1,(ix+00fh)		;2930
	jr nz,$+23		;2934
	ld a,(0f26bh)		;2936
	bit 4,a		;2939
	call nz,03814h		;293b
	call 0379ah		;293e
	jp 0248ah		;2941
	jr nc,$-51		;2944
	call 0344ah		;2946
	jr $-27		;2949
	call 037dah		;294b
	jr nz,$+82		;294e
	ld l,h			;2950
	ld l,c			;2951
	ld l,e			;2952
	jr nz,$+114		;2953
	ld (hl),d			;2955
	ld a,d			;2956
	ld h,l			;2957
	ld h,e			;2958
	ld a,d			;2959
	ld a,c			;295a
	ld (hl),h			;295b
	ld h,c			;295c
	ld l,(hl)			;295d
	ld a,c			;295e
	inc h			;295f
	call 037dah		;2960
	inc l			;2963
	jr nz,$+117		;2964
	ld (hl),l			;2966
	ld l,l			;2967
	ld h,c			;2968
	jr nz,$+63		;2969
	jr nz,$+38		;296b
	ld a,(0f0d1h)		;296d
	jp 03522h		;2970
	call 032cch		;2973
	ld hl,00009h		;2976
	add hl,de			;2979
	bit 7,(hl)		;297a
	jr nz,$+85		;297c
	call 0333bh		;297e
	call 0354fh		;2981
	jr c,$+57		;2984
	jr z,$+55		;2986
	ld a,(0f0cbh)		;2988
	or a			;298b
	jr nz,$+49		;298c
	ld hl,0f097h		;298e
	ld de,0f086h		;2991
	ld bc,0000ch		;2994
	ldir		;2997
	ld de,0f086h		;2999
	ld c,011h		;299c
	call 00005h		;299e
	inc a			;29a1
	jr z,$+21		;29a2
	call 037dah		;29a4
	jp p,06c50h		;29a7
	ld l,c			;29aa
	ld l,e			;29ab
	jr nz,$+107		;29ac
	ld (hl),e			;29ae
	ld (hl),h			;29af
	ld l,(hl)			;29b0
	ld l,c			;29b1
	ld h,l			;29b2
	ld l,d			;29b3
	ld h,l			;29b4
	inc h			;29b5
	ret			;29b6
	call 03436h		;29b7
	jp 0268dh		;29ba
	cp 01bh		;29bd
	jp z,02e41h		;29bf
	call 037dah		;29c2
	jp p,07c7ah		;29c5
	ld h,c			;29c8
	jr nz,$+112		;29c9
	ld h,c			;29cb
	ld a,d			;29cc
	ld (hl),a			;29cd
	ld h,c			;29ce
	inc h			;29cf
	ret			;29d0
	call 037dah		;29d1
	rlca			;29d4
	ld d,b			;29d5
	ld l,h			;29d6
	ld l,c			;29d7
	ld l,e			;29d8
	jr nz,$+84		;29d9
	cpl			;29db
	ld c,a			;29dc
	inc h			;29dd
	ret			;29de
	call 03644h		;29df
	ret c			;29e2
	cp 03fh		;29e3
	jr nz,$+23		;29e5
	ld (0f0c5h),a		;29e7
	ld (ix+003h),e		;29ea
	ld a,(0f071h)		;29ed
	cp e			;29f0
	jp z,036cch		;29f1
	ld a,(0f0b8h)		;29f4
	ld (0f0b9h),a		;29f7
	jr $+5		;29fa
	ld (0f0b9h),a		;29fc
	call 033d8h		;29ff
	call 033ceh		;2a02
	call 032c4h		;2a05
	call 0333bh		;2a08
	push de			;2a0b
	ld h,d			;2a0c
	ld l,e			;2a0d
	push hl			;2a0e
	call 0379ah		;2a0f
	inc hl			;2a12
	call 03832h		;2a13
	call 03769h		;2a16
	pop hl			;2a19
	ld de,0f097h		;2a1a
	ld bc,0000ch		;2a1d
	ldir		;2a20
	call 033e2h		;2a22
	ld a,(0f0b9h)		;2a25
	ld (0f097h),a		;2a28
	cp (ix+000h)		;2a2b
	jr nz,$+24		;2a2e
	bit 0,(ix+00dh)		;2a30
	jr nz,$+18		;2a34
	call 0354fh		;2a36
	jp c,02a49h		;2a39
	jp z,02a49h		;2a3c
	ld a,(0f0cbh)		;2a3f
	or a			;2a42
	jp nz,02a49h		;2a43
	pop de			;2a46
	call 033fah		;2a47
	call 02a5ah		;2a4a
	ld a,(0f0bch)		;2a4d
	cp 007h		;2a50
	jp z,02a04h		;2a52
	ld de,0f097h		;2a55
	ld c,011h		;2a58
	call 00005h		;2a5a
	cp 0ffh		;2a5d
	jr z,$+42		;2a5f
	call 03900h		;2a61
	add a,009h		;2a64
	ld l,a			;2a66
	call 00011h		;2a67
	bit 7,a		;2a6a
	jp nz,02a37h		;2a6c
	call 037dah		;2a6f
	pop af			;2a72
	ld l,d			;2a73
	ld (hl),l			;2a74
	ld a,l			;2a75
	jr nz,$+107		;2a76
	ld (hl),e			;2a78
	ld (hl),h			;2a79
	ld l,(hl)			;2a7a
	ld l,c			;2a7b
	ld h,l			;2a7c
	ld l,d			;2a7d
	ld h,l			;2a7e
	jr nz,$+47		;2a7f
	jr nz,$+38		;2a81
	call 0274dh		;2a83
	jp nz,02a1fh		;2a86
	xor a			;2a89
	ld (0f0d1h),a		;2a8a
	ld de,0f097h		;2a8d
	call 0342ah		;2a90
	call 02a55h		;2a93
	ld bc,00200h		;2a96
	call 03373h		;2a99
	bit 1,b		;2a9c
	jr nz,$+31		;2a9e
	call 02a5ah		;2aa0
	call 033ach		;2aa3
	jr nc,$-19		;2aa6
	call 037dah		;2aa8
	ld b,d			;2aab
	ld (hl),d			;2aac
	ld h,c			;2aad
	ld l,e			;2aae
	jr nz,$+111		;2aaf
	ld l,c			;2ab1
	ld h,l			;2ab2
	ld l,d			;2ab3
	ld (hl),e			;2ab4
	ld h,e			;2ab5
	ld h,c			;2ab6
	inc h			;2ab7
	call 02a55h		;2ab8
	jr $+109		;2abb
	call 033e2h		;2abd
	call 02a5ah		;2ac0
	ld de,0f097h		;2ac3
	call 03407h		;2ac6
	jr z,$-33		;2ac9
	ld hl,0f097h		;2acb
	ld de,0f076h		;2ace
	ld bc,0000ch		;2ad1
	ldir		;2ad4
	ex de,hl			;2ad6
	ld b,015h		;2ad7
	ld (hl),000h		;2ad9
	inc hl			;2adb
	djnz $-3		;2adc
	call 033f3h		;2ade
	ld c,(ix+019h)		;2ae1
	push bc			;2ae4
	xor a			;2ae5
	ld (0f0d1h),a		;2ae6
	ld bc,00200h		;2ae9
	call 03373h		;2aec
	bit 1,b		;2aef
	jr z,$-8		;2af1
	pop bc			;2af3
	ld a,(0f0d1h)		;2af4
	cp c			;2af7
	jr z,$+24		;2af8
	call 037dah		;2afa
	ld b,d			;2afd
	ld e,h			;2afe
	ld b,c			;2aff
	ld b,h			;2b00
	inc h			;2b01
	jr $+29		;2b02
	call 037dah		;2b04
	ld (hl),d			;2b07
	ld h,c			;2b08
	ld l,(hl)			;2b09
	ld h,h			;2b0a
	ld l,a			;2b0b
	ld l,l			;2b0c
	inc h			;2b0d
	jr $+17		;2b0e
	call 037dah		;2b10
	jr nz,$+117		;2b13
	ld l,e			;2b15
	ld l,a			;2b16
	ld (hl),b			;2b17
	ld l,c			;2b18
	ld l,a			;2b19
	ld (hl),a			;2b1a
	ld h,c			;2b1b
	ld l,(hl)			;2b1c
	ld a,c			;2b1d
	inc h			;2b1e
	call 02a55h		;2b1f
	call 03314h		;2b22
	jp c,02908h		;2b25
	call 03748h		;2b28
	ld a,(0f0b8h)		;2b2b
	cp (ix+001h)		;2b2e
	jp nz,02690h		;2b31
	jp 02686h		;2b34
	call 037dah		;2b37
	ld l,c			;2b3a
	ld (hl),e			;2b3b
	ld (hl),h			;2b3c
	ld l,(hl)			;2b3d
	ld l,c			;2b3e
	ld h,l			;2b3f
	ld l,d			;2b40
	ld h,l			;2b41
	jr nz,$+84		;2b42
	cpl			;2b44
	ld c,a			;2b45
	inc h			;2b46
	jr $-40		;2b47
	pop de			;2b49
	push af			;2b4a
	call 028bdh		;2b4b
	pop af			;2b4e
	cp 01bh		;2b4f
	jr z,$-38		;2b51
	jr $-43		;2b53
	ld e,(ix-047h)		;2b55
	jr $+5		;2b58
	ld e,(ix+003h)		;2b5a
	bit 0,(ix+00dh)		;2b5d
	ret z			;2b61
	jp 03445h		;2b62
	call 0333bh		;2b65
	call 03561h		;2b68
	jp c,028bdh		;2b6b
	push af			;2b6e
	ld hl,0f097h		;2b6f
	ld de,0f0e6h		;2b72
	ld bc,0000ch		;2b75
	ldir		;2b78
	pop af			;2b7a
	call z,02a81h		;2b7b
	jp 02686h		;2b7e
	ld hl,0f0e7h		;2b81
	ld b,00bh		;2b84
	ld (hl),03fh		;2b86
	inc hl			;2b88
	djnz $-3		;2b89
	ret			;2b8b
	ld hl,0f26bh		;2b8c
	res 2,(hl)		;2b8f
	res 3,(hl)		;2b91
	ld hl,00003h		;2b93
	call 00011h		;2b96
	add a,040h		;2b99
	ld (hl),a			;2b9b
	set 7,(ix-048h)		;2b9c
	ret			;2ba0
	ld hl,0f26bh		;2ba1
	res 2,(hl)		;2ba4
	res 3,(hl)		;2ba6
	ld a,(0f070h)		;2ba8
	xor 080h		;2bab
	ld (0f070h),a		;2bad
	ret			;2bb0
	ld a,(0f070h)		;2bb1
	bit 7,a		;2bb4
	ret z			;2bb6
	call 037dah		;2bb7
	ld d,b			;2bba
	ld l,c			;2bbb
	ld (hl),e			;2bbc
	ld a,d			;2bbd
	jr nz,$+124		;2bbe
	ld l,(hl)			;2bc0
	ld h,c			;2bc1
	ld l,e			;2bc2
	ld l,c			;2bc3
	jr nz,$+112		;2bc4
	ld h,c			;2bc6
	jr nz,$+102		;2bc7
	ld (hl),d			;2bc9
	ld (hl),l			;2bca
	ld l,e			;2bcb
	ld h,c			;2bcc
	ld (hl),d			;2bcd
	ld l,e			;2bce
	ld b,b			;2bcf
	jr nz,$+34		;2bd0
	jr nz,$+34		;2bd2
	ld a,d			;2bd4
	ld l,(hl)			;2bd5
	ld h,c			;2bd6
	ld l,e			;2bd7
	jr nz,$+42		;2bd8
	ld h,e			;2bda
	ld (hl),h			;2bdb
	ld (hl),d			;2bdc
	ld l,h			;2bdd
	add hl,hl			;2bde
	ld e,d			;2bdf
	jr nz,$+47		;2be0
	jr nz,$+109		;2be2
	ld l,a			;2be4
	ld l,(hl)			;2be5
	ld l,c			;2be6
	ld h,l			;2be7
	ld h,e			;2be8
	jr nz,$+114		;2be9
	ld l,a			;2beb
	ld l,h			;2bec
	ld h,l			;2bed
	ld h,e			;2bee
	ld h,l			;2bef
	ld l,(hl)			;2bf0
	ld l,c			;2bf1
	ld h,c			;2bf2
	dec c			;2bf3
	ld a,(bc)			;2bf4
	inc h			;2bf5
	call 036feh		;2bf6
	cp 01ah		;2bf9
	jp z,02690h		;2bfb
	ld c,a			;2bfe
	cp 020h		;2bff
	jr c,$+10		;2c01
	call 0f20ch		;2c03
	call 0f20fh		;2c06
	jr $-19		;2c09
	cp 00dh		;2c0b
	jr z,$-10		;2c0d
	cp 00ah		;2c0f
	jr z,$-14		;2c11
	push bc			;2c13
	push af			;2c14
	ld c,03ch		;2c15
	call 0f20ch		;2c17
	pop af			;2c1a
	call 03522h		;2c1b
	ld c,03eh		;2c1e
	call 0f20ch		;2c20
	pop bc			;2c23
	jr $-30		;2c24
	ld a,(0fb7ch)		;2c26
	bit 7,a		;2c29
	ret z			;2c2b
	bit 0,a		;2c2c
	jr z,$+32		;2c2e
	call 037dah		;2c30
	ld b,e			;2c33
	ld a,d			;2c34
	ld a,c			;2c35
	jr nz,$+124		;2c36
	ld (hl),a			;2c38
	ld l,a			;2c39
	ld l,h			;2c3a
	ld l,(hl)			;2c3b
	ld l,c			;2c3c
	ld a,(hl)			;2c3d
	jr nz,$+100		;2c3e
	ld h,c			;2c40
	ld l,(hl)			;2c41
	ld l,e			;2c42
	jr nz,$+51		;2c43
	inc h			;2c45
	call 03727h		;2c46
	cp 054h		;2c49
	jp nz,02e41h		;2c4b
	ld a,0ffh		;2c4e
	call 00017h		;2c50
	call 033d8h		;2c53
	jp 0268dh		;2c56
	ld a,(0fb7ch)		;2c59
	bit 7,a		;2c5c
	jp nz,0225fh		;2c5e
	ld a,007h		;2c61
	call 0376bh		;2c63
	ld a,001h		;2c66
	ld b,0afh		;2c68
	ld (0f0e5h),a		;2c6a
	call 032cch		;2c6d
	ld hl,00009h		;2c70
	add hl,de			;2c73
	ld a,(hl)			;2c74
	and 07fh		;2c75
	cp 043h		;2c77
	jp nz,0225fh		;2c79
	inc hl			;2c7c
	ld a,(hl)			;2c7d
	and 07fh		;2c7e
	cp 04fh		;2c80
	jp nz,0225fh		;2c82
	inc hl			;2c85
	ld a,(hl)			;2c86
	and 07fh		;2c87
	cp 04dh		;2c89
	jp nz,0225fh		;2c8b
	call 0333bh		;2c8e
	ld h,d			;2c91
	ld l,e			;2c92
	call 03796h		;2c93
	inc hl			;2c96
	ld b,008h		;2c97
	call 03846h		;2c99
	call 03769h		;2c9c
	call 035cbh		;2c9f
	jp c,028bdh		;2ca2
	call 0379ah		;2ca5
	xor a			;2ca8
	ld (0007ch),a		;2ca9
	ld hl,0005ch		;2cac
	call 02bddh		;2caf
	ld hl,0006ch		;2cb2
	call 02bddh		;2cb5
	call 033f3h		;2cb8
	jp z,02c7ch		;2cbb
	ld a,(0f0e5h)		;2cbe
	call 00017h		;2cc1
	jp c,02e41h		;2cc4
	call 0335bh		;2cc7
	jp nc,01b98h		;2cca
	call 01bc9h		;2ccd
	jp 0f203h		;2cd0
	ld hl,0f076h		;2cd3
	call 02bddh		;2cd6
	inc c			;2cd9
	dec c			;2cda
	ld a,c			;2cdb
	ret			;2cdc
	push hl			;2cdd
	call 02c39h		;2cde
	pop de			;2ce1
	ld hl,(0f074h)		;2ce2
	ld c,000h		;2ce5
	call 02c4bh		;2ce7
	ld (0f072h),hl		;2cea
	ret z			;2ced
	call 00011h		;2cee
	call 0373fh		;2cf1
	sub 040h		;2cf4
	ld b,a			;2cf6
	inc hl			;2cf7
	call 00011h		;2cf8
	cp 03ah		;2cfb
	jr z,$+5		;2cfd
	dec hl			;2cff
	jr $+5		;2d00
	ld a,b			;2d02
	ld (de),a			;2d03
	inc hl			;2d04
	ld b,008h		;2d05
	call 02c11h		;2d07
	ret c			;2d0a
	cp 02eh		;2d0b
	ret nz			;2d0d
	ld b,003h		;2d0e
	inc hl			;2d10
	call 02c56h		;2d11
	jr c,$+33		;2d14
	jr z,$+28		;2d16
	inc de			;2d18
	call 0373fh		;2d19
	cp 02ah		;2d1c
	jr nz,$+6		;2d1e
	inc c			;2d20
	ld a,03fh		;2d21
	dec hl			;2d23
	ld (de),a			;2d24
	inc hl			;2d25
	djnz $-21		;2d26
	call 02c56h		;2d28
	jr c,$+10		;2d2b
	jr z,$+8		;2d2d
	inc hl			;2d2f
	jr $-8		;2d30
	inc de			;2d32
	djnz $-1		;2d33
	ld (0f074h),hl		;2d35
	ret			;2d38
	ld (hl),000h		;2d39
	inc hl			;2d3b
	ld b,00bh		;2d3c
	ld a,020h		;2d3e
	call 02c46h		;2d40
	ld b,004h		;2d43
	xor a			;2d45
	ld (hl),a			;2d46
	inc hl			;2d47
	djnz $-2		;2d48
	ret			;2d4a
	call 00011h		;2d4b
	or a			;2d4e
	ret z			;2d4f
	cp 020h		;2d50
	ret nz			;2d52
	inc hl			;2d53
	jr $-9		;2d54
	call 00011h		;2d56
	cp 03fh		;2d59
	jr nz,$+3		;2d5b
	inc c			;2d5d
	or a			;2d5e
	scf			;2d5f
	ret z			;2d60
	cp 03dh		;2d61
	ret z			;2d63
	cp 05fh		;2d64
	ret z			;2d66
	cp 02eh		;2d67
	ret z			;2d69
	cp 03ah		;2d6a
	ret z			;2d6c
	cp 03bh		;2d6d
	ret z			;2d6f
	cp 03ch		;2d70
	ret z			;2d72
	cp 03eh		;2d73
	ret z			;2d75
	cp 020h		;2d76
	ret z			;2d78
	scf			;2d79
	ccf			;2d7a
	ret			;2d7b
	call 037dah		;2d7c
	ld a,(bc)			;2d7f
	ld d,b			;2d80
	ld l,h			;2d81
	ld l,c			;2d82
	ld l,e			;2d83
	jr nz,$+112		;2d84
	ld l,c			;2d86
	ld h,l			;2d87
	jr nz,$+124		;2d88
	ld l,(hl)			;2d8a
	ld h,c			;2d8b
	ld l,h			;2d8c
	ld h,l			;2d8d
	ld a,d			;2d8e
	ld l,c			;2d8f
	ld l,a			;2d90
	ld l,(hl)			;2d91
	ld a,c			;2d92
	ld a,(bc)			;2d93
	ld a,(bc)			;2d94
	inc h			;2d95
	jp 0239fh		;2d96
	ld a,(0f0b8h)		;2d99
	dec a			;2d9c
	ret nz			;2d9d
	ld a,(0f26bh)		;2d9e
	bit 2,a		;2da1
	ret nz			;2da3
	ld hl,0f070h		;2da4
	bit 7,(hl)		;2da7
	ret z			;2da9
	res 7,(hl)		;2daa
	call 032cch		;2dac
	ld hl,00010h		;2daf
	add hl,de			;2db2
	ld a,(hl)			;2db3
	cp 007h		;2db4
	ret z			;2db6
	ld hl,0f680h		;2db7
	ld b,080h		;2dba
	ld (hl),000h		;2dbc
	inc hl			;2dbe
	djnz $-3		;2dbf
	call 0333bh		;2dc1
	ld de,0f680h		;2dc4
	ld c,0ffh		;2dc7
	call 02d1ah		;2dc9
	or a			;2dcc
	jr z,$+39		;2dcd
	push af			;2dcf
	ex de,hl			;2dd0
	ld a,(0f6fdh)		;2dd1
	or a			;2dd4
	jr z,$+58		;2dd5
	cp b			;2dd7
	jr nz,$+53		;2dd8
	add a,008h		;2dda
	ld (0f6fdh),a		;2ddc
	pop af			;2ddf
	inc hl			;2de0
	add a,(hl)			;2de1
	ld (hl),a			;2de2
	dec hl			;2de3
	bit 7,a		;2de4
	jr z,$+8		;2de6
	inc hl			;2de8
	inc hl			;2de9
	xor a			;2dea
	ld (0f6fdh),a		;2deb
	ex de,hl			;2dee
	ld a,e			;2def
	cp 0f8h		;2df0
	jr c,$-41		;2df2
	ld a,(0f680h)		;2df4
	or a			;2df7
	ret z			;2df8
	ld hl,0f26bh		;2df9
	set 2,(hl)		;2dfc
	ld hl,(0f279h)		;2dfe
	xor a			;2e01
	dec hl			;2e02
	ld (hl),a			;2e03
	dec hl			;2e04
	ld (hl),a			;2e05
	dec hl			;2e06
	ld (hl),a			;2e07
	res 7,(ix-048h)		;2e08
	ret			;2e0c
	inc hl			;2e0d
	inc hl			;2e0e
	ld (hl),b			;2e0f
	ld a,b			;2e10
	add a,008h		;2e11
	ld (0f6fdh),a		;2e13
	pop af			;2e16
	inc hl			;2e17
	jr $-54		;2e18
	bit 7,c		;2e1a
	jr z,$+36		;2e1c
	ld c,011h		;2e1e
	push de			;2e20
	ld de,0f076h		;2e21
	call 00005h		;2e24
	ld hl,0f082h		;2e27
	inc (hl)			;2e2a
	inc (hl)			;2e2b
	pop de			;2e2c
	inc a			;2e2d
	ret z			;2e2e
	dec a			;2e2f
	call 03900h		;2e30
	ld bc,0000fh		;2e33
	add hl,bc			;2e36
	call 00011h		;2e37
	or a			;2e3a
	ret z			;2e3b
	ld (0f6fah),a		;2e3c
	inc hl			;2e3f
	call 00011h		;2e40
	or a			;2e43
	ret z			;2e44
	ld a,(0f298h)		;2e45
	ld b,a			;2e48
	add a,a			;2e49
	add a,a			;2e4a
	add a,a			;2e4b
	add a,a			;2e4c
	sub b			;2e4d
	ld b,a			;2e4e
	call 00011h		;2e4f
	add a,b			;2e52
	ld b,000h		;2e53
	sub 01eh		;2e55
	jr c,$+5		;2e57
	inc b			;2e59
	jr $-5		;2e5a
	add a,01eh		;2e5c
	or a			;2e5e
	rlca			;2e5f
	rlca			;2e60
	rlca			;2e61
	add a,b			;2e62
	xor 007h		;2e63
	ld b,a			;2e65
	dec c			;2e66
	jp m,02d7bh		;2e67
	inc hl			;2e6a
	call 00011h		;2e6b
	or a			;2e6e
	ld a,010h		;2e6f
	ret nz			;2e71
	ld a,(0f6fah)		;2e72
	and 00fh		;2e75
	ret nz			;2e77
	ld a,010h		;2e78
	ret			;2e7a
	ld a,(0f6fah)		;2e7b
	cp 080h		;2e7e
	ld a,010h		;2e80
	ret z			;2e82
	jr $-17		;2e83
	ld hl,0f26bh		;2e85
	call 037dah		;2e88
	dec c			;2e8b
	jr nz,$+69		;2e8c
	ld a,d			;2e8e
	ld a,c			;2e8f
	jr nz,$+118		;2e90
	ld h,l			;2e92
	ld l,e			;2e93
	ld (hl),e			;2e94
	ld (hl),h			;2e95
	jr nz,$+124		;2e96
	ld h,c			;2e98
	ld (hl),a			;2e99
	ld l,c			;2e9a
	ld h,l			;2e9b
	ld (hl),d			;2e9c
	ld h,c			;2e9d
	inc h			;2e9e
	call 02e49h		;2e9f
	call 03727h		;2ea2
	cp 01bh		;2ea5
	jp z,02e41h		;2ea7
	res 4,(hl)		;2eaa
	cp 054h		;2eac
	jr nz,$+4		;2eae
	set 4,(hl)		;2eb0
	call 037dah		;2eb2
	dec c			;2eb5
	jr nz,$+69		;2eb6
	ld a,d			;2eb8
	ld a,c			;2eb9
	jr nz,$+102		;2eba
	ld (hl),d			;2ebc
	ld (hl),l			;2ebd
	ld l,e			;2ebe
	ld h,c			;2ebf
	ld (hl),d			;2ec0
	ld l,e			;2ec1
	ld h,c			;2ec2
	jr nz,$+111		;2ec3
	ld h,c			;2ec5
	inc h			;2ec6
	call 02e49h		;2ec7
	call 03727h		;2eca
	cp 01bh		;2ecd
	jp z,02e41h		;2ecf
	res 5,(hl)		;2ed2
	cp 054h		;2ed4
	jr nz,$+4		;2ed6
	set 5,(hl)		;2ed8
	call 037dah		;2eda
	dec c			;2edd
	jr nz,$+69		;2ede
	ld a,d			;2ee0
	ld a,c			;2ee1
	jr nz,$+121		;2ee2
	ld a,c			;2ee4
	ld (hl),e			;2ee5
	ld a,c			;2ee6
	ld a,h			;2ee7
	ld h,c			;2ee8
	ld a,(hl)			;2ee9
	jr nz,$+125		;2eea
	ld (hl),e			;2eec
	ld l,l			;2eed
	ld a,c			;2eee
	jr nz,$+100		;2eef
	ld l,c			;2ef1
	ld (hl),h			;2ef2
	jr nz,$+114		;2ef3
	ld l,a			;2ef5
	ld h,h			;2ef6
	ld h,e			;2ef7
	ld a,d			;2ef8
	ld h,c			;2ef9
	ld (hl),e			;2efa
	jr nz,$+102		;2efb
	ld (hl),d			;2efd
	ld (hl),l			;2efe
	ld l,e			;2eff
	ld l,a			;2f00
	ld (hl),a			;2f01
	ld h,c			;2f02
	ld l,(hl)			;2f03
	ld l,c			;2f04
	ld h,c			;2f05
	jr nz,$+38		;2f06
	call 03727h		;2f08
	cp 01bh		;2f0b
	jr z,$+52		;2f0d
	res 1,(hl)		;2f0f
	cp 054h		;2f11
	jr z,$+4		;2f13
	set 1,(hl)		;2f15
	call 037dah		;2f17
	dec c			;2f1a
	jr nz,$+69		;2f1b
	ld a,d			;2f1d
	ld a,c			;2f1e
	jr nz,$+121		;2f1f
	ld a,c			;2f21
	ld (hl),e			;2f22
	ld a,c			;2f23
	ld a,h			;2f24
	ld h,c			;2f25
	ld a,(hl)			;2f26
	jr nz,$+124		;2f27
	ld l,(hl)			;2f29
	ld h,c			;2f2a
	ld l,e			;2f2b
	jr nz,$+86		;2f2c
	ld b,c			;2f2e
	ld b,d			;2f2f
	jr nz,$+38		;2f30
	call 03727h		;2f32
	cp 01bh		;2f35
	jr z,$+10		;2f37
	res 0,(hl)		;2f39
	cp 054h		;2f3b
	jr nz,$+4		;2f3d
	set 0,(hl)		;2f3f
	call 037dah		;2f41
	dec c			;2f44
	dec de			;2f45
	ld c,e			;2f46
	inc h			;2f47
	ret			;2f48
	call 037dah		;2f49
	jr nz,$+110		;2f4c
	ld l,c			;2f4e
	ld (hl),h			;2f4f
	ld h,l			;2f50
	ld (hl),d			;2f51
	ld a,c			;2f52
	jr nz,$+34		;2f53
	ld h,b			;2f55
	jr nz,$+66		;2f56
	jr nz,$+96		;2f58
	jr nz,$+128		;2f5a
	jr nz,$+95		;2f5c
	jr nz,$+127		;2f5e
	jr nz,$+125		;2f60
	jr nz,$+93		;2f62
	jr nz,$+126		;2f64
	jr nz,$+94		;2f66
	jr nz,$+38		;2f68
	ret			;2f6a
	call 0390bh		;2f6b
	ld (0f0bdh),a		;2f6e
	call 033ceh		;2f71
	ld c,01fh		;2f74
	call 00005h		;2f76
	inc hl			;2f79
	inc hl			;2f7a
	ld a,(hl)			;2f7b
	ld (0f0d7h),a		;2f7c
	inc hl			;2f7f
	ld a,(hl)			;2f80
	ld (0f0d8h),a		;2f81
	inc hl			;2f84
	ld a,(hl)			;2f85
	ld (0f0d9h),a		;2f86
	inc hl			;2f89
	ld e,(hl)			;2f8a
	inc hl			;2f8b
	ld d,(hl)			;2f8c
	inc de			;2f8d
	ex de,hl			;2f8e
	ld (0f0dah),hl		;2f8f
	call 033e2h		;2f92
	ld a,(0f0c8h)		;2f95
	ld (0005ch),a		;2f98
	ld hl,0005dh		;2f9b
	ld b,00ch		;2f9e
	ld (hl),03fh		;2fa0
	inc hl			;2fa2
	djnz $-3		;2fa3
	inc hl			;2fa5
	ld (hl),03fh		;2fa6
	ld de,0db00h		;2fa8
	ld c,011h		;2fab
	push de			;2fad
	ld de,0005ch		;2fae
	call 00005h		;2fb1
	pop de			;2fb4
	cp 0ffh		;2fb5
	jp z,02f92h		;2fb7
	call 03900h		;2fba
	call 00011h		;2fbd
	cp 0e5h		;2fc0
	jp z,02f89h		;2fc2
	push de			;2fc5
	push hl			;2fc6
	ld de,0f0e7h		;2fc7
	inc hl			;2fca
	ld b,00bh		;2fcb
	ld a,(de)			;2fcd
	cp 03fh		;2fce
	jr z,$+12		;2fd0
	ld c,a			;2fd2
	call 00011h		;2fd3
	and 07fh		;2fd6
	cp c			;2fd8
	jp nz,02f8eh		;2fd9
	inc hl			;2fdc
	inc de			;2fdd
	djnz $-17		;2fde
	pop hl			;2fe0
	pop de			;2fe1
	ld b,010h		;2fe2
	call 00011h		;2fe4
	ld (de),a			;2fe7
	inc hl			;2fe8
	inc de			;2fe9
	djnz $-6		;2fea
	push de			;2fec
	push hl			;2fed
	ex de,hl			;2fee
	dec hl			;2fef
	dec hl			;2ff0
	ld a,(hl)			;2ff1
	rrca			;2ff2
	rrca			;2ff3
	rrca			;2ff4
	ld c,a			;2ff5
	and 001h		;2ff6
	ld b,a			;2ff8
	ld a,c			;2ff9
	and 0e0h		;2ffa
	dec hl			;2ffc
	dec hl			;2ffd
	or (hl)			;2ffe
	ld c,a			;2fff
	ld a,(0f0d9h)		;3000
	push af			;3003
	and (hl)			;3004
	ld e,a			;3005
	pop af			;3006
	or a			;3007
	jr z,$+12		;3008
	push af			;300a
	or a			;300b
	rr b		;300c
	rr c		;300e
	pop af			;3010
	rra			;3011
	jr $-11		;3012
	ld (hl),b			;3014
	inc hl			;3015
	ld (hl),c			;3016
	inc hl			;3017
	inc hl			;3018
	ld a,(hl)			;3019
	rla			;301a
	ld d,a			;301b
	ld a,000h		;301c
	adc a,e			;301e
	or a			;301f
	rra			;3020
	ld (hl),a			;3021
	dec hl			;3022
	ld a,d			;3023
	rra			;3024
	ld (hl),a			;3025
	inc hl			;3026
	ld d,000h		;3027
	ld c,000h		;3029
	ld a,(0f0d9h)		;302b
	inc a			;302e
	or a			;302f
	rra			;3030
	rr c		;3031
	cp (hl)			;3033
	jr nz,$+7		;3034
	dec hl			;3036
	ld a,(hl)			;3037
	cp c			;3038
	jr z,$+4		;3039
	set 0,d		;303b
	pop hl			;303d
	ld bc,00000h		;303e
	ld a,(0f0dbh)		;3041
	or a			;3044
	ld e,010h		;3045
	jr z,$+4		;3047
	ld e,008h		;3049
	call 00011h		;304b
	ld (0f0e5h),a		;304e
	ld a,(0f0dbh)		;3051
	or a			;3054
	ld a,(0f0e5h)		;3055
	jr z,$+9		;3058
	inc hl			;305a
	call 00011h		;305b
	or (ix+02dh)		;305e
	or a			;3061
	jr z,$+11		;3062
	inc c			;3064
	inc b			;3065
	dec b			;3066
	jr z,$+11		;3067
	ld b,007h		;3069
	jr $+7		;306b
	inc b			;306d
	djnz $+4		;306e
	ld b,001h		;3070
	inc hl			;3072
	dec e			;3073
	jr nz,$-41		;3074
	pop hl			;3076
	ld a,d			;3077
	or b			;3078
	ld (hl),a			;3079
	inc hl			;307a
	ld (hl),c			;307b
	inc hl			;307c
	ld (hl),000h		;307d
	inc hl			;307f
	ld a,(0f0bdh)		;3080
	ld (hl),a			;3083
	inc hl			;3084
	ex de,hl			;3085
	inc (ix+005h)		;3086
	ld c,012h		;3089
	jp 02eadh		;308b
	pop hl			;308e
	pop de			;308f
	jr $-7		;3090
	ex de,hl			;3092
	ld b,03ch		;3093
	ld (hl),0ffh		;3095
	inc hl			;3097
	djnz $-3		;3098
	ld (0f0dch),hl		;309a
	ld a,(0f0bdh)		;309d
	inc a			;30a0
	ld (0f0beh),a		;30a1
	ld hl,0db00h		;30a4
	ld b,000h		;30a7
	call 030c5h		;30a9
	jr c,$+34		;30ac
	inc c			;30ae
	jr nz,$+12		;30af
	push hl			;30b1
	ld de,00010h		;30b2
	add hl,de			;30b5
	ld (hl),007h		;30b6
	pop hl			;30b8
	jr $+21		;30b9
	push hl			;30bb
	ex de,hl			;30bc
	ld hl,00014h		;30bd
	ld b,l			;30c0
	add hl,de			;30c1
	ld a,(de)			;30c2
	ld c,a			;30c3
	ld a,(hl)			;30c4
	ld (de),a			;30c5
	ld (hl),c			;30c6
	inc de			;30c7
	inc hl			;30c8
	djnz $-7		;30c9
	ld b,0ffh		;30cb
	pop hl			;30cd
	ex de,hl			;30ce
	ld hl,00014h		;30cf
	add hl,de			;30d2
	ld a,(hl)			;30d3
	cp 0ffh		;30d4
	jr nz,$-45		;30d6
	ld a,b			;30d8
	or a			;30d9
	jr nz,$-54		;30da
	ld hl,0db00h		;30dc
	xor a			;30df
	ld (0f0c9h),a		;30e0
	ld a,(hl)			;30e3
	cp 0ffh		;30e4
	jp z,03082h		;30e6
	push hl			;30e9
	call 030c5h		;30ea
	ld de,0000ch		;30ed
	add hl,de			;30f0
	ld a,(0f0c9h)		;30f1
	or a			;30f4
	jr nz,$+14		;30f5
	push hl			;30f7
	ld a,(hl)			;30f8
	inc hl			;30f9
	or (hl)			;30fa
	jr z,$+7		;30fb
	inc hl			;30fd
	inc hl			;30fe
	inc hl			;30ff
	ld (hl),007h		;3100
	pop hl			;3102
	ld a,c			;3103
	or a			;3104
	jp m,03032h		;3105
	jr z,$+42		;3108
	dec a			;310a
	jr z,$+39		;310b
	xor a			;310d
	ld (0f0c9h),a		;310e
	pop hl			;3111
	ld de,00014h		;3112
	add hl,de			;3115
	push hl			;3116
	dec hl			;3117
	dec hl			;3118
	ld d,(hl)			;3119
	dec hl			;311a
	ld e,(hl)			;311b
	dec hl			;311c
	ld a,(hl)			;311d
	cp 007h		;311e
	jr nz,$+15		;3120
	ex de,hl			;3122
	ld a,(0f0d7h)		;3123
	add hl,hl			;3126
	dec a			;3127
	jr nz,$-2		;3128
	ex de,hl			;312a
	dec hl			;312b
	ld (hl),d			;312c
	dec hl			;312d
	ld (hl),e			;312e
	pop hl			;312f
	jr $-77		;3130
	ld (ix+011h),001h		;3132
	ex de,hl			;3136
	ld hl,00014h		;3137
	add hl,de			;313a
	ex de,hl			;313b
	ld a,(de)			;313c
	ld b,a			;313d
	inc de			;313e
	ld a,(de)			;313f
	ld c,a			;3140
	inc de			;3141
	dec bc			;3142
	ld a,b			;3143
	cp (hl)			;3144
	inc hl			;3145
	jr nz,$+4		;3146
	ld a,c			;3148
	cp (hl)			;3149
	push af			;314a
	inc bc			;314b
	ld (hl),c			;314c
	dec hl			;314d
	ld (hl),b			;314e
	inc hl			;314f
	inc hl			;3150
	call 030bah		;3151
	ld a,(de)			;3154
	ld c,a			;3155
	ld a,(hl)			;3156
	or a			;3157
	jr z,$+4		;3158
	ld a,007h		;315a
	or c			;315c
	ld (hl),a			;315d
	pop af			;315e
	jr z,$+4		;315f
	ld (hl),007h		;3161
	inc hl			;3163
	inc de			;3164
	call 030bah		;3165
	inc hl			;3168
	inc de			;3169
	ex de,hl			;316a
	ld bc,(0f0dch)		;316b
	ld a,c			;316f
	sub l			;3170
	ld c,a			;3171
	ld a,b			;3172
	sbc a,h			;3173
	ld b,a			;3174
	ldir		;3175
	dec (ix+005h)		;3177
	pop hl			;317a
	push hl			;317b
	ld de,00014h		;317c
	add hl,de			;317f
	jr $-105		;3180
	ld hl,0da00h		;3182
	ld de,00014h		;3185
	ld a,(0f0bdh)		;3188
	or a			;318b
	jr z,$+26		;318c
	push hl			;318e
	xor a			;318f
	ld b,(ix+005h)		;3190
	ld c,000h		;3193
	ld hl,0db13h		;3195
	cp (hl)			;3198
	jr z,$+27		;3199
	add hl,de			;319b
	inc c			;319c
	djnz $-5		;319d
	inc a			;319f
	cp (ix+006h)		;31a0
	jr c,$-19		;31a3
	pop hl			;31a5
	ld (hl),000h		;31a6
	ld hl,0db13h		;31a8
	ld b,(ix+005h)		;31ab
	ld (hl),020h		;31ae
	add hl,de			;31b0
	djnz $-3		;31b1
	ret			;31b3
	ex (sp),hl			;31b4
	ld (hl),c			;31b5
	inc hl			;31b6
	ex (sp),hl			;31b7
	jr $-25		;31b8
	ld a,(de)			;31ba
	add a,(hl)			;31bb
	ld (hl),a			;31bc
	inc hl			;31bd
	inc de			;31be
	ld a,(de)			;31bf
	adc a,(hl)			;31c0
	ld (hl),a			;31c1
	inc hl			;31c2
	inc de			;31c3
	ret			;31c4
	push de			;31c5
	push hl			;31c6
	ld c,00eh		;31c7
	ex de,hl			;31c9
	ld hl,00014h		;31ca
	add hl,de			;31cd
	ld a,(hl)			;31ce
	cp 0ffh		;31cf
	scf			;31d1
	jr z,$+13		;31d2
	or a			;31d4
	dec c			;31d5
	jp m,030dfh		;31d6
	ld a,(de)			;31d9
	cp (hl)			;31da
	inc hl			;31db
	inc de			;31dc
	jr z,$-9		;31dd
	pop hl			;31df
	pop de			;31e0
	ret			;31e1
	ld a,(hl)			;31e2
	ld (0f0bdh),a		;31e3
	ld hl,(0fb81h)		;31e6
	ld (0f0deh),hl		;31e9
	ld hl,(0ffa6h)		;31ec
	ld b,03bh		;31ef
	ld (hl),0ffh		;31f1
	inc hl			;31f3
	djnz $-3		;31f4
	ld (0f0dch),hl		;31f6
	ld a,(0f0bdh)		;31f9
	inc a			;31fc
	ld (0f0beh),a		;31fd
	call 0390bh		;3200
	ld a,004h		;3203
	ld (0f0d7h),a		;3205
	ld a,00fh		;3208
	ld (0f0d8h),a		;320a
	ld a,001h		;320d
	ld (0f0d9h),a		;320f
	ld hl,000d1h		;3212
	ld (0f0dah),hl		;3215
	xor a			;3218
	ld (0f0c3h),a		;3219
	ld (0f0c4h),a		;321c
	call 02fa4h		;321f
	ret			;3222
	call 02e6bh		;3223
	res 6,(ix-048h)		;3226
	ld (ix+014h),000h		;322a
	ld a,(0f0c4h)		;322e
	ld (0f0c1h),a		;3231
	call 0318bh		;3234
	ld a,(0f0bdh)		;3237
	or a			;323a
	jp z,03169h		;323b
	ld b,a			;323e
	ld a,(0f0c4h)		;323f
	add a,03ch		;3242
	ld c,a			;3244
	cp b			;3245
	jr c,$+3		;3246
	ld c,b			;3248
	ld a,(0f0c1h)		;3249
	cp c			;324c
	jp nc,03169h		;324d
	call 03158h		;3250
	inc (ix+009h)		;3253
	jr $-31		;3256
	call 0326bh		;3258
	push hl			;325b
	inc hl			;325c
	inc hl			;325d
	ld e,(hl)			;325e
	inc hl			;325f
	ld d,(hl)			;3260
	inc hl			;3261
	ld a,(hl)			;3262
	ex de,hl			;3263
	call 03852h		;3264
	pop hl			;3267
	ret			;3268
	ld de,01500h		;3269
	call 03175h		;326c
	call 0319ah		;326f
	ld de,01602h		;3272
	ld a,01bh		;3275
	call 0376bh		;3277
	ld a,03dh		;327a
	call 0376bh		;327c
	ld a,d			;327f
	add a,020h		;3280
	call 0376bh		;3282
	ld a,e			;3285
	add a,020h		;3286
	jp 0376bh		;3288
	xor a			;328b
	ld (0f0ceh),a		;328c
	ld (0f0cfh),a		;328f
	ld (0f0d0h),a		;3292
	ld a,01ah		;3295
	jp 0376bh		;3297
	call 033ddh		;329a
	push af			;329d
	or a			;329e
	jr z,$+17		;329f
	call 037dah		;32a1
	inc hl			;32a4
	inc hl			;32a5
	ld c,(hl)			;32a6
	ld h,c			;32a7
	ld (hl),b			;32a8
	ld b,b			;32a9
	ld h,h			;32aa
	ld a,(02420h)		;32ab
	jr $+61		;32ae
	ld hl,0ffadh		;32b0
	bit 5,(hl)		;32b3
	jr z,$+41		;32b5
	call 037dah		;32b7
	dec de			;32ba
	ld d,e			;32bb
	jr nz,$+34		;32bc
	ld d,e			;32be
	ld l,c			;32bf
	ld h,l			;32c0
	ld a,(hl)			;32c1
	cpl			;32c2
	inc h			;32c3
	ld a,(0ffdbh)		;32c4
	or a			;32c7
	jr nz,$+4		;32c8
	ld a,020h		;32ca
	add a,030h		;32cc
	ld c,a			;32ce
	call 0f20ch		;32cf
	call 037dah		;32d2
	ld a,(02020h)		;32d5
	dec de			;32d8
	ld d,h			;32d9
	inc h			;32da
	pop af			;32db
	jr $+38		;32dc
	call 037dah		;32de
	ld d,d			;32e1
	ld b,c			;32e2
	ld c,l			;32e3
	ld b,h			;32e4
	ld e,c			;32e5
	ld d,e			;32e6
	ld c,e			;32e7
	ld a,(02420h)		;32e8
	pop af			;32eb
	add a,041h		;32ec
	call 0376bh		;32ee
	ld a,(0f071h)		;32f1
	ld l,a			;32f4
	or a			;32f5
	jr z,$+12		;32f6
	ld a,02fh		;32f8
	call 0376bh		;32fa
	ld h,000h		;32fd
	call 0388dh		;32ff
	ld hl,(0f0bdh)		;3302
	ld h,000h		;3305
	call 037dah		;3307
	jp p,06c50h		;330a
	ld l,c			;330d
	ld l,e			;330e
	ld a,e			;330f
	ld (hl),a			;3310
	ld a,(02420h)		;3311
	call 03899h		;3314
	call 037dah		;3317
	jp p,06f50h		;331a
	ld a,d			;331d
	ld l,a			;331e
	ld (hl),e			;331f
	ld (hl),h			;3320
	ld h,c			;3321
	ld a,h			;3322
	ld l,a			;3323
	ld a,(02420h)		;3324
	ld hl,0ffadh		;3327
	bit 5,(hl)		;332a
	jr z,$+7		;332c
	ld hl,(0f0deh)		;332e
	jr $+46		;3331
	ld hl,(0f0dah)		;3333
	push hl			;3336
	ld c,01bh		;3337
	call 00005h		;3339
	pop de			;333c
	push de			;333d
	ld c,(hl)			;333e
	inc hl			;333f
	ld b,008h		;3340
	rlc c		;3342
	jr nc,$+5		;3344
	ex (sp),hl			;3346
	dec hl			;3347
	ex (sp),hl			;3348
	dec de			;3349
	ld a,d			;334a
	or e			;334b
	jr z,$+6		;334c
	djnz $-12		;334e
	jr $-18		;3350
	pop hl			;3352
	ld a,(0f0d7h)		;3353
	sub 003h		;3356
	dec a			;3358
	jp m,0325fh		;3359
	add hl,hl			;335c
	jr $-5		;335d
	call 0388dh		;335f
	call 037dah		;3362
	jr nz,$+77		;3365
	ld b,d			;3367
	inc h			;3368
	ret			;3369
	ld b,006h		;336a
	nop			;336c
	ld a,(0f0bdh)		;336d
	or a			;3370
	ret z			;3371
	ld a,(0f0c1h)		;3372
	sub (ix+00ch)		;3375
	ld c,000h		;3378
	inc c			;337a
	sub 014h		;337b
	jr nc,$-3		;337d
	add a,014h		;337f
	ld d,a			;3381
	xor a			;3382
	dec c			;3383
	jr z,$+6		;3384
	add a,01bh		;3386
	jr $-5		;3388
	ld e,a			;338a
	call 03175h		;338b
	call 032cfh		;338e
	ld hl,00013h		;3391
	add hl,de			;3394
	ld a,(hl)			;3395
	call 0376bh		;3396
	ld a,b			;3399
	or a			;339a
	push af			;339b
	jr nz,$+7		;339c
	call 03769h		;339e
	jr $+9		;33a1
	call 037dah		;33a3
	ld a,01bh		;33a6
	ld d,e			;33a8
	inc h			;33a9
	ld hl,00001h		;33aa
	add hl,de			;33ad
	call 03832h		;33ae
	pop af			;33b1
	ret z			;33b2
	call 037dah		;33b3
	dec de			;33b6
	ld d,h			;33b7
	inc h			;33b8
	ret			;33b9
	ld a,(0f0c4h)		;33ba
	add a,(ix+00bh)		;33bd
	ld (0f0c1h),a		;33c0
	ret			;33c3
	xor a			;33c4
	ld (0f0c1h),a		;33c5
	call 03314h		;33c8
	ret c			;33cb
	call 032bah		;33cc
	ld a,(0f0cah)		;33cf
	or a			;33d2
	ld a,(0f0c1h)		;33d3
	jr z,$+8		;33d6
	ld hl,0da00h		;33d8
	add a,l			;33db
	ld l,a			;33dc
	ld a,(hl)			;33dd
	ld h,000h		;33de
	ld l,a			;33e0
	ld e,l			;33e1
	ld d,h			;33e2
	add hl,hl			;33e3
	add hl,hl			;33e4
	add hl,de			;33e5
	add hl,hl			;33e6
	add hl,hl			;33e7
	ld de,0db00h		;33e8
	add hl,de			;33eb
	ex de,hl			;33ec
	ret			;33ed
	ld a,(0f0bdh)		;33ee
	or a			;33f1
	ret z			;33f2
	dec hl			;33f3
	dec hl			;33f4
	dec hl			;33f5
	bit 7,(hl)		;33f6
	call z,03763h		;33f8
	jr z,$+10		;33fb
	call 037dah		;33fd
	jr nz,$+84		;3400
	cpl			;3402
	ld c,a			;3403
	inc h			;3404
	inc hl			;3405
	bit 7,(hl)		;3406
	jp z,03763h		;3408
	call 037dah		;340b
	jr nz,$+85		;340e
	ld e,c			;3410
	ld d,e			;3411
	inc h			;3412
	ret			;3413
	ld a,(0f0bdh)		;3414
	or a			;3417
	ret z			;3418
	ld c,a			;3419
	ld a,(0f0c1h)		;341a
	cp c			;341d
	ret nc			;341e
	call 0370dh		;341f
	jr z,$+8		;3422
	call 036feh		;3424
	cp 01bh		;3427
	ret z			;3429
	call 032cfh		;342a
	inc (ix+009h)		;342d
	ld hl,00013h		;3430
	add hl,de			;3433
	ld a,(hl)			;3434
	cp 02ah		;3435
	jr nz,$-35		;3437
	scf			;3439
	ret			;343a
	ld hl,0f076h		;343b
	push hl			;343e
	ld b,00ch		;343f
	xor a			;3441
	and 07fh		;3442
	ld (hl),a			;3444
	inc hl			;3445
	inc de			;3446
	ld a,(de)			;3447
	djnz $-6		;3448
	ld b,036h		;344a
	xor a			;344c
	ld (hl),a			;344d
	inc hl			;344e
	djnz $-2		;344f
	inc de			;3451
	inc de			;3452
	inc de			;3453
	inc de			;3454
	ld a,(de)			;3455
	ld (0f0bch),a		;3456
	pop de			;3459
	ret			;345a
	ld de,00100h		;345b
	push de			;345e
	call 033e5h		;345f
	call 03420h		;3462
	pop hl			;3465
	ret nz			;3466
	ld de,00080h		;3467
	add hl,de			;346a
	ex de,hl			;346b
	ld a,d			;346c
	cp 0f0h		;346d
	jr c,$-17		;346f
	scf			;3471
	ret			;3472
	ld hl,00100h		;3473
	ld (0f0deh),hl		;3476
	ld (0f0e0h),hl		;3479
	ex de,hl			;347c
	ld a,b			;347d
	or c			;347e
	ret z			;347f
	push bc			;3480
	push de			;3481
	call 033e5h		;3482
	ld de,0f076h		;3485
	call 03420h		;3488
	pop hl			;348b
	jr nz,$+30		;348c
	ld c,(ix+019h)		;348e
	ld b,080h		;3491
	call 00011h		;3493
	add a,c			;3496
	ld c,a			;3497
	inc hl			;3498
	djnz $-6		;3499
	ld (ix+019h),c		;349b
	ld (0f0e0h),hl		;349e
	ex de,hl			;34a1
	pop bc			;34a2
	dec bc			;34a3
	ld a,d			;34a4
	cp 0dah		;34a5
	jr c,$-42		;34a7
	ret			;34a9
	pop bc			;34aa
	ret			;34ab
	ld hl,(0f0deh)		;34ac
	ex de,hl			;34af
	ld hl,(0f0e0h)		;34b0
	ld a,e			;34b3
	sub l			;34b4
	ld a,d			;34b5
	sbc a,h			;34b6
	ret nc			;34b7
	push de			;34b8
	call 033e5h		;34b9
	ld de,0f097h		;34bc
	call 0341ch		;34bf
	pop de			;34c2
	scf			;34c3
	ret nz			;34c4
	ld hl,00080h		;34c5
	add hl,de			;34c8
	ld (0f0deh),hl		;34c9
	jr $-32		;34cc
	ld a,(0f0b8h)		;34ce
	dec a			;34d1
	ld e,a			;34d2
	ld c,00eh		;34d3
	jp 00005h		;34d5
	ld c,00dh		;34d8
	jp 00005h		;34da
	ld c,019h		;34dd
	jp 00005h		;34df
	ld de,00080h		;34e2
	ld c,01ah		;34e5
	jp 00005h		;34e7
	call 032cch		;34ea
	call 0333bh		;34ed
	jp 033fah		;34f0
	xor a			;34f3
	ld (0f096h),a		;34f4
	ld de,0f076h		;34f7
	ld c,00fh		;34fa
	call 00005h		;34fc
	ld (0f06dh),a		;34ff
	inc a			;3502
	ret			;3503
	ld de,0f076h		;3504
	ld c,010h		;3507
	jp 033fch		;3509
	ld de,0f076h		;350c
	ld c,011h		;350f
	jp 033fch		;3511
	ld de,0f076h		;3514
	ld c,013h		;3517
	jp 00005h		;3519
	ld c,015h		;351c
	jr $+7		;351e
	ld de,0f076h		;3520
	ld c,014h		;3523
	call 00005h		;3525
	or a			;3528
	ret			;3529
	push de			;352a
	ld c,013h		;352b
	call 00005h		;352d
	pop de			;3530
	ld c,016h		;3531
	jp 033fch		;3533
	ld de,0f076h		;3536
	ld c,017h		;3539
	jp 00005h		;353b
	ld e,(ix-047h)		;353e
	jr $+4		;3541
	ld e,0ffh		;3543
	ld c,020h		;3545
	jp 00005h		;3547
	push hl			;354a
	ld hl,(0f0e2h)		;354b
	ex (sp),hl			;354e
	call 0379ah		;354f
	call 0370dh		;3552
	jp nz,0350ah		;3555
	xor a			;3558
	ld (0f0e4h),a		;3559
	ex (sp),hl			;355c
	call 0351dh		;355d
	ex (sp),hl			;3560
	ld a,l			;3561
	and 00fh		;3562
	ld b,a			;3564
	ld c,0ffh		;3565
	jr z,$+22		;3567
	inc c			;3569
	ld a,c			;356a
	and 003h		;356b
	call z,03769h		;356d
	call 03769h		;3570
	ld a,02dh		;3573
	call 0376bh		;3575
	call 0376bh		;3578
	djnz $-18		;357b
	push hl			;357d
	call 03769h		;357e
	ld a,l			;3581
	and 003h		;3582
	call z,03769h		;3584
	call 00011h		;3587
	call 03522h		;358a
	call 03513h		;358d
	jr nc,$+27		;3590
	ld a,l			;3592
	cpl			;3593
	inc a			;3594
	and 00fh		;3595
	jr z,$+25		;3597
	ld c,a			;3599
	add a,a			;359a
	add a,c			;359b
	ld b,a			;359c
	ld a,c			;359d
	rrca			;359e
	rrca			;359f
	and 003h		;35a0
	add a,b			;35a2
	ld b,a			;35a3
	call 03769h		;35a4
	djnz $-3		;35a7
	jr $+7		;35a9
	ld a,l			;35ab
	and 00fh		;35ac
	jr nz,$-48		;35ae
	pop hl			;35b0
	call 0375bh		;35b1
	ld a,l			;35b4
	and 00fh		;35b5
	ld b,a			;35b7
	jr z,$+7		;35b8
	call 03769h		;35ba
	djnz $-3		;35bd
	call 00011h		;35bf
	ld c,a			;35c2
	ld a,(0f0e4h)		;35c3
	add a,c			;35c6
	ld (0f0e4h),a		;35c7
	ld a,c			;35ca
	and 07fh		;35cb
	ld c,02eh		;35cd
	cp 020h		;35cf
	jr c,$+7		;35d1
	cp 07fh		;35d3
	jr nc,$+3		;35d5
	ld c,a			;35d7
	ld a,c			;35d8
	call 0376bh		;35d9
	ex (sp),hl			;35dc
	inc hl			;35dd
	ex (sp),hl			;35de
	call 03513h		;35df
	jr c,$+19		;35e2
	ld a,l			;35e4
	and 00fh		;35e5
	jr nz,$-40		;35e7
	call 03766h		;35e9
	ld a,(0f0e4h)		;35ec
	call 03522h		;35ef
	jp 0344fh		;35f2
	ld a,l			;35f5
	and 00fh		;35f6
	jr z,$+8		;35f8
	call 03769h		;35fa
	inc hl			;35fd
	jr $-9		;35fe
	call 03766h		;3600
	ld a,(0f0e4h)		;3603
	call 03522h		;3606
	scf			;3609
	ex (sp),hl			;360a
	ld (0f0e2h),hl		;360b
	call 0379ah		;360e
	pop hl			;3611
	ret			;3612
	inc hl			;3613
	ld a,h			;3614
	or l			;3615
	scf			;3616
	ret z			;3617
	ld a,e			;3618
	sub l			;3619
	ld a,d			;361a
	sbc a,h			;361b
	ret			;361c
	ld a,h			;361d
	call 03522h		;361e
	ld a,l			;3621
	push af			;3622
	rrca			;3623
	rrca			;3624
	rrca			;3625
	rrca			;3626
	and 00fh		;3627
	call 0352fh		;3629
	pop af			;362c
	and 00fh		;362d
	call 03535h		;362f
	jp 0376bh		;3632
	add a,090h		;3635
	daa			;3637
	adc a,040h		;3638
	daa			;363a
	ret			;363b
	call 00011h		;363c
	cp 01ah		;363f
	ret z			;3641
	call 0379fh		;3642
	call 0370dh		;3645
	ret nz			;3648
	call 03513h		;3649
	jr nc,$-16		;364c
	ret			;364e
	call 037dah		;364f
	ld c,(hl)			;3652
	ld l,a			;3653
	ld (hl),a			;3654
	ld h,c			;3655
	jr nz,$+112		;3656
	ld h,c			;3658
	ld a,d			;3659
	ld (hl),a			;365a
	ld h,c			;365b
	jr nz,$+60		;365c
	inc h			;365e
	jr $+19		;365f
	call 037dah		;3661
	ld d,b			;3664
	ld l,a			;3665
	ld h,h			;3666
	ld h,c			;3667
	ld l,d			;3668
	jr nz,$+109		;3669
	ld l,h			;366b
	ld (hl),l			;366c
	ld h,e			;366d
	ld a,d			;366e
	jr nz,$+60		;366f
	inc h			;3671
	call 035cbh		;3672
	ret c			;3675
	ret z			;3676
	inc hl			;3677
	ld de,0f0a3h		;3678
	ld b,00bh		;367b
	dec de			;367d
	ld a,020h		;367e
	ld (de),a			;3680
	djnz $-4		;3681
	ld b,009h		;3683
	call 00011h		;3685
	or a			;3688
	jr z,$+33		;3689
	inc hl			;368b
	cp 02eh		;368c
	jr z,$+9		;368e
	call 035ach		;3690
	jr nz,$-14		;3693
	scf			;3695
	ret			;3696
	ld de,0f0a0h		;3697
	ld b,004h		;369a
	call 00011h		;369c
	or a			;369f
	jr z,$+10		;36a0
	inc hl			;36a2
	call 035ach		;36a3
	jr nz,$-10		;36a6
	scf			;36a8
	ret			;36a9
	inc a			;36aa
	ret			;36ab
	cp 03fh		;36ac
	jr nz,$+9		;36ae
	ld (0f0cbh),a		;36b0
	ld (de),a			;36b3
	inc de			;36b4
	dec b			;36b5
	ret			;36b6
	cp 02ah		;36b7
	jr nz,$-6		;36b9
	ld a,03fh		;36bb
	ld (0f0cbh),a		;36bd
	ld (de),a			;36c0
	inc de			;36c1
	dec b			;36c2
	ret z			;36c3
	ld a,b			;36c4
	cp 001h		;36c5
	jr nz,$-12		;36c7
	or a			;36c9
	ret			;36ca
	ld hl,00081h		;36cb
	xor a			;36ce
	ld (0f0cbh),a		;36cf
	ld (hl),020h		;36d2
	ld (0f074h),hl		;36d4
	inc hl			;36d7
	ld c,001h		;36d8
	call 036feh		;36da
	res 7,a		;36dd
	cp 01bh		;36df
	scf			;36e1
	ret z			;36e2
	cp 00dh		;36e3
	jr z,$+51		;36e5
	cp 07fh		;36e7
	jr nz,$+4		;36e9
	ld a,008h		;36eb
	cp 008h		;36ed
	jr nz,$+17		;36ef
	dec c			;36f1
	jr z,$-26		;36f2
	dec hl			;36f4
	ld (hl),000h		;36f5
	call 037dah		;36f7
	ex af,af'			;36fa
	jr nz,$+10		;36fb
	inc h			;36fd
	jr $-36		;36fe
	cp 061h		;3700
	jr c,$+8		;3702
	cp 07bh		;3704
	jr nc,$+4		;3706
	res 5,a		;3708
	call 0376bh		;370a
	ld (hl),a			;370d
	inc hl			;370e
	inc c			;370f
	ld a,c			;3710
	cp 041h		;3711
	jr c,$-57		;3713
	dec c			;3715
	jr $-34		;3716
	ld (hl),000h		;3718
	ld hl,00080h		;371a
	dec c			;371d
	jr z,$+6		;371e
	inc c			;3720
	ld (hl),c			;3721
	inc hl			;3722
	ret			;3723
	ld (hl),c			;3724
	inc hl			;3725
	ld (hl),c			;3726
	ret			;3727
	call 037dah		;3728
	inc a			;372b
	dec a			;372c
	dec a			;372d
	dec a			;372e
	ld a,020h		;372f
	inc h			;3731
	call 03736h		;3732
	cp 01bh		;3735
	jr z,$+58		;3737
	cp 055h		;3739
	jr z,$+58		;373b
	cp 053h		;373d
	jp z,03de8h		;373f
	jr $+29		;3742
	call 037dah		;3744
	ld c,(hl)			;3747
	ld h,c			;3748
	ld (hl),b			;3749
	ld b,b			;374a
	ld h,h			;374b
	ld a,(02420h)		;374c
	call 03736h		;374f
	cp 01bh		;3752
	jr z,$+29		;3754
	cp 055h		;3756
	jr z,$+29		;3758
	cp 053h		;375a
	jp z,03fa1h		;375c
	sub 041h		;375f
	jp c,036e8h		;3761
	ld c,a			;3764
	push bc			;3765
	call 0f21bh		;3766
	pop bc			;3769
	inc c			;376a
	ld a,h			;376b
	or l			;376c
	jr z,$+123		;376d
	ld a,c			;376f
	ret			;3770
	pop bc			;3771
	jp 02e41h		;3772
	call 037dah		;3775
	ld a,l			;3778
	ld a,c			;3779
	ld (hl),h			;377a
	ld l,e			;377b
	ld l,a			;377c
	ld (hl),a			;377d
	ld l,(hl)			;377e
	ld l,c			;377f
	ld l,e			;3780
	jr nz,$+60		;3781
	jr nz,$+38		;3783
	ld e,000h		;3785
	call 036feh		;3787
	cp 01bh		;378a
	jr z,$-27		;378c
	cp 00dh		;378e
	jr z,$+56		;3790
	ld e,a			;3792
	cp 03fh		;3793
	jp z,0376bh		;3795
	call 0376bh		;3798
	sub 030h		;379b
	jr c,$+47		;379d
	cp 00ah		;379f
	jr nc,$+43		;37a1
	ld e,a			;37a3
	call 036feh		;37a4
	cp 020h		;37a7
	jr z,$+31		;37a9
	cp 00dh		;37ab
	jr z,$+27		;37ad
	call 0376bh		;37af
	push af			;37b2
	ld a,e			;37b3
	add a,a			;37b4
	add a,a			;37b5
	add a,e			;37b6
	add a,a			;37b7
	ld e,a			;37b8
	pop af			;37b9
	sub 030h		;37ba
	jr c,$+16		;37bc
	cp 00ah		;37be
	jr nc,$+12		;37c0
	add a,e			;37c2
	ld e,a			;37c3
	cp 020h		;37c4
	jr nc,$+6		;37c6
	ld a,03fh		;37c8
	or a			;37ca
	ret			;37cb
	call 037dah		;37cc
	jp p,07c7ah		;37cf
	ld a,c			;37d2
	jr nz,$+112		;37d3
	ld (hl),l			;37d5
	ld l,l			;37d6
	ld h,l			;37d7
	ld (hl),d			;37d8
	jr nz,$+119		;37d9
	ld a,l			;37db
	ld a,c			;37dc
	ld (hl),h			;37dd
	ld l,e			;37de
	ld l,a			;37df
	ld (hl),a			;37e0
	ld l,(hl)			;37e1
	ld l,c			;37e2
	ld l,e			;37e3
	ld h,c			;37e4
	inc h			;37e5
	scf			;37e6
	ret			;37e7
	call 028c2h		;37e8
	call 037dah		;37eb
	jr nz,$+112		;37ee
	ld h,c			;37f0
	ld (hl),b			;37f1
	ld b,b			;37f2
	ld h,h			;37f3
	ld (hl),l			;37f4
	inc h			;37f5
	scf			;37f6
	ret			;37f7
	call 0370dh		;37f8
	ret z			;37fb
	jr $+7		;37fc
	call 03716h		;37fe
	jr z,$-3		;3801
	exx			;3803
	ld c,006h		;3804
	ld e,0ffh		;3806
	call 00005h		;3808
	exx			;380b
	ret			;380c
	exx			;380d
	ld c,00bh		;380e
	call 00005h		;3810
	exx			;3813
	or a			;3814
	ret			;3815
	exx			;3816
	ld c,006h		;3817
	ld e,0feh		;3819
	call 00005h		;381b
	exx			;381e
	or a			;381f
	ret			;3820
	cp 020h		;3821
	jp nc,0f20ch		;3823
	ret			;3826
	call 037dah		;3827
	jr nz,$+42		;382a
	ld d,h			;382c
	cpl			;382d
	ld c,(hl)			;382e
	add hl,hl			;382f
	jr nz,$+65		;3830
	jr nz,$+29		;3832
	ld c,e			;3834
	inc h			;3835
	call 036feh		;3836
	exx			;3839
	ld c,a			;383a
	call 03721h		;383b
	exx			;383e
	cp 061h		;383f
	ret c			;3841
	cp 07bh		;3842
	ret nc			;3844
	and 05fh		;3845
	ret			;3847
	call 037dah		;3848
	ld a,(bc)			;384b
	ld hl,(06f6bh)		;384c
	ld l,(hl)			;384f
	ld l,c			;3850
	ld h,l			;3851
	ld h,e			;3852
	ld hl,(0cd24h)		;3853
	ld d,037h		;3856
	jr z,$-3		;3858
	ret			;385a
	call 03766h		;385b
	jr $+11		;385e
	call 03769h		;3860
	call 03766h		;3863
	call 03769h		;3866
	ld a,020h		;3869
	push af			;386b
	exx			;386c
	ld c,a			;386d
	ld a,(0f26bh)		;386e
	bit 1,a		;3871
	jr z,$+4		;3873
	res 7,c		;3875
	bit 4,(ix-048h)		;3877
	jr nz,$+19		;387b
	bit 6,(ix-048h)		;387d
	jr z,$+7		;3881
	call 0f20fh		;3883
	jr $+5		;3886
	call 0f20ch		;3888
	exx			;388b
	pop af			;388c
	ret			;388d
	ld e,c			;388e
	ld c,002h		;388f
	call 00005h		;3891
	jr $-9		;3894
	ld a,00dh		;3896
	jr $+7		;3898
	call 03796h		;389a
	ld a,00ah		;389d
	push hl			;389f
	push af			;38a0
	ld hl,0f0d2h		;38a1
	cp 00dh		;38a4
	jr nz,$+4		;38a6
	ld (hl),000h		;38a8
	cp 009h		;38aa
	jr nz,$+35		;38ac
	ld a,(0f26bh)		;38ae
	bit 0,a		;38b1
	jr z,$+15		;38b3
	ld a,01bh		;38b5
	bit 6,(ix-048h)		;38b7
	call z,0376bh		;38bb
	ld a,009h		;38be
	jr $+20		;38c0
	ld a,020h		;38c2
	call 0376bh		;38c4
	inc (hl)			;38c7
	ld a,(hl)			;38c8
	and 007h		;38c9
	jr nz,$-9		;38cb
	jr $+10		;38cd
	cp 020h		;38cf
	jr c,$+3		;38d1
	inc (hl)			;38d3
	call 0376bh		;38d4
	pop af			;38d7
	pop hl			;38d8
	ret			;38d9
	call 03823h		;38da
	ld a,(0f26bh)		;38dd
	ld (0f13bh),a		;38e0
	bit 5,a		;38e3
	jr nz,$+7		;38e5
	set 4,a		;38e7
	ld (0f26bh),a		;38e9
	ex (sp),hl			;38ec
	ld a,(hl)			;38ed
	inc hl			;38ee
	cp 024h		;38ef
	ex (sp),hl			;38f1
	jr z,$+28		;38f2
	cp 0f0h		;38f4
	jr nc,$+12		;38f6
	cp 00ah		;38f8
	call nz,0376bh		;38fa
	call z,0379ah		;38fd
	jr $-20		;3900
	and 00fh		;3902
	push af			;3904
	call 03769h		;3905
	pop af			;3908
	dec a			;3909
	jr nz,$-6		;390a
	jr $-32		;390c
	ld a,(0f13bh)		;390e
	ld (0f26bh),a		;3911
	bit 6,(ix-048h)		;3914
	ret nz			;3918
	ld a,01bh		;3919
	call 0376bh		;391b
	ld a,04fh		;391e
	jp 0376bh		;3920
	bit 6,(ix-048h)		;3923
	ret nz			;3927
	ld a,01bh		;3928
	call 0376bh		;392a
	ld a,050h		;392d
	jp 0376bh		;392f
	ld b,008h		;3932
	call 03846h		;3934
	ld a,02eh		;3937
	call 0376bh		;3939
	ld b,003h		;393c
	call 03846h		;393e
	ld a,020h		;3941
	jp 0376bh		;3943
	call 00011h		;3946
	inc hl			;3949
	and 07fh		;394a
	call 0376bh		;394c
	djnz $-9		;394f
	ret			;3951
	cp 007h		;3952
	jr nz,$+12		;3954
	call 037dah		;3956
	jp p,04e52h		;3959
	ld b,h			;395c
	inc h			;395d
	jr $+5		;395e
	call 03893h		;3960
	call 038d3h		;3963
	ld (ix+008h),004h		;3966
	ld c,005h		;396a
	push hl			;396c
	ld de,02710h		;396d
	call 0389fh		;3970
	ld de,003e8h		;3973
	call 0389fh		;3976
	ld de,00064h		;3979
	call 0389fh		;397c
	ld de,0000ah		;397f
	call 0389fh		;3982
	ld de,00001h		;3985
	call 038adh		;3988
	pop hl			;398b
	ret			;398c
	ld (ix+008h),001h		;398d
	jr $-39		;3991
	ld (ix+008h),005h		;3993
	jr $-45		;3997
	ld (ix+008h),003h		;3999
	jr $-51		;399d
	ld a,(0f0c0h)		;399f
	or a			;39a2
	jr z,$+10		;39a3
	ld a,l			;39a5
	sub e			;39a6
	ld a,h			;39a7
	sbc a,d			;39a8
	jr nc,$+4		;39a9
	dec c			;39ab
	ret			;39ac
	ld a,(0f0c0h)		;39ad
	sub c			;39b0
	jr z,$+10		;39b1
	jr c,$+8		;39b3
	ld b,a			;39b5
	call 03769h		;39b6
	djnz $-3		;39b9
	xor a			;39bb
	ld (0f0c0h),a		;39bc
	ld b,000h		;39bf
	or a			;39c1
	sbc hl,de		;39c2
	inc b			;39c4
	jr nc,$-4		;39c5
	add hl,de			;39c7
	dec b			;39c8
	ld a,030h		;39c9
	add a,b			;39cb
	jp 0376bh		;39cc
	ld a,007h		;39cf
	jr $+5		;39d1
	ld a,(0f0d8h)		;39d3
	ld c,a			;39d6
	and l			;39d7
	push af			;39d8
	ld a,c			;39d9
	cpl			;39da
	and l			;39db
	ld l,a			;39dc
	pop af			;39dd
	jr z,$+10		;39de
	ld a,c			;39e0
	inc a			;39e1
	add a,l			;39e2
	ld l,a			;39e3
	ld a,h			;39e4
	adc a,000h		;39e5
	ld h,a			;39e7
	ld c,003h		;39e8
	or a			;39ea
	rr h		;39eb
	rr l		;39ed
	dec c			;39ef
	jr nz,$-6		;39f0
	ret			;39f2
	ld a,(0f070h)		;39f3
	and 080h		;39f6
	rrca			;39f8
	or (ix-048h)		;39f9
	ld (0f070h),a		;39fc
	ret			;39ff
	ld hl,00080h		;3a00
	and 003h		;3a03
	rrca			;3a05
	rrca			;3a06
	rrca			;3a07
	add a,l			;3a08
	ld l,a			;3a09
	ret			;3a0a
	xor a			;3a0b
	ld (0f0bfh),a		;3a0c
	ld hl,00000h		;3a0f
	ld (0f0d3h),hl		;3a12
	ld (0f0d5h),hl		;3a15
	ret			;3a18
	xor a			;3a19
	call 00017h		;3a1a
	ld hl,05b00h		;3a1d
	ld de,00100h		;3a20
	ld bc,02500h		;3a23
	ldir		;3a26
	ld hl,08000h		;3a28
	ld (hl),000h		;3a2b
	call 037dah		;3a2d
	ld c,(hl)			;3a30
	ld h,c			;3a31
	ld a,d			;3a32
	ld (hl),a			;3a33
	ld h,c			;3a34
	jr nz,$+114		;3a35
	ld l,h			;3a37
	ld l,c			;3a38
	ld l,e			;3a39
	ld (hl),l			;3a3a
	ld a,(02420h)		;3a3b
	ld a,(0f0bdh)		;3a3e
	or a			;3a41
	jp z,039c3h		;3a42
	call 032cch		;3a45
	ex de,hl			;3a48
	ld de,00081h		;3a49
	inc hl			;3a4c
	ld b,008h		;3a4d
	ld a,(hl)			;3a4f
	cp 020h		;3a50
	jr z,$+15		;3a52
	ld (de),a			;3a54
	ld c,a			;3a55
	call 0436ah		;3a56
	ld a,(08000h)		;3a59
	inc a			;3a5c
	ld (08000h),a		;3a5d
	inc de			;3a60
	inc hl			;3a61
	djnz $-19		;3a62
	ld a,(hl)			;3a64
	cp 020h		;3a65
	jr z,$+40		;3a67
	ld a,02eh		;3a69
	ld (de),a			;3a6b
	ld c,a			;3a6c
	call 0436ah		;3a6d
	inc de			;3a70
	ld a,(08000h)		;3a71
	inc a			;3a74
	ld (08000h),a		;3a75
	ld b,003h		;3a78
	ld a,(hl)			;3a7a
	cp 020h		;3a7b
	jr z,$+15		;3a7d
	ld (de),a			;3a7f
	ld c,a			;3a80
	call 0436ah		;3a81
	ld a,(08000h)		;3a84
	inc a			;3a87
	ld (08000h),a		;3a88
	inc de			;3a8b
	inc hl			;3a8c
	djnz $-19		;3a8d
	ld a,(08000h)		;3a8f
	ld (00080h),a		;3a92
	call 04351h		;3a95
	cp 061h		;3a98
	jr c,$+8		;3a9a
	cp 07bh		;3a9c
	jr nc,$+4		;3a9e
	res 5,a		;3aa0
	cp 01bh		;3aa2
	jp z,03cd6h		;3aa4
	cp 00dh		;3aa7
	jp z,01b98h		;3aa9
	push af			;3aac
	ld a,(08000h)		;3aad
	ld b,a			;3ab0
	call 041b2h		;3ab1
	pop af			;3ab4
	ld c,a			;3ab5
	call 0436ah		;3ab6
	ld (08000h),a		;3ab9
	ld de,08001h		;3abc
	ld l,001h		;3abf
	jr $+7		;3ac1
	ld de,08000h		;3ac3
	ld l,000h		;3ac6
	ld h,01eh		;3ac8
	call 04312h		;3aca
	jp c,03cd6h		;3acd
	ld a,l			;3ad0
	ld (00080h),a		;3ad1
	or a			;3ad4
	jp z,01b98h		;3ad5
	ld hl,08000h		;3ad8
	ld de,00081h		;3adb
	ld b,000h		;3ade
	ld c,a			;3ae0
	ldir		;3ae1
	jp 01b98h		;3ae3
	ld a,(0ffdbh)		;3ae6
	or a			;3ae9
	jr nz,$+26		;3aea
	call 037dah		;3aec
	ld d,b			;3aef
	ld l,h			;3af0
	ld l,c			;3af1
	ld l,e			;3af2
	jr z,$+107		;3af3
	add hl,hl			;3af5
	jr nz,$+118		;3af6
	ld a,c			;3af8
	ld (hl),b			;3af9
	ld (hl),l			;3afa
	jr nz,$+82		;3afb
	ld d,l			;3afd
	ld b,d			;3afe
	ld c,h			;3aff
	ld c,c			;3b00
	ld b,e			;3b01
	inc h			;3b02
	ret			;3b03
	ld hl,0ffadh		;3b04
	res 1,(hl)		;3b07
	ld hl,0ffaeh		;3b09
	set 7,(hl)		;3b0c
	set 1,(hl)		;3b0e
	ld hl,0fb7eh		;3b10
	ld (hl),000h		;3b13
	call 041beh		;3b15
	ld hl,01f40h		;3b18
	call 0473ah		;3b1b
	ld hl,0ffadh		;3b1e
	bit 4,(hl)		;3b21
	res 4,(hl)		;3b23
	jr z,$+11		;3b25
	ld de,03f8ah		;3b27
	call 044f3h		;3b2a
	jp 03adbh		;3b2d
	ld hl,0ffadh		;3b30
	bit 2,(hl)		;3b33
	res 2,(hl)		;3b35
	jr z,$+11		;3b37
	ld de,03f1fh		;3b39
	call 044f3h		;3b3c
	jp 03ad8h		;3b3f
	ld hl,0fb7fh		;3b42
	ld (hl),037h		;3b45
	inc hl			;3b47
	ld a,(0fb7dh)		;3b48
	ld (hl),a			;3b4b
	inc hl			;3b4c
	push hl			;3b4d
	call 032cch		;3b4e
	inc de			;3b51
	ex de,hl			;3b52
	pop de			;3b53
	ld bc,0000bh		;3b54
	ldir		;3b57
	ld hl,0000eh		;3b59
	ld (0ffa8h),hl		;3b5c
	call 0425ch		;3b5f
	call 0422bh		;3b62
	call 0427eh		;3b65
	halt			;3b68
	ld hl,01f40h		;3b69
	call 0473ah		;3b6c
	ld a,(0fb80h)		;3b6f
	or a			;3b72
	jr z,$+53		;3b73
	dec a			;3b75
	jr z,$+77		;3b76
	dec a			;3b78
	jr z,$+20		;3b79
	call 037dah		;3b7b
	jr nz,$+34		;3b7e
	ld b,d			;3b80
	ld (hl),d			;3b81
	ld h,c			;3b82
	ld l,e			;3b83
	jr nz,$+114		;3b84
	ld l,h			;3b86
	ld l,c			;3b87
	ld l,e			;3b88
	ld (hl),l			;3b89
	inc h			;3b8a
	jr $+77		;3b8b
	call 037dah		;3b8d
	jr nz,$+34		;3b90
	ld b,h			;3b92
	ld (hl),d			;3b93
	ld (hl),l			;3b94
	ld l,e			;3b95
	ld h,c			;3b96
	ld (hl),d			;3b97
	ld l,e			;3b98
	ld h,c			;3b99
	jr nz,$+112		;3b9a
	ld l,c			;3b9c
	ld h,l			;3b9d
	jr nz,$+105		;3b9e
	ld l,a			;3ba0
	ld (hl),h			;3ba1
	ld l,a			;3ba2
	ld (hl),a			;3ba3
	ld h,c			;3ba4
	inc h			;3ba5
	jr $+50		;3ba6
	call 037dah		;3ba8
	jr nz,$+34		;3bab
	ld d,b			;3bad
	ld l,h			;3bae
	ld l,c			;3baf
	ld l,e			;3bb0
	jr nz,$+108		;3bb1
	ld h,l			;3bb3
	ld (hl),e			;3bb4
	ld (hl),h			;3bb5
	jr nz,$+102		;3bb6
	ld (hl),d			;3bb8
	ld (hl),l			;3bb9
	ld l,e			;3bba
	ld l,a			;3bbb
	ld (hl),a			;3bbc
	ld h,c			;3bbd
	ld l,(hl)			;3bbe
	ld a,c			;3bbf
	inc h			;3bc0
	jr $+23		;3bc1
	call 037dah		;3bc3
	jr nz,$+34		;3bc6
	ld b,h			;3bc8
	ld (hl),d			;3bc9
	ld (hl),l			;3bca
	ld l,e			;3bcb
	ld h,c			;3bcc
	ld (hl),d			;3bcd
	ld l,e			;3bce
	ld h,c			;3bcf
	jr nz,$+124		;3bd0
	ld h,c			;3bd2
	ld l,d			;3bd3
	ld b,b			;3bd4
	ld (hl),h			;3bd5
	ld h,c			;3bd6
	inc h			;3bd7
	call 04209h		;3bd8
	ld hl,0ffaeh		;3bdb
	res 1,(hl)		;3bde
	out (004h),a		;3be0
	ret			;3be2
	ld a,(0ffdbh)		;3be3
	or a			;3be6
	jr nz,$+26		;3be7
	call 037dah		;3be9
	ld d,b			;3bec
	ld l,h			;3bed
	ld l,c			;3bee
	ld l,e			;3bef
	jr z,$+107		;3bf0
	add hl,hl			;3bf2
	jr nz,$+118		;3bf3
	ld a,c			;3bf5
	ld (hl),b			;3bf6
	ld (hl),l			;3bf7
	jr nz,$+82		;3bf8
	ld d,l			;3bfa
	ld b,d			;3bfb
	ld c,h			;3bfc
	ld c,c			;3bfd
	ld b,e			;3bfe
	inc h			;3bff
	ret			;3c00
	call 032c4h		;3c01
	jr c,$+31		;3c04
	call 037dah		;3c06
	ld l,e			;3c09
	ld h,c			;3c0a
	ld (hl),e			;3c0b
	ld l,a			;3c0c
	ld (hl),a			;3c0d
	ld h,c			;3c0e
	ld a,(hl)			;3c0f
	jr nz,$+42		;3c10
	ld d,h			;3c12
	add hl,hl			;3c13
	jr nz,$+38		;3c14
	call 03736h		;3c16
	cp 01bh		;3c19
	jp z,03cd6h		;3c1b
	cp 054h		;3c1e
	ret nz			;3c20
	jr $+38		;3c21
	call 037dah		;3c23
	ld l,e			;3c26
	ld h,c			;3c27
	ld (hl),e			;3c28
	ld l,a			;3c29
	ld (hl),a			;3c2a
	ld h,c			;3c2b
	ld a,(hl)			;3c2c
	jr nz,$+42		;3c2d
	ld d,h			;3c2f
	ld b,c			;3c30
	ld c,e			;3c31
	add hl,hl			;3c32
	jr nz,$+38		;3c33
	call 03736h		;3c35
	cp 054h		;3c38
	ret nz			;3c3a
	call 03736h		;3c3b
	cp 041h		;3c3e
	ret nz			;3c40
	call 03736h		;3c41
	cp 04bh		;3c44
	ret nz			;3c46
	ld hl,0ffadh		;3c47
	res 1,(hl)		;3c4a
	ld hl,0ffaeh		;3c4c
	set 7,(hl)		;3c4f
	set 1,(hl)		;3c51
	ld hl,0fb7eh		;3c53
	ld (hl),000h		;3c56
	call 041beh		;3c58
	ld hl,01f40h		;3c5b
	call 0473ah		;3c5e
	ld hl,0ffadh		;3c61
	bit 4,(hl)		;3c64
	res 4,(hl)		;3c66
	jr z,$+11		;3c68
	ld de,03f8ah		;3c6a
	call 044f3h		;3c6d
	jp 03bdah		;3c70
	ld hl,0ffadh		;3c73
	bit 2,(hl)		;3c76
	res 2,(hl)		;3c78
	jr z,$+15		;3c7a
	ld de,03f1fh		;3c7c
	call 044f3h		;3c7f
	ld c,030h		;3c82
	call 0436ah		;3c84
	jr $+80		;3c87
	call 032c4h		;3c89
	inc de			;3c8c
	push de			;3c8d
	call 0379ah		;3c8e
	ex de,hl			;3c91
	call 03832h		;3c92
	call 03769h		;3c95
	ld hl,0fb7fh		;3c98
	ld (hl),035h		;3c9b
	inc hl			;3c9d
	ld a,(0ffdbh)		;3c9e
	ld (hl),a			;3ca1
	inc hl			;3ca2
	ex de,hl			;3ca3
	pop hl			;3ca4
	ld bc,0000bh		;3ca5
	ldir		;3ca8
	ld hl,0000eh		;3caa
	ld (0ffa8h),hl		;3cad
	call 0425ch		;3cb0
	call 0422bh		;3cb3
	call 0427eh		;3cb6
	halt			;3cb9
	ld hl,01f40h		;3cba
	call 0473ah		;3cbd
	call 037dah		;3cc0
	jr nz,$+117		;3cc3
	ld l,e			;3cc5
	ld h,c			;3cc6
	ld (hl),e			;3cc7
	ld l,a			;3cc8
	ld (hl),a			;3cc9
	ld h,c			;3cca
	ld l,(hl)			;3ccb
	ld a,c			;3ccc
	inc h			;3ccd
	call 03314h		;3cce
	jp c,03b8ch		;3cd1
	jp 03e36h		;3cd4
	call 04209h		;3cd7
	ld hl,0ffaeh		;3cda
	res 1,(hl)		;3cdd
	out (004h),a		;3cdf
	ret			;3ce1
	ld a,(0ffdbh)		;3ce2
	or a			;3ce5
	jr nz,$+26		;3ce6
	call 037dah		;3ce8
	ld d,b			;3ceb
	ld l,h			;3cec
	ld l,c			;3ced
	ld l,e			;3cee
	jr z,$+107		;3cef
	add hl,hl			;3cf1
	jr nz,$+118		;3cf2
	ld a,c			;3cf4
	ld (hl),b			;3cf5
	ld (hl),l			;3cf6
	jr nz,$+82		;3cf7
	ld d,l			;3cf9
	ld b,d			;3cfa
	ld c,h			;3cfb
	ld c,c			;3cfc
	ld b,e			;3cfd
	inc h			;3cfe
	ret			;3cff
	call 037dah		;3d00
	ld c,(hl)			;3d03
	ld l,a			;3d04
	ld (hl),a			;3d05
	ld h,c			;3d06
	jr nz,$+112		;3d07
	ld h,c			;3d09
	ld a,d			;3d0a
	ld (hl),a			;3d0b
	ld h,c			;3d0c
	ld a,(02420h)		;3d0d
	call 042a1h		;3d10
	jr nc,$+19		;3d13
	call 037dah		;3d15
	jr nz,$+34		;3d18
	jr nz,$+92		;3d1a
	ld a,h			;3d1c
	ld h,c			;3d1d
	jr nz,$+112		;3d1e
	ld h,c			;3d20
	ld a,d			;3d21
	ld (hl),a			;3d22
	ld h,c			;3d23
	inc h			;3d24
	ret			;3d25
	ld hl,0ffadh		;3d26
	res 1,(hl)		;3d29
	ld hl,0ffaeh		;3d2b
	set 7,(hl)		;3d2e
	set 1,(hl)		;3d30
	ld hl,0fb7eh		;3d32
	ld (hl),000h		;3d35
	call 041beh		;3d37
	ld hl,01f40h		;3d3a
	call 0473ah		;3d3d
	ld hl,0ffadh		;3d40
	bit 4,(hl)		;3d43
	res 4,(hl)		;3d45
	jr z,$+11		;3d47
	ld de,03f8ah		;3d49
	call 044f3h		;3d4c
	jp 03ccdh		;3d4f
	ld hl,0ffadh		;3d52
	bit 2,(hl)		;3d55
	res 2,(hl)		;3d57
	jr z,$+10		;3d59
	ld de,03f1fh		;3d5b
	call 044f3h		;3d5e
	jr $+105		;3d61
	ld hl,0fb7fh		;3d63
	ld (hl),036h		;3d66
	inc hl			;3d68
	ld a,(0fb7dh)		;3d69
	ld (hl),a			;3d6c
	inc hl			;3d6d
	push hl			;3d6e
	call 032cch		;3d6f
	inc de			;3d72
	ex de,hl			;3d73
	pop de			;3d74
	ld bc,0000bh		;3d75
	ldir		;3d78
	ld hl,08100h		;3d7a
	ld de,0fb8ch		;3d7d
	ld bc,0000bh		;3d80
	ldir		;3d83
	ld hl,00019h		;3d85
	ld (0ffa8h),hl		;3d88
	call 0425ch		;3d8b
	call 0422bh		;3d8e
	call 0427eh		;3d91
	halt			;3d94
	ld hl,01f40h		;3d95
	call 0473ah		;3d98
	ld a,(0fb80h)		;3d9b
	or a			;3d9e
	jp z,03e36h		;3d9f
	dec a			;3da2
	jr z,$+20		;3da3
	call 037dah		;3da5
	jr nz,$+34		;3da8
	ld b,d			;3daa
	ld (hl),d			;3dab
	ld h,c			;3dac
	ld l,e			;3dad
	jr nz,$+114		;3dae
	ld l,h			;3db0
	ld l,c			;3db1
	ld l,e			;3db2
	ld (hl),l			;3db3
	inc h			;3db4
	jr $+21		;3db5
	call 037dah		;3db7
	jr nz,$+34		;3dba
	ld d,b			;3dbc
	ld l,h			;3dbd
	ld l,c			;3dbe
	ld l,e			;3dbf
	jr nz,$+107		;3dc0
	ld (hl),e			;3dc2
	ld (hl),h			;3dc3
	ld l,(hl)			;3dc4
	ld l,c			;3dc5
	ld h,l			;3dc6
	ld l,d			;3dc7
	ld h,l			;3dc8
	inc h			;3dc9
	call 04209h		;3dca
	ld hl,0ffaeh		;3dcd
	res 1,(hl)		;3dd0
	out (004h),a		;3dd2
	ret			;3dd4
	pop bc			;3dd5
	call 037dah		;3dd6
	dec c			;3dd9
	dec de			;3dda
	ld c,e			;3ddb
	inc h			;3ddc
	ret			;3ddd
	ld hl,0ffaeh		;3dde
	set 1,(hl)		;3de1
	call 037dah		;3de3
	ld c,(hl)			;3de6
	ld h,c			;3de7
	ld (hl),b			;3de8
	ld b,b			;3de9
	ld h,h			;3dea
	jr nz,$+67		;3deb
	inc h			;3ded
	ld hl,0ffadh		;3dee
	res 1,(hl)		;3df1
	ld hl,0ffaeh		;3df3
	set 7,(hl)		;3df6
	ld hl,0fb7eh		;3df8
	ld (hl),000h		;3dfb
	call 041beh		;3dfd
	ld hl,01f40h		;3e00
	call 0473ah		;3e03
	ld hl,0ffadh		;3e06
	bit 4,(hl)		;3e09
	res 4,(hl)		;3e0b
	jr z,$+11		;3e0d
	ld de,03f8ah		;3e0f
	call 044f3h		;3e12
	jp 03ddbh		;3e15
	ld hl,0ffadh		;3e18
	bit 2,(hl)		;3e1b
	res 2,(hl)		;3e1d
	jr z,$+11		;3e1f
	ld de,03f1fh		;3e21
	call 044f3h		;3e24
	jp 03dd8h		;3e27
	call 032c4h		;3e2a
	inc de			;3e2d
	ld (0ffdch),de		;3e2e
	call 0379ah		;3e32
	ex de,hl			;3e35
	ld hl,0fb7fh		;3e36
	ld (hl),034h		;3e39
	inc hl			;3e3b
	ld a,(0fb7dh)		;3e3c
	ld (hl),a			;3e3f
	inc hl			;3e40
	ex de,hl			;3e41
	ld hl,(0ffdch)		;3e42
	ld bc,0000bh		;3e45
	ldir		;3e48
	ld a,(0ffdbh)		;3e4a
	ld (de),a			;3e4d
	ld hl,0000fh		;3e4e
	ld (0ffa8h),hl		;3e51
	call 0425ch		;3e54
	call 0422bh		;3e57
	call 0427eh		;3e5a
	halt			;3e5d
	ld a,(0fb7fh)		;3e5e
	cp 034h		;3e61
	jr nz,$-6		;3e63
	ld a,(0fb80h)		;3e65
	or a			;3e68
	jr nz,$+44		;3e69
	ld c,01bh		;3e6b
	call 0436ah		;3e6d
	ld c,041h		;3e70
	call 0436ah		;3e72
	ld b,00ch		;3e75
	ld c,01bh		;3e77
	call 0436ah		;3e79
	ld c,043h		;3e7c
	call 0436ah		;3e7e
	djnz $-10		;3e81
	call 037dah		;3e83
	jr nz,$+34		;3e86
	ld (hl),e			;3e88
	ld l,e			;3e89
	ld l,a			;3e8a
	ld (hl),b			;3e8b
	ld l,c			;3e8c
	ld l,a			;3e8d
	ld (hl),a			;3e8e
	ld h,c			;3e8f
	ld l,(hl)			;3e90
	ld a,c			;3e91
	inc h			;3e92
	jr $+23		;3e93
	ld hl,(0ffdch)		;3e95
	call 03832h		;3e98
	call 037dah		;3e9b
	jr nz,$+100		;3e9e
	ld (hl),d			;3ea0
	ld h,c			;3ea1
	ld l,e			;3ea2
	jr nz,$+114		;3ea3
	ld l,h			;3ea5
	ld l,c			;3ea6
	ld l,e			;3ea7
	ld (hl),l			;3ea8
	inc h			;3ea9
	ld hl,01f40h		;3eaa
	call 0473ah		;3ead
	call 03314h		;3eb0
	jp c,03d2dh		;3eb3
	ld hl,01f40h		;3eb6
	call 0473ah		;3eb9
	call 04209h		;3ebc
	ld hl,0ffaeh		;3ebf
	set 1,(hl)		;3ec2
	call 041eeh		;3ec4
	ld hl,0ffadh		;3ec7
	bit 2,(hl)		;3eca
	res 2,(hl)		;3ecc
	jr z,$+13		;3ece
	ld de,03f53h		;3ed0
	call 044f3h		;3ed3
	jr $+5		;3ed6
	call 04209h		;3ed8
	out (004h),a		;3edb
	call 03748h		;3edd
	ld hl,0ffaeh		;3ee0
	res 1,(hl)		;3ee3
	jp 02690h		;3ee5
	inc sp			;3ee8
	inc sp			;3ee9
	call 037dah		;3eea
	ld l,c			;3eed
	ld h,l			;3eee
	ld a,(hl)			;3eef
	inc h			;3ef0
	call 043cch		;3ef1
	ret c			;3ef4
	ld a,e			;3ef5
	ld (0ffdbh),a		;3ef6
	ld hl,0ffadh		;3ef9
	res 1,(hl)		;3efc
	ld hl,0ffaeh		;3efe
	set 7,(hl)		;3f01
	set 1,(hl)		;3f03
	ld hl,0fb7eh		;3f05
	ld (hl),000h		;3f08
	call 041beh		;3f0a
	ld hl,01f40h		;3f0d
	call 0473ah		;3f10
	ld hl,0ffadh		;3f13
	bit 4,(hl)		;3f16
	res 4,(hl)		;3f18
	jr z,$+11		;3f1a
	ld de,03f8ah		;3f1c
	call 044f3h		;3f1f
	jp 03eb2h		;3f22
	ld hl,0ffadh		;3f25
	bit 2,(hl)		;3f28
	res 2,(hl)		;3f2a
	jr z,$+10		;3f2c
	ld de,03f1fh		;3f2e
	call 044f3h		;3f31
	jr $+123		;3f34
	ld hl,0fb7eh		;3f36
	ld (hl),000h		;3f39
	inc hl			;3f3b
	ld (hl),031h		;3f3c
	inc hl			;3f3e
	ld a,(0ffdbh)		;3f3f
	ld (hl),a			;3f42
	ld hl,00003h		;3f43
	ld (0ffa8h),hl		;3f46
	ld hl,0ffadh		;3f49
	set 5,(hl)		;3f4c
	call 0425ch		;3f4e
	call 0422bh		;3f51
	call 0427eh		;3f54
	ld hl,0db00h		;3f57
	ld (0ffa6h),hl		;3f5a
	halt			;3f5d
	ld hl,(0ffabh)		;3f5e
	ld bc,0fb80h		;3f61
	or a			;3f64
	sbc hl,bc		;3f65
	ld b,h			;3f67
	ld c,l			;3f68
	ld de,(0ffa6h)		;3f69
	ld hl,0fb80h		;3f6d
	ldir		;3f70
	ld (0ffa6h),de		;3f72
	dec hl			;3f76
	ld a,0ffh		;3f77
	cp (hl)			;3f79
	jr nz,$-29		;3f7a
	halt			;3f7c
	ld hl,0fb80h		;3f7d
	call 030e2h		;3f80
	ld hl,01f40h		;3f83
	call 0473ah		;3f86
	call 04209h		;3f89
	ld hl,0ffaeh		;3f8c
	set 1,(hl)		;3f8f
	call 041eeh		;3f91
	ld hl,0ffadh		;3f94
	bit 2,(hl)		;3f97
	res 2,(hl)		;3f99
	jr z,$+10		;3f9b
	ld de,03f53h		;3f9d
	call 044f3h		;3fa0
	jr $+15		;3fa3
	out (004h),a		;3fa5
	ld hl,0ffaeh		;3fa7
	res 1,(hl)		;3faa
	jp 02690h		;3fac
	call 04209h		;3faf
	out (004h),a		;3fb2
	call 03748h		;3fb4
	ld hl,0ffaeh		;3fb7
	res 1,(hl)		;3fba
	jp 02690h		;3fbc
	call 037dah		;3fbf
	ld c,e			;3fc2
	ld l,a			;3fc3
	ld l,l			;3fc4
	ld (hl),l			;3fc5
	ld l,(hl)			;3fc6
	ld l,c			;3fc7
	ld l,e			;3fc8
	ld h,c			;3fc9
	ld (hl),h			;3fca
	jr nz,$+60		;3fcb
	jr nz,$+38		;3fcd
	xor a			;3fcf
	ld hl,08000h		;3fd0
	ld (hl),a			;3fd3
	inc hl			;3fd4
	ld (hl),009h		;3fd5
	inc hl			;3fd7
	ld a,(0fb7dh)		;3fd8
	add a,030h		;3fdb
	ld (hl),a			;3fdd
	ld h,03ah		;3fde
	ld de,08004h		;3fe0
	call 04310h		;3fe3
	jp c,03cd6h		;3fe6
	ld a,l			;3fe9
	ld (08003h),a		;3fea
	call 040f2h		;3fed
	jr nc,$+10		;3ff0
	ld de,03f8ah		;3ff2
	call 044f3h		;3ff5
	jr $+31		;3ff8
	ld hl,08000h		;3ffa
	ld de,0fb7eh		;3ffd
	ld a,(08003h)		;4000
	add a,004h		;4003
	ld b,000h		;4005
	ld c,a			;4007
	ld (0ffa8h),bc		;4008
	ldir		;400c
	call 0425ch		;400e
	call 0422bh		;4011
	call 0427eh		;4014
	out (004h),a		;4017
	call 03748h		;4019
	jp 02690h		;401c
	ld a,(bc)			;401f
	dec c			;4020
	ld b,d			;4021
	ld (hl),d			;4022
	ld h,c			;4023
	ld l,e			;4024
	jr nz,$+114		;4025
	ld l,a			;4027
	ld (hl),h			;4028
	ld (hl),a			;4029
	ld l,c			;402a
	ld h,l			;402b
	ld (hl),d			;402c
	ld h,h			;402d
	ld a,d			;402e
	ld h,l			;402f
	ld l,(hl)			;4030
	ld l,c			;4031
	ld h,c			;4032
	jr nz,$+124		;4033
	ld h,l			;4035
	jr nz,$+117		;4036
	ld (hl),h			;4038
	ld h,c			;4039
	ld l,(hl)			;403a
	ld l,a			;403b
	ld (hl),a			;403c
	ld l,c			;403d
	ld (hl),e			;403e
	ld l,e			;403f
	ld h,c			;4040
	jr nz,$+112		;4041
	ld h,c			;4043
	ld (hl),l			;4044
	ld h,e			;4045
	ld a,d			;4046
	ld a,c			;4047
	ld h,e			;4048
	ld l,c			;4049
	ld h,l			;404a
	ld l,h			;404b
	ld (hl),e			;404c
	ld l,e			;404d
	ld l,c			;404e
	ld h,l			;404f
	ld h,a			;4050
	ld l,a			;4051
	inc h			;4052
	ld a,(bc)			;4053
	dec c			;4054
	dec de			;4055
	ld d,b			;4056
	ld b,d			;4057
	ld a,h			;4058
	ld h,b			;4059
	ld h,h			;405a
	jr nz,$+121		;405b
	jr nz,$+118		;405d
	ld (hl),d			;405f
	ld h,c			;4060
	ld l,(hl)			;4061
	ld (hl),e			;4062
	ld l,l			;4063
	ld l,c			;4064
	ld (hl),e			;4065
	ld l,d			;4066
	ld l,c			;4067
	jr nz,$+124		;4068
	ld h,l			;406a
	jr nz,$+117		;406b
	ld (hl),h			;406d
	ld h,c			;406e
	ld l,(hl)			;406f
	ld l,a			;4070
	ld (hl),a			;4071
	ld l,c			;4072
	ld (hl),e			;4073
	ld l,e			;4074
	ld l,c			;4075
	ld h,l			;4076
	ld l,l			;4077
	jr nz,$+112		;4078
	ld h,c			;407a
	ld (hl),l			;407b
	ld h,e			;407c
	ld a,d			;407d
	ld a,c			;407e
	ld h,e			;407f
	ld l,c			;4080
	ld h,l			;4081
	ld l,h			;4082
	ld (hl),e			;4083
	ld l,e			;4084
	ld l,c			;4085
	ld l,l			;4086
	dec de			;4087
	ld c,a			;4088
	inc h			;4089
	dec de			;408a
	ld d,b			;408b
	jr nz,$+34		;408c
	ld c,h			;408e
	ld l,c			;408f
	ld l,(hl)			;4090
	ld l,c			;4091
	ld h,c			;4092
	jr nz,$+124		;4093
	ld h,c			;4095
	ld l,d			;4096
	ld b,b			;4097
	ld (hl),h			;4098
	ld h,c			;4099
	jr nz,$+35		;409a
	ld hl,01b21h		;409c
	ld c,a			;409f
	inc h			;40a0
	inc sp			;40a1
	inc sp			;40a2
	call 037dah		;40a3
	ld l,c			;40a6
	ld h,l			;40a7
	ld a,(hl)			;40a8
	jr nz,$+38		;40a9
	xor a			;40ab
	ld (0fb7eh),a		;40ac
	ld hl,0ffadh		;40af
	res 1,(hl)		;40b2
	call 041beh		;40b4
	ld hl,01f40h		;40b7
	call 0473ah		;40ba
	ld hl,0ffadh		;40bd
	bit 4,(hl)		;40c0
	res 4,(hl)		;40c2
	jr z,$+11		;40c4
	ld de,03f8ah		;40c6
	call 044f3h		;40c9
	jp 04034h		;40cc
	ld hl,0ffadh		;40cf
	bit 2,(hl)		;40d2
	res 2,(hl)		;40d4
	jr z,$+11		;40d6
	ld de,03f1fh		;40d8
	call 044f3h		;40db
	jp 04031h		;40de
	call 032c4h		;40e1
	call 045e0h		;40e4
	push de			;40e7
	ld h,d			;40e8
	ld l,e			;40e9
	call 0379ah		;40ea
	inc hl			;40ed
	call 03832h		;40ee
	call 03769h		;40f1
	pop de			;40f4
	call 033fah		;40f5
	call 0403ch		;40f8
	call 037dah		;40fb
	jr nz,$+117		;40fe
	ld l,e			;4100
	ld l,a			;4101
	ld (hl),b			;4102
	ld l,c			;4103
	ld l,a			;4104
	ld (hl),a			;4105
	ld h,c			;4106
	ld l,(hl)			;4107
	ld a,c			;4108
	inc h			;4109
	call 03314h		;410a
	jr c,$-41		;410d
	ld hl,01f40h		;410f
	call 0473ah		;4112
	call 04209h		;4115
	ld hl,0ffaeh		;4118
	set 1,(hl)		;411b
	call 041eeh		;411d
	ld hl,0ffadh		;4120
	bit 2,(hl)		;4123
	res 2,(hl)		;4125
	jr z,$+13		;4127
	ld de,03f53h		;4129
	call 044f3h		;412c
	jr $+5		;412f
	call 04209h		;4131
	out (004h),a		;4134
	call 03748h		;4136
	jp 02690h		;4139
	call 0425ch		;413c
	call 0404ch		;413f
	call 0406ch		;4142
	call 040dch		;4145
	call 0427eh		;4148
	ret			;414b
	ld hl,0fb7fh		;414c
	ld a,016h		;414f
	ld (hl),a			;4151
	inc hl			;4152
	ld de,0ff83h		;4153
	ex de,hl			;4156
	ld bc,0000bh		;4157
	ldir		;415a
	ld hl,0000dh		;415c
	ld (0ffa8h),hl		;415f
	call 0422bh		;4162
	ld hl,059d8h		;4165
	call 0473ah		;4168
	ret			;416b
	ld a,015h		;416c
	ld (0fb7fh),a		;416e
	ld c,010h		;4171
	ld hl,0fb80h		;4173
	ld (0ffd7h),hl		;4176
	ld b,008h		;4179
	ld (0ffd9h),bc		;417b
	ld de,(0ffd7h)		;417f
	call 033e5h		;4183
	ld de,0ff82h		;4186
	ld c,014h		;4189
	call 00005h		;418b
	or a			;418e
	jr nz,$+22		;418f
	ld hl,(0ffd7h)		;4191
	ld de,00080h		;4194
	add hl,de			;4197
	ld (0ffd7h),hl		;4198
	ld bc,(0ffd9h)		;419b
	djnz $-36		;419f
	ld (0ffd9h),bc		;41a1
	call 040afh		;41a5
	ld a,(0ffdah)		;41a8
	or a			;41ab
	jr z,$-57		;41ac
	ret			;41ae
	ld a,008h		;41af
	ld bc,(0ffd9h)		;41b1
	sub b			;41b5
	ret z			;41b6
	ld h,a			;41b7
	ld l,000h		;41b8
	srl h		;41ba
	rr l		;41bc
	ld de,00002h		;41be
	add hl,de			;41c1
	ld (0ffa8h),hl		;41c2
	call 0422bh		;41c5
	ld bc,(0ffd9h)		;41c8
	dec c			;41cc
	jr nz,$+10		;41cd
	ld c,010h		;41cf
	ld hl,059d8h		;41d1
	call 0473ah		;41d4
	ld (0ffd9h),bc		;41d7
	ret			;41db
	ld a,010h		;41dc
	ld (0fb7fh),a		;41de
	ld hl,00002h		;41e1
	ld (0ffa8h),hl		;41e4
	call 0422bh		;41e7
	ret			;41ea
	in a,(084h)		;41eb
	ld b,a			;41ed
	in a,(084h)		;41ee
	or b			;41f0
	ret			;41f1
	ld hl,00bb8h		;41f2
	call 04251h		;41f5
	in a,(098h)		;41f8
	and 002h		;41fa
	jr nz,$+49		;41fc
	ld hl,0ffaeh		;41fe
	bit 6,(hl)		;4201
	jr nz,$+32		;4203
	set 6,(hl)		;4205
	call 037dah		;4207
	jr nz,$+34		;420a
	dec de			;420c
	ld d,e			;420d
	jr nz,$+114		;420e
	ld (hl),d			;4210
	ld l,a			;4211
	ld (hl),e			;4212
	ld a,d			;4213
	ld b,b			;4214
	jr nz,$+101		;4215
	ld a,d			;4217
	ld h,l			;4218
	ld l,e			;4219
	ld h,c			;421a
	ld a,(hl)			;421b
	jr nz,$+48		;421c
	ld l,02eh		;421e
	dec de			;4220
	ld d,h			;4221
	inc h			;4222
	call 040ebh		;4223
	jr nz,$-46		;4226
	call 041a8h		;4228
	scf			;422b
	ret			;422c
	out (005h),a		;422d
	ld c,004h		;422f
	ld a,(0fb7dh)		;4231
	dec a			;4234
	cp 0ffh		;4235
	jr z,$+31		;4237
	ld e,a			;4239
	srl a		;423a
	srl a		;423c
	or a			;423e
	jr z,$+6		;423f
	ld a,c			;4241
	or 001h		;4242
	ld c,a			;4244
	ld a,e			;4245
	and 003h		;4246
	ld d,010h		;4248
	jr z,$+7		;424a
	ld b,a			;424c
	rlc d		;424d
	djnz $-2		;424f
	ld a,c			;4251
	or d			;4252
	ld c,a			;4253
	jr $+4		;4254
	ld c,00eh		;4256
	ld a,(0fb7eh)		;4258
	push af			;425b
	ld hl,0fb7eh		;425c
	ld (hl),c			;425f
	ld de,0fb7fh		;4260
	ld bc,000feh		;4263
	ldir		;4266
	ld a,005h		;4268
	out (083h),a		;426a
	ld a,0e1h		;426c
	out (083h),a		;426e
	ld a,005h		;4270
	out (083h),a		;4272
	ld a,061h		;4274
	out (083h),a		;4276
	ld hl,000ffh		;4278
	ld (0ffa8h),hl		;427b
	call 0425ch		;427e
	call 0423eh		;4281
	call 0427eh		;4284
	ld a,010h		;4287
	out (083h),a		;4289
	in a,(083h)		;428b
	bit 5,a		;428d
	jr z,$+10		;428f
	pop af			;4291
	ld (0fb7eh),a		;4292
	call 041a8h		;4295
	ret			;4298
	pop af			;4299
	ld (0fb7eh),a		;429a
	out (004h),a		;429d
	call 04688h		;429f
	call 0473ah		;42a2
	jp 040f8h		;42a5
	ld hl,0ffaeh		;42a8
	bit 6,(hl)		;42ab
	res 6,(hl)		;42ad
	ret z			;42af
	ld b,014h		;42b0
	push bc			;42b2
	call 037dah		;42b3
	ex af,af'			;42b6
	jr nz,$+10		;42b7
	inc h			;42b9
	pop bc			;42ba
	djnz $-9		;42bb
	ret			;42bd
	call 040f2h		;42be
	jr nc,$+8		;42c1
	ld hl,0ffadh		;42c3
	set 4,(hl)		;42c6
	ret			;42c8
	ld a,006h		;42c9
	ld hl,0ffaeh		;42cb
	bit 7,(hl)		;42ce
	res 7,(hl)		;42d0
	jr z,$+4		;42d2
	ld a,033h		;42d4
	ld (0fb7fh),a		;42d6
	ld a,(0fb7dh)		;42d9
	ld (0fb80h),a		;42dc
	ld hl,00003h		;42df
	ld (0ffa8h),hl		;42e2
	call 0425ch		;42e5
	call 0423eh		;42e8
	call 0427eh		;42eb
	ld hl,00258h		;42ee
	call 04251h		;42f1
	call 040ebh		;42f4
	jr nz,$+8		;42f7
	ld hl,0ffadh		;42f9
	set 2,(hl)		;42fc
	ret			;42fe
	ld hl,0ffadh		;42ff
	bit 1,(hl)		;4302
	jr z,$-16		;4304
	res 1,(hl)		;4306
	ret			;4308
	ld a,007h		;4309
	ld (0fb7fh),a		;430b
	ld hl,00002h		;430e
	ld (0ffa8h),hl		;4311
	call 0425ch		;4314
	call 0423eh		;4317
	call 0427eh		;431a
	ret			;431d
	ld a,031h		;431e
	out (087h),a		;4320
	ld a,001h		;4322
	out (084h),a		;4324
	ld a,000h		;4326
	out (084h),a		;4328
	ret			;432a
	call 0438bh		;432b
	ld a,(0ffaah)		;432e
	bit 0,a		;4331
	jr nz,$-5		;4333
	di			;4335
	ld hl,01b58h		;4336
	call 0473ah		;4339
	ei			;433c
	ret			;433d
	call 0438bh		;433e
	ld a,(0ffaah)		;4341
	bit 0,a		;4344
	jr nz,$-5		;4346
	di			;4348
	ld hl,01388h		;4349
	call 0473ah		;434c
	ei			;434f
	ret			;4350
	ld a,031h		;4351
	out (087h),a		;4353
	ld a,l			;4355
	out (084h),a		;4356
	ld a,h			;4358
	out (084h),a		;4359
	ret			;435b
	di			;435c
	xor a			;435d
	ld (0ffaah),a		;435e
	ld a,003h		;4361
	out (083h),a		;4363
	ld a,0cch		;4365
	out (083h),a		;4367
	ld a,005h		;4369
	out (083h),a		;436b
	ld a,063h		;436d
	out (083h),a		;436f
	ld a,005h		;4371
	out (083h),a		;4373
	ld a,06bh		;4375
	out (083h),a		;4377
	ld a,010h		;4379
	out (083h),a		;437b
	ret			;437d
	di			;437e
	ld a,005h		;437f
	out (083h),a		;4381
	ld a,063h		;4383
	out (083h),a		;4385
	ld a,005h		;4387
	out (083h),a		;4389
	ld a,061h		;438b
	out (083h),a		;438d
	ld a,003h		;438f
	out (083h),a		;4391
	ld a,0cdh		;4393
	out (083h),a		;4395
	ld b,0ffh		;4397
	djnz $+0		;4399
	ld a,010h		;439b
	out (083h),a		;439d
	ei			;439f
	ret			;43a0
	ld de,08000h		;43a1
	ld h,01eh		;43a4
	call 04310h		;43a6
	jp c,03cd5h		;43a9
	ld a,l			;43ac
	or a			;43ad
	jr z,$+96		;43ae
	ld h,000h		;43b0
	ld de,08000h		;43b2
	add hl,de			;43b5
	ld (hl),000h		;43b6
	ex de,hl			;43b8
	ld de,08100h		;43b9
	ld b,008h		;43bc
	ld a,(hl)			;43be
	cp 02eh		;43bf
	jr z,$+26		;43c1
	or a			;43c3
	jr z,$+24		;43c4
	cp 02ah		;43c6
	jr z,$+70		;43c8
	cp 03fh		;43ca
	jr z,$+66		;43cc
	ld (de),a			;43ce
	inc hl			;43cf
	inc de			;43d0
	dec b			;43d1
	ld a,b			;43d2
	inc a			;43d3
	jr z,$+58		;43d4
	jr $-24		;43d6
	inc hl			;43d8
	jr $+13		;43d9
	inc hl			;43db
	ld a,b			;43dc
	or a			;43dd
	jr z,$+8		;43de
	ld a,020h		;43e0
	ld (de),a			;43e2
	inc de			;43e3
	djnz $-2		;43e4
	ld b,003h		;43e6
	ld a,(hl)			;43e8
	and a			;43e9
	jr z,$+24		;43ea
	cp 02eh		;43ec
	jr z,$+32		;43ee
	cp 02ah		;43f0
	jr z,$+28		;43f2
	cp 03fh		;43f4
	jr z,$+24		;43f6
	ld (de),a			;43f8
	inc hl			;43f9
	inc de			;43fa
	dec b			;43fb
	ld a,b			;43fc
	inc a			;43fd
	jr z,$+16		;43fe
	jr $-24		;4400
	inc b			;4402
	dec b			;4403
	jr z,$+8		;4404
	ld a,020h		;4406
	ld (de),a			;4408
	inc de			;4409
	djnz $-2		;440a
	or a			;440c
	ret			;440d
	scf			;440e
	ret			;440f
	ld l,000h		;4410
	call 04351h		;4412
	cp 008h		;4415
	jr z,$+38		;4417
	cp 07fh		;4419
	jr z,$+34		;441b
	cp 00dh		;441d
	ret z			;441f
	cp 01bh		;4420
	jr z,$+45		;4422
	cp 020h		;4424
	jr c,$-20		;4426
	cp 061h		;4428
	jr c,$+8		;442a
	cp 07bh		;442c
	jr nc,$+4		;442e
	res 5,a		;4430
	ld (de),a			;4432
	call 04365h		;4433
	inc de			;4436
	inc l			;4437
	dec h			;4438
	jr z,$+4		;4439
	jr $-41		;443b
	ld a,l			;443d
	or a			;443e
	jr z,$-45		;443f
	exx			;4441
	call 037dah		;4442
	ex af,af'			;4445
	jr nz,$+10		;4446
	inc h			;4448
	exx			;4449
	dec l			;444a
	inc h			;444b
	dec de			;444c
	jr $-59		;444d
	scf			;444f
	ret			;4450
	exx			;4451
	ld c,006h		;4452
	ld e,0feh		;4454
	call 00005h		;4456
	or a			;4459
	jr z,$-8		;445a
	ld c,006h		;445c
	ld e,0ffh		;445e
	call 00005h		;4460
	exx			;4463
	ret			;4464
	ld c,a			;4465
	call 0436ah		;4466
	ret			;4469
	call 04375h		;446a
	jr nz,$+4		;446d
	jr $-5		;446f
	ld a,c			;4471
	out (080h),a		;4472
	ret			;4474
	ld a,001h		;4475
	out (082h),a		;4477
	in a,(082h)		;4479
	bit 0,a		;447b
	ret			;447d
	call 04386h		;447e
	jr z,$-3		;4481
	in a,(080h)		;4483
	ret			;4485
	in a,(082h)		;4486
	bit 0,a		;4488
	ret			;448a
	ld a,(0ffaah)		;448b
	set 0,a		;448e
	ld (0ffaah),a		;4490
	ld bc,0fb7eh		;4493
	ld de,(0ffa8h)		;4496
	ld hl,0ffaah		;449a
	ld a,080h		;449d
	out (083h),a		;449f
	call 0f3f8h		;44a1
	ld a,0c0h		;44a4
	out (083h),a		;44a6
	ret			;44a8
	call 043beh		;44a9
	ld c,(hl)			;44ac
	bit 7,c		;44ad
	jr nz,$+9		;44af
	call 0436ah		;44b1
	inc hl			;44b4
	inc b			;44b5
	jr $-13		;44b6
	ld c,020h		;44b8
	call 0436ah		;44ba
	ret			;44bd
	ld c,01bh		;44be
	call 0436ah		;44c0
	ld c,058h		;44c3
	call 0436ah		;44c5
	ld c,b			;44c8
	jp 0436ah		;44c9
	call 037dah		;44cc
	jr nz,$+34		;44cf
	jr nz,$+51		;44d1
	jr nz,$+47		;44d3
	ld a,020h		;44d5
	ld (hl),b			;44d7
	ld l,h			;44d8
	ld l,c			;44d9
	ld l,e			;44da
	ld l,c			;44db
	jr nz,$+113		;44dc
	ld h,a			;44de
	ld a,e			;44df
	ld l,h			;44e0
	ld l,(hl)			;44e1
	ld l,a			;44e2
	ld h,h			;44e3
	ld l,a			;44e4
	ld (hl),e			;44e5
	ld (hl),h			;44e6
	ld b,b			;44e7
	ld (hl),b			;44e8
	ld l,(hl)			;44e9
	ld h,l			;44ea
	inc h			;44eb
	ld c,01bh		;44ec
	call 0436ah		;44ee
	ld c,042h		;44f1
	call 0436ah		;44f3
	ld b,019h		;44f6
	ld c,01bh		;44f8
	call 0436ah		;44fa
	ld c,044h		;44fd
	call 0436ah		;44ff
	djnz $-10		;4502
	call 037dah		;4504
	ld (02d20h),a		;4507
	ld a,020h		;450a
	ld (hl),b			;450c
	ld l,h			;450d
	ld l,c			;450e
	ld l,e			;450f
	ld l,c			;4510
	jr nz,$+121		;4511
	ld a,h			;4513
	ld h,c			;4514
	ld (hl),e			;4515
	ld l,(hl)			;4516
	ld h,l			;4517
	jr nz,$+34		;4518
	jr nz,$+34		;451a
	jr nz,$+34		;451c
	jr nz,$+34		;451e
	jr nz,$+34		;4520
	inc h			;4522
	ld e,000h		;4523
	call 036feh		;4525
	cp 01bh		;4528
	jp z,03671h		;452a
	ld e,a			;452d
	call 0376bh		;452e
	sub 031h		;4531
	jr z,$+28		;4533
	dec a			;4535
	ld a,(0fb7dh)		;4536
	ld e,a			;4539
	ret z			;453a
	call 037dah		;453b
	jp p,07c7ah		;453e
	ld a,c			;4541
	jr nz,$+118		;4542
	ld a,c			;4544
	ld (hl),b			;4545
	jr nz,$+114		;4546
	ld l,h			;4548
	ld l,c			;4549
	ld l,e			;454a
	ld (hl),l			;454b
	inc h			;454c
	scf			;454d
	ret			;454e
	ld e,000h		;454f
	ret			;4551
	ld a,(de)			;4552
	add a,b			;4553
	add a,b			;4554
	ei			;4555
	halt			;4556
	jr $-1		;4557
	di			;4559
	ld hl,0ffaeh		;455a
	bit 0,(hl)		;455d
	call nz,04599h		;455f
	ld hl,0ffaah		;4562
	bit 6,(hl)		;4565
	jr nz,$+32		;4567
	bit 5,(hl)		;4569
	jr nz,$+28		;456b
	ld a,(0fb7fh)		;456d
	ld hl,044bah		;4570
	ld b,014h		;4573
	cp (hl)			;4575
	jr z,$+49		;4576
	inc hl			;4578
	inc hl			;4579
	inc hl			;457a
	dec b			;457b
	jr nz,$-7		;457c
	ld de,04491h		;457e
	call 044f3h		;4581
	jp 0f4bfh		;4584
	ld a,(0ffb0h)		;4587
	bit 2,a		;458a
	jp nz,0f4bfh		;458c
	jr $-58		;458f
	ld c,(hl)			;4591
	ld c,c			;4592
	ld b,l			;4593
	jr nz,$+79		;4594
	ld b,c			;4596
	jr nz,$+86		;4597
	ld b,c			;4599
	ld c,e			;459a
	ld c,c			;459b
	ld b,l			;459c
	ld c,d			;459d
	jr nz,$+77		;459e
	ld c,a			;45a0
	ld c,l			;45a1
	ld b,l			;45a2
	ld c,(hl)			;45a3
	ld b,h			;45a4
	ld e,c			;45a5
	inc h			;45a6
	inc hl			;45a7
	ld e,(hl)			;45a8
	inc hl			;45a9
	ld d,(hl)			;45aa
	ex de,hl			;45ab
	call 044b9h		;45ac
	ld a,(0ffb0h)		;45af
	bit 2,a		;45b2
	jr nz,$-95		;45b4
	jp 0f4bfh		;45b6
	jp (hl)			;45b9
	ld d,0f2h		;45ba
	ld b,a			;45bc
	dec d			;45bd
	ccf			;45be
	ld c,b			;45bf
	djnz $-98		;45c0
	ld c,b			;45c2
	ld bc,048a5h		;45c3
	inc b			;45c6
	xor (hl)			;45c7
	ld c,b			;45c8
	ld (bc),a			;45c9
	or e			;45ca
	ld c,b			;45cb
	inc bc			;45cc
	cp b			;45cd
	ld c,b			;45ce
	dec b			;45cf
	jp po,00648h		;45d0
	sub (hl)			;45d3
	ld b,(hl)			;45d4
	rlca			;45d5
	ld b,b			;45d6
	ld b,a			;45d7
	ex af,af'			;45d8
	ret c			;45d9
	ld b,a			;45da
	add hl,bc			;45db
	ld (bc),a			;45dc
	ld b,(hl)			;45dd
	jr nc,$+1		;45de
	ld b,l			;45e0
	ld sp,045feh		;45e1
	ld (045fdh),a		;45e4
	inc (hl)			;45e7
	call m,03545h		;45e8
	in c,(c)		;45eb
	ld (hl),0eeh		;45ed
	ld c,b			;45ef
	scf			;45f0
	rst 28h			;45f1
	ld c,b			;45f2
	ld a,(de)			;45f3
	cp 024h		;45f4
	ret z			;45f6
	ld c,a			;45f7
	call 0436ah		;45f8
	inc de			;45fb
	jr $-9		;45fc
	ld c,01bh		;45fe
	call 0436ah		;4600
	ld c,028h		;4603
	call 0436ah		;4605
	ex (sp),hl			;4608
	ld a,(hl)			;4609
	inc hl			;460a
	cp 024h		;460b
	jr z,$+10		;460d
	add a,020h		;460f
	ld c,a			;4611
	call 0436ah		;4612
	jr $-12		;4615
	ex (sp),hl			;4617
	ld c,01ah		;4618
	call 0436ah		;461a
	ret			;461d
	ld c,01bh		;461e
	call 0436ah		;4620
	ld c,029h		;4623
	jp 0436ah		;4625
	ex (sp),hl			;4628
	ld d,(hl)			;4629
	inc hl			;462a
	ld b,(hl)			;462b
	inc hl			;462c
	ld e,(hl)			;462d
	inc hl			;462e
	ld c,(hl)			;462f
	inc hl			;4630
	ex (sp),hl			;4631
	ld hl,00000h		;4632
	add hl,bc			;4635
	ld c,082h		;4636
	call 0436ah		;4638
	ld a,l			;463b
	sub h			;463c
	dec a			;463d
	ld b,a			;463e
	ld h,a			;463f
	ld c,08bh		;4640
	call 0436ah		;4642
	djnz $-5		;4645
	ld c,083h		;4647
	call 0436ah		;4649
	ld a,e			;464c
	sub d			;464d
	dec a			;464e
	dec a			;464f
	ld b,a			;4650
	ld l,a			;4651
	ld de,0458fh		;4652
	call 044f3h		;4655
	djnz $-6		;4658
	ld c,081h		;465a
	call 0436ah		;465c
	ld b,h			;465f
	ld c,08bh		;4660
	call 0436ah		;4662
	djnz $-5		;4665
	ld c,084h		;4667
	call 0436ah		;4669
	ld de,04595h		;466c
	call 044f3h		;466f
	ld a,h			;4672
	inc a			;4673
	add a,020h		;4674
	ld c,a			;4676
	call 0436ah		;4677
	ld b,l			;467a
	ld de,0458fh		;467b
	call 044f3h		;467e
	djnz $-6		;4681
	ld de,04595h		;4683
	call 044f3h		;4686
	ld c,021h		;4689
	call 0436ah		;468b
	ret			;468e
	adc a,d			;468f
	dec de			;4690
	ld b,d			;4691
	dec de			;4692
	ld b,h			;4693
	inc h			;4694
	dec de			;4695
	dec a			;4696
	ld hl,0cb24h		;4697
	add a,(hl)			;469a
	ld hl,09664h		;469b
	call 0473ah		;469e
	ld a,005h		;46a1
	out (082h),a		;46a3
	ld a,0e8h		;46a5
	out (082h),a		;46a7
	ld hl,000c8h		;46a9
	call 0473ah		;46ac
	ld a,(0f600h)		;46af
	or a			;46b2
	jr z,$+23		;46b3
	ld b,a			;46b5
	ld hl,(0f602h)		;46b6
	ld c,01bh		;46b9
	call 0436ah		;46bb
	ld c,026h		;46be
	call 0436ah		;46c0
	ld c,l			;46c3
	call 0436ah		;46c4
	ld l,h			;46c7
	djnz $-15		;46c8
	in a,(082h)		;46ca
	rra			;46cc
	ret nc			;46cd
	ld c,01bh		;46ce
	call 0436ah		;46d0
	ld c,026h		;46d3
	call 0436ah		;46d5
	in a,(080h)		;46d8
	ld c,a			;46da
	call 0436ah		;46db
	jr $-20		;46de
	ld hl,0ff82h		;46e0
	push hl			;46e3
	ld b,024h		;46e4
	ld (hl),000h		;46e6
	inc hl			;46e8
	djnz $-3		;46e9
	ld hl,0ff82h		;46eb
	ld b,00ch		;46ee
	xor a			;46f0
	inc a			;46f1
	and 07fh		;46f2
	ld (hl),a			;46f4
	inc hl			;46f5
	inc de			;46f6
	ld a,(de)			;46f7
	djnz $-6		;46f8
	pop de			;46fa
	ret			;46fb
	ret			;46fc
	ret			;46fd
	ret			;46fe
	out (003h),a		;46ff
	ret			;4701
	out (005h),a		;4702
	call 044feh		;4704
	ld (bc),a			;4707
	nop			;4708
	rlca			;4709
	ld c,a			;470a
	inc h			;470b
	call 04528h		;470c
	ld (bc),a			;470f
	nop			;4710
	rlca			;4711
	ld c,a			;4712
	ld de,04683h		;4713
	call 044f3h		;4716
	ld de,04670h		;4719
	call 044f3h		;471c
	ld hl,0fb80h		;471f
	ld c,(hl)			;4722
	call 0436ah		;4723
	ld de,0467fh		;4726
	call 044f3h		;4729
	inc hl			;472c
	ld e,(hl)			;472d
	ld d,000h		;472e
	add hl,de			;4730
	inc hl			;4731
	ld (hl),024h		;4732
	ld de,0fb82h		;4734
	call 044f3h		;4737
	call 044feh		;473a
	dec b			;473d
	add hl,de			;473e
	ex af,af'			;473f
	jr c,$+38		;4740
	call 04528h		;4742
	dec b			;4745
	add hl,de			;4746
	ex af,af'			;4747
	jr c,$+19		;4748
	or a			;474a
	ld b,a			;474b
	call 044f3h		;474c
	ld c,007h		;474f
	call 0436ah		;4751
	ld hl,00a28h		;4754
	call 04251h		;4757
	call 04386h		;475a
	jr nz,$+9		;475d
	call 040ebh		;475f
	jr nz,$-8		;4762
	jr $+5		;4764
	call 0437eh		;4766
	call 0451eh		;4769
	call 0451eh		;476c
	ret			;476f
	ld d,e			;4770
	ld d,h			;4771
	ld b,c			;4772
	ld c,(hl)			;4773
	ld c,a			;4774
	ld d,a			;4775
	ld c,c			;4776
	ld d,e			;4777
	ld c,e			;4778
	ld c,a			;4779
	jr nz,$+80		;477a
	ld d,d			;477c
	jr nz,$+38		;477d
	jr nz,$+60		;477f
	jr nz,$+38		;4781
	dec de			;4783
	dec a			;4784
	ld (02422h),hl		;4785
	ld hl,00000h		;4788
	ld de,01770h		;478b
	ld a,(0fb7dh)		;478e
	ld b,a			;4791
	add hl,de			;4792
	djnz $-1		;4793
	ret			;4795
	out (005h),a		;4796
	ld hl,0ffb0h		;4798
	bit 0,(hl)		;479b
	jr z,$+22		;479d
	set 1,(hl)		;479f
	ret			;47a1
	ld (0ffd1h),sp		;47a2
	ld sp,0ffd1h		;47a6
	push af			;47a9
	push bc			;47aa
	push de			;47ab
	push hl			;47ac
	push ix		;47ad
	ld hl,04455h		;47af
	push hl			;47b2
	ld hl,(0f2afh)		;47b3
	ld (0ffd5h),hl		;47b6
	call 044feh		;47b9
	nop			;47bc
	inc e			;47bd
	inc bc			;47be
	inc sp			;47bf
	inc h			;47c0
	call 04528h		;47c1
	nop			;47c4
	inc e			;47c5
	inc bc			;47c6
	inc sp			;47c7
	ld de,0470ah		;47c8
	call 044f3h		;47cb
	call 044feh		;47ce
	ld (bc),a			;47d1
	dec b			;47d2
	ld d,014h		;47d3
	inc h			;47d5
	call 04528h		;47d6
	ld (bc),a			;47d9
	dec b			;47da
	ld d,014h		;47db
	call 044feh		;47dd
	inc bc			;47e0
	rlca			;47e1
	inc d			;47e2
	inc de			;47e3
	inc h			;47e4
	ld hl,00000h		;47e5
	ld de,0f700h		;47e8
	ld bc,00100h		;47eb
	call 0f347h		;47ee
	call 04688h		;47f1
	call 0473ah		;47f4
	ld e,000h		;47f7
	call 0471bh		;47f9
	ld hl,0ffb0h		;47fc
	set 2,(hl)		;47ff
	res 1,(hl)		;4801
	ld hl,0f46fh		;4803
	ld (0f3f4h),hl		;4806
	ret			;4809
	jr nz,$+34		;480a
	jr nz,$+34		;480c
	jr nz,$+34		;480e
	ld d,h			;4810
	ld d,d			;4811
	ld b,c			;4812
	ld c,(hl)			;4813
	ld d,e			;4814
	ld c,l			;4815
	ld c,c			;4816
	ld d,e			;4817
	ld c,d			;4818
	ld b,c			;4819
	inc h			;481a
	ld hl,0fb7eh		;481b
	ld (hl),000h		;481e
	inc hl			;4820
	ld (hl),008h		;4821
	inc hl			;4823
	ld a,(0fb7dh)		;4824
	ld (hl),a			;4827
	inc hl			;4828
	ld (hl),e			;4829
	ld hl,00004h		;482a
	ld (0ffa8h),hl		;482d
	call 0425ch		;4830
	call 0423eh		;4833
	call 0427eh		;4836
	ret			;4839
	dec hl			;483a
	ld a,h			;483b
	or l			;483c
	jr nz,$-3		;483d
	ret			;483f
	call 04688h		;4840
	call 0473ah		;4843
	ld a,(0ffaah)		;4846
	and 0e0h		;4849
	ld e,000h		;484b
	jr z,$+4		;484d
	ld e,0ffh		;484f
	call 0471bh		;4851
	xor a			;4854
	ld (0ffaah),a		;4855
	ld hl,0ffb0h		;4858
	res 2,(hl)		;485b
	ld hl,0ffadh		;485d
	res 3,(hl)		;4860
	ld hl,0f427h		;4862
	ld (0f3f4h),hl		;4865
	ld hl,(0ffd5h)		;4868
	ld (0f2afh),hl		;486b
	ld (0f014h),hl		;486e
	call 044feh		;4871
	inc d			;4874
	rrca			;4875
	rla			;4876
	ld l,024h		;4877
	call 04528h		;4879
	inc d			;487c
	rrca			;487d
	rla			;487e
	ld l,011h		;487f
	or a			;4881
	ld b,a			;4882
	call 044f3h		;4883
	ld c,007h		;4886
	call 0436ah		;4888
	ld hl,00a28h		;488b
	call 04251h		;488e
	call 04386h		;4891
	jr nz,$+9		;4894
	call 040ebh		;4896
	jr nz,$-8		;4899
	jr $+5		;489b
	call 0437eh		;489d
	call 0451eh		;48a0
	call 0451eh		;48a3
	call 0451eh		;48a6
	call 0451eh		;48a9
	ld hl,0f700h		;48ac
	ld de,00000h		;48af
	ld bc,00100h		;48b2
	ld b,a			;48b5
	ret			;48b6
	dec de			;48b7
	ld d,b			;48b8
	jr nz,$+89		;48b9
	ld h,e			;48bb
	ld l,c			;48bc
	ld e,(hl)			;48bd
	ld l,(hl)			;48be
	ld l,c			;48bf
	ld l,d			;48c0
	jr nz,$+102		;48c1
	ld l,a			;48c3
	ld (hl),a			;48c4
	ld l,a			;48c5
	ld l,h			;48c6
	ld l,(hl)			;48c7
	ld a,c			;48c8
	jr nz,$+109		;48c9
	ld l,h			;48cb
	ld h,c			;48cc
	ld (hl),a			;48cd
	ld l,c			;48ce
	ld (hl),e			;48cf
	ld a,d			;48d0
	jr nz,$+48		;48d1
	ld l,02eh		;48d3
	dec de			;48d5
	ld c,a			;48d6
	inc h			;48d7
	ld hl,0ffadh		;48d8
	set 1,(hl)		;48db
	ld hl,0fb81h		;48dd
	ld a,(hl)			;48e0
	or a			;48e1
	jr nz,$+9		;48e2
	dec hl			;48e4
	ld a,(hl)			;48e5
	ld hl,0ffafh		;48e6
	ld (hl),a			;48e9
	ret			;48ea
	ld hl,0ffadh		;48eb
	set 2,(hl)		;48ee
	jr $-6		;48f0
	ld hl,0ff82h		;48f2
	ld de,0ff83h		;48f5
	ld bc,00023h		;48f8
	ld (hl),000h		;48fb
	ldir		;48fd
	ld a,001h		;48ff
	ld (0ff82h),a		;4901
	ld hl,0fb80h		;4904
	ld de,0ff83h		;4907
	ld bc,0000bh		;490a
	ldir		;490d
	ld c,013h		;490f
	ld de,0ff82h		;4911
	call 00005h		;4914
	ld de,0ff82h		;4917
	ld c,016h		;491a
	call 00005h		;491c
	ld bc,00003h		;491f
	ld de,0fb8bh		;4922
	ld hl,0fb8ah		;4925
	lddr		;4928
	inc hl			;492a
	ld (hl),02eh		;492b
	ld hl,0fb8ch		;492d
	ld (hl),00dh		;4930
	inc hl			;4932
	ld (hl),00ah		;4933
	inc hl			;4935
	ld (hl),024h		;4936
	ld de,0fb80h		;4938
	call 044f3h		;493b
	ret			;493e
	ld hl,0ffaah		;493f
	bit 7,(hl)		;4942
	jr nz,$+56		;4944
	ld hl,(0ffabh)		;4946
	ld de,0fb80h		;4949
	or a			;494c
	sbc hl,de		;494d
	rl l		;494f
	rl h		;4951
	ld b,h			;4953
	ld hl,0fb80h		;4954
	ld (0ffa6h),hl		;4957
	push bc			;495a
	ld de,(0ffa6h)		;495b
	ld c,01ah		;495f
	call 00005h		;4961
	ld de,0ff82h		;4964
	ld c,015h		;4967
	call 00005h		;4969
	or a			;496c
	jr nz,$+16		;496d
	ld hl,(0ffa6h)		;496f
	ld de,00080h		;4972
	add hl,de			;4975
	ld (0ffa6h),hl		;4976
	pop bc			;4979
	djnz $-32		;497a
	ret			;497c
	pop bc			;497d
	ld hl,0ffaah		;497e
	set 7,(hl)		;4981
	ld de,0488ah		;4983
	call 044f3h		;4986
	ret			;4989
	dec de			;498a
	ld d,e			;498b
	jr nz,$+70		;498c
	ld c,c			;498e
	ld d,e			;498f
	ld c,e			;4990
	jr nz,$+72		;4991
	ld d,l			;4993
	ld c,h			;4994
	ld c,h			;4995
	jr nz,$+29		;4996
	ld d,h			;4998
	ld a,(bc)			;4999
	dec c			;499a
	inc h			;499b
	ld c,010h		;499c
	ld de,0ff82h		;499e
	call 00005h		;49a1
	ret			;49a4
	out (0ffh),a		;49a5
	out (0f9h),a		;49a7
	out (0fah),a		;49a9
	out (0fch),a		;49ab
	ret			;49ad
	out (0f8h),a		;49ae
	out (0feh),a		;49b0
	ret			;49b2
	out (0fah),a		;49b3
	out (0fdh),a		;49b5
	ret			;49b7
	ld hl,048d3h		;49b8
	ld b,032h		;49bb
	call 043a9h		;49bd
	ld b,041h		;49c0
	call 043beh		;49c2
	ld a,(0fb7dh)		;49c5
	add a,030h		;49c8
	ld c,a			;49ca
	call 0436ah		;49cb
	out (0fbh),a		;49ce
	out (0fch),a		;49d0
	ret			;49d2
	ld d,e			;49d3
	ld d,h			;49d4
	ld b,c			;49d5
	ld c,(hl)			;49d6
	ld c,a			;49d7
	ld d,a			;49d8
	ld c,c			;49d9
	ld d,e			;49da
	ld c,e			;49db
	ld c,a			;49dc
	jr nz,$+80		;49dd
	ld d,d			;49df
	jr nz,$-126		;49e0
	ld hl,04452h		;49e2
	ld b,020h		;49e5
	call 043a9h		;49e7
	out (0fah),a		;49ea
	ret			;49ec
	ret			;49ed
	ret			;49ee
	ret			;49ef
	nop			;49f0
	nop			;49f1
	nop			;49f2
	nop			;49f3
	nop			;49f4
	nop			;49f5
	nop			;49f6
	nop			;49f7
	nop			;49f8
	nop			;49f9
	nop			;49fa
	nop			;49fb
	nop			;49fc
	nop			;49fd
	nop			;49fe
	nop			;49ff
	nop			;4a00
	nop			;4a01
	nop			;4a02
	nop			;4a03
	nop			;4a04
	nop			;4a05
	nop			;4a06
	nop			;4a07
	nop			;4a08
	nop			;4a09
	nop			;4a0a
	nop			;4a0b
	nop			;4a0c
	nop			;4a0d
	nop			;4a0e
	nop			;4a0f
	nop			;4a10
	nop			;4a11
	nop			;4a12
	nop			;4a13
	nop			;4a14
	nop			;4a15
	nop			;4a16
	nop			;4a17
	nop			;4a18
	nop			;4a19
	nop			;4a1a
	nop			;4a1b
	nop			;4a1c
	nop			;4a1d
	nop			;4a1e
	nop			;4a1f
	nop			;4a20
	nop			;4a21
	nop			;4a22
	nop			;4a23
	nop			;4a24
	nop			;4a25
	nop			;4a26
	nop			;4a27
	nop			;4a28
	nop			;4a29
	nop			;4a2a
	nop			;4a2b
	nop			;4a2c
	nop			;4a2d
	nop			;4a2e
	nop			;4a2f
	nop			;4a30
	nop			;4a31
	nop			;4a32
	nop			;4a33
	nop			;4a34
	nop			;4a35
	nop			;4a36
	nop			;4a37
	nop			;4a38
	nop			;4a39
	nop			;4a3a
	nop			;4a3b
	nop			;4a3c
	nop			;4a3d
	nop			;4a3e
	nop			;4a3f
	nop			;4a40
	nop			;4a41
	nop			;4a42
	nop			;4a43
	nop			;4a44
	nop			;4a45
	nop			;4a46
	nop			;4a47
	nop			;4a48
	nop			;4a49
	nop			;4a4a
	nop			;4a4b
	nop			;4a4c
	nop			;4a4d
	nop			;4a4e
	nop			;4a4f
	nop			;4a50
	nop			;4a51
	nop			;4a52
	nop			;4a53
	nop			;4a54
	nop			;4a55
	nop			;4a56
	nop			;4a57
	nop			;4a58
	nop			;4a59
	nop			;4a5a
	nop			;4a5b
	nop			;4a5c
	nop			;4a5d
	nop			;4a5e
	nop			;4a5f
	nop			;4a60
	nop			;4a61
	nop			;4a62
	nop			;4a63
	nop			;4a64
	nop			;4a65
	nop			;4a66
	nop			;4a67
	nop			;4a68
	nop			;4a69
	nop			;4a6a
	nop			;4a6b
	nop			;4a6c
	nop			;4a6d
	nop			;4a6e
	nop			;4a6f
	nop			;4a70
	nop			;4a71
	nop			;4a72
	nop			;4a73
	nop			;4a74
	nop			;4a75
	nop			;4a76
	nop			;4a77
	nop			;4a78
	nop			;4a79
	nop			;4a7a
	nop			;4a7b
	nop			;4a7c
	nop			;4a7d
	nop			;4a7e
	nop			;4a7f
	nop			;4a80
	nop			;4a81
	nop			;4a82
	nop			;4a83
	nop			;4a84
	nop			;4a85
	nop			;4a86
	nop			;4a87
	nop			;4a88
	nop			;4a89
	nop			;4a8a
	nop			;4a8b
	nop			;4a8c
	nop			;4a8d
	nop			;4a8e
	nop			;4a8f
	nop			;4a90
	nop			;4a91
	nop			;4a92
	nop			;4a93
	nop			;4a94
	nop			;4a95
	nop			;4a96
	nop			;4a97
	nop			;4a98
	nop			;4a99
	nop			;4a9a
	nop			;4a9b
	nop			;4a9c
	nop			;4a9d
	nop			;4a9e
	nop			;4a9f
	nop			;4aa0
	nop			;4aa1
	nop			;4aa2
	nop			;4aa3
	nop			;4aa4
	nop			;4aa5
	nop			;4aa6
	nop			;4aa7
	nop			;4aa8
	nop			;4aa9
	nop			;4aaa
	nop			;4aab
	nop			;4aac
	nop			;4aad
	nop			;4aae
	nop			;4aaf
	nop			;4ab0
	nop			;4ab1
	nop			;4ab2
	nop			;4ab3
	nop			;4ab4
	nop			;4ab5
	nop			;4ab6
	nop			;4ab7
	nop			;4ab8
	nop			;4ab9
	nop			;4aba
	nop			;4abb
	nop			;4abc
	nop			;4abd
	nop			;4abe
	nop			;4abf
	nop			;4ac0
	nop			;4ac1
	nop			;4ac2
	nop			;4ac3
	nop			;4ac4
	nop			;4ac5
	nop			;4ac6
	nop			;4ac7
	nop			;4ac8
	nop			;4ac9
	nop			;4aca
	nop			;4acb
	nop			;4acc
	nop			;4acd
	nop			;4ace
	nop			;4acf
	nop			;4ad0
	nop			;4ad1
	nop			;4ad2
	nop			;4ad3
	nop			;4ad4
	nop			;4ad5
	nop			;4ad6
	nop			;4ad7
	nop			;4ad8
	nop			;4ad9
	nop			;4ada
	nop			;4adb
	nop			;4adc
	nop			;4add
	nop			;4ade
	nop			;4adf
	nop			;4ae0
	nop			;4ae1
	nop			;4ae2
	nop			;4ae3
	nop			;4ae4
	nop			;4ae5
	nop			;4ae6
	nop			;4ae7
	nop			;4ae8
	nop			;4ae9
	nop			;4aea
	nop			;4aeb
	nop			;4aec
	nop			;4aed
	nop			;4aee
	nop			;4aef
	nop			;4af0
	nop			;4af1
	nop			;4af2
	nop			;4af3
	nop			;4af4
	nop			;4af5
	nop			;4af6
	nop			;4af7
	nop			;4af8
	nop			;4af9
	nop			;4afa
	nop			;4afb
	nop			;4afc
	nop			;4afd
	nop			;4afe
	nop			;4aff
	nop			;4b00
	nop			;4b01
	nop			;4b02
	nop			;4b03
	nop			;4b04
	nop			;4b05
	nop			;4b06
	nop			;4b07
	nop			;4b08
	nop			;4b09
	nop			;4b0a
	nop			;4b0b
	nop			;4b0c
	nop			;4b0d
	nop			;4b0e
	nop			;4b0f
	nop			;4b10
	nop			;4b11
	nop			;4b12
	nop			;4b13
	nop			;4b14
	nop			;4b15
	nop			;4b16
	nop			;4b17
	nop			;4b18
	nop			;4b19
	nop			;4b1a
	nop			;4b1b
	nop			;4b1c
	nop			;4b1d
	nop			;4b1e
	nop			;4b1f
	nop			;4b20
	nop			;4b21
	nop			;4b22
	nop			;4b23
	nop			;4b24
	nop			;4b25
	nop			;4b26
	nop			;4b27
	nop			;4b28
	nop			;4b29
	nop			;4b2a
	nop			;4b2b
	nop			;4b2c
	nop			;4b2d
	nop			;4b2e
	nop			;4b2f
	nop			;4b30
	nop			;4b31
	nop			;4b32
	nop			;4b33
	nop			;4b34
	nop			;4b35
	nop			;4b36
	nop			;4b37
	nop			;4b38
	nop			;4b39
	nop			;4b3a
	nop			;4b3b
	nop			;4b3c
	nop			;4b3d
	nop			;4b3e
	nop			;4b3f
	nop			;4b40
	nop			;4b41
	nop			;4b42
	nop			;4b43
	nop			;4b44
	nop			;4b45
	nop			;4b46
	nop			;4b47
	nop			;4b48
	nop			;4b49
	nop			;4b4a
	nop			;4b4b
	nop			;4b4c
	nop			;4b4d
	nop			;4b4e
	nop			;4b4f
	nop			;4b50
	nop			;4b51
	nop			;4b52
	nop			;4b53
	nop			;4b54
	nop			;4b55
	nop			;4b56
	nop			;4b57
	nop			;4b58
	nop			;4b59
	nop			;4b5a
	nop			;4b5b
	nop			;4b5c
	nop			;4b5d
	nop			;4b5e
	nop			;4b5f
	nop			;4b60
	nop			;4b61
	nop			;4b62
	nop			;4b63
	nop			;4b64
	nop			;4b65
	nop			;4b66
	nop			;4b67
	nop			;4b68
	nop			;4b69
	nop			;4b6a
	nop			;4b6b
	nop			;4b6c
	nop			;4b6d
	nop			;4b6e
	nop			;4b6f
	nop			;4b70
	nop			;4b71
	nop			;4b72
	nop			;4b73
	nop			;4b74
	nop			;4b75
	nop			;4b76
	nop			;4b77
	nop			;4b78
	nop			;4b79
	nop			;4b7a
	nop			;4b7b
	nop			;4b7c
	nop			;4b7d
	nop			;4b7e
	nop			;4b7f
	nop			;4b80
	nop			;4b81
	nop			;4b82
	nop			;4b83
	nop			;4b84
	nop			;4b85
	nop			;4b86
	nop			;4b87
	nop			;4b88
	nop			;4b89
	nop			;4b8a
	nop			;4b8b
	nop			;4b8c
	nop			;4b8d
	nop			;4b8e
	nop			;4b8f
	nop			;4b90
	nop			;4b91
	nop			;4b92
	nop			;4b93
	nop			;4b94
	nop			;4b95
	nop			;4b96
	nop			;4b97
	nop			;4b98
	nop			;4b99
	nop			;4b9a
	nop			;4b9b
	nop			;4b9c
	nop			;4b9d
	nop			;4b9e
	nop			;4b9f
	nop			;4ba0
	nop			;4ba1
	nop			;4ba2
	nop			;4ba3
	nop			;4ba4
	nop			;4ba5
	nop			;4ba6
	nop			;4ba7
	nop			;4ba8
	nop			;4ba9
	nop			;4baa
	nop			;4bab
	nop			;4bac
	nop			;4bad
	nop			;4bae
	nop			;4baf
	nop			;4bb0
	nop			;4bb1
	nop			;4bb2
	nop			;4bb3
	nop			;4bb4
	nop			;4bb5
	nop			;4bb6
	nop			;4bb7
	nop			;4bb8
	nop			;4bb9
	nop			;4bba
	nop			;4bbb
	nop			;4bbc
	nop			;4bbd
	nop			;4bbe
	nop			;4bbf
	nop			;4bc0
	nop			;4bc1
	nop			;4bc2
	nop			;4bc3
	nop			;4bc4
	nop			;4bc5
	nop			;4bc6
	nop			;4bc7
	nop			;4bc8
	nop			;4bc9
	nop			;4bca
	nop			;4bcb
	nop			;4bcc
	nop			;4bcd
	nop			;4bce
	nop			;4bcf
	nop			;4bd0
	nop			;4bd1
	nop			;4bd2
	nop			;4bd3
	nop			;4bd4
	nop			;4bd5
	nop			;4bd6
	nop			;4bd7
	nop			;4bd8
	nop			;4bd9
	nop			;4bda
	nop			;4bdb
	nop			;4bdc
	nop			;4bdd
	nop			;4bde
	nop			;4bdf
	nop			;4be0
	nop			;4be1
	nop			;4be2
	nop			;4be3
	nop			;4be4
	nop			;4be5
	nop			;4be6
	nop			;4be7
	nop			;4be8
	nop			;4be9
	nop			;4bea
	nop			;4beb
	nop			;4bec
	nop			;4bed
	nop			;4bee
	nop			;4bef
	nop			;4bf0
	nop			;4bf1
	nop			;4bf2
	nop			;4bf3
	nop			;4bf4
	nop			;4bf5
	nop			;4bf6
	nop			;4bf7
	nop			;4bf8
	nop			;4bf9
	nop			;4bfa
	nop			;4bfb
	nop			;4bfc
	nop			;4bfd
	nop			;4bfe
	nop			;4bff
	nop			;4c00
	nop			;4c01
	nop			;4c02
	nop			;4c03
	nop			;4c04
	nop			;4c05
	nop			;4c06
	nop			;4c07
	nop			;4c08
	nop			;4c09
	nop			;4c0a
	nop			;4c0b
	nop			;4c0c
	nop			;4c0d
	nop			;4c0e
	nop			;4c0f
	nop			;4c10
	nop			;4c11
	nop			;4c12
	nop			;4c13
	nop			;4c14
	nop			;4c15
	nop			;4c16
	nop			;4c17
	nop			;4c18
	nop			;4c19
	nop			;4c1a
	nop			;4c1b
	nop			;4c1c
	nop			;4c1d
	nop			;4c1e
	nop			;4c1f
	nop			;4c20
	nop			;4c21
	nop			;4c22
	nop			;4c23
	nop			;4c24
	nop			;4c25
	nop			;4c26
	nop			;4c27
	nop			;4c28
	nop			;4c29
	nop			;4c2a
	nop			;4c2b
	nop			;4c2c
	nop			;4c2d
	nop			;4c2e
	nop			;4c2f
	nop			;4c30
	nop			;4c31
	nop			;4c32
	nop			;4c33
	nop			;4c34
	nop			;4c35
	nop			;4c36
	nop			;4c37
	nop			;4c38
	nop			;4c39
	nop			;4c3a
	nop			;4c3b
	nop			;4c3c
	nop			;4c3d
	nop			;4c3e
	nop			;4c3f
	nop			;4c40
	nop			;4c41
	nop			;4c42
	nop			;4c43
	nop			;4c44
	nop			;4c45
	nop			;4c46
	nop			;4c47
	nop			;4c48
	nop			;4c49
	nop			;4c4a
	nop			;4c4b
	nop			;4c4c
	nop			;4c4d
	nop			;4c4e
	nop			;4c4f
	nop			;4c50
	nop			;4c51
	nop			;4c52
	nop			;4c53
	nop			;4c54
	nop			;4c55
	nop			;4c56
	nop			;4c57
	nop			;4c58
	nop			;4c59
	nop			;4c5a
	nop			;4c5b
	nop			;4c5c
	nop			;4c5d
	nop			;4c5e
	nop			;4c5f
	nop			;4c60
	nop			;4c61
	nop			;4c62
	nop			;4c63
	nop			;4c64
	nop			;4c65
	nop			;4c66
	nop			;4c67
	nop			;4c68
	nop			;4c69
	nop			;4c6a
	nop			;4c6b
	nop			;4c6c
	nop			;4c6d
	nop			;4c6e
	nop			;4c6f
	nop			;4c70
	nop			;4c71
	nop			;4c72
	nop			;4c73
	nop			;4c74
	nop			;4c75
	nop			;4c76
	nop			;4c77
	nop			;4c78
	nop			;4c79
	nop			;4c7a
	nop			;4c7b
	nop			;4c7c
	nop			;4c7d
	nop			;4c7e
	nop			;4c7f
	nop			;4c80
	nop			;4c81
	nop			;4c82
	nop			;4c83
	nop			;4c84
	nop			;4c85
	nop			;4c86
	nop			;4c87
	nop			;4c88
	nop			;4c89
	nop			;4c8a
	nop			;4c8b
	nop			;4c8c
	nop			;4c8d
	nop			;4c8e
	nop			;4c8f
	nop			;4c90
	nop			;4c91
	nop			;4c92
	nop			;4c93
	nop			;4c94
	nop			;4c95
	nop			;4c96
	nop			;4c97
	nop			;4c98
	nop			;4c99
	nop			;4c9a
	nop			;4c9b
	nop			;4c9c
	nop			;4c9d
	nop			;4c9e
	nop			;4c9f
	nop			;4ca0
	nop			;4ca1
	nop			;4ca2
	nop			;4ca3
	nop			;4ca4
	nop			;4ca5
	nop			;4ca6
	nop			;4ca7
	nop			;4ca8
	nop			;4ca9
	nop			;4caa
	nop			;4cab
	nop			;4cac
	nop			;4cad
	nop			;4cae
	nop			;4caf
	nop			;4cb0
	nop			;4cb1
	nop			;4cb2
	nop			;4cb3
	nop			;4cb4
	nop			;4cb5
	nop			;4cb6
	nop			;4cb7
	nop			;4cb8
	nop			;4cb9
	nop			;4cba
	nop			;4cbb
	nop			;4cbc
	nop			;4cbd
	nop			;4cbe
	nop			;4cbf
	nop			;4cc0
	nop			;4cc1
	nop			;4cc2
	nop			;4cc3
	nop			;4cc4
	nop			;4cc5
	nop			;4cc6
	nop			;4cc7
	nop			;4cc8
	nop			;4cc9
	nop			;4cca
	nop			;4ccb
	nop			;4ccc
	nop			;4ccd
	nop			;4cce
	nop			;4ccf
	nop			;4cd0
	nop			;4cd1
	nop			;4cd2
	nop			;4cd3
	nop			;4cd4
	nop			;4cd5
	nop			;4cd6
	nop			;4cd7
	nop			;4cd8
	nop			;4cd9
	nop			;4cda
	nop			;4cdb
	nop			;4cdc
	nop			;4cdd
	nop			;4cde
	nop			;4cdf
	nop			;4ce0
	nop			;4ce1
	nop			;4ce2
	nop			;4ce3
	nop			;4ce4
	nop			;4ce5
	nop			;4ce6
	nop			;4ce7
	nop			;4ce8
	nop			;4ce9
	nop			;4cea
	nop			;4ceb
	nop			;4cec
	nop			;4ced
	nop			;4cee
	nop			;4cef
	nop			;4cf0
	nop			;4cf1
	nop			;4cf2
	nop			;4cf3
	nop			;4cf4
	nop			;4cf5
	nop			;4cf6
	nop			;4cf7
	nop			;4cf8
	nop			;4cf9
	nop			;4cfa
	nop			;4cfb
	nop			;4cfc
	nop			;4cfd
	nop			;4cfe
	nop			;4cff
	nop			;4d00
	nop			;4d01
	nop			;4d02
	nop			;4d03
	nop			;4d04
	nop			;4d05
	nop			;4d06
	nop			;4d07
	nop			;4d08
	nop			;4d09
	nop			;4d0a
	nop			;4d0b
	nop			;4d0c
	nop			;4d0d
	nop			;4d0e
	nop			;4d0f
	nop			;4d10
	nop			;4d11
	nop			;4d12
	nop			;4d13
	nop			;4d14
	nop			;4d15
	nop			;4d16
	nop			;4d17
	nop			;4d18
	nop			;4d19
	nop			;4d1a
	nop			;4d1b
	nop			;4d1c
	nop			;4d1d
	nop			;4d1e
	nop			;4d1f
	nop			;4d20
	nop			;4d21
	nop			;4d22
	nop			;4d23
	nop			;4d24
	nop			;4d25
	nop			;4d26
	nop			;4d27
	nop			;4d28
	nop			;4d29
	nop			;4d2a
	nop			;4d2b
	nop			;4d2c
	nop			;4d2d
	nop			;4d2e
	nop			;4d2f
	nop			;4d30
	nop			;4d31
	nop			;4d32
	nop			;4d33
	nop			;4d34
	nop			;4d35
	nop			;4d36
	nop			;4d37
	nop			;4d38
	nop			;4d39
	nop			;4d3a
	nop			;4d3b
	nop			;4d3c
	nop			;4d3d
	nop			;4d3e
	nop			;4d3f
	nop			;4d40
	nop			;4d41
	nop			;4d42
	nop			;4d43
	nop			;4d44
	nop			;4d45
	nop			;4d46
	nop			;4d47
	nop			;4d48
	nop			;4d49
	nop			;4d4a
	nop			;4d4b
	nop			;4d4c
	nop			;4d4d
	nop			;4d4e
	nop			;4d4f
	nop			;4d50
	nop			;4d51
	nop			;4d52
	nop			;4d53
	nop			;4d54
	nop			;4d55
	nop			;4d56
	nop			;4d57
	nop			;4d58
	nop			;4d59
	nop			;4d5a
	nop			;4d5b
	nop			;4d5c
	nop			;4d5d
	nop			;4d5e
	nop			;4d5f
	nop			;4d60
	nop			;4d61
	nop			;4d62
	nop			;4d63
	nop			;4d64
	nop			;4d65
	nop			;4d66
	nop			;4d67
	nop			;4d68
	nop			;4d69
	nop			;4d6a
	nop			;4d6b
	nop			;4d6c
	nop			;4d6d
	nop			;4d6e
	nop			;4d6f
	nop			;4d70
	nop			;4d71
	nop			;4d72
	nop			;4d73
	nop			;4d74
	nop			;4d75
	nop			;4d76
	nop			;4d77
	nop			;4d78
	nop			;4d79
	nop			;4d7a
	nop			;4d7b
	nop			;4d7c
	nop			;4d7d
	nop			;4d7e
	nop			;4d7f
	nop			;4d80
	nop			;4d81
	nop			;4d82
	nop			;4d83
	nop			;4d84
	nop			;4d85
	nop			;4d86
	nop			;4d87
	nop			;4d88
	nop			;4d89
	nop			;4d8a
	nop			;4d8b
	nop			;4d8c
	nop			;4d8d
	nop			;4d8e
	nop			;4d8f
	nop			;4d90
	nop			;4d91
	nop			;4d92
	nop			;4d93
	nop			;4d94
	nop			;4d95
	nop			;4d96
	nop			;4d97
	nop			;4d98
	nop			;4d99
	nop			;4d9a
	nop			;4d9b
	nop			;4d9c
	nop			;4d9d
	nop			;4d9e
	nop			;4d9f
	nop			;4da0
	nop			;4da1
	nop			;4da2
	nop			;4da3
	nop			;4da4
	nop			;4da5
	nop			;4da6
	nop			;4da7
	nop			;4da8
	nop			;4da9
	nop			;4daa
	nop			;4dab
	nop			;4dac
	nop			;4dad
	nop			;4dae
	nop			;4daf
	nop			;4db0
	nop			;4db1
	nop			;4db2
	nop			;4db3
	nop			;4db4
	nop			;4db5
	nop			;4db6
	nop			;4db7
	nop			;4db8
	nop			;4db9
	nop			;4dba
	nop			;4dbb
	nop			;4dbc
	nop			;4dbd
	nop			;4dbe
	nop			;4dbf
	nop			;4dc0
	nop			;4dc1
	nop			;4dc2
	nop			;4dc3
	nop			;4dc4
	nop			;4dc5
	nop			;4dc6
	nop			;4dc7
	nop			;4dc8
	nop			;4dc9
	nop			;4dca
	nop			;4dcb
	nop			;4dcc
	nop			;4dcd
	nop			;4dce
	nop			;4dcf
	nop			;4dd0
	nop			;4dd1
	nop			;4dd2
	nop			;4dd3
	nop			;4dd4
	nop			;4dd5
	nop			;4dd6
	nop			;4dd7
	nop			;4dd8
	nop			;4dd9
	nop			;4dda
	nop			;4ddb
	nop			;4ddc
	nop			;4ddd
	nop			;4dde
	nop			;4ddf
	nop			;4de0
	nop			;4de1
	nop			;4de2
	nop			;4de3
	nop			;4de4
	nop			;4de5
	nop			;4de6
	nop			;4de7
	nop			;4de8
	nop			;4de9
	nop			;4dea
	nop			;4deb
	nop			;4dec
	nop			;4ded
	nop			;4dee
	nop			;4def
	nop			;4df0
	nop			;4df1
	nop			;4df2
	nop			;4df3
	nop			;4df4
	nop			;4df5
	nop			;4df6
	nop			;4df7
	nop			;4df8
	nop			;4df9
	nop			;4dfa
	nop			;4dfb
	nop			;4dfc
	nop			;4dfd
	nop			;4dfe
	nop			;4dff
	nop			;4e00
	nop			;4e01
	nop			;4e02
	nop			;4e03
	nop			;4e04
	nop			;4e05
	nop			;4e06
	nop			;4e07
	nop			;4e08
	nop			;4e09
	nop			;4e0a
	nop			;4e0b
	nop			;4e0c
	nop			;4e0d
	nop			;4e0e
	nop			;4e0f
	nop			;4e10
	nop			;4e11
	nop			;4e12
	nop			;4e13
	nop			;4e14
	nop			;4e15
	nop			;4e16
	nop			;4e17
	nop			;4e18
	nop			;4e19
	nop			;4e1a
	nop			;4e1b
	nop			;4e1c
	nop			;4e1d
	nop			;4e1e
	nop			;4e1f
	nop			;4e20
	nop			;4e21
	nop			;4e22
	nop			;4e23
	nop			;4e24
	nop			;4e25
	nop			;4e26
	nop			;4e27
	nop			;4e28
	nop			;4e29
	nop			;4e2a
	nop			;4e2b
	nop			;4e2c
	nop			;4e2d
	nop			;4e2e
	nop			;4e2f
	nop			;4e30
	nop			;4e31
	nop			;4e32
	nop			;4e33
	nop			;4e34
	nop			;4e35
	nop			;4e36
	nop			;4e37
	nop			;4e38
	nop			;4e39
	nop			;4e3a
	nop			;4e3b
	nop			;4e3c
	nop			;4e3d
	nop			;4e3e
	nop			;4e3f
	nop			;4e40
	nop			;4e41
	nop			;4e42
	nop			;4e43
	nop			;4e44
	nop			;4e45
	nop			;4e46
	nop			;4e47
	nop			;4e48
	nop			;4e49
	nop			;4e4a
	nop			;4e4b
	nop			;4e4c
	nop			;4e4d
	nop			;4e4e
	nop			;4e4f
	nop			;4e50
	nop			;4e51
	nop			;4e52
	nop			;4e53
	nop			;4e54
	nop			;4e55
	nop			;4e56
	nop			;4e57
	nop			;4e58
	nop			;4e59
	nop			;4e5a
	nop			;4e5b
	nop			;4e5c
	nop			;4e5d
	nop			;4e5e
	nop			;4e5f
	nop			;4e60
	nop			;4e61
	nop			;4e62
	nop			;4e63
	nop			;4e64
	nop			;4e65
	nop			;4e66
	nop			;4e67
	nop			;4e68
	nop			;4e69
	nop			;4e6a
	nop			;4e6b
	nop			;4e6c
	nop			;4e6d
	nop			;4e6e
	nop			;4e6f
	nop			;4e70
	nop			;4e71
	nop			;4e72
	nop			;4e73
	nop			;4e74
	nop			;4e75
	nop			;4e76
	nop			;4e77
	nop			;4e78
	nop			;4e79
	nop			;4e7a
	nop			;4e7b
	nop			;4e7c
	nop			;4e7d
	nop			;4e7e
	nop			;4e7f
	nop			;4e80
	nop			;4e81
	nop			;4e82
	nop			;4e83
	nop			;4e84
	nop			;4e85
	nop			;4e86
	nop			;4e87
	nop			;4e88
	nop			;4e89
	nop			;4e8a
	nop			;4e8b
	nop			;4e8c
	nop			;4e8d
	nop			;4e8e
	nop			;4e8f
	nop			;4e90
	nop			;4e91
	nop			;4e92
	nop			;4e93
	nop			;4e94
	nop			;4e95
	nop			;4e96
	nop			;4e97
	nop			;4e98
	nop			;4e99
	nop			;4e9a
	nop			;4e9b
	nop			;4e9c
	nop			;4e9d
	nop			;4e9e
	nop			;4e9f
	nop			;4ea0
	nop			;4ea1
	nop			;4ea2
	nop			;4ea3
	nop			;4ea4
	nop			;4ea5
	nop			;4ea6
	nop			;4ea7
	nop			;4ea8
	nop			;4ea9
	nop			;4eaa
	nop			;4eab
	nop			;4eac
	nop			;4ead
	nop			;4eae
	nop			;4eaf
	nop			;4eb0
	nop			;4eb1
	nop			;4eb2
	nop			;4eb3
	nop			;4eb4
	nop			;4eb5
	nop			;4eb6
	nop			;4eb7
	nop			;4eb8
	nop			;4eb9
	nop			;4eba
	nop			;4ebb
	nop			;4ebc
	nop			;4ebd
	nop			;4ebe
	nop			;4ebf
	nop			;4ec0
	nop			;4ec1
	nop			;4ec2
	nop			;4ec3
	nop			;4ec4
	nop			;4ec5
	nop			;4ec6
	nop			;4ec7
	nop			;4ec8
	nop			;4ec9
	nop			;4eca
	nop			;4ecb
	nop			;4ecc
	nop			;4ecd
	nop			;4ece
	nop			;4ecf
	nop			;4ed0
	nop			;4ed1
	nop			;4ed2
	nop			;4ed3
	nop			;4ed4
	nop			;4ed5
	nop			;4ed6
	nop			;4ed7
	nop			;4ed8
	nop			;4ed9
	nop			;4eda
	nop			;4edb
	nop			;4edc
	nop			;4edd
	nop			;4ede
	nop			;4edf
	nop			;4ee0
	nop			;4ee1
	nop			;4ee2
	nop			;4ee3
	nop			;4ee4
	nop			;4ee5
	nop			;4ee6
	nop			;4ee7
	nop			;4ee8
	nop			;4ee9
	nop			;4eea
	nop			;4eeb
	nop			;4eec
	nop			;4eed
	nop			;4eee
	nop			;4eef
	nop			;4ef0
	nop			;4ef1
	nop			;4ef2
	nop			;4ef3
	nop			;4ef4
	nop			;4ef5
	nop			;4ef6
	nop			;4ef7
	nop			;4ef8
	nop			;4ef9
	nop			;4efa
	nop			;4efb
	nop			;4efc
	nop			;4efd
	nop			;4efe
	nop			;4eff
	nop			;4f00
	nop			;4f01
	nop			;4f02
	nop			;4f03
	nop			;4f04
	nop			;4f05
	nop			;4f06
	nop			;4f07
	nop			;4f08
	nop			;4f09
	nop			;4f0a
	nop			;4f0b
	nop			;4f0c
	nop			;4f0d
	nop			;4f0e
	nop			;4f0f
	nop			;4f10
	nop			;4f11
	nop			;4f12
	nop			;4f13
	nop			;4f14
	nop			;4f15
	nop			;4f16
	nop			;4f17
	nop			;4f18
	nop			;4f19
	nop			;4f1a
	nop			;4f1b
	nop			;4f1c
	nop			;4f1d
	nop			;4f1e
	nop			;4f1f
	nop			;4f20
	nop			;4f21
	nop			;4f22
	nop			;4f23
	nop			;4f24
	nop			;4f25
	nop			;4f26
	nop			;4f27
	nop			;4f28
	nop			;4f29
	nop			;4f2a
	nop			;4f2b
	nop			;4f2c
	nop			;4f2d
	nop			;4f2e
	nop			;4f2f
	nop			;4f30
	nop			;4f31
	nop			;4f32
	nop			;4f33
	nop			;4f34
	nop			;4f35
	nop			;4f36
	nop			;4f37
	nop			;4f38
	nop			;4f39
	nop			;4f3a
	nop			;4f3b
	nop			;4f3c
	nop			;4f3d
	nop			;4f3e
	nop			;4f3f
	nop			;4f40
	nop			;4f41
	nop			;4f42
	nop			;4f43
	nop			;4f44
	nop			;4f45
	nop			;4f46
	nop			;4f47
	nop			;4f48
	nop			;4f49
	nop			;4f4a
	nop			;4f4b
	nop			;4f4c
	nop			;4f4d
	nop			;4f4e
	nop			;4f4f
	nop			;4f50
	nop			;4f51
	nop			;4f52
	nop			;4f53
	nop			;4f54
	nop			;4f55
	nop			;4f56
	nop			;4f57
	nop			;4f58
	nop			;4f59
	nop			;4f5a
	nop			;4f5b
	nop			;4f5c
	nop			;4f5d
	nop			;4f5e
	nop			;4f5f
	nop			;4f60
	nop			;4f61
	nop			;4f62
	nop			;4f63
	nop			;4f64
	nop			;4f65
	nop			;4f66
	nop			;4f67
	nop			;4f68
	nop			;4f69
	nop			;4f6a
	nop			;4f6b
	nop			;4f6c
	nop			;4f6d
	nop			;4f6e
	nop			;4f6f
	nop			;4f70
	nop			;4f71
	nop			;4f72
	nop			;4f73
	nop			;4f74
	nop			;4f75
	nop			;4f76
	nop			;4f77
	nop			;4f78
	nop			;4f79
	nop			;4f7a
	nop			;4f7b
	nop			;4f7c
	nop			;4f7d
	nop			;4f7e
	nop			;4f7f
	nop			;4f80
	nop			;4f81
	nop			;4f82
	nop			;4f83
	nop			;4f84
	nop			;4f85
	nop			;4f86
	nop			;4f87
	nop			;4f88
	nop			;4f89
	nop			;4f8a
	nop			;4f8b
	nop			;4f8c
	nop			;4f8d
	nop			;4f8e
	nop			;4f8f
	nop			;4f90
	nop			;4f91
	nop			;4f92
	nop			;4f93
	nop			;4f94
	nop			;4f95
	nop			;4f96
	nop			;4f97
	nop			;4f98
	nop			;4f99
	nop			;4f9a
	nop			;4f9b
	nop			;4f9c
	nop			;4f9d
	nop			;4f9e
	nop			;4f9f
	nop			;4fa0
	nop			;4fa1
	nop			;4fa2
	nop			;4fa3
	nop			;4fa4
	nop			;4fa5
	nop			;4fa6
	nop			;4fa7
	nop			;4fa8
	nop			;4fa9
	nop			;4faa
	nop			;4fab
	nop			;4fac
	nop			;4fad
	nop			;4fae
	nop			;4faf
	nop			;4fb0
	nop			;4fb1
	nop			;4fb2
	nop			;4fb3
	nop			;4fb4
	nop			;4fb5
	nop			;4fb6
	nop			;4fb7
	nop			;4fb8
	nop			;4fb9
	nop			;4fba
	nop			;4fbb
	nop			;4fbc
	nop			;4fbd
	nop			;4fbe
	nop			;4fbf
	nop			;4fc0
	nop			;4fc1
	nop			;4fc2
	nop			;4fc3
	nop			;4fc4
	nop			;4fc5
	nop			;4fc6
	nop			;4fc7
	nop			;4fc8
	nop			;4fc9
	nop			;4fca
	nop			;4fcb
	nop			;4fcc
	nop			;4fcd
	nop			;4fce
	nop			;4fcf
	nop			;4fd0
	nop			;4fd1
	nop			;4fd2
	nop			;4fd3
	nop			;4fd4
	nop			;4fd5
	nop			;4fd6
	nop			;4fd7
	nop			;4fd8
	nop			;4fd9
	nop			;4fda
	nop			;4fdb
	nop			;4fdc
	nop			;4fdd
	nop			;4fde
	nop			;4fdf
	nop			;4fe0
	nop			;4fe1
	nop			;4fe2
	nop			;4fe3
	nop			;4fe4
	nop			;4fe5
	nop			;4fe6
	nop			;4fe7
	nop			;4fe8
	nop			;4fe9
	nop			;4fea
	nop			;4feb
	nop			;4fec
	nop			;4fed
	nop			;4fee
	nop			;4fef
	nop			;4ff0
	nop			;4ff1
	nop			;4ff2
	nop			;4ff3
	nop			;4ff4
	nop			;4ff5
	nop			;4ff6
	nop			;4ff7
	nop			;4ff8
	nop			;4ff9
	nop			;4ffa
	nop			;4ffb
	nop			;4ffc
	nop			;4ffd
	nop			;4ffe
	nop			;4fff
	nop			;5000
	nop			;5001
	nop			;5002
	nop			;5003
	nop			;5004
	nop			;5005
	nop			;5006
	nop			;5007
	nop			;5008
	nop			;5009
	nop			;500a
	nop			;500b
	nop			;500c
	nop			;500d
	nop			;500e
	nop			;500f
	nop			;5010
	nop			;5011
	nop			;5012
	nop			;5013
	nop			;5014
	nop			;5015
	nop			;5016
	nop			;5017
	nop			;5018
	nop			;5019
	nop			;501a
	nop			;501b
	nop			;501c
	nop			;501d
	nop			;501e
	nop			;501f
	nop			;5020
	nop			;5021
	nop			;5022
	nop			;5023
	nop			;5024
	nop			;5025
	nop			;5026
	nop			;5027
	nop			;5028
	nop			;5029
	nop			;502a
	nop			;502b
	nop			;502c
	nop			;502d
	nop			;502e
	nop			;502f
	nop			;5030
	nop			;5031
	nop			;5032
	nop			;5033
	nop			;5034
	nop			;5035
	nop			;5036
	nop			;5037
	nop			;5038
	nop			;5039
	nop			;503a
	nop			;503b
	nop			;503c
	nop			;503d
	nop			;503e
	nop			;503f
	nop			;5040
	nop			;5041
	nop			;5042
	nop			;5043
	nop			;5044
	nop			;5045
	nop			;5046
	nop			;5047
	nop			;5048
	nop			;5049
	nop			;504a
	nop			;504b
	nop			;504c
	nop			;504d
	nop			;504e
	nop			;504f
	nop			;5050
	nop			;5051
	nop			;5052
	nop			;5053
	nop			;5054
	nop			;5055
	nop			;5056
	nop			;5057
	nop			;5058
	nop			;5059
	nop			;505a
	nop			;505b
	nop			;505c
	nop			;505d
	nop			;505e
	nop			;505f
	nop			;5060
	nop			;5061
	nop			;5062
	nop			;5063
	nop			;5064
	nop			;5065
	nop			;5066
	nop			;5067
	nop			;5068
	nop			;5069
	nop			;506a
	nop			;506b
	nop			;506c
	nop			;506d
	nop			;506e
	nop			;506f
	nop			;5070
	nop			;5071
	nop			;5072
	nop			;5073
	nop			;5074
	nop			;5075
	nop			;5076
	nop			;5077
	nop			;5078
	nop			;5079
	nop			;507a
	nop			;507b
	nop			;507c
	nop			;507d
	nop			;507e
	nop			;507f
	nop			;5080
	nop			;5081
	nop			;5082
	nop			;5083
	nop			;5084
	nop			;5085
	nop			;5086
	nop			;5087
	nop			;5088
	nop			;5089
	nop			;508a
	nop			;508b
	nop			;508c
	nop			;508d
	nop			;508e
	nop			;508f
	nop			;5090
	nop			;5091
	nop			;5092
	nop			;5093
	nop			;5094
	nop			;5095
	nop			;5096
	nop			;5097
	nop			;5098
	nop			;5099
	nop			;509a
	nop			;509b
	nop			;509c
	nop			;509d
	nop			;509e
	nop			;509f
	nop			;50a0
	nop			;50a1
	nop			;50a2
	nop			;50a3
	nop			;50a4
	nop			;50a5
	nop			;50a6
	nop			;50a7
	nop			;50a8
	nop			;50a9
	nop			;50aa
	nop			;50ab
	nop			;50ac
	nop			;50ad
	nop			;50ae
	nop			;50af
	nop			;50b0
	nop			;50b1
	nop			;50b2
	nop			;50b3
	nop			;50b4
	nop			;50b5
	nop			;50b6
	nop			;50b7
	nop			;50b8
	nop			;50b9
	nop			;50ba
	nop			;50bb
	nop			;50bc
	nop			;50bd
	nop			;50be
	nop			;50bf
	nop			;50c0
	nop			;50c1
	nop			;50c2
	nop			;50c3
	nop			;50c4
	nop			;50c5
	nop			;50c6
	nop			;50c7
	nop			;50c8
	nop			;50c9
	nop			;50ca
	nop			;50cb
	nop			;50cc
	nop			;50cd
	nop			;50ce
	nop			;50cf
	nop			;50d0
	nop			;50d1
	nop			;50d2
	nop			;50d3
	nop			;50d4
	nop			;50d5
	nop			;50d6
	nop			;50d7
	nop			;50d8
	nop			;50d9
	nop			;50da
	nop			;50db
	nop			;50dc
	nop			;50dd
	nop			;50de
	nop			;50df
	nop			;50e0
	nop			;50e1
	nop			;50e2
	nop			;50e3
	nop			;50e4
	nop			;50e5
	nop			;50e6
	nop			;50e7
	nop			;50e8
	nop			;50e9
	nop			;50ea
	nop			;50eb
	nop			;50ec
	nop			;50ed
	nop			;50ee
	nop			;50ef
	nop			;50f0
	nop			;50f1
	nop			;50f2
	nop			;50f3
	nop			;50f4
	nop			;50f5
	nop			;50f6
	nop			;50f7
	nop			;50f8
	nop			;50f9
	nop			;50fa
	nop			;50fb
	nop			;50fc
	nop			;50fd
	nop			;50fe
	nop			;50ff
	nop			;5100
	nop			;5101
	nop			;5102
	nop			;5103
	nop			;5104
	nop			;5105
	nop			;5106
	nop			;5107
	nop			;5108
	nop			;5109
	nop			;510a
	nop			;510b
	nop			;510c
	nop			;510d
	nop			;510e
	nop			;510f
	nop			;5110
	nop			;5111
	nop			;5112
	nop			;5113
	nop			;5114
	nop			;5115
	nop			;5116
	nop			;5117
	nop			;5118
	nop			;5119
	nop			;511a
	nop			;511b
	nop			;511c
	nop			;511d
	nop			;511e
	nop			;511f
	nop			;5120
	nop			;5121
	nop			;5122
	nop			;5123
	nop			;5124
	nop			;5125
	nop			;5126
	nop			;5127
	nop			;5128
	nop			;5129
	nop			;512a
	nop			;512b
	nop			;512c
	nop			;512d
	nop			;512e
	nop			;512f
	nop			;5130
	nop			;5131
	nop			;5132
	nop			;5133
	nop			;5134
	nop			;5135
	nop			;5136
	nop			;5137
	nop			;5138
	nop			;5139
	nop			;513a
	nop			;513b
	nop			;513c
	nop			;513d
	nop			;513e
	nop			;513f
	nop			;5140
	nop			;5141
	nop			;5142
	nop			;5143
	nop			;5144
	nop			;5145
	nop			;5146
	nop			;5147
	nop			;5148
	nop			;5149
	nop			;514a
	nop			;514b
	nop			;514c
	nop			;514d
	nop			;514e
	nop			;514f
	nop			;5150
	nop			;5151
	nop			;5152
	nop			;5153
	nop			;5154
	nop			;5155
	nop			;5156
	nop			;5157
	nop			;5158
	nop			;5159
	nop			;515a
	nop			;515b
	nop			;515c
	nop			;515d
	nop			;515e
	nop			;515f
	nop			;5160
	nop			;5161
	nop			;5162
	nop			;5163
	nop			;5164
	nop			;5165
	nop			;5166
	nop			;5167
	nop			;5168
	nop			;5169
	nop			;516a
	nop			;516b
	nop			;516c
	nop			;516d
	nop			;516e
	nop			;516f
	nop			;5170
	nop			;5171
	nop			;5172
	nop			;5173
	nop			;5174
	nop			;5175
	nop			;5176
	nop			;5177
	nop			;5178
	nop			;5179
	nop			;517a
	nop			;517b
	nop			;517c
	nop			;517d
	nop			;517e
	nop			;517f
	nop			;5180
	nop			;5181
	nop			;5182
	nop			;5183
	nop			;5184
	nop			;5185
	nop			;5186
	nop			;5187
	nop			;5188
	nop			;5189
	nop			;518a
	nop			;518b
	nop			;518c
	nop			;518d
	nop			;518e
	nop			;518f
	nop			;5190
	nop			;5191
	nop			;5192
	nop			;5193
	nop			;5194
	nop			;5195
	nop			;5196
	nop			;5197
	nop			;5198
	nop			;5199
	nop			;519a
	nop			;519b
	nop			;519c
	nop			;519d
	nop			;519e
	nop			;519f
	nop			;51a0
	nop			;51a1
	nop			;51a2
	nop			;51a3
	nop			;51a4
	nop			;51a5
	nop			;51a6
	nop			;51a7
	nop			;51a8
	nop			;51a9
	nop			;51aa
	nop			;51ab
	nop			;51ac
	nop			;51ad
	nop			;51ae
	nop			;51af
	nop			;51b0
	nop			;51b1
	nop			;51b2
	nop			;51b3
	nop			;51b4
	nop			;51b5
	nop			;51b6
	nop			;51b7
	nop			;51b8
	nop			;51b9
	nop			;51ba
	nop			;51bb
	nop			;51bc
	nop			;51bd
	nop			;51be
	nop			;51bf
	nop			;51c0
	nop			;51c1
	nop			;51c2
	nop			;51c3
	nop			;51c4
	nop			;51c5
	nop			;51c6
	nop			;51c7
	nop			;51c8
	nop			;51c9
	nop			;51ca
	nop			;51cb
	nop			;51cc
	nop			;51cd
	nop			;51ce
	nop			;51cf
	nop			;51d0
	nop			;51d1
	nop			;51d2
	nop			;51d3
	nop			;51d4
	nop			;51d5
	nop			;51d6
	nop			;51d7
	nop			;51d8
	nop			;51d9
	nop			;51da
	nop			;51db
	nop			;51dc
	nop			;51dd
	nop			;51de
	nop			;51df
	nop			;51e0
	nop			;51e1
	nop			;51e2
	nop			;51e3
	nop			;51e4
	nop			;51e5
	nop			;51e6
	nop			;51e7
	nop			;51e8
	nop			;51e9
	nop			;51ea
	nop			;51eb
	nop			;51ec
	nop			;51ed
	nop			;51ee
	nop			;51ef
	nop			;51f0
	nop			;51f1
	nop			;51f2
	nop			;51f3
	nop			;51f4
	nop			;51f5
	nop			;51f6
	nop			;51f7
	nop			;51f8
	nop			;51f9
	nop			;51fa
	nop			;51fb
	nop			;51fc
	nop			;51fd
	nop			;51fe
	nop			;51ff
	nop			;5200
	nop			;5201
	nop			;5202
	nop			;5203
	nop			;5204
	nop			;5205
	nop			;5206
	nop			;5207
	nop			;5208
	nop			;5209
	nop			;520a
	nop			;520b
	nop			;520c
	nop			;520d
	nop			;520e
	nop			;520f
	nop			;5210
	nop			;5211
	nop			;5212
	nop			;5213
	nop			;5214
	nop			;5215
	nop			;5216
	nop			;5217
	nop			;5218
	nop			;5219
	nop			;521a
	nop			;521b
	nop			;521c
	nop			;521d
	nop			;521e
	nop			;521f
	nop			;5220
	nop			;5221
	nop			;5222
	nop			;5223
	nop			;5224
	nop			;5225
	nop			;5226
	nop			;5227
	nop			;5228
	nop			;5229
	nop			;522a
	nop			;522b
	nop			;522c
	nop			;522d
	nop			;522e
	nop			;522f
	nop			;5230
	nop			;5231
	nop			;5232
	nop			;5233
	nop			;5234
	nop			;5235
	nop			;5236
	nop			;5237
	nop			;5238
	nop			;5239
	nop			;523a
	nop			;523b
	nop			;523c
	nop			;523d
	nop			;523e
	nop			;523f
	nop			;5240
	nop			;5241
	nop			;5242
	nop			;5243
	nop			;5244
	nop			;5245
	nop			;5246
	nop			;5247
	nop			;5248
	nop			;5249
	nop			;524a
	nop			;524b
	nop			;524c
	nop			;524d
	nop			;524e
	nop			;524f
	nop			;5250
	nop			;5251
	nop			;5252
	nop			;5253
	nop			;5254
	nop			;5255
	nop			;5256
	nop			;5257
	nop			;5258
	nop			;5259
	nop			;525a
	nop			;525b
	nop			;525c
	nop			;525d
	nop			;525e
	nop			;525f
	nop			;5260
	nop			;5261
	nop			;5262
	nop			;5263
	nop			;5264
	nop			;5265
	nop			;5266
	nop			;5267
	nop			;5268
	nop			;5269
	nop			;526a
	nop			;526b
	nop			;526c
	nop			;526d
	nop			;526e
	nop			;526f
	nop			;5270
	nop			;5271
	nop			;5272
	nop			;5273
	nop			;5274
	nop			;5275
	nop			;5276
	nop			;5277
	nop			;5278
	nop			;5279
	nop			;527a
	nop			;527b
	nop			;527c
	nop			;527d
	nop			;527e
	nop			;527f
	nop			;5280
	nop			;5281
	nop			;5282
	nop			;5283
	nop			;5284
	nop			;5285
	nop			;5286
	nop			;5287
	nop			;5288
	nop			;5289
	nop			;528a
	nop			;528b
	nop			;528c
	nop			;528d
	nop			;528e
	nop			;528f
	nop			;5290
	nop			;5291
	nop			;5292
	nop			;5293
	nop			;5294
	nop			;5295
	nop			;5296
	nop			;5297
	nop			;5298
	nop			;5299
	nop			;529a
	nop			;529b
	nop			;529c
	nop			;529d
	nop			;529e
	nop			;529f
	nop			;52a0
	nop			;52a1
	nop			;52a2
	nop			;52a3
	nop			;52a4
	nop			;52a5
	nop			;52a6
	nop			;52a7
	nop			;52a8
	nop			;52a9
	nop			;52aa
	nop			;52ab
	nop			;52ac
	nop			;52ad
	nop			;52ae
	nop			;52af
	nop			;52b0
	nop			;52b1
	nop			;52b2
	nop			;52b3
	nop			;52b4
	nop			;52b5
	nop			;52b6
	nop			;52b7
	nop			;52b8
	nop			;52b9
	nop			;52ba
	nop			;52bb
	nop			;52bc
	nop			;52bd
	nop			;52be
	nop			;52bf
	nop			;52c0
	nop			;52c1
	nop			;52c2
	nop			;52c3
	nop			;52c4
	nop			;52c5
	nop			;52c6
	nop			;52c7
	nop			;52c8
	nop			;52c9
	nop			;52ca
	nop			;52cb
	nop			;52cc
	nop			;52cd
	nop			;52ce
	nop			;52cf
	nop			;52d0
	nop			;52d1
	nop			;52d2
	nop			;52d3
	nop			;52d4
	nop			;52d5
	nop			;52d6
	nop			;52d7
	nop			;52d8
	nop			;52d9
	nop			;52da
	nop			;52db
	nop			;52dc
	nop			;52dd
	nop			;52de
	nop			;52df
	nop			;52e0
	nop			;52e1
	nop			;52e2
	nop			;52e3
	nop			;52e4
	nop			;52e5
	nop			;52e6
	nop			;52e7
	nop			;52e8
	nop			;52e9
	nop			;52ea
	nop			;52eb
	nop			;52ec
	nop			;52ed
	nop			;52ee
	nop			;52ef
	nop			;52f0
	nop			;52f1
	nop			;52f2
	nop			;52f3
	nop			;52f4
	nop			;52f5
	nop			;52f6
	nop			;52f7
	nop			;52f8
	nop			;52f9
	nop			;52fa
	nop			;52fb
	nop			;52fc
	nop			;52fd
	nop			;52fe
	nop			;52ff
	nop			;5300
	nop			;5301
	nop			;5302
	nop			;5303
	nop			;5304
	nop			;5305
	nop			;5306
	nop			;5307
	nop			;5308
	nop			;5309
	nop			;530a
	nop			;530b
	nop			;530c
	nop			;530d
	nop			;530e
	nop			;530f
	nop			;5310
	nop			;5311
	nop			;5312
	nop			;5313
	nop			;5314
	nop			;5315
	nop			;5316
	nop			;5317
	nop			;5318
	nop			;5319
	nop			;531a
	nop			;531b
	nop			;531c
	nop			;531d
	nop			;531e
	nop			;531f
	nop			;5320
	nop			;5321
	nop			;5322
	nop			;5323
	nop			;5324
	nop			;5325
	nop			;5326
	nop			;5327
	nop			;5328
	nop			;5329
	nop			;532a
	nop			;532b
	nop			;532c
	nop			;532d
	nop			;532e
	nop			;532f
	nop			;5330
	nop			;5331
	nop			;5332
	nop			;5333
	nop			;5334
	nop			;5335
	nop			;5336
	nop			;5337
	nop			;5338
	nop			;5339
	nop			;533a
	nop			;533b
	nop			;533c
	nop			;533d
	nop			;533e
	nop			;533f
	nop			;5340
	nop			;5341
	nop			;5342
	nop			;5343
	nop			;5344
	nop			;5345
	nop			;5346
	nop			;5347
	nop			;5348
	nop			;5349
	nop			;534a
	nop			;534b
	nop			;534c
	nop			;534d
	nop			;534e
	nop			;534f
	nop			;5350
	nop			;5351
	nop			;5352
	nop			;5353
	nop			;5354
	nop			;5355
	nop			;5356
	nop			;5357
	nop			;5358
	nop			;5359
	nop			;535a
	nop			;535b
	nop			;535c
	nop			;535d
	nop			;535e
	nop			;535f
	nop			;5360
	nop			;5361
	nop			;5362
	nop			;5363
	nop			;5364
	nop			;5365
	nop			;5366
	nop			;5367
	nop			;5368
	nop			;5369
	nop			;536a
	nop			;536b
	nop			;536c
	nop			;536d
	nop			;536e
	nop			;536f
	nop			;5370
	nop			;5371
	nop			;5372
	nop			;5373
	nop			;5374
	nop			;5375
	nop			;5376
	nop			;5377
	nop			;5378
	nop			;5379
	nop			;537a
	nop			;537b
	nop			;537c
	nop			;537d
	nop			;537e
	nop			;537f
	nop			;5380
	nop			;5381
	nop			;5382
	nop			;5383
	nop			;5384
	nop			;5385
	nop			;5386
	nop			;5387
	nop			;5388
	nop			;5389
	nop			;538a
	nop			;538b
	nop			;538c
	nop			;538d
	nop			;538e
	nop			;538f
	nop			;5390
	nop			;5391
	nop			;5392
	nop			;5393
	nop			;5394
	nop			;5395
	nop			;5396
	nop			;5397
	nop			;5398
	nop			;5399
	nop			;539a
	nop			;539b
	nop			;539c
	nop			;539d
	nop			;539e
	nop			;539f
	nop			;53a0
	nop			;53a1
	nop			;53a2
	nop			;53a3
	nop			;53a4
	nop			;53a5
	nop			;53a6
	nop			;53a7
	nop			;53a8
	nop			;53a9
	nop			;53aa
	nop			;53ab
	nop			;53ac
	nop			;53ad
	nop			;53ae
	nop			;53af
	nop			;53b0
	nop			;53b1
	nop			;53b2
	nop			;53b3
	nop			;53b4
	nop			;53b5
	nop			;53b6
	nop			;53b7
	nop			;53b8
	nop			;53b9
	nop			;53ba
	nop			;53bb
	nop			;53bc
	nop			;53bd
	nop			;53be
	nop			;53bf
	nop			;53c0
	nop			;53c1
	nop			;53c2
	nop			;53c3
	nop			;53c4
	nop			;53c5
	nop			;53c6
	nop			;53c7
	nop			;53c8
	nop			;53c9
	nop			;53ca
	nop			;53cb
	nop			;53cc
	nop			;53cd
	nop			;53ce
	nop			;53cf
	nop			;53d0
	nop			;53d1
	nop			;53d2
	nop			;53d3
	nop			;53d4
	nop			;53d5
	nop			;53d6
	nop			;53d7
	nop			;53d8
	nop			;53d9
	nop			;53da
	nop			;53db
	nop			;53dc
	nop			;53dd
	nop			;53de
	nop			;53df
	nop			;53e0
	nop			;53e1
	nop			;53e2
	nop			;53e3
	nop			;53e4
	nop			;53e5
	nop			;53e6
	nop			;53e7
	nop			;53e8
	nop			;53e9
	nop			;53ea
	nop			;53eb
	nop			;53ec
	nop			;53ed
	nop			;53ee
	nop			;53ef
	nop			;53f0
	nop			;53f1
	nop			;53f2
	nop			;53f3
	nop			;53f4
	nop			;53f5
	nop			;53f6
	nop			;53f7
	nop			;53f8
	nop			;53f9
	nop			;53fa
	nop			;53fb
	nop			;53fc
	nop			;53fd
	nop			;53fe
	nop			;53ff
	nop			;5400
	nop			;5401
	nop			;5402
	nop			;5403
	nop			;5404
	nop			;5405
	nop			;5406
	nop			;5407
	nop			;5408
	nop			;5409
	nop			;540a
	nop			;540b
	nop			;540c
	nop			;540d
	nop			;540e
	nop			;540f
	nop			;5410
	nop			;5411
	nop			;5412
	nop			;5413
	nop			;5414
	nop			;5415
	nop			;5416
	nop			;5417
	nop			;5418
	nop			;5419
	nop			;541a
	nop			;541b
	nop			;541c
	nop			;541d
	nop			;541e
	nop			;541f
	nop			;5420
	nop			;5421
	nop			;5422
	nop			;5423
	nop			;5424
	nop			;5425
	nop			;5426
	nop			;5427
	nop			;5428
	nop			;5429
	nop			;542a
	nop			;542b
	nop			;542c
	nop			;542d
	nop			;542e
	nop			;542f
	nop			;5430
	nop			;5431
	nop			;5432
	nop			;5433
	nop			;5434
	nop			;5435
	nop			;5436
	nop			;5437
	nop			;5438
	nop			;5439
	nop			;543a
	nop			;543b
	nop			;543c
	nop			;543d
	nop			;543e
	nop			;543f
	nop			;5440
	nop			;5441
	nop			;5442
	nop			;5443
	nop			;5444
	nop			;5445
	nop			;5446
	nop			;5447
	nop			;5448
	nop			;5449
	nop			;544a
	nop			;544b
	nop			;544c
	nop			;544d
	nop			;544e
	nop			;544f
	nop			;5450
	nop			;5451
	nop			;5452
	nop			;5453
	nop			;5454
	nop			;5455
	nop			;5456
	nop			;5457
	nop			;5458
	nop			;5459
	nop			;545a
	nop			;545b
	nop			;545c
	nop			;545d
	nop			;545e
	nop			;545f
	nop			;5460
	nop			;5461
	nop			;5462
	nop			;5463
	nop			;5464
	nop			;5465
	nop			;5466
	nop			;5467
	nop			;5468
	nop			;5469
	nop			;546a
	nop			;546b
	nop			;546c
	nop			;546d
	nop			;546e
	nop			;546f
	nop			;5470
	nop			;5471
	nop			;5472
	nop			;5473
	nop			;5474
	nop			;5475
	nop			;5476
	nop			;5477
	nop			;5478
	nop			;5479
	nop			;547a
	nop			;547b
	nop			;547c
	nop			;547d
	nop			;547e
	nop			;547f
	nop			;5480
	nop			;5481
	nop			;5482
	nop			;5483
	nop			;5484
	nop			;5485
	nop			;5486
	nop			;5487
	nop			;5488
	nop			;5489
	nop			;548a
	nop			;548b
	nop			;548c
	nop			;548d
	nop			;548e
	nop			;548f
	nop			;5490
	nop			;5491
	nop			;5492
	nop			;5493
	nop			;5494
	nop			;5495
	nop			;5496
	nop			;5497
	nop			;5498
	nop			;5499
	nop			;549a
	nop			;549b
	nop			;549c
	nop			;549d
	nop			;549e
	nop			;549f
	nop			;54a0
	nop			;54a1
	nop			;54a2
	nop			;54a3
	nop			;54a4
	nop			;54a5
	nop			;54a6
	nop			;54a7
	nop			;54a8
	nop			;54a9
	nop			;54aa
	nop			;54ab
	nop			;54ac
	nop			;54ad
	nop			;54ae
	nop			;54af
	nop			;54b0
	nop			;54b1
	nop			;54b2
	nop			;54b3
	nop			;54b4
	nop			;54b5
	nop			;54b6
	nop			;54b7
	nop			;54b8
	nop			;54b9
	nop			;54ba
	nop			;54bb
	nop			;54bc
	nop			;54bd
	nop			;54be
	nop			;54bf
	nop			;54c0
	nop			;54c1
	nop			;54c2
	nop			;54c3
	nop			;54c4
	nop			;54c5
	nop			;54c6
	nop			;54c7
	nop			;54c8
	nop			;54c9
	nop			;54ca
	nop			;54cb
	nop			;54cc
	nop			;54cd
	nop			;54ce
	nop			;54cf
	nop			;54d0
	nop			;54d1
	nop			;54d2
	nop			;54d3
	nop			;54d4
	nop			;54d5
	nop			;54d6
	nop			;54d7
	nop			;54d8
	nop			;54d9
	nop			;54da
	nop			;54db
	nop			;54dc
	nop			;54dd
	nop			;54de
	nop			;54df
	nop			;54e0
	nop			;54e1
	nop			;54e2
	nop			;54e3
	nop			;54e4
	nop			;54e5
	nop			;54e6
	nop			;54e7
	nop			;54e8
	nop			;54e9
	nop			;54ea
	nop			;54eb
	nop			;54ec
	nop			;54ed
	nop			;54ee
	nop			;54ef
	nop			;54f0
	nop			;54f1
	nop			;54f2
	nop			;54f3
	nop			;54f4
	nop			;54f5
	nop			;54f6
	nop			;54f7
	nop			;54f8
	nop			;54f9
	nop			;54fa
	nop			;54fb
	nop			;54fc
	nop			;54fd
	nop			;54fe
	nop			;54ff
	nop			;5500
	nop			;5501
	nop			;5502
	nop			;5503
	nop			;5504
	nop			;5505
	nop			;5506
	nop			;5507
	nop			;5508
	nop			;5509
	nop			;550a
	nop			;550b
	nop			;550c
	nop			;550d
	nop			;550e
	nop			;550f
	nop			;5510
	nop			;5511
	nop			;5512
	nop			;5513
	nop			;5514
	nop			;5515
	nop			;5516
	nop			;5517
	nop			;5518
	nop			;5519
	nop			;551a
	nop			;551b
	nop			;551c
	nop			;551d
	nop			;551e
	nop			;551f
	nop			;5520
	nop			;5521
	nop			;5522
	nop			;5523
	nop			;5524
	nop			;5525
	nop			;5526
	nop			;5527
	nop			;5528
	nop			;5529
	nop			;552a
	nop			;552b
	nop			;552c
	nop			;552d
	nop			;552e
	nop			;552f
	nop			;5530
	nop			;5531
	nop			;5532
	nop			;5533
	nop			;5534
	nop			;5535
	nop			;5536
	nop			;5537
	nop			;5538
	nop			;5539
	nop			;553a
	nop			;553b
	nop			;553c
	nop			;553d
	nop			;553e
	nop			;553f
	nop			;5540
	nop			;5541
	nop			;5542
	nop			;5543
	nop			;5544
	nop			;5545
	nop			;5546
	nop			;5547
	nop			;5548
	nop			;5549
	nop			;554a
	nop			;554b
	nop			;554c
	nop			;554d
	nop			;554e
	nop			;554f
	nop			;5550
	nop			;5551
	nop			;5552
	nop			;5553
	nop			;5554
	nop			;5555
	nop			;5556
	nop			;5557
	nop			;5558
	nop			;5559
	nop			;555a
	nop			;555b
	nop			;555c
	nop			;555d
	nop			;555e
	nop			;555f
	nop			;5560
	nop			;5561
	nop			;5562
	nop			;5563
	nop			;5564
	nop			;5565
	nop			;5566
	nop			;5567
	nop			;5568
	nop			;5569
	nop			;556a
	nop			;556b
	nop			;556c
	nop			;556d
	nop			;556e
	nop			;556f
	nop			;5570
	nop			;5571
	nop			;5572
	nop			;5573
	nop			;5574
	nop			;5575
	nop			;5576
	nop			;5577
	nop			;5578
	nop			;5579
	nop			;557a
	nop			;557b
	nop			;557c
	nop			;557d
	nop			;557e
	nop			;557f
	nop			;5580
	nop			;5581
	nop			;5582
	nop			;5583
	nop			;5584
	nop			;5585
	nop			;5586
	nop			;5587
	nop			;5588
	nop			;5589
	nop			;558a
	nop			;558b
	nop			;558c
	nop			;558d
	nop			;558e
	nop			;558f
	nop			;5590
	nop			;5591
	nop			;5592
	nop			;5593
	nop			;5594
	nop			;5595
	nop			;5596
	nop			;5597
	nop			;5598
	nop			;5599
	nop			;559a
	nop			;559b
	nop			;559c
	nop			;559d
	nop			;559e
	nop			;559f
	nop			;55a0
	nop			;55a1
	nop			;55a2
	nop			;55a3
	nop			;55a4
	nop			;55a5
	nop			;55a6
	nop			;55a7
	nop			;55a8
	nop			;55a9
	nop			;55aa
	nop			;55ab
	nop			;55ac
	nop			;55ad
	nop			;55ae
	nop			;55af
	nop			;55b0
	nop			;55b1
	nop			;55b2
	nop			;55b3
	nop			;55b4
	nop			;55b5
	nop			;55b6
	nop			;55b7
	nop			;55b8
	nop			;55b9
	nop			;55ba
	nop			;55bb
	nop			;55bc
	nop			;55bd
	nop			;55be
	nop			;55bf
	nop			;55c0
	nop			;55c1
	nop			;55c2
	nop			;55c3
	nop			;55c4
	nop			;55c5
	nop			;55c6
	nop			;55c7
	nop			;55c8
	nop			;55c9
	nop			;55ca
	nop			;55cb
	nop			;55cc
	nop			;55cd
	nop			;55ce
	nop			;55cf
	nop			;55d0
	nop			;55d1
	nop			;55d2
	nop			;55d3
	nop			;55d4
	nop			;55d5
	nop			;55d6
	nop			;55d7
	nop			;55d8
	nop			;55d9
	nop			;55da
	nop			;55db
	nop			;55dc
	nop			;55dd
	nop			;55de
	nop			;55df
	nop			;55e0
	nop			;55e1
	nop			;55e2
	nop			;55e3
	nop			;55e4
	nop			;55e5
	nop			;55e6
	nop			;55e7
	nop			;55e8
	nop			;55e9
	nop			;55ea
	nop			;55eb
	nop			;55ec
	nop			;55ed
	nop			;55ee
	nop			;55ef
	nop			;55f0
	nop			;55f1
	nop			;55f2
	nop			;55f3
	nop			;55f4
	nop			;55f5
	nop			;55f6
	nop			;55f7
	nop			;55f8
	nop			;55f9
	nop			;55fa
	nop			;55fb
	nop			;55fc
	nop			;55fd
	nop			;55fe
	nop			;55ff
	nop			;5600
	nop			;5601
	nop			;5602
	nop			;5603
	nop			;5604
	nop			;5605
	nop			;5606
	nop			;5607
	nop			;5608
	nop			;5609
	nop			;560a
	nop			;560b
	nop			;560c
	nop			;560d
	nop			;560e
	nop			;560f
	nop			;5610
	nop			;5611
	nop			;5612
	nop			;5613
	nop			;5614
	nop			;5615
	nop			;5616
	nop			;5617
	nop			;5618
	nop			;5619
	nop			;561a
	nop			;561b
	nop			;561c
	nop			;561d
	nop			;561e
	nop			;561f
	nop			;5620
	nop			;5621
	nop			;5622
	nop			;5623
	nop			;5624
	nop			;5625
	nop			;5626
	nop			;5627
	nop			;5628
	nop			;5629
	nop			;562a
	nop			;562b
	nop			;562c
	nop			;562d
	nop			;562e
	nop			;562f
	nop			;5630
	nop			;5631
	nop			;5632
	nop			;5633
	nop			;5634
	nop			;5635
	nop			;5636
	nop			;5637
	nop			;5638
	nop			;5639
	nop			;563a
	nop			;563b
	nop			;563c
	nop			;563d
	nop			;563e
	nop			;563f
	nop			;5640
	nop			;5641
	nop			;5642
	nop			;5643
	nop			;5644
	nop			;5645
	nop			;5646
	nop			;5647
	nop			;5648
	nop			;5649
	nop			;564a
	nop			;564b
	nop			;564c
	nop			;564d
	nop			;564e
	nop			;564f
	nop			;5650
	nop			;5651
	nop			;5652
	nop			;5653
	nop			;5654
	nop			;5655
	nop			;5656
	nop			;5657
	nop			;5658
	nop			;5659
	nop			;565a
	nop			;565b
	nop			;565c
	nop			;565d
	nop			;565e
	nop			;565f
	nop			;5660
	nop			;5661
	nop			;5662
	nop			;5663
	nop			;5664
	nop			;5665
	nop			;5666
	nop			;5667
	nop			;5668
	nop			;5669
	nop			;566a
	nop			;566b
	nop			;566c
	nop			;566d
	nop			;566e
	nop			;566f
	nop			;5670
	nop			;5671
	nop			;5672
	nop			;5673
	nop			;5674
	nop			;5675
	nop			;5676
	nop			;5677
	nop			;5678
	nop			;5679
	nop			;567a
	nop			;567b
	nop			;567c
	nop			;567d
	nop			;567e
	nop			;567f
	nop			;5680
	nop			;5681
	nop			;5682
	nop			;5683
	nop			;5684
	nop			;5685
	nop			;5686
	nop			;5687
	nop			;5688
	nop			;5689
	nop			;568a
	nop			;568b
	nop			;568c
	nop			;568d
	nop			;568e
	nop			;568f
	nop			;5690
	nop			;5691
	nop			;5692
	nop			;5693
	nop			;5694
	nop			;5695
	nop			;5696
	nop			;5697
	nop			;5698
	nop			;5699
	nop			;569a
	nop			;569b
	nop			;569c
	nop			;569d
	nop			;569e
	nop			;569f
	nop			;56a0
	nop			;56a1
	nop			;56a2
	nop			;56a3
	nop			;56a4
	nop			;56a5
	nop			;56a6
	nop			;56a7
	nop			;56a8
	nop			;56a9
	nop			;56aa
	nop			;56ab
	nop			;56ac
	nop			;56ad
	nop			;56ae
	nop			;56af
	nop			;56b0
	nop			;56b1
	nop			;56b2
	nop			;56b3
	nop			;56b4
	nop			;56b5
	nop			;56b6
	nop			;56b7
	nop			;56b8
	nop			;56b9
	nop			;56ba
	nop			;56bb
	nop			;56bc
	nop			;56bd
	nop			;56be
	nop			;56bf
	nop			;56c0
	nop			;56c1
	nop			;56c2
	nop			;56c3
	nop			;56c4
	nop			;56c5
	nop			;56c6
	nop			;56c7
	nop			;56c8
	nop			;56c9
	nop			;56ca
	nop			;56cb
	nop			;56cc
	nop			;56cd
	nop			;56ce
	nop			;56cf
	nop			;56d0
	nop			;56d1
	nop			;56d2
	nop			;56d3
	nop			;56d4
	nop			;56d5
	nop			;56d6
	nop			;56d7
	nop			;56d8
	nop			;56d9
	nop			;56da
	nop			;56db
	nop			;56dc
	nop			;56dd
	nop			;56de
	nop			;56df
	nop			;56e0
	nop			;56e1
	nop			;56e2
	nop			;56e3
	nop			;56e4
	nop			;56e5
	nop			;56e6
	nop			;56e7
	nop			;56e8
	nop			;56e9
	nop			;56ea
	nop			;56eb
	nop			;56ec
	nop			;56ed
	nop			;56ee
	nop			;56ef
	nop			;56f0
	nop			;56f1
	nop			;56f2
	nop			;56f3
	nop			;56f4
	nop			;56f5
	nop			;56f6
	nop			;56f7
	nop			;56f8
	nop			;56f9
	nop			;56fa
	nop			;56fb
	nop			;56fc
	nop			;56fd
	nop			;56fe
	nop			;56ff
	nop			;5700
	nop			;5701
	nop			;5702
	nop			;5703
	nop			;5704
	nop			;5705
	nop			;5706
	nop			;5707
	nop			;5708
	nop			;5709
	nop			;570a
	nop			;570b
	nop			;570c
	nop			;570d
	nop			;570e
	nop			;570f
	nop			;5710
	nop			;5711
	nop			;5712
	nop			;5713
	nop			;5714
	nop			;5715
	nop			;5716
	nop			;5717
	nop			;5718
	nop			;5719
	nop			;571a
	nop			;571b
	nop			;571c
	nop			;571d
	nop			;571e
	nop			;571f
	nop			;5720
	nop			;5721
	nop			;5722
	nop			;5723
	nop			;5724
	nop			;5725
	nop			;5726
	nop			;5727
	nop			;5728
	nop			;5729
	nop			;572a
	nop			;572b
	nop			;572c
	nop			;572d
	nop			;572e
	nop			;572f
	nop			;5730
	nop			;5731
	nop			;5732
	nop			;5733
	nop			;5734
	nop			;5735
	nop			;5736
	nop			;5737
	nop			;5738
	nop			;5739
	nop			;573a
	nop			;573b
	nop			;573c
	nop			;573d
	nop			;573e
	nop			;573f
	nop			;5740
	nop			;5741
	nop			;5742
	nop			;5743
	nop			;5744
	nop			;5745
	nop			;5746
	nop			;5747
	nop			;5748
	nop			;5749
	nop			;574a
	nop			;574b
	nop			;574c
	nop			;574d
	nop			;574e
	nop			;574f
	nop			;5750
	nop			;5751
	nop			;5752
	nop			;5753
	nop			;5754
	nop			;5755
	nop			;5756
	nop			;5757
	nop			;5758
	nop			;5759
	nop			;575a
	nop			;575b
	nop			;575c
	nop			;575d
	nop			;575e
	nop			;575f
	nop			;5760
	nop			;5761
	nop			;5762
	nop			;5763
	nop			;5764
	nop			;5765
	nop			;5766
	nop			;5767
	nop			;5768
	nop			;5769
	nop			;576a
	nop			;576b
	nop			;576c
	nop			;576d
	nop			;576e
	nop			;576f
	nop			;5770
	nop			;5771
	nop			;5772
	nop			;5773
	nop			;5774
	nop			;5775
	nop			;5776
	nop			;5777
	nop			;5778
	nop			;5779
	nop			;577a
	nop			;577b
	nop			;577c
	nop			;577d
	nop			;577e
	nop			;577f
	nop			;5780
	nop			;5781
	nop			;5782
	nop			;5783
	nop			;5784
	nop			;5785
	nop			;5786
	nop			;5787
	nop			;5788
	nop			;5789
	nop			;578a
	nop			;578b
	nop			;578c
	nop			;578d
	nop			;578e
	nop			;578f
	nop			;5790
	nop			;5791
	nop			;5792
	nop			;5793
	nop			;5794
	nop			;5795
	nop			;5796
	nop			;5797
	nop			;5798
	nop			;5799
	nop			;579a
	nop			;579b
	nop			;579c
	nop			;579d
	nop			;579e
	nop			;579f
	nop			;57a0
	nop			;57a1
	nop			;57a2
	nop			;57a3
	nop			;57a4
	nop			;57a5
	nop			;57a6
	nop			;57a7
	nop			;57a8
	nop			;57a9
	nop			;57aa
	nop			;57ab
	nop			;57ac
	nop			;57ad
	nop			;57ae
	nop			;57af
	nop			;57b0
	nop			;57b1
	nop			;57b2
	nop			;57b3
	nop			;57b4
	nop			;57b5
	nop			;57b6
	nop			;57b7
	nop			;57b8
	nop			;57b9
	nop			;57ba
	nop			;57bb
	nop			;57bc
	nop			;57bd
	nop			;57be
	nop			;57bf
	nop			;57c0
	nop			;57c1
	nop			;57c2
	nop			;57c3
	nop			;57c4
	nop			;57c5
	nop			;57c6
	nop			;57c7
	nop			;57c8
	nop			;57c9
	nop			;57ca
	nop			;57cb
	nop			;57cc
	nop			;57cd
	nop			;57ce
	nop			;57cf
	nop			;57d0
	nop			;57d1
	nop			;57d2
	nop			;57d3
	nop			;57d4
	nop			;57d5
	nop			;57d6
	nop			;57d7
	nop			;57d8
	nop			;57d9
	nop			;57da
	nop			;57db
	nop			;57dc
	nop			;57dd
	nop			;57de
	nop			;57df
	nop			;57e0
	nop			;57e1
	nop			;57e2
	nop			;57e3
	nop			;57e4
	nop			;57e5
	nop			;57e6
	nop			;57e7
	nop			;57e8
	nop			;57e9
	nop			;57ea
	nop			;57eb
	nop			;57ec
	nop			;57ed
	nop			;57ee
	nop			;57ef
	nop			;57f0
	nop			;57f1
	nop			;57f2
	nop			;57f3
	nop			;57f4
	nop			;57f5
	nop			;57f6
	nop			;57f7
	nop			;57f8
	nop			;57f9
	nop			;57fa
	nop			;57fb
	nop			;57fc
	nop			;57fd
	nop			;57fe
	nop			;57ff
	nop			;5800
	nop			;5801
	nop			;5802
	nop			;5803
	nop			;5804
	nop			;5805
	nop			;5806
	nop			;5807
	nop			;5808
	nop			;5809
	nop			;580a
	nop			;580b
	nop			;580c
	nop			;580d
	nop			;580e
	nop			;580f
	nop			;5810
	nop			;5811
	nop			;5812
	nop			;5813
	nop			;5814
	nop			;5815
	nop			;5816
	nop			;5817
	nop			;5818
	nop			;5819
	nop			;581a
	nop			;581b
	nop			;581c
	nop			;581d
	nop			;581e
	nop			;581f
	nop			;5820
	nop			;5821
	nop			;5822
	nop			;5823
	nop			;5824
	nop			;5825
	nop			;5826
	nop			;5827
	nop			;5828
	nop			;5829
	nop			;582a
	nop			;582b
	nop			;582c
	nop			;582d
	nop			;582e
	nop			;582f
	nop			;5830
	nop			;5831
	nop			;5832
	nop			;5833
	nop			;5834
	nop			;5835
	nop			;5836
	nop			;5837
	nop			;5838
	nop			;5839
	nop			;583a
	nop			;583b
	nop			;583c
	nop			;583d
	nop			;583e
	nop			;583f
	nop			;5840
	nop			;5841
	nop			;5842
	nop			;5843
	nop			;5844
	nop			;5845
	nop			;5846
	nop			;5847
	nop			;5848
	nop			;5849
	nop			;584a
	nop			;584b
	nop			;584c
	nop			;584d
	nop			;584e
	nop			;584f
	nop			;5850
	nop			;5851
	nop			;5852
	nop			;5853
	nop			;5854
	nop			;5855
	nop			;5856
	nop			;5857
	nop			;5858
	nop			;5859
	nop			;585a
	nop			;585b
	nop			;585c
	nop			;585d
	nop			;585e
	nop			;585f
	nop			;5860
	nop			;5861
	nop			;5862
	nop			;5863
	nop			;5864
	nop			;5865
	nop			;5866
	nop			;5867
	nop			;5868
	nop			;5869
	nop			;586a
	nop			;586b
	nop			;586c
	nop			;586d
	nop			;586e
	nop			;586f
	nop			;5870
	nop			;5871
	nop			;5872
	nop			;5873
	nop			;5874
	nop			;5875
	nop			;5876
	nop			;5877
	nop			;5878
	nop			;5879
	nop			;587a
	nop			;587b
	nop			;587c
	nop			;587d
	nop			;587e
	nop			;587f
	nop			;5880
	nop			;5881
	nop			;5882
	nop			;5883
	nop			;5884
	nop			;5885
	nop			;5886
	nop			;5887
	nop			;5888
	nop			;5889
	nop			;588a
	nop			;588b
	nop			;588c
	nop			;588d
	nop			;588e
	nop			;588f
	nop			;5890
	nop			;5891
	nop			;5892
	nop			;5893
	nop			;5894
	nop			;5895
	nop			;5896
	nop			;5897
	nop			;5898
	nop			;5899
	nop			;589a
	nop			;589b
	nop			;589c
	nop			;589d
	nop			;589e
	nop			;589f
	nop			;58a0
	nop			;58a1
	nop			;58a2
	nop			;58a3
	nop			;58a4
	nop			;58a5
	nop			;58a6
	nop			;58a7
	nop			;58a8
	nop			;58a9
	nop			;58aa
	nop			;58ab
	nop			;58ac
	nop			;58ad
	nop			;58ae
	nop			;58af
	nop			;58b0
	nop			;58b1
	nop			;58b2
	nop			;58b3
	nop			;58b4
	nop			;58b5
	nop			;58b6
	nop			;58b7
	nop			;58b8
	nop			;58b9
	nop			;58ba
	nop			;58bb
	nop			;58bc
	nop			;58bd
	nop			;58be
	nop			;58bf
	nop			;58c0
	nop			;58c1
	nop			;58c2
	nop			;58c3
	nop			;58c4
	nop			;58c5
	nop			;58c6
	nop			;58c7
	nop			;58c8
	nop			;58c9
	nop			;58ca
	nop			;58cb
	nop			;58cc
	nop			;58cd
	nop			;58ce
	nop			;58cf
	nop			;58d0
	nop			;58d1
	nop			;58d2
	nop			;58d3
	nop			;58d4
	nop			;58d5
	nop			;58d6
	nop			;58d7
	nop			;58d8
	nop			;58d9
	nop			;58da
	nop			;58db
	nop			;58dc
	nop			;58dd
	nop			;58de
	nop			;58df
	nop			;58e0
	nop			;58e1
	nop			;58e2
	nop			;58e3
	nop			;58e4
	nop			;58e5
	nop			;58e6
	nop			;58e7
	nop			;58e8
	nop			;58e9
	nop			;58ea
	nop			;58eb
	nop			;58ec
	nop			;58ed
	nop			;58ee
	nop			;58ef
	nop			;58f0
	nop			;58f1
	nop			;58f2
	nop			;58f3
	nop			;58f4
	nop			;58f5
	nop			;58f6
	nop			;58f7
	nop			;58f8
	nop			;58f9
	nop			;58fa
	nop			;58fb
	nop			;58fc
	nop			;58fd
	nop			;58fe
	nop			;58ff
	nop			;5900
	nop			;5901
	nop			;5902
	nop			;5903
	nop			;5904
	nop			;5905
	nop			;5906
	nop			;5907
	nop			;5908
	nop			;5909
	nop			;590a
	nop			;590b
	nop			;590c
	nop			;590d
	nop			;590e
	nop			;590f
	nop			;5910
	nop			;5911
	nop			;5912
	nop			;5913
	nop			;5914
	nop			;5915
	nop			;5916
	nop			;5917
	nop			;5918
	nop			;5919
	nop			;591a
	nop			;591b
	nop			;591c
	nop			;591d
	nop			;591e
	nop			;591f
	nop			;5920
	nop			;5921
	nop			;5922
	nop			;5923
	nop			;5924
	nop			;5925
	nop			;5926
	nop			;5927
	nop			;5928
	nop			;5929
	nop			;592a
	nop			;592b
	nop			;592c
	nop			;592d
	nop			;592e
	nop			;592f
	nop			;5930
	nop			;5931
	nop			;5932
	nop			;5933
	nop			;5934
	nop			;5935
	nop			;5936
	nop			;5937
	nop			;5938
	nop			;5939
	nop			;593a
	nop			;593b
	nop			;593c
	nop			;593d
	nop			;593e
	nop			;593f
	nop			;5940
	nop			;5941
	nop			;5942
	nop			;5943
	nop			;5944
	nop			;5945
	nop			;5946
	nop			;5947
	nop			;5948
	nop			;5949
	nop			;594a
	nop			;594b
	nop			;594c
	nop			;594d
	nop			;594e
	nop			;594f
	nop			;5950
	nop			;5951
	nop			;5952
	nop			;5953
	nop			;5954
	nop			;5955
	nop			;5956
	nop			;5957
	nop			;5958
	nop			;5959
	nop			;595a
	nop			;595b
	nop			;595c
	nop			;595d
	nop			;595e
	nop			;595f
	nop			;5960
	nop			;5961
	nop			;5962
	nop			;5963
	nop			;5964
	nop			;5965
	nop			;5966
	nop			;5967
	nop			;5968
	nop			;5969
	nop			;596a
	nop			;596b
	nop			;596c
	nop			;596d
	nop			;596e
	nop			;596f
	nop			;5970
	nop			;5971
	nop			;5972
	nop			;5973
	nop			;5974
	nop			;5975
	nop			;5976
	nop			;5977
	nop			;5978
	nop			;5979
	nop			;597a
	nop			;597b
	nop			;597c
	nop			;597d
	nop			;597e
	nop			;597f
	nop			;5980
	nop			;5981
	nop			;5982
	nop			;5983
	nop			;5984
	nop			;5985
	nop			;5986
	nop			;5987
	nop			;5988
	nop			;5989
	nop			;598a
	nop			;598b
	nop			;598c
	nop			;598d
	nop			;598e
	nop			;598f
	nop			;5990
	nop			;5991
	nop			;5992
	nop			;5993
	nop			;5994
	nop			;5995
	nop			;5996
	nop			;5997
	nop			;5998
	nop			;5999
	nop			;599a
	nop			;599b
	nop			;599c
	nop			;599d
	nop			;599e
	nop			;599f
	nop			;59a0
	nop			;59a1
	nop			;59a2
	nop			;59a3
	nop			;59a4
	nop			;59a5
	nop			;59a6
	nop			;59a7
	nop			;59a8
	nop			;59a9
	nop			;59aa
	nop			;59ab
	nop			;59ac
	nop			;59ad
	nop			;59ae
	nop			;59af
	nop			;59b0
	nop			;59b1
	nop			;59b2
	nop			;59b3
	nop			;59b4
	nop			;59b5
	nop			;59b6
	nop			;59b7
	nop			;59b8
	nop			;59b9
	nop			;59ba
	nop			;59bb
	nop			;59bc
	nop			;59bd
	nop			;59be
	nop			;59bf
	nop			;59c0
	nop			;59c1
	nop			;59c2
	nop			;59c3
	nop			;59c4
	nop			;59c5
	nop			;59c6
	nop			;59c7
	nop			;59c8
	nop			;59c9
	nop			;59ca
	nop			;59cb
	nop			;59cc
	nop			;59cd
	nop			;59ce
	nop			;59cf
	nop			;59d0
	nop			;59d1
	nop			;59d2
	nop			;59d3
	nop			;59d4
	nop			;59d5
	nop			;59d6
	nop			;59d7
	nop			;59d8
	nop			;59d9
	nop			;59da
	nop			;59db
	nop			;59dc
	nop			;59dd
	nop			;59de
	nop			;59df
	nop			;59e0
	nop			;59e1
	nop			;59e2
	nop			;59e3
	nop			;59e4
	nop			;59e5
	nop			;59e6
	nop			;59e7
	nop			;59e8
	nop			;59e9
	nop			;59ea
	nop			;59eb
	nop			;59ec
	nop			;59ed
	nop			;59ee
	nop			;59ef
	nop			;59f0
	nop			;59f1
	nop			;59f2
	nop			;59f3
	nop			;59f4
	nop			;59f5
	nop			;59f6
	nop			;59f7
	nop			;59f8
	nop			;59f9
	nop			;59fa
	nop			;59fb
	nop			;59fc
	nop			;59fd
	nop			;59fe
	nop			;59ff
	nop			;5a00
	nop			;5a01
	nop			;5a02
	nop			;5a03
	nop			;5a04
	nop			;5a05
	nop			;5a06
	nop			;5a07
	nop			;5a08
	nop			;5a09
	nop			;5a0a
	nop			;5a0b
	nop			;5a0c
	nop			;5a0d
	nop			;5a0e
	nop			;5a0f
	nop			;5a10
	nop			;5a11
	nop			;5a12
	nop			;5a13
	nop			;5a14
	nop			;5a15
	nop			;5a16
	nop			;5a17
	nop			;5a18
	nop			;5a19
	nop			;5a1a
	nop			;5a1b
	nop			;5a1c
	nop			;5a1d
	nop			;5a1e
	nop			;5a1f
	nop			;5a20
	nop			;5a21
	nop			;5a22
	nop			;5a23
	nop			;5a24
	nop			;5a25
	nop			;5a26
	nop			;5a27
	nop			;5a28
	nop			;5a29
	nop			;5a2a
	nop			;5a2b
	nop			;5a2c
	nop			;5a2d
	nop			;5a2e
	nop			;5a2f
	nop			;5a30
	nop			;5a31
	nop			;5a32
	nop			;5a33
	nop			;5a34
	nop			;5a35
	nop			;5a36
	nop			;5a37
	nop			;5a38
	nop			;5a39
	nop			;5a3a
	nop			;5a3b
	nop			;5a3c
	nop			;5a3d
	nop			;5a3e
	nop			;5a3f
	nop			;5a40
	nop			;5a41
	nop			;5a42
	nop			;5a43
	nop			;5a44
	nop			;5a45
	nop			;5a46
	nop			;5a47
	nop			;5a48
	nop			;5a49
	nop			;5a4a
	nop			;5a4b
	nop			;5a4c
	nop			;5a4d
	nop			;5a4e
	nop			;5a4f
	nop			;5a50
	nop			;5a51
	nop			;5a52
	nop			;5a53
	nop			;5a54
	nop			;5a55
	nop			;5a56
	nop			;5a57
	nop			;5a58
	nop			;5a59
	nop			;5a5a
	nop			;5a5b
	nop			;5a5c
	nop			;5a5d
	nop			;5a5e
	nop			;5a5f
	nop			;5a60
	nop			;5a61
	nop			;5a62
	nop			;5a63
	nop			;5a64
	nop			;5a65
	nop			;5a66
	nop			;5a67
	nop			;5a68
	nop			;5a69
	nop			;5a6a
	nop			;5a6b
	nop			;5a6c
	nop			;5a6d
	nop			;5a6e
	nop			;5a6f
	nop			;5a70
	nop			;5a71
	nop			;5a72
	nop			;5a73
	nop			;5a74
	nop			;5a75
	nop			;5a76
	nop			;5a77
	nop			;5a78
	nop			;5a79
	nop			;5a7a
	nop			;5a7b
	nop			;5a7c
	nop			;5a7d
	nop			;5a7e
	nop			;5a7f
	nop			;5a80
	nop			;5a81
	nop			;5a82
	nop			;5a83
	nop			;5a84
	nop			;5a85
	nop			;5a86
	nop			;5a87
	nop			;5a88
	nop			;5a89
	nop			;5a8a
	nop			;5a8b
	nop			;5a8c
	nop			;5a8d
	nop			;5a8e
	nop			;5a8f
	nop			;5a90
	nop			;5a91
	nop			;5a92
	nop			;5a93
	nop			;5a94
	nop			;5a95
	nop			;5a96
	nop			;5a97
	nop			;5a98
	nop			;5a99
	nop			;5a9a
	nop			;5a9b
	nop			;5a9c
	nop			;5a9d
	nop			;5a9e
	nop			;5a9f
	nop			;5aa0
	nop			;5aa1
	nop			;5aa2
	nop			;5aa3
	nop			;5aa4
	nop			;5aa5
	nop			;5aa6
	nop			;5aa7
	nop			;5aa8
	nop			;5aa9
	nop			;5aaa
	nop			;5aab
	nop			;5aac
	nop			;5aad
	nop			;5aae
	nop			;5aaf
	nop			;5ab0
	nop			;5ab1
	nop			;5ab2
	nop			;5ab3
	nop			;5ab4
	nop			;5ab5
	nop			;5ab6
	nop			;5ab7
	nop			;5ab8
	nop			;5ab9
	nop			;5aba
	nop			;5abb
	nop			;5abc
	nop			;5abd
	nop			;5abe
	nop			;5abf
	nop			;5ac0
	nop			;5ac1
	nop			;5ac2
	nop			;5ac3
	nop			;5ac4
	nop			;5ac5
	nop			;5ac6
	nop			;5ac7
	nop			;5ac8
	nop			;5ac9
	nop			;5aca
	nop			;5acb
	nop			;5acc
	nop			;5acd
	nop			;5ace
	nop			;5acf
	nop			;5ad0
	nop			;5ad1
	nop			;5ad2
	nop			;5ad3
	nop			;5ad4
	nop			;5ad5
	nop			;5ad6
	nop			;5ad7
	nop			;5ad8
	nop			;5ad9
	nop			;5ada
	nop			;5adb
	nop			;5adc
	nop			;5add
	nop			;5ade
	nop			;5adf
	nop			;5ae0
	nop			;5ae1
	nop			;5ae2
	nop			;5ae3
	nop			;5ae4
	nop			;5ae5
	nop			;5ae6
	nop			;5ae7
	nop			;5ae8
	nop			;5ae9
	nop			;5aea
	nop			;5aeb
	nop			;5aec
	nop			;5aed
	nop			;5aee
	nop			;5aef
	nop			;5af0
	nop			;5af1
	nop			;5af2
	nop			;5af3
	nop			;5af4
	nop			;5af5
	nop			;5af6
	nop			;5af7
	nop			;5af8
	nop			;5af9
	nop			;5afa
	nop			;5afb
	nop			;5afc
	nop			;5afd
	nop			;5afe
	nop			;5aff
	nop			;5b00
	nop			;5b01
	nop			;5b02
	nop			;5b03
	nop			;5b04
	nop			;5b05
	nop			;5b06
	nop			;5b07
	nop			;5b08
	nop			;5b09
	nop			;5b0a
	nop			;5b0b
	nop			;5b0c
	nop			;5b0d
	nop			;5b0e
	nop			;5b0f
	nop			;5b10
	nop			;5b11
	nop			;5b12
	nop			;5b13
	nop			;5b14
	nop			;5b15
	nop			;5b16
	nop			;5b17
	nop			;5b18
	nop			;5b19
	nop			;5b1a
	nop			;5b1b
	nop			;5b1c
	nop			;5b1d
	nop			;5b1e
	nop			;5b1f
	nop			;5b20
	nop			;5b21
	nop			;5b22
	nop			;5b23
	nop			;5b24
	nop			;5b25
	nop			;5b26
	nop			;5b27
	nop			;5b28
	nop			;5b29
	nop			;5b2a
	nop			;5b2b
	nop			;5b2c
	nop			;5b2d
	nop			;5b2e
	nop			;5b2f
	nop			;5b30
	nop			;5b31
	nop			;5b32
	nop			;5b33
	nop			;5b34
	nop			;5b35
	nop			;5b36
	nop			;5b37
	nop			;5b38
	nop			;5b39
	nop			;5b3a
	nop			;5b3b
	nop			;5b3c
	nop			;5b3d
	nop			;5b3e
	nop			;5b3f
	nop			;5b40
	nop			;5b41
	nop			;5b42
	nop			;5b43
	nop			;5b44
	nop			;5b45
	nop			;5b46
	nop			;5b47
	nop			;5b48
	nop			;5b49
	nop			;5b4a
	nop			;5b4b
	nop			;5b4c
	nop			;5b4d
	nop			;5b4e
	nop			;5b4f
	nop			;5b50
	nop			;5b51
	nop			;5b52
	nop			;5b53
	nop			;5b54
	nop			;5b55
	nop			;5b56
	nop			;5b57
	nop			;5b58
	nop			;5b59
	nop			;5b5a
	nop			;5b5b
	nop			;5b5c
	nop			;5b5d
	nop			;5b5e
	nop			;5b5f
	nop			;5b60
	nop			;5b61
	nop			;5b62
	nop			;5b63
	nop			;5b64
	nop			;5b65
	nop			;5b66
	nop			;5b67
	nop			;5b68
	nop			;5b69
	nop			;5b6a
	nop			;5b6b
	nop			;5b6c
	nop			;5b6d
	nop			;5b6e
	nop			;5b6f
	nop			;5b70
	nop			;5b71
	nop			;5b72
	nop			;5b73
	nop			;5b74
	nop			;5b75
	nop			;5b76
	nop			;5b77
	nop			;5b78
	nop			;5b79
	nop			;5b7a
	nop			;5b7b
	nop			;5b7c
	nop			;5b7d
	nop			;5b7e
	nop			;5b7f
	nop			;5b80
	nop			;5b81
	nop			;5b82
	nop			;5b83
	nop			;5b84
	nop			;5b85
	nop			;5b86
	nop			;5b87
	nop			;5b88
	nop			;5b89
	nop			;5b8a
	nop			;5b8b
	nop			;5b8c
	nop			;5b8d
	nop			;5b8e
	nop			;5b8f
	nop			;5b90
	nop			;5b91
	nop			;5b92
	nop			;5b93
	nop			;5b94
	nop			;5b95
	nop			;5b96
	nop			;5b97
	nop			;5b98
	nop			;5b99
	nop			;5b9a
	nop			;5b9b
	nop			;5b9c
	nop			;5b9d
	nop			;5b9e
	nop			;5b9f
	nop			;5ba0
	nop			;5ba1
	nop			;5ba2
	nop			;5ba3
	nop			;5ba4
	nop			;5ba5
	nop			;5ba6
	nop			;5ba7
	nop			;5ba8
	nop			;5ba9
	nop			;5baa
	nop			;5bab
	nop			;5bac
	nop			;5bad
	nop			;5bae
	nop			;5baf
	nop			;5bb0
	nop			;5bb1
	nop			;5bb2
	nop			;5bb3
	nop			;5bb4
	nop			;5bb5
	nop			;5bb6
	nop			;5bb7
	nop			;5bb8
	nop			;5bb9
	nop			;5bba
	nop			;5bbb
	nop			;5bbc
	nop			;5bbd
	nop			;5bbe
	nop			;5bbf
	nop			;5bc0
	nop			;5bc1
	nop			;5bc2
	nop			;5bc3
	nop			;5bc4
	nop			;5bc5
	nop			;5bc6
	nop			;5bc7
	nop			;5bc8
	nop			;5bc9
	nop			;5bca
	nop			;5bcb
	nop			;5bcc
	nop			;5bcd
	nop			;5bce
	nop			;5bcf
	nop			;5bd0
	nop			;5bd1
	nop			;5bd2
	nop			;5bd3
	nop			;5bd4
	nop			;5bd5
	nop			;5bd6
	nop			;5bd7
	nop			;5bd8
	nop			;5bd9
	nop			;5bda
	nop			;5bdb
	nop			;5bdc
	nop			;5bdd
	nop			;5bde
	nop			;5bdf
	nop			;5be0
	nop			;5be1
	nop			;5be2
	nop			;5be3
	nop			;5be4
	nop			;5be5
	nop			;5be6
	nop			;5be7
	nop			;5be8
	nop			;5be9
	nop			;5bea
	nop			;5beb
	nop			;5bec
	nop			;5bed
	nop			;5bee
	nop			;5bef
	nop			;5bf0
	nop			;5bf1
	nop			;5bf2
	nop			;5bf3
	nop			;5bf4
	nop			;5bf5
	nop			;5bf6
	nop			;5bf7
	nop			;5bf8
	nop			;5bf9
	nop			;5bfa
	nop			;5bfb
	nop			;5bfc
	nop			;5bfd
	nop			;5bfe
	nop			;5bff
	jr $+62		;5c00
	sub a			;5c02
	inc hl			;5c03
	jp 00283h		;5c04
	ld c,002h		;5c07
	ld e,01bh		;5c09
	call 00005h		;5c0b
	ld c,002h		;5c0e
	ld e,050h		;5c10
	call 00005h		;5c12
	ld a,01bh		;5c15
	ld (009d5h),a		;5c17
	ret			;5c1a
	ld c,002h		;5c1b
	ld e,01bh		;5c1d
	call 00005h		;5c1f
	ld c,002h		;5c22
	ld e,04fh		;5c24
	call 00005h		;5c26
	ld a,007h		;5c29
	ld (009d5h),a		;5c2b
	ret			;5c2e
	ld (hl),h			;5c2f
	ld h,l			;5c30
	ld h,c			;5c31
	ld l,h			;5c32
	call 002eeh		;5c33
	call 008d1h		;5c36
	call 00e89h		;5c39
	jr $-9		;5c3c
	jp 001f2h		;5c3e
	nop			;5c41
	nop			;5c42
	nop			;5c43
	nop			;5c44
	nop			;5c45
	nop			;5c46
	nop			;5c47
	nop			;5c48
	nop			;5c49
	nop			;5c4a
	nop			;5c4b
	nop			;5c4c
	nop			;5c4d
	nop			;5c4e
	nop			;5c4f
	nop			;5c50
	nop			;5c51
	nop			;5c52
	nop			;5c53
	nop			;5c54
	nop			;5c55
	nop			;5c56
	nop			;5c57
	nop			;5c58
	nop			;5c59
	nop			;5c5a
	nop			;5c5b
	nop			;5c5c
	nop			;5c5d
	nop			;5c5e
	nop			;5c5f
	nop			;5c60
	nop			;5c61
	nop			;5c62
	nop			;5c63
	nop			;5c64
	nop			;5c65
	nop			;5c66
	nop			;5c67
	nop			;5c68
	nop			;5c69
	nop			;5c6a
	nop			;5c6b
	nop			;5c6c
	nop			;5c6d
	nop			;5c6e
	nop			;5c6f
	nop			;5c70
	nop			;5c71
	nop			;5c72
	nop			;5c73
	nop			;5c74
	nop			;5c75
	nop			;5c76
	nop			;5c77
	nop			;5c78
	nop			;5c79
	nop			;5c7a
	nop			;5c7b
	nop			;5c7c
	nop			;5c7d
	nop			;5c7e
	nop			;5c7f
	nop			;5c80
	nop			;5c81
	nop			;5c82
	nop			;5c83
	nop			;5c84
	nop			;5c85
	nop			;5c86
	nop			;5c87
	nop			;5c88
	nop			;5c89
	nop			;5c8a
	nop			;5c8b
	nop			;5c8c
	nop			;5c8d
	nop			;5c8e
	nop			;5c8f
	nop			;5c90
	nop			;5c91
	nop			;5c92
	nop			;5c93
	nop			;5c94
	nop			;5c95
	nop			;5c96
	nop			;5c97
	nop			;5c98
	nop			;5c99
	nop			;5c9a
	nop			;5c9b
	nop			;5c9c
	nop			;5c9d
	nop			;5c9e
	nop			;5c9f
	nop			;5ca0
	nop			;5ca1
	nop			;5ca2
	nop			;5ca3
	nop			;5ca4
	nop			;5ca5
	nop			;5ca6
	nop			;5ca7
	nop			;5ca8
	nop			;5ca9
	nop			;5caa
	nop			;5cab
	nop			;5cac
	nop			;5cad
	nop			;5cae
	nop			;5caf
	nop			;5cb0
	nop			;5cb1
	nop			;5cb2
	nop			;5cb3
	nop			;5cb4
	nop			;5cb5
	nop			;5cb6
	nop			;5cb7
	nop			;5cb8
	nop			;5cb9
	nop			;5cba
	nop			;5cbb
	nop			;5cbc
	nop			;5cbd
	nop			;5cbe
	nop			;5cbf
	nop			;5cc0
	nop			;5cc1
	nop			;5cc2
	nop			;5cc3
	nop			;5cc4
	nop			;5cc5
	nop			;5cc6
	nop			;5cc7
	nop			;5cc8
	nop			;5cc9
	nop			;5cca
	nop			;5ccb
	ldir		;5ccc
	ld hl,00141h		;5cce
	ld de,00e89h		;5cd1
	push de			;5cd4
	call 00c56h		;5cd5
	or a			;5cd8
	jp nz,00000h		;5cd9
	pop hl			;5cdc
	ex de,hl			;5cdd
	sbc hl,de		;5cde
	push hl			;5ce0
	ld hl,0014eh		;5ce1
	ld de,00080h		;5ce4
	ld b,d			;5ce7
	ld c,e			;5ce8
	ldir		;5ce9
	ld hl,00e89h		;5ceb
	pop bc			;5cee
	jp 000feh		;5cef
	ld a,(023c7h)		;5cf2
	ld (02262h),a		;5cf5
	inc a			;5cf8
	ld (02260h),a		;5cf9
	ld a,(023c8h)		;5cfc
	ld (0225fh),a		;5cff
	ld a,(023c9h)		;5d02
	ld hl,0225fh		;5d05
	add a,(hl)			;5d08
	dec a			;5d09
	ld (0225eh),a		;5d0a
	ld a,(023cah)		;5d0d
	ld hl,02260h		;5d10
	add a,(hl)			;5d13
	sub 003h		;5d14
	ld (02261h),a		;5d16
	inc a			;5d19
	ld (02263h),a		;5d1a
	ld hl,(00006h)		;5d1d
	ld sp,hl			;5d20
	dec h			;5d21
	ld (0225ch),hl		;5d22
	ld (02304h),hl		;5d25
	ld hl,00080h		;5d28
	ld a,(hl)			;5d2b
	add a,l			;5d2c
	ld l,a			;5d2d
	inc hl			;5d2e
	ld (hl),000h		;5d2f
	ld hl,00081h		;5d31
	ld de,(02315h)		;5d34
	push de			;5d38
	ld b,00fh		;5d39
	call 002d3h		;5d3b
	ld de,02317h		;5d3e
	ld b,005h		;5d41
	call 002d3h		;5d43
	pop de			;5d46
	ld bc,(023c3h)		;5d47
	push bc			;5d4b
	ld hl,(0225ch)		;5d4c
	sbc hl,bc		;5d4f
	ld b,h			;5d51
	ld c,l			;5d52
	pop hl			;5d53
	push hl			;5d54
	ex de,hl			;5d55
	call 00c59h		;5d56
	pop hl			;5d59
	cp 002h		;5d5a
	jr nz,$+8		;5d5c
	dec a			;5d5e
	call 005dfh		;5d5f
	jr $+103		;5d62
	dec hl			;5d64
	ld (hl),0ffh		;5d65
	inc hl			;5d67
	ld (02302h),de		;5d68
	xor a			;5d6c
	ld (de),a			;5d6d
	ld a,(023d9h)		;5d6e
	or a			;5d71
	jr z,$+17		;5d72
	ld hl,023ebh		;5d74
	ld a,(hl)			;5d77
	inc hl			;5d78
	or a			;5d79
	jr nz,$+6		;5d7a
	call 0241ch		;5d7c
	scf			;5d7f
	call nc,0088ch		;5d80
	ld ix,02264h		;5d83
	xor a			;5d87
	ld (ix+000h),a		;5d88
	ld (ix+001h),a		;5d8b
	ld (ix+002h),a		;5d8e
	set 1,(ix+000h)		;5d91
	ld (02301h),a		;5d95
	ld hl,00001h		;5d98
	ld (022fbh),hl		;5d9b
	ld a,(0225fh)		;5d9e
	ld c,a			;5da1
	ld a,(02260h)		;5da2
	ld b,a			;5da5
	ld hl,(023c3h)		;5da6
	ld d,h			;5da9
	ld e,l			;5daa
	ld (02306h),hl		;5dab
	jp 00133h		;5dae
	ld a,(023dah)		;5db1
	or a			;5db4
	jr z,$+17		;5db5
	ld hl,023f0h		;5db7
	ld a,(hl)			;5dba
	inc hl			;5dbb
	or a			;5dbc
	jr nz,$+6		;5dbd
	call 0241eh		;5dbf
	scf			;5dc2
	call nc,0088ch		;5dc3
	call 00874h		;5dc6
	ld a,(00141h)		;5dc9
	or a			;5dcc
	jp nz,001ceh		;5dcd
	jp 00c55h		;5dd0
	xor a			;5dd3
	ld (de),a			;5dd4
	ld a,(hl)			;5dd5
	or a			;5dd6
	ret z			;5dd7
	inc hl			;5dd8
	cp 020h		;5dd9
	jr z,$-6		;5ddb
	dec hl			;5ddd
	ld a,(hl)			;5dde
	ld (de),a			;5ddf
	inc de			;5de0
	or a			;5de1
	ret z			;5de2
	inc hl			;5de3
	cp 020h		;5de4
	jr z,$+4		;5de6
	djnz $-10		;5de8
	xor a			;5dea
	dec de			;5deb
	ld (de),a			;5dec
	ret			;5ded
	push hl			;5dee
	ld hl,02264h		;5def
	bit 1,(hl)		;5df2
	jr z,$+7		;5df4
	call 004d3h		;5df6
	jr $+35		;5df9
	bit 6,(ix+002h)		;5dfb
	jr z,$+11		;5dff
	call 003e7h		;5e01
	bit 3,(hl)		;5e04
	jr nz,$+8		;5e06
	jr $+15		;5e08
	bit 3,(hl)		;5e0a
	jr z,$+7		;5e0c
	call 00479h		;5e0e
	jr $+11		;5e11
	bit 6,(hl)		;5e13
	jr z,$+7		;5e15
	push de			;5e17
	call 0032ch		;5e18
	pop de			;5e1b
	call 00558h		;5e1c
	call 0084dh		;5e1f
	res 1,(hl)		;5e22
	res 3,(hl)		;5e24
	res 6,(ix+002h)		;5e26
	pop hl			;5e2a
	ret			;5e2b
	push hl			;5e2c
	push bc			;5e2d
	ld a,(0225fh)		;5e2e
	ld c,a			;5e31
	call 0084dh		;5e32
	ld a,(02301h)		;5e35
	or a			;5e38
	jr z,$+43		;5e39
	ld h,a			;5e3b
	ld a,(023ceh)		;5e3c
	ld l,a			;5e3f
	ld a,(023cdh)		;5e40
	ld b,a			;5e43
	ld a,(de)			;5e44
	inc de			;5e45
	cp 009h		;5e46
	jr z,$+22		;5e48
	cp 00dh		;5e4a
	jr z,$+91		;5e4c
	cp 001h		;5e4e
	call c,003afh		;5e50
	jr c,$+84		;5e53
	cp 020h		;5e55
	jr nc,$+5		;5e57
	dec b			;5e59
	jr z,$+4		;5e5a
	djnz $-24		;5e5c
	dec l			;5e5e
	jr nz,$-31		;5e5f
	dec h			;5e61
	jr nz,$-38		;5e62
	ld a,(de)			;5e64
	inc de			;5e65
	cp 00dh		;5e66
	call z,003cfh		;5e68
	jr z,$+60		;5e6b
	cp 001h		;5e6d
	call c,003deh		;5e6f
	jr c,$+53		;5e72
	cp 009h		;5e74
	jr nz,$+16		;5e76
	call 00f2fh		;5e78
	call 00896h		;5e7b
	call 008a8h		;5e7e
	add a,c			;5e81
	ld c,a			;5e82
	dec c			;5e83
	jr $+15		;5e84
	cp 020h		;5e86
	jr c,$+53		;5e88
	cp 080h		;5e8a
	jr c,$+4		;5e8c
	ld a,03fh		;5e8e
	call 008c0h		;5e90
	inc c			;5e93
	ld a,(0225eh)		;5e94
	cp c			;5e97
	jr nc,$-52		;5e98
	ld a,(de)			;5e9a
	inc de			;5e9b
	cp 001h		;5e9c
	call c,003afh		;5e9e
	jr c,$+6		;5ea1
	cp 00dh		;5ea3
	jr nz,$-11		;5ea5
	push af			;5ea7
	call 003f9h		;5ea8
	pop af			;5eab
	pop bc			;5eac
	pop hl			;5ead
	ret			;5eae
	bit 6,(ix+000h)		;5eaf
	ret nz			;5eb3
	push hl			;5eb4
	ld hl,(02302h)		;5eb5
	or a			;5eb8
	sbc hl,de		;5eb9
	pop hl			;5ebb
	ret			;5ebc
	ld b,a			;5ebd
	ld a,05eh		;5ebe
	call 008c0h		;5ec0
	inc c			;5ec3
	ld a,(0225eh)		;5ec4
	cp c			;5ec7
	jr c,$-46		;5ec8
	ld a,b			;5eca
	add a,040h		;5ecb
	jr $-61		;5ecd
	push af			;5ecf
	ld a,(023c5h)		;5ed0
	or a			;5ed3
	jr nz,$+4		;5ed4
	ld a,020h		;5ed6
	inc c			;5ed8
	call 008c0h		;5ed9
	pop af			;5edc
	ret			;5edd
	call 003afh		;5ede
	push af			;5ee1
	ld a,(023c6h)		;5ee2
	jr $-18		;5ee5
	push bc			;5ee7
	ld a,(02263h)		;5ee8
	ld b,a			;5eeb
	ld a,(0225eh)		;5eec
	ld c,a			;5eef
	call 0084dh		;5ef0
	pop bc			;5ef3
	ld a,00ah		;5ef4
	jp 008c0h		;5ef6
	ld a,(022fah)		;5ef9
	or a			;5efc
	ret z			;5efd
	ld b,a			;5efe
	bit 1,(ix+000h)		;5eff
	jr nz,$+39		;5f03
	ld a,(0225eh)		;5f05
	cp c			;5f08
	jr c,$+33		;5f09
	ld hl,023e6h		;5f0b
	ld a,(hl)			;5f0e
	or a			;5f0f
	jr z,$+12		;5f10
	ld b,a			;5f12
	inc hl			;5f13
	ld a,(hl)			;5f14
	call 008c0h		;5f15
	djnz $-5		;5f18
	jr $+16		;5f1a
	ld a,(0225eh)		;5f1c
	cp c			;5f1f
	jr c,$+10		;5f20
	ld a,020h		;5f22
	call 008c0h		;5f24
	inc c			;5f27
	djnz $-12		;5f28
	xor a			;5f2a
	ld (022fah),a		;5f2b
	ret			;5f2e
	push de			;5f2f
	push bc			;5f30
	ld a,(0225fh)		;5f31
	ld c,a			;5f34
	dec de			;5f35
	ld a,(de)			;5f36
	inc de			;5f37
	or a			;5f38
	jr z,$+31		;5f39
	ld a,(de)			;5f3b
	or a			;5f3c
	jr z,$+27		;5f3d
	cp 00dh		;5f3f
	jr z,$+23		;5f41
	cp 009h		;5f43
	jr nz,$+10		;5f45
	call 00f2fh		;5f47
	add a,c			;5f4a
	ld c,a			;5f4b
	dec c			;5f4c
	jr $+7		;5f4d
	cp 020h		;5f4f
	jr nc,$+3		;5f51
	inc c			;5f53
	inc c			;5f54
	inc de			;5f55
	jr $-27		;5f56
	inc c			;5f58
	ld a,(0225fh)		;5f59
	neg		;5f5c
	add a,c			;5f5e
	ld c,a			;5f5f
	ld a,(02301h)		;5f60
	or a			;5f63
	ld b,a			;5f64
	ld a,c			;5f65
	jr z,$+16		;5f66
	call 01034h		;5f68
	ld e,a			;5f6b
	xor a			;5f6c
	add a,e			;5f6d
	djnz $-1		;5f6e
	neg		;5f70
	add a,c			;5f72
	jr c,$+3		;5f73
	xor a			;5f75
	pop bc			;5f76
	pop de			;5f77
	ret			;5f78
	push hl			;5f79
	push de			;5f7a
	push bc			;5f7b
	call 0042fh		;5f7c
	ld c,a			;5f7f
	ld a,(023cdh)		;5f80
	add a,c			;5f83
	dec a			;5f84
	ld (022fah),a		;5f85
	dec b			;5f88
	ld de,(02150h)		;5f89
	call 00f63h		;5f8d
	call 0032ch		;5f90
	call 00524h		;5f93
	jr nz,$+57		;5f96
	call 0042fh		;5f98
	ld c,a			;5f9b
	push de			;5f9c
	call 00f54h		;5f9d
	call 0042fh		;5fa0
	pop de			;5fa3
	sub c			;5fa4
	jr nc,$+3		;5fa5
	xor a			;5fa7
	ld (022fah),a		;5fa8
	inc b			;5fab
	ld hl,(02150h)		;5fac
	or a			;5faf
	sbc hl,de		;5fb0
	jr nz,$+18		;5fb2
	bit 6,(ix+002h)		;5fb4
	jr z,$+7		;5fb8
	ld a,0ffh		;5fba
	ld (022fah),a		;5fbc
	call 00517h		;5fbf
	jr $+5		;5fc2
	call 0032ch		;5fc4
	jr c,$+8		;5fc7
	ld a,(02261h)		;5fc9
	cp b			;5fcc
	jr nz,$-58		;5fcd
	pop bc			;5fcf
	pop de			;5fd0
	pop hl			;5fd1
	ret			;5fd2
	call 00524h		;5fd3
	ret nz			;5fd6
	push hl			;5fd7
	push de			;5fd8
	push bc			;5fd9
	push af			;5fda
	call 00874h		;5fdb
	ld de,(02306h)		;5fde
	ld a,(02260h)		;5fe2
	ld b,a			;5fe5
	ld c,000h		;5fe6
	call 00524h		;5fe8
	jr nz,$+39		;5feb
	ld hl,02264h		;5fed
	bit 6,(hl)		;5ff0
	res 3,(hl)		;5ff2
	jr z,$+18		;5ff4
	ld hl,(02150h)		;5ff6
	xor a			;5ff9
	sbc hl,de		;5ffa
	jr nz,$+10		;5ffc
	cp c			;5ffe
	jr nz,$+7		;5fff
	call 00517h		;6001
	jr $+5		;6004
	call 0032ch		;6006
	jr c,$+9		;6009
	inc b			;600b
	ld a,(02261h)		;600c
	cp b			;600f
	jr nc,$-40		;6010
	pop af			;6012
	pop bc			;6013
	pop de			;6014
	pop hl			;6015
	ret			;6016
	inc c			;6017
	ld de,(02155h)		;6018
	call 0032ch		;601c
	ld de,(02152h)		;601f
	ret			;6023
	xor a			;6024
	ex (sp),hl			;6025
	push hl			;6026
	push de			;6027
	push bc			;6028
	ld d,a			;6029
	dec hl			;602a
	ld bc,0054bh		;602b
	ld (hl),b			;602e
	dec hl			;602f
	ld (hl),c			;6030
	ld e,a			;6031
	inc de			;6032
	ld a,(de)			;6033
	ld l,a			;6034
	ld bc,0008ch		;6035
	inc de			;6038
	ld a,(de)			;6039
	ld h,a			;603a
	add hl,bc			;603b
	ld (00bb5h),hl		;603c
	inc hl			;603f
	ld (01552h),hl		;6040
	inc hl			;6043
	ld (0163ah),hl		;6044
	pop bc			;6047
	pop de			;6048
	pop hl			;6049
	ex (sp),hl			;604a
	push hl			;604b
	ld hl,0214fh		;604c
	ld a,0ffh		;604f
	call 008c0h		;6051
	ld (hl),a			;6054
	pop hl			;6055
	or a			;6056
	ret			;6057
	push hl			;6058
	push de			;6059
	push bc			;605a
	ld a,(0225fh)		;605b
	neg		;605e
	add a,c			;6060
	inc a			;6061
	ld (022f7h),a		;6062
	ld a,(02264h)		;6065
	bit 1,a		;6068
	jr nz,$+38		;606a
	ld hl,02266h		;606c
	bit 6,(hl)		;606f
	jr z,$+7		;6071
	call 005a7h		;6073
	jr $+26		;6076
	bit 0,(hl)		;6078
	res 0,(hl)		;607a
	call nz,005f7h		;607c
	bit 1,(hl)		;607f
	res 1,(hl)		;6081
	call nz,006ffh		;6083
	call 005c7h		;6086
	call 0064eh		;6089
	pop bc			;608c
	pop de			;608d
	pop hl			;608e
	ret			;608f
	call 0064eh		;6090
	ld hl,02266h		;6093
	call 005f7h		;6096
	call 0077dh		;6099
	call 006ffh		;609c
	call 0074ch		;609f
	call 0073bh		;60a2
	jr $-31		;60a5
	ld a,(02262h)		;60a7
	ld b,a			;60aa
	ld a,(0225fh)		;60ab
	ld c,a			;60ae
	call 0084dh		;60af
	ld hl,023e6h		;60b2
	ld a,(hl)			;60b5
	inc hl			;60b6
	or a			;60b7
	jp nz,0088ch		;60b8
	ld a,(023c9h)		;60bb
	jp 008a8h		;60be
	ld a,(023cfh)		;60c1
	jp 0083ah		;60c4
	ld a,(02265h)		;60c7
	or a			;60ca
	jr z,$+10		;60cb
	ld (ix+001h),000h		;60cd
	set 2,(hl)		;60d1
	jr $+7		;60d3
	bit 2,(hl)		;60d5
	res 2,(hl)		;60d7
	ret z			;60d9
	push af			;60da
	call 005c1h		;60db
	pop af			;60de
	set 1,(hl)		;60df
	ld hl,012e4h		;60e1
	inc a			;60e4
	inc hl			;60e5
	inc hl			;60e6
	dec a			;60e7
	jr nz,$-3		;60e8
	ld e,(hl)			;60ea
	inc hl			;60eb
	ld d,(hl)			;60ec
	ex de,hl			;60ed
	ld a,(023cbh)		;60ee
	ld b,a			;60f1
	call 007d8h		;60f2
	scf			;60f5
	ret			;60f6
	push hl			;60f7
	ld a,(023d6h)		;60f8
	call 0083ah		;60fb
	bit 4,(hl)		;60fe
	jr nz,$+37		;6100
	ld b,005h		;6102
	ld hl,0063bh		;6104
	call 007d8h		;6107
	ld hl,(02304h)		;610a
	ld de,(02302h)		;610d
	sbc hl,de		;6111
	call 00794h		;6113
	bit 2,(ix+000h)		;6116
	ld a,020h		;611a
	jr z,$+4		;611c
	ld a,02ah		;611e
	call 008c0h		;6120
	pop hl			;6123
	ret			;6124
	ld b,006h		;6125
	ld hl,00640h		;6127
	call 007d8h		;612a
	ld hl,(0225ch)		;612d
	ld de,(02304h)		;6130
	sbc hl,de		;6134
	call 00794h		;6136
	pop hl			;6139
	ret			;613a
	ld b,(hl)			;613b
	ld d,d			;613c
	ld b,l			;613d
	ld b,l			;613e
	ld a,(04c42h)		;613f
	ld c,a			;6142
	ld b,e			;6143
	ld c,e			;6144
	ld a,(03a4fh)		;6145
	ret			;6148
	inc hl			;6149
	cp 050h		;614a
	ld a,c			;614c
	ret			;614d
	ld a,(023d0h)		;614e
	ld de,(022fbh)		;6151
	jr nc,$+19		;6155
	call 00646h		;6157
	jr nc,$+14		;615a
	bit 2,(ix+002h)		;615c
	ret nz			;6160
	push af			;6161
	call 006ffh		;6162
	pop af			;6165
	jr $+29		;6166
	ld hl,(022ffh)		;6168
	bit 1,(ix+000h)		;616b
	jr nz,$+20		;616f
	bit 6,(ix+002h)		;6171
	jr nz,$+14		;6175
	or a			;6177
	sbc hl,de		;6178
	jr z,$+29		;617a
	add a,005h		;617c
	call 0083ah		;617e
	jr $+13		;6181
	call 0083ah		;6183
	ld b,005h		;6186
	ld hl,006fah		;6188
	call 007d8h		;618b
	ex de,hl			;618e
	ld (022ffh),hl		;618f
	ld b,000h		;6192
	call 0079ah		;6194
	call 006d8h		;6197
	call 00646h		;619a
	ld a,(023d1h)		;619d
	jr nc,$+8		;61a0
	bit 2,(ix+002h)		;61a2
	jr z,$+30		;61a6
	bit 6,(ix+002h)		;61a8
	jr nz,$+24		;61ac
	bit 1,(ix+000h)		;61ae
	jr nz,$+18		;61b2
	ld de,(022fdh)		;61b4
	or a			;61b8
	sbc hl,de		;61b9
	ret z			;61bb
	add hl,de			;61bc
	add a,004h		;61bd
	call 0083ah		;61bf
	jr $+15		;61c2
	push hl			;61c4
	call 0083ah		;61c5
	ld b,004h		;61c8
	ld hl,006f6h		;61ca
	call 007d8h		;61cd
	pop hl			;61d0
	ld (022fdh),hl		;61d1
	ld b,h			;61d4
	jp 007a0h		;61d5
	ld a,(022f7h)		;61d8
	ld c,a			;61db
	ld a,(02301h)		;61dc
	or a			;61df
	jr z,$+13		;61e0
	ld b,a			;61e2
	call 01034h		;61e3
	ld h,a			;61e6
	xor a			;61e7
	add a,h			;61e8
	jr c,$+9		;61e9
	djnz $-3		;61eb
	add a,c			;61ed
	ld h,000h		;61ee
	ld l,a			;61f0
	ret nc			;61f1
	ld hl,000ffh		;61f2
	ret			;61f5
	ld b,e			;61f6
	ld c,a			;61f7
	ld c,h			;61f8
	ld a,(0494ch)		;61f9
	ld c,(hl)			;61fc
	ld b,l			;61fd
	ld a,(03ae5h)		;61fe
	jp nc,0cd23h		;6201
	ld a,(02108h)		;6204
	ld h,h			;6207
	ld (066cbh),hl		;6208
	jr z,$+9		;620b
	ld b,006h		;620d
	ld hl,00735h		;620f
	jr $+18		;6212
	bit 0,(hl)		;6214
	jr z,$+9		;6216
	ld b,006h		;6218
	ld hl,00729h		;621a
	jr $+7		;621d
	ld b,006h		;621f
	ld hl,0072fh		;6221
	call 007d8h		;6224
	pop hl			;6227
	ret			;6228
	ld c,c			;6229
	cpl			;622a
	ld b,c			;622b
	ld d,l			;622c
	ld d,h			;622d
	ld c,a			;622e
	ld c,c			;622f
	ld c,(hl)			;6230
	ld d,e			;6231
	ld b,l			;6232
	ld d,d			;6233
	ld d,h			;6234
	ld b,e			;6235
	ld c,b			;6236
	ld b,c			;6237
	ld c,(hl)			;6238
	ld b,a			;6239
	ld b,l			;623a
	ld a,(023d7h)		;623b
	call 0083ah		;623e
	push hl			;6241
	ld hl,(02315h)		;6242
	ld b,00eh		;6245
	call 007d8h		;6247
	pop hl			;624a
	ret			;624b
	push hl			;624c
	ld a,(023d3h)		;624d
	call 0076dh		;6250
	ld a,(023cch)		;6253
	ld b,a			;6256
	push bc			;6257
	ld hl,02267h		;6258
	call 007d8h		;625b
	ld a,(023d4h)		;625e
	call 0076dh		;6261
	pop bc			;6264
	ld hl,022a9h		;6265
	call 007d8h		;6268
	pop hl			;626b
	ret			;626c
	push bc			;626d
	call 0083ah		;626e
	pop bc			;6271
	ld a,020h		;6272
	call 008c0h		;6274
	ld a,024h		;6277
	call 008c0h		;6279
	ret			;627c
	push hl			;627d
	push de			;627e
	push bc			;627f
	push af			;6280
	ld a,(023d5h)		;6281
	call 0083ah		;6284
	ld hl,0232ch		;6287
	ld b,006h		;628a
	call 007d8h		;628c
	pop af			;628f
	pop bc			;6290
	pop de			;6291
	pop hl			;6292
	ret			;6293
	ld de,0d8f0h		;6294
	call 007bbh		;6297
	ld de,0fc18h		;629a
	call 007bbh		;629d
	ld de,0ff9ch		;62a0
	call 007bbh		;62a3
	ld e,0f6h		;62a6
	call 007bbh		;62a8
	ld e,0ffh		;62ab
	call 007bbh		;62ad
	ld hl,02266h		;62b0
	res 3,(hl)		;62b3
	ld a,b			;62b5
	or a			;62b6
	ret z			;62b7
	jp 008a8h		;62b8
	ld a,02fh		;62bb
	add hl,de			;62bd
	inc a			;62be
	jr c,$-2		;62bf
	sbc hl,de		;62c1
	cp 030h		;62c3
	push hl			;62c5
	ld hl,02266h		;62c6
	jr nz,$+9		;62c9
	bit 3,(hl)		;62cb
	jr nz,$+5		;62cd
	inc b			;62cf
	pop hl			;62d0
	ret			;62d1
	set 3,(hl)		;62d2
	pop hl			;62d4
	jp 008c0h		;62d5
	ld a,(hl)			;62d8
	inc hl			;62d9
	or a			;62da
	jr nz,$+5		;62db
	ld a,020h		;62dd
	dec hl			;62df
	call 007fdh		;62e0
	cp 07fh		;62e3
	jr nz,$+11		;62e5
	ld a,0fbh		;62e7
	add a,b			;62e9
	ld b,a			;62ea
	jr c,$+15		;62eb
	ld b,000h		;62ed
	ret			;62ef
	cp 01bh		;62f0
	jr z,$-11		;62f2
	cp 020h		;62f4
	jr nc,$+4		;62f6
	dec b			;62f8
	ret z			;62f9
	djnz $-34		;62fa
	ret			;62fc
	push af			;62fd
	cp 07fh		;62fe
	jr nz,$+12		;6300
	push hl			;6302
	ld hl,00834h		;6303
	call 00a6eh		;6306
	pop hl			;6309
	pop af			;630a
	ret			;630b
	jr c,$+6		;630c
	ld a,03fh		;630e
	jr $+25		;6310
	cp 01bh		;6312
	jr nz,$+8		;6314
	push hl			;6316
	ld hl,0082eh		;6317
	jr $-20		;631a
	cp 020h		;631c
	jr nc,$+11		;631e
	ld a,05eh		;6320
	call 008c0h		;6322
	pop af			;6325
	push af			;6326
	add a,040h		;6327
	call 008c0h		;6329
	pop af			;632c
	ret			;632d
	ld e,e			;632e
	ld b,l			;632f
	ld d,e			;6330
	ld b,e			;6331
	ld e,l			;6332
	nop			;6333
	ld e,e			;6334
	ld b,h			;6335
	ld b,l			;6336
	ld c,h			;6337
	ld e,l			;6338
	nop			;6339
	bit 7,a		;633a
	res 7,a		;633c
	ld c,a			;633e
	ld a,(02262h)		;633f
	jr z,$+5		;6342
	ld a,(02263h)		;6344
	ld b,a			;6347
	ld a,(023c8h)		;6348
	add a,c			;634b
	ld c,a			;634c
	push hl			;634d
	push de			;634e
	push bc			;634f
	push af			;6350
	ld hl,023dch		;6351
	ld a,(hl)			;6354
	inc hl			;6355
	or a			;6356
	jr nz,$+7		;6357
	call 0241ah		;6359
	jr $+22		;635c
	call 0088ch		;635e
	ld a,(023dbh)		;6361
	or a			;6364
	jr z,$+5		;6365
	ld a,b			;6367
	ld b,c			;6368
	ld c,a			;6369
	ld a,c			;636a
	call 008c0h		;636b
	ld a,b			;636e
	call 008c0h		;636f
	jr $+21		;6372
	push hl			;6374
	push de			;6375
	push bc			;6376
	push af			;6377
	ld hl,023e1h		;6378
	ld a,(hl)			;637b
	inc hl			;637c
	or a			;637d
	jr nz,$+6		;637e
	call 02418h		;6380
	scf			;6383
	call nc,0088ch		;6384
	pop af			;6387
	pop bc			;6388
	pop de			;6389
	pop hl			;638a
	ret			;638b
	ld d,a			;638c
	ld a,(hl)			;638d
	inc hl			;638e
	call 008c0h		;638f
	dec d			;6392
	jr nz,$-6		;6393
	ret			;6395
	push bc			;6396
	push af			;6397
	dec a			;6398
	add a,c			;6399
	ld c,a			;639a
	ld a,(0225eh)		;639b
	sub c			;639e
	jr nc,$+6		;639f
	ld c,a			;63a1
	pop af			;63a2
	add a,c			;63a3
	push af			;63a4
	pop af			;63a5
	pop bc			;63a6
	ret			;63a7
	or a			;63a8
	ret z			;63a9
	push af			;63aa
	push bc			;63ab
	ld b,a			;63ac
	ld a,020h		;63ad
	call 008c0h		;63af
	djnz $-5		;63b2
	pop bc			;63b4
	pop af			;63b5
	ret			;63b6
	ld a,0ffh		;63b7
	call 008c0h		;63b9
	or a			;63bc
	jr z,$-6		;63bd
	ret			;63bf
	push ix		;63c0
	push hl			;63c2
	push de			;63c3
	push bc			;63c4
	ld e,a			;63c5
	ld c,006h		;63c6
	call 00005h		;63c8
	pop bc			;63cb
	pop de			;63cc
	pop hl			;63cd
	pop ix		;63ce
	ret			;63d0
	push hl			;63d1
	push de			;63d2
	push bc			;63d3
	ld a,(02317h)		;63d4
	or a			;63d7
	jr z,$+11		;63d8
	res 5,(ix+000h)		;63da
	ld a,0ffh		;63de
	jp 00969h		;63e0
	ld (022f1h),bc		;63e3
	ld hl,0232ch		;63e7
	ld (022f7h),hl		;63ea
	set 5,(ix+000h)		;63ed
	ld hl,(023f5h)		;63f1
	ld de,023f5h		;63f4
	add hl,de			;63f7
	ld bc,00000h		;63f8
	call 0099ah		;63fb
	bit 5,(ix+000h)		;63fe
	jr z,$+24		;6402
	bit 2,(ix+002h)		;6404
	jr z,$+18		;6408
	push af			;640a
	push bc			;640b
	push hl			;640c
	call 0197ch		;640d
	ld bc,(022f1h)		;6410
	call 0084dh		;6414
	pop hl			;6417
	pop bc			;6418
	pop af			;6419
	ld e,a			;641a
	cp (hl)			;641b
	jr z,$+31		;641c
	bit 5,(ix+000h)		;641e
	jr nz,$+41		;6422
	bit 6,a		;6424
	jr nz,$+6		;6426
	bit 5,a		;6428
	jr nz,$+14		;642a
	and 01fh		;642c
	cp (hl)			;642e
	jr z,$+12		;642f
	set 6,a		;6431
	cp (hl)			;6433
	jr z,$+7		;6434
	set 5,a		;6436
	cp (hl)			;6438
	jr nz,$+18		;6439
	ld a,e			;643b
	call 009dfh		;643c
	res 5,(ix+000h)		;643f
	inc hl			;6443
	ld a,(hl)			;6444
	or a			;6445
	jr z,$+33		;6446
	inc c			;6448
	jr $-78		;6449
	ld a,e			;644b
	bit 5,(ix+000h)		;644c
	jr z,$+30		;6450
	ld a,(hl)			;6452
	inc hl			;6453
	or a			;6454
	jr nz,$-3		;6455
	ld a,(hl)			;6457
	or a			;6458
	jr z,$+15		;6459
	ld a,e			;645b
	ld c,000h		;645c
	inc b			;645e
	jr $-69		;645f
	scf			;6461
	call 009dfh		;6462
	jr $+5		;6465
	ld e,b			;6467
	ld a,e			;6468
	or a			;6469
	pop bc			;646a
	pop de			;646b
	pop hl			;646c
	ret			;646d
	push af			;646e
	ld a,c			;646f
	push af			;6470
	ld d,h			;6471
	ld e,l			;6472
	pop af			;6473
	ld c,a			;6474
	push af			;6475
	dec de			;6476
	ld a,(de)			;6477
	or a			;6478
	jr nz,$-3		;6479
	inc de			;647b
	ld a,(hl)			;647c
	inc hl			;647d
	or a			;647e
	jr nz,$-3		;647f
	ld a,(hl)			;6481
	or a			;6482
	jr z,$+18		;6483
	inc b			;6485
	ld a,(de)			;6486
	cp (hl)			;6487
	jr nz,$-21		;6488
	inc hl			;648a
	inc de			;648b
	dec c			;648c
	jr nz,$-7		;648d
	pop af			;648f
	ld c,a			;6490
	pop af			;6491
	jp 0091ah		;6492
	pop af			;6495
	pop af			;6496
	jp 00961h		;6497
	push hl			;649a
	push de			;649b
	push bc			;649c
	ld hl,0214fh		;649d
	ld a,(hl)			;64a0
	or a			;64a1
	jr z,$+7		;64a2
	scf			;64a4
	set 1,(ix+000h)		;64a5
	call nc,008b7h		;64a9
	bit 5,(ix+000h)		;64ac
	jr z,$+24		;64b0
	ld hl,023d8h		;64b2
	cp (hl)			;64b5
	jr z,$+22		;64b6
	ld hl,023f7h		;64b8
	cp (hl)			;64bb
	jr nz,$+12		;64bc
	call 008b7h		;64be
	pop bc			;64c1
	pop de			;64c2
	pop hl			;64c3
	ex (sp),hl			;64c4
	pop hl			;64c5
	jr $-93		;64c6
	pop bc			;64c8
	pop de			;64c9
	pop hl			;64ca
	ret			;64cb
	set 1,(ix+000h)		;64cc
	pop hl			;64d0
	pop hl			;64d1
	pop hl			;64d2
	pop hl			;64d3
	call 00107h		;64d4
	pop bc			;64d7
	pop de			;64d8
	pop hl			;64d9
	ex (sp),hl			;64da
	pop hl			;64db
	jp 00133h		;64dc
	bit 5,(ix+000h)		;64df
	push hl			;64e3
	jr z,$+11		;64e4
	ld hl,0232ch		;64e6
	xor (hl)			;64e9
	inc hl			;64ea
	or (hl)			;64eb
	jr z,$+25		;64ec
	ld a,e			;64ee
	ld hl,(022f7h)		;64ef
	ld (hl),a			;64f2
	inc hl			;64f3
	ld (hl),000h		;64f4
	ld (022f7h),hl		;64f6
	call 0077dh		;64f9
	push bc			;64fc
	ld bc,(022f1h)		;64fd
	call 0084dh		;6501
	pop bc			;6504
	pop hl			;6505
	ret			;6506
	ld hl,023b6h		;6507
	call 00d19h		;650a
	ld c,00fh		;650d
	call 00e55h		;650f
	inc a			;6512
	jr z,$+39		;6513
	ld b,001h		;6515
	call 00874h		;6517
	ld a,(023cah)		;651a
	ld c,a			;651d
	call 00a64h		;651e
	cp 01ah		;6521
	jp z,00ad3h		;6523
	cp 00ah		;6526
	jr nz,$+13		;6528
	dec c			;652a
	jr nz,$+10		;652b
	call 008b7h		;652d
	cp 00dh		;6530
	jr nz,$-27		;6532
	ret			;6534
	call 008c0h		;6535
	jr $-26		;6538
	call 00874h		;653a
	ld hl,00a46h		;653d
	call 00a6eh		;6540
	jp 008b7h		;6543
	ld c,b			;6546
	ld h,l			;6547
	ld l,h			;6548
	ld (hl),b			;6549
	jr nz,$+104		;654a
	ld l,c			;654c
	ld l,h			;654d
	ld h,l			;654e
	jr nz,$+112		;654f
	ld l,a			;6551
	ld (hl),h			;6552
	jr nz,$+104		;6553
	ld l,a			;6555
	ld (hl),l			;6556
	ld l,(hl)			;6557
	ld h,h			;6558
	nop			;6559
	ld a,00dh		;655a
	call 008c0h		;655c
	ld a,00ah		;655f
	jp 008c0h		;6561
	djnz $+7		;6564
	call 00cddh		;6566
	ld b,080h		;6569
	ld a,(hl)			;656b
	inc hl			;656c
	ret			;656d
	ld a,(hl)			;656e
	inc hl			;656f
	or a			;6570
	ret z			;6571
	call 008c0h		;6572
	jr $-7		;6575
	call 00ceeh		;6577
	inc de			;657a
	ld hl,00dc0h		;657b
	ld b,002h		;657e
	call 00d0bh		;6580
	jr nz,$+13		;6583
	push de			;6585
	inc de			;6586
	ld hl,00dc2h		;6587
	ld bc,00004h		;658a
	ldir		;658d
	pop de			;658f
	dec de			;6590
	call 00d25h		;6591
	ret c			;6594
	call 00874h		;6595
	ld a,(00e66h)		;6598
	or a			;659b
	jr nz,$+6		;659c
	ld a,(00004h)		;659e
	inc a			;65a1
	add a,040h		;65a2
	ld (022f3h),a		;65a4
	ld a,(023c9h)		;65a7
	rrca			;65aa
	rrca			;65ab
	rrca			;65ac
	rrca			;65ad
	and 00fh		;65ae
	ld (022f1h),a		;65b0
	ld c,011h		;65b3
	ld b,a			;65b5
	jr $+4		;65b6
	ld c,012h		;65b8
	call 00e55h		;65ba
	cp 0ffh		;65bd
	jr z,$+20		;65bf
	add a,a			;65c1
	add a,a			;65c2
	add a,a			;65c3
	add a,a			;65c4
	add a,a			;65c5
	ld hl,00080h		;65c6
	add a,l			;65c9
	ld l,a			;65ca
	jr nc,$+3		;65cb
	inc h			;65cd
	call 00adeh		;65ce
	jr $-25		;65d1
	call 00a5ah		;65d3
	ld hl,00b21h		;65d6
	call 00a40h		;65d9
	or a			;65dc
	ret			;65dd
	push hl			;65de
	ld c,00bh		;65df
	inc hl			;65e1
	res 7,(hl)		;65e2
	dec c			;65e4
	jr nz,$-4		;65e5
	pop hl			;65e7
	push bc			;65e8
	ld a,(022f1h)		;65e9
	cp b			;65ec
	ld a,(022f3h)		;65ed
	call z,008c0h		;65f0
	ld de,02288h		;65f3
	push de			;65f6
	ld a,03ah		;65f7
	ld (de),a			;65f9
	inc de			;65fa
	ld a,020h		;65fb
	ld (de),a			;65fd
	inc de			;65fe
	inc hl			;65ff
	ld bc,00008h		;6600
	ldir		;6603
	ld a,02eh		;6605
	ld (de),a			;6607
	inc de			;6608
	ld bc,00003h		;6609
	ldir		;660c
	ld a,020h		;660e
	ld (de),a			;6610
	pop hl			;6611
	ld b,00fh		;6612
	call 007d8h		;6614
	pop bc			;6617
	dec b			;6618
	ret nz			;6619
	ld a,(022f1h)		;661a
	ld b,a			;661d
	jp 00a5ah		;661e
	ld c,b			;6621
	ld l,c			;6622
	ld (hl),h			;6623
	jr nz,$+99		;6624
	jr nz,$+109		;6626
	ld h,l			;6628
	ld a,c			;6629
	nop			;662a
	call 00ceeh		;662b
	call 00d25h		;662e
	ret c			;6631
	ld c,013h		;6632
	jr $+65		;6634
	push hl			;6636
	call 00d19h		;6637
	jr c,$+68		;663a
	ld de,00e6fh		;663c
	ld hl,00b8ch		;663f
	call 00d05h		;6642
	jr z,$+57		;6645
	push de			;6647
	ld c,011h		;6648
	call 00e55h		;664a
	inc a			;664d
	pop de			;664e
	pop bc			;664f
	ret z			;6650
	push bc			;6651
	push de			;6652
	call 00e1fh		;6653
	pop de			;6656
	call 00b82h		;6657
	ld c,013h		;665a
	call 00e55h		;665c
	pop hl			;665f
	call 00d19h		;6660
	ld de,00e76h		;6663
	ld hl,00e66h		;6666
	xor a			;6669
	ld (de),a			;666a
	ld bc,00009h		;666b
	ldir		;666e
	call 00b82h		;6670
	ld c,017h		;6673
	call 00e55h		;6675
	inc a			;6678
	ld a,001h		;6679
	ret z			;667b
	xor a			;667c
	ret			;667d
	pop hl			;667e
	ld a,001h		;667f
	ret			;6681
	ex de,hl			;6682
	ld (hl),042h		;6683
	inc hl			;6685
	ld (hl),041h		;6686
	inc hl			;6688
	ld (hl),04bh		;6689
	ret			;668b
	ld b,d			;668c
	ld b,c			;668d
	ld c,e			;668e
	ld a,(hl)			;668f
	cp 02ah		;6690
	jr z,$+6		;6692
	inc hl			;6694
	djnz $-6		;6695
	ret			;6697
	ld (hl),03fh		;6698
	inc hl			;669a
	djnz $-3		;669b
	ret			;669d
	rst 0			;669e
	push bc			;669f
	push de			;66a0
	call 00ceeh		;66a1
	ld hl,00db9h		;66a4
	call 00d09h		;66a7
	jr z,$+108		;66aa
	ld hl,00db5h		;66ac
	call 00d09h		;66af
	jr z,$+115		;66b2
	ld a,(00e88h)		;66b4
	cp 054h		;66b7
	nop			;66b9
	nop			;66ba
	call 00d1ch		;66bb
	jp c,00c87h		;66be
	call 00e1fh		;66c1
	ld c,013h		;66c4
	call 00e55h		;66c6
	ld c,016h		;66c9
	call 00e55h		;66cb
	inc a			;66ce
	pop hl			;66cf
	pop bc			;66d0
	push hl			;66d1
	add hl,bc			;66d2
	ld a,(hl)			;66d3
	ld (hl),01ah		;66d4
	pop de			;66d6
	push af			;66d7
	push hl			;66d8
	jr z,$+25		;66d9
	ld hl,00080h		;66db
	ld b,081h		;66de
	ld a,(de)			;66e0
	inc de			;66e1
	djnz $+20		;66e2
	ld c,a			;66e4
	push bc			;66e5
	call 00c43h		;66e6
	pop bc			;66e9
	ld a,c			;66ea
	ld hl,00080h		;66eb
	ld b,080h		;66ee
	jr z,$+6		;66f0
	ld a,002h		;66f2
	jr $+26		;66f4
	ld (hl),a			;66f6
	inc hl			;66f7
	cp 00dh		;66f8
	jr z,$+24		;66fa
	cp 01ah		;66fc
	jr nz,$-30		;66fe
	call 00c43h		;6700
	jr nz,$-17		;6703
	ld c,010h		;6705
	call 00e55h		;6707
	inc a			;670a
	jr z,$-25		;670b
	xor a			;670d
	pop hl			;670e
	pop bc			;670f
	ld (hl),b			;6710
	ret			;6711
	ld a,00ah		;6712
	jr $-50		;6714
	ld d,004h		;6716
	pop hl			;6718
	pop bc			;6719
	call 00c2eh		;671a
	ld e,01ah		;671d
	ld c,d			;671f
	call 00e58h		;6720
	xor a			;6723
	ret			;6724
	ld d,005h		;6725
	pop hl			;6727
	pop bc			;6728
	call 00c2eh		;6729
	xor a			;672c
	ret			;672d
	push bc			;672e
	ld c,d			;672f
	ld e,(hl)			;6730
	inc hl			;6731
	call 00e58h		;6732
	ld a,e			;6735
	ld e,00ah		;6736
	cp 00dh		;6738
	jr z,$-8		;673a
	pop bc			;673c
	dec bc			;673d
	ld a,b			;673e
	or c			;673f
	jr nz,$-18		;6740
	ret			;6742
	push de			;6743
	ld c,015h		;6744
	call 00e55h		;6746
	or a			;6749
	pop de			;674a
	ret			;674b
	cp 00ah		;674c
	ret z			;674e
	cp 01ah		;674f
	scf			;6751
	ret z			;6752
	ccf			;6753
	ret			;6754
	rst 0			;6755
	xor a			;6756
	jr $+4		;6757
	ld a,001h		;6759
	ld (00e88h),a		;675b
	push bc			;675e
	push de			;675f
	call 00ceeh		;6760
	ld hl,00dbdh		;6763
	call 00d09h		;6766
	jr nz,$+25		;6769
	pop de			;676b
	pop bc			;676c
	ld c,003h		;676d
	call 00e58h		;676f
	call 00c4ch		;6772
	jr c,$+90		;6775
	jr z,$-10		;6777
	ld (de),a			;6779
	inc de			;677a
	dec bc			;677b
	ld a,b			;677c
	or c			;677d
	jr nz,$-17		;677e
	jr $+66		;6780
	call 00d1ch		;6782
	jr nc,$+7		;6785
	ld a,001h		;6787
	pop de			;6789
	pop bc			;678a
	ret			;678b
	ld c,00fh		;678c
	call 00e55h		;678e
	inc a			;6791
	jr z,$-11		;6792
	pop de			;6794
	pop bc			;6795
	push de			;6796
	ex de,hl			;6797
	add hl,bc			;6798
	pop de			;6799
	ld bc,0ff80h		;679a
	add hl,bc			;679d
	ld a,(00e88h)		;679e
	or a			;67a1
	jr z,$+47		;67a2
	push hl			;67a4
	call 00cddh		;67a5
	ld b,080h		;67a8
	ld a,(hl)			;67aa
	and 07fh		;67ab
	inc hl			;67ad
	cp 00ah		;67ae
	jr z,$+21		;67b0
	cp 01ah		;67b2
	jr z,$+26		;67b4
	ld c,a			;67b6
	ld (de),a			;67b7
	inc de			;67b8
	djnz $-15		;67b9
	pop hl			;67bb
	or a			;67bc
	sbc hl,de		;67bd
	add hl,de			;67bf
	jr nc,$-28		;67c0
	ld a,002h		;67c2
	ret			;67c4
	ld a,00dh		;67c5
	cp c			;67c7
	ld c,00ah		;67c8
	jr z,$-17		;67ca
	jr $-21		;67cc
	pop hl			;67ce
	xor a			;67cf
	ret			;67d0
	call 00cddh		;67d1
	jr nz,$-5		;67d4
	ld bc,00080h		;67d6
	ldir		;67d9
	jr $-10		;67db
	push de			;67dd
	push bc			;67de
	ld c,014h		;67df
	call 00e55h		;67e1
	or a			;67e4
	pop bc			;67e5
	pop de			;67e6
	ld hl,00080h		;67e7
	ret z			;67ea
	ld (hl),01ah		;67eb
	ret			;67ed
	push bc			;67ee
	push hl			;67ef
	ld de,00e66h		;67f0
	ld bc,00022h		;67f3
	ld hl,00dcfh		;67f6
	ldir		;67f9
	pop de			;67fb
	ld a,(de)			;67fc
	cp 020h		;67fd
	inc de			;67ff
	jr z,$-4		;6800
	dec de			;6802
	pop bc			;6803
	ret			;6804
	ld b,003h		;6805
	jr $+4		;6807
	ld b,004h		;6809
	push de			;680b
	ld a,(de)			;680c
	call 00dc6h		;680d
	sub (hl)			;6810
	jr nz,$+6		;6811
	inc hl			;6813
	inc de			;6814
	djnz $-9		;6815
	pop de			;6817
	ret			;6818
	call 00ceeh		;6819
	call 00d3ah		;681c
	ret c			;681f
	ld a,c			;6820
	or a			;6821
	ret z			;6822
	scf			;6823
	ret			;6824
	call 00d51h		;6825
	ld a,001h		;6828
	ret c			;682a
	ld hl,00e67h		;682b
	ld b,008h		;682e
	call 00b8fh		;6830
	ld b,003h		;6833
	call 00b8fh		;6835
	or a			;6838
	ret			;6839
	call 00d51h		;683a
	ret c			;683d
	ld c,a			;683e
	ld hl,00e67h		;683f
	ld b,00bh		;6842
	ld a,(hl)			;6844
	cp 03fh		;6845
	scf			;6847
	ret z			;6848
	cp 02ah		;6849
	scf			;684b
	ret z			;684c
	djnz $-9		;684d
	or a			;684f
	ret			;6850
	ex de,hl			;6851
	ld de,00e66h		;6852
	ld c,(hl)			;6855
	inc hl			;6856
	ld a,(hl)			;6857
	cp 03ah		;6858
	jr nz,$+17		;685a
	ld a,c			;685c
	call 00dc6h		;685d
	inc hl			;6860
	sub 040h		;6861
	ret c			;6863
	cp 011h		;6864
	ccf			;6866
	ret c			;6867
	ld (de),a			;6868
	jr $+3		;6869
	dec hl			;686b
	ld b,008h		;686c
	inc de			;686e
	call 00df1h		;686f
	call z,00d9eh		;6872
	jr z,$+35		;6875
	jr c,$+13		;6877
	ld (de),a			;6879
	djnz $-12		;687a
	call 00df1h		;687c
	jr z,$+31		;687f
	ccf			;6881
	ret c			;6882
	inc b			;6883
	inc de			;6884
	djnz $-1		;6885
	ld b,003h		;6887
	call 00df1h		;6889
	ret z			;688c
	ret c			;688d
	ld (de),a			;688e
	inc de			;688f
	djnz $-7		;6890
	call 00df1h		;6892
	ret z			;6895
	scf			;6896
	ret			;6897
	ld c,a			;6898
	ld a,007h		;6899
	cp b			;689b
	ld a,c			;689c
	ret			;689d
	push hl			;689e
	push de			;689f
	push bc			;68a0
	push af			;68a1
	ld hl,00db2h		;68a2
	ld de,00e6fh		;68a5
	ld bc,00003h		;68a8
	ldir		;68ab
	pop af			;68ad
	pop bc			;68ae
	pop de			;68af
	pop hl			;68b0
	ret			;68b1
	jr nz,$+34		;68b2
	jr nz,$+78		;68b4
	ld d,e			;68b6
	ld d,h			;68b7
	ld a,(05550h)		;68b8
	ld c,(hl)			;68bb
	ld a,(04452h)		;68bc
	ld d,d			;68bf
	ld a,(02a00h)		;68c0
	ld l,02ah		;68c3
	nop			;68c5
	cp 061h		;68c6
	ret c			;68c8
	cp 07bh		;68c9
	ret nc			;68cb
	sub 020h		;68cc
	ret			;68ce
	nop			;68cf
	jr nz,$+34		;68d0
	jr nz,$+34		;68d2
	jr nz,$+34		;68d4
	jr nz,$+34		;68d6
	jr nz,$+34		;68d8
	jr nz,$+2		;68da
	nop			;68dc
	nop			;68dd
	nop			;68de
	nop			;68df
	nop			;68e0
	nop			;68e1
	nop			;68e2
	nop			;68e3
	nop			;68e4
	nop			;68e5
	nop			;68e6
	nop			;68e7
	nop			;68e8
	nop			;68e9
	nop			;68ea
	nop			;68eb
	nop			;68ec
	nop			;68ed
	nop			;68ee
	nop			;68ef
	nop			;68f0
	ld a,(hl)			;68f1
	inc hl			;68f2
	cp 02eh		;68f3
	jr z,$+24		;68f5
	call 00dc6h		;68f7
	cp 021h		;68fa
	jr c,$+15		;68fc
	push hl			;68fe
	push bc			;68ff
	ld hl,00e10h		;6900
	ld bc,0000fh		;6903
	cpir		;6906
	pop bc			;6908
	pop hl			;6909
	ret			;690a
	cp a			;690b
	ret			;690c
	or a			;690d
	scf			;690e
	ret			;690f
	inc a			;6910
	ld a,02ch		;6911
	dec sp			;6913
	ld a,(05b3dh)		;6914
	ld e,l			;6917
	ld e,a			;6918
	dec h			;6919
	ld a,h			;691a
	jr z,$+43		;691b
	cpl			;691d
	ld e,h			;691e
	ld a,(00e66h)		;691f
	push af			;6922
	ld c,01dh		;6923
	push ix		;6925
	call 00005h		;6927
	pop ix		;692a
	pop af			;692c
	push hl			;692d
	or a			;692e
	jr nz,$+6		;692f
	ld a,(00004h)		;6931
	inc a			;6934
	ld b,a			;6935
	ld hl,00000h		;6936
	scf			;6939
	adc hl,hl		;693a
	djnz $-2		;693c
	pop de			;693e
	ld a,e			;693f
	and l			;6940
	jr nz,$+5		;6941
	ld a,d			;6943
	and h			;6944
	ret z			;6945
	ld a,(00004h)		;6946
	push af			;6949
	ld c,00dh		;694a
	call 00e58h		;694c
	pop af			;694f
	ld e,a			;6950
	ld c,00eh		;6951
	jr $+5		;6953
	ld de,00e66h		;6955
	push ix		;6958
	push hl			;695a
	push de			;695b
	push bc			;695c
	call 00005h		;695d
	pop bc			;6960
	pop de			;6961
	pop hl			;6962
	pop ix		;6963
	ret			;6965
	nop			;6966
	nop			;6967
	nop			;6968
	nop			;6969
	nop			;696a
	nop			;696b
	nop			;696c
	nop			;696d
	nop			;696e
	nop			;696f
	nop			;6970
	nop			;6971
	nop			;6972
	nop			;6973
	nop			;6974
	nop			;6975
	nop			;6976
	nop			;6977
	nop			;6978
	nop			;6979
	nop			;697a
	nop			;697b
	nop			;697c
	nop			;697d
	nop			;697e
	nop			;697f
	nop			;6980
	nop			;6981
	nop			;6982
	nop			;6983
	nop			;6984
	nop			;6985
	nop			;6986
	nop			;6987
	nop			;6988
	jp c,012b8h		;6989
	bit 5,(ix+000h)		;698c
	jr nz,$+29		;6990
	cp 0ffh		;6992
	jp z,01947h		;6994
	push hl			;6997
	push de			;6998
	ld hl,02331h		;6999
	add a,a			;699c
	ld d,000h		;699d
	ld e,a			;699f
	add hl,de			;69a0
	ld e,(hl)			;69a1
	inc hl			;69a2
	ld d,(hl)			;69a3
	ex de,hl			;69a4
	pop de			;69a5
	ex (sp),hl			;69a6
	cp 056h		;69a7
	call c,014ach		;69a9
	ret			;69ac
	or a			;69ad
	ret z			;69ae
	ld (022f7h),a		;69af
	call 013deh		;69b2
	jp c,012b0h		;69b5
	bit 4,(ix+000h)		;69b8
	jr z,$+20		;69bc
	ld a,(hl)			;69be
	or a			;69bf
	ret z			;69c0
	cp 00dh		;69c1
	ret z			;69c3
	cp 009h		;69c4
	jr nz,$+16		;69c6
	ld a,(023cdh)		;69c8
	ld (022fah),a		;69cb
	jr $+8		;69ce
	call 0147dh		;69d0
	jp c,012b4h		;69d3
	ld a,(022f7h)		;69d6
	ld (hl),a			;69d9
	inc hl			;69da
	cp 00dh		;69db
	call z,00ee3h		;69dd
	jp 00f9dh		;69e0
	call 014ach		;69e3
	ld d,h			;69e6
	ld e,l			;69e7
	ld a,(02261h)		;69e8
	cp b			;69eb
	jr nz,$+6		;69ec
	call 01084h		;69ee
	dec b			;69f1
	inc b			;69f2
	set 3,(ix+000h)		;69f3
	scf			;69f7
	call 01091h		;69f8
	call 013deh		;69fb
	ld a,(02264h)		;69fe
	bit 0,a		;6a01
	ret z			;6a03
	bit 4,a		;6a04
	ret nz			;6a06
	push de			;6a07
	push bc			;6a08
	ld de,(02150h)		;6a09
	call 00f63h		;6a0d
	call 00f21h		;6a10
	jr nc,$+11		;6a13
	push af			;6a15
	call 0147dh		;6a16
	pop af			;6a19
	ld (hl),a			;6a1a
	inc hl			;6a1b
	jr $-12		;6a1c
	pop bc			;6a1e
	pop de			;6a1f
	ret			;6a20
	ld a,(de)			;6a21
	inc de			;6a22
	cp 020h		;6a23
	jr z,$+8		;6a25
	cp 009h		;6a27
	jr z,$+4		;6a29
	or a			;6a2b
	ret			;6a2c
	scf			;6a2d
	ret			;6a2e
	push hl			;6a2f
	push bc			;6a30
	ld a,(0225fh)		;6a31
	neg		;6a34
	add a,c			;6a36
	ld c,000h		;6a37
	or a			;6a39
	jr z,$+17		;6a3a
	ld l,a			;6a3c
	ld a,(023cdh)		;6a3d
	ld h,a			;6a40
	ld a,l			;6a41
	sub h			;6a42
	jr z,$+8		;6a43
	jr nc,$-3		;6a45
	inc l			;6a47
	inc c			;6a48
	jr $-8		;6a49
	ld a,c			;6a4b
	or a			;6a4c
	pop bc			;6a4d
	pop hl			;6a4e
	ret nz			;6a4f
	ld a,(023cdh)		;6a50
	ret			;6a53
	dec de			;6a54
	ld a,(de)			;6a55
	inc de			;6a56
	jr $+7		;6a57
	ld a,(de)			;6a59
	inc de			;6a5a
	cp 00dh		;6a5b
	ret z			;6a5d
	cp 001h		;6a5e
	jr nc,$-7		;6a60
	ret			;6a62
	dec de			;6a63
	ld a,(de)			;6a64
	cp 0ffh		;6a65
	jr z,$+13		;6a67
	dec de			;6a69
	ld a,(de)			;6a6a
	cp 0ffh		;6a6b
	jr z,$+7		;6a6d
	cp 00dh		;6a6f
	jr nz,$-8		;6a71
	scf			;6a73
	inc de			;6a74
	ret			;6a75
	push de			;6a76
	ld de,(02306h)		;6a77
	call 00f63h		;6a7b
	ld (02306h),de		;6a7e
	pop de			;6a82
	ret			;6a83
	push de			;6a84
	ld de,(02306h)		;6a85
	call 00f54h		;6a89
	ld (02306h),de		;6a8c
	pop de			;6a90
	ret			;6a91
	push de			;6a92
	ld de,(023c3h)		;6a93
	or a			;6a97
	sbc hl,de		;6a98
	add hl,de			;6a9a
	pop de			;6a9b
	ret			;6a9c
	push hl			;6a9d
	push de			;6a9e
	push bc			;6a9f
	or a			;6aa0
	sbc hl,de		;6aa1
	ld b,l			;6aa3
	ld a,(0225fh)		;6aa4
	ld c,a			;6aa7
	ld h,d			;6aa8
	ld l,e			;6aa9
	ld e,000h		;6aaa
	ld a,b			;6aac
	or a			;6aad
	jr z,$+38		;6aae
	ld a,(hl)			;6ab0
	cp 009h		;6ab1
	jr nz,$+10		;6ab3
	call 00f2fh		;6ab5
	dec a			;6ab8
	add a,c			;6ab9
	ld c,a			;6aba
	jr $+7		;6abb
	cp 020h		;6abd
	jr nc,$+3		;6abf
	inc c			;6ac1
	inc hl			;6ac2
	inc c			;6ac3
	ld a,(0225eh)		;6ac4
	cp c			;6ac7
	jr nc,$+10		;6ac8
	inc e			;6aca
	call 01034h		;6acb
	neg		;6ace
	add a,c			;6ad0
	ld c,a			;6ad1
	djnz $-34		;6ad2
	ld a,c			;6ad4
	pop bc			;6ad5
	ld c,a			;6ad6
	ld a,e			;6ad7
	ld hl,02301h		;6ad8
	cp (hl)			;6adb
	ld (hl),a			;6adc
	jr z,$+6		;6add
	set 1,(ix+000h)		;6adf
	pop de			;6ae3
	pop hl			;6ae4
	ret			;6ae5
	push bc			;6ae6
	ld a,(02301h)		;6ae7
	or a			;6aea
	jr z,$+10		;6aeb
	ld b,a			;6aed
	call 01034h		;6aee
	add a,c			;6af1
	ld c,a			;6af2
	djnz $-5		;6af3
	ld a,(0225fh)		;6af5
	push af			;6af8
	neg		;6af9
	add a,c			;6afb
	inc a			;6afc
	ld b,a			;6afd
	pop af			;6afe
	ld c,a			;6aff
	ld h,d			;6b00
	ld l,e			;6b01
	ld a,(hl)			;6b02
	cp 00dh		;6b03
	jr z,$+45		;6b05
	or a			;6b07
	jr z,$+42		;6b08
	cp 009h		;6b0a
	jr nz,$+25		;6b0c
	call 00f2fh		;6b0e
	cp b			;6b11
	jr c,$+8		;6b12
	dec b			;6b14
	jr z,$+29		;6b15
	inc hl			;6b17
	jr $+26		;6b18
	dec a			;6b1a
	push af			;6b1b
	neg		;6b1c
	add a,b			;6b1e
	ld b,a			;6b1f
	pop af			;6b20
	add a,c			;6b21
	ld c,a			;6b22
	jr $+10		;6b23
	cp 020h		;6b25
	jr nc,$+6		;6b27
	inc c			;6b29
	dec b			;6b2a
	jr z,$+7		;6b2b
	inc c			;6b2d
	inc hl			;6b2e
	djnz $-45		;6b2f
	dec hl			;6b31
	pop bc			;6b32
	ret			;6b33
	push hl			;6b34
	ld a,(023ceh)		;6b35
	ld l,a			;6b38
	ld a,(023cdh)		;6b39
	ld h,a			;6b3c
	xor a			;6b3d
	add a,h			;6b3e
	dec l			;6b3f
	jr nz,$-2		;6b40
	pop hl			;6b42
	ret			;6b43
	ld a,(hl)			;6b44
	cp 00dh		;6b45
	inc hl			;6b47
	call z,01056h		;6b48
	dec hl			;6b4b
	ret			;6b4c
	dec hl			;6b4d
	ld a,(hl)			;6b4e
	cp 00dh		;6b4f
	call z,01069h		;6b51
	inc hl			;6b54
	ret			;6b55
	call 014ach		;6b56
	call 00f63h		;6b59
	or a			;6b5c
	call 01091h		;6b5d
	ld a,(02260h)		;6b60
	cp b			;6b63
	jp z,0107ch		;6b64
	dec b			;6b67
	ret			;6b68
	call 014ach		;6b69
	call 00f54h		;6b6c
	scf			;6b6f
	call 01091h		;6b70
	ld a,(02261h)		;6b73
	cp b			;6b76
	jp z,01084h		;6b77
	inc b			;6b7a
	ret			;6b7b
	call 00f76h		;6b7c
	set 1,(ix+000h)		;6b7f
	ret			;6b83
	call 00f84h		;6b84
	ld a,0ffh		;6b87
	ld (022fah),a		;6b89
	set 6,(ix+002h)		;6b8c
	ret			;6b90
	push hl			;6b91
	ld hl,(022fbh)		;6b92
	jr c,$+4		;6b95
	dec hl			;6b97
	dec hl			;6b98
	inc hl			;6b99
	ld (022fbh),hl		;6b9a
	pop hl			;6b9d
	ret			;6b9e
	ld d,h			;6b9f
	ld e,l			;6ba0
	inc de			;6ba1
	call 00f63h		;6ba2
	push hl			;6ba5
	ex de,hl			;6ba6
	ld de,(023c3h)		;6ba7
	ld bc,00000h		;6bab
	jr $+5		;6bae
	call 00f54h		;6bb0
	or a			;6bb3
	sbc hl,de		;6bb4
	add hl,de			;6bb6
	inc bc			;6bb7
	jr nz,$-8		;6bb8
	ld (022fbh),bc		;6bba
	ex de,hl			;6bbe
	pop hl			;6bbf
	ld a,(023cah)		;6bc0
	srl a		;6bc3
	dec a			;6bc5
	ld b,a			;6bc6
	push af			;6bc7
	push de			;6bc8
	push hl			;6bc9
	ld hl,(023c3h)		;6bca
	or a			;6bcd
	sbc hl,de		;6bce
	pop hl			;6bd0
	jr z,$+12		;6bd1
	call 00f63h		;6bd3
	jr nc,$+6		;6bd6
	djnz $-5		;6bd8
	jr $+3		;6bda
	dec b			;6bdc
	ld (02306h),de		;6bdd
	pop de			;6be1
	pop af			;6be2
	sub b			;6be3
	ld b,a			;6be4
	ld a,(02260h)		;6be5
	add a,b			;6be8
	ld b,a			;6be9
	set 1,(ix+000h)		;6bea
	jp 00f9dh		;6bee
	push hl			;6bf1
	ld hl,02397h		;6bf2
	push af			;6bf5
	ld a,(hl)			;6bf6
	or a			;6bf7
	jr z,$+10		;6bf8
	pop af			;6bfa
	cp (hl)			;6bfb
	inc hl			;6bfc
	jr nz,$-8		;6bfd
	pop hl			;6bff
	scf			;6c00
	ret			;6c01
	pop af			;6c02
	pop hl			;6c03
	xor a			;6c04
	ret			;6c05
	sbc hl,de		;6c06
	add hl,de			;6c08
	ret nz			;6c09
	push hl			;6c0a
	push de			;6c0b
	ld hl,(02150h)		;6c0c
	ld de,(023c3h)		;6c0f
	sbc hl,de		;6c13
	pop de			;6c15
	pop hl			;6c16
	ret z			;6c17
	push hl			;6c18
	push de			;6c19
	ld hl,(02150h)		;6c1a
	ld d,h			;6c1d
	ld e,l			;6c1e
	call 00f63h		;6c1f
	call 01184h		;6c22
	pop de			;6c25
	pop hl			;6c26
	jr nc,$+5		;6c27
	xor a			;6c29
	scf			;6c2a
	ret			;6c2b
	call 01056h		;6c2c
	push hl			;6c2f
	ld hl,(02150h)		;6c30
	dec hl			;6c33
	ld (hl),020h		;6c34
	ex (sp),hl			;6c36
	call 013deh		;6c37
	ex (sp),hl			;6c3a
	ld (hl),00dh		;6c3b
	set 1,(ix+000h)		;6c3d
	pop hl			;6c41
	xor a			;6c42
	inc a			;6c43
	ret			;6c44
	ld a,(hl)			;6c45
	or a			;6c46
	ret z			;6c47
	cp 00dh		;6c48
	ret nz			;6c4a
	push hl			;6c4b
	push de			;6c4c
	ld hl,(02152h)		;6c4d
	ld d,h			;6c50
	ld e,l			;6c51
	call 00f54h		;6c52
	call 01184h		;6c55
	pop de			;6c58
	pop hl			;6c59
	jr nc,$+5		;6c5a
	xor a			;6c5c
	scf			;6c5d
	ret			;6c5e
	call 014ach		;6c5f
	push hl			;6c62
	push de			;6c63
	call 00f54h		;6c64
	ld h,d			;6c67
	ld l,e			;6c68
	pop de			;6c69
	dec hl			;6c6a
	ld a,(hl)			;6c6b
	or a			;6c6c
	jr z,$+4		;6c6d
	ld (hl),020h		;6c6f
	ex (sp),hl			;6c71
	call 013deh		;6c72
	ex (sp),hl			;6c75
	ld a,(hl)			;6c76
	or a			;6c77
	jr z,$+4		;6c78
	ld (hl),00dh		;6c7a
	set 1,(ix+000h)		;6c7c
	pop hl			;6c80
	xor a			;6c81
	inc a			;6c82
	ret			;6c83
	or a			;6c84
	sbc hl,de		;6c85
	jr nc,$+9		;6c87
	ld a,l			;6c89
	cpl			;6c8a
	ld l,a			;6c8b
	ld a,h			;6c8c
	cpl			;6c8d
	ld h,a			;6c8e
	inc hl			;6c8f
	ld a,(02154h)		;6c90
	add a,l			;6c93
	ld l,a			;6c94
	jr nc,$+3		;6c95
	inc h			;6c97
	push hl			;6c98
	ld hl,(02157h)		;6c99
	ld de,(02155h)		;6c9c
	sbc hl,de		;6ca0
	pop de			;6ca2
	sbc hl,de		;6ca3
	ret			;6ca5
	ld a,(02154h)		;6ca6
	ld de,(02155h)		;6ca9
	add a,e			;6cad
	ld e,a			;6cae
	jr nc,$+3		;6caf
	inc d			;6cb1
	ex de,hl			;6cb2
	or a			;6cb3
	sbc hl,de		;6cb4
	ld b,h			;6cb6
	ld c,l			;6cb7
	ex de,hl			;6cb8
	ld d,h			;6cb9
	ld e,l			;6cba
	ret			;6cbb
	push hl			;6cbc
	ld hl,(02155h)		;6cbd
	dec de			;6cc0
	or a			;6cc1
	sbc hl,de		;6cc2
	add hl,de			;6cc4
	jr z,$+22		;6cc5
	ld a,(de)			;6cc7
	call 010f1h		;6cc8
	jr c,$-11		;6ccb
	dec de			;6ccd
	or a			;6cce
	sbc hl,de		;6ccf
	add hl,de			;6cd1
	jr z,$+9		;6cd2
	ld a,(de)			;6cd4
	call 010f1h		;6cd5
	jr nc,$-11		;6cd8
	inc de			;6cda
	pop hl			;6cdb
	ret			;6cdc
	inc bc			;6cdd
	ld a,(bc)			;6cde
	or a			;6cdf
	ret z			;6ce0
	cp 00dh		;6ce1
	ret z			;6ce3
	call 010f1h		;6ce4
	jr nc,$-10		;6ce7
	inc bc			;6ce9
	ld a,(bc)			;6cea
	or a			;6ceb
	ret z			;6cec
	cp 00dh		;6ced
	ret z			;6cef
	call 010f1h		;6cf0
	jr c,$-10		;6cf3
	ret			;6cf5
	push hl			;6cf6
	or a			;6cf7
	sbc hl,de		;6cf8
	ld a,(02154h)		;6cfa
	sub l			;6cfd
	ld (02154h),a		;6cfe
	pop hl			;6d01
	ret			;6d02
	push hl			;6d03
	push de			;6d04
	ld de,0230fh		;6d05
	call 02142h		;6d08
	ex de,hl			;6d0b
	dec hl			;6d0c
	or a			;6d0d
	sbc hl,de		;6d0e
	jr nc,$+12		;6d10
	ld hl,02312h		;6d12
	call 02135h		;6d15
	or a			;6d18
	sbc hl,de		;6d19
	ccf			;6d1b
	pop de			;6d1c
	pop hl			;6d1d
	jp c,012c4h		;6d1e
	ld a,(0230fh)		;6d21
	inc a			;6d24
	scf			;6d25
	jp z,012bch		;6d26
	ld a,(02312h)		;6d29
	inc a			;6d2c
	scf			;6d2d
	jp z,012c0h		;6d2e
	push hl			;6d31
	push de			;6d32
	push bc			;6d33
	call 01243h		;6d34
	or a			;6d37
	ex de,hl			;6d38
	sbc hl,de		;6d39
	pop bc			;6d3b
	pop de			;6d3c
	pop hl			;6d3d
	ccf			;6d3e
	jp c,012c8h		;6d3f
	ret			;6d42
	ld de,0230fh		;6d43
	call 02142h		;6d46
	ld hl,02312h		;6d49
	call 02135h		;6d4c
	or a			;6d4f
	sbc hl,de		;6d50
	ld b,h			;6d52
	ld c,l			;6d53
	inc bc			;6d54
	add hl,de			;6d55
	ret			;6d56
	ld a,b			;6d57
	cpl			;6d58
	ld b,a			;6d59
	ld a,c			;6d5a
	cpl			;6d5b
	ld c,a			;6d5c
	inc bc			;6d5d
	ld (0230ah),bc		;6d5e
	ld (02308h),hl		;6d62
	push hl			;6d65
	push de			;6d66
	push bc			;6d67
	ld d,h			;6d68
	ld e,l			;6d69
	inc de			;6d6a
	call 00f63h		;6d6b
	ld a,0ffh		;6d6e
	ld hl,0230ch		;6d70
	ld b,003h		;6d73
	push bc			;6d75
	inc hl			;6d76
	ld c,(hl)			;6d77
	inc hl			;6d78
	ld b,(hl)			;6d79
	dec hl			;6d7a
	dec hl			;6d7b
	ex de,hl			;6d7c
	or a			;6d7d
	sbc hl,bc		;6d7e
	add hl,bc			;6d80
	ex de,hl			;6d81
	jr nz,$+3		;6d82
	ld (hl),a			;6d84
	inc hl			;6d85
	inc hl			;6d86
	inc hl			;6d87
	pop bc			;6d88
	djnz $-20		;6d89
	ld b,003h		;6d8b
	ld hl,0230ch		;6d8d
	or a			;6d90
	inc hl			;6d91
	ld e,(hl)			;6d92
	inc hl			;6d93
	ld d,(hl)			;6d94
	push hl			;6d95
	ld hl,(02308h)		;6d96
	sbc hl,de		;6d99
	jr z,$+4		;6d9b
	jr nc,$+7		;6d9d
	ld hl,(0230ah)		;6d9f
	add hl,de			;6da2
	ex de,hl			;6da3
	pop hl			;6da4
	ld (hl),d			;6da5
	dec hl			;6da6
	ld (hl),e			;6da7
	inc hl			;6da8
	inc hl			;6da9
	djnz $-25		;6daa
	pop bc			;6dac
	pop de			;6dad
	pop hl			;6dae
	ret			;6daf
	ld a,001h		;6db0
	jr $+48		;6db2
	ld a,002h		;6db4
	jr $+44		;6db6
	ld a,003h		;6db8
	jr $+40		;6dba
	ld a,004h		;6dbc
	jr $+36		;6dbe
	ld a,005h		;6dc0
	jr $+32		;6dc2
	ld a,006h		;6dc4
	jr $+28		;6dc6
	ld a,007h		;6dc8
	jr $+24		;6dca
	ld a,008h		;6dcc
	jr $+20		;6dce
	ld a,009h		;6dd0
	jr $+16		;6dd2
	ld a,00ah		;6dd4
	jr $+12		;6dd6
	ld a,00bh		;6dd8
	jr $+8		;6dda
	ld a,00ch		;6ddc
	jr $+4		;6dde
	ld a,00dh		;6de0
	ld (02265h),a		;6de2
	ret			;6de5
	ld (bc),a			;6de6
	inc de			;6de7
	inc bc			;6de8
	inc de			;6de9
	ld de,02213h		;6dea
	inc de			;6ded
	inc (hl)			;6dee
	inc de			;6def
	ld c,c			;6df0
	inc de			;6df1
	ld e,h			;6df2
	inc de			;6df3
	ld (hl),b			;6df4
	inc de			;6df5
	add a,l			;6df6
	inc de			;6df7
	sub d			;6df8
	inc de			;6df9
	and b			;6dfa
	inc de			;6dfb
	xor h			;6dfc
	inc de			;6dfd
	cp a			;6dfe
	inc de			;6dff
	call nc,00013h		;6e00
	ld c,a			;6e03
	ld (hl),l			;6e04
	ld (hl),h			;6e05
	jr nz,$+113		;6e06
	ld h,(hl)			;6e08
	jr nz,$+111		;6e09
	ld h,l			;6e0b
	ld l,l			;6e0c
	ld l,a			;6e0d
	ld (hl),d			;6e0e
	ld a,c			;6e0f
	nop			;6e10
	ld c,h			;6e11
	ld l,c			;6e12
	ld l,(hl)			;6e13
	ld h,l			;6e14
	jr nz,$+107		;6e15
	ld (hl),e			;6e17
	jr nz,$+118		;6e18
	ld l,a			;6e1a
	ld l,a			;6e1b
	jr nz,$+110		;6e1c
	ld l,a			;6e1e
	ld l,(hl)			;6e1f
	ld h,a			;6e20
	nop			;6e21
	ld d,l			;6e22
	ld l,(hl)			;6e23
	ld h,h			;6e24
	ld h,l			;6e25
	ld h,(hl)			;6e26
	ld l,c			;6e27
	ld l,(hl)			;6e28
	ld h,l			;6e29
	ld h,h			;6e2a
	jr nz,$+101		;6e2b
	ld l,a			;6e2d
	ld l,l			;6e2e
	ld l,l			;6e2f
	ld h,c			;6e30
	ld l,(hl)			;6e31
	ld h,h			;6e32
	nop			;6e33
	ld b,d			;6e34
	ld l,h			;6e35
	ld l,a			;6e36
	ld h,e			;6e37
	ld l,e			;6e38
	jr nz,$+117		;6e39
	ld (hl),h			;6e3b
	ld h,c			;6e3c
	ld (hl),d			;6e3d
	ld (hl),h			;6e3e
	jr nz,$+119		;6e3f
	ld l,(hl)			;6e41
	ld l,l			;6e42
	ld h,c			;6e43
	ld (hl),d			;6e44
	ld l,e			;6e45
	ld h,l			;6e46
	ld h,h			;6e47
	nop			;6e48
	ld b,d			;6e49
	ld l,h			;6e4a
	ld l,a			;6e4b
	ld h,e			;6e4c
	ld l,e			;6e4d
	jr nz,$+103		;6e4e
	ld l,(hl)			;6e50
	ld h,h			;6e51
	jr nz,$+119		;6e52
	ld l,(hl)			;6e54
	ld l,l			;6e55
	ld h,c			;6e56
	ld (hl),d			;6e57
	ld l,e			;6e58
	ld h,l			;6e59
	ld h,h			;6e5a
	nop			;6e5b
	ld c,c			;6e5c
	ld l,(hl)			;6e5d
	halt			;6e5e
	ld h,c			;6e5f
	ld l,h			;6e60
	ld l,c			;6e61
	ld h,h			;6e62
	jr nz,$+102		;6e63
	ld h,l			;6e65
	ld (hl),e			;6e66
	ld (hl),h			;6e67
	ld l,c			;6e68
	ld l,(hl)			;6e69
	ld h,c			;6e6a
	ld (hl),h			;6e6b
	ld l,c			;6e6c
	ld l,a			;6e6d
	ld l,(hl)			;6e6e
	nop			;6e6f
	ld b,d			;6e70
	ld l,h			;6e71
	ld l,a			;6e72
	ld h,e			;6e73
	ld l,e			;6e74
	jr nz,$+111		;6e75
	ld h,c			;6e77
	ld (hl),d			;6e78
	ld l,e			;6e79
	ld (hl),e			;6e7a
	jr nz,$+116		;6e7b
	ld h,l			;6e7d
	halt			;6e7e
	ld h,l			;6e7f
	ld (hl),d			;6e80
	ld (hl),e			;6e81
	ld h,l			;6e82
	ld h,h			;6e83
	nop			;6e84
	ld c,(hl)			;6e85
	ld l,a			;6e86
	jr nz,$+117		;6e87
	ld (hl),l			;6e89
	ld h,e			;6e8a
	ld l,b			;6e8b
	jr nz,$+110		;6e8c
	ld l,c			;6e8e
	ld l,(hl)			;6e8f
	ld h,l			;6e90
	nop			;6e91
	ld b,d			;6e92
	ld l,h			;6e93
	ld l,a			;6e94
	ld h,e			;6e95
	ld l,e			;6e96
	jr nz,$+118		;6e97
	ld l,a			;6e99
	ld l,a			;6e9a
	jr nz,$+100		;6e9b
	ld l,c			;6e9d
	ld h,a			;6e9e
	nop			;6e9f
	ld c,l			;6ea0
	ld h,c			;6ea1
	ld (hl),d			;6ea2
	ld l,e			;6ea3
	ld h,l			;6ea4
	ld (hl),d			;6ea5
	jr nz,$+110		;6ea6
	ld l,a			;6ea8
	ld (hl),e			;6ea9
	ld (hl),h			;6eaa
	nop			;6eab
	ld c,(hl)			;6eac
	ld l,a			;6ead
	jr nz,$+100		;6eae
	ld l,h			;6eb0
	ld l,a			;6eb1
	ld h,e			;6eb2
	ld l,e			;6eb3
	jr nz,$+107		;6eb4
	ld l,(hl)			;6eb6
	jr nz,$+100		;6eb7
	ld (hl),l			;6eb9
	ld h,(hl)			;6eba
	ld h,(hl)			;6ebb
	ld h,l			;6ebc
	ld (hl),d			;6ebd
	nop			;6ebe
	ld c,(hl)			;6ebf
	ld l,a			;6ec0
	jr nz,$+104		;6ec1
	ld l,c			;6ec3
	ld l,h			;6ec4
	ld h,l			;6ec5
	cpl			;6ec6
	ld b,d			;6ec7
	ld h,c			;6ec8
	ld h,h			;6ec9
	jr nz,$+104		;6eca
	ld l,c			;6ecc
	ld l,h			;6ecd
	ld h,l			;6ece
	ld l,(hl)			;6ecf
	ld h,c			;6ed0
	ld l,l			;6ed1
	ld h,l			;6ed2
	nop			;6ed3
	ld b,h			;6ed4
	ld l,c			;6ed5
	ld (hl),e			;6ed6
	ld h,e			;6ed7
	jr nz,$+104		;6ed8
	ld (hl),l			;6eda
	ld l,h			;6edb
	ld l,h			;6edc
	nop			;6edd
	or a			;6ede
	bit 6,(ix+000h)		;6edf
	ret nz			;6ee3
	push hl			;6ee4
	push de			;6ee5
	call 00f54h		;6ee6
	pop hl			;6ee9
	push hl			;6eea
	ex de,hl			;6eeb
	or a			;6eec
	sbc hl,de		;6eed
	push hl			;6eef
	ld hl,(02157h)		;6ef0
	ld de,(02155h)		;6ef3
	or a			;6ef7
	sbc hl,de		;6ef8
	pop de			;6efa
	sbc hl,de		;6efb
	jr nc,$+9		;6efd
	pop de			;6eff
	pop hl			;6f00
	ex (sp),hl			;6f01
	pop hl			;6f02
	jp 012b4h		;6f03
	ld de,(02302h)		;6f06
	ld hl,(02304h)		;6f0a
	or a			;6f0d
	sbc hl,de		;6f0e
	ld de,(02155h)		;6f10
	add hl,de			;6f14
	ld de,(02157h)		;6f15
	sbc hl,de		;6f19
	pop de			;6f1b
	pop hl			;6f1c
	jr nc,$+26		;6f1d
	bit 2,(ix+000h)		;6f1f
	ret z			;6f23
	call 01b67h		;6f24
	scf			;6f27
	ret nz			;6f28
	res 2,(ix+000h)		;6f29
	push hl			;6f2d
	ld hl,(0225ch)		;6f2e
	ld (02304h),hl		;6f31
	pop hl			;6f34
	jr $-87		;6f35
	push bc			;6f37
	ld bc,00000h		;6f38
	call 0125eh		;6f3b
	pop bc			;6f3e
	or a			;6f3f
	sbc hl,de		;6f40
	push hl			;6f42
	set 6,(ix+000h)		;6f43
	ld (02150h),de		;6f47
	push de			;6f4b
	call 00f54h		;6f4c
	ld (02152h),de		;6f4f
	pop hl			;6f53
	ex de,hl			;6f54
	or a			;6f55
	sbc hl,de		;6f56
	ld a,l			;6f58
	ld (02154h),a		;6f59
	pop hl			;6f5c
	ld a,l			;6f5d
	ld hl,(02155h)		;6f5e
	push hl			;6f61
	add a,l			;6f62
	ld l,a			;6f63
	jr nc,$+3		;6f64
	inc h			;6f66
	push hl			;6f67
	push bc			;6f68
	ld hl,(02150h)		;6f69
	ld de,(02155h)		;6f6c
	ld a,(02154h)		;6f70
	ld b,000h		;6f73
	ld c,a			;6f75
	ldir		;6f76
	pop bc			;6f78
	pop hl			;6f79
	pop de			;6f7a
	or a			;6f7b
	ret			;6f7c
	push de			;6f7d
	push bc			;6f7e
	push hl			;6f7f
	ld a,(02154h)		;6f80
	ld hl,(02155h)		;6f83
	ld b,000h		;6f86
	ld c,a			;6f88
	add hl,bc			;6f89
	ld de,(02157h)		;6f8a
	sbc hl,de		;6f8e
	scf			;6f90
	jr z,$+23		;6f91
	inc a			;6f93
	ld (02154h),a		;6f94
	ld hl,(02157h)		;6f97
	pop de			;6f9a
	push de			;6f9b
	or a			;6f9c
	sbc hl,de		;6f9d
	ld b,h			;6f9f
	ld c,l			;6fa0
	add hl,de			;6fa1
	ld d,h			;6fa2
	ld e,l			;6fa3
	dec hl			;6fa4
	lddr		;6fa5
	xor a			;6fa7
	pop hl			;6fa8
	pop bc			;6fa9
	pop de			;6faa
	ret			;6fab
	bit 6,(ix+000h)		;6fac
	ret z			;6fb0
	push bc			;6fb1
	or a			;6fb2
	sbc hl,de		;6fb3
	push hl			;6fb5
	res 6,(ix+000h)		;6fb6
	ld hl,(02152h)		;6fba
	ld de,(02150h)		;6fbd
	sbc hl,de		;6fc1
	ld a,(02154h)		;6fc3
	push af			;6fc6
	ld d,000h		;6fc7
	ld e,a			;6fc9
	ex de,hl			;6fca
	sbc hl,de		;6fcb
	jr z,$+8		;6fcd
	call nc,014ech		;6fcf
	call c,01514h		;6fd2
	pop af			;6fd5
	ld b,000h		;6fd6
	ld c,a			;6fd8
	ld hl,(02155h)		;6fd9
	ld de,(02150h)		;6fdc
	push de			;6fe0
	ldir		;6fe1
	pop de			;6fe3
	pop hl			;6fe4
	add hl,de			;6fe5
	pop bc			;6fe6
	set 0,(ix+002h)		;6fe7
	ret			;6feb
	ld de,(02302h)		;6fec
	push de			;6ff0
	add hl,de			;6ff1
	ld d,h			;6ff2
	ld e,l			;6ff3
	ld (02302h),de		;6ff4
	pop hl			;6ff8
	push hl			;6ff9
	inc hl			;6ffa
	ld bc,(02152h)		;6ffb
	sbc hl,bc		;6fff
	ld b,h			;7001
	ld c,l			;7002
	pop hl			;7003
	ld a,b			;7004
	or c			;7005
	ret z			;7006
	lddr		;7007
	sbc hl,de		;7009
	ld b,h			;700b
	ld c,l			;700c
	add hl,de			;700d
	inc hl			;700e
	call 01257h		;700f
	or a			;7012
	ret			;7013
	ld de,(02152h)		;7014
	push de			;7018
	add hl,de			;7019
	ld d,h			;701a
	ld e,l			;701b
	pop bc			;701c
	push bc			;701d
	ld hl,(02302h)		;701e
	inc hl			;7021
	or a			;7022
	sbc hl,bc		;7023
	ld b,h			;7025
	ld c,l			;7026
	pop hl			;7027
	ld a,b			;7028
	or c			;7029
	jr z,$+13		;702a
	push hl			;702c
	ldir		;702d
	sbc hl,de		;702f
	ld b,h			;7031
	ld c,l			;7032
	pop hl			;7033
	call 01257h		;7034
	dec de			;7037
	ld (02302h),de		;7038
	ret			;703c
	set 5,(ix+000h)		;703d
	ld a,009h		;7041
	jp 00e89h		;7043
	call 00f92h		;7046
	ret z			;7049
	dec hl			;704a
	call 01044h		;704b
	jr $+108		;704e
	push hl			;7050
	ld hl,00e10h		;7051
	ld a,04dh		;7054
	cp (hl)			;7056
	nop			;7057
	nop			;7058
	nop			;7059
	pop hl			;705a
	ld a,(hl)			;705b
	or a			;705c
	ret z			;705d
	inc hl			;705e
	call 0104dh		;705f
	jr $+88		;7062
	dec hl			;7064
	ld a,(hl)			;7065
	cp 00dh		;7066
	inc hl			;7068
	jr nz,$+8		;7069
	dec hl			;706b
	call 01056h		;706c
	jr $+31		;706f
	call 00f92h		;7071
	jr z,$+26		;7074
	dec hl			;7076
	ld a,(hl)			;7077
	cp 00dh		;7078
	jr z,$+19		;707a
	call 010f1h		;707c
	jr c,$-14		;707f
	call 00f92h		;7081
	jr z,$+10		;7084
	dec hl			;7086
	ld a,(hl)			;7087
	call 010f1h		;7088
	jr nc,$-10		;708b
	inc hl			;708d
	jr $+44		;708e
	ld a,(hl)			;7090
	inc hl			;7091
	or a			;7092
	ret z			;7093
	cp 00dh		;7094
	ret			;7096
	ld a,(hl)			;7097
	or a			;7098
	jr z,$+33		;7099
	cp 00dh		;709b
	jr nz,$+8		;709d
	inc hl			;709f
	call 01069h		;70a0
	jr $+23		;70a3
	call 01590h		;70a5
	jr z,$+17		;70a8
	call 010f1h		;70aa
	jr nc,$-8		;70ad
	call 01590h		;70af
	jr z,$+7		;70b2
	call 010f1h		;70b4
	jr c,$-8		;70b7
	dec hl			;70b9
	jp 00f9dh		;70ba
	call 00f92h		;70bd
	ret z			;70c0
	dec hl			;70c1
	ld a,(hl)			;70c2
	cp 00dh		;70c3
	jr z,$+10		;70c5
	call 00f9dh		;70c7
	call 00f2fh		;70ca
	jr nz,$-12		;70cd
	call 01044h		;70cf
	jr $-24		;70d2
	ld a,(hl)			;70d4
	or a			;70d5
	ret z			;70d6
	cp 00dh		;70d7
	inc hl			;70d9
	jr z,$+20		;70da
	dec hl			;70dc
	inc hl			;70dd
	ld a,(hl)			;70de
	cp 00dh		;70df
	jr z,$+13		;70e1
	or a			;70e3
	jr z,$+10		;70e4
	call 00f9dh		;70e6
	call 00f2fh		;70e9
	jr nz,$-15		;70ec
	call 0104dh		;70ee
	jr $-55		;70f1
	ld h,d			;70f3
	ld l,e			;70f4
	jr $-59		;70f5
	push de			;70f7
	call 00f54h		;70f8
	dec de			;70fb
	ld h,d			;70fc
	ld l,e			;70fd
	pop de			;70fe
	jr $-69		;70ff
	push hl			;7101
	ld h,d			;7102
	ld l,e			;7103
	call 00f92h		;7104
	pop hl			;7107
	ret z			;7108
	call 01056h		;7109
	jp 00fe6h		;710c
	push de			;710f
	call 00f54h		;7110
	pop de			;7113
	ret c			;7114
	call 01069h		;7115
	jr $-12		;7118
	ld hl,(02306h)		;711a
	ld d,h			;711d
	ld e,l			;711e
	ld a,(02260h)		;711f
	ld c,a			;7122
	ld a,b			;7123
	sub c			;7124
	or a			;7125
	jr z,$+8		;7126
	call 01091h		;7128
	dec a			;712b
	jr nz,$-4		;712c
	ld a,(02260h)		;712e
	ld b,a			;7131
	jr $+66		;7132
	ld (07600h),hl		;7134
	jr $-2		;7137
	ld a,(02260h)		;7139
	cp 058h		;713c
	nop			;713e
	nop			;713f
	ld a,(02260h)		;7140
	ld c,a			;7143
	ld a,b			;7144
	sub c			;7145
	or a			;7146
	jr z,$+8		;7147
	call 01091h		;7149
	dec a			;714c
	jr nz,$-4		;714d
	ld a,(02260h)		;714f
	ld b,a			;7152
	ld de,(02306h)		;7153
	call 00f54h		;7157
	push af			;715a
	scf			;715b
	call 01091h		;715c
	pop af			;715f
	inc b			;7160
	jr c,$+8		;7161
	ld a,(02261h)		;7163
	cp b			;7166
	jr nc,$-16		;7167
	dec b			;7169
	ld h,d			;716a
	ld l,e			;716b
	dec hl			;716c
	call 00f63h		;716d
	or a			;7170
	call 01091h		;7171
	jp 00f9dh		;7174
	push hl			;7177
	ld hl,(02306h)		;7178
	call 00f92h		;717b
	pop hl			;717e
	ret z			;717f
	ld a,(023cah)		;7180
	ld l,a			;7183
	dec l			;7184
	dec l			;7185
	dec l			;7186
	call 00f63h		;7187
	call 00f76h		;718a
	push af			;718d
	or a			;718e
	call 01091h		;718f
	pop af			;7192
	jr c,$+8		;7193
	call 00fe6h		;7195
	jp 0109fh		;7198
	dec l			;719b
	jr nz,$-21		;719c
	set 1,(ix+000h)		;719e
	jp 00fe6h		;71a2
	set 1,(ix+000h)		;71a5
	ld a,(023cah)		;71a9
	ld l,a			;71ac
	dec l			;71ad
	dec l			;71ae
	dec l			;71af
	call 00f84h		;71b0
	call 00f54h		;71b3
	jr nc,$+11		;71b6
	call 00f63h		;71b8
	call 00fe6h		;71bb
	jp 0109fh		;71be
	scf			;71c1
	call 01091h		;71c2
	dec l			;71c5
	jr nz,$-22		;71c6
	jr $-42		;71c8
	call 00f92h		;71ca
	ret z			;71cd
	set 1,(ix+000h)		;71ce
	ld hl,00001h		;71d2
	ld (022fbh),hl		;71d5
	ld hl,(023c3h)		;71d8
	ld d,h			;71db
	ld e,l			;71dc
	ld (02306h),hl		;71dd
	ld a,(02260h)		;71e0
	ld b,a			;71e3
	jp 00f9dh		;71e4
	ld bc,0ffffh		;71e7
	inc bc			;71ea
	call 00f54h		;71eb
	jr nc,$-4		;71ee
	ld hl,(022fbh)		;71f0
	add hl,bc			;71f3
	ld (022fbh),hl		;71f4
	ld h,d			;71f7
	ld l,e			;71f8
	dec hl			;71f9
	call 00f63h		;71fa
	ld a,(023cah)		;71fd
	dec a			;7200
	dec a			;7201
	jp 010c5h		;7202
	or a			;7205
	sbc hl,de		;7206
	ld a,l			;7208
	add hl,de			;7209
	ld (bc),a			;720a
	inc bc			;720b
	ld a,e			;720c
	ld (bc),a			;720d
	inc bc			;720e
	ld a,d			;720f
	ld (bc),a			;7210
	ret			;7211
	ld a,(hl)			;7212
	cp 0ffh		;7213
	jr nz,$+6		;7215
	pop hl			;7217
	jp 012d4h		;7218
	pop de			;721b
	inc hl			;721c
	ld e,(hl)			;721d
	inc hl			;721e
	ld d,(hl)			;721f
	add a,e			;7220
	ld l,a			;7221
	ld h,d			;7222
	jr nc,$+3		;7223
	inc h			;7225
	jp 0109fh		;7226
	push bc			;7229
	ld bc,0230ch		;722a
	call 01705h		;722d
	pop bc			;7230
	ret			;7231
	push hl			;7232
	ld hl,0230ch		;7233
	jr $-36		;7236
	bit 6,(ix+000h)		;7238
	jr z,$+24		;723c
	ld de,(02150h)		;723e
	ld hl,02264h		;7242
	res 6,(hl)		;7245
	set 1,(hl)		;7247
	ld a,(023c9h)		;7249
	ld (022fah),a		;724c
	ld h,d			;724f
	ld l,e			;7250
	jp 00f9dh		;7251
	bit 7,(ix+000h)		;7254
	ret z			;7258
	ld a,(02154h)		;7259
	push hl			;725c
	ld hl,(02302h)		;725d
	add a,l			;7260
	ld l,a			;7261
	jr nc,$+3		;7262
	inc h			;7264
	push de			;7265
	ld de,(02304h)		;7266
	or a			;726a
	sbc hl,de		;726b
	pop de			;726d
	bit 2,(ix+000h)		;726e
	pop hl			;7272
	jr c,$+23		;7273
	jp z,012b0h		;7275
	call 01b67h		;7278
	ret nz			;727b
	push hl			;727c
	res 2,(ix+000h)		;727d
	ld hl,(0225ch)		;7281
	ld (02304h),hl		;7284
	pop hl			;7287
	jr $-52		;7288
	ld hl,02264h		;728a
	set 6,(hl)		;728d
	set 1,(hl)		;728f
	ld (02150h),de		;7291
	ld (02152h),de		;7295
	ld de,(02155h)		;7299
	push hl			;729d
	ld a,(02154h)		;729e
	add a,e			;72a1
	ld l,a			;72a2
	ld h,d			;72a3
	jr nc,$+3		;72a4
	inc h			;72a6
	dec hl			;72a7
	ld (hl),00dh		;72a8
	pop hl			;72aa
	call 014ach		;72ab
	jr $-95		;72ae
	ld a,(02264h)		;72b0
	xor 001h		;72b3
	jr $+7		;72b5
	ld a,(02264h)		;72b7
	xor 010h		;72ba
	ld (02264h),a		;72bc
	set 1,(ix+002h)		;72bf
	ret			;72c3
	ld a,(02266h)		;72c4
	xor 010h		;72c7
	set 0,a		;72c9
	ld (02266h),a		;72cb
	ret			;72ce
	push bc			;72cf
	ld bc,0230fh		;72d0
	call 01705h		;72d3
	pop bc			;72d6
	ret			;72d7
	ld a,(hl)			;72d8
	or a			;72d9
	push af			;72da
	jr nz,$+9		;72db
	dec hl			;72dd
	ld a,(hl)			;72de
	cp 00dh		;72df
	call z,00f63h		;72e1
	push bc			;72e4
	ld bc,02312h		;72e5
	call 01705h		;72e8
	pop bc			;72eb
	pop af			;72ec
	ret nz			;72ed
	ld a,(hl)			;72ee
	inc hl			;72ef
	cp 00dh		;72f0
	ret nz			;72f2
	ld d,h			;72f3
	ld e,l			;72f4
	ret			;72f5
	push hl			;72f6
	ld hl,0230fh		;72f7
	jr $+6		;72fa
	push hl			;72fc
	ld hl,02312h		;72fd
	jp 01712h		;7300
	push hl			;7303
	push bc			;7304
	ld b,00ah		;7305
	ld hl,01817h		;7307
	call 007d8h		;730a
	call 008b7h		;730d
	res 5,a		;7310
	cp 059h		;7312
	pop bc			;7314
	pop hl			;7315
	ret			;7316
	ld d,e			;7317
	ld (hl),l			;7318
	ld (hl),d			;7319
	ld h,l			;731a
	ccf			;731b
	jr nz,$+34		;731c
	jr nz,$+34		;731e
	jr nz,$+64		;7320
	ex af,af'			;7322
	call 008c0h		;7323
	ld a,020h		;7326
	call 008c0h		;7328
	ld a,008h		;732b
	jp 008c0h		;732d
	set 1,(ix+000h)		;7330
	ld b,a			;7334
	ld a,(0225fh)		;7335
	ld c,a			;7338
	push hl			;7339
	push bc			;733a
	call 0084dh		;733b
	ld hl,01302h		;733e
	ld a,(023c9h)		;7341
	ld b,a			;7344
	call 007d8h		;7345
	pop bc			;7348
	ld a,(023cfh)		;7349
	ld c,a			;734c
	ld a,(023c8h)		;734d
	add a,c			;7350
	ld c,a			;7351
	call 0084dh		;7352
	pop hl			;7355
	jp 005eeh		;7356
	push hl			;7359
	push bc			;735a
	ld a,(02260h)		;735b
	ld hl,018beh		;735e
	call 01830h		;7361
	call 005c1h		;7364
	ld b,00eh		;7367
	ld hl,01875h		;7369
	call 007d8h		;736c
	call 01803h		;736f
	pop bc			;7372
	pop hl			;7373
	ret			;7374
	ld b,c			;7375
	ld h,d			;7376
	ld h,c			;7377
	ld l,(hl)			;7378
	ld h,h			;7379
	ld l,a			;737a
	ld l,(hl)			;737b
	jr nz,$+118		;737c
	ld h,l			;737e
	ld a,b			;737f
	ld (hl),h			;7380
	ld a,(0cd20h)		;7381
	ld e,c			;7384
	jr $-52		;7385
	or c			;7387
	ld (bc),a			;7388
	or a			;7389
	ret nz			;738a
	ld hl,01c12h		;738b
	ld (hl),000h		;738e
	call 01bb6h		;7390
	jr z,$-13		;7393
	ld de,00080h		;7395
	ld a,00fh		;7398
	ld (de),a			;739a
	inc de			;739b
	ld a,020h		;739c
	ld (de),a			;739e
	inc de			;739f
	ld bc,0000fh		;73a0
	push bc			;73a3
	ldir		;73a4
	pop bc			;73a6
	jp 0021dh		;73a7
	ld e,(hl)			;73aa
	ld d,l			;73ab
	jr nz,$+118		;73ac
	ld l,a			;73ae
	jr nz,$+99		;73af
	ld h,d			;73b1
	ld l,a			;73b2
	ld (hl),d			;73b3
	ld (hl),h			;73b4
	jr nz,$+101		;73b5
	ld l,a			;73b7
	ld l,l			;73b8
	ld l,l			;73b9
	ld h,c			;73ba
	ld l,(hl)			;73bb
	ld h,h			;73bc
	nop			;73bd
	ld d,e			;73be
	ld h,l			;73bf
	ld h,l			;73c0
	jr nz,$+111		;73c1
	ld h,c			;73c3
	ld l,(hl)			;73c4
	ld (hl),l			;73c5
	ld h,c			;73c6
	ld l,h			;73c7
	jr nz,$+104		;73c8
	ld l,a			;73ca
	ld (hl),d			;73cb
	jr nz,$+102		;73cc
	ld h,l			;73ce
	ld (hl),h			;73cf
	ld h,c			;73d0
	ld l,c			;73d1
	ld l,h			;73d2
	ld (hl),e			;73d3
	nop			;73d4
	ld a,001h		;73d5
	jr $+3		;73d7
	xor a			;73d9
	ld (022f7h),a		;73da
	push hl			;73dd
	push de			;73de
	push bc			;73df
	ld hl,(02315h)		;73e0
	ld de,01c12h		;73e3
	jr $+5		;73e6
	ld (de),a			;73e8
	inc de			;73e9
	inc hl			;73ea
	ld a,(hl)			;73eb
	or a			;73ec
	jr nz,$-5		;73ed
	ld (de),a			;73ef
	ld a,(02260h)		;73f0
	ld hl,018aah		;73f3
	push af			;73f6
	call 01830h		;73f7
	pop af			;73fa
	inc a			;73fb
	inc hl			;73fc
	call 01830h		;73fd
	res 5,(ix+002h)		;7400
	call 01bb6h		;7404
	jr z,$+60		;7407
	ld a,(022f7h)		;7409
	or a			;740c
	push hl			;740d
	push de			;740e
	push bc			;740f
	call nz,00b36h		;7410
	pop bc			;7413
	pop de			;7414
	pop hl			;7415
	or a			;7416
	call nz,012dch		;7417
	jr nz,$+41		;741a
	push hl			;741c
	ld hl,(02302h)		;741d
	ld de,(023c3h)		;7420
	or a			;7424
	sbc hl,de		;7425
	ld b,h			;7427
	ld c,l			;7428
	pop hl			;7429
	call 00b9fh		;742a
	or a			;742d
	jr nz,$+12		;742e
	bit 5,(ix+002h)		;7430
	jp nz,0188bh		;7434
	jp 002b1h		;7437
	dec a			;743a
	call z,012dch		;743b
	jr z,$+5		;743e
	call 012e0h		;7440
	pop bc			;7443
	pop de			;7444
	pop hl			;7445
	ret			;7446
	push hl			;7447
	call 019d5h		;7448
	jr $+6		;744b
	push hl			;744d
	call 0198bh		;744e
	ld a,h			;7451
	or l			;7452
	jr nz,$+4		;7453
	pop hl			;7455
	ret			;7456
	push bc			;7457
	push de			;7458
	ld b,h			;7459
	ld c,l			;745a
	ld hl,02317h		;745b
	ld (hl),000h		;745e
	ld de,(023c3h)		;7460
	dec bc			;7464
	ld a,b			;7465
	or c			;7466
	jr z,$+13		;7467
	call 00f54h		;7469
	jr nc,$-8		;746c
	pop de			;746e
	pop bc			;746f
	pop hl			;7470
	jp 012cch		;7471
	pop bc			;7474
	pop bc			;7475
	pop bc			;7476
	ld h,d			;7477
	ld l,e			;7478
	jp 0109fh		;7479
	ld hl,02266h		;747c
	set 2,(hl)		;747f
	call 005c7h		;7481
	set 2,(ix+002h)		;7484
	jp 005c1h		;7488
	push de			;748b
	push bc			;748c
	call 0197ch		;748d
	ld b,00ch		;7490
	ld hl,019eeh		;7492
	call 007d8h		;7495
	ld b,004h		;7498
	ld hl,02317h		;749a
	ld a,02dh		;749d
	ld (022f5h),a		;749f
	inc b			;74a2
	call 008b7h		;74a3
	call 01c2bh		;74a6
	jr z,$+24		;74a9
	cp 00dh		;74ab
	jr z,$+32		;74ad
	sub 030h		;74af
	cp 00ah		;74b1
	jr nc,$-16		;74b3
	dec b			;74b5
	jr z,$-20		;74b6
	add a,030h		;74b8
	ld (hl),a			;74ba
	inc hl			;74bb
	call 008c0h		;74bc
	jr $-28		;74bf
	ld a,b			;74c1
	cp 005h		;74c2
	jr z,$-33		;74c4
	dec hl			;74c6
	inc b			;74c7
	call 01821h		;74c8
	jr $-40		;74cb
	ld (hl),000h		;74cd
	call 019d5h		;74cf
	pop bc			;74d2
	pop de			;74d3
	ret			;74d4
	ld hl,00000h		;74d5
	ld de,02317h		;74d8
	ld a,(de)			;74db
	inc de			;74dc
	or a			;74dd
	ret z			;74de
	sub 030h		;74df
	add hl,hl			;74e1
	push hl			;74e2
	add hl,hl			;74e3
	add hl,hl			;74e4
	pop bc			;74e5
	add hl,bc			;74e6
	add a,l			;74e7
	ld l,a			;74e8
	jr nc,$-14		;74e9
	inc h			;74eb
	jr $-17		;74ec
	ld b,a			;74ee
	ld l,a			;74ef
	jr nz,$+118		;74f0
	ld l,a			;74f2
	jr nz,$+110		;74f3
	ld l,c			;74f5
	ld l,(hl)			;74f6
	ld h,l			;74f7
	ld a,(0cd20h)		;74f8
	inc bc			;74fb
	ld (de),a			;74fc
	ret c			;74fd
	call 0205ch		;74fe
	jp z,012b0h		;7501
	call 02073h		;7504
	jp 01ab5h		;7507
	call 01203h		;750a
	ret c			;750d
	push hl			;750e
	push de			;750f
	push bc			;7510
	call 01243h		;7511
	ld hl,(02302h)		;7514
	add hl,bc			;7517
	ld de,(0225ch)		;7518
	ex de,hl			;751c
	sbc hl,de		;751d
	pop bc			;751f
	pop de			;7520
	pop hl			;7521
	jp c,012d0h		;7522
	push hl			;7525
	call 01243h		;7526
	ld (022f7h),bc		;7529
	pop hl			;752d
	push hl			;752e
	ld a,(0230fh)		;752f
	push af			;7532
	call 0125eh		;7533
	pop af			;7536
	ld (0230fh),a		;7537
	ld de,(02302h)		;753a
	ex de,hl			;753e
	or a			;753f
	sbc hl,de		;7540
	ld b,h			;7542
	ld c,l			;7543
	inc bc			;7544
	add hl,de			;7545
	ld de,(022f7h)		;7546
	push hl			;754a
	add hl,de			;754b
	ld d,h			;754c
	ld e,l			;754d
	ld (02302h),de		;754e
	pop hl			;7552
	lddr		;7553
	ld bc,(022f7h)		;7555
	pop de			;7559
	push de			;755a
	ld hl,0230fh		;755b
	call 02135h		;755e
	ldir		;7561
	ld h,d			;7563
	ld l,e			;7564
	dec hl			;7565
	call 00f63h		;7566
	call 017d8h		;7569
	pop hl			;756c
	ld d,h			;756d
	ld e,l			;756e
	inc de			;756f
	call 00f63h		;7570
	call 017cfh		;7573
	jp 0109fh		;7576
	call 01221h		;7579
	ret c			;757c
	call 0205ch		;757d
	jr nz,$+6		;7580
	call 01b67h		;7582
	ret nz			;7585
	call 02073h		;7586
	ld hl,(02310h)		;7589
	jp 0109fh		;758c
	bit 2,(ix+000h)		;758f
	jp z,012d8h		;7593
	push hl			;7596
	push de			;7597
	ld hl,(0225ch)		;7598
	push hl			;759b
	ld de,(0225ah)		;759c
	or a			;75a0
	sbc hl,de		;75a1
	inc hl			;75a3
	ld de,(02302h)		;75a4
	add hl,de			;75a8
	pop de			;75a9
	jr c,$+6		;75aa
	ex de,hl			;75ac
	dec hl			;75ad
	sbc hl,de		;75ae
	pop de			;75b0
	pop hl			;75b1
	jp c,012d0h		;75b2
	push hl			;75b5
	ld hl,(0225ch)		;75b6
	ld bc,(0225ah)		;75b9
	ld (022f1h),bc		;75bd
	or a			;75c1
	sbc hl,bc		;75c2
	ld b,h			;75c4
	ld c,l			;75c5
	inc bc			;75c6
	pop hl			;75c7
	push hl			;75c8
	call 0125eh		;75c9
	ld hl,(02304h)		;75cc
	ld de,(02302h)		;75cf
	ld (022f3h),de		;75d3
	or a			;75d7
	sbc hl,de		;75d8
	ld (022f7h),hl		;75da
	ex de,hl			;75dd
	pop de			;75de
	push de			;75df
	sbc hl,de		;75e0
	inc hl			;75e2
	ld (022f5h),hl		;75e3
	ld hl,(022f7h)		;75e6
	ld de,(022f1h)		;75e9
	push de			;75ed
	push hl			;75ee
	add hl,de			;75ef
	dec hl			;75f0
	ld de,(0225ch)		;75f1
	jr c,$+6		;75f5
	sbc hl,de		;75f7
	jr c,$+14		;75f9
	pop hl			;75fb
	ex de,hl			;75fc
	pop de			;75fd
	push de			;75fe
	or a			;75ff
	sbc hl,de		;7600
	inc hl			;7602
	ld (022f7h),hl		;7603
	push hl			;7606
	pop hl			;7607
	ld de,(022f3h)		;7608
	add hl,de			;760c
	ld (022f3h),hl		;760d
	ex de,hl			;7610
	ld bc,(022f5h)		;7611
	lddr		;7615
	ld (02308h),de		;7617
	ld d,h			;761b
	ld e,l			;761c
	inc de			;761d
	ld bc,(022f7h)		;761e
	pop hl			;7622
	ldir		;7623
	ld (022f1h),hl		;7625
	dec hl			;7628
	ld de,(0225ch)		;7629
	or a			;762d
	sbc hl,de		;762e
	jr nz,$-74		;7630
	ld hl,(022f3h)		;7632
	ld (02302h),hl		;7635
	ld de,(0225ah)		;7638
	or a			;763c
	sbc hl,de		;763d
	jr c,$+15		;763f
	res 2,(ix+000h)		;7641
	ld hl,(0225ch)		;7645
	ld (02304h),hl		;7648
	ld (0225ah),hl		;764b
	ld hl,(02308h)		;764e
	ld d,h			;7651
	ld e,l			;7652
	inc de			;7653
	call 00f63h		;7654
	call 017d8h		;7657
	pop hl			;765a
	ld d,h			;765b
	ld e,l			;765c
	inc de			;765d
	call 00f63h		;765e
	call 017cfh		;7661
	jp 0109fh		;7664
	push hl			;7667
	push bc			;7668
	call 005c1h		;7669
	ld b,00fh		;766c
	ld hl,01b7eh		;766e
	call 007d8h		;7671
	set 2,(ix+002h)		;7674
	call 01803h		;7678
	pop bc			;767b
	pop hl			;767c
	ret			;767d
	ld b,c			;767e
	ld h,d			;767f
	ld h,c			;7680
	ld l,(hl)			;7681
	ld h,h			;7682
	ld l,a			;7683
	ld l,(hl)			;7684
	jr nz,$+100		;7685
	ld l,h			;7687
	ld l,a			;7688
	ld h,e			;7689
	ld l,e			;768a
	ld a,(0cd20h)		;768b
	ld hl,0d812h		;768e
	push hl			;7691
	push de			;7692
	push bc			;7693
	ld hl,01c12h		;7694
	ld (hl),000h		;7697
	call 01bb6h		;7699
	jr z,$+22		;769c
	push hl			;769e
	call 01243h		;769f
	pop hl			;76a2
	call 00b9fh		;76a3
	or a			;76a6
	jr z,$+11		;76a7
	dec a			;76a9
	call z,012dch		;76aa
	jr z,$+5		;76ad
	call 012e0h		;76af
	pop bc			;76b2
	pop de			;76b3
	pop hl			;76b4
	ret			;76b5
	push bc			;76b6
	call 0197ch		;76b7
	ld b,00ah		;76ba
	ld hl,01c21h		;76bc
	call 007d8h		;76bf
	ld b,00eh		;76c2
	ld a,02dh		;76c4
	ld (022f5h),a		;76c6
	ld hl,01c12h		;76c9
	ld a,(hl)			;76cc
	or a			;76cd
	jr z,$+9		;76ce
	dec b			;76d0
	inc hl			;76d1
	call 008c0h		;76d2
	jr $-9		;76d5
	inc b			;76d7
	call 008b7h		;76d8
	call 01c2bh		;76db
	jr z,$+26		;76de
	cp 015h		;76e0
	jr z,$+46		;76e2
	cp 00dh		;76e4
	jr z,$+34		;76e6
	cp 020h		;76e8
	jr c,$-18		;76ea
	jr z,$+24		;76ec
	dec b			;76ee
	jr z,$-24		;76ef
	ld (hl),a			;76f1
	call 008c0h		;76f2
	inc hl			;76f5
	jr $-30		;76f6
	ld a,b			;76f8
	cp 00fh		;76f9
	jr z,$-35		;76fb
	dec hl			;76fd
	inc b			;76fe
	call 01821h		;76ff
	jr $-42		;7702
	set 5,(ix+002h)		;7704
	ld (hl),000h		;7708
	ld hl,01c12h		;770a
	ld a,b			;770d
	sub 00fh		;770e
	pop bc			;7710
	ret			;7711
	nop			;7712
	nop			;7713
	nop			;7714
	nop			;7715
	nop			;7716
	nop			;7717
	nop			;7718
	nop			;7719
	nop			;771a
	nop			;771b
	nop			;771c
	nop			;771d
	nop			;771e
	nop			;771f
	nop			;7720
	ld b,(hl)			;7721
	ld l,c			;7722
	ld l,h			;7723
	ld h,l			;7724
	ld l,(hl)			;7725
	ld h,c			;7726
	ld l,l			;7727
	ld h,l			;7728
	ld a,(0e520h)		;7729
	push bc			;772c
	push af			;772d
	ld hl,(023f5h)		;772e
	ld bc,023f5h		;7731
	add hl,bc			;7734
	ld a,(022f5h)		;7735
	ld b,a			;7738
	ld a,(hl)			;7739
	inc hl			;773a
	or a			;773b
	jr nz,$-3		;773c
	djnz $-5		;773e
	pop af			;7740
	cp (hl)			;7741
	pop bc			;7742
	pop hl			;7743
	ret			;7744
	push hl			;7745
	push de			;7746
	push bc			;7747
	ld (022f1h),hl		;7748
	ld hl,01c12h		;774b
	ld (hl),000h		;774e
	call 01bb6h		;7750
	jp z,01ce0h		;7753
	push hl			;7756
	res 2,(ix+000h)		;7757
	ld hl,(0225ch)		;775b
	ld de,(02302h)		;775e
	or a			;7762
	sbc hl,de		;7763
	ld b,h			;7765
	ld c,l			;7766
	ld hl,(022f1h)		;7767
	call 0125eh		;776a
	ld d,h			;776d
	ld e,l			;776e
	push bc			;776f
	ld hl,(02302h)		;7770
	or a			;7773
	sbc hl,de		;7774
	ld b,h			;7776
	ld c,l			;7777
	inc bc			;7778
	ld (022f7h),bc		;7779
	add hl,de			;777d
	push de			;777e
	ld de,(0225ch)		;777f
	ld (02302h),de		;7783
	ld (02304h),de		;7787
	lddr		;778b
	inc de			;778d
	ld (022f3h),de		;778e
	pop de			;7792
	pop bc			;7793
	ld a,b			;7794
	or c			;7795
	jr z,$+32		;7796
	pop hl			;7798
	call 00c59h		;7799
	dec a			;779c
	jr z,$+15		;779d
	dec a			;779f
	jr z,$+17		;77a0
	set 1,(ix+000h)		;77a2
	ld (022f1h),de		;77a6
	jr $+15		;77aa
	call 012dch		;77ac
	jr $+10		;77af
	call 012d0h		;77b1
	jr $+5		;77b4
	call 012b0h		;77b6
	ld de,(022f1h)		;77b9
	ld hl,(022f3h)		;77bd
	or a			;77c0
	sbc hl,de		;77c1
	ld b,h			;77c3
	ld c,l			;77c4
	add hl,de			;77c5
	call 01257h		;77c6
	ld bc,(022f7h)		;77c9
	ldir		;77cd
	dec de			;77cf
	ld (02302h),de		;77d0
	ld hl,(022f1h)		;77d4
	ld d,h			;77d7
	ld e,l			;77d8
	inc de			;77d9
	call 00f63h		;77da
	call 017d8h		;77dd
	pop bc			;77e0
	pop de			;77e1
	pop hl			;77e2
	call 017cfh		;77e3
	jp 0109fh		;77e6
	push hl			;77e9
	push de			;77ea
	push bc			;77eb
	ld a,(023d3h)		;77ec
	ld hl,02267h		;77ef
	ld (022f7h),hl		;77f2
	call 01d66h		;77f5
	ld (022f1h),a		;77f8
	jr c,$+25		;77fb
	ld a,(023d4h)		;77fd
	ld hl,022a9h		;7800
	ld (022f7h),hl		;7803
	call 01d66h		;7806
	ld (022f3h),a		;7809
	jr c,$+8		;780c
	call 01e75h		;780e
	call 01d52h		;7811
	pop bc			;7814
	pop de			;7815
	pop hl			;7816
	ret c			;7817
	call 01d4ah		;7818
	ret z			;781b
	inc hl			;781c
	call 01e96h		;781d
	dec hl			;7820
	ret c			;7821
	inc hl			;7822
	jr $+36		;7823
	call 01d4ah		;7825
	ret z			;7828
	call 01e96h		;7829
	ret c			;782c
	call 01ecbh		;782d
	call 01e96h		;7830
	jr $+20		;7833
	call 01d4ah		;7835
	ret z			;7838
	ld a,(hl)			;7839
	or a			;783a
	jr z,$+12		;783b
	call 01e96h		;783d
	jr c,$+7		;7840
	call 01ecbh		;7842
	jr nc,$-12		;7845
	jp 0109fh		;7847
	ld a,(hl)			;784a
	or a			;784b
	ret z			;784c
	ld a,(022edh)		;784d
	or a			;7850
	ret			;7851
	ld a,(022efh)		;7852
	ld hl,022edh		;7855
	sub (hl)			;7858
	ld hl,022ebh		;7859
	ld (hl),a			;785c
	xor a			;785d
	bit 7,(hl)		;785e
	jr z,$+3		;7860
	dec a			;7862
	inc hl			;7863
	ld (hl),a			;7864
	ret			;7865
	ld c,a			;7866
	call 01e5ah		;7867
	ld (022f3h),hl		;786a
	res 1,e		;786d
	push hl			;786f
	push bc			;7870
	ld a,c			;7871
	call 0076dh		;7872
	ld a,(023cch)		;7875
	ld b,a			;7878
	ld hl,(022f3h)		;7879
	call 007d8h		;787c
	ld a,c			;787f
	call 0076dh		;7880
	pop bc			;7883
	pop hl			;7884
	bit 1,e		;7885
	jr z,$+8		;7887
	dec hl			;7889
	ld a,(hl)			;788a
	inc hl			;788b
	call 007fdh		;788c
	res 0,e		;788f
	call 008b7h		;7891
	ld b,a			;7894
	push hl			;7895
	ld hl,023f7h		;7896
	cp (hl)			;7899
	pop hl			;789a
	jr nz,$+8		;789b
	bit 0,e		;789d
	set 0,e		;789f
	jr z,$-16		;78a1
	bit 0,e		;78a3
	jr z,$+10		;78a5
	cp 03fh		;78a7
	jr nz,$+49		;78a9
	ld b,080h		;78ab
	jr $+45		;78ad
	ld a,02dh		;78af
	ld (022f5h),a		;78b1
	ld a,b			;78b4
	call 01c2bh		;78b5
	jr z,$+76		;78b8
	ld a,02bh		;78ba
	ld (022f5h),a		;78bc
	ld a,b			;78bf
	call 01c2bh		;78c0
	jr z,$+61		;78c3
	ld a,b			;78c5
	cp 012h		;78c6
	jr z,$-97		;78c8
	cp 013h		;78ca
	jr z,$+98		;78cc
	cp 015h		;78ce
	jr z,$+43		;78d0
	cp 00dh		;78d2
	jr z,$+36		;78d4
	cp 020h		;78d6
	jr c,$-71		;78d8
	bit 1,e		;78da
	jr z,$+8		;78dc
	ld a,d			;78de
	cp 020h		;78df
	ld a,b			;78e1
	jr z,$-81		;78e2
	ld (hl),a			;78e4
	inc hl			;78e5
	inc d			;78e6
	ld (hl),000h		;78e7
	call 007fdh		;78e9
	bit 1,e		;78ec
	jp nz,01d8fh		;78ee
	ld d,001h		;78f1
	set 1,e		;78f3
	jp 01d6fh		;78f5
	xor a			;78f8
	ld a,d			;78f9
	ret			;78fa
	call 0074ch		;78fb
	scf			;78fe
	ret			;78ff
	ld b,009h		;7900
	jr $-40		;7902
	bit 1,e		;7904
	jp z,01d91h		;7906
	ld a,d			;7909
	or a			;790a
	jp z,01d91h		;790b
	dec hl			;790e
	dec d			;790f
	call 01821h		;7910
	ld a,(hl)			;7913
	ld (hl),000h		;7914
	ld b,004h		;7916
	cp 01bh		;7918
	jr z,$+12		;791a
	cp 07fh		;791c
	jr z,$+8		;791e
	ld b,001h		;7920
	cp 020h		;7922
	jr nc,$+7		;7924
	call 01821h		;7926
	djnz $-3		;7929
	jp 01d8fh		;792b
	push hl			;792e
	push bc			;792f
	ld b,021h		;7930
	ld hl,02267h		;7932
	ld de,022a9h		;7935
	ld c,(hl)			;7938
	ld a,(de)			;7939
	ld (hl),a			;793a
	ld a,c			;793b
	ld (de),a			;793c
	inc hl			;793d
	inc de			;793e
	djnz $-7		;793f
	ld hl,(022edh)		;7941
	ld de,(022efh)		;7944
	ld (022edh),de		;7948
	ld (022efh),hl		;794c
	call 01d52h		;794f
	call 0074ch		;7952
	pop bc			;7955
	pop hl			;7956
	jp 01d67h		;7957
	ld hl,(022f7h)		;795a
	ld de,00021h		;795d
	ex de,hl			;7960
	add hl,de			;7961
	ex de,hl			;7962
	push bc			;7963
	ld bc,00021h		;7964
	ldir		;7967
	pop bc			;7969
	push hl			;796a
	ld d,0ffh		;796b
	ld a,(hl)			;796d
	inc hl			;796e
	inc d			;796f
	or a			;7970
	jr nz,$-4		;7971
	pop hl			;7973
	ret			;7974
	ld hl,02288h		;7975
	ld de,02267h		;7978
	ld bc,00021h		;797b
	push bc			;797e
	ldir		;797f
	pop bc			;7981
	ld d,h			;7982
	ld e,l			;7983
	ld hl,022cah		;7984
	ldir		;7987
	ld a,(022f1h)		;7989
	ld (022edh),a		;798c
	ld a,(022f3h)		;798f
	ld (022efh),a		;7992
	ret			;7995
	push de			;7996
	push bc			;7997
	push hl			;7998
	dec hl			;7999
	ld de,02267h		;799a
	inc hl			;799d
	ld a,(hl)			;799e
	or a			;799f
	jr z,$+33		;79a0
	ld a,(de)			;79a2
	cp 080h		;79a3
	jr z,$+5		;79a5
	cp (hl)			;79a7
	jr nz,$-11		;79a8
	push hl			;79aa
	inc hl			;79ab
	inc de			;79ac
	ld a,(de)			;79ad
	or a			;79ae
	jr z,$+23		;79af
	ld a,(hl)			;79b1
	or a			;79b2
	jr z,$+13		;79b3
	ld a,(de)			;79b5
	cp 080h		;79b6
	jr z,$-13		;79b8
	cp (hl)			;79ba
	jr z,$-16		;79bb
	pop hl			;79bd
	jr $-36		;79be
	pop hl			;79c0
	pop hl			;79c1
	pop bc			;79c2
	pop de			;79c3
	ccf			;79c4
	ret			;79c5
	pop hl			;79c6
	ex (sp),hl			;79c7
	scf			;79c8
	jr $-8		;79c9
	push de			;79cb
	push bc			;79cc
	push af			;79cd
	ld (022f7h),hl		;79ce
	ld bc,(022ebh)		;79d1
	ld hl,(02302h)		;79d5
	add hl,bc			;79d8
	ld de,(02304h)		;79d9
	or a			;79dd
	sbc hl,de		;79de
	jr nc,$+89		;79e0
	ld a,b			;79e2
	or c			;79e3
	jr z,$+61		;79e4
	ld hl,(02302h)		;79e6
	push hl			;79e9
	add hl,bc			;79ea
	ld (02302h),hl		;79eb
	ld hl,(022f7h)		;79ee
	ld de,(022edh)		;79f1
	add hl,de			;79f5
	call 0125eh		;79f6
	bit 7,b		;79f9
	jr z,$+22		;79fb
	add hl,bc			;79fd
	ld d,h			;79fe
	ld e,l			;79ff
	or a			;7a00
	sbc hl,bc		;7a01
	ex (sp),hl			;7a03
	pop bc			;7a04
	push bc			;7a05
	or a			;7a06
	sbc hl,bc		;7a07
	ld b,h			;7a09
	ld c,l			;7a0a
	inc bc			;7a0b
	pop hl			;7a0c
	ldir		;7a0d
	jr $+18		;7a0f
	ex de,hl			;7a11
	pop hl			;7a12
	push bc			;7a13
	or a			;7a14
	sbc hl,de		;7a15
	ld b,h			;7a17
	ld c,l			;7a18
	inc bc			;7a19
	add hl,de			;7a1a
	pop de			;7a1b
	ex de,hl			;7a1c
	add hl,de			;7a1d
	ex de,hl			;7a1e
	lddr		;7a1f
	ld hl,(022f7h)		;7a21
	ld de,022a9h		;7a24
	ex de,hl			;7a27
	ld bc,(022efh)		;7a28
	ld a,b			;7a2c
	or c			;7a2d
	jr z,$+4		;7a2e
	ldir		;7a30
	ld h,d			;7a32
	ld l,e			;7a33
	pop af			;7a34
	pop bc			;7a35
	pop de			;7a36
	or a			;7a37
	ret			;7a38
	call 012b0h		;7a39
	ld hl,(022f7h)		;7a3c
	pop af			;7a3f
	pop bc			;7a40
	pop de			;7a41
	scf			;7a42
	ret			;7a43
	xor a			;7a44
	jr $+4		;7a45
	ld a,001h		;7a47
	push hl			;7a49
	push de			;7a4a
	push bc			;7a4b
	push af			;7a4c
	ld hl,01c12h		;7a4d
	ld (hl),000h		;7a50
	call 01bb6h		;7a52
	jr z,$+25		;7a55
	pop af			;7a57
	push af			;7a58
	or a			;7a59
	jr z,$+7		;7a5a
	call 00a77h		;7a5c
	jr $+5		;7a5f
	call 00b2bh		;7a61
	dec a			;7a64
	call z,012dch		;7a65
	jr z,$+6		;7a68
	set 1,(ix+000h)		;7a6a
	pop af			;7a6e
	pop bc			;7a6f
	pop de			;7a70
	pop hl			;7a71
	ret			;7a72
	xor a			;7a73
	jr $+15		;7a74
	xor a			;7a76
	jr $+19		;7a77
	ld a,001h		;7a79
	jr $+8		;7a7b
	ld a,001h		;7a7d
	jr $+11		;7a7f
	ld a,002h		;7a81
	ld (022f9h),a		;7a83
	jr $+63		;7a86
	ld a,002h		;7a88
	ld (022f9h),a		;7a8a
	call 013deh		;7a8d
	jp c,012b0h		;7a90
	call 01106h		;7a93
	jr nz,$+6		;7a96
	jp c,012b4h		;7a98
	ret			;7a9b
	push bc			;7a9c
	push de			;7a9d
	call 011a6h		;7a9e
	ld a,(022f9h)		;7aa1
	cp 001h		;7aa4
	jr z,$+11		;7aa6
	jr c,$+6		;7aa8
	pop de			;7aaa
	push de			;7aab
	jr $+8		;7aac
	dec de			;7aae
	jr $+5		;7aaf
	call 011bch		;7ab1
	call 011f6h		;7ab4
	push de			;7ab7
	ldir		;7ab8
	pop hl			;7aba
	pop de			;7abb
	pop bc			;7abc
	ld a,0ffh		;7abd
	ld (022fah),a		;7abf
	jp 00f9dh		;7ac2
	call 013deh		;7ac5
	jp c,012b0h		;7ac8
	call 01145h		;7acb
	jr nz,$+6		;7ace
	jp c,012b4h		;7ad0
	ret			;7ad3
	push hl			;7ad4
	push de			;7ad5
	push bc			;7ad6
	ld d,h			;7ad7
	ld e,l			;7ad8
	ld b,h			;7ad9
	ld c,l			;7ada
	ld hl,(02155h)		;7adb
	ld a,(02154h)		;7ade
	add a,l			;7ae1
	ld l,a			;7ae2
	jr nc,$+3		;7ae3
	inc h			;7ae5
	ld a,(022f9h)		;7ae6
	cp 001h		;7ae9
	jr c,$+9		;7aeb
	jr z,$+10		;7aed
	ld b,h			;7aef
	ld c,l			;7af0
	dec bc			;7af1
	jr $+8		;7af2
	inc bc			;7af4
	jr $+5		;7af5
	call 011ddh		;7af7
	push bc			;7afa
	or a			;7afb
	sbc hl,bc		;7afc
	ld b,h			;7afe
	ld c,l			;7aff
	inc bc			;7b00
	pop hl			;7b01
	call 011f6h		;7b02
	ldir		;7b05
	pop bc			;7b07
	pop de			;7b08
	pop hl			;7b09
	ld a,0ffh		;7b0a
	ld (022fah),a		;7b0c
	jp 00f9dh		;7b0f
	call 01437h		;7b12
	push bc			;7b15
	ld hl,02264h		;7b16
	res 6,(hl)		;7b19
	set 7,(hl)		;7b1b
	set 1,(hl)		;7b1d
	ld de,(02150h)		;7b1f
	push de			;7b23
	ld hl,(02302h)		;7b24
	inc hl			;7b27
	ld bc,(02152h)		;7b28
	push bc			;7b2c
	or a			;7b2d
	sbc hl,bc		;7b2e
	ld b,h			;7b30
	ld c,l			;7b31
	pop hl			;7b32
	ld a,b			;7b33
	or c			;7b34
	jr nz,$+4		;7b35
	inc bc			;7b37
	dec hl			;7b38
	push hl			;7b39
	push de			;7b3a
	ex de,hl			;7b3b
	sbc hl,de		;7b3c
	ld de,(02302h)		;7b3e
	add hl,de			;7b42
	ld (02302h),hl		;7b43
	pop de			;7b46
	pop hl			;7b47
	push bc			;7b48
	or a			;7b49
	sbc hl,de		;7b4a
	ld b,h			;7b4c
	ld c,l			;7b4d
	add hl,de			;7b4e
	dec hl			;7b4f
	call 01257h		;7b50
	inc hl			;7b53
	pop bc			;7b54
	ldir		;7b55
	pop de			;7b57
	pop bc			;7b58
	jp 00fe6h		;7b59
	push hl			;7b5c
	push de			;7b5d
	ld hl,(0225ch)		;7b5e
	ld de,(02302h)		;7b61
	or a			;7b65
	sbc hl,de		;7b66
	ld a,h			;7b68
	or a			;7b69
	ld (022f7h),hl		;7b6a
	ld (022f1h),a		;7b6d
	pop de			;7b70
	pop hl			;7b71
	ret			;7b72
	push hl			;7b73
	ld de,02312h		;7b74
	call 02142h		;7b77
	or a			;7b7a
	sbc hl,de		;7b7b
	push af			;7b7d
	call 01243h		;7b7e
	pop af			;7b81
	pop hl			;7b82
	jr c,$+4		;7b83
	sbc hl,bc		;7b85
	push hl			;7b87
	ld a,(022f1h)		;7b88
	or a			;7b8b
	jp z,0211bh		;7b8c
	set 2,(ix+000h)		;7b8f
	ld de,02312h		;7b93
	call 02142h		;7b96
	ld (022f1h),de		;7b99
	ld hl,(0225ch)		;7b9d
	ld (022f3h),hl		;7ba0
	ld hl,(02302h)		;7ba3
	or a			;7ba6
	sbc hl,de		;7ba7
	ld (022f5h),hl		;7ba9
	ld hl,(022f1h)		;7bac
	ld de,(022f7h)		;7baf
	or a			;7bb3
	sbc hl,de		;7bb4
	push af			;7bb6
	ld de,0230fh		;7bb7
	call 02142h		;7bba
	pop af			;7bbd
	jr c,$+7		;7bbe
	or a			;7bc0
	sbc hl,de		;7bc1
	jr nc,$+12		;7bc3
	ld hl,(022f1h)		;7bc5
	or a			;7bc8
	sbc hl,de		;7bc9
	inc hl			;7bcb
	ld (022f7h),hl		;7bcc
	ld hl,(022f1h)		;7bcf
	ld de,(022f3h)		;7bd2
	ld bc,(022f7h)		;7bd6
	push hl			;7bda
	lddr		;7bdb
	ld (022f1h),hl		;7bdd
	ld (022f3h),de		;7be0
	pop de			;7be4
	ex de,hl			;7be5
	inc hl			;7be6
	inc de			;7be7
	ld bc,(022f5h)		;7be8
	push de			;7bec
	ldir		;7bed
	pop hl			;7bef
	dec de			;7bf0
	push de			;7bf1
	ld de,0230fh		;7bf2
	call 02142h		;7bf5
	or a			;7bf8
	sbc hl,de		;7bf9
	pop hl			;7bfb
	jr nz,$-80		;7bfc
	ld (02302h),hl		;7bfe
	ld hl,(022f3h)		;7c01
	ld (02304h),hl		;7c04
	inc hl			;7c07
	ld (0225ah),hl		;7c08
	call 01243h		;7c0b
	call 01257h		;7c0e
	xor a			;7c11
	dec a			;7c12
	ld (0230fh),a		;7c13
	ld (02312h),a		;7c16
	pop hl			;7c19
	ret			;7c1a
	call 01243h		;7c1b
	push hl			;7c1e
	push de			;7c1f
	ex de,hl			;7c20
	ld hl,(02302h)		;7c21
	or a			;7c24
	sbc hl,de		;7c25
	ld b,h			;7c27
	ld c,l			;7c28
	pop de			;7c29
	pop hl			;7c2a
	inc hl			;7c2b
	ldir		;7c2c
	dec de			;7c2e
	ld (02302h),de		;7c2f
	jr $-40		;7c33
	ld a,(hl)			;7c35
	push de			;7c36
	inc hl			;7c37
	ld e,(hl)			;7c38
	inc hl			;7c39
	ld d,(hl)			;7c3a
	ld h,d			;7c3b
	add a,e			;7c3c
	ld l,a			;7c3d
	pop de			;7c3e
	ret nc			;7c3f
	inc h			;7c40
	ret			;7c41
	ld a,(de)			;7c42
	push hl			;7c43
	ex de,hl			;7c44
	inc hl			;7c45
	ld e,(hl)			;7c46
	inc hl			;7c47
	ld d,(hl)			;7c48
	pop hl			;7c49
	add a,e			;7c4a
	ld e,a			;7c4b
	ret nc			;7c4c
	inc d			;7c4d
	ret			;7c4e
	nop			;7c4f
	nop			;7c50
	nop			;7c51
	nop			;7c52
	nop			;7c53
	nop			;7c54
	ld e,d			;7c55
	ld hl,02259h		;7c56
	rst 38h			;7c59
	nop			;7c5a
	nop			;7c5b
	nop			;7c5c
	nop			;7c5d
	nop			;7c5e
	nop			;7c5f
	nop			;7c60
	nop			;7c61
	nop			;7c62
	nop			;7c63
	nop			;7c64
	nop			;7c65
	nop			;7c66
	nop			;7c67
	nop			;7c68
	nop			;7c69
	nop			;7c6a
	nop			;7c6b
	nop			;7c6c
	nop			;7c6d
	nop			;7c6e
	nop			;7c6f
	nop			;7c70
	nop			;7c71
	nop			;7c72
	nop			;7c73
	nop			;7c74
	nop			;7c75
	nop			;7c76
	nop			;7c77
	nop			;7c78
	nop			;7c79
	nop			;7c7a
	nop			;7c7b
	nop			;7c7c
	nop			;7c7d
	nop			;7c7e
	nop			;7c7f
	nop			;7c80
	nop			;7c81
	nop			;7c82
	nop			;7c83
	nop			;7c84
	nop			;7c85
	nop			;7c86
	nop			;7c87
	nop			;7c88
	nop			;7c89
	nop			;7c8a
	nop			;7c8b
	nop			;7c8c
	nop			;7c8d
	nop			;7c8e
	nop			;7c8f
	nop			;7c90
	nop			;7c91
	nop			;7c92
	nop			;7c93
	nop			;7c94
	nop			;7c95
	nop			;7c96
	nop			;7c97
	nop			;7c98
	nop			;7c99
	nop			;7c9a
	nop			;7c9b
	nop			;7c9c
	nop			;7c9d
	nop			;7c9e
	nop			;7c9f
	nop			;7ca0
	nop			;7ca1
	nop			;7ca2
	nop			;7ca3
	nop			;7ca4
	nop			;7ca5
	nop			;7ca6
	nop			;7ca7
	nop			;7ca8
	nop			;7ca9
	nop			;7caa
	nop			;7cab
	nop			;7cac
	nop			;7cad
	nop			;7cae
	nop			;7caf
	nop			;7cb0
	nop			;7cb1
	nop			;7cb2
	nop			;7cb3
	nop			;7cb4
	nop			;7cb5
	nop			;7cb6
	nop			;7cb7
	nop			;7cb8
	nop			;7cb9
	nop			;7cba
	nop			;7cbb
	nop			;7cbc
	nop			;7cbd
	nop			;7cbe
	nop			;7cbf
	nop			;7cc0
	nop			;7cc1
	nop			;7cc2
	nop			;7cc3
	nop			;7cc4
	nop			;7cc5
	nop			;7cc6
	nop			;7cc7
	nop			;7cc8
	nop			;7cc9
	nop			;7cca
	nop			;7ccb
	nop			;7ccc
	nop			;7ccd
	nop			;7cce
	nop			;7ccf
	nop			;7cd0
	nop			;7cd1
	nop			;7cd2
	nop			;7cd3
	nop			;7cd4
	nop			;7cd5
	nop			;7cd6
	nop			;7cd7
	nop			;7cd8
	nop			;7cd9
	nop			;7cda
	nop			;7cdb
	nop			;7cdc
	nop			;7cdd
	nop			;7cde
	nop			;7cdf
	nop			;7ce0
	nop			;7ce1
	nop			;7ce2
	nop			;7ce3
	nop			;7ce4
	nop			;7ce5
	nop			;7ce6
	nop			;7ce7
	nop			;7ce8
	nop			;7ce9
	nop			;7cea
	nop			;7ceb
	nop			;7cec
	nop			;7ced
	nop			;7cee
	nop			;7cef
	nop			;7cf0
	nop			;7cf1
	nop			;7cf2
	nop			;7cf3
	nop			;7cf4
	nop			;7cf5
	nop			;7cf6
	nop			;7cf7
	nop			;7cf8
	nop			;7cf9
	nop			;7cfa
	nop			;7cfb
	nop			;7cfc
	nop			;7cfd
	nop			;7cfe
	nop			;7cff
	nop			;7d00
	nop			;7d01
	nop			;7d02
	nop			;7d03
	nop			;7d04
	nop			;7d05
	nop			;7d06
	nop			;7d07
	nop			;7d08
	nop			;7d09
	nop			;7d0a
	nop			;7d0b
	nop			;7d0c
	nop			;7d0d
	nop			;7d0e
	nop			;7d0f
	nop			;7d10
	nop			;7d11
	nop			;7d12
	nop			;7d13
	nop			;7d14
	nop			;7d15
	nop			;7d16
	nop			;7d17
	nop			;7d18
	nop			;7d19
	nop			;7d1a
	nop			;7d1b
	nop			;7d1c
	nop			;7d1d
	nop			;7d1e
	nop			;7d1f
	nop			;7d20
	nop			;7d21
	nop			;7d22
	nop			;7d23
	nop			;7d24
	nop			;7d25
	nop			;7d26
	nop			;7d27
	nop			;7d28
	nop			;7d29
	nop			;7d2a
	nop			;7d2b
	nop			;7d2c
	nop			;7d2d
	nop			;7d2e
	nop			;7d2f
	nop			;7d30
	nop			;7d31
	nop			;7d32
	nop			;7d33
	nop			;7d34
	nop			;7d35
	nop			;7d36
	nop			;7d37
	nop			;7d38
	nop			;7d39
	nop			;7d3a
	nop			;7d3b
	nop			;7d3c
	nop			;7d3d
	nop			;7d3e
	nop			;7d3f
	nop			;7d40
	nop			;7d41
	nop			;7d42
	nop			;7d43
	nop			;7d44
	nop			;7d45
	nop			;7d46
	nop			;7d47
	nop			;7d48
	nop			;7d49
	nop			;7d4a
	nop			;7d4b
	nop			;7d4c
	nop			;7d4d
	nop			;7d4e
	nop			;7d4f
	nop			;7d50
	nop			;7d51
	nop			;7d52
	nop			;7d53
	nop			;7d54
	nop			;7d55
	nop			;7d56
	nop			;7d57
	nop			;7d58
	nop			;7d59
	nop			;7d5a
	nop			;7d5b
	nop			;7d5c
	nop			;7d5d
	nop			;7d5e
	nop			;7d5f
	nop			;7d60
	nop			;7d61
	nop			;7d62
	nop			;7d63
	nop			;7d64
	nop			;7d65
	nop			;7d66
	nop			;7d67
	nop			;7d68
	nop			;7d69
	nop			;7d6a
	nop			;7d6b
	nop			;7d6c
	nop			;7d6d
	nop			;7d6e
	nop			;7d6f
	nop			;7d70
	nop			;7d71
	nop			;7d72
	nop			;7d73
	nop			;7d74
	nop			;7d75
	nop			;7d76
	nop			;7d77
	nop			;7d78
	nop			;7d79
	nop			;7d7a
	nop			;7d7b
	nop			;7d7c
	nop			;7d7d
	nop			;7d7e
	nop			;7d7f
	nop			;7d80
	nop			;7d81
	nop			;7d82
	nop			;7d83
	nop			;7d84
	nop			;7d85
	nop			;7d86
	nop			;7d87
	nop			;7d88
	nop			;7d89
	nop			;7d8a
	nop			;7d8b
	nop			;7d8c
	nop			;7d8d
	nop			;7d8e
	nop			;7d8f
	nop			;7d90
	nop			;7d91
	nop			;7d92
	nop			;7d93
	nop			;7d94
	nop			;7d95
	nop			;7d96
	nop			;7d97
	nop			;7d98
	nop			;7d99
	nop			;7d9a
	nop			;7d9b
	nop			;7d9c
	nop			;7d9d
	nop			;7d9e
	nop			;7d9f
	nop			;7da0
	nop			;7da1
	nop			;7da2
	nop			;7da3
	nop			;7da4
	nop			;7da5
	nop			;7da6
	nop			;7da7
	nop			;7da8
	nop			;7da9
	nop			;7daa
	nop			;7dab
	nop			;7dac
	nop			;7dad
	nop			;7dae
	nop			;7daf
	nop			;7db0
	nop			;7db1
	nop			;7db2
	nop			;7db3
	nop			;7db4
	nop			;7db5
	nop			;7db6
	nop			;7db7
	nop			;7db8
	nop			;7db9
	nop			;7dba
	nop			;7dbb
	nop			;7dbc
	nop			;7dbd
	nop			;7dbe
	nop			;7dbf
	nop			;7dc0
	nop			;7dc1
	nop			;7dc2
	nop			;7dc3
	nop			;7dc4
	nop			;7dc5
	nop			;7dc6
	nop			;7dc7
	nop			;7dc8
	nop			;7dc9
	nop			;7dca
	nop			;7dcb
	nop			;7dcc
	nop			;7dcd
	nop			;7dce
	nop			;7dcf
	nop			;7dd0
	nop			;7dd1
	nop			;7dd2
	nop			;7dd3
	nop			;7dd4
	nop			;7dd5
	nop			;7dd6
	nop			;7dd7
	nop			;7dd8
	nop			;7dd9
	nop			;7dda
	nop			;7ddb
	nop			;7ddc
	nop			;7ddd
	nop			;7dde
	nop			;7ddf
	nop			;7de0
	nop			;7de1
	nop			;7de2
	nop			;7de3
	nop			;7de4
	nop			;7de5
	nop			;7de6
	nop			;7de7
	nop			;7de8
	nop			;7de9
	nop			;7dea
	nop			;7deb
	nop			;7dec
	nop			;7ded
	nop			;7dee
	nop			;7def
	nop			;7df0
	nop			;7df1
	nop			;7df2
	nop			;7df3
	nop			;7df4
	nop			;7df5
	nop			;7df6
	nop			;7df7
	nop			;7df8
	nop			;7df9
	nop			;7dfa
	ld bc,00000h		;7dfb
	nop			;7dfe
	nop			;7dff
	nop			;7e00
	nop			;7e01
	nop			;7e02
	nop			;7e03
	nop			;7e04
	nop			;7e05
	xor h			;7e06
	inc h			;7e07
	nop			;7e08
	nop			;7e09
	nop			;7e0a
	nop			;7e0b
	rst 38h			;7e0c
	nop			;7e0d
	nop			;7e0e
	rst 38h			;7e0f
	nop			;7e10
	nop			;7e11
	rst 38h			;7e12
	nop			;7e13
	nop			;7e14
	inc e			;7e15
	inc hl			;7e16
	nop			;7e17
	nop			;7e18
	nop			;7e19
	nop			;7e1a
	nop			;7e1b
	nop			;7e1c
	nop			;7e1d
	nop			;7e1e
	nop			;7e1f
	nop			;7e20
	nop			;7e21
	nop			;7e22
	nop			;7e23
	nop			;7e24
	nop			;7e25
	nop			;7e26
	nop			;7e27
	nop			;7e28
	nop			;7e29
	nop			;7e2a
	nop			;7e2b
	nop			;7e2c
	nop			;7e2d
	nop			;7e2e
	nop			;7e2f
	nop			;7e30
	ld b,a			;7e31
	rra			;7e32
	ld b,(hl)			;7e33
	dec d			;7e34
	ld b,(hl)			;7e35
	dec d			;7e36
	ld d,b			;7e37
	dec d			;7e38
	ld h,h			;7e39
	dec d			;7e3a
	sub a			;7e3b
	dec d			;7e3c
	cp l			;7e3d
	dec d			;7e3e
	call nc,0f315h		;7e3f
	dec d			;7e42
	rst 30h			;7e43
	dec d			;7e44
	ld bc,00f16h		;7e45
	ld d,01ah		;7e48
	ld d,039h		;7e4a
	ld d,077h		;7e4c
	ld d,0a5h		;7e4e
	ld d,0cah		;7e50
	ld d,0e7h		;7e52
	ld d,04dh		;7e54
	add hl,de			;7e56
	or 017h		;7e57
	call m,0b717h		;7e59
	rla			;7e5c
	call nz,0cf17h		;7e5d
	rla			;7e60
	ret c			;7e61
	rla			;7e62
	jp m,00a19h		;7e63
	ld a,(de)			;7e66
	ld a,c			;7e67
	ld a,(de)			;7e68
	adc a,a			;7e69
	ld a,(de)			;7e6a
	adc a,l			;7e6b
	dec de			;7e6c
	ld b,l			;7e6d
	inc e			;7e6e
	add hl,hl			;7e6f
	rla			;7e70
	ld (0e917h),a		;7e71
	inc e			;7e74
	jr $+31		;7e75
	dec h			;7e77
	dec e			;7e78
	dec (hl)			;7e79
	dec e			;7e7a
	add a,e			;7e7b
	jr $-37		;7e7c
	jr $-41		;7e7e
	jr $+70		;7e80
	rra			;7e82
	ld (de),a			;7e83
	jr nz,$-78		;7e84
	rla			;7e86
	dec a			;7e87
	dec d			;7e88
	jr c,$+25		;7e89
	halt			;7e8b
	rra			;7e8c
	ld (hl),e			;7e8d
	rra			;7e8e
	ld a,l			;7e8f
	rra			;7e90
	ld a,c			;7e91
	rra			;7e92
	adc a,b			;7e93
	rra			;7e94
	add a,c			;7e95
	rra			;7e96
	dec c			;7e97
	add hl,bc			;7e98
	jr nz,$+36		;7e99
	jr z,$+43		;7e9b
	ld e,e			;7e9d
	ld e,l			;7e9e
	ld a,e			;7e9f
	ld a,l			;7ea0
	dec a			;7ea1
	dec hl			;7ea2
	dec l			;7ea3
	ld hl,(03c2fh)		;7ea4
	ld a,05eh		;7ea7
	dec sp			;7ea9
	ld a,(0232ch)		;7eaa
	inc h			;7ead
	ld h,05ch		;7eae
	nop			;7eb0
	nop			;7eb1
	nop			;7eb2
	nop			;7eb3
	nop			;7eb4
	nop			;7eb5
	ld b,l			;7eb6
	ld b,h			;7eb7
	jr c,$+50		;7eb8
	ld l,048h		;7eba
	ld c,h			;7ebc
	ld d,b			;7ebd
	nop			;7ebe
	ld c,h			;7ebf
	ld d,b			;7ec0
	nop			;7ec1
	nop			;7ec2
	xor h			;7ec3
	inc h			;7ec4
	nop			;7ec5
	nop			;7ec6
	jr nz,$+34		;7ec7
	ld d,b			;7ec9
	jr $+31		;7eca
	jr nz,$+10		;7ecc
	ld (bc),a			;7ece
	ld (01a10h),a		;7ecf
	add hl,hl			;7ed2
	adc a,e			;7ed3
	xor l			;7ed4
	ld (00080h),hl		;7ed5
	ld a,(bc)			;7ed8
	nop			;7ed9
	nop			;7eda
	rst 38h			;7edb
	ld (bc),a			;7edc
	dec de			;7edd
	ld e,c			;7ede
	nop			;7edf
	nop			;7ee0
	ld bc,0001ah		;7ee1
	nop			;7ee4
	nop			;7ee5
	nop			;7ee6
	nop			;7ee7
	nop			;7ee8
	nop			;7ee9
	nop			;7eea
	nop			;7eeb
	nop			;7eec
	nop			;7eed
	nop			;7eee
	nop			;7eef
	nop			;7ef0
	nop			;7ef1
	nop			;7ef2
	nop			;7ef3
	nop			;7ef4
	inc l			;7ef5
	nop			;7ef6
	djnz $+2		;7ef7
	nop			;7ef9
	nop			;7efa
	nop			;7efb
	nop			;7efc
	nop			;7efd
	nop			;7efe
	nop			;7eff
	nop			;7f00
	nop			;7f01
	nop			;7f02
	nop			;7f03
	nop			;7f04
	nop			;7f05
	nop			;7f06
	nop			;7f07
	nop			;7f08
	nop			;7f09
	nop			;7f0a
	nop			;7f0b
	nop			;7f0c
	nop			;7f0d
	nop			;7f0e
	nop			;7f0f
	nop			;7f10
	nop			;7f11
	nop			;7f12
	nop			;7f13
	nop			;7f14
	nop			;7f15
	nop			;7f16
	nop			;7f17
	nop			;7f18
	nop			;7f19
	nop			;7f1a
	nop			;7f1b
	nop			;7f1c
	nop			;7f1d
	nop			;7f1e
	nop			;7f1f
	nop			;7f20
	dec bc			;7f21
	ld b,(hl)			;7f22
	nop			;7f23
	inc de			;7f24
	nop			;7f25
	ex af,af'			;7f26
	nop			;7f27
	inc b			;7f28
	nop			;7f29
	ld bc,00600h		;7f2a
	nop			;7f2d
	rrca			;7f2e
	ld d,e			;7f2f
	nop			;7f30
	rrca			;7f31
	ld b,h			;7f32
	nop			;7f33
	ld de,00053h		;7f34
	ld de,00044h		;7f37
	dec b			;7f3a
	nop			;7f3b
	jr $+2		;7f3c
	rrca			;7f3e
	ld b,l			;7f3f
	nop			;7f40
	rrca			;7f41
	ld e,b			;7f42
	nop			;7f43
	ld (de),a			;7f44
	nop			;7f45
	inc bc			;7f46
	nop			;7f47
	ld de,00052h		;7f48
	ld de,00043h		;7f4b
	rrca			;7f4e
	ld b,a			;7f4f
	nop			;7f50
	ld de,00042h		;7f51
	ld de,0004bh		;7f54
	ld d,000h		;7f57
	rrca			;7f59
	ld b,(hl)			;7f5a
	nop			;7f5b
	dec bc			;7f5c
	ld b,d			;7f5d
	nop			;7f5e
	dec bc			;7f5f
	ld c,e			;7f60
	nop			;7f61
	dec bc			;7f62
	ld d,(hl)			;7f63
	nop			;7f64
	dec bc			;7f65
	ld b,e			;7f66
	nop			;7f67
	dec bc			;7f68
	ld e,c			;7f69
	nop			;7f6a
	rrca			;7f6b
	ld d,b			;7f6c
	nop			;7f6d
	dec bc			;7f6e
	ld d,a			;7f6f
	nop			;7f70
	dec bc			;7f71
	ld d,d			;7f72
	nop			;7f73
	dec bc			;7f74
	jr nc,$+2		;7f75
	ld de,00030h		;7f77
	ld de,00046h		;7f7a
	inc c			;7f7d
	nop			;7f7e
	rrca			;7f7f
	ld c,h			;7f80
	nop			;7f81
	rrca			;7f82
	ld b,c			;7f83
	nop			;7f84
	dec bc			;7f85
	ld d,c			;7f86
	nop			;7f87
	rrca			;7f88
	ld d,c			;7f89
	nop			;7f8a
	dec bc			;7f8b
	ld e,b			;7f8c
	nop			;7f8d
	dec bc			;7f8e
	ld c,d			;7f8f
	nop			;7f90
	add hl,de			;7f91
	nop			;7f92
	rrca			;7f93
	ld c,c			;7f94
	nop			;7f95
	add hl,bc			;7f96
	nop			;7f97
	rrca			;7f98
	ld d,d			;7f99
	nop			;7f9a
	ld a,a			;7f9b
	nop			;7f9c
	rlca			;7f9d
	nop			;7f9e
	rrca			;7f9f
	ld d,h			;7fa0
	nop			;7fa1
	inc d			;7fa2
	nop			;7fa3
	ld de,0007fh		;7fa4
	ld de,00059h		;7fa7
	nop			;7faa
	call 00ceeh		;7fab
	call 00d25h		;7fae
	ret c			;7fb1
	ld c,013h		;7fb2
	jr $+65		;7fb4
	push hl			;7fb6
	call 00d19h		;7fb7
	jr c,$+68		;7fba
	ld de,00e6fh		;7fbc
	ld hl,00b8ch		;7fbf
	call 00d05h		;7fc2
	jr z,$+57		;7fc5
	push de			;7fc7
	ld c,011h		;7fc8
	call 00e55h		;7fca
	inc a			;7fcd
	pop de			;7fce
	pop bc			;7fcf
	ret z			;7fd0
	push bc			;7fd1
	push de			;7fd2
	call 00e1fh		;7fd3
	pop de			;7fd6
	call 00b82h		;7fd7
	ld c,013h		;7fda
	call 00e55h		;7fdc
	pop hl			;7fdf
	call 00d19h		;7fe0
	ld de,00e76h		;7fe3
	ld hl,00e66h		;7fe6
	xor a			;7fe9
	ld (de),a			;7fea
	ld bc,00009h		;7feb
	ldir		;7fee
	call 00b82h		;7ff0
	ld c,017h		;7ff3
	call 00e55h		;7ff5
	inc a			;7ff8
	ld a,001h		;7ff9
	ret z			;7ffb
	xor a			;7ffc
	ret			;7ffd
	pop hl			;7ffe
	ld a,01ah		;7fff
	nop			;8001
	rrca			;8002
	ld b,c			;8003
	nop			;8004
	dec bc			;8005
	ld d,c			;8006
	nop			;8007
	rrca			;8008
	ld d,c			;8009
	nop			;800a
	dec bc			;800b
	ld e,b			;800c
	nop			;800d
	dec bc			;800e
	ld c,d			;800f
	nop			;8010
	add hl,de			;8011
	nop			;8012
	rrca			;8013
	ld c,c			;8014
	nop			;8015
	add hl,bc			;8016
	nop			;8017
	rrca			;8018
	ld d,d			;8019
	nop			;801a
	ld a,a			;801b
	nop			;801c
	rlca			;801d
	nop			;801e
	rrca			;801f
	ld d,h			;8020
	nop			;8021
	inc d			;8022
	nop			;8023
	ld de,0007fh		;8024
	ld de,00059h		;8027
	nop			;802a
	call 00ceeh		;802b
	call 00d25h		;802e
	ret c			;8031
	ld c,013h		;8032
	jr $+65		;8034
	push hl			;8036
	call 00d19h		;8037
	jr c,$+68		;803a
	ld de,00e6fh		;803c
	ld hl,00b8ch		;803f
	call 00d05h		;8042
	jr z,$+57		;8045
	push de			;8047
	ld c,011h		;8048
	call 00e55h		;804a
	inc a			;804d
	pop de			;804e
	pop bc			;804f
	ret z			;8050
	push bc			;8051
	push de			;8052
	call 00e1fh		;8053
	pop de			;8056
	call 00b82h		;8057
	ld c,013h		;805a
	call 00e55h		;805c
	pop hl			;805f
	call 00d19h		;8060
	ld de,00e76h		;8063
	ld hl,00e66h		;8066
	xor a			;8069
	ld (de),a			;806a
	ld bc,00009h		;806b
	ldir		;806e
	call 00b82h		;8070
	ld c,017h		;8073
	call 00e55h		;8075
	inc a			;8078
	ld a,001h		;8079
	ret z			;807b
	xor a			;807c
	ret			;807d
	pop hl			;807e
	ld a,000h		;807f
	nop			;8081
	nop			;8082
	nop			;8083
	nop			;8084
	nop			;8085
	nop			;8086
	nop			;8087
	nop			;8088
	nop			;8089
	nop			;808a
	nop			;808b
	nop			;808c
	nop			;808d
	nop			;808e
	nop			;808f
	nop			;8090
	nop			;8091
	nop			;8092
	nop			;8093
	nop			;8094
	nop			;8095
	nop			;8096
	nop			;8097
	nop			;8098
	nop			;8099
	nop			;809a
	nop			;809b
	nop			;809c
	nop			;809d
	nop			;809e
	nop			;809f
	nop			;80a0
	nop			;80a1
	nop			;80a2
	nop			;80a3
	nop			;80a4
	nop			;80a5
	nop			;80a6
	nop			;80a7
	nop			;80a8
	nop			;80a9
	nop			;80aa
	nop			;80ab
	nop			;80ac
	nop			;80ad
	nop			;80ae
	nop			;80af
	nop			;80b0
	nop			;80b1
	nop			;80b2
	nop			;80b3
	nop			;80b4
	nop			;80b5
	nop			;80b6
	nop			;80b7
	nop			;80b8
	nop			;80b9
	nop			;80ba
	ld (bc),a			;80bb
	ld c,c			;80bc
	inc b			;80bd
	nop			;80be
	nop			;80bf
	nop			;80c0
	nop			;80c1
	nop			;80c2
	nop			;80c3
	nop			;80c4
	nop			;80c5
	nop			;80c6
	nop			;80c7
	nop			;80c8
	inc h			;80c9
	sub d			;80ca
	ld c,c			;80cb
	inc h			;80cc
	sub d			;80cd
	ld c,d			;80ce
	jr nz,$+11		;80cf
	inc h			;80d1
	ld de,08224h		;80d2
	ld c,c			;80d5
	inc b			;80d6
	ld bc,00808h		;80d7
	ld bc,09004h		;80da
	sub b			;80dd
	sub d			;80de
	ld (de),a			;80df
	inc b			;80e0
	ld b,d			;80e1
	djnz $+66		;80e2
	ld hl,(0aaaah)		;80e4
	xor d			;80e7
	xor d			;80e8
	xor d			;80e9
	xor b			;80ea
	nop			;80eb
	djnz $+11		;80ec
	inc b			;80ee
	ld c,c			;80ef
	ld (de),a			;80f0
	inc h			;80f1
	adc a,c			;80f2
	inc h			;80f3
	sub d			;80f4
	ld c,c			;80f5
	ld (08848h),hl		;80f6
	ld c,c			;80f9
	inc h			;80fa
	sub b			;80fb
	djnz $-110		;80fc
	adc a,c			;80fe
	inc b			;80ff
