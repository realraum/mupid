; z80dasm 1.1.6
; command line: z80dasm -l -z -t -v -g 0 -o KV.asm -s KV.sym D27128@DIP28_KV.bin

	org	00000h

l0000h:
	jp l06cbh		;0000	c3 cb 06 	. . . 
l0003h:
	jp l0542h		;0003	c3 42 05 	. B . 
l0006h:
	and c			;0006	a1 	. 
	rlca			;0007	07 	. 
l0008h:
	jp l054ch		;0008	c3 4c 05 	. L . 
	jp l1339h		;000b	c3 39 13 	. 9 . 
	ret po			;000e	e0 	. 
l000fh:
	add hl,bc			;000f	09 	. 
l0010h:
	jp l0557h		;0010	c3 57 05 	. W . 
l0013h:
	jp l0531h		;0013	c3 31 05 	. 1 . 
l0016h:
	adc a,b			;0016	88 	. 
l0017h:
	add hl,bc			;0017	09 	. 
l0018h:
	jp l055dh		;0018	c3 5d 05 	. ] . 
	jp l0649h		;001b	c3 49 06 	. I . 
	or (hl)			;001e	b6 	. 
	inc b			;001f	04 	. 
l0020h:
	jp l0627h		;0020	c3 27 06 	. ' . 
	jp l0677h		;0023	c3 77 06 	. w . 
	dec hl			;0026	2b 	+ 
	ld a,(bc)			;0027	0a 	. 
l0028h:
	jp l0630h		;0028	c3 30 06 	. 0 . 
	jp l068ah		;002b	c3 8a 06 	. . . 
	jr l0076h		;002e	18 46 	. F 
l0030h:
	jp l0641h		;0030	c3 41 06 	. A . 
	jp l00c2h		;0033	c3 c2 00 	. . . 
	xor d			;0036	aa 	. 
	ld de,0d5e1h		;0037	11 e1 d5 	. . . 
	push bc			;003a	c5 	. 
	ld a,090h		;003b	3e 90 	> . 
	out (0c0h),a		;003d	d3 c0 	. . 
l003fh:
	jp (hl)			;003f	e9 	. 
	ld c,h			;0040	4c 	L 
	ld l,l			;0041	6d 	m 
	ld a,b			;0042	78 	x 
	ld bc,l019bh		;0043	01 9b 01 	. . . 
	ld d,b			;0046	50 	P 
	nop			;0047	00 	. 
	ld d,h			;0048	54 	T 
	ld l,l			;0049	6d 	m 
	ld a,d			;004a	7a 	z 
	nop			;004b	00 	. 
	sbc a,001h		;004c	de 01 	. . 
	ld d,(hl)			;004e	56 	V 
	nop			;004f	00 	. 
	push af			;0050	f5 	. 
	ld a,030h		;0051	3e 30 	> 0 
	jp l017bh		;0053	c3 7b 01 	. { . 
	push af			;0056	f5 	. 
	ld a,030h		;0057	3e 30 	> 0 
	out (001h),a		;0059	d3 01 	. . 
	jp l017dh		;005b	c3 7d 01 	. } . 
	nop			;005e	00 	. 
	nop			;005f	00 	. 
	nop			;0060	00 	. 
	nop			;0061	00 	. 
	nop			;0062	00 	. 
	ld l,l			;0063	6d 	m 
	ld a,0f7h		;0064	3e f7 	> . 
	push af			;0066	f5 	. 
	push hl			;0067	e5 	. 
	ld hl,06d66h		;0068	21 66 6d 	! f m 
	inc (hl)			;006b	34 	4 
	jr nz,l0076h		;006c	20 08 	  . 
	inc hl			;006e	23 	# 
	inc (hl)			;006f	34 	4 
	jr nz,l0076h		;0070	20 04 	  . 
	ld hl,(06d68h)		;0072	2a 68 6d 	* h m 
	jp (hl)			;0075	e9 	. 
l0076h:
	pop hl			;0076	e1 	. 
	pop af			;0077	f1 	. 
	retn		;0078	ed 45 	. E 
	push af			;007a	f5 	. 
	ld a,010h		;007b	3e 10 	> . 
	out (001h),a		;007d	d3 01 	. . 
	in a,(001h)		;007f	db 01 	. . 
	bit 3,a		;0081	cb 5f 	. _ 
	jr nz,l00aah		;0083	20 25 	  % 
l0085h:
	ld a,(0783ch)		;0085	3a 3c 78 	: < x 
	and 0fdh		;0088	e6 fd 	. . 
	ld (0783ch),a		;008a	32 3c 78 	2 < x 
	ld a,068h		;008d	3e 68 	> h 
	ld (072a1h),a		;008f	32 a1 72 	2 . r 
	ld a,(072a0h)		;0092	3a a0 72 	: . r 
	or a			;0095	b7 	. 
	ld a,068h		;0096	3e 68 	> h 
	jr nz,l00a7h		;0098	20 0d 	  . 
	ld a,028h		;009a	3e 28 	> ( 
	ld (0783ch),a		;009c	32 3c 78 	2 < x 
	ld (0785ch),a		;009f	32 5c 78 	2 \ x 
	ld (0787ch),a		;00a2	32 7c 78 	2 | x 
	ld a,068h		;00a5	3e 68 	> h 
l00a7h:
	call sub_0d61h		;00a7	cd 61 0d 	. a . 
l00aah:
	pop af			;00aa	f1 	. 
	jr l00cbh		;00ab	18 1e 	. . 
sub_00adh:
	push af			;00ad	f5 	. 
	jr l0085h		;00ae	18 d5 	. . 
l00b0h:
	ld hl,071a1h		;00b0	21 a1 71 	! . q 
	bit 0,(hl)		;00b3	cb 46 	. F 
	jr z,l00bdh		;00b5	28 06 	( . 
	or a			;00b7	b7 	. 
	jp pe,l00bdh		;00b8	ea bd 00 	. . . 
	xor 080h		;00bb	ee 80 	. . 
l00bdh:
	out (c),a		;00bd	ed 79 	. y 
	call sub_0c77h		;00bf	cd 77 0c 	. w . 
l00c2h:
	ld a,(06da1h)		;00c2	3a a1 6d 	: . m 
	out (0c0h),a		;00c5	d3 c0 	. . 
	pop bc			;00c7	c1 	. 
	pop de			;00c8	d1 	. 
	pop hl			;00c9	e1 	. 
	pop af			;00ca	f1 	. 
l00cbh:
	ei			;00cb	fb 	. 
	reti		;00cc	ed 4d 	. M 
sub_00ceh:
	ld hl,(07120h)		;00ce	2a 20 71 	*   q 
l00d1h:
	ld a,l			;00d1	7d 	} 
	or a			;00d2	b7 	. 
	jr z,l00e3h		;00d3	28 0e 	( . 
	in a,(001h)		;00d5	db 01 	. . 
	bit 2,a		;00d7	cb 57 	. W 
	jr z,l00d1h		;00d9	28 f6 	( . 
	ld a,l			;00db	7d 	} 
l00dch:
	out (000h),a		;00dc	d3 00 	. . 
	ld l,h			;00de	6c 	l 
	ld h,000h		;00df	26 00 	& . 
	jr l00d1h		;00e1	18 ee 	. . 
l00e3h:
	ld a,(071a0h)		;00e3	3a a0 71 	: . q 
	and 009h		;00e6	e6 09 	. . 
	ld (071a0h),a		;00e8	32 a0 71 	2 . q 
	xor a			;00eb	af 	. 
	ret			;00ec	c9 	. 
l00edh:
	pop af			;00ed	f1 	. 
	jr l0138h		;00ee	18 48 	. H 
l00f0h:
	nop			;00f0	00 	. 
	nop			;00f1	00 	. 
	adc a,l			;00f2	8d 	. 
	dec b			;00f3	05 	. 
	jp l11ceh		;00f4	c3 ce 11 	. . . 
	jp l2196h		;00f7	c3 96 21 	. . ! 
	jp l04d3h		;00fa	c3 d3 04 	. . . 
	jp l0509h		;00fd	c3 09 05 	. . . 
l0100h:
	jp l0898h		;0100	c3 98 08 	. . . 
	jp l1be6h		;0103	c3 e6 1b 	. . . 
	jp l01a8h		;0106	c3 a8 01 	. . . 
	jp l013eh		;0109	c3 3e 01 	. > . 
	jp l06bbh		;010c	c3 bb 06 	. . . 
	jp l06bfh		;010f	c3 bf 06 	. . . 
	jp l06b0h		;0112	c3 b0 06 	. . . 
	jp l0ab9h		;0115	c3 b9 0a 	. . . 
	jp l0f42h		;0118	c3 42 0f 	. B . 
	jp l1eadh		;011b	c3 ad 1e 	. . . 
	jp l1da9h		;011e	c3 a9 1d 	. . . 
	jp l19d0h		;0121	c3 d0 19 	. . . 
	jp l19d3h		;0124	c3 d3 19 	. . . 
	jp 03fe2h		;0127	c3 e2 3f 	. . ? 
	jp l392fh		;012a	c3 2f 39 	. / 9 
	jp 037eah		;012d	c3 ea 37 	. . 7 
	ld a,c			;0130	79 	y 
	ld hl,03ac9h		;0131	21 c9 3a 	! . : 
	and c			;0134	a1 	. 
	ld l,l			;0135	6d 	m 
	set 1,a		;0136	cb cf 	. . 
l0138h:
	out (0c0h),a		;0138	d3 c0 	. . 
	ld (06da1h),a		;013a	32 a1 6d 	2 . m 
	ei			;013d	fb 	. 
l013eh:
	ret			;013e	c9 	. 
l013fh:
	jp l064dh		;013f	c3 4d 06 	. M . 
l0142h:
	call sub_0171h		;0142	cd 71 01 	. q . 
	jp 04200h		;0145	c3 00 42 	. . B 
	jp l0d9ah		;0148	c3 9a 0d 	. . . 
	jp l0673h		;014b	c3 73 06 	. s . 
	jp l085fh		;014e	c3 5f 08 	. _ . 
sub_0151h:
	ld iy,06e80h		;0151	fd 21 80 6e 	. ! . n 
	ld (06e53h),hl		;0155	22 53 6e 	" S n 
	ld hl,(06da0h)		;0158	2a a0 6d 	* . m 
	push hl			;015b	e5 	. 
	ld hl,l00edh		;015c	21 ed 00 	! . . 
	push hl			;015f	e5 	. 
	ld hl,04000h		;0160	21 00 40 	! . @ 
	add a,l			;0163	85 	. 
	ld l,a			;0164	6f 	o 
	call sub_06aah		;0165	cd aa 06 	. . . 
	ld a,(hl)			;0168	7e 	~ 
	inc hl			;0169	23 	# 
	ld h,(hl)			;016a	66 	f 
	ld l,a			;016b	6f 	o 
	push hl			;016c	e5 	. 
	ld hl,(06e53h)		;016d	2a 53 6e 	* S n 
	ret			;0170	c9 	. 
sub_0171h:
	ld a,(06da1h)		;0171	3a a1 6d 	: . m 
	res 1,a		;0174	cb 8f 	. . 
	jr l0138h		;0176	18 c0 	. . 
	push af			;0178	f5 	. 
	ld a,010h		;0179	3e 10 	> . 
l017bh:
	out (003h),a		;017b	d3 03 	. . 
l017dh:
	pop af			;017d	f1 	. 
	jr l01dbh		;017e	18 5b 	. [ 
l0180h:
	ld hl,06d60h		;0180	21 60 6d 	! ` m 
	bit 6,(hl)		;0183	cb 76 	. v 
	jr nz,l01bch		;0185	20 35 	  5 
	set 6,(hl)		;0187	cb f6 	. . 
	dec hl			;0189	2b 	+ 
	dec hl			;018a	2b 	+ 
	set 6,(hl)		;018b	cb f6 	. . 
l018dh:
	ld hl,06d53h		;018d	21 53 6d 	! S m 
	call l04d3h		;0190	cd d3 04 	. . . 
	jr nz,l018dh		;0193	20 f8 	  . 
	ld hl,l0ac5h		;0195	21 c5 0a 	! . . 
	push hl			;0198	e5 	. 
	jr l01dbh		;0199	18 40 	. @ 
l019bh:
	push af			;019b	f5 	. 
	push hl			;019c	e5 	. 
	rst 38h			;019d	ff 	. 
	in a,(002h)		;019e	db 02 	. . 
	ld hl,(07220h)		;01a0	2a 20 72 	*   r 
	jp (hl)			;01a3	e9 	. 
l01a4h:
	cp 004h		;01a4	fe 04 	. . 
	jr z,l0180h		;01a6	28 d8 	( . 
l01a8h:
	ld c,a			;01a8	4f 	O 
	ld hl,06d61h		;01a9	21 61 6d 	! a m 
	push hl			;01ac	e5 	. 
	ld hl,06d4bh		;01ad	21 4b 6d 	! K m 
	call l0509h		;01b0	cd 09 05 	. . . 
	or a			;01b3	b7 	. 
	jr z,l01c8h		;01b4	28 12 	( . 
l01b6h:
	ld a,02eh		;01b6	3e 2e 	> . 
	ld (0789ch),a		;01b8	32 9c 78 	2 . x 
	pop hl			;01bb	e1 	. 
l01bch:
	jp l00c2h		;01bc	c3 c2 00 	. . . 
l01bfh:
	ld hl,06d49h		;01bf	21 49 6d 	! I m 
	call l0509h		;01c2	cd 09 05 	. . . 
	or a			;01c5	b7 	. 
	jr nz,l01b6h		;01c6	20 ee 	  . 
l01c8h:
	pop hl			;01c8	e1 	. 
l01c9h:
	ld l,(hl)			;01c9	6e 	n 
l01cah:
	ld a,(hl)			;01ca	7e 	~ 
	or a			;01cb	b7 	. 
	jp m,l045eh		;01cc	fa 5e 04 	. ^ . 
	jp nz,l00c2h		;01cf	c2 c2 00 	. . . 
	inc (hl)			;01d2	34 	4 
	inc hl			;01d3	23 	# 
	inc hl			;01d4	23 	# 
	inc hl			;01d5	23 	# 
	inc hl			;01d6	23 	# 
	ld e,(hl)			;01d7	5e 	^ 
	inc hl			;01d8	23 	# 
	ld d,(hl)			;01d9	56 	V 
	push de			;01da	d5 	. 
l01dbh:
	ei			;01db	fb 	. 
	reti		;01dc	ed 4d 	. M 
	push af			;01de	f5 	. 
	push hl			;01df	e5 	. 
	call sub_0c72h		;01e0	cd 72 0c 	. r . 
	rst 38h			;01e3	ff 	. 
	in a,(000h)		;01e4	db 00 	. . 
	ld hl,071a1h		;01e6	21 a1 71 	! . q 
	bit 0,(hl)		;01e9	cb 46 	. F 
	jr z,l01efh		;01eb	28 02 	( . 
	res 7,a		;01ed	cb bf 	. . 
l01efh:
	ld c,a			;01ef	4f 	O 
	and 0e8h		;01f0	e6 e8 	. . 
	ld hl,(07160h)		;01f2	2a 60 71 	* ` q 
	jp (hl)			;01f5	e9 	. 
	nop			;01f6	00 	. 
	nop			;01f7	00 	. 
	nop			;01f8	00 	. 
	nop			;01f9	00 	. 
	nop			;01fa	00 	. 
	nop			;01fb	00 	. 
	sbc a,(hl)			;01fc	9e 	. 
	inc c			;01fd	0c 	. 
	sbc a,c			;01fe	99 	. 
	inc c			;01ff	0c 	. 
	dec de			;0200	1b 	. 
	ld a,(de)			;0201	1a 	. 
	add hl,de			;0202	19 	. 
	jr 25		;0203	18 17 	. . 
	ld d,015h		;0205	16 15 	. . 
	ld (hl),021h		;0207	36 21 	6 ! 
	and b			;0209	a0 	. 
	ld (hl),c			;020a	71 	q 
	set 6,(hl)		;020b	cb f6 	. . 
	jp l00c2h		;020d	c3 c2 00 	. . . 
	dec bc			;0210	0b 	. 
	ld a,(bc)			;0211	0a 	. 
	ld a,(de)			;0212	1a 	. 
	dec (hl)			;0213	35 	5 
	rlca			;0214	07 	. 
	ld e,(hl)			;0215	5e 	^ 
	sub e			;0216	93 	. 
	inc b			;0217	04 	. 
l0218h:
	jp z,l034ah		;0218	ca 4a 03 	. J . 
	ld hl,071a0h		;021b	21 a0 71 	! . q 
	res 3,(hl)		;021e	cb 9e 	. . 
	inc hl			;0220	23 	# 
	bit 6,(hl)		;0221	cb 76 	. v 
	jr nz,l028fh		;0223	20 6a 	  j 
	ld hl,06d5fh		;0225	21 5f 6d 	! _ m 
	push hl			;0228	e5 	. 
	jp l01bfh		;0229	c3 bf 01 	. . . 
	ld hl,071a0h		;022c	21 a0 71 	! . q 
	res 3,(hl)		;022f	cb 9e 	. . 
	bit 1,(hl)		;0231	cb 4e 	. N 
	res 1,(hl)		;0233	cb 8e 	. . 
	jp nz,l02b7h		;0235	c2 b7 02 	. . . 
	call sub_00ceh		;0238	cd ce 00 	. . . 
	jr l028fh		;023b	18 52 	. R 
	ld hl,071a0h		;023d	21 a0 71 	! . q 
	set 3,(hl)		;0240	cb de 	. . 
	xor a			;0242	af 	. 
	ld (072e0h),a		;0243	32 e0 72 	2 . r 
	jr l028fh		;0246	18 47 	. G 
l0248h:
	xor a			;0248	af 	. 
	ld hl,071a1h		;0249	21 a1 71 	! . q 
	res 6,(hl)		;024c	cb b6 	. . 
	dec hl			;024e	2b 	+ 
	bit 3,(hl)		;024f	cb 5e 	. ^ 
	jr z,l0268h		;0251	28 15 	( . 
	ld (hl),a			;0253	77 	w 
	call sub_00adh		;0254	cd ad 00 	. . . 
	jr l028fh		;0257	18 36 	. 6 
l0259h:
	in a,(001h)		;0259	db 01 	. . 
	bit 2,a		;025b	cb 57 	. W 
	jr z,l0259h		;025d	28 fa 	( . 
	ld a,015h		;025f	3e 15 	> . 
	out (000h),a		;0261	d3 00 	. . 
	ld a,001h		;0263	3e 01 	> . 
	ld hl,071a0h		;0265	21 a0 71 	! . q 
l0268h:
	and (hl)			;0268	a6 	. 
	ld (hl),a			;0269	77 	w 
	ld hl,l0218h		;026a	21 18 02 	! . . 
	ld (07160h),hl		;026d	22 60 71 	" ` q 
	jp l033ch		;0270	c3 3c 03 	. < . 
sub_0273h:
	ld hl,071a1h		;0273	21 a1 71 	! . q 
	set 6,(hl)		;0276	cb f6 	. . 
	ld hl,l0000h		;0278	21 00 00 	! . . 
	ld (07180h),hl		;027b	22 80 71 	" . q 
	ld hl,06d49h		;027e	21 49 6d 	! I m 
	ld c,010h		;0281	0e 10 	. . 
	call l0509h		;0283	cd 09 05 	. . . 
	or a			;0286	b7 	. 
	jr z,l0292h		;0287	28 09 	( . 
	ld hl,l0013h+2		;0289	21 15 00 	! . . 
	ld (07120h),hl		;028c	22 20 71 	"   q 
l028fh:
	jp l00c2h		;028f	c3 c2 00 	. . . 
l0292h:
	ld (de),a			;0292	12 	. 
	ld (07140h),de		;0293	ed 53 40 71 	. S @ q 
	call l0509h		;0297	cd 09 05 	. . . 
	or a			;029a	b7 	. 
l029bh:
	ld hl,l035ah		;029b	21 5a 03 	! Z . 
	ld (07160h),hl		;029e	22 60 71 	" ` q 
	jr z,l028fh		;02a1	28 ec 	( . 
	ld hl,07180h		;02a3	21 80 71 	! . q 
	inc (hl)			;02a6	34 	4 
	jr l028fh		;02a7	18 e6 	. . 
	ld hl,071a1h		;02a9	21 a1 71 	! . q 
	bit 6,(hl)		;02ac	cb 76 	. v 
	dec hl			;02ae	2b 	+ 
	res 3,(hl)		;02af	cb 9e 	. . 
	jr nz,l028fh		;02b1	20 dc 	  . 
	set 1,(hl)		;02b3	cb ce 	. . 
	jr l028fh		;02b5	18 d8 	. . 
l02b7h:
	call sub_049fh		;02b7	cd 9f 04 	. . . 
	jr l028fh		;02ba	18 d3 	. . 
l02bch:
	ld hl,071a0h		;02bc	21 a0 71 	! . q 
	res 3,(hl)		;02bf	cb 9e 	. . 
	bit 1,(hl)		;02c1	cb 4e 	. N 
	set 1,(hl)		;02c3	cb ce 	. . 
	jr nz,l02ceh		;02c5	20 07 	  . 
	ld a,c			;02c7	79 	y 
	ld (072e0h),a		;02c8	32 e0 72 	2 . r 
	jp l00c2h		;02cb	c3 c2 00 	. . . 
l02ceh:
	ld d,c			;02ce	51 	Q 
	ld a,(072e0h)		;02cf	3a e0 72 	: . r 
	ld e,a			;02d2	5f 	_ 
	ld hl,(07180h)		;02d3	2a 80 71 	* . q 
	xor a			;02d6	af 	. 
	ld (072e0h),a		;02d7	32 e0 72 	2 . r 
	sbc hl,de		;02da	ed 52 	. R 
	jr z,l02fbh		;02dc	28 1d 	( . 
	ld hl,06d5eh		;02de	21 5e 6d 	! ^ m 
	res 7,(hl)		;02e1	cb be 	. . 
	ld hl,071a0h		;02e3	21 a0 71 	! . q 
	bit 5,(hl)		;02e6	cb 6e 	. n 
	res 1,(hl)		;02e8	cb 8e 	. . 
	jp z,l03a0h		;02ea	ca a0 03 	. . . 
	ld hl,l0013h+2		;02ed	21 15 00 	! . . 
	ld (07120h),hl		;02f0	22 20 71 	"   q 
	ld hl,07120h		;02f3	21 20 71 	!   q 
	call sub_04a2h		;02f6	cd a2 04 	. . . 
	jr l029bh		;02f9	18 a0 	. . 
l02fbh:
	ld hl,(07140h)		;02fb	2a 40 71 	* @ q 
	ld (hl),082h		;02fe	36 82 	6 . 
	ld hl,071a0h		;0300	21 a0 71 	! . q 
	bit 5,(hl)		;0303	cb 6e 	. n 
	jr z,l0317h		;0305	28 10 	( . 
	ld de,l0332h		;0307	11 32 03 	. 2 . 
	push de			;030a	d5 	. 
	push de			;030b	d5 	. 
	push de			;030c	d5 	. 
	push de			;030d	d5 	. 
	ld hl,l0218h		;030e	21 18 02 	! . . 
	ld (07160h),hl		;0311	22 60 71 	" ` q 
	call sub_0273h		;0314	cd 73 02 	. s . 
l0317h:
	ld a,(hl)			;0317	7e 	~ 
	xor 001h		;0318	ee 01 	. . 
	ld (hl),a			;031a	77 	w 
	and 001h		;031b	e6 01 	. . 
	add a,030h		;031d	c6 30 	. 0 
	ld h,a			;031f	67 	g 
	ld l,010h		;0320	2e 10 	. . 
	ld (07120h),hl		;0322	22 20 71 	"   q 
	ld hl,l0218h		;0325	21 18 02 	! . . 
	ld (07160h),hl		;0328	22 60 71 	" ` q 
	ld hl,l033ch		;032b	21 3c 03 	! < . 
	push hl			;032e	e5 	. 
	jp sub_00ceh		;032f	c3 ce 00 	. . . 
l0332h:
	in a,(001h)		;0332	db 01 	. . 
	bit 2,a		;0334	cb 57 	. W 
	jr z,l0332h		;0336	28 fa 	( . 
	ld a,006h		;0338	3e 06 	> . 
	out (000h),a		;033a	d3 00 	. . 
l033ch:
	ld hl,06d5fh		;033c	21 5f 6d 	! _ m 
	jp l01c9h		;033f	c3 c9 01 	. . . 
	and (hl)			;0342	a6 	. 
	jr nc,49		;0343	30 2f 	0 / 
	ld l,02dh		;0345	2e 2d 	. - 
	inc l			;0347	2c 	, 
	dec hl			;0348	2b 	+ 
	ld h,e			;0349	63 	c 
l034ah:
	ld a,l			;034a	7d 	} 
	sub c			;034b	91 	. 
	dec a			;034c	3d 	= 
	ld l,a			;034d	6f 	o 
	add a,(hl)			;034e	86 	. 
	ld l,a			;034f	6f 	o 
	ld a,c			;0350	79 	y 
	jp (hl)			;0351	e9 	. 
	add a,(hl)			;0352	86 	. 
	jr nz,78		;0353	20 4c 	  L 
	ld a,b			;0355	78 	x 
	sub d			;0356	92 	. 
	jr z,105		;0357	28 67 	( g 
	ld a,(de)			;0359	1a 	. 
l035ah:
	jr nz,l0373h		;035a	20 17 	  . 
l035ch:
	ld a,(071a0h)		;035c	3a a0 71 	: . q 
	bit 3,a		;035f	cb 5f 	. _ 
	jr z,l034ah		;0361	28 e7 	( . 
	ld a,(072e0h)		;0363	3a e0 72 	: . r 
	cp 010h		;0366	fe 10 	. . 
	ld a,c			;0368	79 	y 
	ld (072e0h),a		;0369	32 e0 72 	2 . r 
	jr z,l034ah		;036c	28 dc 	( . 
	cp 010h		;036e	fe 10 	. . 
	jp z,l00c2h		;0370	ca c2 00 	. . . 
l0373h:
	ld hl,06d49h		;0373	21 49 6d 	! I m 
	ld b,c			;0376	41 	A 
	call l0509h		;0377	cd 09 05 	. . . 
	or a			;037a	b7 	. 
	jp nz,l00c2h		;037b	c2 c2 00 	. . . 
	ld a,b			;037e	78 	x 
l037fh:
	ld b,008h		;037f	06 08 	. . 
	ld hl,(07180h)		;0381	2a 80 71 	* . q 
l0384h:
	ld d,a			;0384	57 	W 
	xor l			;0385	ad 	. 
	rra			;0386	1f 	. 
	jr nc,l0392h		;0387	30 09 	0 . 
	ld a,h			;0389	7c 	| 
	xor 040h		;038a	ee 40 	. @ 
	ld h,a			;038c	67 	g 
	ld a,l			;038d	7d 	} 
	xor 002h		;038e	ee 02 	. . 
	ld l,a			;0390	6f 	o 
	scf			;0391	37 	7 
l0392h:
	rr h		;0392	cb 1c 	. . 
	rr l		;0394	cb 1d 	. . 
	ld a,d			;0396	7a 	z 
	rrca			;0397	0f 	. 
	djnz l0384h		;0398	10 ea 	. . 
	ld (07180h),hl		;039a	22 80 71 	" . q 
	jp l00c2h		;039d	c3 c2 00 	. . . 
l03a0h:
	ld hl,l0013h+2		;03a0	21 15 00 	! . . 
	ld (07120h),hl		;03a3	22 20 71 	"   q 
	call sub_047ch		;03a6	cd 7c 04 	. | . 
	jp l0259h		;03a9	c3 59 02 	. Y . 
	xor a			;03ac	af 	. 
	ld (072e0h),a		;03ad	32 e0 72 	2 . r 
	ld hl,071a0h		;03b0	21 a0 71 	! . q 
	bit 3,(hl)		;03b3	cb 5e 	. ^ 
	jr nz,l0373h		;03b5	20 bc 	  . 
	set 3,(hl)		;03b7	cb de 	. . 
	ld a,c			;03b9	79 	y 
	ld (072e0h),a		;03ba	32 e0 72 	2 . r 
	jr l037fh		;03bd	18 c0 	. . 
	ld hl,0043dh		;03bf	21 3d 04 	! = . 
	ld (07160h),hl		;03c2	22 60 71 	" ` q 
	ld hl,06000h		;03c5	21 00 60 	! . ` 
	ld (072e0h),hl		;03c8	22 e0 72 	" . r 
	jr l037fh		;03cb	18 b2 	. . 
	call sub_047ch		;03cd	cd 7c 04 	. | . 
	ld hl,071a0h		;03d0	21 a0 71 	! . q 
	res 3,(hl)		;03d3	cb 9e 	. . 
	jp l0248h		;03d5	c3 48 02 	. H . 
	ld hl,071a0h		;03d8	21 a0 71 	! . q 
	set 5,(hl)		;03db	cb ee 	. . 
l03ddh:
	res 1,(hl)		;03dd	cb 8e 	. . 
	ld hl,l02bch		;03df	21 bc 02 	! . . 
	ld (07160h),hl		;03e2	22 60 71 	" ` q 
	jp l037fh		;03e5	c3 7f 03 	.  . 
	ld hl,071a0h		;03e8	21 a0 71 	! . q 
	res 5,(hl)		;03eb	cb ae 	. . 
	jr l03ddh		;03ed	18 ee 	. . 
l03efh:
	ld a,005h		;03ef	3e 05 	> . 
	cp c			;03f1	b9 	. 
	jr nz,l03fah		;03f2	20 06 	  . 
	ld hl,l03fdh		;03f4	21 fd 03 	! . . 
l03f7h:
	ld (07160h),hl		;03f7	22 60 71 	" ` q 
l03fah:
	jp l00c2h		;03fa	c3 c2 00 	. . . 
l03fdh:
	ld a,c			;03fd	79 	y 
	sub 020h		;03fe	d6 20 	.   
l0400h:
	jr c,l03fah		;0400	38 f8 	8 . 
	cp 016h		;0402	fe 16 	. . 
	jr nc,l03fah		;0404	30 f4 	0 . 
	and 01eh		;0406	e6 1e 	. . 
	ld hl,l0427h		;0408	21 27 04 	! ' . 
	add a,l			;040b	85 	. 
	ld l,a			;040c	6f 	o 
	ld a,c			;040d	79 	y 
	cp 02eh		;040e	fe 2e 	. . 
	jr nz,l0417h		;0410	20 05 	  . 
	ld hl,l0218h		;0412	21 18 02 	! . . 
	jr l03f7h		;0415	18 e0 	. . 
l0417h:
	ld de,l03efh		;0417	11 ef 03 	. . . 
	ld (07160h),de		;041a	ed 53 60 71 	. S ` q 
	ld a,(hl)			;041e	7e 	~ 
	inc hl			;041f	23 	# 
	ld h,(hl)			;0420	66 	f 
	ld l,a			;0421	6f 	o 
	call l0f42h		;0422	cd 42 0f 	. B . 
	jr l03fah		;0425	18 d3 	. . 
l0427h:
	cp c			;0427	b9 	. 
	dec a			;0428	3d 	= 
	pop bc			;0429	c1 	. 
	dec a			;042a	3d 	= 
	exx			;042b	d9 	. 
	dec a			;042c	3d 	= 
	exx			;042d	d9 	. 
	dec a			;042e	3d 	= 
	exx			;042f	d9 	. 
	dec a			;0430	3d 	= 
	exx			;0431	d9 	. 
	dec a			;0432	3d 	= 
	call pe,0c03dh		;0433	ec 3d c0 	. = . 
	dec a			;0436	3d 	= 
	ld (l2f3eh),hl		;0437	22 3e 2f 	" > / 
	ld a,03dh		;043a	3e 3d 	> = 
	ld a,02ah		;043c	3e 2a 	> * 
	ret po			;043e	e0 	. 
	ld (hl),d			;043f	72 	r 
	jr nz,l0454h		;0440	20 12 	  . 
	ld (hl),0a0h		;0442	36 a0 	6 . 
	ld a,c			;0444	79 	y 
	cp 003h		;0445	fe 03 	. . 
	jr nz,l044eh		;0447	20 05 	  . 
	ld hl,06d5eh		;0449	21 5e 6d 	! ^ m 
	set 7,(hl)		;044c	cb fe 	. . 
l044eh:
	ld hl,l035ah		;044e	21 5a 03 	! Z . 
	jp l035ch		;0451	c3 5c 03 	. \ . 
l0454h:
	res 5,l		;0454	cb ad 	. . 
	ld (hl),c			;0456	71 	q 
	inc l			;0457	2c 	, 
	ld (072e0h),hl		;0458	22 e0 72 	" . r 
	jp l0373h		;045b	c3 73 03 	. s . 
l045eh:
	res 7,(hl)		;045e	cb be 	. . 
	inc (hl)			;0460	34 	4 
	push hl			;0461	e5 	. 
	ld a,038h		;0462	3e 38 	> 8 
	out (001h),a		;0464	d3 01 	. . 
	ld hl,06000h		;0466	21 00 60 	! . ` 
	call l0f42h		;0469	cd 42 0f 	. B . 
	ld a,080h		;046c	3e 80 	> . 
	ld (06820h),a		;046e	32 20 68 	2   h 
	ld hl,l0030h+2		;0471	21 32 00 	! 2 . 
	call l068ah		;0474	cd 8a 06 	. . . 
	pop hl			;0477	e1 	. 
	dec (hl)			;0478	35 	5 
	jp l01cah		;0479	c3 ca 01 	. . . 
sub_047ch:
	ld de,(06d48h)		;047c	ed 5b 48 6d 	. [ H m 
	ld hl,(07140h)		;0480	2a 40 71 	* @ q 
	ld (06d48h),hl		;0483	22 48 6d 	" H m 
l0486h:
	ld a,(hl)			;0486	7e 	~ 
	cp 080h		;0487	fe 80 	. . 
	jr z,l0491h		;0489	28 06 	( . 
	ld (hl),000h		;048b	36 00 	6 . 
	inc hl			;048d	23 	# 
	jp l0496h		;048e	c3 96 04 	. . . 
l0491h:
	inc hl			;0491	23 	# 
	ld a,(hl)			;0492	7e 	~ 
	inc hl			;0493	23 	# 
	ld h,(hl)			;0494	66 	f 
	ld l,a			;0495	6f 	o 
l0496h:
	ld a,l			;0496	7d 	} 
	cp e			;0497	bb 	. 
	jr nz,l0486h		;0498	20 ec 	  . 
	ld a,h			;049a	7c 	| 
	cp d			;049b	ba 	. 
	ret z			;049c	c8 	. 
	jr l0486h		;049d	18 e7 	. . 
sub_049fh:
	ld hl,l04b0h		;049f	21 b0 04 	! . . 
sub_04a2h:
	in a,(001h)		;04a2	db 01 	. . 
	bit 2,a		;04a4	cb 57 	. W 
	jr z,sub_04a2h		;04a6	28 fa 	( . 
	ld a,(hl)			;04a8	7e 	~ 
	or a			;04a9	b7 	. 
	ret z			;04aa	c8 	. 
	inc hl			;04ab	23 	# 
	out (000h),a		;04ac	d3 00 	. . 
	jr sub_04a2h		;04ae	18 f2 	. . 
l04b0h:
	ld bc,04032h		;04b0	01 32 40 	. 2 @ 
	ld (l0003h),a		;04b3	32 03 00 	2 . . 
	ld hl,(06140h)		;04b6	2a 40 61 	* @ a 
	ld a,h			;04b9	7c 	| 
	or l			;04ba	b5 	. 
	ret z			;04bb	c8 	. 
	dec hl			;04bc	2b 	+ 
	ld (06140h),hl		;04bd	22 40 61 	" @ a 
	ld a,(06d6ch)		;04c0	3a 6c 6d 	: l m 
	call l06b0h		;04c3	cd b0 06 	. . . 
	ld hl,(06120h)		;04c6	2a 20 61 	*   a 
	ld e,(hl)			;04c9	5e 	^ 
	inc hl			;04ca	23 	# 
	ld (06120h),hl		;04cb	22 20 61 	"   a 
	call sub_06aah		;04ce	cd aa 06 	. . . 
	ld a,e			;04d1	7b 	{ 
	ret			;04d2	c9 	. 
l04d3h:
	ld d,(hl)			;04d3	56 	V 
	dec hl			;04d4	2b 	+ 
	ld e,(hl)			;04d5	5e 	^ 
	inc hl			;04d6	23 	# 
l04d7h:
	ld a,(de)			;04d7	1a 	. 
	or a			;04d8	b7 	. 
	ret z			;04d9	c8 	. 
	cp 080h		;04da	fe 80 	. . 
	jr z,l04f4h		;04dc	28 16 	( . 
	ex de,hl			;04de	eb 	. 
	ld (hl),000h		;04df	36 00 	6 . 
	ex de,hl			;04e1	eb 	. 
	dec hl			;04e2	2b 	+ 
	inc (hl)			;04e3	34 	4 
	inc hl			;04e4	23 	# 
	jr nz,l04e8h		;04e5	20 01 	  . 
	inc (hl)			;04e7	34 	4 
l04e8h:
	cp 082h		;04e8	fe 82 	. . 
	ret nz			;04ea	c0 	. 
	call l04d3h		;04eb	cd d3 04 	. . . 
	cp 010h		;04ee	fe 10 	. . 
	jr z,l04d3h		;04f0	28 e1 	( . 
	cpl			;04f2	2f 	/ 
	ret			;04f3	c9 	. 
l04f4h:
	ex de,hl			;04f4	eb 	. 
	inc hl			;04f5	23 	# 
	ld a,(hl)			;04f6	7e 	~ 
	inc hl			;04f7	23 	# 
	ld h,(hl)			;04f8	66 	f 
	ld l,a			;04f9	6f 	o 
	ex de,hl			;04fa	eb 	. 
	ld (hl),d			;04fb	72 	r 
	dec hl			;04fc	2b 	+ 
	ld (hl),e			;04fd	73 	s 
	inc hl			;04fe	23 	# 
	jr l04d7h		;04ff	18 d6 	. . 
l0501h:
	ld a,082h		;0501	3e 82 	> . 
	call sub_051ah		;0503	cd 1a 05 	. . . 
	ld a,c			;0506	79 	y 
	cpl			;0507	2f 	/ 
	ld c,a			;0508	4f 	O 
l0509h:
	ld d,(hl)			;0509	56 	V 
	dec hl			;050a	2b 	+ 
	ld e,(hl)			;050b	5e 	^ 
l050ch:
	ld a,(de)			;050c	1a 	. 
	or a			;050d	b7 	. 
	jr nz,l0521h		;050e	20 11 	  . 
	ld a,c			;0510	79 	y 
	cp 082h		;0511	fe 82 	. . 
	jr z,l0501h		;0513	28 ec 	( . 
	and 07fh		;0515	e6 7f 	.  
	jr z,l0501h		;0517	28 e8 	( . 
	ld a,c			;0519	79 	y 
sub_051ah:
	ld (de),a			;051a	12 	. 
	xor a			;051b	af 	. 
	inc (hl)			;051c	34 	4 
	inc hl			;051d	23 	# 
	ret nz			;051e	c0 	. 
	inc (hl)			;051f	34 	4 
	ret			;0520	c9 	. 
l0521h:
	xor 080h		;0521	ee 80 	. . 
	ret nz			;0523	c0 	. 
	ex de,hl			;0524	eb 	. 
	inc hl			;0525	23 	# 
	ld a,(hl)			;0526	7e 	~ 
	inc hl			;0527	23 	# 
	ld h,(hl)			;0528	66 	f 
	ld l,a			;0529	6f 	o 
	ex de,hl			;052a	eb 	. 
	ld (hl),e			;052b	73 	s 
	inc hl			;052c	23 	# 
	ld (hl),d			;052d	72 	r 
	dec hl			;052e	2b 	+ 
	jr l050ch		;052f	18 db 	. . 
l0531h:
	di			;0531	f3 	. 
	ld a,090h		;0532	3e 90 	> . 
	out (0c0h),a		;0534	d3 c0 	. . 
	call l0509h		;0536	cd 09 05 	. . . 
l0539h:
	push af			;0539	f5 	. 
	ld a,(06da1h)		;053a	3a a1 6d 	: . m 
	out (0c0h),a		;053d	d3 c0 	. . 
	pop af			;053f	f1 	. 
	ei			;0540	fb 	. 
	ret			;0541	c9 	. 
l0542h:
	di			;0542	f3 	. 
	ld a,090h		;0543	3e 90 	> . 
	out (0c0h),a		;0545	d3 c0 	. . 
	call l04d3h		;0547	cd d3 04 	. . . 
	jr l0539h		;054a	18 ed 	. . 
l054ch:
	di			;054c	f3 	. 
	out (0c0h),a		;054d	d3 c0 	. . 
	ld b,(hl)			;054f	46 	F 
l0550h:
	ld a,(06da1h)		;0550	3a a1 6d 	: . m 
	out (0c0h),a		;0553	d3 c0 	. . 
	ei			;0555	fb 	. 
	ret			;0556	c9 	. 
l0557h:
	di			;0557	f3 	. 
	out (0c0h),a		;0558	d3 c0 	. . 
	ld (hl),b			;055a	70 	p 
	jr l0550h		;055b	18 f3 	. . 
l055dh:
	push af			;055d	f5 	. 
	push hl			;055e	e5 	. 
	push de			;055f	d5 	. 
	push bc			;0560	c5 	. 
	ld a,(071a0h)		;0561	3a a0 71 	: . q 
	and 040h		;0564	e6 40 	. @ 
	call nz,sub_00ceh		;0566	c4 ce 00 	. . . 
	ld a,c			;0569	79 	y 
	cp 016h		;056a	fe 16 	. . 
	jr nz,l05a7h		;056c	20 39 	  9 
	ld a,(07201h)		;056e	3a 01 72 	: . r 
	and 0c0h		;0571	e6 c0 	. . 
	jr nz,l05a7h		;0573	20 32 	  2 
	ld hl,072a0h		;0575	21 a0 72 	! . r 
	ld a,(hl)			;0578	7e 	~ 
	ld (hl),c			;0579	71 	q 
	or a			;057a	b7 	. 
	jr nz,l05b8h		;057b	20 3b 	  ; 
	call sub_05f8h		;057d	cd f8 05 	. . . 
	ld a,(071a1h)		;0580	3a a1 71 	: . q 
	rlca			;0583	07 	. 
	ld (071a1h),a		;0584	32 a1 71 	2 . q 
	ld a,(072a1h)		;0587	3a a1 72 	: . r 
	bit 7,a		;058a	cb 7f 	.  
	jr nz,l0590h		;058c	20 02 	  . 
	ld a,068h		;058e	3e 68 	> h 
l0590h:
	call sub_0d61h		;0590	cd 61 0d 	. a . 
	ld a,0c1h		;0593	3e c1 	> . 
	call 00d5bh		;0595	cd 5b 0d 	. [ . 
	ld a,006h		;0598	3e 06 	> . 
	call sub_0c35h		;059a	cd 35 0c 	. 5 . 
	call sub_0c89h		;059d	cd 89 0c 	. . . 
	call sub_0d14h		;05a0	cd 14 0d 	. . . 
	ld c,016h		;05a3	0e 16 	. . 
	jr l05b8h		;05a5	18 11 	. . 
l05a7h:
	ld hl,072a0h		;05a7	21 a0 72 	! . r 
	ld a,(hl)			;05aa	7e 	~ 
	cp 016h		;05ab	fe 16 	. . 
	jr nz,l060ch		;05ad	20 5d 	  ] 
	ld a,c			;05af	79 	y 
	and 0dfh		;05b0	e6 df 	. . 
	cp 042h		;05b2	fe 42 	. B 
	ld (hl),001h		;05b4	36 01 	6 . 
	jr z,l05d1h		;05b6	28 19 	( . 
l05b8h:
	ld hl,007d0h		;05b8	21 d0 07 	! . . 
l05bbh:
	in a,(001h)		;05bb	db 01 	. . 
	bit 2,a		;05bd	cb 57 	. W 
	jr nz,l05c8h		;05bf	20 07 	  . 
	dec hl			;05c1	2b 	+ 
	ld a,l			;05c2	7d 	} 
	or h			;05c3	b4 	. 
	jr nz,l05bbh		;05c4	20 f5 	  . 
	jr l05cbh		;05c6	18 03 	. . 
l05c8h:
	ld a,c			;05c8	79 	y 
	out (000h),a		;05c9	d3 00 	. . 
l05cbh:
	call sub_0c77h		;05cb	cd 77 0c 	. w . 
	jp l00c2h		;05ce	c3 c2 00 	. . . 
l05d1h:
	rst 18h			;05d1	df 	. 
	call sub_05f8h		;05d2	cd f8 05 	. . . 
	xor a			;05d5	af 	. 
	ld (072a0h),a		;05d6	32 a0 72 	2 . r 
	ld hl,071a1h		;05d9	21 a1 71 	! . q 
	rrc (hl)		;05dc	cb 0e 	. . 
	ld a,(072c0h)		;05de	3a c0 72 	: . r 
	call sub_0c35h		;05e1	cd 35 0c 	. 5 . 
	ld a,(072a1h)		;05e4	3a a1 72 	: . r 
	call sub_0d61h		;05e7	cd 61 0d 	. a . 
	ld a,0e1h		;05ea	3e e1 	> . 
	call 00d5bh		;05ec	cd 5b 0d 	. [ . 
	call sub_0c89h		;05ef	cd 89 0c 	. . . 
	call sub_0d14h		;05f2	cd 14 0d 	. . . 
	jp l00c2h		;05f5	c3 c2 00 	. . . 
sub_05f8h:
	ld hl,007d0h		;05f8	21 d0 07 	! . . 
l05fbh:
	di			;05fb	f3 	. 
	ld a,001h		;05fc	3e 01 	> . 
	out (001h),a		;05fe	d3 01 	. . 
	in a,(001h)		;0600	db 01 	. . 
	ei			;0602	fb 	. 
	bit 0,a		;0603	cb 47 	. G 
	ret nz			;0605	c0 	. 
	dec hl			;0606	2b 	+ 
	ld a,l			;0607	7d 	} 
	or h			;0608	b4 	. 
	jr nz,l05fbh		;0609	20 f0 	  . 
	ret			;060b	c9 	. 
l060ch:
	or a			;060c	b7 	. 
	jr nz,l05b8h		;060d	20 a9 	  . 
	ld b,c			;060f	41 	A 
	ld c,001h		;0610	0e 01 	. . 
l0612h:
	in a,(c)		;0612	ed 78 	. x 
	bit 2,a		;0614	cb 57 	. W 
	jr z,l0612h		;0616	28 fa 	( . 
	dec c			;0618	0d 	. 
	ld a,b			;0619	78 	x 
	bit 1,c		;061a	cb 49 	. I 
	jr nz,l0622h		;061c	20 04 	  . 
	ld hl,(07200h)		;061e	2a 00 72 	* . r 
	jp (hl)			;0621	e9 	. 
l0622h:
	out (c),a		;0622	ed 79 	. y 
	jp l00c2h		;0624	c3 c2 00 	. . . 
l0627h:
	push af			;0627	f5 	. 
	push hl			;0628	e5 	. 
	push de			;0629	d5 	. 
	push bc			;062a	c5 	. 
	ld b,c			;062b	41 	A 
	ld c,003h		;062c	0e 03 	. . 
	jr l0612h		;062e	18 e2 	. . 
l0630h:
	push hl			;0630	e5 	. 
	push de			;0631	d5 	. 
	ld hl,06d51h		;0632	21 51 6d 	! Q m 
	push hl			;0635	e5 	. 
l0636h:
	pop hl			;0636	e1 	. 
	push hl			;0637	e5 	. 
	call l0542h		;0638	cd 42 05 	. B . 
	jr z,l0636h		;063b	28 f9 	( . 
	pop hl			;063d	e1 	. 
	pop de			;063e	d1 	. 
	pop hl			;063f	e1 	. 
	ret			;0640	c9 	. 
l0641h:
	push hl			;0641	e5 	. 
	push de			;0642	d5 	. 
	ld hl,06d53h		;0643	21 53 6d 	! S m 
	push hl			;0646	e5 	. 
	jr l0636h		;0647	18 ed 	. . 
l0649h:
	ld iy,(06d7eh)		;0649	fd 2a 7e 6d 	. * ~ m 
l064dh:
	push bc			;064d	c5 	. 
	push de			;064e	d5 	. 
	push hl			;064f	e5 	. 
	ld a,(06da1h)		;0650	3a a1 6d 	: . m 
	push af			;0653	f5 	. 
	call sub_06aah		;0654	cd aa 06 	. . . 
	ld a,c			;0657	79 	y 
	push ix		;0658	dd e5 	. . 
	exx			;065a	d9 	. 
	push bc			;065b	c5 	. 
	push de			;065c	d5 	. 
	push hl			;065d	e5 	. 
	ex af,af'			;065e	08 	. 
	push af			;065f	f5 	. 
	ex af,af'			;0660	08 	. 
	call sub_1c99h		;0661	cd 99 1c 	. . . 
	pop af			;0664	f1 	. 
	ex af,af'			;0665	08 	. 
	pop hl			;0666	e1 	. 
	pop de			;0667	d1 	. 
	pop bc			;0668	c1 	. 
	exx			;0669	d9 	. 
	pop ix		;066a	dd e1 	. . 
	pop af			;066c	f1 	. 
	pop hl			;066d	e1 	. 
	pop de			;066e	d1 	. 
	pop bc			;066f	c1 	. 
	jp l06b0h		;0670	c3 b0 06 	. . . 
l0673h:
	push af			;0673	f5 	. 
	push hl			;0674	e5 	. 
	jr l067eh		;0675	18 07 	. . 
l0677h:
	push af			;0677	f5 	. 
	push hl			;0678	e5 	. 
	ld hl,06d5bh		;0679	21 5b 6d 	! [ m 
	set 7,(hl)		;067c	cb fe 	. . 
l067eh:
	rst 38h			;067e	ff 	. 
	ld hl,06d5eh		;067f	21 5e 6d 	! ^ m 
	inc (hl)			;0682	34 	4 
	ei			;0683	fb 	. 
	jp l11aah		;0684	c3 aa 11 	. . . 
sub_0687h:
	ld hl,l0006h		;0687	21 06 00 	! . . 
l068ah:
	push af			;068a	f5 	. 
	push de			;068b	d5 	. 
	ld de,(06d66h)		;068c	ed 5b 66 6d 	. [ f m 
	ld a,d			;0690	7a 	z 
	res 7,d		;0691	cb ba 	. . 
	add hl,de			;0693	19 	. 
	ex de,hl			;0694	eb 	. 
	and 080h		;0695	e6 80 	. . 
l0697h:
	ld hl,(06d66h)		;0697	2a 66 6d 	* f m 
	push af			;069a	f5 	. 
	xor h			;069b	ac 	. 
	ld h,a			;069c	67 	g 
	pop af			;069d	f1 	. 
	or a			;069e	b7 	. 
	sbc hl,de		;069f	ed 52 	. R 
	jr c,l0697h		;06a1	38 f4 	8 . 
	pop de			;06a3	d1 	. 
	pop af			;06a4	f1 	. 
	ret			;06a5	c9 	. 
l06a6h:
	ld a,09ah		;06a6	3e 9a 	> . 
	jr l06b0h		;06a8	18 06 	. . 
sub_06aah:
	ld a,092h		;06aa	3e 92 	> . 
	jr l06b0h		;06ac	18 02 	. . 
sub_06aeh:
	ld a,098h		;06ae	3e 98 	> . 
l06b0h:
	ld (06da1h),a		;06b0	32 a1 6d 	2 . m 
	out (0c0h),a		;06b3	d3 c0 	. . 
	ei			;06b5	fb 	. 
	ret			;06b6	c9 	. 
sub_06b7h:
	ld a,090h		;06b7	3e 90 	> . 
	jr l06b0h		;06b9	18 f5 	. . 
l06bbh:
	ld a,080h		;06bb	3e 80 	> . 
	jr l06b0h		;06bd	18 f1 	. . 
l06bfh:
	ld a,088h		;06bf	3e 88 	> . 
	jr l06b0h		;06c1	18 ed 	. . 
sub_06c3h:
	ld a,09ah		;06c3	3e 9a 	> . 
	jr z,l06b0h		;06c5	28 e9 	( . 
	ld a,092h		;06c7	3e 92 	> . 
	jr l06b0h		;06c9	18 e5 	. . 
l06cbh:
	ld hl,06da0h		;06cb	21 a0 6d 	! . m 
	set 3,(hl)		;06ce	cb de 	. . 
	res 7,(hl)		;06d0	cb be 	. . 
	ld a,(hl)			;06d2	7e 	~ 
	out (0a0h),a		;06d3	d3 a0 	. . 
	ld a,0c0h		;06d5	3e c0 	> . 
	ld (06820h),a		;06d7	32 20 68 	2   h 
	ld hl,06800h		;06da	21 00 68 	! . h 
	ld (hl),082h		;06dd	36 82 	6 . 
	ld sp,hl			;06df	f9 	. 
	ld a,098h		;06e0	3e 98 	> . 
	out (0c0h),a		;06e2	d3 c0 	. . 
	ld hl,l0000h+1		;06e4	21 01 00 	! . . 
	ld (08800h),hl		;06e7	22 00 88 	" . . 
	ld a,000h		;06ea	3e 00 	> . 
	ld i,a		;06ec	ed 47 	. G 
	im 2		;06ee	ed 5e 	. ^ 
	ld hl,l01a4h		;06f0	21 a4 01 	! . . 
	ld (07220h),hl		;06f3	22 20 72 	"   r 
	ld a,(083ffh)		;06f6	3a ff 83 	: . . 
	ld hl,l08fdh		;06f9	21 fd 08 	! . . 
	cp (hl)			;06fc	be 	. 
	jr z,l0742h		;06fd	28 43 	( C 
	ld a,00ch		;06ff	3e 0c 	> . 
	out (0a0h),a		;0701	d3 a0 	. . 
	ld (06da0h),a		;0703	32 a0 6d 	2 . m 
	ld hl,08000h		;0706	21 00 80 	! . . 
	ld de,l0966h		;0709	11 66 09 	. f . 
	ld b,01ah		;070c	06 1a 	. . 
	call sub_07b4h		;070e	cd b4 07 	. . . 
	ld a,090h		;0711	3e 90 	> . 
	out (0c0h),a		;0713	d3 c0 	. . 
	ld hl,0a500h		;0715	21 00 a5 	! . . 
	ld de,0a501h		;0718	11 01 a5 	. . . 
	ld bc,05affh		;071b	01 ff 5a 	. . Z 
	ld (hl),000h		;071e	36 00 	6 . 
	ldir		;0720	ed b0 	. . 
	ld hl,l08edh		;0722	21 ed 08 	! . . 
	ld de,071bbh		;0725	11 bb 71 	. . q 
	ld bc,l2000h		;0728	01 00 20 	. .   
	ldir		;072b	ed b0 	. . 
	ld hl,l07a1h		;072d	21 a1 07 	! . . 
	ld (06d21h),hl		;0730	22 21 6d 	" ! m 
	ld a,030h		;0733	3e 30 	> 0 
	ld (072c0h),a		;0735	32 c0 72 	2 . r 
	xor a			;0738	af 	. 
	ld (072a0h),a		;0739	32 a0 72 	2 . r 
	ld hl,04000h		;073c	21 00 40 	! . @ 
	ld (071a0h),hl		;073f	22 a0 71 	" . q 
l0742h:
	call sub_07cbh		;0742	cd cb 07 	. . . 
	ld l,a			;0745	6f 	o 
	ld a,(l08feh)		;0746	3a fe 08 	: . . 
	ld h,a			;0749	67 	g 
	ld (06e58h),hl		;074a	22 58 6e 	" X n 
	ld hl,l2179h		;074d	21 79 21 	! y ! 
	ld (06160h),hl		;0750	22 60 61 	" ` a 
	call sub_0870h		;0753	cd 70 08 	. p . 
	call sub_1b74h		;0756	cd 74 1b 	. t . 
	call sub_08d3h		;0759	cd d3 08 	. . . 
	ld a,097h		;075c	3e 97 	> . 
	call sub_1057h		;075e	cd 57 10 	. W . 
	call sub_07d4h		;0761	cd d4 07 	. . . 
	call sub_10cbh		;0764	cd cb 10 	. . . 
	call sub_1d11h		;0767	cd 11 1d 	. . . 
	ld hl,0aab2h		;076a	21 b2 aa 	! . . 
	ld (hl),000h		;076d	36 00 	6 . 
	ld d,h			;076f	54 	T 
	ld e,l			;0770	5d 	] 
	inc de			;0771	13 	. 
	ld bc,l092dh		;0772	01 2d 09 	. - . 
	ldir		;0775	ed b0 	. . 
	ld a,(07221h)		;0777	3a 21 72 	: ! r 
	or a			;077a	b7 	. 
	jr z,l0782h		;077b	28 05 	( . 
	call 03fe2h		;077d	cd e2 3f 	. . ? 
	jr nz,l0794h		;0780	20 12 	  . 
l0782h:
	ld hl,l3e71h		;0782	21 71 3e 	! q > 
	ld (06d50h),hl		;0785	22 50 6d 	" P m 
	call l0677h		;0788	cd 77 06 	. w . 
	call sub_0d0fh		;078b	cd 0f 0d 	. . . 
	call sub_0171h		;078e	cd 71 01 	. q . 
	ld c,0f7h		;0791	0e f7 	. . 
	rst 20h			;0793	e7 	. 
l0794h:
	ld hl,l3e4bh		;0794	21 4b 3e 	! K > 
	call l0f42h		;0797	cd 42 0f 	. B . 
l079ah:
	ei			;079a	fb 	. 
	ld hl,(06d6ah)		;079b	2a 6a 6d 	* j m 
	jp (hl)			;079e	e9 	. 
	jr l079ah		;079f	18 f9 	. . 
l07a1h:
	di			;07a1	f3 	. 
	ld sp,06800h		;07a2	31 00 68 	1 . h 
	call l085fh		;07a5	cd 5f 08 	. _ . 
	ld a,(068bch)		;07a8	3a bc 68 	: . h 
	cp 080h		;07ab	fe 80 	. . 
	jr z,l079ah		;07ad	28 eb 	( . 
	jr l0794h		;07af	18 e3 	. . 
sub_07b1h:
	call sub_06aeh		;07b1	cd ae 06 	. . . 
sub_07b4h:
	ld a,(de)			;07b4	1a 	. 
	ld (hl),a			;07b5	77 	w 
	inc hl			;07b6	23 	# 
	ld (hl),000h		;07b7	36 00 	6 . 
	push de			;07b9	d5 	. 
	ld de,l0013h		;07ba	11 13 00 	. . . 
	add hl,de			;07bd	19 	. 
	pop de			;07be	d1 	. 
	inc de			;07bf	13 	. 
	djnz sub_07b4h		;07c0	10 f2 	. . 
	ret			;07c2	c9 	. 
sub_07c3h:
	ld hl,00948h		;07c3	21 48 09 	! H . 
	ld bc,l0a01h		;07c6	01 01 0a 	. . . 
	otir		;07c9	ed b3 	. . 
sub_07cbh:
	ld hl,l093ch		;07cb	21 3c 09 	! < . 
	ld bc,l0c03h		;07ce	01 03 0c 	. . . 
	otir		;07d1	ed b3 	. . 
	ret			;07d3	c9 	. 
sub_07d4h:
	ld iy,(06d7eh)		;07d4	fd 2a 7e 6d 	. * ~ m 
	ld a,080h		;07d8	3e 80 	> . 
	ld b,068h		;07da	06 68 	. h 
	call sub_1073h		;07dc	cd 73 10 	. s . 
	call sub_06aeh		;07df	cd ae 06 	. . . 
	ld hl,l0000h+1		;07e2	21 01 00 	! . . 
	ld (09800h),hl		;07e5	22 00 98 	" . . 
	ld c,001h		;07e8	0e 01 	. . 
	ld hl,08800h		;07ea	21 00 88 	! . . 
	ld de,l0400h		;07ed	11 00 04 	. . . 
	ld b,007h		;07f0	06 07 	. . 
l07f2h:
	ld (hl),c			;07f2	71 	q 
	set 0,(hl)		;07f3	cb c6 	. . 
	add hl,de			;07f5	19 	. 
	ld (hl),c			;07f6	71 	q 
	set 0,(hl)		;07f7	cb c6 	. . 
	sbc hl,de		;07f9	ed 52 	. R 
	inc c			;07fb	0c 	. 
	inc l			;07fc	2c 	, 
	djnz l07f2h		;07fd	10 f3 	. . 
	add hl,de			;07ff	19 	. 
	ld (hl),000h		;0800	36 00 	6 . 
sub_0802h:
	call sub_06aeh		;0802	cd ae 06 	. . . 
	ld a,010h		;0805	3e 10 	> . 
l0807h:
	ld (08807h),a		;0807	32 07 88 	2 . . 
	call sub_06b7h		;080a	cd b7 06 	. . . 
	ld a,0c0h		;080d	3e c0 	> . 
	ld (06820h),a		;080f	32 20 68 	2   h 
	ld hl,06d73h		;0812	21 73 6d 	! s m 
	ld c,001h		;0815	0e 01 	. . 
	ld de,0a40fh		;0817	11 0f a4 	. . . 
l081ah:
	ld b,(hl)			;081a	46 	F 
	res 0,a		;081b	cb 87 	. . 
l081dh:
	ld (de),a			;081d	12 	. 
	inc e			;081e	1c 	. 
	ld a,e			;081f	7b 	{ 
	inc a			;0820	3c 	< 
	jr z,l082ah		;0821	28 07 	( . 
	set 0,a		;0823	cb c7 	. . 
	djnz l081dh		;0825	10 f6 	. . 
	inc c			;0827	0c 	. 
	jr l081ah		;0828	18 f0 	. . 
l082ah:
	ld a,004h		;082a	3e 04 	> . 
	ld (de),a			;082c	12 	. 
	ld a,c			;082d	79 	y 
	ld (06da2h),a		;082e	32 a2 6d 	2 . m 
	ld hl,06d01h		;0831	21 01 6d 	! . m 
	ld b,c			;0834	41 	A 
	ld a,0c1h		;0835	3e c1 	> . 
	ld (06840h),a		;0837	32 40 68 	2 @ h 
	inc a			;083a	3c 	< 
	ld (06821h),a		;083b	32 21 68 	2 ! h 
l083eh:
	inc l			;083e	2c 	, 
	inc a			;083f	3c 	< 
	ld (hl),a			;0840	77 	w 
	djnz l083eh		;0841	10 fb 	. . 
	ld (hl),0dbh		;0843	36 db 	6 . 
	ld a,0dch		;0845	3e dc 	> . 
	ld (0685bh),a		;0847	32 5b 68 	2 [ h 
	ld a,0ddh		;084a	3e dd 	> . 
	ld (068bch),a		;084c	32 bc 68 	2 . h 
	ld (06d1ch),a		;084f	32 1c 6d 	2 . m 
	ld a,0e0h		;0852	3e e0 	> . 
	ld (0683dh),a		;0854	32 3d 68 	2 = h 
	ld a,0a0h		;0857	3e a0 	> . 
	ld (07d1ch),a		;0859	32 1c 7d 	2 . } 
	jp l1180h		;085c	c3 80 11 	. . . 
l085fh:
	ld a,(06d73h)		;085f	3a 73 6d 	: s m 
	push af			;0862	f5 	. 
	call sub_0870h		;0863	cd 70 08 	. p . 
	call sub_1d11h		;0866	cd 11 1d 	. . . 
	pop af			;0869	f1 	. 
	ld (06d73h),a		;086a	32 73 6d 	2 s m 
	jp sub_0171h		;086d	c3 71 01 	. q . 
sub_0870h:
	di			;0870	f3 	. 
	ld bc,l003fh		;0871	01 3f 00 	. ? . 
	ld hl,l08fdh		;0874	21 fd 08 	! . . 
	ld de,06d58h		;0877	11 58 6d 	. X m 
	ldir		;087a	ed b0 	. . 
	xor a			;087c	af 	. 
	ld r,a		;087d	ed 4f 	. O 
	ld (06e80h),a		;087f	32 80 6e 	2 . n 
	ld iy,(06d7eh)		;0882	fd 2a 7e 6d 	. * ~ m 
	ld hl,l1209h		;0886	21 09 12 	! . . 
	ld (066feh),hl		;0889	22 fe 66 	" . f 
	ld hl,l0218h		;088c	21 18 02 	! . . 
	ld (07160h),hl		;088f	22 60 71 	" ` q 
	call l0898h		;0892	cd 98 08 	. . . 
	jp sub_06b7h		;0895	c3 b7 06 	. . . 
l0898h:
	di			;0898	f3 	. 
	ld a,090h		;0899	3e 90 	> . 
	out (0c0h),a		;089b	d3 c0 	. . 
	ld b,007h		;089d	06 07 	. . 
	ld hl,06d34h		;089f	21 34 6d 	! 4 m 
l08a2h:
	ld (hl),000h		;08a2	36 00 	6 . 
	inc hl			;08a4	23 	# 
	djnz l08a2h		;08a5	10 fb 	. . 
	ld (hl),080h		;08a7	36 80 	6 . 
	ld hl,06d34h		;08a9	21 34 6d 	! 4 m 
	ld (06d3ch),hl		;08ac	22 3c 6d 	" < m 
	ld de,l0807h		;08af	11 07 08 	. . . 
	ld hl,0d200h		;08b2	21 00 d2 	! . . 
l08b5h:
	ld (hl),000h		;08b5	36 00 	6 . 
	inc hl			;08b7	23 	# 
	dec de			;08b8	1b 	. 
	ld a,d			;08b9	7a 	z 
	or e			;08ba	b3 	. 
	jr nz,l08b5h		;08bb	20 f8 	  . 
	ld (hl),080h		;08bd	36 80 	6 . 
	ld hl,0d200h		;08bf	21 00 d2 	! . . 
	ld (0da08h),hl		;08c2	22 08 da 	" . . 
	ld hl,l08edh		;08c5	21 ed 08 	! . . 
	ld de,06d48h		;08c8	11 48 6d 	. H m 
	ld bc,l0010h		;08cb	01 10 00 	. . . 
	ldir		;08ce	ed b0 	. . 
	jp l0550h		;08d0	c3 50 05 	. P . 
sub_08d3h:
	ld hl,l0980h		;08d3	21 80 09 	! . . 
	ld de,06da5h		;08d6	11 a5 6d 	. . m 
	ld bc,l0008h+1		;08d9	01 09 00 	. . . 
	ldir		;08dc	ed b0 	. . 
	ld hl,06daeh		;08de	21 ae 6d 	! . m 
	ld de,l09e0h		;08e1	11 e0 09 	. . . 
	ld b,00ah		;08e4	06 0a 	. . 
l08e6h:
	ld (hl),e			;08e6	73 	s 
	inc hl			;08e7	23 	# 
	ld (hl),d			;08e8	72 	r 
	inc hl			;08e9	23 	# 
	djnz l08e6h		;08ea	10 fa 	. . 
	ret			;08ec	c9 	. 
l08edh:
	nop			;08ed	00 	. 
	jp nc,06d34h		;08ee	d2 34 6d 	. 4 m 
	ei			;08f1	fb 	. 
	ret			;08f2	c9 	. 
	nop			;08f3	00 	. 
	nop			;08f4	00 	. 
	nop			;08f5	00 	. 
	jp nc,06d34h		;08f6	d2 34 6d 	. 4 m 
	ei			;08f9	fb 	. 
	ret			;08fa	c9 	. 
	nop			;08fb	00 	. 
	nop			;08fc	00 	. 
l08fdh:
	adc a,b			;08fd	88 	. 
l08feh:
	add hl,bc			;08fe	09 	. 
	nop			;08ff	00 	. 
	ld a,a			;0900	7f 	 
	ld d,b			;0901	50 	P 
	nop			;0902	00 	. 
	nop			;0903	00 	. 
	ld e,(hl)			;0904	5e 	^ 
	nop			;0905	00 	. 
	ld h,b			;0906	60 	` 
	xor d			;0907	aa 	. 
	ld de,l1188h		;0908	11 88 11 	. . . 
	sbc a,h			;090b	9c 	. 
	rst 38h			;090c	ff 	. 
	halt			;090d	76 	v 
	nop			;090e	00 	. 
	sbc a,a			;090f	9f 	. 
	rlca			;0910	07 	. 
	add a,b			;0911	80 	. 
	nop			;0912	00 	. 
	nop			;0913	00 	. 
	nop			;0914	00 	. 
	call pe,00c66h		;0915	ec 66 0c 	. f . 
	ld a,(bc)			;0918	0a 	. 
	sub b			;0919	90 	. 
	or d			;091a	b2 	. 
	xor d			;091b	aa 	. 
	nop			;091c	00 	. 
	cpl			;091d	2f 	/ 
	add hl,sp			;091e	39 	9 
	inc c			;091f	0c 	. 
	inc de			;0920	13 	. 
	exx			;0921	d9 	. 
	ld de,06d80h		;0922	11 80 6d 	. . m 
l0925h:
	ld bc,l0f80h		;0925	01 80 0f 	. . . 
	nop			;0928	00 	. 
	ld (bc),a			;0929	02 	. 
	nop			;092a	00 	. 
	djnz l0931h		;092b	10 04 	. . 
l092dh:
	ld bc,0ff01h		;092d	01 01 ff 	. . . 
	add a,b			;0930	80 	. 
l0931h:
	nop			;0931	00 	. 
	add hl,de			;0932	19 	. 
	ex af,af'			;0933	08 	. 
	jr nz,l0936h		;0934	20 00 	  . 
l0936h:
	ld (bc),a			;0936	02 	. 
	ld (bc),a			;0937	02 	. 
	djnz l095bh		;0938	10 21 	. ! 
	jr nc,l093ch		;093a	30 00 	0 . 
l093ch:
	jr 26		;093c	18 18 	. . 
	ld (bc),a			;093e	02 	. 
	ld b,b			;093f	40 	@ 
	inc b			;0940	04 	. 
	ld b,h			;0941	44 	D 
	dec b			;0942	05 	. 
	jp pe,0e103h		;0943	ea 03 e1 	. . . 
	ld bc,l181ch		;0946	01 1c 18 	. . . 
	jr l094fh		;0949	18 04 	. . 
	call nz,06805h		;094b	c4 05 68 	. . h 
	inc bc			;094e	03 	. 
l094fh:
	pop hl			;094f	e1 	. 
	ld bc,l3315h		;0950	01 15 33 	. . 3 
	nop			;0953	00 	. 
l0954h:
	ld hl,07ea2h		;0954	21 a2 7e 	! . ~ 
	ld (hl),000h		;0957	36 00 	6 . 
	ld d,h			;0959	54 	T 
	ld e,l			;095a	5d 	] 
l095bh:
	inc de			;095b	13 	. 
	ld bc,0015eh		;095c	01 5e 01 	. ^ . 
	ldir		;095f	ed b0 	. . 
	ld (06e58h),a		;0961	32 58 6e 	2 X n 
	ei			;0964	fb 	. 
	ret			;0965	c9 	. 
l0966h:
	nop			;0966	00 	. 
	nop			;0967	00 	. 
	nop			;0968	00 	. 
	nop			;0969	00 	. 
	nop			;096a	00 	. 
	nop			;096b	00 	. 
	nop			;096c	00 	. 
	nop			;096d	00 	. 
	nop			;096e	00 	. 
	nop			;096f	00 	. 
l0970h:
	jr nc,l09a3h		;0970	30 31 	0 1 
	ld (03433h),a		;0972	32 33 34 	2 3 4 
	dec (hl)			;0975	35 	5 
	ld (hl),037h		;0976	36 37 	6 7 
	jr c,59		;0978	38 39 	8 9 
	nop			;097a	00 	. 
	inc e			;097b	1c 	. 
	inc e			;097c	1c 	. 
	inc e			;097d	1c 	. 
	inc e			;097e	1c 	. 
	inc e			;097f	1c 	. 
l0980h:
	jr l0995h		;0980	18 13 	. . 
	jr c,l09bdh		;0982	38 39 	8 9 
	dec (hl)			;0984	35 	5 
	jr nc,l09a3h		;0985	30 1c 	0 . 
	nop			;0987	00 	. 
l0988h:
	ld d,e			;0988	53 	S 
	sbc a,(hl)			;0989	9e 	. 
	inc c			;098a	0c 	. 
	ld d,d			;098b	52 	R 
	adc a,b			;098c	88 	. 
	ld a,(bc)			;098d	0a 	. 
	ld hl,l0bd2h		;098e	21 d2 0b 	! . . 
	inc e			;0991	1c 	. 
	add a,a			;0992	87 	. 
	ld a,(bc)			;0993	0a 	. 
	inc hl			;0994	23 	# 
l0995h:
	add a,a			;0995	87 	. 
	ld a,(bc)			;0996	0a 	. 
	ld e,b			;0997	58 	X 
	call nc,04509h		;0998	d4 09 45 	. . E 
	inc d			;099b	14 	. 
	ld a,(bc)			;099c	0a 	. 
	ld b,d			;099d	42 	B 
	rrca			;099e	0f 	. 
	ld a,(bc)			;099f	0a 	. 
	ld c,c			;09a0	49 	I 
	add hl,de			;09a1	19 	. 
	ld a,(bc)			;09a2	0a 	. 
l09a3h:
	ld c,h			;09a3	4c 	L 
	inc hl			;09a4	23 	# 
	dec bc			;09a5	0b 	. 
	ld b,(hl)			;09a6	46 	F 
	ccf			;09a7	3f 	? 
	dec bc			;09a8	0b 	. 
	ld c,l			;09a9	4d 	M 
	dec (hl)			;09aa	35 	5 
	ld a,(bc)			;09ab	0a 	. 
	dec a			;09ac	3d 	= 
	ld l,d			;09ad	6a 	j 
	inc c			;09ae	0c 	. 
	ld d,h			;09af	54 	T 
	rrca			;09b0	0f 	. 
	dec c			;09b1	0d 	. 
	jr nz,l09bbh		;09b2	20 07 	  . 
	inc c			;09b4	0c 	. 
	inc de			;09b5	13 	. 
	cp 00bh		;09b6	fe 0b 	. . 
	ld hl,(l0bfeh)		;09b8	2a fe 0b 	* . . 
l09bbh:
	ld b,e			;09bb	43 	C 
	inc hl			;09bc	23 	# 
l09bdh:
	inc c			;09bd	0c 	. 
	ld d,a			;09be	57 	W 
	ld l,e			;09bf	6b 	k 
	dec c			;09c0	0d 	. 
	ld e,(hl)			;09c1	5e 	^ 
	ld (hl),b			;09c2	70 	p 
	ld a,(bc)			;09c3	0a 	. 
	ld b,c			;09c4	41 	A 
	dec de			;09c5	1b 	. 
	dec bc			;09c6	0b 	. 
	ld d,(hl)			;09c7	56 	V 
	sbc a,c			;09c8	99 	. 
	inc c			;09c9	0c 	. 
	dec c			;09ca	0d 	. 
	rla			;09cb	17 	. 
	dec bc			;09cc	0b 	. 
	ld d,03ah		;09cd	16 3a 	. : 
	ld a,(bc)			;09cf	0a 	. 
	ccf			;09d0	3f 	? 
	ld l,d			;09d1	6a 	j 
	ld a,(bc)			;09d2	0a 	. 
	rst 38h			;09d3	ff 	. 
	ld hl,l0988h		;09d4	21 88 09 	! . . 
	ld (06e58h),hl		;09d7	22 58 6e 	" X n 
	ld c,0fch		;09da	0e fc 	. . 
	rst 20h			;09dc	e7 	. 
	jp l07a1h		;09dd	c3 a1 07 	. . . 
l09e0h:
	call 03fe2h		;09e0	cd e2 3f 	. . ? 
	jp z,l079ah		;09e3	ca 9a 07 	. . . 
	ld hl,l139ah		;09e6	21 9a 13 	! . . 
	ld (06d7ah),hl		;09e9	22 7a 6d 	" z m 
	push de			;09ec	d5 	. 
	ld hl,06da6h		;09ed	21 a6 6d 	! . m 
	call sub_0f2eh		;09f0	cd 2e 0f 	. . . 
	pop hl			;09f3	e1 	. 
	push hl			;09f4	e5 	. 
	ld de,09252h		;09f5	11 52 92 	. R . 
	add hl,de			;09f8	19 	. 
	ld a,l			;09f9	7d 	} 
	rrca			;09fa	0f 	. 
	or 030h		;09fb	f6 30 	. 0 
	ld c,a			;09fd	4f 	O 
	rst 18h			;09fe	df 	. 
	pop hl			;09ff	e1 	. 
	inc hl			;0a00	23 	# 
l0a01h:
	ld a,(hl)			;0a01	7e 	~ 
	and 0c0h		;0a02	e6 c0 	. . 
	jr z,l0a01h		;0a04	28 fb 	( . 
	ld de,l130ch		;0a06	11 0c 13 	. . . 
	ld (06d7ah),de		;0a09	ed 53 7a 6d 	. S z m 
	jr l0a2bh		;0a0d	18 1c 	. . 
	ld hl,06db1h		;0a0f	21 b1 6d 	! . m 
	jr l0a1ch		;0a12	18 08 	. . 
	ld hl,06dbdh		;0a14	21 bd 6d 	! . m 
	jr l0a1ch		;0a17	18 03 	. . 
	ld hl,06db5h		;0a19	21 b5 6d 	! . m 
l0a1ch:
	ld sp,06800h		;0a1c	31 00 68 	1 . h 
	ld de,l07a1h		;0a1f	11 a1 07 	. . . 
	push de			;0a22	d5 	. 
	push hl			;0a23	e5 	. 
	call l085fh		;0a24	cd 5f 08 	. _ . 
	call sub_0b1bh		;0a27	cd 1b 0b 	. . . 
	pop hl			;0a2a	e1 	. 
l0a2bh:
	ld a,080h		;0a2b	3e 80 	> . 
	call l06b0h		;0a2d	cd b0 06 	. . . 
	ld d,(hl)			;0a30	56 	V 
	dec hl			;0a31	2b 	+ 
	ld e,(hl)			;0a32	5e 	^ 
	ex de,hl			;0a33	eb 	. 
	jp (hl)			;0a34	e9 	. 
	ld hl,06db7h		;0a35	21 b7 6d 	! . m 
	jr l0a1ch		;0a38	18 e2 	. . 
	ld hl,08066h		;0a3a	21 66 80 	! f . 
	ld b,0c9h		;0a3d	06 c9 	. . 
	ld a,088h		;0a3f	3e 88 	> . 
	rst 10h			;0a41	d7 	. 
	di			;0a42	f3 	. 
	ld a,0c0h		;0a43	3e c0 	> . 
	ld (06820h),a		;0a45	32 20 68 	2   h 
	call sub_0687h		;0a48	cd 87 06 	. . . 
	ld de,0e000h		;0a4b	11 00 e0 	. . . 
	ld hl,l0fe6h		;0a4e	21 e6 0f 	! . . 
	ld bc,l0100h		;0a51	01 00 01 	. . . 
	ldir		;0a54	ed b0 	. . 
	jp 0e00dh		;0a56	c3 0d e0 	. . . 
sub_0a59h:
	di			;0a59	f3 	. 
	out (0c0h),a		;0a5a	d3 c0 	. . 
	ld a,(06da0h)		;0a5c	3a a0 6d 	: . m 
	res 3,a		;0a5f	cb 9f 	. . 
	out (0a0h),a		;0a61	d3 a0 	. . 
	ld hl,08000h		;0a63	21 00 80 	! . . 
	ld a,0c3h		;0a66	3e c3 	> . 
	cp (hl)			;0a68	be 	. 
	ret			;0a69	c9 	. 
	xor a			;0a6a	af 	. 
	call sub_0a59h		;0a6b	cd 59 0a 	. Y . 
	ret nz			;0a6e	c0 	. 
	jp (hl)			;0a6f	e9 	. 
	push iy		;0a70	fd e5 	. . 
	ld iy,(06d7eh)		;0a72	fd 2a 7e 6d 	. * ~ m 
	set 7,(iy+00bh)		;0a76	fd cb 0b fe 	. . . . 
	ld a,001h		;0a7a	3e 01 	> . 
	ld (iy+00ch),a		;0a7c	fd 77 0c 	. w . 
	ld a,(06da2h)		;0a7f	3a a2 6d 	: . m 
	ld (iy+00dh),a		;0a82	fd 77 0d 	. w . 
	pop iy		;0a85	fd e1 	. . 
	ret			;0a87	c9 	. 
	ld sp,06800h		;0a88	31 00 68 	1 . h 
	call l085fh		;0a8b	cd 5f 08 	. _ . 
	call sub_0b1bh		;0a8e	cd 1b 0b 	. . . 
	ld de,l07a1h		;0a91	11 a1 07 	. . . 
	push de			;0a94	d5 	. 
	ld a,(06d20h)		;0a95	3a 20 6d 	:   m 
	call l06b0h		;0a98	cd b0 06 	. . . 
	ld hl,(06d21h)		;0a9b	2a 21 6d 	* ! m 
	ld (06d21h),de		;0a9e	ed 53 21 6d 	. S ! m 
	jp (hl)			;0aa2	e9 	. 
l0aa3h:
	di			;0aa3	f3 	. 
	ld hl,(06e74h)		;0aa4	2a 74 6e 	* t n 
	ld (06da0h),hl		;0aa7	22 a0 6d 	" . m 
	ld a,l			;0aaa	7d 	} 
	out (0a0h),a		;0aab	d3 a0 	. . 
	ld hl,06d60h		;0aad	21 60 6d 	! ` m 
	res 6,(hl)		;0ab0	cb b6 	. . 
	dec hl			;0ab2	2b 	+ 
	dec hl			;0ab3	2b 	+ 
	res 6,(hl)		;0ab4	cb b6 	. . 
	jp l01cah		;0ab6	c3 ca 01 	. . . 
l0ab9h:
	push af			;0ab9	f5 	. 
	push hl			;0aba	e5 	. 
	push de			;0abb	d5 	. 
	push bc			;0abc	c5 	. 
	ld hl,(06da0h)		;0abd	2a a0 6d 	* . m 
	ld (06e74h),hl		;0ac0	22 74 6e 	" t n 
	jr l0adbh		;0ac3	18 16 	. . 
l0ac5h:
	call sub_0c2fh		;0ac5	cd 2f 0c 	. / . 
	ld hl,(06da0h)		;0ac8	2a a0 6d 	* . m 
	ld (06e74h),hl		;0acb	22 74 6e 	" t n 
	call sub_0fdbh		;0ace	cd db 0f 	. . . 
	cp 061h		;0ad1	fe 61 	. a 
	jr c,l0adbh		;0ad3	38 06 	8 . 
	cp 07bh		;0ad5	fe 7b 	. { 
	jr nc,l0adbh		;0ad7	30 02 	0 . 
	and 0dfh		;0ad9	e6 df 	. . 
l0adbh:
	ld c,a			;0adb	4f 	O 
	call sub_06b7h		;0adc	cd b7 06 	. . . 
	ld hl,l0aa3h		;0adf	21 a3 0a 	! . . 
	push hl			;0ae2	e5 	. 
	ld hl,(06e58h)		;0ae3	2a 58 6e 	* X n 
l0ae6h:
	ld a,(hl)			;0ae6	7e 	~ 
	inc hl			;0ae7	23 	# 
	or a			;0ae8	b7 	. 
	jr z,l0b09h		;0ae9	28 1e 	( . 
	cp c			;0aeb	b9 	. 
	jr z,l0b0fh		;0aec	28 21 	( ! 
	cp 081h		;0aee	fe 81 	. . 
	jr z,l0b0fh		;0af0	28 1d 	( . 
	inc a			;0af2	3c 	< 
	jr z,l0b02h		;0af3	28 0d 	( . 
	inc hl			;0af5	23 	# 
	inc hl			;0af6	23 	# 
	cp 081h		;0af7	fe 81 	. . 
	jr nz,l0ae6h		;0af9	20 eb 	  . 
	dec hl			;0afb	2b 	+ 
	ld a,(hl)			;0afc	7e 	~ 
	dec hl			;0afd	2b 	+ 
	ld l,(hl)			;0afe	6e 	n 
	ld h,a			;0aff	67 	g 
	jr l0ae6h		;0b00	18 e4 	. . 
l0b02h:
	ld a,c			;0b02	79 	y 
	call sub_0f0ah		;0b03	cd 0a 0f 	. . . 
	jp c,l0f1dh		;0b06	da 1d 0f 	. . . 
l0b09h:
	ld hl,l3e0fh		;0b09	21 0f 3e 	! . > 
	jp l0f42h		;0b0c	c3 42 0f 	. B . 
l0b0fh:
	ld a,(hl)			;0b0f	7e 	~ 
	inc hl			;0b10	23 	# 
	ld h,(hl)			;0b11	66 	f 
	ld l,a			;0b12	6f 	o 
	or h			;0b13	b4 	. 
	jr z,l0b09h		;0b14	28 f3 	( . 
	jp (hl)			;0b16	e9 	. 
	ld c,01ah		;0b17	0e 1a 	. . 
	rst 18h			;0b19	df 	. 
	ret			;0b1a	c9 	. 
sub_0b1bh:
	ld hl,06d6fh		;0b1b	21 6f 6d 	! o m 
	set 0,(hl)		;0b1e	cb c6 	. . 
	set 1,(hl)		;0b20	cb ce 	. . 
	ret			;0b22	c9 	. 
	di			;0b23	f3 	. 
	ld hl,(06d4ah)		;0b24	2a 4a 6d 	* J m 
	ld de,(06d48h)		;0b27	ed 5b 48 6d 	. [ H m 
	ld (06d48h),hl		;0b2b	22 48 6d 	" H m 
	ld (06d4ah),de		;0b2e	ed 53 4a 6d 	. S J m 
	ld hl,06d5fh		;0b32	21 5f 6d 	! _ m 
	ld d,(hl)			;0b35	56 	V 
	inc hl			;0b36	23 	# 
	inc hl			;0b37	23 	# 
	ld e,(hl)			;0b38	5e 	^ 
	ld (hl),d			;0b39	72 	r 
	dec hl			;0b3a	2b 	+ 
	dec hl			;0b3b	2b 	+ 
	ld (hl),e			;0b3c	73 	s 
	ei			;0b3d	fb 	. 
	ret			;0b3e	c9 	. 
	ld hl,l3d75h		;0b3f	21 75 3d 	! u = 
	call l0f42h		;0b42	cd 42 0f 	. B . 
	ld hl,06e09h		;0b45	21 09 6e 	! . n 
l0b48h:
	push hl			;0b48	e5 	. 
	call sub_0fdbh		;0b49	cd db 0f 	. . . 
	pop hl			;0b4c	e1 	. 
	ld (hl),a			;0b4d	77 	w 
	cp 00dh		;0b4e	fe 0d 	. . 
	jr z,l0b66h		;0b50	28 14 	( . 
	cp 020h		;0b52	fe 20 	.   
	jr c,l0ba5h		;0b54	38 4f 	8 O 
	inc hl			;0b56	23 	# 
	ld (hl),0a0h		;0b57	36 a0 	6 . 
	push hl			;0b59	e5 	. 
	ld hl,06e09h		;0b5a	21 09 6e 	! . n 
	call l0f42h		;0b5d	cd 42 0f 	. B . 
	pop hl			;0b60	e1 	. 
	ld a,020h		;0b61	3e 20 	>   
	cp l			;0b63	bd 	. 
	jr nz,l0b48h		;0b64	20 e2 	  . 
l0b66h:
	ld (hl),017h		;0b66	36 17 	6 . 
	call sub_0687h		;0b68	cd 87 06 	. . . 
	ld hl,l0bb3h		;0b6b	21 b3 0b 	! . . 
	ld bc,00403h		;0b6e	01 03 04 	. . . 
	otir		;0b71	ed b3 	. . 
l0b73h:
	call sub_0bbbh		;0b73	cd bb 0b 	. . . 
	cp 002h		;0b76	fe 02 	. . 
	jr nz,l0b73h		;0b78	20 f9 	  . 
	ld hl,06e09h		;0b7a	21 09 6e 	! . n 
l0b7dh:
	push hl			;0b7d	e5 	. 
	call sub_0bbbh		;0b7e	cd bb 0b 	. . . 
	pop hl			;0b81	e1 	. 
	cp (hl)			;0b82	be 	. 
	jr nz,l0b73h		;0b83	20 ee 	  . 
	cp 017h		;0b85	fe 17 	. . 
	inc hl			;0b87	23 	# 
	jr nz,l0b7dh		;0b88	20 f3 	  . 
l0b8ah:
	call sub_0bbbh		;0b8a	cd bb 0b 	. . . 
	cp 002h		;0b8d	fe 02 	. . 
	jr nz,l0b8ah		;0b8f	20 f9 	  . 
l0b91h:
	call sub_0bbbh		;0b91	cd bb 0b 	. . . 
	cp 017h		;0b94	fe 17 	. . 
	jr z,l0b8ah		;0b96	28 f2 	( . 
	cp 003h		;0b98	fe 03 	. . 
	jr z,l0ba5h		;0b9a	28 09 	( . 
	ld c,a			;0b9c	4f 	O 
	ld hl,06d49h		;0b9d	21 49 6d 	! I m 
	call l0509h		;0ba0	cd 09 05 	. . . 
	jr l0b91h		;0ba3	18 ec 	. . 
l0ba5h:
	ld hl,l0bb7h		;0ba5	21 b7 0b 	! . . 
	ld bc,00403h		;0ba8	01 03 04 	. . . 
	otir		;0bab	ed b3 	. . 
	call l0673h		;0bad	cd 73 06 	. s . 
	jp sub_0c2fh		;0bb0	c3 2f 0c 	. / . 
l0bb3h:
	inc b			;0bb3	04 	. 
	ret z			;0bb4	c8 	. 
	dec b			;0bb5	05 	. 
	ld l,b			;0bb6	68 	h 
l0bb7h:
	dec b			;0bb7	05 	. 
	jp pe,04404h		;0bb8	ea 04 44 	. . D 
sub_0bbbh:
	ld hl,0fd12h		;0bbb	21 12 fd 	! . . 
	ld (06d66h),hl		;0bbe	22 66 6d 	" f m 
l0bc1h:
	ld hl,06d53h		;0bc1	21 53 6d 	! S m 
	call l04d3h		;0bc4	cd d3 04 	. . . 
	ret nz			;0bc7	c0 	. 
	ld a,(06d67h)		;0bc8	3a 67 6d 	: g m 
	or a			;0bcb	b7 	. 
	jr nz,l0bc1h		;0bcc	20 f3 	  . 
	pop af			;0bce	f1 	. 
	jp l0ba5h		;0bcf	c3 a5 0b 	. . . 
l0bd2h:
	push iy		;0bd2	fd e5 	. . 
	push ix		;0bd4	dd e5 	. . 
	exx			;0bd6	d9 	. 
	ex af,af'			;0bd7	08 	. 
	push hl			;0bd8	e5 	. 
	push de			;0bd9	d5 	. 
	push bc			;0bda	c5 	. 
	push af			;0bdb	f5 	. 
	ld iy,(06d7eh)		;0bdc	fd 2a 7e 6d 	. * ~ m 
	ld b,(iy+000h)		;0be0	fd 46 00 	. F . 
	ld c,(iy+010h)		;0be3	fd 4e 10 	. N . 
	push bc			;0be6	c5 	. 
	ld (iy+000h),008h		;0be7	fd 36 00 08 	. 6 . . 
	set 2,(iy+010h)		;0beb	fd cb 10 d6 	. . . . 
	ld a,09fh		;0bef	3e 9f 	> . 
	call sub_2bf5h		;0bf1	cd f5 2b 	. . + 
	pop bc			;0bf4	c1 	. 
	ld (iy+010h),c		;0bf5	fd 71 10 	. q . 
	ld (iy+000h),b		;0bf8	fd 70 00 	. p . 
	jp l0e99h		;0bfb	c3 99 0e 	. . . 
l0bfeh:
	ld a,(06da0h)		;0bfe	3a a0 6d 	: . m 
	xor 020h		;0c01	ee 20 	.   
l0c03h:
	ld (06e74h),a		;0c03	32 74 6e 	2 t n 
	ret			;0c06	c9 	. 
	ld a,01fh		;0c07	3e 1f 	> . 
	ld (07020h),a		;0c09	32 20 70 	2   p 
	ld a,0c0h		;0c0c	3e c0 	> . 
	ld (06820h),a		;0c0e	32 20 68 	2   h 
	ld a,024h		;0c11	3e 24 	> $ 
	out (0a0h),a		;0c13	d3 a0 	. . 
	call sub_0fdbh		;0c15	cd db 0f 	. . . 
	ld a,(06da0h)		;0c18	3a a0 6d 	: . m 
	out (0a0h),a		;0c1b	d3 a0 	. . 
	ld a,080h		;0c1d	3e 80 	> . 
	ld (06820h),a		;0c1f	32 20 68 	2   h 
	ret			;0c22	c9 	. 
	ld hl,l3d84h		;0c23	21 84 3d 	! . = 
	call l0f42h		;0c26	cd 42 0f 	. B . 
	call sub_0fdbh		;0c29	cd db 0f 	. . . 
	ld (072c0h),a		;0c2c	32 c0 72 	2 . r 
sub_0c2fh:
	ld a,0ddh		;0c2f	3e dd 	> . 
	ld (068bch),a		;0c31	32 bc 68 	2 . h 
	ret			;0c34	c9 	. 
sub_0c35h:
	and 00fh		;0c35	e6 0f 	. . 
	add a,a			;0c37	87 	. 
	ld b,000h		;0c38	06 00 	. . 
	ld c,a			;0c3a	4f 	O 
	sub 00dh		;0c3b	d6 0d 	. . 
	jr nc,sub_0c2fh		;0c3d	30 f0 	0 . 
	ld hl,l0c5ch		;0c3f	21 5c 0c 	! \ . 
	add hl,bc			;0c42	09 	. 
	di			;0c43	f3 	. 
	ld a,(06da0h)		;0c44	3a a0 6d 	: . m 
	and 0adh		;0c47	e6 ad 	. . 
	or (hl)			;0c49	b6 	. 
	ld (06da0h),a		;0c4a	32 a0 6d 	2 . m 
	ld (06e74h),a		;0c4d	32 74 6e 	2 t n 
	out (0a0h),a		;0c50	d3 a0 	. . 
	inc hl			;0c52	23 	# 
	ld a,004h		;0c53	3e 04 	> . 
	out (001h),a		;0c55	d3 01 	. . 
	ld a,(hl)			;0c57	7e 	~ 
	out (001h),a		;0c58	d3 01 	. . 
	ei			;0c5a	fb 	. 
	ret			;0c5b	c9 	. 
l0c5ch:
	ld b,b			;0c5c	40 	@ 
	call nz,0c440h		;0c5d	c4 40 c4 	. @ . 
	ld b,b			;0c60	40 	@ 
	call nz,04442h		;0c61	c4 42 44 	. B D 
	ld d,d			;0c64	52 	R 
	call nz,08452h		;0c65	c4 52 84 	. R . 
	djnz 70		;0c68	10 44 	. D 
	call sub_06aeh		;0c6a	cd ae 06 	. . . 
	xor a			;0c6d	af 	. 
	ld (083ffh),a		;0c6e	32 ff 83 	2 . . 
	rst 0			;0c71	c7 	. 
sub_0c72h:
	ld hl,0785ch		;0c72	21 5c 78 	! \ x 
	jr l0c7fh		;0c75	18 08 	. . 
sub_0c77h:
	ld hl,071a1h		;0c77	21 a1 71 	! . q 
	res 6,(hl)		;0c7a	cb b6 	. . 
	ld hl,0787ch		;0c7c	21 7c 78 	! | x 
l0c7fh:
	ld a,(hl)			;0c7f	7e 	~ 
	xor 007h		;0c80	ee 07 	. . 
	ld (hl),a			;0c82	77 	w 
	ret			;0c83	c9 	. 
sub_0c84h:
	ld hl,0781ch		;0c84	21 1c 78 	! . x 
	jr l0c7fh		;0c87	18 f6 	. . 
sub_0c89h:
	ld hl,l0218h		;0c89	21 18 02 	! . . 
	ld de,l00b0h		;0c8c	11 b0 00 	. . . 
	ld (07160h),hl		;0c8f	22 60 71 	" ` q 
	ld (07200h),de		;0c92	ed 53 00 72 	. S . r 
	jp l0898h		;0c96	c3 98 08 	. . . 
	ld hl,l0100h		;0c99	21 00 01 	! . . 
	jr l0ca1h		;0c9c	18 03 	. . 
	ld hl,l0000h		;0c9e	21 00 00 	! . . 
l0ca1h:
	ld (071a0h),hl		;0ca1	22 a0 71 	" . q 
	xor a			;0ca4	af 	. 
	ld (07120h),a		;0ca5	32 20 71 	2   q 
	call sub_0c89h		;0ca8	cd 89 0c 	. . . 
	xor a			;0cab	af 	. 
	ld (072a0h),a		;0cac	32 a0 72 	2 . r 
	ld a,(072c0h)		;0caf	3a c0 72 	: . r 
	ld hl,l03efh		;0cb2	21 ef 03 	! . . 
	and 00fh		;0cb5	e6 0f 	. . 
	jr nz,l0cbch		;0cb7	20 03 	  . 
	ld (07160h),hl		;0cb9	22 60 71 	" ` q 
l0cbch:
	call sub_0c35h		;0cbc	cd 35 0c 	. 5 . 
	ld c,0f5h		;0cbf	0e f5 	. . 
	rst 20h			;0cc1	e7 	. 
	ld a,(072c0h)		;0cc2	3a c0 72 	: . r 
	ld hl,l0d46h		;0cc5	21 46 0d 	! F . 
l0cc8h:
	cp (hl)			;0cc8	be 	. 
	jr z,l0cd2h		;0cc9	28 07 	( . 
	inc hl			;0ccb	23 	# 
	ld b,(hl)			;0ccc	46 	F 
	djnz l0cc8h		;0ccd	10 f9 	. . 
	jp l0b09h		;0ccf	c3 09 0b 	. . . 
l0cd2h:
	ex de,hl			;0cd2	eb 	. 
l0cd3h:
	ld hl,l0003h+2		;0cd3	21 05 00 	! . . 
	call l068ah		;0cd6	cd 8a 06 	. . . 
	ld a,(de)			;0cd9	1a 	. 
	bit 6,a		;0cda	cb 77 	. w 
	jr z,l0cebh		;0cdc	28 0d 	( . 
	ld c,a			;0cde	4f 	O 
	bit 2,a		;0cdf	cb 57 	. W 
	jr nz,9		;0ce1	20 07 	  . 
	call sub_0d61h		;0ce3	cd 61 0d 	. a . 
	ld (072a1h),a		;0ce6	32 a1 72 	2 . r 
	ld a,0e7h		;0ce9	3e e7 	> . 
l0cebh:
	inc de			;0ceb	13 	. 
	ld a,(de)			;0cec	1a 	. 
	or a			;0ced	b7 	. 
	jr nz,l0cd3h		;0cee	20 e3 	  . 
l0cf0h:
	ld a,010h		;0cf0	3e 10 	> . 
	out (001h),a		;0cf2	d3 01 	. . 
	in a,(001h)		;0cf4	db 01 	. . 
	bit 3,a		;0cf6	cb 5f 	. _ 
	jr z,l0cf0h		;0cf8	28 f6 	( . 
	call sub_0d13h		;0cfa	cd 13 0d 	. . . 
l0cfdh:
	call 03fe2h		;0cfd	cd e2 3f 	. . ? 
	jr z,sub_0d13h		;0d00	28 11 	( . 
	ld a,(07161h)		;0d02	3a 61 71 	: a q 
	cp 003h		;0d05	fe 03 	. . 
	jr c,sub_0d13h		;0d07	38 0a 	8 . 
	in a,(002h)		;0d09	db 02 	. . 
	cp 004h		;0d0b	fe 04 	. . 
	jr nz,l0cfdh		;0d0d	20 ee 	  . 
sub_0d0fh:
	di			;0d0f	f3 	. 
	call l0085h		;0d10	cd 85 00 	. . . 
sub_0d13h:
	ei			;0d13	fb 	. 
sub_0d14h:
	ld hl,0781ch		;0d14	21 1c 78 	! . x 
	ld de,l0020h		;0d17	11 20 00 	.   . 
	ld (hl),029h		;0d1a	36 29 	6 ) 
	ld a,(072a0h)		;0d1c	3a a0 72 	: . r 
	or a			;0d1f	b7 	. 
	ld b,020h		;0d20	06 20 	.   
	jr z,l0d26h		;0d22	28 02 	( . 
	ld b,02dh		;0d24	06 2d 	. - 
l0d26h:
	in a,(001h)		;0d26	db 01 	. . 
	bit 3,a		;0d28	cb 5f 	. _ 
	jr z,l0d30h		;0d2a	28 04 	( . 
	ld a,02ah		;0d2c	3e 2a 	> * 
	or b			;0d2e	b0 	. 
	ld b,a			;0d2f	47 	G 
l0d30h:
	ld c,02bh		;0d30	0e 2b 	. + 
	ld a,02dh		;0d32	3e 2d 	> - 
	bit 3,b		;0d34	cb 58 	. X 
	jr nz,l0d3ch		;0d36	20 04 	  . 
	ld b,028h		;0d38	06 28 	. ( 
	ld c,b			;0d3a	48 	H 
	ld a,b			;0d3b	78 	x 
l0d3ch:
	add hl,de			;0d3c	19 	. 
	ld (hl),b			;0d3d	70 	p 
	add hl,de			;0d3e	19 	. 
	ld (hl),c			;0d3f	71 	q 
	add hl,de			;0d40	19 	. 
	ld (hl),a			;0d41	77 	w 
	add hl,de			;0d42	19 	. 
	ld (hl),028h		;0d43	36 28 	6 ( 
	ret			;0d45	c9 	. 
l0d46h:
	jr nc,106		;0d46	30 68 	0 h 
	ret pe			;0d48	e8 	. 
	nop			;0d49	00 	. 
	ld sp,0f878h		;0d4a	31 78 f8 	1 x . 
	ret pe			;0d4d	e8 	. 
	nop			;0d4e	00 	. 
	ld (03433h),a		;0d4f	32 33 34 	2 3 4 
	dec (hl)			;0d52	35 	5 
	ld l,d			;0d53	6a 	j 
	jp pe,l2000h		;0d54	ea 00 20 	. .   
	ld l,b			;0d57	68 	h 
	or 000h		;0d58	f6 00 	. . 
	ld bc,0f3f5h		;0d5a	01 f5 f3 	. . . 
	ld a,003h		;0d5d	3e 03 	> . 
	jr l0d65h		;0d5f	18 04 	. . 
sub_0d61h:
	push af			;0d61	f5 	. 
	di			;0d62	f3 	. 
	ld a,005h		;0d63	3e 05 	> . 
l0d65h:
	out (001h),a		;0d65	d3 01 	. . 
	pop af			;0d67	f1 	. 
	out (001h),a		;0d68	d3 01 	. . 
	ret			;0d6a	c9 	. 
l0d6bh:
	call sub_30f5h		;0d6b	cd f5 30 	. . 0 
	xor a			;0d6e	af 	. 
	ld (06d5bh),a		;0d6f	32 5b 6d 	2 [ m 
	ld de,06df2h		;0d72	11 f2 6d 	. . m 
	ld hl,06d5eh		;0d75	21 5e 6d 	! ^ m 
	bit 5,(hl)		;0d78	cb 6e 	. n 
	jr z,l0d81h		;0d7a	28 05 	( . 
	res 5,(hl)		;0d7c	cb ae 	. . 
	jp l0db4h		;0d7e	c3 b4 0d 	. . . 
l0d81h:
	set 5,(hl)		;0d81	cb ee 	. . 
	ld a,081h		;0d83	3e 81 	> . 
	ld (de),a			;0d85	12 	. 
	call sub_0db7h		;0d86	cd b7 0d 	. . . 
l0d89h:
	in a,(002h)		;0d89	db 02 	. . 
	cp 004h		;0d8b	fe 04 	. . 
	jr nz,l0d89h		;0d8d	20 fa 	  . 
	call sub_0fdbh		;0d8f	cd db 0f 	. . . 
	and 0dfh		;0d92	e6 df 	. . 
	cp 057h		;0d94	fe 57 	. W 
	jr nz,l0d89h		;0d96	20 f1 	  . 
	jr l0d6bh		;0d98	18 d1 	. . 
l0d9ah:
	ld hl,06d5eh		;0d9a	21 5e 6d 	! ^ m 
	inc (hl)			;0d9d	34 	4 
	ld a,(06da1h)		;0d9e	3a a1 6d 	: . m 
	push af			;0da1	f5 	. 
	xor a			;0da2	af 	. 
	ld (06d5bh),a		;0da3	32 5b 6d 	2 [ m 
	call sub_0db1h		;0da6	cd b1 0d 	. . . 
	ld hl,06d5eh		;0da9	21 5e 6d 	! ^ m 
	dec (hl)			;0dac	35 	5 
	pop af			;0dad	f1 	. 
	jp l06b0h		;0dae	c3 b0 06 	. . . 
sub_0db1h:
	ld de,06e39h		;0db1	11 39 6e 	. 9 n 
l0db4h:
	ld a,041h		;0db4	3e 41 	> A 
	ld (de),a			;0db6	12 	. 
sub_0db7h:
	ld (06e72h),de		;0db7	ed 53 72 6e 	. S r n 
	push iy		;0dbb	fd e5 	. . 
	ld iy,(06d7eh)		;0dbd	fd 2a 7e 6d 	. * ~ m 
	push ix		;0dc1	dd e5 	. . 
	ld hl,l0925h+1		;0dc3	21 26 09 	! & . 
	inc de			;0dc6	13 	. 
	ld bc,l0016h		;0dc7	01 16 00 	. . . 
	ldir		;0dca	ed b0 	. . 
	exx			;0dcc	d9 	. 
	ex af,af'			;0dcd	08 	. 
	push hl			;0dce	e5 	. 
	push de			;0dcf	d5 	. 
	push bc			;0dd0	c5 	. 
	push af			;0dd1	f5 	. 
	ld a,(06e21h)		;0dd2	3a 21 6e 	: ! n 
	ld l,a			;0dd5	6f 	o 
	ld a,(06e71h)		;0dd6	3a 71 6e 	: q n 
	ld h,a			;0dd9	67 	g 
	push hl			;0dda	e5 	. 
	ld a,(06d72h)		;0ddb	3a 72 6d 	: r m 
	push af			;0dde	f5 	. 
	ld hl,l0000h		;0ddf	21 00 00 	! . . 
	bit 0,(iy+010h)		;0de2	fd cb 10 46 	. . . F 
	jr z,l0dffh		;0de6	28 17 	( . 
	ld l,(iy+004h)		;0de8	fd 6e 04 	. n . 
	ld h,(iy+005h)		;0deb	fd 66 05 	. f . 
	ld a,070h		;0dee	3e 70 	> p 
	add a,h			;0df0	84 	. 
	ld h,a			;0df1	67 	g 
	ld (06e51h),hl		;0df2	22 51 6e 	" Q n 
	ld a,(hl)			;0df5	7e 	~ 
	ld (06e50h),a		;0df6	32 50 6e 	2 P n 
	ld l,(iy+006h)		;0df9	fd 6e 06 	. n . 
	ld h,(iy+007h)		;0dfc	fd 66 07 	. f . 
l0dffh:
	ld e,(iy+00ch)		;0dff	fd 5e 0c 	. ^ . 
	ld d,(iy+00dh)		;0e02	fd 56 0d 	. V . 
	ld iy,(06e72h)		;0e05	fd 2a 72 6e 	. * r n 
	ld (iy+00dh),d		;0e09	fd 72 0d 	. r . 
	ld (iy+00ch),e		;0e0c	fd 73 0c 	. s . 
	res 7,(iy+00bh)		;0e0f	fd cb 0b be 	. . . . 
	push hl			;0e13	e5 	. 
	ld a,(06d5bh)		;0e14	3a 5b 6d 	: [ m 
	ld l,a			;0e17	6f 	o 
	call sub_1364h		;0e18	cd 64 13 	. d . 
	pop hl			;0e1b	e1 	. 
	ld de,(06d4ah)		;0e1c	ed 5b 4a 6d 	. [ J m 
l0e20h:
	push hl			;0e20	e5 	. 
	push de			;0e21	d5 	. 
	call sub_0ed1h		;0e22	cd d1 0e 	. . . 
	pop de			;0e25	d1 	. 
	pop hl			;0e26	e1 	. 
	ld a,l			;0e27	7d 	} 
	or a			;0e28	b7 	. 
	jr z,l0e4dh		;0e29	28 22 	( " 
	ld a,(iy+006h)		;0e2b	fd 7e 06 	. ~ . 
	cp l			;0e2e	bd 	. 
	jr nz,l0e4dh		;0e2f	20 1c 	  . 
	ld a,(iy+007h)		;0e31	fd 7e 07 	. ~ . 
	cp h			;0e34	bc 	. 
	jr c,l0e4dh		;0e35	38 16 	8 . 
	ld a,(06e50h)		;0e37	3a 50 6e 	: P n 
	ld hl,(06e51h)		;0e3a	2a 51 6e 	* Q n 
	push hl			;0e3d	e5 	. 
	cp (hl)			;0e3e	be 	. 
	call z,sub_1f66h		;0e3f	cc 66 1f 	. f . 
	push de			;0e42	d5 	. 
	call sub_0ed1h		;0e43	cd d1 0e 	. . . 
	pop de			;0e46	d1 	. 
	pop hl			;0e47	e1 	. 
	call sub_1f66h		;0e48	cd 66 1f 	. f . 
	ld l,000h		;0e4b	2e 00 	. . 
l0e4dh:
	ld a,(06d5bh)		;0e4d	3a 5b 6d 	: [ m 
	or a			;0e50	b7 	. 
	jr nz,l0e5fh		;0e51	20 0c 	  . 
	ld a,(iy+007h)		;0e53	fd 7e 07 	. ~ . 
	cp 004h		;0e56	fe 04 	. . 
	jr nz,l0e20h		;0e58	20 c6 	  . 
	ld a,(iy+008h)		;0e5a	fd 7e 08 	. ~ . 
	jr l0e83h		;0e5d	18 24 	. $ 
l0e5fh:
	ld bc,(06d50h)		;0e5f	ed 4b 50 6d 	. K P m 
	call sub_06aah		;0e63	cd aa 06 	. . . 
	ld a,(bc)			;0e66	0a 	. 
	or a			;0e67	b7 	. 
	jr nz,l0e8ch		;0e68	20 22 	  " 
	ld bc,(06d4ah)		;0e6a	ed 4b 4a 6d 	. K J m 
	ld a,c			;0e6e	79 	y 
	cp e			;0e6f	bb 	. 
	jr nz,l0e8ch		;0e70	20 1a 	  . 
	ld a,b			;0e72	78 	x 
	cp d			;0e73	ba 	. 
	jr nz,l0e8ch		;0e74	20 16 	  . 
	ld a,(iy+007h)		;0e76	fd 7e 07 	. ~ . 
	cp 004h		;0e79	fe 04 	. . 
	jr nz,l0e20h		;0e7b	20 a3 	  . 
	ld a,(iy+008h)		;0e7d	fd 7e 08 	. ~ . 
	ld (06d5bh),a		;0e80	32 5b 6d 	2 [ m 
l0e83h:
	cp 001h		;0e83	fe 01 	. . 
	jr nz,l0e20h		;0e85	20 99 	  . 
	ld a,07fh		;0e87	3e 7f 	>  
	ld (06d5bh),a		;0e89	32 5b 6d 	2 [ m 
l0e8ch:
	pop af			;0e8c	f1 	. 
	ld (06d72h),a		;0e8d	32 72 6d 	2 r m 
	pop hl			;0e90	e1 	. 
	ld a,h			;0e91	7c 	| 
	ld (06e71h),a		;0e92	32 71 6e 	2 q n 
	ld a,l			;0e95	7d 	} 
	ld (06e21h),a		;0e96	32 21 6e 	2 ! n 
l0e99h:
	pop af			;0e99	f1 	. 
	pop bc			;0e9a	c1 	. 
	pop de			;0e9b	d1 	. 
	pop hl			;0e9c	e1 	. 
	ex af,af'			;0e9d	08 	. 
	exx			;0e9e	d9 	. 
	pop ix		;0e9f	dd e1 	. . 
	pop iy		;0ea1	fd e1 	. . 
	ret			;0ea3	c9 	. 
l0ea4h:
	ld de,06e39h		;0ea4	11 39 6e 	. 9 n 
	ld a,041h		;0ea7	3e 41 	> A 
	ld (de),a			;0ea9	12 	. 
	call sub_1f5bh		;0eaa	cd 5b 1f 	. [ . 
	push iy		;0ead	fd e5 	. . 
	ld hl,l0925h+1		;0eaf	21 26 09 	! & . 
	inc de			;0eb2	13 	. 
	ld bc,l0016h		;0eb3	01 16 00 	. . . 
	ldir		;0eb6	ed b0 	. . 
	ld l,(iy+008h)		;0eb8	fd 6e 08 	. n . 
	ld iy,06e39h		;0ebb	fd 21 39 6e 	. ! 9 n 
	call sub_1364h		;0ebf	cd 64 13 	. d . 
l0ec2h:
	call sub_0ee1h		;0ec2	cd e1 0e 	. . . 
	ld a,(iy+007h)		;0ec5	fd 7e 07 	. ~ . 
	cp 004h		;0ec8	fe 04 	. . 
	jr nz,l0ec2h		;0eca	20 f6 	  . 
	pop iy		;0ecc	fd e1 	. . 
	jp sub_1f5bh		;0ece	c3 5b 1f 	. [ . 
sub_0ed1h:
	ld a,078h		;0ed1	3e 78 	> x 
	call sub_2702h		;0ed3	cd 02 27 	. . ' 
	bit 7,(hl)		;0ed6	cb 7e 	. ~ 
	jr z,sub_0ee1h		;0ed8	28 07 	( . 
	res 4,h		;0eda	cb a4 	. . 
	bit 0,(hl)		;0edc	cb 46 	. F 
	jp z,l1da9h		;0ede	ca a9 1d 	. . . 
sub_0ee1h:
	call sub_06aah		;0ee1	cd aa 06 	. . . 
	ld a,0c3h		;0ee4	3e c3 	> . 
	call sub_2702h		;0ee6	cd 02 27 	. . ' 
	ld a,(hl)			;0ee9	7e 	~ 
	ld e,a			;0eea	5f 	_ 
	and 07fh		;0eeb	e6 7f 	.  
	jp z,l2098h		;0eed	ca 98 20 	. .   
	ld c,a			;0ef0	4f 	O 
	ld a,h			;0ef1	7c 	| 
	sub 005h		;0ef2	d6 05 	. . 
	ld h,a			;0ef4	67 	g 
	ld b,(hl)			;0ef5	46 	F 
	ld a,b			;0ef6	78 	x 
	and 00fh		;0ef7	e6 0f 	. . 
	jr z,l0f06h		;0ef9	28 0b 	( . 
	or 040h		;0efb	f6 40 	. @ 
	ld b,020h		;0efd	06 20 	.   
	push bc			;0eff	c5 	. 
	call sub_208ah		;0f00	cd 8a 20 	. .   
	pop bc			;0f03	c1 	. 
	ld b,000h		;0f04	06 00 	. . 
l0f06h:
	ld a,c			;0f06	79 	y 
	jp sub_208ah		;0f07	c3 8a 20 	. .   
sub_0f0ah:
	sub 030h		;0f0a	d6 30 	. 0 
	ccf			;0f0c	3f 	? 
	ret nc			;0f0d	d0 	. 
	cp 00ah		;0f0e	fe 0a 	. . 
	ret			;0f10	c9 	. 
sub_0f11h:
	ld h,000h		;0f11	26 00 	& . 
	add hl,hl			;0f13	29 	) 
	add hl,hl			;0f14	29 	) 
	ld d,h			;0f15	54 	T 
	ld e,l			;0f16	5d 	] 
	add hl,hl			;0f17	29 	) 
	add hl,hl			;0f18	29 	) 
	add hl,de			;0f19	19 	. 
	jp l06a6h		;0f1a	c3 a6 06 	. . . 
l0f1dh:
	ld hl,06d5ah		;0f1d	21 5a 6d 	! Z m 
	res 0,(hl)		;0f20	cb 86 	. . 
l0f22h:
	ld l,a			;0f22	6f 	o 
	call 03fe2h		;0f23	cd e2 3f 	. . ? 
	ret z			;0f26	c8 	. 
	call sub_0f11h		;0f27	cd 11 0f 	. . . 
	ld de,08000h		;0f2a	11 00 80 	. . . 
	add hl,de			;0f2d	19 	. 
sub_0f2eh:
	ld a,(hl)			;0f2e	7e 	~ 
	or a			;0f2f	b7 	. 
	ret z			;0f30	c8 	. 
	ld c,01ch		;0f31	0e 1c 	. . 
	cp 023h		;0f33	fe 23 	. # 
	jr z,l0f3eh		;0f35	28 07 	( . 
	ld c,013h		;0f37	0e 13 	. . 
	cp 02ah		;0f39	fe 2a 	. * 
	jr z,l0f3eh		;0f3b	28 01 	( . 
	ld c,a			;0f3d	4f 	O 
l0f3eh:
	rst 18h			;0f3e	df 	. 
	inc hl			;0f3f	23 	# 
	jr sub_0f2eh		;0f40	18 ec 	. . 
l0f42h:
	push bc			;0f42	c5 	. 
	push de			;0f43	d5 	. 
	push iy		;0f44	fd e5 	. . 
	ld a,(06d5bh)		;0f46	3a 5b 6d 	: [ m 
	push af			;0f49	f5 	. 
	ld de,(06da0h)		;0f4a	ed 5b a0 6d 	. [ . m 
	push de			;0f4e	d5 	. 
	push hl			;0f4f	e5 	. 
	ld de,06df2h		;0f50	11 f2 6d 	. . m 
	or a			;0f53	b7 	. 
	push iy		;0f54	fd e5 	. . 
	pop hl			;0f56	e1 	. 
	sbc hl,de		;0f57	ed 52 	. R 
	jr z,l0f95h		;0f59	28 3a 	( : 
	push de			;0f5b	d5 	. 
	pop iy		;0f5c	fd e1 	. . 
	ld hl,l0925h		;0f5e	21 25 09 	! % . 
	ld bc,l0017h		;0f61	01 17 00 	. . . 
	ldir		;0f64	ed b0 	. . 
	ld (iy+000h),002h		;0f66	fd 36 00 02 	. 6 . . 
	ld (iy+010h),006h		;0f6a	fd 36 10 06 	. 6 . . 
	ld (iy+003h),008h		;0f6e	fd 36 03 08 	. 6 . . 
	ld hl,l00dch		;0f72	21 dc 00 	! . . 
	ld (06df6h),hl		;0f75	22 f6 6d 	" . m 
	ld hl,l1c00h		;0f78	21 00 1c 	! . . 
	ld (06df8h),hl		;0f7b	22 f8 6d 	" . m 
	ld a,0e5h		;0f7e	3e e5 	> . 
l0f80h:
	ld (06dfch),a		;0f80	32 fc 6d 	2 . m 
	call sub_06b7h		;0f83	cd b7 06 	. . . 
	ld hl,0a400h		;0f86	21 00 a4 	! . . 
	ld b,009h		;0f89	06 09 	. . 
l0f8bh:
	ld c,l			;0f8b	4d 	M 
	inc c			;0f8c	0c 	. 
	set 0,c		;0f8d	cb c1 	. . 
	ld (hl),c			;0f8f	71 	q 
	inc hl			;0f90	23 	# 
	djnz l0f8bh		;0f91	10 f8 	. . 
	ld (hl),000h		;0f93	36 00 	6 . 
l0f95h:
	ld hl,06d5eh		;0f95	21 5e 6d 	! ^ m 
	inc (hl)			;0f98	34 	4 
	pop hl			;0f99	e1 	. 
	ld a,(06d6ch)		;0f9a	3a 6c 6d 	: l m 
	call l06b0h		;0f9d	cd b0 06 	. . . 
l0fa0h:
	ld c,(hl)			;0fa0	4e 	N 
	ld a,c			;0fa1	79 	y 
	cp 009h		;0fa2	fe 09 	. . 
	jr z,l0faah		;0fa4	28 04 	( . 
	cp 014h		;0fa6	fe 14 	. . 
	jr c,l0fbdh		;0fa8	38 13 	8 . 
l0faah:
	call l064dh		;0faa	cd 4d 06 	. M . 
	ld a,(hl)			;0fad	7e 	~ 
	inc hl			;0fae	23 	# 
	cp 0a0h		;0faf	fe a0 	. . 
	jr nz,l0fa0h		;0fb1	20 ed 	  . 
	ld c,008h		;0fb3	0e 08 	. . 
	call l064dh		;0fb5	cd 4d 06 	. M . 
	ld c,018h		;0fb8	0e 18 	. . 
	call l064dh		;0fba	cd 4d 06 	. M . 
l0fbdh:
	ld a,080h		;0fbd	3e 80 	> . 
	ld (068bch),a		;0fbf	32 bc 68 	2 . h 
	pop hl			;0fc2	e1 	. 
	ld a,l			;0fc3	7d 	} 
	di			;0fc4	f3 	. 
	ld (06da0h),hl		;0fc5	22 a0 6d 	" . m 
	out (0a0h),a		;0fc8	d3 a0 	. . 
	ld a,h			;0fca	7c 	| 
	out (0c0h),a		;0fcb	d3 c0 	. . 
	pop af			;0fcd	f1 	. 
	ld (06d5bh),a		;0fce	32 5b 6d 	2 [ m 
	ld hl,06d5eh		;0fd1	21 5e 6d 	! ^ m 
	dec (hl)			;0fd4	35 	5 
	pop iy		;0fd5	fd e1 	. . 
	pop de			;0fd7	d1 	. 
	pop bc			;0fd8	c1 	. 
	ei			;0fd9	fb 	. 
	ret			;0fda	c9 	. 
sub_0fdbh:
	ld a,(06d61h)		;0fdb	3a 61 6d 	: a m 
	cp 060h		;0fde	fe 60 	. ` 
l0fe0h:
	jp z,l0030h		;0fe0	ca 30 00 	. 0 . 
	jp l0028h		;0fe3	c3 28 00 	. ( . 
l0fe6h:
	jr l0fe9h		;0fe6	18 01 	. . 
	nop			;0fe8	00 	. 
l0fe9h:
	dec b			;0fe9	05 	. 
	ld l,b			;0fea	68 	h 
	inc bc			;0feb	03 	. 
	pop de			;0fec	d1 	. 
	ld b,049h		;0fed	06 49 	. I 
	rlca			;0fef	07 	. 
	nop			;0ff0	00 	. 
	inc b			;0ff1	04 	. 
	djnz l1032h		;0ff2	10 3e 	. > 
	sbc a,h			;0ff4	9c 	. 
	out (0a0h),a		;0ff5	d3 a0 	. . 
	ld b,050h		;0ff7	06 50 	. P 
l0ff9h:
	exx			;0ff9	d9 	. 
	ld d,075h		;0ffa	16 75 	. u 
l0ffch:
	ld e,0eah		;0ffc	1e ea 	. . 
	ld ix,0e02dh		;0ffe	dd 21 2d e0 	. ! - . 
l1002h:
	ld a,005h		;1002	3e 05 	> . 
	out (003h),a		;1004	d3 03 	. . 
	ld a,e			;1006	7b 	{ 
	out (003h),a		;1007	d3 03 	. . 
	ld hl,0e000h		;1009	21 00 e0 	! . . 
	ld bc,00d01h		;100c	01 01 0d 	. . . 
	otir		;100f	ed b3 	. . 
	jp (ix)		;1011	dd e9 	. . 
	ld c,d			;1013	4a 	J 
	xor a			;1014	af 	. 
	out (000h),a		;1015	d3 00 	. . 
	ld b,064h		;1017	06 64 	. d 
l1019h:
	in a,(001h)		;1019	db 01 	. . 
	bit 2,a		;101b	cb 57 	. W 
	jr z,l1019h		;101d	28 fa 	( . 
	ld a,c			;101f	79 	y 
	out (000h),a		;1020	d3 00 	. . 
	ld c,0ffh		;1022	0e ff 	. . 
	djnz l1019h		;1024	10 f3 	. . 
	ld e,0e8h		;1026	1e e8 	. . 
	ld ix,0e048h		;1028	dd 21 48 e0 	. ! H . 
	jr l1002h		;102c	18 d4 	. . 
	bit 2,d		;102e	cb 52 	. R 
	res 2,d		;1030	cb 92 	. . 
l1032h:
	jr nz,l0ffch		;1032	20 c8 	  . 
	exx			;1034	d9 	. 
	djnz l0ff9h		;1035	10 c2 	. . 
	ld b,001h		;1037	06 01 	. . 
	exx			;1039	d9 	. 
	ld hl,0e071h		;103a	21 71 e0 	! q . 
l103dh:
	ld b,002h		;103d	06 02 	. . 
l103fh:
	ld c,a			;103f	4f 	O 
l1040h:
	in a,(001h)		;1040	db 01 	. . 
	rrca			;1042	0f 	. 
	jr nc,l1040h		;1043	30 fb 	0 . 
	in a,(000h)		;1045	db 00 	. . 
	djnz l103fh		;1047	10 f6 	. . 
	rlca			;1049	07 	. 
	or c			;104a	b1 	. 
	ld (hl),a			;104b	77 	w 
	inc hl			;104c	23 	# 
	bit 4,h		;104d	cb 64 	. d 
	jr z,l103dh		;104f	28 ec 	( . 
	ld a,(0e071h)		;1051	3a 71 e0 	: q . 
	or a			;1054	b7 	. 
	jr nz,l0ff9h		;1055	20 a2 	  . 
sub_1057h:
	ld b,070h		;1057	06 70 	. p 
	call sub_1073h		;1059	cd 73 10 	. s . 
	ld b,018h		;105c	06 18 	. . 
	ld hl,07d02h		;105e	21 02 7d 	! . } 
l1061h:
	ld (hl),0a0h		;1061	36 a0 	6 . 
	push hl			;1063	e5 	. 
	ld h,075h		;1064	26 75 	& u 
	ld (hl),a			;1066	77 	w 
	pop hl			;1067	e1 	. 
	inc hl			;1068	23 	# 
	djnz l1061h		;1069	10 f6 	. . 
	ld hl,0751ch		;106b	21 1c 75 	! . u 
	ld (hl),a			;106e	77 	w 
	ld b,078h		;106f	06 78 	. x 
	ld a,0a0h		;1071	3e a0 	> . 
sub_1073h:
	ld hl,l107eh		;1073	21 7e 10 	! ~ . 
l1076h:
	ld c,(hl)			;1076	4e 	N 
	inc c			;1077	0c 	. 
	ret z			;1078	c8 	. 
	dec c			;1079	0d 	. 
	ld (bc),a			;107a	02 	. 
	inc hl			;107b	23 	# 
	jr l1076h		;107c	18 f8 	. . 
l107eh:
	nop			;107e	00 	. 
	ld bc,l211eh+2		;107f	01 20 21 	.   ! 
	ld b,b			;1082	40 	@ 
	dec de			;1083	1b 	. 
	dec sp			;1084	3b 	; 
	ld e,e			;1085	5b 	[ 
	inc e			;1086	1c 	. 
	inc a			;1087	3c 	< 
	ld e,h			;1088	5c 	\ 
	ld a,h			;1089	7c 	| 
	sbc a,h			;108a	9c 	. 
	cp h			;108b	bc 	. 
	dec e			;108c	1d 	. 
	dec a			;108d	3d 	= 
	rst 38h			;108e	ff 	. 
sub_108fh:
	call sub_1057h		;108f	cd 57 10 	. W . 
	jp sub_0d14h		;1092	c3 14 0d 	. . . 
sub_1095h:
	ld a,0c0h		;1095	3e c0 	> . 
	ld (06820h),a		;1097	32 20 68 	2   h 
	call sub_06aeh		;109a	cd ae 06 	. . . 
	ld hl,08410h		;109d	21 10 84 	! . . 
	ld de,l0100h		;10a0	11 00 01 	. . . 
	ld bc,l00f0h		;10a3	01 f0 00 	. . . 
	ld (hl),b			;10a6	70 	p 
	ld a,07ch		;10a7	3e 7c 	> | 
	call sub_10b5h		;10a9	cd b5 10 	. . . 
	call sub_06b7h		;10ac	cd b7 06 	. . . 
	ld hl,08010h		;10af	21 10 80 	! . . 
	ld (hl),b			;10b2	70 	p 
	ld a,024h		;10b3	3e 24 	> $ 
sub_10b5h:
	push bc			;10b5	c5 	. 
	push hl			;10b6	e5 	. 
	push de			;10b7	d5 	. 
	dec bc			;10b8	0b 	. 
	ld e,l			;10b9	5d 	] 
	ld d,h			;10ba	54 	T 
	inc de			;10bb	13 	. 
	ldir		;10bc	ed b0 	. . 
	pop de			;10be	d1 	. 
	pop hl			;10bf	e1 	. 
	ld b,(hl)			;10c0	46 	F 
	add hl,de			;10c1	19 	. 
	dec a			;10c2	3d 	= 
	jr z,l10c9h		;10c3	28 04 	( . 
	ld (hl),b			;10c5	70 	p 
	pop bc			;10c6	c1 	. 
	jr sub_10b5h		;10c7	18 ec 	. . 
l10c9h:
	pop bc			;10c9	c1 	. 
	ret			;10ca	c9 	. 
sub_10cbh:
	ld de,l0020h		;10cb	11 20 00 	.   . 
	ld b,022h		;10ce	06 22 	. " 
	ld hl,070dch		;10d0	21 dc 70 	! . p 
l10d3h:
	ld (hl),000h		;10d3	36 00 	6 . 
	add hl,de			;10d5	19 	. 
	djnz l10d3h		;10d6	10 fb 	. . 
	ld b,022h		;10d8	06 22 	. " 
	ld hl,068dch		;10da	21 dc 68 	! . h 
l10ddh:
	ld (hl),082h		;10dd	36 82 	6 . 
	add hl,de			;10df	19 	. 
	djnz l10ddh		;10e0	10 fb 	. . 
l10e2h:
	ld a,0ddh		;10e2	3e dd 	> . 
	ld (068bch),a		;10e4	32 bc 68 	2 . h 
	call sub_1095h		;10e7	cd 95 10 	. . . 
	push iy		;10ea	fd e5 	. . 
	ld a,010h		;10ec	3e 10 	> . 
	call sub_0151h		;10ee	cd 51 01 	. Q . 
	pop iy		;10f1	fd e1 	. . 
	ld a,(07040h)		;10f3	3a 40 70 	: @ p 
	ld (07020h),a		;10f6	32 20 70 	2   p 
	ld de,l0020h		;10f9	11 20 00 	.   . 
	ld b,000h		;10fc	06 00 	. . 
	ld a,(06da2h)		;10fe	3a a2 6d 	: . m 
	ld c,a			;1101	4f 	O 
	inc c			;1102	0c 	. 
	inc c			;1103	0c 	. 
	ld hl,0b3e1h		;1104	21 e1 b3 	! . . 
	ld (hl),017h		;1107	36 17 	6 . 
	ld a,001h		;1109	3e 01 	> . 
	call sub_10b5h		;110b	cd b5 10 	. . . 
	ld hl,07d02h		;110e	21 02 7d 	! . } 
l1111h:
	ld a,001h		;1111	3e 01 	> . 
	ld (hl),0a0h		;1113	36 a0 	6 . 
	call sub_10b5h		;1115	cd b5 10 	. . . 
	dec c			;1118	0d 	. 
	dec c			;1119	0d 	. 
	ld hl,06802h		;111a	21 02 68 	! . h 
	ld (hl),082h		;111d	36 82 	6 . 
	ld a,028h		;111f	3e 28 	> ( 
	call sub_10b5h		;1121	cd b5 10 	. . . 
	ld hl,07802h		;1124	21 02 78 	! . x 
	ld (hl),080h		;1127	36 80 	6 . 
	ld a,028h		;1129	3e 28 	> ( 
	call sub_10b5h		;112b	cd b5 10 	. . . 
sub_112eh:
	ld hl,07002h		;112e	21 02 70 	! . p 
	ld (hl),000h		;1131	36 00 	6 . 
	ld a,028h		;1133	3e 28 	> ( 
	call sub_10b5h		;1135	cd b5 10 	. . . 
	ld hl,06022h		;1138	21 22 60 	! " ` 
	ld (hl),00fh		;113b	36 0f 	6 . 
	ld a,028h		;113d	3e 28 	> ( 
	call sub_10b5h		;113f	cd b5 10 	. . . 
	ld hl,0cd02h		;1142	21 02 cd 	! . . 
	ld (hl),000h		;1145	36 00 	6 . 
	ld a,028h		;1147	3e 28 	> ( 
	call sub_10b5h		;1149	cd b5 10 	. . . 
	ld hl,0c802h		;114c	21 02 c8 	! . . 
	ld (hl),080h		;114f	36 80 	6 . 
	ld a,028h		;1151	3e 28 	> ( 
	call sub_10b5h		;1153	cd b5 10 	. . . 
	ld hl,0c302h		;1156	21 02 c3 	! . . 
	ld (hl),000h		;1159	36 00 	6 . 
	ld a,028h		;115b	3e 28 	> ( 
	call sub_10b5h		;115d	cd b5 10 	. . . 
	ld hl,0b902h		;1160	21 02 b9 	! . . 
	ld (hl),00fh		;1163	36 0f 	6 . 
	ld a,028h		;1165	3e 28 	> ( 
	call sub_10b5h		;1167	cd b5 10 	. . . 
	ld hl,0a502h		;116a	21 02 a5 	! . . 
	ld (hl),000h		;116d	36 00 	6 . 
	ld a,028h		;116f	3e 28 	> ( 
	call sub_10b5h		;1171	cd b5 10 	. . . 
	inc c			;1174	0c 	. 
	inc c			;1175	0c 	. 
	ld hl,0b401h		;1176	21 01 b4 	! . . 
	ld (hl),000h		;1179	36 00 	6 . 
	ld a,028h		;117b	3e 28 	> ( 
	call sub_10b5h		;117d	cd b5 10 	. . . 
l1180h:
	ld a,080h		;1180	3e 80 	> . 
	ld (06820h),a		;1182	32 20 68 	2   h 
	jp sub_0d14h		;1185	c3 14 0d 	. . . 
l1188h:
	ld hl,06d5ah		;1188	21 5a 6d 	! Z m 
	res 0,(hl)		;118b	cb 86 	. . 
l118dh:
	ld hl,06d53h		;118d	21 53 6d 	! S m 
	call l0542h		;1190	cd 42 05 	. B . 
	jr z,l1199h		;1193	28 04 	( . 
	ld c,a			;1195	4f 	O 
	rst 18h			;1196	df 	. 
	jr l118dh		;1197	18 f4 	. . 
l1199h:
	call 03fe2h		;1199	cd e2 3f 	. . ? 
	ld hl,l3dfdh		;119c	21 fd 3d 	! . = 
	call z,l0f42h		;119f	cc 42 0f 	. B . 
	di			;11a2	f3 	. 
	ld hl,06d60h		;11a3	21 60 6d 	! ` m 
	dec (hl)			;11a6	35 	5 
	jp l00c2h		;11a7	c3 c2 00 	. . . 
l11aah:
	push iy		;11aa	fd e5 	. . 
	push ix		;11ac	dd e5 	. . 
	exx			;11ae	d9 	. 
	ex af,af'			;11af	08 	. 
	push hl			;11b0	e5 	. 
	push de			;11b1	d5 	. 
	push bc			;11b2	c5 	. 
	push af			;11b3	f5 	. 
	di			;11b4	f3 	. 
	ld hl,(06da0h)		;11b5	2a a0 6d 	* . m 
	push hl			;11b8	e5 	. 
	ld hl,(06d70h)		;11b9	2a 70 6d 	* p m 
	ld (06d70h),sp		;11bc	ed 73 70 6d 	. s p m 
	ld sp,hl			;11c0	f9 	. 
	ei			;11c1	fb 	. 
	pop af			;11c2	f1 	. 
	pop bc			;11c3	c1 	. 
	pop de			;11c4	d1 	. 
	pop hl			;11c5	e1 	. 
	exx			;11c6	d9 	. 
	ex af,af'			;11c7	08 	. 
	pop iy		;11c8	fd e1 	. . 
	pop ix		;11ca	dd e1 	. . 
	jr l11d1h		;11cc	18 03 	. . 
l11ceh:
	push hl			;11ce	e5 	. 
	push de			;11cf	d5 	. 
	push bc			;11d0	c5 	. 
l11d1h:
	ld hl,l11e3h		;11d1	21 e3 11 	! . . 
	push hl			;11d4	e5 	. 
sub_11d5h:
	ld hl,(06d7ch)		;11d5	2a 7c 6d 	* | m 
	jp (hl)			;11d8	e9 	. 
	call sub_06aah		;11d9	cd aa 06 	. . . 
	ld hl,06d51h		;11dc	21 51 6d 	! Q m 
	di			;11df	f3 	. 
	jp l04d3h		;11e0	c3 d3 04 	. . . 
l11e3h:
	jp z,l129bh		;11e3	ca 9b 12 	. . . 
l11e6h:
	ei			;11e6	fb 	. 
	or a			;11e7	b7 	. 
	jr z,l11d1h		;11e8	28 e7 	( . 
	cp 01fh		;11ea	fe 1f 	. . 
	jr nz,l11f5h		;11ec	20 07 	  . 
	ld hl,06e80h		;11ee	21 80 6e 	! . n 
	bit 6,(hl)		;11f1	cb 76 	. v 
l11f3h:
	jr z,l1206h		;11f3	28 11 	( . 
l11f5h:
	pop bc			;11f5	c1 	. 
	pop de			;11f6	d1 	. 
	pop hl			;11f7	e1 	. 
	ret			;11f8	c9 	. 
l11f9h:
	bit 2,(hl)		;11f9	cb 56 	. V 
	jr nz,l1203h		;11fb	20 06 	  . 
	ld hl,l3d75h+2		;11fd	21 77 3d 	! w = 
	call l0f42h		;1200	cd 42 0f 	. B . 
l1203h:
	call l11ceh		;1203	cd ce 11 	. . . 
l1206h:
	ld sp,06700h		;1206	31 00 67 	1 . g 
l1209h:
	ld hl,l1203h		;1209	21 03 12 	! . . 
	push hl			;120c	e5 	. 
	ld hl,06e80h		;120d	21 80 6e 	! . n 
	res 6,(hl)		;1210	cb b6 	. . 
	ld iy,(06d7eh)		;1212	fd 2a 7e 6d 	. * ~ m 
l1216h:
	cp 020h		;1216	fe 20 	.   
	jr nc,l1254h		;1218	30 3a 	0 : 
	ld hl,06d72h		;121a	21 72 6d 	! r m 
	res 6,(hl)		;121d	cb b6 	. . 
	cp 012h		;121f	fe 12 	. . 
	jr z,l1264h		;1221	28 41 	( A 
	ld hl,06e21h		;1223	21 21 6e 	! ! n 
	ld (hl),000h		;1226	36 00 	6 . 
	cp 01fh		;1228	fe 1f 	. . 
	jp z,l1305h		;122a	ca 05 13 	. . . 
	cp 01bh		;122d	fe 1b 	. . 
	jp z,l164ch		;122f	ca 4c 16 	. L . 
	cp 00fh		;1232	fe 0f 	. . 
	jp z,l1747h		;1234	ca 47 17 	. G . 
	cp 00eh		;1237	fe 0e 	. . 
	jp z,l1742h		;1239	ca 42 17 	. B . 
	cp 019h		;123c	fe 19 	. . 
	jr z,l125fh		;123e	28 1f 	( . 
	cp 01dh		;1240	fe 1d 	. . 
	jp nz,sub_1c99h		;1242	c2 99 1c 	. . . 
	ld b,(iy+015h)		;1245	fd 46 15 	. F . 
l1248h:
	call l11ceh		;1248	cd ce 11 	. . . 
	cp 020h		;124b	fe 20 	.   
	jr c,l1216h		;124d	38 c7 	8 . 
	cp 080h		;124f	fe 80 	. . 
	jp c,l1fceh		;1251	da ce 1f 	. . . 
l1254h:
	cp 09bh		;1254	fe 9b 	. . 
	jp nz,sub_1c99h		;1256	c2 99 1c 	. . . 
	call sub_1290h		;1259	cd 90 12 	. . . 
	jp l176dh		;125c	c3 6d 17 	. m . 
l125fh:
	ld b,(iy+014h)		;125f	fd 46 14 	. F . 
	jr l1248h		;1262	18 e4 	. . 
l1264h:
	call l11ceh		;1264	cd ce 11 	. . . 
	and 03fh		;1267	e6 3f 	. ? 
	ret z			;1269	c8 	. 
	ld d,a			;126a	57 	W 
	ld a,(06e21h)		;126b	3a 21 6e 	: ! n 
	or a			;126e	b7 	. 
	ret z			;126f	c8 	. 
	ld c,a			;1270	4f 	O 
	ld a,(06e71h)		;1271	3a 71 6e 	: q n 
	ld b,a			;1274	47 	G 
l1275h:
	push de			;1275	d5 	. 
	push bc			;1276	c5 	. 
	ld a,b			;1277	78 	x 
	and 00fh		;1278	e6 0f 	. . 
	jr z,l1287h		;127a	28 0b 	( . 
	or 040h		;127c	f6 40 	. @ 
	ld b,020h		;127e	06 20 	.   
	push bc			;1280	c5 	. 
	call sub_1fc0h		;1281	cd c0 1f 	. . . 
	pop bc			;1284	c1 	. 
	ld b,000h		;1285	06 00 	. . 
l1287h:
	ld a,c			;1287	79 	y 
	call sub_1fc0h		;1288	cd c0 1f 	. . . 
	pop bc			;128b	c1 	. 
	pop de			;128c	d1 	. 
	dec d			;128d	15 	. 
	jr nz,l1275h		;128e	20 e5 	  . 
sub_1290h:
	ld hl,06d72h		;1290	21 72 6d 	! r m 
	res 6,(hl)		;1293	cb b6 	. . 
	ld hl,06e21h		;1295	21 21 6e 	! ! n 
	ld (hl),000h		;1298	36 00 	6 . 
	ret			;129a	c9 	. 
l129bh:
	ld hl,06d5bh		;129b	21 5b 6d 	! [ m 
	xor a			;129e	af 	. 
	or (hl)			;129f	b6 	. 
	jr z,l12bah		;12a0	28 18 	( . 
	ld a,018h		;12a2	3e 18 	> . 
	cp (hl)			;12a4	be 	. 
	res 7,(hl)		;12a5	cb be 	. . 
	jr c,l12bah		;12a7	38 11 	8 . 
	ld a,(06d72h)		;12a9	3a 72 6d 	: r m 
	bit 6,a		;12ac	cb 77 	. w 
	jr nz,l12bah		;12ae	20 0a 	  . 
	ei			;12b0	fb 	. 
	call sub_0db1h		;12b1	cd b1 0d 	. . . 
	call sub_11d5h		;12b4	cd d5 11 	. . . 
	jp nz,l11e6h		;12b7	c2 e6 11 	. . . 
l12bah:
	push ix		;12ba	dd e5 	. . 
	push iy		;12bc	fd e5 	. . 
	exx			;12be	d9 	. 
	ex af,af'			;12bf	08 	. 
	push hl			;12c0	e5 	. 
	push de			;12c1	d5 	. 
	push bc			;12c2	c5 	. 
	push af			;12c3	f5 	. 
	ld hl,06d5eh		;12c4	21 5e 6d 	! ^ m 
l12c7h:
	dec (hl)			;12c7	35 	5 
	ld hl,(06d70h)		;12c8	2a 70 6d 	* p m 
	ld (06d70h),sp		;12cb	ed 73 70 6d 	. s p m 
	ld sp,hl			;12cf	f9 	. 
l12d0h:
	pop hl			;12d0	e1 	. 
	ld (06da0h),hl		;12d1	22 a0 6d 	" . m 
	ld a,l			;12d4	7d 	} 
	out (0a0h),a		;12d5	d3 a0 	. . 
	pop af			;12d7	f1 	. 
	pop bc			;12d8	c1 	. 
	pop de			;12d9	d1 	. 
	pop hl			;12da	e1 	. 
	exx			;12db	d9 	. 
	ex af,af'			;12dc	08 	. 
	pop ix		;12dd	dd e1 	. . 
	pop iy		;12df	fd e1 	. . 
	jp l00c2h		;12e1	c3 c2 00 	. . . 
l12e4h:
	call l11ceh		;12e4	cd ce 11 	. . . 
	cp 09bh		;12e7	fe 9b 	. . 
	ret nz			;12e9	c0 	. 
	call l11ceh		;12ea	cd ce 11 	. . . 
	cp 030h		;12ed	fe 30 	. 0 
	jp nc,l13d0h		;12ef	d2 d0 13 	. . . 
	cp 020h		;12f2	fe 20 	.   
	jp c,l13d0h		;12f4	da d0 13 	. . . 
	push hl			;12f7	e5 	. 
	push de			;12f8	d5 	. 
	push bc			;12f9	c5 	. 
	call sub_177dh		;12fa	cd 7d 17 	. } . 
	pop bc			;12fd	c1 	. 
	pop de			;12fe	d1 	. 
	pop hl			;12ff	e1 	. 
	jr l12e4h		;1300	18 e2 	. . 
l1302h:
	pop hl			;1302	e1 	. 
	pop iy		;1303	fd e1 	. . 
l1305h:
	call l11ceh		;1305	cd ce 11 	. . . 
	ld hl,(06d7ah)		;1308	2a 7a 6d 	* z m 
	jp (hl)			;130b	e9 	. 
l130ch:
	cp 040h		;130c	fe 40 	. @ 
	jr c,l1372h		;130e	38 62 	8 b 
	cp 080h		;1310	fe 80 	. . 
	jr nc,l1372h		;1312	30 5e 	0 ^ 
	and 03fh		;1314	e6 3f 	. ? 
	ld l,a			;1316	6f 	o 
	call l11ceh		;1317	cd ce 11 	. . . 
	cp 041h		;131a	fe 41 	. A 
	ret c			;131c	d8 	. 
	cp 069h		;131d	fe 69 	. i 
	ret nc			;131f	d0 	. 
	and 03fh		;1320	e6 3f 	. ? 
	ld h,a			;1322	67 	g 
	ld a,(06da2h)		;1323	3a a2 6d 	: . m 
	cp l			;1326	bd 	. 
	ret c			;1327	d8 	. 
	ld a,l			;1328	7d 	} 
	or a			;1329	b7 	. 
	ret z			;132a	c8 	. 
l132bh:
	exx			;132b	d9 	. 
	ld bc,l0003h		;132c	01 03 00 	. . . 
	push iy		;132f	fd e5 	. . 
	pop de			;1331	d1 	. 
	inc de			;1332	13 	. 
	ld hl,l0925h+1		;1333	21 26 09 	! & . 
	ldir		;1336	ed b0 	. . 
	exx			;1338	d9 	. 
l1339h:
	push hl			;1339	e5 	. 
	call sub_1f5bh		;133a	cd 5b 1f 	. [ . 
	pop hl			;133d	e1 	. 
	ld de,sub_1f5bh		;133e	11 5b 1f 	. [ . 
	push de			;1341	d5 	. 
l1342h:
	ld a,028h		;1342	3e 28 	> ( 
	cp h			;1344	bc 	. 
	jr c,l134ch		;1345	38 05 	8 . 
	ld a,h			;1347	7c 	| 
	or a			;1348	b7 	. 
	jr nz,l134ch		;1349	20 01 	  . 
	inc a			;134b	3c 	< 
l134ch:
	add a,a			;134c	87 	. 
	add a,a			;134d	87 	. 
	ld (iy+007h),a		;134e	fd 77 07 	. w . 
	sub 004h		;1351	d6 04 	. . 
	ld h,000h		;1353	26 00 	& . 
	add a,a			;1355	87 	. 
	rl h		;1356	cb 14 	. . 
	add a,a			;1358	87 	. 
	rl h		;1359	cb 14 	. . 
	add a,a			;135b	87 	. 
	rl h		;135c	cb 14 	. . 
	ld (iy+005h),h		;135e	fd 74 05 	. t . 
	ld (iy+004h),a		;1361	fd 77 04 	. w . 
sub_1364h:
	ld a,(06da2h)		;1364	3a a2 6d 	: . m 
	cp l			;1367	bd 	. 
	jr c,l136fh		;1368	38 05 	8 . 
	ld a,l			;136a	7d 	} 
	or a			;136b	b7 	. 
	jr nz,l136fh		;136c	20 01 	  . 
	inc a			;136e	3c 	< 
l136fh:
	jp l1cf8h		;136f	c3 f8 1c 	. . . 
l1372h:
	ld l,a			;1372	6f 	o 
	ld a,(06e80h)		;1373	3a 80 6e 	: . n 
	ld (06e7ah),a		;1376	32 7a 6e 	2 z n 
	ld a,l			;1379	7d 	} 
	ld (06e78h),sp		;137a	ed 73 78 6e 	. s x n 
	cp 02fh		;137e	fe 2f 	. / 
	jr z,l13f0h		;1380	28 6e 	( n 
	cp 023h		;1382	fe 23 	. # 
	jp z,l19d7h		;1384	ca d7 19 	. . . 
	cp 02dh		;1387	fe 2d 	. - 
	jp z,l14b9h		;1389	ca b9 14 	. . . 
	cp 026h		;138c	fe 26 	. & 
	jp z,l1b5ch		;138e	ca 5c 1b 	. \ . 
	cp 030h		;1391	fe 30 	. 0 
	jp z,04026h		;1393	ca 26 40 	. & @ 
	cp 03dh		;1396	fe 3d 	. = 
	jr z,l13a1h		;1398	28 07 	( . 
l139ah:
	cp 03ch		;139a	fe 3c 	. < 
	jp z,l1519h		;139c	ca 19 15 	. . . 
	jr l13d0h		;139f	18 2f 	. / 
l13a1h:
	call l11ceh		;13a1	cd ce 11 	. . . 
	cp 030h		;13a4	fe 30 	. 0 
	jr z,l13e3h		;13a6	28 3b 	( ; 
	sub 020h		;13a8	d6 20 	.   
	jr c,l13d0h		;13aa	38 24 	8 $ 
	cp 00fh		;13ac	fe 0f 	. . 
	jr nc,l13d0h		;13ae	30 20 	0   
	ld l,a			;13b0	6f 	o 
	call sub_0f11h		;13b1	cd 11 0f 	. . . 
	ld de,080c8h		;13b4	11 c8 80 	. . . 
	add hl,de			;13b7	19 	. 
	ld (hl),000h		;13b8	36 00 	6 . 
	ld b,013h		;13ba	06 13 	. . 
l13bch:
	call l11ceh		;13bc	cd ce 11 	. . . 
	cp 01fh		;13bf	fe 1f 	. . 
	jr z,l13d0h		;13c1	28 0d 	( . 
	ld c,a			;13c3	4f 	O 
	call l06a6h		;13c4	cd a6 06 	. . . 
	ld (hl),c			;13c7	71 	q 
	inc hl			;13c8	23 	# 
	ld (hl),000h		;13c9	36 00 	6 . 
	djnz l13bch		;13cb	10 ef 	. . 
l13cdh:
	call l12e4h		;13cd	cd e4 12 	. . . 
l13d0h:
	ld sp,(06e78h)		;13d0	ed 7b 78 6e 	. { x n 
	cp 01fh		;13d4	fe 1f 	. . 
	jr nz,l13cdh		;13d6	20 f5 	  . 
	ld l,a			;13d8	6f 	o 
	ld a,(06e7ah)		;13d9	3a 7a 6e 	: z n 
	ld (06e80h),a		;13dc	32 80 6e 	2 . n 
	ld a,l			;13df	7d 	} 
	jp l1216h		;13e0	c3 16 12 	. . . 
l13e3h:
	ld hl,080c8h		;13e3	21 c8 80 	! . . 
	ld de,l0970h		;13e6	11 70 09 	. p . 
	ld b,010h		;13e9	06 10 	. . 
	call sub_07b1h		;13eb	cd b1 07 	. . . 
	jr l13cdh		;13ee	18 dd 	. . 
l13f0h:
	call l11ceh		;13f0	cd ce 11 	. . . 
	cp 040h		;13f3	fe 40 	. @ 
	jr z,l1451h		;13f5	28 5a 	( Z 
	cp 04fh		;13f7	fe 4f 	. O 
	ret z			;13f9	c8 	. 
	ld b,001h		;13fa	06 01 	. . 
	cp 041h		;13fc	fe 41 	. A 
	jr z,l1426h		;13fe	28 26 	( & 
	cp 043h		;1400	fe 43 	. C 
	jr z,l140dh		;1402	28 09 	( . 
	ld b,002h		;1404	06 02 	. . 
	cp 042h		;1406	fe 42 	. B 
	jr z,l1426h		;1408	28 1c 	( . 
	cp 044h		;140a	fe 44 	. D 
	ret nz			;140c	c0 	. 
l140dh:
	push iy		;140d	fd e5 	. . 
	pop hl			;140f	e1 	. 
	ld (hl),b			;1410	70 	p 
	ld de,l0010h+1		;1411	11 11 00 	. . . 
	add hl,de			;1414	19 	. 
	ex de,hl			;1415	eb 	. 
	ld hl,l0936h		;1416	21 36 09 	! 6 . 
	ld bc,l0003h+2		;1419	01 05 00 	. . . 
	ldir		;141c	ed b0 	. . 
	ret			;141e	c9 	. 
	ld b,001h		;141f	06 01 	. . 
	ld hl,06d5ah		;1421	21 5a 6d 	! Z m 
	res 0,(hl)		;1424	cb 86 	. . 
l1426h:
	ld a,b			;1426	78 	x 
	ld bc,l0016h		;1427	01 16 00 	. . . 
	push iy		;142a	fd e5 	. . 
	pop de			;142c	d1 	. 
	ld (de),a			;142d	12 	. 
	inc de			;142e	13 	. 
	ld hl,l0925h+1		;142f	21 26 09 	! & . 
	ldir		;1432	ed b0 	. . 
	ld a,(06d5ah)		;1434	3a 5a 6d 	: Z m 
	bit 0,a		;1437	cb 47 	. G 
	ret nz			;1439	c0 	. 
	ld a,07fh		;143a	3e 7f 	>  
	ld hl,06d5bh		;143c	21 5b 6d 	! [ m 
	or (hl)			;143f	b6 	. 
	ld (hl),a			;1440	77 	w 
	ld a,00ah		;1441	3e 0a 	> . 
	ld (06d73h),a		;1443	32 73 6d 	2 s m 
	ld a,017h		;1446	3e 17 	> . 
	call sub_108fh		;1448	cd 8f 10 	. . . 
	call sub_0802h		;144b	cd 02 08 	. . . 
	jp l10e2h		;144e	c3 e2 10 	. . . 
l1451h:
	call l11ceh		;1451	cd ce 11 	. . . 
	and 03fh		;1454	e6 3f 	. ? 
	ret z			;1456	c8 	. 
	push iy		;1457	fd e5 	. . 
	ld hl,l0925h		;1459	21 25 09 	! % . 
	ld de,06e22h		;145c	11 22 6e 	. " n 
	push de			;145f	d5 	. 
	pop iy		;1460	fd e1 	. . 
	ld bc,l0017h		;1462	01 17 00 	. . . 
	ldir		;1465	ed b0 	. . 
	ld l,a			;1467	6f 	o 
	call sub_1364h		;1468	cd 64 13 	. d . 
	set 2,(iy+010h)		;146b	fd cb 10 d6 	. . . . 
	set 1,(iy+010h)		;146f	fd cb 10 ce 	. . . . 
l1473h:
	ld hl,l1473h		;1473	21 73 14 	! s . 
	push hl			;1476	e5 	. 
	call l11ceh		;1477	cd ce 11 	. . . 
l147ah:
	cp 01fh		;147a	fe 1f 	. . 
	jp z,l1302h		;147c	ca 02 13 	. . . 
	cp 008h		;147f	fe 08 	. . 
	jr z,l14abh		;1481	28 28 	( ( 
	cp 009h		;1483	fe 09 	. . 
	jr z,l14abh		;1485	28 24 	( $ 
	cp 00dh		;1487	fe 0d 	. . 
	jr z,l14abh		;1489	28 20 	(   
	cp 018h		;148b	fe 18 	. . 
	jr z,l14abh		;148d	28 1c 	( . 
	cp 01bh		;148f	fe 1b 	. . 
	jr nz,l14a0h		;1491	20 0d 	  . 
	call l11ceh		;1493	cd ce 11 	. . . 
	cp 040h		;1496	fe 40 	. @ 
	jr c,l147ah		;1498	38 e0 	8 . 
	cp 060h		;149a	fe 60 	. ` 
	jr nc,l147ah		;149c	30 dc 	0 . 
	add a,040h		;149e	c6 40 	. @ 
l14a0h:
	cp 020h		;14a0	fe 20 	.   
	ret c			;14a2	d8 	. 
	cp 090h		;14a3	fe 90 	. . 
	jr c,l14abh		;14a5	38 04 	8 . 
	cp 0a0h		;14a7	fe a0 	. . 
	jr c,l14aeh		;14a9	38 03 	8 . 
l14abh:
	jp sub_1c99h		;14ab	c3 99 1c 	. . . 
l14aeh:
	cp 098h		;14ae	fe 98 	. . 
	ret c			;14b0	d8 	. 
	cp 09eh		;14b1	fe 9e 	. . 
	ret nc			;14b3	d0 	. 
	cp 09bh		;14b4	fe 9b 	. . 
	ret z			;14b6	c8 	. 
	jr l14abh		;14b7	18 f2 	. . 
l14b9h:
	ld hl,06e80h		;14b9	21 80 6e 	! . n 
	set 6,(hl)		;14bc	cb f6 	. . 
	call l11ceh		;14be	cd ce 11 	. . . 
	cp 042h		;14c1	fe 42 	. B 
	jr z,l14d7h		;14c3	28 12 	( . 
	push af			;14c5	f5 	. 
	ld a,00ah		;14c6	3e 0a 	> . 
	call sub_14e1h		;14c8	cd e1 14 	. . . 
	pop af			;14cb	f1 	. 
l14cch:
	cp 071h		;14cc	fe 71 	. q 
	jr nz,l14d4h		;14ce	20 04 	  . 
	set 1,(iy+010h)		;14d0	fd cb 10 ce 	. . . . 
l14d4h:
	jp l13d0h		;14d4	c3 d0 13 	. . . 
l14d7h:
	ld a,00ch		;14d7	3e 0c 	> . 
	call sub_14e1h		;14d9	cd e1 14 	. . . 
	call l11ceh		;14dc	cd ce 11 	. . . 
	jr l14cch		;14df	18 eb 	. . 
sub_14e1h:
	ld hl,06d73h		;14e1	21 73 6d 	! s m 
	cp (hl)			;14e4	be 	. 
	jr z,l1512h		;14e5	28 2b 	( + 
	ld (hl),a			;14e7	77 	w 
	call sub_1f5bh		;14e8	cd 5b 1f 	. [ . 
	call sub_0802h		;14eb	cd 02 08 	. . . 
	ld l,(iy+008h)		;14ee	fd 6e 08 	. n . 
	call sub_1364h		;14f1	cd 64 13 	. d . 
	ld a,001h		;14f4	3e 01 	> . 
	call sub_1f30h		;14f6	cd 30 1f 	. 0 . 
	ld a,(06da2h)		;14f9	3a a2 6d 	: . m 
	ld b,a			;14fc	47 	G 
	ld a,(iy+00dh)		;14fd	fd 7e 0d 	. ~ . 
	cp 019h		;1500	fe 19 	. . 
	jr z,l150ah		;1502	28 06 	( . 
	cp b			;1504	b8 	. 
	jr c,l150ah		;1505	38 03 	8 . 
	ld (iy+00dh),b		;1507	fd 70 0d 	. p . 
l150ah:
	call sub_1095h		;150a	cd 95 10 	. . . 
	ld a,080h		;150d	3e 80 	> . 
	ld (06820h),a		;150f	32 20 68 	2   h 
l1512h:
	res 1,(iy+010h)		;1512	fd cb 10 8e 	. . . . 
	jp sub_1f5bh		;1516	c3 5b 1f 	. [ . 
l1519h:
	ld hl,06d6fh		;1519	21 6f 6d 	! o m 
	ld a,(072a0h)		;151c	3a a0 72 	: . r 
	or a			;151f	b7 	. 
	jr z,l1526h		;1520	28 04 	( . 
	bit 2,(hl)		;1522	cb 56 	. V 
	jr z,l1537h		;1524	28 11 	( . 
l1526h:
	bit 0,(hl)		;1526	cb 46 	. F 
	jr nz,l1537h		;1528	20 0d 	  . 
	bit 2,(hl)		;152a	cb 56 	. V 
	jr nz,l1534h		;152c	20 06 	  . 
	ld hl,l3d75h+2		;152e	21 77 3d 	! w = 
	call l0f42h		;1531	cd 42 0f 	. B . 
l1534h:
	jp l13cdh		;1534	c3 cd 13 	. . . 
l1537h:
	ld hl,06d5ah		;1537	21 5a 6d 	! Z m 
	res 0,(hl)		;153a	cb 86 	. . 
l153ch:
	call l12e4h		;153c	cd e4 12 	. . . 
	bit 6,a		;153f	cb 77 	. w 
	jr z,l153ch		;1541	28 f9 	( . 
	ld b,a			;1543	47 	G 
	ld c,000h		;1544	0e 00 	. . 
	call l12e4h		;1546	cd e4 12 	. . . 
	ld e,a			;1549	5f 	_ 
	call l12e4h		;154a	cd e4 12 	. . . 
	ld d,a			;154d	57 	W 
	call sub_1623h		;154e	cd 23 16 	. # . 
	ld d,b			;1551	50 	P 
	ld hl,(06d6dh)		;1552	2a 6d 6d 	* m m 
	add hl,de			;1555	19 	. 
	ld a,c			;1556	79 	y 
	add a,a			;1557	87 	. 
	add a,a			;1558	87 	. 
	add a,a			;1559	87 	. 
	ld c,a			;155a	4f 	O 
	ex af,af'			;155b	08 	. 
	ld a,(06d6ch)		;155c	3a 6c 6d 	: l m 
	or c			;155f	b1 	. 
	ex af,af'			;1560	08 	. 
	push hl			;1561	e5 	. 
l1562h:
	call l12e4h		;1562	cd e4 12 	. . . 
	ld c,a			;1565	4f 	O 
	bit 6,a		;1566	cb 77 	. w 
	jr z,l1599h		;1568	28 2f 	( / 
	call l12e4h		;156a	cd e4 12 	. . . 
	ld b,a			;156d	47 	G 
	bit 6,a		;156e	cb 77 	. w 
	jr z,l1599h		;1570	28 27 	( ' 
	call l12e4h		;1572	cd e4 12 	. . . 
	ld e,a			;1575	5f 	_ 
	bit 6,a		;1576	cb 77 	. w 
	jr z,l158dh		;1578	28 13 	( . 
	call l12e4h		;157a	cd e4 12 	. . . 
	ld d,a			;157d	57 	W 
	bit 6,a		;157e	cb 77 	. w 
	jr z,l1593h		;1580	28 11 	( . 
	call sub_161ch		;1582	cd 1c 16 	. . . 
	ld (hl),c			;1585	71 	q 
	inc hl			;1586	23 	# 
	ld (hl),b			;1587	70 	p 
	inc hl			;1588	23 	# 
	ld (hl),e			;1589	73 	s 
	inc hl			;158a	23 	# 
	jr l1562h		;158b	18 d5 	. . 
l158dh:
	call sub_161ch		;158d	cd 1c 16 	. . . 
	ld (hl),c			;1590	71 	q 
	jr l1599h		;1591	18 06 	. . 
l1593h:
	call sub_161ch		;1593	cd 1c 16 	. . . 
	ld (hl),c			;1596	71 	q 
	inc hl			;1597	23 	# 
	ld (hl),b			;1598	70 	p 
l1599h:
	bit 0,a		;1599	cb 47 	. G 
	jr z,l15a8h		;159b	28 0b 	( . 
	ld hl,06d6ch		;159d	21 6c 6d 	! l m 
	ld (hl),080h		;15a0	36 80 	6 . 
	ld hl,l0000h		;15a2	21 00 00 	! . . 
	ld (06d6dh),hl		;15a5	22 6d 6d 	" m m 
l15a8h:
	pop de			;15a8	d1 	. 
	bit 3,a		;15a9	cb 5f 	. _ 
	ret z			;15ab	c8 	. 
	cp 02ah		;15ac	fe 2a 	. * 
	jr nz,l15b3h		;15ae	20 03 	  . 
	ld de,l0142h		;15b0	11 42 01 	. B . 
l15b3h:
	ex af,af'			;15b3	08 	. 
	call l06b0h		;15b4	cd b0 06 	. . . 
	di			;15b7	f3 	. 
	ld hl,(06d70h)		;15b8	2a 70 6d 	* p m 
	ld sp,hl			;15bb	f9 	. 
	ld hl,l12d0h		;15bc	21 d0 12 	! . . 
	push hl			;15bf	e5 	. 
	ld hl,l1209h		;15c0	21 09 12 	! . . 
	ld (066feh),hl		;15c3	22 fe 66 	" . f 
	ld hl,066ech		;15c6	21 ec 66 	! . f 
	ld (06d70h),hl		;15c9	22 70 6d 	" p m 
	ld hl,06d5eh		;15cc	21 5e 6d 	! ^ m 
	dec (hl)			;15cf	35 	5 
	ex de,hl			;15d0	eb 	. 
	ei			;15d1	fb 	. 
	jp (hl)			;15d2	e9 	. 
	ld hl,l11f3h		;15d3	21 f3 11 	! . . 
	ld b,085h		;15d6	06 85 	. . 
	add hl,de			;15d8	19 	. 
	ex de,hl			;15d9	eb 	. 
	ld hl,040ffh		;15da	21 ff 40 	! . @ 
	sbc hl,de		;15dd	ed 52 	. R 
	push hl			;15df	e5 	. 
	pop bc			;15e0	c1 	. 
	ex de,hl			;15e1	eb 	. 
	ld a,l			;15e2	7d 	} 
l15e3h:
	inc hl			;15e3	23 	# 
	bit 7,(hl)		;15e4	cb 7e 	. ~ 
	jr z,l15e9h		;15e6	28 01 	( . 
	xor (hl)			;15e8	ae 	. 
l15e9h:
	add a,(hl)			;15e9	86 	. 
	dec bc			;15ea	0b 	. 
	inc b			;15eb	04 	. 
	djnz l15e3h		;15ec	10 f5 	. . 
	ex de,hl			;15ee	eb 	. 
	ld bc,(l0016h)		;15ef	ed 4b 16 00 	. K . . 
	ld hl,l0218h		;15f3	21 18 02 	! . . 
	ld (07160h),hl		;15f6	22 60 71 	" ` q 
	ld hl,l00b0h		;15f9	21 b0 00 	! . . 
	ld (07200h),hl		;15fc	22 00 72 	" . r 
	ld c,a			;15ff	4f 	O 
	ld hl,0b81dh		;1600	21 1d b8 	! . . 
	add hl,de			;1603	19 	. 
	add hl,bc			;1604	09 	. 
	ld (07220h),hl		;1605	22 20 72 	"   r 
	call sub_07c3h		;1608	cd c3 07 	. . . 
	ld hl,083ffh		;160b	21 ff 83 	! . . 
	ld b,a			;160e	47 	G 
	ld a,098h		;160f	3e 98 	> . 
	out (0c0h),a		;1611	d3 c0 	. . 
	ld (hl),b			;1613	70 	p 
	ld a,090h		;1614	3e 90 	> . 
	out (0c0h),a		;1616	d3 c0 	. . 
	ld a,b			;1618	78 	x 
	jp l0954h		;1619	c3 54 09 	. T . 
sub_161ch:
	ex af,af'			;161c	08 	. 
	ld (06da1h),a		;161d	32 a1 6d 	2 . m 
	out (0c0h),a		;1620	d3 c0 	. . 
	ex af,af'			;1622	08 	. 
sub_1623h:
	rl d		;1623	cb 12 	. . 
	rl d		;1625	cb 12 	. . 
	rl d		;1627	cb 12 	. . 
	rl e		;1629	cb 13 	. . 
	rl d		;162b	cb 12 	. . 
	rl e		;162d	cb 13 	. . 
	rl d		;162f	cb 12 	. . 
	rl e		;1631	cb 13 	. . 
	rl b		;1633	cb 10 	. . 
	rl d		;1635	cb 12 	. . 
	rl e		;1637	cb 13 	. . 
	rl b		;1639	cb 10 	. . 
	rl d		;163b	cb 12 	. . 
	rl e		;163d	cb 13 	. . 
	rl b		;163f	cb 10 	. . 
	rl c		;1641	cb 11 	. . 
	rl d		;1643	cb 12 	. . 
	rl e		;1645	cb 13 	. . 
	rl b		;1647	cb 10 	. . 
	rl c		;1649	cb 11 	. . 
	ret			;164b	c9 	. 
l164ch:
	call l11ceh		;164c	cd ce 11 	. . . 
	cp 040h		;164f	fe 40 	. @ 
	jr c,l165dh		;1651	38 0a 	8 . 
	cp 060h		;1653	fe 60 	. ` 
	jp nc,l16feh		;1655	d2 fe 16 	. . . 
	add a,040h		;1658	c6 40 	. @ 
	jp l1254h		;165a	c3 54 12 	. T . 
l165dh:
	cp 022h		;165d	fe 22 	. " 
	jr nz,l1679h		;165f	20 18 	  . 
	call l11ceh		;1661	cd ce 11 	. . . 
	cp 040h		;1664	fe 40 	. @ 
	jr z,l1673h		;1666	28 0b 	( . 
	cp 041h		;1668	fe 41 	. A 
	ret nz			;166a	c0 	. 
	ld a,002h		;166b	3e 02 	> . 
	res 7,(iy+011h)		;166d	fd cb 11 be 	. . . . 
	jr l1675h		;1671	18 02 	. . 
l1673h:
	ld a,001h		;1673	3e 01 	> . 
l1675h:
	ld (iy+000h),a		;1675	fd 77 00 	. w . 
	ret			;1678	c9 	. 
l1679h:
	cp 023h		;1679	fe 23 	. # 
	jr nz,l16adh		;167b	20 30 	  0 
	call l11ceh		;167d	cd ce 11 	. . . 
	ld c,004h		;1680	0e 04 	. . 
l1682h:
	cp 021h		;1682	fe 21 	. ! 
	jr z,l1693h		;1684	28 0d 	( . 
	cp 020h		;1686	fe 20 	.   
	ret nz			;1688	c0 	. 
	ld a,(06d5ah)		;1689	3a 5a 6d 	: Z m 
	bit 0,a		;168c	cb 47 	. G 
	jp nz,l11ceh		;168e	c2 ce 11 	. . . 
	ld c,008h		;1691	0e 08 	. . 
l1693h:
	call l11ceh		;1693	cd ce 11 	. . . 
	cp 040h		;1696	fe 40 	. @ 
	ret c			;1698	d8 	. 
	cp 060h		;1699	fe 60 	. ` 
	ret nc			;169b	d0 	. 
	add a,040h		;169c	c6 40 	. @ 
	ld b,(iy+000h)		;169e	fd 46 00 	. F . 
	push bc			;16a1	c5 	. 
	ld (iy+000h),c		;16a2	fd 71 00 	. q . 
	call sub_1fa4h		;16a5	cd a4 1f 	. . . 
	pop bc			;16a8	c1 	. 
	ld (iy+000h),b		;16a9	fd 70 00 	. p . 
	ret			;16ac	c9 	. 
l16adh:
	push iy		;16ad	fd e5 	. . 
	pop hl			;16af	e1 	. 
	ld de,l0013h+2		;16b0	11 15 00 	. . . 
	add hl,de			;16b3	19 	. 
	cp 02bh		;16b4	fe 2b 	. + 
	jr z,l16c6h		;16b6	28 0e 	( . 
	dec hl			;16b8	2b 	+ 
	cp 02ah		;16b9	fe 2a 	. * 
	jr z,l16c6h		;16bb	28 09 	( . 
	dec hl			;16bd	2b 	+ 
	cp 029h		;16be	fe 29 	. ) 
	jr z,l16c6h		;16c0	28 04 	( . 
	dec hl			;16c2	2b 	+ 
	cp 028h		;16c3	fe 28 	. ( 
	ret nz			;16c5	c0 	. 
l16c6h:
	call l11ceh		;16c6	cd ce 11 	. . . 
	cp 020h		;16c9	fe 20 	.   
	jr nz,l16d7h		;16cb	20 0a 	  . 
	call l11ceh		;16cd	cd ce 11 	. . . 
	ld b,040h		;16d0	06 40 	. @ 
	cp 040h		;16d2	fe 40 	. @ 
	jr z,l16eeh		;16d4	28 18 	( . 
	ret			;16d6	c9 	. 
l16d7h:
	ld b,030h		;16d7	06 30 	. 0 
	cp 064h		;16d9	fe 64 	. d 
	jr z,l16eeh		;16db	28 11 	( . 
	ld b,020h		;16dd	06 20 	.   
	cp 062h		;16df	fe 62 	. b 
	jr z,l16eeh		;16e1	28 0b 	( . 
	ld b,010h		;16e3	06 10 	. . 
	cp 063h		;16e5	fe 63 	. c 
	jr z,l16eeh		;16e7	28 05 	( . 
	ld b,000h		;16e9	06 00 	. . 
	cp 040h		;16eb	fe 40 	. @ 
	ret nz			;16ed	c0 	. 
l16eeh:
	ld a,(hl)			;16ee	7e 	~ 
	and 003h		;16ef	e6 03 	. . 
	ld c,a			;16f1	4f 	O 
	or b			;16f2	b0 	. 
	ld (hl),a			;16f3	77 	w 
	bit 1,c		;16f4	cb 49 	. I 
	call nz,sub_1763h		;16f6	c4 63 17 	. c . 
	bit 0,c		;16f9	cb 41 	. A 
	ret z			;16fb	c8 	. 
	jr l1735h		;16fc	18 37 	. 7 
l16feh:
	ld de,l0013h+1		;16fe	11 14 00 	. . . 
	cp 06eh		;1701	fe 6e 	. n 
	jr z,l174ah		;1703	28 45 	( E 
	ex de,hl			;1705	eb 	. 
	ld de,l0013h+2		;1706	11 15 00 	. . . 
	cp 06fh		;1709	fe 6f 	. o 
	jr z,l174ah		;170b	28 3d 	( = 
	cp 07ch		;170d	fe 7c 	. | 
	jr z,l171ch		;170f	28 0b 	( . 
	ex de,hl			;1711	eb 	. 
	cp 07dh		;1712	fe 7d 	. } 
	jr z,l171ch		;1714	28 06 	( . 
	cp 07eh		;1716	fe 7e 	. ~ 
	ret nz			;1718	c0 	. 
	ld de,l0013h		;1719	11 13 00 	. . . 
l171ch:
	res 0,(iy+012h)		;171c	fd cb 12 86 	. . . . 
	res 0,(iy+013h)		;1720	fd cb 13 86 	. . . . 
	res 0,(iy+014h)		;1724	fd cb 14 86 	. . . . 
	res 0,(iy+015h)		;1728	fd cb 15 86 	. . . . 
	push iy		;172c	fd e5 	. . 
	pop hl			;172e	e1 	. 
	add hl,de			;172f	19 	. 
	ld b,(hl)			;1730	46 	F 
	res 1,b		;1731	cb 88 	. . 
	set 0,(hl)		;1733	cb c6 	. . 
l1735h:
	ld a,b			;1735	78 	x 
	rrca			;1736	0f 	. 
	rrca			;1737	0f 	. 
	rrca			;1738	0f 	. 
	rrca			;1739	0f 	. 
	ld b,a			;173a	47 	G 
	ld a,(iy+011h)		;173b	fd 7e 11 	. ~ . 
	and 0f0h		;173e	e6 f0 	. . 
l1740h:
	jr l1768h		;1740	18 26 	. & 
l1742h:
	ld de,l0013h		;1742	11 13 00 	. . . 
	jr l174ah		;1745	18 03 	. . 
l1747h:
	ld de,l0010h+2		;1747	11 12 00 	. . . 
l174ah:
	res 1,(iy+012h)		;174a	fd cb 12 8e 	. . . . 
	res 1,(iy+013h)		;174e	fd cb 13 8e 	. . . . 
	res 1,(iy+014h)		;1752	fd cb 14 8e 	. . . . 
	res 1,(iy+015h)		;1756	fd cb 15 8e 	. . . . 
	push iy		;175a	fd e5 	. . 
	pop hl			;175c	e1 	. 
	add hl,de			;175d	19 	. 
	ld b,(hl)			;175e	46 	F 
	res 0,b		;175f	cb 80 	. . 
	set 1,(hl)		;1761	cb ce 	. . 
sub_1763h:
	ld a,(iy+011h)		;1763	fd 7e 11 	. ~ . 
	and 00fh		;1766	e6 0f 	. . 
l1768h:
	or b			;1768	b0 	. 
	ld (iy+011h),a		;1769	fd 77 11 	. w . 
	ret			;176c	c9 	. 
l176dh:
	call l11ceh		;176d	cd ce 11 	. . . 
	cp 020h		;1770	fe 20 	.   
	ret c			;1772	d8 	. 
	ld b,000h		;1773	06 00 	. . 
	ld h,(iy+00ch)		;1775	fd 66 0c 	. f . 
	cp 030h		;1778	fe 30 	. 0 
	jp nc,l1820h		;177a	d2 20 18 	.   . 
sub_177dh:
	ld b,a			;177d	47 	G 
	ld hl,06d5ah		;177e	21 5a 6d 	! Z m 
	res 0,(hl)		;1781	cb 86 	. . 
	call l11ceh		;1783	cd ce 11 	. . . 
	cp 073h		;1786	fe 73 	. s 
	jr z,l1790h		;1788	28 06 	( . 
	cp 072h		;178a	fe 72 	. r 
	jr nz,l17afh		;178c	20 21 	  ! 
sub_178eh:
	set 0,(hl)		;178e	cb c6 	. . 
l1790h:
	ex de,hl			;1790	eb 	. 
	ld hl,06d6fh		;1791	21 6f 6d 	! o m 
	ld a,(072a0h)		;1794	3a a0 72 	: . r 
	or a			;1797	b7 	. 
	jr z,l179eh		;1798	28 04 	( . 
	bit 2,(hl)		;179a	cb 56 	. V 
	jr z,l17a9h		;179c	28 0b 	( . 
l179eh:
	bit 1,(hl)		;179e	cb 4e 	. N 
	jr nz,l17a9h		;17a0	20 07 	  . 
	ex de,hl			;17a2	eb 	. 
	res 0,(hl)		;17a3	cb 86 	. . 
	ex de,hl			;17a5	eb 	. 
	jp l11f9h		;17a6	c3 f9 11 	. . . 
l17a9h:
	ld a,b			;17a9	78 	x 
	sub 016h		;17aa	d6 16 	. . 
	jp l0f22h		;17ac	c3 22 0f 	. " . 
l17afh:
	cp 076h		;17af	fe 76 	. v 
	ret nz			;17b1	c0 	. 
	call l11ceh		;17b2	cd ce 11 	. . . 
	ld (06d23h),a		;17b5	32 23 6d 	2 # m 
	call sub_178eh		;17b8	cd 8e 17 	. . . 
	push iy		;17bb	fd e5 	. . 
	push ix		;17bd	dd e5 	. . 
	exx			;17bf	d9 	. 
	ex af,af'			;17c0	08 	. 
	push hl			;17c1	e5 	. 
	push de			;17c2	d5 	. 
	push bc			;17c3	c5 	. 
	push af			;17c4	f5 	. 
	ld hl,l0925h		;17c5	21 25 09 	! % . 
	ld de,06e5ah		;17c8	11 5a 6e 	. Z n 
	ld bc,l0017h		;17cb	01 17 00 	. . . 
	ldir		;17ce	ed b0 	. . 
	ld iy,06e5ah		;17d0	fd 21 5a 6e 	. ! Z n 
	ld hl,06e80h		;17d4	21 80 6e 	! . n 
	ld a,(hl)			;17d7	7e 	~ 
	push af			;17d8	f5 	. 
	set 6,(hl)		;17d9	cb f6 	. . 
l17dbh:
	call l11ceh		;17db	cd ce 11 	. . . 
l17deh:
	ld hl,06d5ah		;17de	21 5a 6d 	! Z m 
	bit 0,(hl)		;17e1	cb 46 	. F 
	jr z,l180ah		;17e3	28 25 	( % 
	call l1216h		;17e5	cd 16 12 	. . . 
	ld a,(iy+008h)		;17e8	fd 7e 08 	. ~ . 
	cp 002h		;17eb	fe 02 	. . 
	jr c,l17dbh		;17ed	38 ec 	8 . 
	ld hl,06da2h		;17ef	21 a2 6d 	! . m 
	cp (hl)			;17f2	be 	. 
	jr nc,l17dbh		;17f3	30 e6 	0 . 
	call l11ceh		;17f5	cd ce 11 	. . . 
	ld hl,06d23h		;17f8	21 23 6d 	! # m 
	cp (hl)			;17fb	be 	. 
	jr nz,l17deh		;17fc	20 e0 	  . 
	ld hl,06d5ah		;17fe	21 5a 6d 	! Z m 
	res 0,(hl)		;1801	cb 86 	. . 
	pop af			;1803	f1 	. 
	ld (06e80h),a		;1804	32 80 6e 	2 . n 
	jp l0e99h		;1807	c3 99 0e 	. . . 
l180ah:
	ld b,a			;180a	47 	G 
	pop af			;180b	f1 	. 
	ld (06e80h),a		;180c	32 80 6e 	2 . n 
	ld a,b			;180f	78 	x 
	jp l1206h		;1810	c3 06 12 	. . . 
l1813h:
	pop hl			;1813	e1 	. 
l1814h:
	call l11ceh		;1814	cd ce 11 	. . . 
	cp 030h		;1817	fe 30 	. 0 
	jr nc,l1820h		;1819	30 05 	0 . 
l181bh:
	dec b			;181b	05 	. 
l181ch:
	ret m			;181c	f8 	. 
	pop hl			;181d	e1 	. 
	jr l181bh		;181e	18 fb 	. . 
l1820h:
	cp 040h		;1820	fe 40 	. @ 
	jr nc,l183dh		;1822	30 19 	0 . 
	and 00fh		;1824	e6 0f 	. . 
	ld c,a			;1826	4f 	O 
	ld a,b			;1827	78 	x 
	or a			;1828	b7 	. 
	ld a,c			;1829	79 	y 
	jr z,l1839h		;182a	28 0d 	( . 
	dec b			;182c	05 	. 
	cp 00bh		;182d	fe 0b 	. . 
	jr z,l1813h		;182f	28 e2 	( . 
	pop de			;1831	d1 	. 
	sla d		;1832	cb 22 	. " 
	add a,d			;1834	82 	. 
	add a,d			;1835	82 	. 
	add a,d			;1836	82 	. 
	add a,d			;1837	82 	. 
	add a,d			;1838	82 	. 
l1839h:
	push af			;1839	f5 	. 
	inc b			;183a	04 	. 
	jr l1814h		;183b	18 d7 	. . 
l183dh:
	cp 042h		;183d	fe 42 	. B 
	jr nz,l1852h		;183f	20 11 	  . 
	ld a,b			;1841	78 	x 
	or a			;1842	b7 	. 
	jr nz,l181bh		;1843	20 d6 	  . 
	bit 0,(iy+000h)		;1845	fd cb 00 46 	. . . F 
	jr z,l184fh		;1849	28 04 	( . 
	ld hl,l1da2h		;184b	21 a2 1d 	! . . 
	push hl			;184e	e5 	. 
l184fh:
	jp l2da7h		;184f	c3 a7 2d 	. . - 
l1852h:
	cp 055h		;1852	fe 55 	. U 
	jr nz,l187ch		;1854	20 26 	  & 
	ld a,(iy+00dh)		;1856	fd 7e 0d 	. ~ . 
	dec b			;1859	05 	. 
	jp m,l185eh		;185a	fa 5e 18 	. ^ . 
	pop af			;185d	f1 	. 
l185eh:
	ld l,a			;185e	6f 	o 
	cp h			;185f	bc 	. 
	jr c,l181bh		;1860	38 b9 	8 . 
	ld a,(06da2h)		;1862	3a a2 6d 	: . m 
	ld c,a			;1865	4f 	O 
	ld a,l			;1866	7d 	} 
	cp c			;1867	b9 	. 
	jr nc,l181bh		;1868	30 b1 	0 . 
	ld a,h			;186a	7c 	| 
	cp 002h		;186b	fe 02 	. . 
	jr c,l181bh		;186d	38 ac 	8 . 
l186fh:
	ld (iy+00dh),l		;186f	fd 75 0d 	. u . 
	ld (iy+00ch),h		;1872	fd 74 0c 	. t . 
	ld a,001h		;1875	3e 01 	> . 
	call sub_1f30h		;1877	cd 30 1f 	. 0 . 
	jr l181bh		;187a	18 9f 	. . 
l187ch:
	cp 056h		;187c	fe 56 	. V 
	jr nz,l1885h		;187e	20 05 	  . 
	ld hl,l0018h+1		;1880	21 19 00 	! . . 
	jr l186fh		;1883	18 ea 	. . 
l1885h:
	cp 075h		;1885	fe 75 	. u 
	jr nz,l18c6h		;1887	20 3d 	  = 
	ld a,b			;1889	78 	x 
	or a			;188a	b7 	. 
	jr nz,l181bh		;188b	20 8e 	  . 
	ld (06e76h),a		;188d	32 76 6e 	2 v n 
	ld de,l18bfh		;1890	11 bf 18 	. . . 
	ld hl,(07220h)		;1893	2a 20 72 	*   r 
	ld (07220h),de		;1896	ed 53 20 72 	. S   r 
	push hl			;189a	e5 	. 
	ld a,(06d5bh)		;189b	3a 5b 6d 	: [ m 
	cp 07fh		;189e	fe 7f 	.  
	call nz,l0d9ah		;18a0	c4 9a 0d 	. . . 
l18a3h:
	ld bc,01388h		;18a3	01 88 13 	. . . 
l18a6h:
	ld a,(06e76h)		;18a6	3a 76 6e 	: v n 
	or a			;18a9	b7 	. 
	jr nz,l18b5h		;18aa	20 09 	  . 
	dec bc			;18ac	0b 	. 
	inc b			;18ad	04 	. 
	djnz l18a6h		;18ae	10 f6 	. . 
	call sub_0c84h		;18b0	cd 84 0c 	. . . 
	jr l18a3h		;18b3	18 ee 	. . 
l18b5h:
	pop hl			;18b5	e1 	. 
	ld (07220h),hl		;18b6	22 20 72 	"   r 
l18b9h:
	ld hl,0781ch		;18b9	21 1c 78 	! . x 
	ld (hl),029h		;18bc	36 29 	6 ) 
	ret			;18be	c9 	. 
l18bfh:
	ld hl,06e76h		;18bf	21 76 6e 	! v n 
	dec (hl)			;18c2	35 	5 
	jp l00c2h		;18c3	c3 c2 00 	. . . 
l18c6h:
	ld c,a			;18c6	4f 	O 
	ld a,b			;18c7	78 	x 
	dec a			;18c8	3d 	= 
	jp nz,l181bh		;18c9	c2 1b 18 	. . . 
	ld a,c			;18cc	79 	y 
	cp 074h		;18cd	fe 74 	. t 
	jr nz,l18eeh		;18cf	20 1d 	  . 
	pop af			;18d1	f1 	. 
	bit 0,a		;18d2	cb 47 	. G 
	jr z,l18dch		;18d4	28 06 	( . 
	ld hl,l0000h+2		;18d6	21 02 00 	! . . 
	call l068ah		;18d9	cd 8a 06 	. . . 
l18dch:
	srl a		;18dc	cb 3f 	. ? 
	or a			;18de	b7 	. 
	ret z			;18df	c8 	. 
	ld b,a			;18e0	47 	G 
l18e1h:
	ld hl,l0003h+2		;18e1	21 05 00 	! . . 
	call l068ah		;18e4	cd 8a 06 	. . . 
	call sub_0c84h		;18e7	cd 84 0c 	. . . 
	djnz l18e1h		;18ea	10 f5 	. . 
	jr l18b9h		;18ec	18 cb 	. . 
l18eeh:
	cp 040h		;18ee	fe 40 	. @ 
	jp z,l197dh		;18f0	ca 7d 19 	. } . 
	cp 041h		;18f3	fe 41 	. A 
	jr nz,l1923h		;18f5	20 2c 	  , 
	pop af			;18f7	f1 	. 
	cp 007h		;18f8	fe 07 	. . 
	ret nc			;18fa	d0 	. 
	add a,a			;18fb	87 	. 
	ld e,a			;18fc	5f 	_ 
	ld d,000h		;18fd	16 00 	. . 
	bit 0,(iy+000h)		;18ff	fd cb 00 46 	. . . F 
	jr z,l190ch		;1903	28 07 	( . 
	call sub_1f5bh		;1905	cd 5b 1f 	. [ . 
	ld hl,l1da5h		;1908	21 a5 1d 	! . . 
	push hl			;190b	e5 	. 
l190ch:
	ld hl,l1915h		;190c	21 15 19 	! . . 
	add hl,de			;190f	19 	. 
	ld e,(hl)			;1910	5e 	^ 
	inc hl			;1911	23 	# 
	ld d,(hl)			;1912	56 	V 
	ex de,hl			;1913	eb 	. 
	jp (hl)			;1914	e9 	. 
l1915h:
	jr nc,l1943h		;1915	30 2c 	0 , 
	inc (hl)			;1917	34 	4 
	inc l			;1918	2c 	, 
	ld a,(l3e2ch)		;1919	3a 2c 3e 	: , > 
	inc l			;191c	2c 	, 
	ld b,d			;191d	42 	B 
	inc l			;191e	2c 	, 
	ld b,(hl)			;191f	46 	F 
	inc l			;1920	2c 	, 
	ld c,d			;1921	4a 	J 
	inc l			;1922	2c 	, 
l1923h:
	cp 060h		;1923	fe 60 	. ` 
	jr z,l1998h		;1925	28 71 	( q 
	ld c,a			;1927	4f 	O 
	cp 050h		;1928	fe 50 	. P 
	jr z,l1955h		;192a	28 29 	( ) 
	cp 051h		;192c	fe 51 	. Q 
	jr z,l1955h		;192e	28 25 	( % 
	cp 053h		;1930	fe 53 	. S 
	jr z,l1939h		;1932	28 05 	( . 
	cp 054h		;1934	fe 54 	. T 
	jp nz,l181bh		;1936	c2 1b 18 	. . . 
l1939h:
	pop af			;1939	f1 	. 
	cp 002h		;193a	fe 02 	. . 
	ret nz			;193c	c0 	. 
	bit 0,(iy+000h)		;193d	fd cb 00 46 	. . . F 
	jr z,l194dh		;1941	28 0a 	( . 
l1943h:
	call sub_1f5bh		;1943	cd 5b 1f 	. [ . 
	ld hl,l1da5h		;1946	21 a5 1d 	! . . 
	push hl			;1949	e5 	. 
	call sub_1f2dh		;194a	cd 2d 1f 	. - . 
l194dh:
	bit 0,c		;194d	cb 41 	. A 
	jp nz,l2dd6h		;194f	c2 d6 2d 	. . - 
	jp l2dd2h		;1952	c3 d2 2d 	. . - 
l1955h:
	pop af			;1955	f1 	. 
	cp 001h		;1956	fe 01 	. . 
	ret nz			;1958	c0 	. 
	ld a,(iy+000h)		;1959	fd 7e 00 	. ~ . 
	push af			;195c	f5 	. 
	ld a,004h		;195d	3e 04 	> . 
	ld (iy+000h),a		;195f	fd 77 00 	. w . 
	bit 0,c		;1962	cb 41 	. A 
	jr z,l196bh		;1964	28 05 	( . 
	call sub_2de0h		;1966	cd e0 2d 	. . - 
	jr l196eh		;1969	18 03 	. . 
l196bh:
	call sub_2de4h		;196b	cd e4 2d 	. . - 
l196eh:
	pop af			;196e	f1 	. 
	ld (iy+000h),a		;196f	fd 77 00 	. w . 
sub_1972h:
	ld a,(iy+008h)		;1972	fd 7e 08 	. ~ . 
	dec a			;1975	3d 	= 
	jp nz,sub_1f30h		;1976	c2 30 1f 	. 0 . 
	inc a			;1979	3c 	< 
	jp sub_1f30h		;197a	c3 30 1f 	. 0 . 
l197dh:
	pop af			;197d	f1 	. 
	ld c,008h		;197e	0e 08 	. . 
	or a			;1980	b7 	. 
	jr z,l1994h		;1981	28 11 	( . 
	ld c,000h		;1983	0e 00 	. . 
	cp 001h		;1985	fe 01 	. . 
	jr z,l1994h		;1987	28 0b 	( . 
	ld c,018h		;1989	0e 18 	. . 
	cp 002h		;198b	fe 02 	. . 
	jr z,l1994h		;198d	28 05 	( . 
	ld c,010h		;198f	0e 10 	. . 
	cp 003h		;1991	fe 03 	. . 
	ret nz			;1993	c0 	. 
l1994h:
	ld (iy+00eh),c		;1994	fd 71 0e 	. q . 
	ret			;1997	c9 	. 
l1998h:
	pop af			;1998	f1 	. 
l1999h:
	call sub_1f5bh		;1999	cd 5b 1f 	. [ . 
	ld hl,sub_1f5bh		;199c	21 5b 1f 	! [ . 
	push hl			;199f	e5 	. 
	ld l,(iy+008h)		;19a0	fd 6e 08 	. n . 
	ld h,(iy+007h)		;19a3	fd 66 07 	. f . 
	or a			;19a6	b7 	. 
	jr nz,l19afh		;19a7	20 06 	  . 
	push hl			;19a9	e5 	. 
	call sub_27bch		;19aa	cd bc 27 	. . ' 
	jr l19c8h		;19ad	18 19 	. . 
l19afh:
	cp 001h		;19af	fe 01 	. . 
	jr z,l19c4h		;19b1	28 11 	( . 
	cp 002h		;19b3	fe 02 	. . 
	jr nz,l19bch		;19b5	20 05 	  . 
	set 7,(iy+00bh)		;19b7	fd cb 0b fe 	. . . . 
	ret			;19bb	c9 	. 
l19bch:
	cp 003h		;19bc	fe 03 	. . 
	ret nz			;19be	c0 	. 
	res 7,(iy+00bh)		;19bf	fd cb 0b be 	. . . . 
	ret			;19c3	c9 	. 
l19c4h:
	push hl			;19c4	e5 	. 
	call sub_28aah		;19c5	cd aa 28 	. . ( 
l19c8h:
	pop hl			;19c8	e1 	. 
	srl h		;19c9	cb 3c 	. < 
	srl h		;19cb	cb 3c 	. < 
	jp l1342h		;19cd	c3 42 13 	. B . 
l19d0h:
	xor a			;19d0	af 	. 
	jr l1999h		;19d1	18 c6 	. . 
l19d3h:
	ld a,001h		;19d3	3e 01 	> . 
	jr l1999h		;19d5	18 c2 	. . 
l19d7h:
	call l12e4h		;19d7	cd e4 12 	. . . 
	cp 020h		;19da	fe 20 	.   
	jp z,l1addh		;19dc	ca dd 1a 	. . . 
	jr c,l19f3h		;19df	38 12 	8 . 
	ld hl,06e80h		;19e1	21 80 6e 	! . n 
	set 6,(hl)		;19e4	cb f6 	. . 
	ld c,a			;19e6	4f 	O 
	call l12e4h		;19e7	cd e4 12 	. . . 
	cp 030h		;19ea	fe 30 	. 0 
	jr z,l1a11h		;19ec	28 23 	( # 
l19eeh:
	ld b,a			;19ee	47 	G 
	call sub_1f3dh		;19ef	cd 3d 1f 	. = . 
	ld a,b			;19f2	78 	x 
l19f3h:
	jp l13d0h		;19f3	c3 d0 13 	. . . 
l19f6h:
	call sub_1aaah		;19f6	cd aa 1a 	. . . 
	jr z,l1a07h		;19f9	28 0c 	( . 
l19fbh:
	call sub_1a7fh		;19fb	cd 7f 1a 	.  . 
	jr nz,l19f6h		;19fe	20 f6 	  . 
	call sub_1aaah		;1a00	cd aa 1a 	. . . 
	jr z,l1a0ch		;1a03	28 07 	( . 
	jr l19eeh		;1a05	18 e7 	. . 
l1a07h:
	ld a,020h		;1a07	3e 20 	>   
	call sub_1a7fh		;1a09	cd 7f 1a 	.  . 
l1a0ch:
	ld a,b			;1a0c	78 	x 
	cp 030h		;1a0d	fe 30 	. 0 
	jr nz,l1a55h		;1a0f	20 44 	  D 
l1a11h:
	ld a,c			;1a11	79 	y 
	cp 07fh		;1a12	fe 7f 	.  
	jr nc,l19eeh		;1a14	30 d8 	0 . 
	call sub_1ac9h		;1a16	cd c9 1a 	. . . 
	inc c			;1a19	0c 	. 
	ld a,(06d77h)		;1a1a	3a 77 6d 	: w m 
	ld b,a			;1a1d	47 	G 
	and 078h		;1a1e	e6 78 	. x 
	cp 038h		;1a20	fe 38 	. 8 
	jr z,l1a28h		;1a22	28 04 	( . 
	cp 068h		;1a24	fe 68 	. h 
	jr nz,l1a36h		;1a26	20 0e 	  . 
l1a28h:
	inc c			;1a28	0c 	. 
	ld a,c			;1a29	79 	y 
	cp 080h		;1a2a	fe 80 	. . 
	jr z,l19eeh		;1a2c	28 c0 	( . 
	push hl			;1a2e	e5 	. 
	ld de,l0018h+1		;1a2f	11 19 00 	. . . 
	add hl,de			;1a32	19 	. 
	ld (hl),020h		;1a33	36 20 	6   
	pop hl			;1a35	e1 	. 
l1a36h:
	ld (hl),b			;1a36	70 	p 
	inc hl			;1a37	23 	# 
	ld a,b			;1a38	78 	x 
	and 00fh		;1a39	e6 0f 	. . 
	jr z,l19eeh		;1a3b	28 b1 	( . 
	bit 4,b		;1a3d	cb 60 	. ` 
	jr z,l1a42h		;1a3f	28 01 	( . 
	add a,a			;1a41	87 	. 
l1a42h:
	push hl			;1a42	e5 	. 
	exx			;1a43	d9 	. 
	pop hl			;1a44	e1 	. 
	ld b,000h		;1a45	06 00 	. . 
	ld c,a			;1a47	4f 	O 
	add hl,bc			;1a48	09 	. 
	push hl			;1a49	e5 	. 
	add hl,bc			;1a4a	09 	. 
	ld d,h			;1a4b	54 	T 
	ld e,l			;1a4c	5d 	] 
	add hl,bc			;1a4d	09 	. 
	ld b,h			;1a4e	44 	D 
	ld c,l			;1a4f	4d 	M 
	pop hl			;1a50	e1 	. 
	exx			;1a51	d9 	. 
	ld d,a			;1a52	57 	W 
	jr l1a65h		;1a53	18 10 	. . 
l1a55h:
	exx			;1a55	d9 	. 
	push hl			;1a56	e5 	. 
	cp 031h		;1a57	fe 31 	. 1 
	jr z,l1a63h		;1a59	28 08 	( . 
	pop hl			;1a5b	e1 	. 
	push de			;1a5c	d5 	. 
	cp 032h		;1a5d	fe 32 	. 2 
	jr z,l1a63h		;1a5f	28 02 	( . 
	pop de			;1a61	d1 	. 
	push bc			;1a62	c5 	. 
l1a63h:
	exx			;1a63	d9 	. 
	pop hl			;1a64	e1 	. 
l1a65h:
	ld e,d			;1a65	5a 	Z 
	ex af,af'			;1a66	08 	. 
	xor a			;1a67	af 	. 
	ex af,af'			;1a68	08 	. 
l1a69h:
	call sub_1aaah		;1a69	cd aa 1a 	. . . 
	jr nz,l19fbh		;1a6c	20 8d 	  . 
	cp 030h		;1a6e	fe 30 	. 0 
	jr z,l1a11h		;1a70	28 9f 	( . 
	and 003h		;1a72	e6 03 	. . 
	cp 003h		;1a74	fe 03 	. . 
	jr nz,l1a79h		;1a76	20 01 	  . 
	inc a			;1a78	3c 	< 
l1a79h:
	ld b,a			;1a79	47 	G 
	ex af,af'			;1a7a	08 	. 
	or b			;1a7b	b0 	. 
	ex af,af'			;1a7c	08 	. 
	jr l1a69h		;1a7d	18 ea 	. . 
sub_1a7fh:
	push af			;1a7f	f5 	. 
	ld a,(06d74h)		;1a80	3a 74 6d 	: t m 
	call l06b0h		;1a83	cd b0 06 	. . . 
	pop af			;1a86	f1 	. 
	ld (hl),a			;1a87	77 	w 
	inc hl			;1a88	23 	# 
	ex af,af'			;1a89	08 	. 
	or a			;1a8a	b7 	. 
	jr z,l1aa7h		;1a8b	28 1a 	( . 
	exx			;1a8d	d9 	. 
	bit 0,a		;1a8e	cb 47 	. G 
	jr z,l1a96h		;1a90	28 04 	( . 
	ex af,af'			;1a92	08 	. 
	ld (hl),a			;1a93	77 	w 
	inc hl			;1a94	23 	# 
	ex af,af'			;1a95	08 	. 
l1a96h:
	bit 1,a		;1a96	cb 4f 	. O 
	jr z,l1a9eh		;1a98	28 04 	( . 
	ex af,af'			;1a9a	08 	. 
	ld (de),a			;1a9b	12 	. 
	inc de			;1a9c	13 	. 
	ex af,af'			;1a9d	08 	. 
l1a9eh:
	bit 2,a		;1a9e	cb 57 	. W 
	jr z,l1aa6h		;1aa0	28 04 	( . 
	ex af,af'			;1aa2	08 	. 
	ld (bc),a			;1aa3	02 	. 
	inc bc			;1aa4	03 	. 
	ex af,af'			;1aa5	08 	. 
l1aa6h:
	exx			;1aa6	d9 	. 
l1aa7h:
	ex af,af'			;1aa7	08 	. 
	dec e			;1aa8	1d 	. 
	ret			;1aa9	c9 	. 
sub_1aaah:
	call l12e4h		;1aaa	cd e4 12 	. . . 
	ld b,a			;1aad	47 	G 
	cp 020h		;1aae	fe 20 	.   
	jr c,l1abch		;1ab0	38 0a 	8 . 
	cp 080h		;1ab2	fe 80 	. . 
	jr nc,l1abch		;1ab4	30 06 	0 . 
	and 0f0h		;1ab6	e6 f0 	. . 
	cp 030h		;1ab8	fe 30 	. 0 
	ld a,b			;1aba	78 	x 
	ret			;1abb	c9 	. 
l1abch:
	ld a,e			;1abc	7b 	{ 
	or a			;1abd	b7 	. 
	jr z,l1ac5h		;1abe	28 05 	( . 
	ld a,020h		;1ac0	3e 20 	>   
	call sub_1a7fh		;1ac2	cd 7f 1a 	.  . 
l1ac5h:
	ld a,b			;1ac5	78 	x 
	jp l19eeh		;1ac6	c3 ee 19 	. . . 
sub_1ac9h:
	ld hl,(06d75h)		;1ac9	2a 75 6d 	* u m 
	sub 021h		;1acc	d6 21 	. ! 
	jr z,l1ad7h		;1ace	28 07 	( . 
	ld b,a			;1ad0	47 	G 
	ld de,l0018h+1		;1ad1	11 19 00 	. . . 
l1ad4h:
	add hl,de			;1ad4	19 	. 
	djnz l1ad4h		;1ad5	10 fd 	. . 
l1ad7h:
	ld a,(06d74h)		;1ad7	3a 74 6d 	: t m 
	jp l06b0h		;1ada	c3 b0 06 	. . . 
l1addh:
	call l12e4h		;1add	cd e4 12 	. . . 
	cp 020h		;1ae0	fe 20 	.   
	jr c,l1b59h		;1ae2	38 75 	8 u 
	cp 030h		;1ae4	fe 30 	. 0 
	jr nc,l1b13h		;1ae6	30 2b 	0 + 
	bit 3,a		;1ae8	cb 5f 	. _ 
	jr z,l1b02h		;1aea	28 16 	( . 
	ld hl,(06d75h)		;1aec	2a 75 6d 	* u m 
	ld a,(06d74h)		;1aef	3a 74 6d 	: t m 
	call l06b0h		;1af2	cd b0 06 	. . . 
	ld (hl),000h		;1af5	36 00 	6 . 
	ld d,h			;1af7	54 	T 
	ld e,l			;1af8	5d 	] 
	inc de			;1af9	13 	. 
	ld bc,l092dh		;1afa	01 2d 09 	. - . 
	ldir		;1afd	ed b0 	. . 
	call sub_1f3dh		;1aff	cd 3d 1f 	. = . 
l1b02h:
	call l12e4h		;1b02	cd e4 12 	. . . 
	cp 020h		;1b05	fe 20 	.   
	jr nz,l1b59h		;1b07	20 50 	  P 
	call l12e4h		;1b09	cd e4 12 	. . . 
	cp 040h		;1b0c	fe 40 	. @ 
	jr nz,l1b59h		;1b0e	20 49 	  I 
	call l12e4h		;1b10	cd e4 12 	. . . 
l1b13h:
	cp 040h		;1b13	fe 40 	. @ 
	jr c,l1b59h		;1b15	38 42 	8 B 
	cp 050h		;1b17	fe 50 	. P 
	jr nc,l1b59h		;1b19	30 3e 	0 > 
	ld b,09ch		;1b1b	06 9c 	. . 
	cp 046h		;1b1d	fe 46 	. F 
	jr z,l1b3fh		;1b1f	28 1e 	( . 
	ld b,09ah		;1b21	06 9a 	. . 
	cp 047h		;1b23	fe 47 	. G 
	jr z,l1b3fh		;1b25	28 18 	( . 
	ld b,08ch		;1b27	06 8c 	. . 
	cp 04ah		;1b29	fe 4a 	. J 
	jr z,l1b3fh		;1b2b	28 12 	( . 
	ld b,08ah		;1b2d	06 8a 	. . 
	cp 04bh		;1b2f	fe 4b 	. K 
	jr z,l1b3fh		;1b31	28 0c 	( . 
	ld b,085h		;1b33	06 85 	. . 
	cp 04ch		;1b35	fe 4c 	. L 
	jr z,l1b3fh		;1b37	28 06 	( . 
	ld b,086h		;1b39	06 86 	. . 
	cp 04fh		;1b3b	fe 4f 	. O 
	jr nz,l1b59h		;1b3d	20 1a 	  . 
l1b3fh:
	call l12e4h		;1b3f	cd e4 12 	. . . 
	cp 041h		;1b42	fe 41 	. A 
	jr z,l1b52h		;1b44	28 0c 	( . 
	set 5,b		;1b46	cb e8 	. . 
	cp 042h		;1b48	fe 42 	. B 
	jr z,l1b52h		;1b4a	28 06 	( . 
	set 6,b		;1b4c	cb f0 	. . 
	cp 044h		;1b4e	fe 44 	. D 
	jr nz,l1b59h		;1b50	20 07 	  . 
l1b52h:
	ld hl,06d77h		;1b52	21 77 6d 	! w m 
	ld (hl),b			;1b55	70 	p 
	call l12e4h		;1b56	cd e4 12 	. . . 
l1b59h:
	jp l13d0h		;1b59	c3 d0 13 	. . . 
l1b5ch:
	call l12e4h		;1b5c	cd e4 12 	. . . 
	cp 020h		;1b5f	fe 20 	.   
	jr nz,l1bd4h		;1b61	20 71 	  q 
	res 2,(iy+00bh)		;1b63	fd cb 0b 96 	. . . . 
	call l12e4h		;1b67	cd e4 12 	. . . 
	cp 022h		;1b6a	fe 22 	. " 
	jr nz,l1be0h		;1b6c	20 72 	  r 
	set 2,(iy+00bh)		;1b6e	fd cb 0b d6 	. . . . 
	jr l1be0h		;1b72	18 6c 	. l 
sub_1b74h:
	call sub_1c4dh		;1b74	cd 4d 1c 	. M . 
	ld hl,06d97h		;1b77	21 97 6d 	! . m 
	ld a,008h		;1b7a	3e 08 	> . 
	ld b,004h		;1b7c	06 04 	. . 
l1b7eh:
	ld (hl),a			;1b7e	77 	w 
	inc hl			;1b7f	23 	# 
	inc a			;1b80	3c 	< 
	djnz l1b7eh		;1b81	10 fb 	. . 
	ret			;1b83	c9 	. 
l1b84h:
	call sub_1b74h		;1b84	cd 74 1b 	. t . 
	call sub_1f3dh		;1b87	cd 3d 1f 	. = . 
	jr l1be3h		;1b8a	18 57 	. W 
l1b8ch:
	call sub_1c2ch		;1b8c	cd 2c 1c 	. , . 
	bit 2,(iy+00bh)		;1b8f	fd cb 0b 56 	. . . V 
	jr nz,l1c09h		;1b93	20 74 	  t 
	ld c,a			;1b95	4f 	O 
	ld a,b			;1b96	78 	x 
	sub 011h		;1b97	d6 11 	. . 
	ld b,a			;1b99	47 	G 
	ld a,c			;1b9a	79 	y 
l1b9bh:
	cp 040h		;1b9b	fe 40 	. @ 
	jr c,l1be0h		;1b9d	38 41 	8 A 
	cp 080h		;1b9f	fe 80 	. . 
	jr nc,l1be0h		;1ba1	30 3d 	0 = 
	inc b			;1ba3	04 	. 
	ld de,l0000h		;1ba4	11 00 00 	. . . 
	ld c,d			;1ba7	4a 	J 
	push bc			;1ba8	c5 	. 
	push af			;1ba9	f5 	. 
	ld a,b			;1baa	78 	x 
	and 0f0h		;1bab	e6 f0 	. . 
	jr nz,l1be3h		;1bad	20 34 	  4 
	ld a,b			;1baf	78 	x 
	xor 008h		;1bb0	ee 08 	. . 
	ld b,a			;1bb2	47 	G 
	call l12e4h		;1bb3	cd e4 12 	. . . 
	cp 040h		;1bb6	fe 40 	. @ 
	jr c,l1be0h		;1bb8	38 26 	8 & 
	cp 080h		;1bba	fe 80 	. . 
	jr nc,l1be0h		;1bbc	30 22 	0 " 
	call sub_1c43h		;1bbe	cd 43 1c 	. C . 
	call sub_1c43h		;1bc1	cd 43 1c 	. C . 
	pop af			;1bc4	f1 	. 
	call sub_1c43h		;1bc5	cd 43 1c 	. C . 
	call sub_1c43h		;1bc8	cd 43 1c 	. C . 
	call l1be6h		;1bcb	cd e6 1b 	. . . 
	pop bc			;1bce	c1 	. 
	call l12e4h		;1bcf	cd e4 12 	. . . 
	jr l1b9bh		;1bd2	18 c7 	. . 
l1bd4h:
	cp 021h		;1bd4	fe 21 	. ! 
	jr z,l1b84h		;1bd6	28 ac 	( . 
	cp 030h		;1bd8	fe 30 	. 0 
	jr c,l1be0h		;1bda	38 04 	8 . 
	cp 03ah		;1bdc	fe 3a 	. : 
	jr c,l1b8ch		;1bde	38 ac 	8 . 
l1be0h:
	jp l13d0h		;1be0	c3 d0 13 	. . . 
l1be3h:
	jp l13cdh		;1be3	c3 cd 13 	. . . 
l1be6h:
	ld a,(06da1h)		;1be6	3a a1 6d 	: . m 
	push af			;1be9	f5 	. 
	call sub_06b7h		;1bea	cd b7 06 	. . . 
	ld a,c			;1bed	79 	y 
	add a,b			;1bee	80 	. 
	xor 0f0h		;1bef	ee f0 	. . 
	call sub_296fh		;1bf1	cd 6f 29 	. o ) 
	call sub_1c7ch		;1bf4	cd 7c 1c 	. | . 
	ld a,d			;1bf7	7a 	z 
	add a,b			;1bf8	80 	. 
	xor 0f0h		;1bf9	ee f0 	. . 
	call sub_1c83h		;1bfb	cd 83 1c 	. . . 
	ld a,e			;1bfe	7b 	{ 
	add a,b			;1bff	80 	. 
l1c00h:
	xor 0f0h		;1c00	ee f0 	. . 
	call sub_1c8ah		;1c02	cd 8a 1c 	. . . 
	pop af			;1c05	f1 	. 
	jp l06b0h		;1c06	c3 b0 06 	. . . 
l1c09h:
	cp 040h		;1c09	fe 40 	. @ 
	jr c,l1be0h		;1c0b	38 d3 	8 . 
	cp 060h		;1c0d	fe 60 	. ` 
	jr nc,l1be0h		;1c0f	30 cf 	0 . 
	ld d,a			;1c11	57 	W 
	ld a,b			;1c12	78 	x 
	and 0fch		;1c13	e6 fc 	. . 
	jr nz,l1be3h		;1c15	20 cc 	  . 
	ld hl,06d97h		;1c17	21 97 6d 	! . m 
	ld a,l			;1c1a	7d 	} 
	add a,b			;1c1b	80 	. 
	ld l,a			;1c1c	6f 	o 
	ld a,d			;1c1d	7a 	z 
	and 01fh		;1c1e	e6 1f 	. . 
	xor 008h		;1c20	ee 08 	. . 
	ld (hl),a			;1c22	77 	w 
	call sub_1f3dh		;1c23	cd 3d 1f 	. = . 
	inc b			;1c26	04 	. 
	call l12e4h		;1c27	cd e4 12 	. . . 
	jr l1c09h		;1c2a	18 dd 	. . 
sub_1c2ch:
	and 00fh		;1c2c	e6 0f 	. . 
	ld b,a			;1c2e	47 	G 
	call l12e4h		;1c2f	cd e4 12 	. . . 
	cp 03ah		;1c32	fe 3a 	. : 
	ret nc			;1c34	d0 	. 
	cp 030h		;1c35	fe 30 	. 0 
	jr c,l1be0h		;1c37	38 a7 	8 . 
	and 00fh		;1c39	e6 0f 	. . 
l1c3bh:
	add a,00ah		;1c3b	c6 0a 	. . 
	djnz l1c3bh		;1c3d	10 fc 	. . 
	ld b,a			;1c3f	47 	G 
	jp l12e4h		;1c40	c3 e4 12 	. . . 
sub_1c43h:
	rra			;1c43	1f 	. 
	rr e		;1c44	cb 1b 	. . 
	rra			;1c46	1f 	. 
	rr d		;1c47	cb 1a 	. . 
	rra			;1c49	1f 	. 
	rr c		;1c4a	cb 19 	. . 
	ret			;1c4c	c9 	. 
sub_1c4dh:
	call sub_06b7h		;1c4d	cd b7 06 	. . . 
	call sub_296fh		;1c50	cd 6f 29 	. o ) 
	ld b,010h		;1c53	06 10 	. . 
l1c55h:
	ld a,0f0h		;1c55	3e f0 	> . 
	dec b			;1c57	05 	. 
	add a,b			;1c58	80 	. 
	ld c,a			;1c59	4f 	O 
	ld d,a			;1c5a	57 	W 
	ld e,a			;1c5b	5f 	_ 
	ld a,b			;1c5c	78 	x 
	bit 0,b		;1c5d	cb 40 	. @ 
	jr z,l1c62h		;1c5f	28 01 	( . 
	ld c,a			;1c61	4f 	O 
l1c62h:
	bit 1,b		;1c62	cb 48 	. H 
	jr z,l1c67h		;1c64	28 01 	( . 
	ld d,a			;1c66	57 	W 
l1c67h:
	bit 2,b		;1c67	cb 50 	. P 
	jr z,l1c6ch		;1c69	28 01 	( . 
	ld e,a			;1c6b	5f 	_ 
l1c6ch:
	ld a,c			;1c6c	79 	y 
	call sub_1c7ch		;1c6d	cd 7c 1c 	. | . 
	ld a,d			;1c70	7a 	z 
	call sub_1c83h		;1c71	cd 83 1c 	. . . 
	ld a,e			;1c74	7b 	{ 
	call sub_1c8ah		;1c75	cd 8a 1c 	. . . 
	inc b			;1c78	04 	. 
	djnz l1c55h		;1c79	10 da 	. . 
	ret			;1c7b	c9 	. 
sub_1c7ch:
	out (0f0h),a		;1c7c	d3 f0 	. . 
	ld hl,0aa00h		;1c7e	21 00 aa 	! . . 
	jr l1c8fh		;1c81	18 0c 	. . 
sub_1c83h:
	out (0e8h),a		;1c83	d3 e8 	. . 
	ld hl,0aa10h		;1c85	21 10 aa 	! . . 
	jr l1c8fh		;1c88	18 05 	. . 
sub_1c8ah:
	out (0e0h),a		;1c8a	d3 e0 	. . 
	ld hl,0aa20h		;1c8c	21 20 aa 	!   . 
l1c8fh:
	push de			;1c8f	d5 	. 
	ld e,b			;1c90	58 	X 
	ld d,000h		;1c91	16 00 	. . 
	add hl,de			;1c93	19 	. 
	and 0f0h		;1c94	e6 f0 	. . 
	ld (hl),a			;1c96	77 	w 
	pop de			;1c97	d1 	. 
	ret			;1c98	c9 	. 
sub_1c99h:
	cp 020h		;1c99	fe 20 	.   
	jp nc,l1f81h		;1c9b	d2 81 1f 	. . . 
	cp 01eh		;1c9e	fe 1e 	. . 
	jr z,l1d07h		;1ca0	28 65 	( e 
	call sub_1f5bh		;1ca2	cd 5b 1f 	. [ . 
	cp 011h		;1ca5	fe 11 	. . 
	jr nz,l1cb0h		;1ca7	20 07 	  . 
	set 0,(iy+010h)		;1ca9	fd cb 10 c6 	. . . . 
	jp l1f60h		;1cad	c3 60 1f 	. ` . 
l1cb0h:
	cp 014h		;1cb0	fe 14 	. . 
	jr nz,l1cb9h		;1cb2	20 05 	  . 
	res 0,(iy+010h)		;1cb4	fd cb 10 86 	. . . . 
	ret			;1cb8	c9 	. 
l1cb9h:
	ld hl,sub_1f5bh		;1cb9	21 5b 1f 	! [ . 
	push hl			;1cbc	e5 	. 
	cp 00dh		;1cbd	fe 0d 	. . 
	jp z,l1ed5h		;1cbf	ca d5 1e 	. . . 
	cp 00ah		;1cc2	fe 0a 	. . 
	jp z,l1e07h		;1cc4	ca 07 1e 	. . . 
	cp 00ch		;1cc7	fe 0c 	. . 
	jr z,l1d17h		;1cc9	28 4c 	( L 
	cp 008h		;1ccb	fe 08 	. . 
	jp z,l1eadh		;1ccd	ca ad 1e 	. . . 
	cp 018h		;1cd0	fe 18 	. . 
	jp z,l1ee7h		;1cd2	ca e7 1e 	. . . 
	cp 009h		;1cd5	fe 09 	. . 
	jp z,l1da9h		;1cd7	ca a9 1d 	. . . 
	cp 00bh		;1cda	fe 0b 	. . 
	ret nz			;1cdc	c0 	. 
sub_1cddh:
	ld d,(iy+00ch)		;1cdd	fd 56 0c 	. V . 
	ld a,(iy+008h)		;1ce0	fd 7e 08 	. ~ . 
	bit 7,(iy+00bh)		;1ce3	fd cb 0b 7e 	. . . ~ 
	jr nz,l1d01h		;1ce7	20 18 	  . 
l1ce9h:
	ld d,001h		;1ce9	16 01 	. . 
	cp d			;1ceb	ba 	. 
	jr nz,l1cf7h		;1cec	20 09 	  . 
	bit 1,(iy+010h)		;1cee	fd cb 10 4e 	. . . N 
	ret nz			;1cf2	c0 	. 
	ld a,(06da2h)		;1cf3	3a a2 6d 	: . m 
	inc a			;1cf6	3c 	< 
l1cf7h:
	dec a			;1cf7	3d 	= 
l1cf8h:
	ld (iy+008h),a		;1cf8	fd 77 08 	. w . 
	call sub_1f41h		;1cfb	cd 41 1f 	. A . 
	jp l1e3bh		;1cfe	c3 3b 1e 	. ; . 
l1d01h:
	cp d			;1d01	ba 	. 
	jr nz,l1ce9h		;1d02	20 e5 	  . 
	jp sub_28aah		;1d04	c3 aa 28 	. . ( 
l1d07h:
	ld a,(07221h)		;1d07	3a 21 72 	: ! r 
	or a			;1d0a	b7 	. 
	ld hl,07ea2h		;1d0b	21 a2 7e 	! . ~ 
	call z,07ea2h		;1d0e	cc a2 7e 	. . ~ 
sub_1d11h:
	ld hl,l0100h+1		;1d11	21 01 01 	! . . 
	jp l132bh		;1d14	c3 2b 13 	. + . 
l1d17h:
	ld hl,06d5ah		;1d17	21 5a 6d 	! Z m 
	bit 0,(hl)		;1d1a	cb 46 	. F 
	jr nz,l1d8dh		;1d1c	20 6f 	  o 
	call sub_06aeh		;1d1e	cd ae 06 	. . . 
	exx			;1d21	d9 	. 
	ld hl,08410h		;1d22	21 10 84 	! . . 
	ld e,000h		;1d25	1e 00 	. . 
	ld a,(06d73h)		;1d27	3a 73 6d 	: s m 
	ld d,a			;1d2a	57 	W 
	exx			;1d2b	d9 	. 
	ld hl,07802h		;1d2c	21 02 78 	! . x 
	ld c,028h		;1d2f	0e 28 	. ( 
l1d31h:
	push hl			;1d31	e5 	. 
	ld a,(06da2h)		;1d32	3a a2 6d 	: . m 
	ld b,a			;1d35	47 	G 
l1d36h:
	ld d,h			;1d36	54 	T 
	bit 7,(hl)		;1d37	cb 7e 	. ~ 
	jr z,l1d42h		;1d39	28 07 	( . 
	res 4,h		;1d3b	cb a4 	. . 
	bit 0,(hl)		;1d3d	cb 46 	. F 
	ld h,d			;1d3f	62 	b 
	jr z,l1d5eh		;1d40	28 1c 	( . 
l1d42h:
	ld (hl),080h		;1d42	36 80 	6 . 
	res 4,h		;1d44	cb a4 	. . 
	ld a,(06efch)		;1d46	3a fc 6e 	: . n 
	or 082h		;1d49	f6 82 	. . 
	ld (hl),a			;1d4b	77 	w 
	ld h,d			;1d4c	62 	b 
	exx			;1d4d	d9 	. 
	push hl			;1d4e	e5 	. 
	ld c,l			;1d4f	4d 	M 
	ld a,004h		;1d50	3e 04 	> . 
l1d52h:
	ld b,d			;1d52	42 	B 
l1d53h:
	ld (hl),e			;1d53	73 	s 
	inc l			;1d54	2c 	, 
	djnz l1d53h		;1d55	10 fc 	. . 
	ld l,c			;1d57	69 	i 
	inc h			;1d58	24 	$ 
	dec a			;1d59	3d 	= 
	jr nz,l1d52h		;1d5a	20 f6 	  . 
	pop hl			;1d5c	e1 	. 
	exx			;1d5d	d9 	. 
l1d5eh:
	exx			;1d5e	d9 	. 
	ld a,l			;1d5f	7d 	} 
	add a,d			;1d60	82 	. 
	ld l,a			;1d61	6f 	o 
	exx			;1d62	d9 	. 
	inc l			;1d63	2c 	, 
	djnz l1d36h		;1d64	10 d0 	. . 
	pop hl			;1d66	e1 	. 
	ld de,l0020h		;1d67	11 20 00 	.   . 
	add hl,de			;1d6a	19 	. 
	exx			;1d6b	d9 	. 
	ld l,010h		;1d6c	2e 10 	. . 
	ld a,h			;1d6e	7c 	| 
	add a,004h		;1d6f	c6 04 	. . 
	ld h,a			;1d71	67 	g 
	jr nz,l1d79h		;1d72	20 05 	  . 
	set 7,h		;1d74	cb fc 	. . 
	call sub_06b7h		;1d76	cd b7 06 	. . . 
l1d79h:
	exx			;1d79	d9 	. 
	dec c			;1d7a	0d 	. 
	jr nz,l1d31h		;1d7b	20 b4 	  . 
	ld a,(06da2h)		;1d7d	3a a2 6d 	: . m 
	ld c,a			;1d80	4f 	O 
	ld b,a			;1d81	47 	G 
	ld hl,0b3e2h		;1d82	21 e2 b3 	! . . 
l1d85h:
	res 7,(hl)		;1d85	cb be 	. . 
	inc l			;1d87	2c 	, 
	djnz l1d85h		;1d88	10 fb 	. . 
	call sub_112eh		;1d8a	cd 2e 11 	. . . 
l1d8dh:
	ld bc,l000fh		;1d8d	01 0f 00 	. . . 
	push iy		;1d90	fd e5 	. . 
	pop de			;1d92	d1 	. 
	inc de			;1d93	13 	. 
	ld hl,l0925h+1		;1d94	21 26 09 	! & . 
	ldir		;1d97	ed b0 	. . 
	res 7,(iy+011h)		;1d99	fd cb 11 be 	. . . . 
	ld a,001h		;1d9d	3e 01 	> . 
	jp l1cf8h		;1d9f	c3 f8 1c 	. . . 
l1da2h:
	call sub_1f5bh		;1da2	cd 5b 1f 	. [ . 
l1da5h:
	ld hl,sub_1f5bh		;1da5	21 5b 1f 	! [ . 
	push hl			;1da8	e5 	. 
l1da9h:
	ld a,(iy+007h)		;1da9	fd 7e 07 	. ~ . 
	add a,004h		;1dac	c6 04 	. . 
	ld l,020h		;1dae	2e 20 	.   
	jr l1dech		;1db0	18 3a 	. : 
l1db2h:
	ld hl,06d72h		;1db2	21 72 6d 	! r m 
	res 6,(hl)		;1db5	cb b6 	. . 
	bit 6,(iy+000h)		;1db7	fd cb 00 76 	. . . v 
	jr z,l1dc1h		;1dbb	28 04 	( . 
	res 5,(iy+016h)		;1dbd	fd cb 16 ae 	. . . . 
l1dc1h:
	res 5,(iy+000h)		;1dc1	fd cb 00 ae 	. . . . 
	res 4,(iy+000h)		;1dc5	fd cb 00 a6 	. . . . 
	ld hl,sub_1f5bh		;1dc9	21 5b 1f 	! [ . 
	push hl			;1dcc	e5 	. 
	ld e,(iy+016h)		;1dcd	fd 5e 16 	. ^ . 
	ld a,(iy+007h)		;1dd0	fd 7e 07 	. ~ . 
	add a,004h		;1dd3	c6 04 	. . 
	ld l,020h		;1dd5	2e 20 	.   
	bit 5,e		;1dd7	cb 6b 	. k 
	jr z,l1ddfh		;1dd9	28 04 	( . 
	add a,004h		;1ddb	c6 04 	. . 
	sla l		;1ddd	cb 25 	. % 
l1ddfh:
	ld h,a			;1ddf	67 	g 
	bit 1,(iy+000h)		;1de0	fd cb 00 4e 	. . . N 
	jr z,l1dech		;1de4	28 06 	( . 
	bit 4,e		;1de6	cb 63 	. c 
	call nz,sub_21cah		;1de8	c4 ca 21 	. . ! 
	ld a,h			;1deb	7c 	| 
l1dech:
	cp 0a4h		;1dec	fe a4 	. . 
	jr nc,l1dffh		;1dee	30 0f 	0 . 
	ld (iy+007h),a		;1df0	fd 77 07 	. w . 
	ld a,(iy+004h)		;1df3	fd 7e 04 	. ~ . 
	add a,l			;1df6	85 	. 
	ld (iy+004h),a		;1df7	fd 77 04 	. w . 
	ret nc			;1dfa	d0 	. 
	inc (iy+005h)		;1dfb	fd 34 05 	. 4 . 
	ret			;1dfe	c9 	. 
l1dffh:
	bit 1,(iy+010h)		;1dff	fd cb 10 4e 	. . . N 
	ret nz			;1e03	c0 	. 
	call l1ed5h		;1e04	cd d5 1e 	. . . 
l1e07h:
	ld e,(iy+00dh)		;1e07	fd 5e 0d 	. ^ . 
sub_1e0ah:
	ld a,(iy+004h)		;1e0a	fd 7e 04 	. ~ . 
	and 01fh		;1e0d	e6 1f 	. . 
	ld l,a			;1e0f	6f 	o 
	ld h,06dh		;1e10	26 6d 	& m 
	ld a,(hl)			;1e12	7e 	~ 
	and 01fh		;1e13	e6 1f 	. . 
	ld b,a			;1e15	47 	G 
	ld d,(iy+008h)		;1e16	fd 56 08 	. V . 
	bit 7,(iy+00bh)		;1e19	fd cb 0b 7e 	. . . ~ 
	jr z,l1e26h		;1e1d	28 07 	( . 
	ld a,e			;1e1f	7b 	{ 
	cp d			;1e20	ba 	. 
	jr nz,l1e26h		;1e21	20 03 	  . 
	jp sub_27bch		;1e23	c3 bc 27 	. . ' 
l1e26h:
	ld a,(06da2h)		;1e26	3a a2 6d 	: . m 
	cp d			;1e29	ba 	. 
	jr nz,l1e36h		;1e2a	20 0a 	  . 
	bit 1,(iy+010h)		;1e2c	fd cb 10 4e 	. . . N 
	ret nz			;1e30	c0 	. 
	ld a,001h		;1e31	3e 01 	> . 
	jp l1cf8h		;1e33	c3 f8 1c 	. . . 
l1e36h:
	inc d			;1e36	14 	. 
	ld (iy+008h),d		;1e37	fd 72 08 	. r . 
	ld a,b			;1e3a	78 	x 
l1e3bh:
	ld b,a			;1e3b	47 	G 
	ld a,(iy+004h)		;1e3c	fd 7e 04 	. ~ . 
	and 0e0h		;1e3f	e6 e0 	. . 
	or b			;1e41	b0 	. 
	ld (iy+004h),a		;1e42	fd 77 04 	. w . 
	ld l,b			;1e45	68 	h 
	ld h,06dh		;1e46	26 6d 	& m 
	ld a,(hl)			;1e48	7e 	~ 
	and 01fh		;1e49	e6 1f 	. . 
	ld l,a			;1e4b	6f 	o 
	ld a,(06da2h)		;1e4c	3a a2 6d 	: . m 
	inc a			;1e4f	3c 	< 
	ld c,a			;1e50	4f 	O 
	cp l			;1e51	bd 	. 
	jr nc,l1e56h		;1e52	30 02 	0 . 
	ld l,001h		;1e54	2e 01 	. . 
l1e56h:
	ld a,l			;1e56	7d 	} 
	sub b			;1e57	90 	. 
	ld (iy+009h),a		;1e58	fd 77 09 	. w . 
	ld a,(06821h)		;1e5b	3a 21 68 	: ! h 
	and 01fh		;1e5e	e6 1f 	. . 
	cp b			;1e60	b8 	. 
	ld a,001h		;1e61	3e 01 	> . 
	jr z,l1e7bh		;1e63	28 16 	( . 
	ld l,b			;1e65	68 	h 
l1e66h:
	ld a,l			;1e66	7d 	} 
	cp 002h		;1e67	fe 02 	. . 
	jr nz,l1e73h		;1e69	20 08 	  . 
	ld l,c			;1e6b	69 	i 
	inc l			;1e6c	2c 	, 
	ld de,06821h		;1e6d	11 21 68 	. ! h 
	ld a,(de)			;1e70	1a 	. 
	jr l1e75h		;1e71	18 02 	. . 
l1e73h:
	dec l			;1e73	2d 	- 
	ld a,(hl)			;1e74	7e 	~ 
l1e75h:
	and 01fh		;1e75	e6 1f 	. . 
	cp b			;1e77	b8 	. 
	jr nz,l1e66h		;1e78	20 ec 	  . 
	ld a,l			;1e7a	7d 	} 
l1e7bh:
	sub b			;1e7b	90 	. 
	ld (iy+00ah),a		;1e7c	fd 77 0a 	. w . 
	ld a,b			;1e7f	78 	x 
	call sub_1e99h		;1e80	cd 99 1e 	. . . 
	ld b,(iy+006h)		;1e83	fd 46 06 	. F . 
	ld (iy+006h),a		;1e86	fd 77 06 	. w . 
	bit 0,(iy+000h)		;1e89	fd cb 00 46 	. . . F 
	ret z			;1e8d	c8 	. 
	cp b			;1e8e	b8 	. 
	ret z			;1e8f	c8 	. 
	ld (iy+00fh),020h		;1e90	fd 36 0f 20 	. 6 .   
	res 7,(iy+011h)		;1e94	fd cb 11 be 	. . . . 
	ret			;1e98	c9 	. 
sub_1e99h:
	sub 002h		;1e99	d6 02 	. . 
	ld b,a			;1e9b	47 	G 
	ld a,010h		;1e9c	3e 10 	> . 
	sla b		;1e9e	cb 20 	.   
	add a,b			;1ea0	80 	. 
	add a,b			;1ea1	80 	. 
	add a,b			;1ea2	80 	. 
	add a,b			;1ea3	80 	. 
	add a,b			;1ea4	80 	. 
	ld hl,06d73h		;1ea5	21 73 6d 	! s m 
	bit 2,(hl)		;1ea8	cb 56 	. V 
	ret z			;1eaa	c8 	. 
	add a,b			;1eab	80 	. 
	ret			;1eac	c9 	. 
l1eadh:
	ld a,(iy+007h)		;1ead	fd 7e 07 	. ~ . 
	cp 004h		;1eb0	fe 04 	. . 
	jr nz,l1ec3h		;1eb2	20 0f 	  . 
	bit 1,(iy+010h)		;1eb4	fd cb 10 4e 	. . . N 
	ret nz			;1eb8	c0 	. 
	call sub_1cddh		;1eb9	cd dd 1c 	. . . 
	ld a,005h		;1ebc	3e 05 	> . 
	ld (iy+005h),a		;1ebe	fd 77 05 	. w . 
	ld a,0a4h		;1ec1	3e a4 	> . 
l1ec3h:
	sub 004h		;1ec3	d6 04 	. . 
	ld (iy+007h),a		;1ec5	fd 77 07 	. w . 
	ld a,(iy+004h)		;1ec8	fd 7e 04 	. ~ . 
	sub 020h		;1ecb	d6 20 	.   
	ld (iy+004h),a		;1ecd	fd 77 04 	. w . 
	ret nc			;1ed0	d0 	. 
	dec (iy+005h)		;1ed1	fd 35 05 	. 5 . 
	ret			;1ed4	c9 	. 
l1ed5h:
	ld a,004h		;1ed5	3e 04 	> . 
	ld (iy+007h),a		;1ed7	fd 77 07 	. w . 
	xor a			;1eda	af 	. 
	ld (iy+005h),a		;1edb	fd 77 05 	. w . 
	ld a,(iy+004h)		;1ede	fd 7e 04 	. ~ . 
	and 01fh		;1ee1	e6 1f 	. . 
	ld (iy+004h),a		;1ee3	fd 77 04 	. w . 
	ret			;1ee6	c9 	. 
l1ee7h:
	ld l,(iy+004h)		;1ee7	fd 6e 04 	. n . 
	ld h,(iy+005h)		;1eea	fd 66 05 	. f . 
	ld e,(iy+010h)		;1eed	fd 5e 10 	. ^ . 
	ld d,(iy+007h)		;1ef0	fd 56 07 	. V . 
	ld c,(iy+000h)		;1ef3	fd 4e 00 	. N . 
	push bc			;1ef6	c5 	. 
	push de			;1ef7	d5 	. 
	push hl			;1ef8	e5 	. 
	res 0,(iy+010h)		;1ef9	fd cb 10 86 	. . . . 
	set 1,(iy+010h)		;1efd	fd cb 10 ce 	. . . . 
	ld (iy+000h),001h		;1f01	fd 36 00 01 	. 6 . . 
	call sub_2446h		;1f05	cd 46 24 	. F $ 
	call sub_3164h		;1f08	cd 64 31 	. d 1 
l1f0bh:
	call sub_1fbbh		;1f0b	cd bb 1f 	. . . 
	ld a,(iy+007h)		;1f0e	fd 7e 07 	. ~ . 
	cp 09ch		;1f11	fe 9c 	. . 
	jr c,l1f0bh		;1f13	38 f6 	8 . 
	call sub_1fbbh		;1f15	cd bb 1f 	. . . 
	call sub_1fbbh		;1f18	cd bb 1f 	. . . 
	pop hl			;1f1b	e1 	. 
	pop de			;1f1c	d1 	. 
	pop bc			;1f1d	c1 	. 
	ld (iy+000h),c		;1f1e	fd 71 00 	. q . 
	ld (iy+007h),d		;1f21	fd 72 07 	. r . 
	ld (iy+010h),e		;1f24	fd 73 10 	. s . 
	ld (iy+005h),h		;1f27	fd 74 05 	. t . 
	ld (iy+004h),l		;1f2a	fd 75 04 	. u . 
sub_1f2dh:
	ld a,(iy+008h)		;1f2d	fd 7e 08 	. ~ . 
sub_1f30h:
	ld hl,06d5bh		;1f30	21 5b 6d 	! [ m 
	bit 7,(hl)		;1f33	cb 7e 	. ~ 
	jr z,l1f39h		;1f35	28 02 	( . 
	set 7,a		;1f37	cb ff 	. . 
l1f39h:
	cp (hl)			;1f39	be 	. 
	ret nc			;1f3a	d0 	. 
	ld (hl),a			;1f3b	77 	w 
	ret			;1f3c	c9 	. 
sub_1f3dh:
	ld a,001h		;1f3d	3e 01 	> . 
	jr sub_1f30h		;1f3f	18 ef 	. . 
sub_1f41h:
	ld b,a			;1f41	47 	G 
	ld a,(06da2h)		;1f42	3a a2 6d 	: . m 
	cp b			;1f45	b8 	. 
	jr nc,l1f49h		;1f46	30 01 	0 . 
	ld b,a			;1f48	47 	G 
l1f49h:
	ld hl,06821h		;1f49	21 21 68 	! ! h 
	ld a,(hl)			;1f4c	7e 	~ 
	and 01fh		;1f4d	e6 1f 	. . 
	ld l,a			;1f4f	6f 	o 
	ld h,06dh		;1f50	26 6d 	& m 
	dec b			;1f52	05 	. 
	ret z			;1f53	c8 	. 
l1f54h:
	ld a,(hl)			;1f54	7e 	~ 
	and 01fh		;1f55	e6 1f 	. . 
	ld l,a			;1f57	6f 	o 
	djnz l1f54h		;1f58	10 fa 	. . 
	ret			;1f5a	c9 	. 
sub_1f5bh:
	bit 0,(iy+010h)		;1f5b	fd cb 10 46 	. . . F 
	ret z			;1f5f	c8 	. 
l1f60h:
	ld b,a			;1f60	47 	G 
	ld a,070h		;1f61	3e 70 	> p 
	call sub_2702h		;1f63	cd 02 27 	. . ' 
sub_1f66h:
	ld a,(hl)			;1f66	7e 	~ 
	xor 002h		;1f67	ee 02 	. . 
	ld (hl),a			;1f69	77 	w 
	set 3,h		;1f6a	cb dc 	. . 
	ld a,(hl)			;1f6c	7e 	~ 
	xor 022h		;1f6d	ee 22 	. " 
	ld (hl),a			;1f6f	77 	w 
	ld a,b			;1f70	78 	x 
	ret			;1f71	c9 	. 
l1f72h:
	ld b,080h		;1f72	06 80 	. . 
	ld a,(iy+00fh)		;1f74	fd 7e 0f 	. ~ . 
	and 07fh		;1f77	e6 7f 	.  
	bit 5,a		;1f79	cb 6f 	. o 
	jr nz,l1fceh		;1f7b	20 51 	  Q 
	ld a,020h		;1f7d	3e 20 	>   
	jr l1fceh		;1f7f	18 4d 	. M 
l1f81h:
	cp 080h		;1f81	fe 80 	. . 
	jr c,l1fbdh		;1f83	38 38 	8 8 
	cp 0a0h		;1f85	fe a0 	. . 
	jr nc,l1fbdh		;1f87	30 34 	0 4 
	call sub_1290h		;1f89	cd 90 12 	. . . 
	ld b,(iy+000h)		;1f8c	fd 46 00 	. F . 
	bit 0,b		;1f8f	cb 40 	. @ 
	jr z,l1fb8h		;1f91	28 25 	( % 
	cp 09eh		;1f93	fe 9e 	. . 
	jr z,l1fa0h		;1f95	28 09 	( . 
	ld hl,l1da2h		;1f97	21 a2 1d 	! . . 
	bit 7,(iy+00fh)		;1f9a	fd cb 0f 7e 	. . . ~ 
	jr z,l1fa3h		;1f9e	28 03 	( . 
l1fa0h:
	ld hl,l1f72h		;1fa0	21 72 1f 	! r . 
l1fa3h:
	push hl			;1fa3	e5 	. 
sub_1fa4h:
	cp 08ah		;1fa4	fe 8a 	. . 
	jr c,l1fb8h		;1fa6	38 10 	8 . 
	cp 090h		;1fa8	fe 90 	. . 
	jr c,l1fb4h		;1faa	38 08 	8 . 
	cp 099h		;1fac	fe 99 	. . 
	jr c,l1fb8h		;1fae	38 08 	8 . 
	cp 09bh		;1fb0	fe 9b 	. . 
	jr nc,l1fb8h		;1fb2	30 04 	0 . 
l1fb4h:
	ld hl,l0ea4h		;1fb4	21 a4 0e 	! . . 
	push hl			;1fb7	e5 	. 
l1fb8h:
	jp sub_2bf5h		;1fb8	c3 f5 2b 	. . + 
sub_1fbbh:
	ld a,020h		;1fbb	3e 20 	>   
l1fbdh:
	ld b,(iy+011h)		;1fbd	fd 46 11 	. F . 
sub_1fc0h:
	bit 7,a		;1fc0	cb 7f 	.  
	jr z,l1fceh		;1fc2	28 0a 	( . 
	res 7,a		;1fc4	cb bf 	. . 
	sla b		;1fc6	cb 20 	.   
	sla b		;1fc8	cb 20 	.   
	sla b		;1fca	cb 20 	.   
	sla b		;1fcc	cb 20 	.   
l1fceh:
	ld (06e21h),a		;1fce	32 21 6e 	2 ! n 
	ld c,a			;1fd1	4f 	O 
	bit 7,(iy+000h)		;1fd2	fd cb 00 7e 	. . . ~ 
	jr nz,l2039h		;1fd6	20 61 	  a 
	bit 0,(iy+010h)		;1fd8	fd cb 10 46 	. . . F 
	jr z,l1fe3h		;1fdc	28 05 	( . 
	ld a,b			;1fde	78 	x 
	call l1f60h		;1fdf	cd 60 1f 	. ` . 
	ld b,a			;1fe2	47 	G 
l1fe3h:
	call sub_06aah		;1fe3	cd aa 06 	. . . 
	bit 1,(iy+000h)		;1fe6	fd cb 00 4e 	. . . N 
	jr z,l202bh		;1fea	28 3f 	( ? 
	bit 6,(iy+002h)		;1fec	fd cb 02 76 	. . . v 
	jr z,l202bh		;1ff0	28 39 	( 9 
	ld a,(iy+008h)		;1ff2	fd 7e 08 	. ~ . 
	dec a			;1ff5	3d 	= 
	jr z,l2010h		;1ff6	28 18 	( . 
	ld d,(iy+00dh)		;1ff8	fd 56 0d 	. V . 
	cp d			;1ffb	ba 	. 
	jr z,l2010h		;1ffc	28 12 	( . 
	inc a			;1ffe	3c 	< 
	cp d			;1fff	ba 	. 
l2000h:
	ld d,(iy+00ch)		;2000	fd 56 0c 	. V . 
	jr nz,l2008h		;2003	20 03 	  . 
	cp d			;2005	ba 	. 
	jr z,l2010h		;2006	28 08 	( . 
l2008h:
	ld l,(iy+004h)		;2008	fd 6e 04 	. n . 
	call sub_30ceh		;200b	cd ce 30 	. . 0 
	jr z,l2020h		;200e	28 10 	( . 
l2010h:
	ld (iy+016h),000h		;2010	fd 36 16 00 	. 6 . . 
	bit 7,(iy+002h)		;2014	fd cb 02 7e 	. . . ~ 
	jr z,l2036h		;2018	28 1c 	( . 
	set 5,(iy+016h)		;201a	fd cb 16 ee 	. . . . 
	jr l2036h		;201e	18 16 	. . 
l2020h:
	push bc			;2020	c5 	. 
	ld d,(iy+00ch)		;2021	fd 56 0c 	. V . 
	ld a,(iy+008h)		;2024	fd 7e 08 	. ~ . 
	call l1d01h		;2027	cd 01 1d 	. . . 
	pop bc			;202a	c1 	. 
l202bh:
	ld l,(iy+004h)		;202b	fd 6e 04 	. n . 
	call sub_30ceh		;202e	cd ce 30 	. . 0 
	jr z,l2042h		;2031	28 0f 	( . 
	call sub_2446h		;2033	cd 46 24 	. F $ 
l2036h:
	jp l1db2h		;2036	c3 b2 1d 	. . . 
l2039h:
	ld hl,06d72h		;2039	21 72 6d 	! r m 
	bit 6,(hl)		;203c	cb 76 	. v 
	jr z,l2094h		;203e	28 54 	( T 
	jr l2054h		;2040	18 12 	. . 
l2042h:
	ld a,0c3h		;2042	3e c3 	> . 
	add a,(iy+005h)		;2044	fd 86 05 	. . . 
	ld h,a			;2047	67 	g 
	ld e,(hl)			;2048	5e 	^ 
	ld (hl),c			;2049	71 	q 
	sub 005h		;204a	d6 05 	. . 
	ld h,a			;204c	67 	g 
	ld a,(06d72h)		;204d	3a 72 6d 	: r m 
	bit 6,a		;2050	cb 77 	. w 
	jr z,l2082h		;2052	28 2e 	( . 
l2054h:
	ld a,c			;2054	79 	y 
	cp 020h		;2055	fe 20 	.   
	jr z,l20a3h		;2057	28 4a 	( J 
	bit 4,b		;2059	cb 60 	. ` 
	jr nz,l2073h		;205b	20 16 	  . 
	bit 5,b		;205d	cb 68 	. h 
	jr nz,l2073h		;205f	20 12 	  . 
	cp 041h		;2061	fe 41 	. A 
	jr c,l2073h		;2063	38 0e 	8 . 
	cp 07bh		;2065	fe 7b 	. { 
	jr nc,l2073h		;2067	30 0a 	0 . 
	cp 05bh		;2069	fe 5b 	. [ 
	jp c,l211eh		;206b	da 1e 21 	. . ! 
	cp 061h		;206e	fe 61 	. a 
	jp nc,l211eh		;2070	d2 1e 21 	. . ! 
l2073h:
	ld a,(06d72h)		;2073	3a 72 6d 	: r m 
	res 6,a		;2076	cb b7 	. . 
	ld (06d72h),a		;2078	32 72 6d 	2 r m 
	ld a,c			;207b	79 	y 
	bit 7,(iy+000h)		;207c	fd cb 00 7e 	. . . ~ 
	jr nz,l2094h		;2080	20 12 	  . 
l2082h:
	ld a,b			;2082	78 	x 
	and 0f0h		;2083	e6 f0 	. . 
	ld (hl),a			;2085	77 	w 
	ld (06e71h),a		;2086	32 71 6e 	2 q n 
	ld a,c			;2089	79 	y 
sub_208ah:
	bit 0,(iy+000h)		;208a	fd cb 00 46 	. . . F 
	jr z,l2094h		;208e	28 04 	( . 
	bit 7,b		;2090	cb 78 	. x 
	jr nz,l210bh		;2092	20 77 	  w 
l2094h:
	cp 020h		;2094	fe 20 	.   
	jr nz,21		;2096	20 13 	  . 
l2098h:
	ld ix,l20a9h		;2098	dd 21 a9 20 	. ! .   
	ld a,e			;209c	7b 	{ 
	ld (06e77h),a		;209d	32 77 6e 	2 w n 
l20a0h:
	jp l2196h		;20a0	c3 96 21 	. . ! 
l20a3h:
	ld ix,l20aah		;20a3	dd 21 aa 20 	. ! .   
	jr l20a0h		;20a7	18 f7 	. . 
l20a9h:
	nop			;20a9	00 	. 
l20aah:
	jr nz,l20aah		;20aa	20 fe 	  . 
	ld a,a			;20ac	7f 	 
	jr nz,l20bbh		;20ad	20 0c 	  . 
	ld ix,l20b5h		;20af	dd 21 b5 20 	. ! .   
	jr l20a0h		;20b3	18 eb 	. . 
l20b5h:
	inc l			;20b5	2c 	, 
	ld e,a			;20b6	5f 	_ 
	ld a,(hl)			;20b7	7e 	~ 
	daa			;20b8	27 	' 
	jr nz,49		;20b9	20 2f 	  / 
l20bbh:
	bit 6,b		;20bb	cb 70 	. p 
	jr z,l211eh		;20bd	28 5f 	( _ 
	call sub_1ac9h		;20bf	cd c9 1a 	. . . 
	ld a,(hl)			;20c2	7e 	~ 
	or a			;20c3	b7 	. 
	jr z,l20a3h		;20c4	28 dd 	( . 
	bit 7,a		;20c6	cb 7f 	.  
	jp z,l2152h		;20c8	ca 52 21 	. R ! 
	inc hl			;20cb	23 	# 
	ld c,a			;20cc	4f 	O 
	and 00fh		;20cd	e6 0f 	. . 
	ld d,a			;20cf	57 	W 
	bit 3,d		;20d0	cb 5a 	. Z 
	jr nz,l20d5h		;20d2	20 01 	  . 
	add a,a			;20d4	87 	. 
l20d5h:
	cp 00ah		;20d5	fe 0a 	. . 
	jr z,l20ddh		;20d7	28 04 	( . 
	cp 00ch		;20d9	fe 0c 	. . 
	jr nz,l2152h		;20db	20 75 	  u 
l20ddh:
	ld b,a			;20dd	47 	G 
	ld a,(06d73h)		;20de	3a 73 6d 	: s m 
	cp b			;20e1	b8 	. 
	jr nz,l2152h		;20e2	20 6e 	  n 
	ld a,c			;20e4	79 	y 
	and 070h		;20e5	e6 70 	. p 
	rrca			;20e7	0f 	. 
	ld e,a			;20e8	5f 	_ 
	res 1,(iy+00bh)		;20e9	fd cb 0b 8e 	. . . . 
	ld ix,06dc2h		;20ed	dd 21 c2 6d 	. ! . m 
	bit 4,e		;20f1	cb 63 	. c 
	jr z,l20feh		;20f3	28 09 	( . 
	bit 5,e		;20f5	cb 6b 	. k 
	jp nz,l248ch		;20f7	c2 8c 24 	. . $ 
	set 4,(iy+000h)		;20fa	fd cb 00 e6 	. . . . 
l20feh:
	push de			;20fe	d5 	. 
	ld de,06dc2h		;20ff	11 c2 6d 	. . m 
	ld bc,l0030h		;2102	01 30 00 	. 0 . 
	ldir		;2105	ed b0 	. . 
	pop de			;2107	d1 	. 
	jp l21dah		;2108	c3 da 21 	. . ! 
l210bh:
	ld b,a			;210b	47 	G 
	ld a,(iy+00fh)		;210c	fd 7e 0f 	. ~ . 
	and 080h		;210f	e6 80 	. . 
	or b			;2111	b0 	. 
	ld (iy+00fh),a		;2112	fd 77 0f 	. w . 
	ld a,b			;2115	78 	x 
	bit 5,a		;2116	cb 6f 	. o 
	ld b,000h		;2118	06 00 	. . 
	jr z,l211eh		;211a	28 02 	( . 
	ld b,010h		;211c	06 10 	. . 
l211eh:
	ld hl,(06160h)		;211e	2a 60 61 	* ` a 
	jp (hl)			;2121	e9 	. 
l2122h:
	bit 5,b		;2122	cb 68 	. h 
	jr nz,l2142h		;2124	20 1c 	  . 
	bit 5,a		;2126	cb 6f 	. o 
	jr z,l212fh		;2128	28 05 	( . 
	call sub_270ah		;212a	cd 0a 27 	. . ' 
	jr l2168h		;212d	18 39 	. 9 
l212fh:
	push af			;212f	f5 	. 
	call sub_2732h		;2130	cd 32 27 	. 2 ' 
	pop af			;2133	f1 	. 
	cp 04eh		;2134	fe 4e 	. N 
	jr z,l213ch		;2136	28 04 	( . 
	cp 05eh		;2138	fe 5e 	. ^ 
	jr nz,l2168h		;213a	20 2c 	  , 
l213ch:
	res 1,(iy+00bh)		;213c	fd cb 0b 8e 	. . . . 
	jr l216ch		;2140	18 2a 	. * 
l2142h:
	cp 040h		;2142	fe 40 	. @ 
	jr c,l2152h		;2144	38 0c 	8 . 
	cp 06eh		;2146	fe 6e 	. n 
	jr z,l2152h		;2148	28 08 	( . 
	cp 06fh		;214a	fe 6f 	. o 
	jr z,l2152h		;214c	28 04 	( . 
	cp 07eh		;214e	fe 7e 	. ~ 
	jr nz,l2154h		;2150	20 02 	  . 
l2152h:
	ld a,05fh		;2152	3e 5f 	> _ 
l2154h:
	bit 5,a		;2154	cb 6f 	. o 
	jr nz,l212fh		;2156	20 d7 	  . 
	ld hl,03647h		;2158	21 47 36 	! G 6 
	sub 040h		;215b	d6 40 	. @ 
	add a,a			;215d	87 	. 
	ld e,a			;215e	5f 	_ 
	ld d,000h		;215f	16 00 	. . 
	add hl,de			;2161	19 	. 
	ld e,(hl)			;2162	5e 	^ 
	inc hl			;2163	23 	# 
	ld d,(hl)			;2164	56 	V 
	push de			;2165	d5 	. 
	pop ix		;2166	dd e1 	. . 
l2168h:
	set 1,(iy+00bh)		;2168	fd cb 0b ce 	. . . . 
l216ch:
	ld hl,06d73h		;216c	21 73 6d 	! s m 
	bit 2,(hl)		;216f	cb 56 	. V 
	jr nz,l219ah		;2171	20 27 	  ' 
	inc ix		;2173	dd 23 	. # 
	inc ix		;2175	dd 23 	. # 
	jr l219ah		;2177	18 21 	. ! 
l2179h:
	bit 4,b		;2179	cb 60 	. ` 
	jr nz,l2122h		;217b	20 a5 	  . 
	bit 5,b		;217d	cb 68 	. h 
	jr z,l2186h		;217f	28 05 	( . 
	ld hl,05bafh		;2181	21 af 5b 	! . [ 
	jr l2189h		;2184	18 03 	. . 
l2186h:
	ld hl,l31b5h		;2186	21 b5 31 	! . 1 
l2189h:
	sub 021h		;2189	d6 21 	. ! 
	add a,a			;218b	87 	. 
	ld e,a			;218c	5f 	_ 
	ld d,000h		;218d	16 00 	. . 
	add hl,de			;218f	19 	. 
	ld e,(hl)			;2190	5e 	^ 
	inc hl			;2191	23 	# 
	ld d,(hl)			;2192	56 	V 
	push de			;2193	d5 	. 
	pop ix		;2194	dd e1 	. . 
l2196h:
	res 1,(iy+00bh)		;2196	fd cb 0b 8e 	. . . . 
l219ah:
	bit 7,(ix+000h)		;219a	dd cb 00 7e 	. . . ~ 
	jr z,l21d2h		;219e	28 32 	( 2 
	ld hl,06d72h		;21a0	21 72 6d 	! r m 
	set 6,(hl)		;21a3	cb f6 	. . 
	ld (06da3h),ix		;21a5	dd 22 a3 6d 	. " . m 
	bit 7,(iy+000h)		;21a9	fd cb 00 7e 	. . . ~ 
	ret nz			;21ad	c0 	. 
	rrca			;21ae	0f 	. 
	inc a			;21af	3c 	< 
	and 00fh		;21b0	e6 0f 	. . 
	ld (06e71h),a		;21b2	32 71 6e 	2 q n 
	ld b,a			;21b5	47 	G 
	ld a,0beh		;21b6	3e be 	> . 
	call sub_2702h		;21b8	cd 02 27 	. . ' 
	ld (hl),b			;21bb	70 	p 
	ld hl,sub_1f5bh		;21bc	21 5b 1f 	! [ . 
	push hl			;21bf	e5 	. 
	bit 1,(iy+000h)		;21c0	fd cb 00 4e 	. . . N 
	ret z			;21c4	c8 	. 
	bit 6,(iy+002h)		;21c5	fd cb 02 76 	. . . v 
	ret z			;21c9	c8 	. 
sub_21cah:
	exx			;21ca	d9 	. 
	ld e,019h		;21cb	1e 19 	. . 
	call sub_1e0ah		;21cd	cd 0a 1e 	. . . 
	exx			;21d0	d9 	. 
	ret			;21d1	c9 	. 
l21d2h:
	ld de,(06d72h)		;21d2	ed 5b 72 6d 	. [ r m 
	ld a,e			;21d6	7b 	{ 
	and 048h		;21d7	e6 48 	. H 
	ld e,a			;21d9	5f 	_ 
l21dah:
	call sub_2446h		;21da	cd 46 24 	. F $ 
	bit 7,e		;21dd	cb 7b 	. { 
	jp nz,l1db2h		;21df	c2 b2 1d 	. . . 
	ld a,(ix+000h)		;21e2	dd 7e 00 	. ~ . 
	or a			;21e5	b7 	. 
	jr nz,l222ch		;21e6	20 44 	  D 
	inc ix		;21e8	dd 23 	. # 
	bit 7,(iy+000h)		;21ea	fd cb 00 7e 	. . . ~ 
	jr nz,l222ch		;21ee	20 3c 	  < 
	bit 6,e		;21f0	cb 73 	. s 
	jr nz,l222ch		;21f2	20 38 	  8 
	ld a,(iy+016h)		;21f4	fd 7e 16 	. ~ . 
	or a			;21f7	b7 	. 
	jr nz,l222ch		;21f8	20 32 	  2 
	ld a,068h		;21fa	3e 68 	> h 
	call sub_2702h		;21fc	cd 02 27 	. . ' 
	ld a,(hl)			;21ff	7e 	~ 
	and 0e0h		;2200	e6 e0 	. . 
	cp 080h		;2202	fe 80 	. . 
	jr nz,l222ch		;2204	20 26 	  & 
	ld b,h			;2206	44 	D 
	ld c,l			;2207	4d 	M 
	set 4,h		;2208	cb e4 	. . 
	ld a,(hl)			;220a	7e 	~ 
	or a			;220b	b7 	. 
	jr nz,l222ch		;220c	20 1e 	  . 
	ld (hl),080h		;220e	36 80 	6 . 
	ld a,0c3h		;2210	3e c3 	> . 
	call sub_2702h		;2212	cd 02 27 	. . ' 
	ld (hl),000h		;2215	36 00 	6 . 
	ld a,(06e77h)		;2217	3a 77 6e 	: w n 
	or a			;221a	b7 	. 
	jp z,l1db2h		;221b	ca b2 1d 	. . . 
	ld h,b			;221e	60 	` 
	ld l,c			;221f	69 	i 
	ld a,(06efch)		;2220	3a fc 6e 	: . n 
	or 082h		;2223	f6 82 	. . 
	ld (hl),a			;2225	77 	w 
	ld a,h			;2226	7c 	| 
	add a,008h		;2227	c6 08 	. . 
	ld h,a			;2229	67 	g 
	ld (hl),000h		;222a	36 00 	6 . 
l222ch:
	bit 2,(iy+016h)		;222c	fd cb 16 56 	. . . V 
	jr z,l2240h		;2230	28 0e 	( . 
l2232h:
	ld e,008h		;2232	1e 08 	. . 
	ld ix,020bah		;2234	dd 21 ba 20 	. ! .   
	res 5,(iy+000h)		;2238	fd cb 00 ae 	. . . . 
	res 4,(iy+000h)		;223c	fd cb 00 a6 	. . . . 
l2240h:
	ld l,(iy+006h)		;2240	fd 6e 06 	. n . 
	ld c,000h		;2243	0e 00 	. . 
	exx			;2245	d9 	. 
	ld h,(iy+007h)		;2246	fd 66 07 	. f . 
	bit 7,h		;2249	cb 7c 	. | 
	call sub_06c3h		;224b	cd c3 06 	. . . 
	set 7,h		;224e	cb fc 	. . 
	exx			;2250	d9 	. 
l2251h:
	exx			;2251	d9 	. 
	ld a,h			;2252	7c 	| 
	exx			;2253	d9 	. 
	ld h,a			;2254	67 	g 
	ld b,000h		;2255	06 00 	. . 
	ld a,c			;2257	79 	y 
	cp d			;2258	ba 	. 
	jp c,l234dh		;2259	da 4d 23 	. M # 
l225ch:
	bit 4,e		;225c	cb 63 	. c 
	jp nz,l2333h		;225e	c2 33 23 	. 3 # 
	bit 6,e		;2261	cb 73 	. s 
	jp nz,l2321h		;2263	c2 21 23 	. ! # 
	ld l,(iy+006h)		;2266	fd 6e 06 	. n . 
	ld h,(iy+007h)		;2269	fd 66 07 	. f . 
	bit 3,e		;226c	cb 5b 	. [ 
	jr nz,l2279h		;226e	20 09 	  . 
	push de			;2270	d5 	. 
	push hl			;2271	e5 	. 
	ld e,002h		;2272	1e 02 	. . 
	call sub_25d5h		;2274	cd d5 25 	. . % 
	pop hl			;2277	e1 	. 
	pop de			;2278	d1 	. 
l2279h:
	bit 3,d		;2279	cb 5a 	. Z 
	jr nz,l2282h		;227b	20 05 	  . 
	push hl			;227d	e5 	. 
	call sub_258fh		;227e	cd 8f 25 	. . % 
	pop hl			;2281	e1 	. 
l2282h:
	bit 3,(iy+016h)		;2282	fd cb 16 5e 	. . . ^ 
	jr z,l22a2h		;2286	28 1a 	( . 
	bit 1,e		;2288	cb 4b 	. K 
	jr nz,l22a2h		;228a	20 16 	  . 
	push hl			;228c	e5 	. 
	bit 1,(iy+00bh)		;228d	fd cb 0b 4e 	. . . N 
	jr nz,l229eh		;2291	20 0b 	  . 
	call sub_26a2h		;2293	cd a2 26 	. . & 
	call sub_26fch		;2296	cd fc 26 	. . & 
	call sub_26f6h		;2299	cd f6 26 	. . & 
	jr l22a1h		;229c	18 03 	. . 
l229eh:
	call sub_266eh		;229e	cd 6e 26 	. n & 
l22a1h:
	pop hl			;22a1	e1 	. 
l22a2h:
	bit 7,(iy+016h)		;22a2	fd cb 16 7e 	. . . ~ 
	jr z,l22bdh		;22a6	28 15 	( . 
	bit 5,(iy+000h)		;22a8	fd cb 00 6e 	. . . n 
	push hl			;22ac	e5 	. 
	ld e,004h		;22ad	1e 04 	. . 
	call sub_25d5h		;22af	cd d5 25 	. . % 
	call sub_26fch		;22b2	cd fc 26 	. . & 
	ld bc,l0020h		;22b5	01 20 00 	.   . 
	add hl,bc			;22b8	09 	. 
	call sub_26f6h		;22b9	cd f6 26 	. . & 
	pop hl			;22bc	e1 	. 
l22bdh:
	bit 1,(iy+016h)		;22bd	fd cb 16 4e 	. . . N 
	jr z,l22f6h		;22c1	28 33 	( 3 
	bit 5,(iy+000h)		;22c3	fd cb 00 6e 	. . . n 
	jr nz,l22f6h		;22c7	20 2d 	  - 
	push hl			;22c9	e5 	. 
	bit 7,h		;22ca	cb 7c 	. | 
	call sub_06c3h		;22cc	cd c3 06 	. . . 
	ld c,004h		;22cf	0e 04 	. . 
	bit 7,(iy+016h)		;22d1	fd cb 16 7e 	. . . ~ 
	jr z,l22d9h		;22d5	28 02 	( . 
	ld c,008h		;22d7	0e 08 	. . 
l22d9h:
	ld a,(06d73h)		;22d9	3a 73 6d 	: s m 
	ld b,a			;22dc	47 	G 
	ld a,h			;22dd	7c 	| 
	or a			;22de	b7 	. 
	call z,sub_06aah		;22df	cc aa 06 	. . . 
	set 7,h		;22e2	cb fc 	. . 
	push hl			;22e4	e5 	. 
l22e5h:
	set 6,(hl)		;22e5	cb f6 	. . 
	inc l			;22e7	2c 	, 
	djnz l22e5h		;22e8	10 fb 	. . 
	pop hl			;22ea	e1 	. 
	inc h			;22eb	24 	$ 
	dec c			;22ec	0d 	. 
	jr nz,l22d9h		;22ed	20 ea 	  . 
	call sub_26fch		;22ef	cd fc 26 	. . & 
	call sub_26f6h		;22f2	cd f6 26 	. . & 
	pop hl			;22f5	e1 	. 
l22f6h:
	bit 6,(iy+016h)		;22f6	fd cb 16 76 	. . . v 
	jr z,l231eh		;22fa	28 22 	( " 
	push hl			;22fc	e5 	. 
	call sub_259ah		;22fd	cd 9a 25 	. . % 
	call sub_26fch		;2300	cd fc 26 	. . & 
	call sub_26f1h		;2303	cd f1 26 	. . & 
	pop hl			;2306	e1 	. 
	bit 7,(iy+016h)		;2307	fd cb 16 7e 	. . . ~ 
	jr z,l231eh		;230b	28 11 	( . 
	ld a,h			;230d	7c 	| 
	add a,004h		;230e	c6 04 	. . 
	ld h,a			;2310	67 	g 
	call sub_259ah		;2311	cd 9a 25 	. . % 
	call sub_26fch		;2314	cd fc 26 	. . & 
	ld bc,l0020h		;2317	01 20 00 	.   . 
	add hl,bc			;231a	09 	. 
	call sub_26f1h		;231b	cd f1 26 	. . & 
l231eh:
	jp l1dc1h		;231e	c3 c1 1d 	. . . 
l2321h:
	ld hl,06d72h		;2321	21 72 6d 	! r m 
	res 6,(hl)		;2324	cb b6 	. . 
	ld a,e			;2326	7b 	{ 
	and 0b8h		;2327	e6 b8 	. . 
	ld e,a			;2329	5f 	_ 
	set 2,e		;232a	cb d3 	. . 
	ld ix,(06da3h)		;232c	dd 2a a3 6d 	. * . m 
	jp l2240h		;2330	c3 40 22 	. @ " 
l2333h:
	ld a,d			;2333	7a 	z 
	bit 3,e		;2334	cb 5b 	. [ 
	jr z,l2339h		;2336	28 01 	( . 
	add a,a			;2338	87 	. 
l2339h:
	exx			;2339	d9 	. 
	ld ix,06dc2h		;233a	dd 21 c2 6d 	. ! . m 
	ld d,000h		;233e	16 00 	. . 
	ld e,a			;2340	5f 	_ 
	add ix,de		;2341	dd 19 	. . 
	exx			;2343	d9 	. 
	set 1,e		;2344	cb cb 	. . 
	set 2,e		;2346	cb d3 	. . 
	res 4,e		;2348	cb a3 	. . 
	jp l2240h		;234a	c3 40 22 	. @ " 
l234dh:
	ld a,(ix+000h)		;234d	dd 7e 00 	. ~ . 
	inc ix		;2350	dd 23 	. # 
	bit 7,a		;2352	cb 7f 	.  
	jr z,l2362h		;2354	28 0c 	( . 
	and 07fh		;2356	e6 7f 	.  
	ex af,af'			;2358	08 	. 
	ld a,c			;2359	79 	y 
	or a			;235a	b7 	. 
	jr z,l2361h		;235b	28 04 	( . 
	ld ix,l20aah		;235d	dd 21 aa 20 	. ! .   
l2361h:
	ex af,af'			;2361	08 	. 
l2362h:
	cp 040h		;2362	fe 40 	. @ 
	jr c,l2398h		;2364	38 32 	8 2 
	push bc			;2366	c5 	. 
	ld c,a			;2367	4f 	O 
	and 007h		;2368	e6 07 	. . 
	ld b,a			;236a	47 	G 
	ld a,c			;236b	79 	y 
	rrca			;236c	0f 	. 
	rrca			;236d	0f 	. 
	rrca			;236e	0f 	. 
	and 007h		;236f	e6 07 	. . 
	bit 2,e		;2371	cb 53 	. S 
	call nz,sub_238fh		;2373	c4 8f 23 	. . # 
	ld (hl),a			;2376	77 	w 
	inc h			;2377	24 	$ 
	ld a,b			;2378	78 	x 
	bit 2,e		;2379	cb 53 	. S 
	call nz,sub_238fh		;237b	c4 8f 23 	. . # 
	ld (hl),a			;237e	77 	w 
	inc h			;237f	24 	$ 
	pop bc			;2380	c1 	. 
	bit 3,e		;2381	cb 5b 	. [ 
	jr z,l238ah		;2383	28 05 	( . 
	inc b			;2385	04 	. 
	bit 0,b		;2386	cb 40 	. @ 
	jr nz,l234dh		;2388	20 c3 	  . 
l238ah:
	inc l			;238a	2c 	, 
	inc c			;238b	0c 	. 
	jp l2251h		;238c	c3 51 22 	. Q " 
sub_238fh:
	bit 1,e		;238f	cb 4b 	. K 
	jr z,l2396h		;2391	28 03 	( . 
	add a,a			;2393	87 	. 
	add a,a			;2394	87 	. 
	add a,a			;2395	87 	. 
l2396h:
	or (hl)			;2396	b6 	. 
	ret			;2397	c9 	. 
l2398h:
	cp 02ch		;2398	fe 2c 	. , 
	jr z,l23ebh		;239a	28 4f 	( O 
	cp 020h		;239c	fe 20 	.   
	jr z,l23f4h		;239e	28 54 	( T 
	jp c,l225ch		;23a0	da 5c 22 	. \ " 
	cp 02dh		;23a3	fe 2d 	. - 
	jr z,l23e7h		;23a5	28 40 	( @ 
	cp 02fh		;23a7	fe 2f 	. / 
	jr z,l23f0h		;23a9	28 45 	( E 
	cp 030h		;23ab	fe 30 	. 0 
	jp nc,l2240h		;23ad	d2 40 22 	. @ " 
	and 00fh		;23b0	e6 0f 	. . 
	ld b,a			;23b2	47 	G 
	ld a,d			;23b3	7a 	z 
	sub c			;23b4	91 	. 
	cp b			;23b5	b8 	. 
	jr nc,l23b9h		;23b6	30 01 	0 . 
	ld b,a			;23b8	47 	G 
l23b9h:
	push bc			;23b9	c5 	. 
	ex af,af'			;23ba	08 	. 
	ld a,c			;23bb	79 	y 
	ex af,af'			;23bc	08 	. 
	ld c,004h		;23bd	0e 04 	. . 
l23bfh:
	push hl			;23bf	e5 	. 
	push bc			;23c0	c5 	. 
	dec l			;23c1	2d 	- 
	ld a,(hl)			;23c2	7e 	~ 
	ex af,af'			;23c3	08 	. 
	or a			;23c4	b7 	. 
	jr nz,l23cah		;23c5	20 03 	  . 
	ex af,af'			;23c7	08 	. 
	xor a			;23c8	af 	. 
	ex af,af'			;23c9	08 	. 
l23cah:
	ex af,af'			;23ca	08 	. 
	inc l			;23cb	2c 	, 
	bit 1,e		;23cc	cb 4b 	. K 
	jr nz,l23dch		;23ce	20 0c 	  . 
l23d0h:
	ld (hl),a			;23d0	77 	w 
	inc l			;23d1	2c 	, 
	djnz l23d0h		;23d2	10 fc 	. . 
l23d4h:
	pop bc			;23d4	c1 	. 
	pop hl			;23d5	e1 	. 
	inc h			;23d6	24 	$ 
	dec c			;23d7	0d 	. 
	jr nz,l23bfh		;23d8	20 e5 	  . 
	jr l241bh		;23da	18 3f 	. ? 
l23dch:
	and 038h		;23dc	e6 38 	. 8 
	ld c,a			;23de	4f 	O 
l23dfh:
	or (hl)			;23df	b6 	. 
	ld (hl),a			;23e0	77 	w 
	ld a,c			;23e1	79 	y 
	inc l			;23e2	2c 	, 
	djnz l23dfh		;23e3	10 fa 	. . 
	jr l23d4h		;23e5	18 ed 	. . 
l23e7h:
	ld a,007h		;23e7	3e 07 	> . 
	jr l23ech		;23e9	18 01 	. . 
l23ebh:
	xor a			;23eb	af 	. 
l23ech:
	ld b,001h		;23ec	06 01 	. . 
	jr l2415h		;23ee	18 25 	. % 
l23f0h:
	ld a,007h		;23f0	3e 07 	> . 
	jr l23f5h		;23f2	18 01 	. . 
l23f4h:
	xor a			;23f4	af 	. 
l23f5h:
	bit 0,b		;23f5	cb 40 	. @ 
	jr z,l2410h		;23f7	28 17 	( . 
	ld b,a			;23f9	47 	G 
	push bc			;23fa	c5 	. 
	ld b,001h		;23fb	06 01 	. . 
	ld c,002h		;23fd	0e 02 	. . 
	call sub_2425h		;23ff	cd 25 24 	. % $ 
	pop bc			;2402	c1 	. 
	inc l			;2403	2c 	, 
	inc c			;2404	0c 	. 
	ld a,c			;2405	79 	y 
	cp d			;2406	ba 	. 
	jp nc,l225ch		;2407	d2 5c 22 	. \ " 
	ld h,(iy+007h)		;240a	fd 66 07 	. f . 
	set 7,h		;240d	cb fc 	. . 
	ld a,b			;240f	78 	x 
l2410h:
	ex af,af'			;2410	08 	. 
	ld a,d			;2411	7a 	z 
	sub c			;2412	91 	. 
	ld b,a			;2413	47 	G 
	ex af,af'			;2414	08 	. 
l2415h:
	push bc			;2415	c5 	. 
	ld c,004h		;2416	0e 04 	. . 
	call sub_2425h		;2418	cd 25 24 	. % $ 
l241bh:
	pop bc			;241b	c1 	. 
	ld a,l			;241c	7d 	} 
	add a,b			;241d	80 	. 
	ld l,a			;241e	6f 	o 
	ld a,c			;241f	79 	y 
	add a,b			;2420	80 	. 
	ld c,a			;2421	4f 	O 
	jp l2251h		;2422	c3 51 22 	. Q " 
sub_2425h:
	bit 1,e		;2425	cb 4b 	. K 
	jr z,l242ch		;2427	28 03 	( . 
	add a,a			;2429	87 	. 
	add a,a			;242a	87 	. 
	add a,a			;242b	87 	. 
l242ch:
	push hl			;242c	e5 	. 
	push bc			;242d	c5 	. 
	bit 2,e		;242e	cb 53 	. S 
	jr nz,l243dh		;2430	20 0b 	  . 
l2432h:
	ld (hl),a			;2432	77 	w 
	inc l			;2433	2c 	, 
	djnz l2432h		;2434	10 fc 	. . 
l2436h:
	pop bc			;2436	c1 	. 
	pop hl			;2437	e1 	. 
	inc h			;2438	24 	$ 
	dec c			;2439	0d 	. 
	jr nz,l242ch		;243a	20 f0 	  . 
	ret			;243c	c9 	. 
l243dh:
	push af			;243d	f5 	. 
	or (hl)			;243e	b6 	. 
	ld (hl),a			;243f	77 	w 
	inc l			;2440	2c 	, 
	pop af			;2441	f1 	. 
	djnz l243dh		;2442	10 f9 	. . 
	jr l2436h		;2444	18 f0 	. . 
sub_2446h:
	call sub_06aah		;2446	cd aa 06 	. . . 
	bit 7,(iy+000h)		;2449	fd cb 00 7e 	. . . ~ 
	jp z,l297bh		;244d	ca 7b 29 	. { ) 
	ld (iy+016h),000h		;2450	fd 36 16 00 	. 6 . . 
	bit 0,(iy+000h)		;2454	fd cb 00 46 	. . . F 
	jr nz,l2462h		;2458	20 08 	  . 
	ld a,078h		;245a	3e 78 	> x 
	call sub_2702h		;245c	cd 02 27 	. . ' 
	res 7,(hl)		;245f	cb be 	. . 
	ret			;2461	c9 	. 
l2462h:
	ld a,068h		;2462	3e 68 	> h 
	call sub_2702h		;2464	cd 02 27 	. . ' 
	ld a,(hl)			;2467	7e 	~ 
	and 09fh		;2468	e6 9f 	. . 
	or 080h		;246a	f6 80 	. . 
	ld (hl),a			;246c	77 	w 
	ld a,h			;246d	7c 	| 
	add a,010h		;246e	c6 10 	. . 
	ld h,a			;2470	67 	g 
	ld a,(hl)			;2471	7e 	~ 
	and 09fh		;2472	e6 9f 	. . 
	ld (hl),a			;2474	77 	w 
	ld a,(iy+000h)		;2475	fd 7e 00 	. ~ . 
	and 030h		;2478	e6 30 	. 0 
	ret nz			;247a	c0 	. 
	res 7,(hl)		;247b	cb be 	. . 
	ld a,h			;247d	7c 	| 
	sub 008h		;247e	d6 08 	. . 
	ld h,a			;2480	67 	g 
	ld (hl),000h		;2481	36 00 	6 . 
	ld bc,l0fe0h		;2483	01 e0 0f 	. . . 
	xor a			;2486	af 	. 
	sbc hl,bc		;2487	ed 42 	. B 
	ld (hl),00fh		;2489	36 0f 	6 . 
	ret			;248b	c9 	. 
l248ch:
	ex af,af'			;248c	08 	. 
	ld a,004h		;248d	3e 04 	> . 
	ex af,af'			;248f	08 	. 
	push hl			;2490	e5 	. 
	ld c,d			;2491	4a 	J 
l2492h:
	ld e,040h		;2492	1e 40 	. @ 
l2494h:
	ld a,(hl)			;2494	7e 	~ 
	inc hl			;2495	23 	# 
	cp 030h		;2496	fe 30 	. 0 
	jr c,l24a9h		;2498	38 0f 	8 . 
	ld e,a			;249a	5f 	_ 
l249bh:
	ld b,001h		;249b	06 01 	. . 
l249dh:
	ld (ix+000h),e		;249d	dd 73 00 	. s . 
	inc ix		;24a0	dd 23 	. # 
	dec c			;24a2	0d 	. 
	jr z,l24cdh		;24a3	28 28 	( ( 
	djnz l249dh		;24a5	10 f6 	. . 
	jr l2494h		;24a7	18 eb 	. . 
l24a9h:
	ld b,d			;24a9	42 	B 
	cp 02eh		;24aa	fe 2e 	. . 
	jr z,l249dh		;24ac	28 ef 	( . 
	cp 021h		;24ae	fe 21 	. ! 
	jr c,l24bbh		;24b0	38 09 	8 . 
	cp 02ch		;24b2	fe 2c 	. , 
	jr nc,l24bbh		;24b4	30 05 	0 . 
	and 00fh		;24b6	e6 0f 	. . 
	ld b,a			;24b8	47 	G 
	jr l249dh		;24b9	18 e2 	. . 
l24bbh:
	ld e,07fh		;24bb	1e 7f 	.  
	cp 02dh		;24bd	fe 2d 	. - 
	jr z,l249bh		;24bf	28 da 	( . 
	cp 02fh		;24c1	fe 2f 	. / 
	jr z,l249dh		;24c3	28 d8 	( . 
	ld e,040h		;24c5	1e 40 	. @ 
	cp 02ch		;24c7	fe 2c 	. , 
	jr z,l249bh		;24c9	28 d0 	( . 
	jr l249dh		;24cb	18 d0 	. . 
l24cdh:
	pop hl			;24cd	e1 	. 
	ex af,af'			;24ce	08 	. 
	dec a			;24cf	3d 	= 
	or a			;24d0	b7 	. 
	jr z,l24dbh		;24d1	28 08 	( . 
	ex af,af'			;24d3	08 	. 
	ld b,000h		;24d4	06 00 	. . 
	ld c,d			;24d6	4a 	J 
	add hl,bc			;24d7	09 	. 
	push hl			;24d8	e5 	. 
	jr l2492h		;24d9	18 b7 	. . 
l24dbh:
	ex af,af'			;24db	08 	. 
	set 5,(iy+000h)		;24dc	fd cb 00 ee 	. . . . 
	call sub_2446h		;24e0	cd 46 24 	. F $ 
	bit 7,e		;24e3	cb 7b 	. { 
	jp nz,l1db2h		;24e5	c2 b2 1d 	. . . 
	bit 2,(iy+016h)		;24e8	fd cb 16 56 	. . . V 
	jp nz,l2232h		;24ec	c2 32 22 	. 2 " 
	ld e,0ffh		;24ef	1e ff 	. . 
	ld ix,06dc2h		;24f1	dd 21 c2 6d 	. ! . m 
	ld h,(iy+007h)		;24f5	fd 66 07 	. f . 
	bit 7,h		;24f8	cb 7c 	. | 
	call sub_06c3h		;24fa	cd c3 06 	. . . 
	set 7,h		;24fd	cb fc 	. . 
l24ffh:
	ld l,(iy+006h)		;24ff	fd 6e 06 	. n . 
	ld a,e			;2502	7b 	{ 
	cp 003h		;2503	fe 03 	. . 
	jr z,l2580h		;2505	28 79 	( y 
	inc e			;2507	1c 	. 
	ld c,d			;2508	4a 	J 
l2509h:
	ld a,(ix+000h)		;2509	dd 7e 00 	. ~ . 
	inc ix		;250c	dd 23 	. # 
	exx			;250e	d9 	. 
	ld bc,l0000h		;250f	01 00 00 	. . . 
	ld de,l0000h		;2512	11 00 00 	. . . 
	add a,a			;2515	87 	. 
	add a,a			;2516	87 	. 
	add a,a			;2517	87 	. 
	jr nc,l251bh		;2518	30 01 	0 . 
	inc b			;251a	04 	. 
l251bh:
	add a,a			;251b	87 	. 
	jr nc,l2521h		;251c	30 03 	0 . 
	set 4,b		;251e	cb e0 	. . 
	inc c			;2520	0c 	. 
l2521h:
	add a,a			;2521	87 	. 
	jr nc,l2526h		;2522	30 02 	0 . 
	set 4,c		;2524	cb e1 	. . 
l2526h:
	add a,a			;2526	87 	. 
	jr nc,l252ah		;2527	30 01 	0 . 
	inc d			;2529	14 	. 
l252ah:
	add a,a			;252a	87 	. 
	jr nc,l2530h		;252b	30 03 	0 . 
	set 4,d		;252d	cb e2 	. . 
	inc e			;252f	1c 	. 
l2530h:
	add a,a			;2530	87 	. 
	jr nc,l2535h		;2531	30 02 	0 . 
	set 4,e		;2533	cb e3 	. . 
l2535h:
	exx			;2535	d9 	. 
	ld a,e			;2536	7b 	{ 
	cp 003h		;2537	fe 03 	. . 
	jr z,l254ah		;2539	28 0f 	( . 
l253bh:
	push hl			;253b	e5 	. 
	exx			;253c	d9 	. 
	pop hl			;253d	e1 	. 
	or a			;253e	b7 	. 
	jr nz,l255fh		;253f	20 1e 	  . 
	ld (hl),b			;2541	70 	p 
	inc h			;2542	24 	$ 
	ld (hl),c			;2543	71 	q 
	inc h			;2544	24 	$ 
	ld (hl),d			;2545	72 	r 
	inc h			;2546	24 	$ 
	ld (hl),e			;2547	73 	s 
	jr l2579h		;2548	18 2f 	. / 
l254ah:
	exx			;254a	d9 	. 
	ld a,b			;254b	78 	x 
	xor 011h		;254c	ee 11 	. . 
	ld b,a			;254e	47 	G 
	ld a,c			;254f	79 	y 
	xor 011h		;2550	ee 11 	. . 
	ld c,a			;2552	4f 	O 
	ld a,d			;2553	7a 	z 
	xor 011h		;2554	ee 11 	. . 
	ld d,a			;2556	57 	W 
	ld a,e			;2557	7b 	{ 
	xor 011h		;2558	ee 11 	. . 
	ld e,a			;255a	5f 	_ 
	exx			;255b	d9 	. 
	ld a,e			;255c	7b 	{ 
	jr l253bh		;255d	18 dc 	. . 
l255fh:
	sla b		;255f	cb 20 	.   
	sla c		;2561	cb 21 	. ! 
	sla d		;2563	cb 22 	. " 
	sla e		;2565	cb 23 	. # 
	dec a			;2567	3d 	= 
	jr nz,l255fh		;2568	20 f5 	  . 
	ld a,(hl)			;256a	7e 	~ 
	or b			;256b	b0 	. 
	ld (hl),a			;256c	77 	w 
	inc h			;256d	24 	$ 
	ld a,(hl)			;256e	7e 	~ 
	or c			;256f	b1 	. 
	ld (hl),a			;2570	77 	w 
	inc h			;2571	24 	$ 
	ld a,(hl)			;2572	7e 	~ 
	or d			;2573	b2 	. 
	ld (hl),a			;2574	77 	w 
	inc h			;2575	24 	$ 
	ld a,(hl)			;2576	7e 	~ 
	or e			;2577	b3 	. 
	ld (hl),a			;2578	77 	w 
l2579h:
	exx			;2579	d9 	. 
	dec c			;257a	0d 	. 
	jr z,l24ffh		;257b	28 82 	( . 
	inc l			;257d	2c 	, 
	jr l2509h		;257e	18 89 	. . 
l2580h:
	ld h,(iy+007h)		;2580	fd 66 07 	. f . 
	bit 3,d		;2583	cb 5a 	. Z 
	jr nz,l258ch		;2585	20 05 	  . 
	push hl			;2587	e5 	. 
	call sub_258fh		;2588	cd 8f 25 	. . % 
	pop hl			;258b	e1 	. 
l258ch:
	jp l22a2h		;258c	c3 a2 22 	. . " 
sub_258fh:
	ld a,d			;258f	7a 	z 
	add a,l			;2590	85 	. 
	dec a			;2591	3d 	= 
	ld e,a			;2592	5f 	_ 
	add a,d			;2593	82 	. 
	ld l,a			;2594	6f 	o 
	ld a,d			;2595	7a 	z 
	add a,d			;2596	82 	. 
	ld c,a			;2597	4f 	O 
	jr l25ach		;2598	18 12 	. . 
sub_259ah:
	ld a,(06d73h)		;259a	3a 73 6d 	: s m 
	ld c,a			;259d	4f 	O 
	ex af,af'			;259e	08 	. 
	ld a,c			;259f	79 	y 
	add a,l			;25a0	85 	. 
	dec a			;25a1	3d 	= 
	ld e,a			;25a2	5f 	_ 
	ld d,0a4h		;25a3	16 a4 	. . 
	call sub_06aah		;25a5	cd aa 06 	. . . 
	ld a,(de)			;25a8	1a 	. 
	add a,c			;25a9	81 	. 
	dec a			;25aa	3d 	= 
	ld l,a			;25ab	6f 	o 
l25ach:
	bit 7,h		;25ac	cb 7c 	. | 
	call z,l06a6h		;25ae	cc a6 06 	. . . 
	set 7,h		;25b1	cb fc 	. . 
l25b3h:
	ld d,h			;25b3	54 	T 
	ld b,004h		;25b4	06 04 	. . 
l25b6h:
	ld a,(de)			;25b6	1a 	. 
	ld (hl),a			;25b7	77 	w 
	dec l			;25b8	2d 	- 
	ld (hl),a			;25b9	77 	w 
	inc l			;25ba	2c 	, 
	inc h			;25bb	24 	$ 
	inc d			;25bc	14 	. 
	djnz l25b6h		;25bd	10 f7 	. . 
	dec e			;25bf	1d 	. 
	dec l			;25c0	2d 	- 
	dec l			;25c1	2d 	- 
	dec h			;25c2	25 	% 
	dec h			;25c3	25 	% 
	dec h			;25c4	25 	% 
	dec h			;25c5	25 	% 
	dec c			;25c6	0d 	. 
	dec c			;25c7	0d 	. 
	jr nz,l25b3h		;25c8	20 e9 	  . 
	ex af,af'			;25ca	08 	. 
	ld c,a			;25cb	4f 	O 
	ld a,e			;25cc	7b 	{ 
	cp l			;25cd	bd 	. 
	ret z			;25ce	c8 	. 
	ld a,c			;25cf	79 	y 
	rrca			;25d0	0f 	. 
	add a,e			;25d1	83 	. 
	ld l,a			;25d2	6f 	o 
	jr l25b3h		;25d3	18 de 	. . 
sub_25d5h:
	push iy		;25d5	fd e5 	. . 
	ld iy,l263bh		;25d7	fd 21 3b 26 	. ! ; & 
	jr z,l25e1h		;25db	28 04 	( . 
	ld iy,l264eh		;25dd	fd 21 4e 26 	. ! N & 
l25e1h:
	ld a,e			;25e1	7b 	{ 
	dec a			;25e2	3d 	= 
	add a,h			;25e3	84 	. 
	ld d,a			;25e4	57 	W 
	add a,e			;25e5	83 	. 
	ld h,a			;25e6	67 	g 
	xor d			;25e7	aa 	. 
	bit 7,a		;25e8	cb 7f 	.  
	ld ix,l260eh		;25ea	dd 21 0e 26 	. ! . & 
	jr z,l25f4h		;25ee	28 04 	( . 
	ld ix,l262eh		;25f0	dd 21 2e 26 	. ! . & 
l25f4h:
	bit 7,d		;25f4	cb 7a 	. z 
	call sub_06c3h		;25f6	cd c3 06 	. . . 
	set 7,d		;25f9	cb fa 	. . 
	set 7,h		;25fb	cb fc 	. . 
	ld a,e			;25fd	7b 	{ 
	exx			;25fe	d9 	. 
	ld c,a			;25ff	4f 	O 
	ld a,(06d73h)		;2600	3a 73 6d 	: s m 
	ld b,a			;2603	47 	G 
	ld d,b			;2604	50 	P 
l2605h:
	exx			;2605	d9 	. 
l2606h:
	ld e,l			;2606	5d 	] 
	ld a,(de)			;2607	1a 	. 
	ld b,a			;2608	47 	G 
	jp (iy)		;2609	fd e9 	. . 
l260bh:
	or c			;260b	b1 	. 
	jp (ix)		;260c	dd e9 	. . 
l260eh:
	ld (hl),e			;260e	73 	s 
	dec h			;260f	25 	% 
	ld (hl),a			;2610	77 	w 
l2611h:
	inc h			;2611	24 	$ 
	inc l			;2612	2c 	, 
	ld a,l			;2613	7d 	} 
	exx			;2614	d9 	. 
	djnz l2605h		;2615	10 ee 	. . 
	dec c			;2617	0d 	. 
	jr z,l266ah		;2618	28 50 	( P 
	sub d			;261a	92 	. 
	ld b,d			;261b	42 	B 
	exx			;261c	d9 	. 
	ld l,a			;261d	6f 	o 
	dec d			;261e	15 	. 
	dec h			;261f	25 	% 
	dec h			;2620	25 	% 
	ld a,h			;2621	7c 	| 
	cp 07fh		;2622	fe 7f 	.  
	jr nz,l2606h		;2624	20 e0 	  . 
	ld ix,l260eh		;2626	dd 21 0e 26 	. ! . & 
	set 7,h		;262a	cb fc 	. . 
	jr l2606h		;262c	18 d8 	. . 
l262eh:
	push af			;262e	f5 	. 
	call sub_06aah		;262f	cd aa 06 	. . . 
	pop af			;2632	f1 	. 
	ld (hl),e			;2633	73 	s 
	dec h			;2634	25 	% 
	ld (hl),a			;2635	77 	w 
	call l06a6h		;2636	cd a6 06 	. . . 
	jr l2611h		;2639	18 d6 	. . 
l263bh:
	and 009h		;263b	e6 09 	. . 
	ld c,a			;263d	4f 	O 
	ld a,b			;263e	78 	x 
	rla			;263f	17 	. 
	and 036h		;2640	e6 36 	. 6 
	or c			;2642	b1 	. 
	ld e,a			;2643	5f 	_ 
	ld a,b			;2644	78 	x 
	rra			;2645	1f 	. 
	and 01bh		;2646	e6 1b 	. . 
	ld c,a			;2648	4f 	O 
	ld a,b			;2649	78 	x 
	and 024h		;264a	e6 24 	. $ 
	jr l260bh		;264c	18 bd 	. . 
l264eh:
	bit 0,d		;264e	cb 42 	. B 
	jr nz,l265dh		;2650	20 0b 	  . 
	ld e,a			;2652	5f 	_ 
	and 00fh		;2653	e6 0f 	. . 
	ld b,a			;2655	47 	G 
	rlca			;2656	07 	. 
	rlca			;2657	07 	. 
	rlca			;2658	07 	. 
	rlca			;2659	07 	. 
	or b			;265a	b0 	. 
	jr l260bh		;265b	18 ae 	. . 
l265dh:
	ld b,a			;265d	47 	G 
	and 0f0h		;265e	e6 f0 	. . 
	ld e,a			;2660	5f 	_ 
	rrca			;2661	0f 	. 
	rrca			;2662	0f 	. 
	rrca			;2663	0f 	. 
	rrca			;2664	0f 	. 
	or e			;2665	b3 	. 
	ld e,a			;2666	5f 	_ 
	ld a,b			;2667	78 	x 
	jr l260bh		;2668	18 a1 	. . 
l266ah:
	exx			;266a	d9 	. 
	pop iy		;266b	fd e1 	. . 
	ret			;266d	c9 	. 
sub_266eh:
	ld a,(06d73h)		;266e	3a 73 6d 	: s m 
	ld c,a			;2671	4f 	O 
	set 7,h		;2672	cb fc 	. . 
	ld d,002h		;2674	16 02 	. . 
	ld e,l			;2676	5d 	] 
l2677h:
	ld b,c			;2677	41 	A 
	ld l,e			;2678	6b 	k 
l2679h:
	ld a,(hl)			;2679	7e 	~ 
	and 0f9h		;267a	e6 f9 	. . 
	ld (hl),a			;267c	77 	w 
	inc l			;267d	2c 	, 
	djnz l2679h		;267e	10 f9 	. . 
	inc h			;2680	24 	$ 
	inc h			;2681	24 	$ 
	dec d			;2682	15 	. 
	jr nz,l2677h		;2683	20 f2 	  . 
	ld d,003h		;2685	16 03 	. . 
	dec h			;2687	25 	% 
	dec l			;2688	2d 	- 
	ld e,h			;2689	5c 	\ 
l268ah:
	ld b,004h		;268a	06 04 	. . 
	ld h,e			;268c	63 	c 
l268dh:
	ld (hl),000h		;268d	36 00 	6 . 
	dec h			;268f	25 	% 
	djnz l268dh		;2690	10 fb 	. . 
	dec l			;2692	2d 	- 
	dec l			;2693	2d 	- 
	dec l			;2694	2d 	- 
	bit 0,d		;2695	cb 42 	. B 
	jr z,l269dh		;2697	28 04 	( . 
	bit 1,c		;2699	cb 49 	. I 
	jr nz,l269eh		;269b	20 01 	  . 
l269dh:
	dec l			;269d	2d 	- 
l269eh:
	dec d			;269e	15 	. 
	jr nz,l268ah		;269f	20 e9 	  . 
	ret			;26a1	c9 	. 
sub_26a2h:
	ld a,(06d73h)		;26a2	3a 73 6d 	: s m 
	add a,l			;26a5	85 	. 
	dec a			;26a6	3d 	= 
	ld l,a			;26a7	6f 	o 
	ld a,007h		;26a8	3e 07 	> . 
	set 7,h		;26aa	cb fc 	. . 
	ld b,004h		;26ac	06 04 	. . 
l26aeh:
	ld (hl),a			;26ae	77 	w 
	inc h			;26af	24 	$ 
	djnz l26aeh		;26b0	10 fc 	. . 
	ret			;26b2	c9 	. 
sub_26b3h:
	ld h,004h		;26b3	26 04 	& . 
	ld l,(iy+006h)		;26b5	fd 6e 06 	. n . 
	ld a,(06d73h)		;26b8	3a 73 6d 	: s m 
	ld c,a			;26bb	4f 	O 
	ld b,000h		;26bc	06 00 	. . 
	ld de,l0100h		;26be	11 00 01 	. . . 
	bit 7,h		;26c1	cb 7c 	. | 
	jr nz,l26d3h		;26c3	20 0e 	  . 
	call sub_06aeh		;26c5	cd ae 06 	. . . 
	ld a,080h		;26c8	3e 80 	> . 
	sub h			;26ca	94 	. 
	set 7,h		;26cb	cb fc 	. . 
	ld (hl),b			;26cd	70 	p 
	call sub_10b5h		;26ce	cd b5 10 	. . . 
	ld h,080h		;26d1	26 80 	& . 
l26d3h:
	call sub_06b7h		;26d3	cd b7 06 	. . . 
	ld a,0a4h		;26d6	3e a4 	> . 
	sub h			;26d8	94 	. 
	ld (hl),b			;26d9	70 	p 
	call sub_10b5h		;26da	cd b5 10 	. . . 
	ld h,0c3h		;26dd	26 c3 	& . 
	ld a,(iy+004h)		;26df	fd 7e 04 	. ~ . 
	and 01fh		;26e2	e6 1f 	. . 
	ld l,a			;26e4	6f 	o 
	ld bc,l0020h		;26e5	01 20 00 	.   . 
l26e8h:
	ld (hl),000h		;26e8	36 00 	6 . 
	add hl,bc			;26ea	09 	. 
	ld a,h			;26eb	7c 	| 
	cp 0c8h		;26ec	fe c8 	. . 
	jr nz,l26e8h		;26ee	20 f8 	  . 
	ret			;26f0	c9 	. 
sub_26f1h:
	ld a,(iy+009h)		;26f1	fd 7e 09 	. ~ . 
	add a,l			;26f4	85 	. 
	ld l,a			;26f5	6f 	o 
sub_26f6h:
	call sub_06aah		;26f6	cd aa 06 	. . . 
	set 7,(hl)		;26f9	cb fe 	. . 
	ret			;26fb	c9 	. 
sub_26fch:
	ld a,0c3h		;26fc	3e c3 	> . 
	jr sub_2702h		;26fe	18 02 	. . 
sub_2700h:
	ld a,0b4h		;2700	3e b4 	> . 
sub_2702h:
	add a,(iy+005h)		;2702	fd 86 05 	. . . 
	ld h,a			;2705	67 	g 
	ld l,(iy+004h)		;2706	fd 6e 04 	. n . 
	ret			;2709	c9 	. 
sub_270ah:
	ld hl,06dc2h		;270a	21 c2 6d 	! . m 
	ld ix,06dc2h		;270d	dd 21 c2 6d 	. ! . m 
	bit 6,a		;2711	cb 77 	. w 
	jr nz,l2717h		;2713	20 02 	  . 
	and 0dfh		;2715	e6 df 	. . 
l2717h:
	ld c,003h		;2717	0e 03 	. . 
l2719h:
	ld b,004h		;2719	06 04 	. . 
	ld d,040h		;271b	16 40 	. @ 
	ld e,d			;271d	5a 	Z 
	rra			;271e	1f 	. 
	jr nc,l2723h		;271f	30 02 	0 . 
	ld d,07fh		;2721	16 7f 	.  
l2723h:
	rra			;2723	1f 	. 
	jr nc,l2728h		;2724	30 02 	0 . 
	ld e,07fh		;2726	1e 7f 	.  
l2728h:
	ld (hl),d			;2728	72 	r 
	inc hl			;2729	23 	# 
	ld (hl),e			;272a	73 	s 
	inc hl			;272b	23 	# 
	djnz l2728h		;272c	10 fa 	. . 
	dec c			;272e	0d 	. 
	jr nz,l2719h		;272f	20 e8 	  . 
	ret			;2731	c9 	. 
sub_2732h:
	ld de,l3f00h		;2732	11 00 3f 	. . ? 
l2735h:
	exx			;2735	d9 	. 
	ld de,l3f40h		;2736	11 40 3f 	. @ ? 
	ld hl,06dc2h		;2739	21 c2 6d 	! . m 
	ld ix,06dc2h		;273c	dd 21 c2 6d 	. ! . m 
	ld c,07fh		;2740	0e 7f 	.  
	ld b,040h		;2742	06 40 	. @ 
	bit 5,a		;2744	cb 6f 	. o 
	jr z,l2749h		;2746	28 01 	( . 
	ld b,c			;2748	41 	A 
l2749h:
	rla			;2749	17 	. 
	rla			;274a	17 	. 
	and 07ch		;274b	e6 7c 	. | 
	push hl			;274d	e5 	. 
	ld l,a			;274e	6f 	o 
	ld h,000h		;274f	26 00 	& . 
	add hl,de			;2751	19 	. 
	ld a,(hl)			;2752	7e 	~ 
	or a			;2753	b7 	. 
	jr nz,l2762h		;2754	20 0c 	  . 
	inc hl			;2756	23 	# 
	ld e,(hl)			;2757	5e 	^ 
	inc hl			;2758	23 	# 
	ld d,(hl)			;2759	56 	V 
	pop hl			;275a	e1 	. 
	ex de,hl			;275b	eb 	. 
	ld bc,l0018h		;275c	01 18 00 	. . . 
	ldir		;275f	ed b0 	. . 
	ret			;2761	c9 	. 
l2762h:
	ex de,hl			;2762	eb 	. 
	pop hl			;2763	e1 	. 
	ex af,af'			;2764	08 	. 
	ld a,(de)			;2765	1a 	. 
	exx			;2766	d9 	. 
	ld c,000h		;2767	0e 00 	. . 
	bit 6,a		;2769	cb 77 	. w 
	jr z,l276eh		;276b	28 01 	( . 
	ld c,a			;276d	4f 	O 
l276eh:
	bit 7,a		;276e	cb 7f 	.  
	jr nz,l2773h		;2770	20 01 	  . 
	xor a			;2772	af 	. 
l2773h:
	exx			;2773	d9 	. 
	ex af,af'			;2774	08 	. 
l2775h:
	inc de			;2775	13 	. 
	ld a,e			;2776	7b 	{ 
	and 003h		;2777	e6 03 	. . 
	ret z			;2779	c8 	. 
	ld a,(de)			;277a	1a 	. 
	rra			;277b	1f 	. 
	rra			;277c	1f 	. 
	call sub_278dh		;277d	cd 8d 27 	. . ' 
	ld a,0f9h		;2780	3e f9 	> . 
	add a,l			;2782	85 	. 
	ld l,a			;2783	6f 	o 
	ld a,(de)			;2784	1a 	. 
	rla			;2785	17 	. 
	rla			;2786	17 	. 
	call sub_278dh		;2787	cd 8d 27 	. . ' 
	dec hl			;278a	2b 	+ 
	jr l2775h		;278b	18 e8 	. . 
sub_278dh:
	and 03ch		;278d	e6 3c 	. < 
	exx			;278f	d9 	. 
	ex af,af'			;2790	08 	. 
	rrca			;2791	0f 	. 
	jr nc,l2798h		;2792	30 04 	0 . 
	ex af,af'			;2794	08 	. 
	add a,003h		;2795	c6 03 	. . 
	ex af,af'			;2797	08 	. 
l2798h:
	ex af,af'			;2798	08 	. 
	add a,e			;2799	83 	. 
	ld l,a			;279a	6f 	o 
	ld h,d			;279b	62 	b 
	ld b,004h		;279c	06 04 	. . 
l279eh:
	ld a,(hl)			;279e	7e 	~ 
	bit 0,c		;279f	cb 41 	. A 
	exx			;27a1	d9 	. 
	jr z,l27a5h		;27a2	28 01 	( . 
	cpl			;27a4	2f 	/ 
l27a5h:
	and 03fh		;27a5	e6 3f 	. ? 
	xor b			;27a7	a8 	. 
	and c			;27a8	a1 	. 
	ld (hl),a			;27a9	77 	w 
	inc hl			;27aa	23 	# 
	inc hl			;27ab	23 	# 
	exx			;27ac	d9 	. 
	dec hl			;27ad	2b 	+ 
	ex af,af'			;27ae	08 	. 
	bit 7,a		;27af	cb 7f 	.  
	jr nz,l27b5h		;27b1	20 02 	  . 
	inc hl			;27b3	23 	# 
	inc hl			;27b4	23 	# 
l27b5h:
	ex af,af'			;27b5	08 	. 
	djnz l279eh		;27b6	10 e6 	. . 
	sra c		;27b8	cb 29 	. ) 
	exx			;27ba	d9 	. 
	ret			;27bb	c9 	. 
sub_27bch:
	ld e,(iy+00ch)		;27bc	fd 5e 0c 	. ^ . 
	call sub_2810h		;27bf	cd 10 28 	. . ( 
	push ix		;27c2	dd e5 	. . 
	call sub_27edh		;27c4	cd ed 27 	. . ' 
	push de			;27c7	d5 	. 
	push hl			;27c8	e5 	. 
	push bc			;27c9	c5 	. 
	push ix		;27ca	dd e5 	. . 
	push af			;27cc	f5 	. 
	call sub_289ah		;27cd	cd 9a 28 	. . ( 
	call sub_27edh		;27d0	cd ed 27 	. . ' 
	call sub_296fh		;27d3	cd 6f 29 	. o ) 
	di			;27d6	f3 	. 
	ld (ix+000h),b		;27d7	dd 70 00 	. p . 
	ld (hl),c			;27da	71 	q 
	ld (de),a			;27db	12 	. 
	pop af			;27dc	f1 	. 
	pop ix		;27dd	dd e1 	. . 
	pop bc			;27df	c1 	. 
	pop hl			;27e0	e1 	. 
	pop de			;27e1	d1 	. 
	ld (ix+000h),b		;27e2	dd 70 00 	. p . 
	ld (hl),c			;27e5	71 	q 
	ld (de),a			;27e6	12 	. 
	ei			;27e7	fb 	. 
	pop ix		;27e8	dd e1 	. . 
	jp l28d8h		;27ea	c3 d8 28 	. . ( 
sub_27edh:
	call sub_2946h		;27ed	cd 46 29 	. F ) 
	ld e,a			;27f0	5f 	_ 
	ld a,(071e0h)		;27f1	3a e0 71 	: . q 
	add a,e			;27f4	83 	. 
	ld l,a			;27f5	6f 	o 
	ld b,(hl)			;27f6	46 	F 
	push bc			;27f7	c5 	. 
	ld e,a			;27f8	5f 	_ 
	ld l,a			;27f9	6f 	o 
	call sub_2955h		;27fa	cd 55 29 	. U ) 
	pop bc			;27fd	c1 	. 
	push hl			;27fe	e5 	. 
	ld a,l			;27ff	7d 	} 
	exx			;2800	d9 	. 
	pop hl			;2801	e1 	. 
	ld b,(hl)			;2802	46 	F 
	exx			;2803	d9 	. 
	ld l,c			;2804	69 	i 
	push hl			;2805	e5 	. 
	pop ix		;2806	dd e1 	. . 
	ld c,d			;2808	4a 	J 
	ld d,h			;2809	54 	T 
	ld l,a			;280a	6f 	o 
	exx			;280b	d9 	. 
	push bc			;280c	c5 	. 
	exx			;280d	d9 	. 
	pop af			;280e	f1 	. 
	ret			;280f	c9 	. 
sub_2810h:
	bit 6,(iy+000h)		;2810	fd cb 00 76 	. . . v 
	jr nz,l282dh		;2814	20 17 	  . 
	ld a,(iy+00dh)		;2816	fd 7e 0d 	. ~ . 
	cp 019h		;2819	fe 19 	. . 
	jr nc,l282dh		;281b	30 10 	0 . 
	ld b,(iy+00ch)		;281d	fd 46 0c 	. F . 
	ld a,000h		;2820	3e 00 	> . 
	cp b			;2822	b8 	. 
	jr nc,l282dh		;2823	30 08 	0 . 
	ld a,b			;2825	78 	x 
	ld hl,06da2h		;2826	21 a2 6d 	! . m 
	dec a			;2829	3d 	= 
	cp (hl)			;282a	be 	. 
	jr c,l282fh		;282b	38 02 	8 . 
l282dh:
	pop hl			;282d	e1 	. 
	ret			;282e	c9 	. 
l282fh:
	inc a			;282f	3c 	< 
	call sub_1f30h		;2830	cd 30 1f 	. 0 . 
	ld hl,06821h		;2833	21 21 68 	! ! h 
	ld b,e			;2836	43 	C 
l2837h:
	ld a,040h		;2837	3e 40 	> @ 
	add a,(hl)			;2839	86 	. 
	ld l,a			;283a	6f 	o 
	ld h,06dh		;283b	26 6d 	& m 
	djnz l2837h		;283d	10 f8 	. . 
	and 01fh		;283f	e6 1f 	. . 
	ld (071e1h),a		;2841	32 e1 71 	2 . q 
	push af			;2844	f5 	. 
	call l1e3bh		;2845	cd 3b 1e 	. ; . 
	call sub_26b3h		;2848	cd b3 26 	. . & 
	pop af			;284b	f1 	. 
	push af			;284c	f5 	. 
	ld hl,0b3e0h		;284d	21 e0 b3 	! . . 
	add a,l			;2850	85 	. 
	ld l,a			;2851	6f 	o 
	res 7,(hl)		;2852	cb be 	. . 
	pop af			;2854	f1 	. 
	ld l,a			;2855	6f 	o 
	ld h,0b4h		;2856	26 b4 	& . 
	push hl			;2858	e5 	. 
	ld (hl),000h		;2859	36 00 	6 . 
	ld a,h			;285b	7c 	| 
	add a,005h		;285c	c6 05 	. . 
	ld h,a			;285e	67 	g 
	ld (hl),00fh		;285f	36 0f 	6 . 
	add a,00fh		;2861	c6 0f 	. . 
	ld h,a			;2863	67 	g 
	ld (hl),080h		;2864	36 80 	6 . 
	add a,005h		;2866	c6 05 	. . 
	ld h,a			;2868	67 	g 
	ld (hl),000h		;2869	36 00 	6 . 
	pop hl			;286b	e1 	. 
	call sub_2ee3h		;286c	cd e3 2e 	. . . 
	call sub_316eh		;286f	cd 6e 31 	. n 1 
	ld a,(iy+00ch)		;2872	fd 7e 0c 	. ~ . 
	cp (iy+00dh)		;2875	fd be 0d 	. . . 
	jr nz,l287eh		;2878	20 04 	  . 
	pop hl			;287a	e1 	. 
	jp l28f0h		;287b	c3 f0 28 	. . ( 
l287eh:
	exx			;287e	d9 	. 
	ld hl,08807h		;287f	21 07 88 	! . . 
	call sub_06aeh		;2882	cd ae 06 	. . . 
	ld b,(hl)			;2885	46 	F 
	call sub_06b7h		;2886	cd b7 06 	. . . 
	ex de,hl			;2889	eb 	. 
	ld hl,0a40fh		;288a	21 0f a4 	! . . 
	ld (hl),b			;288d	70 	p 
	push hl			;288e	e5 	. 
	exx			;288f	d9 	. 
	ld c,001h		;2890	0e 01 	. . 
	call sub_2917h		;2892	cd 17 29 	. . ) 
	pop hl			;2895	e1 	. 
	ld a,(06d73h)		;2896	3a 73 6d 	: s m 
	ret			;2899	c9 	. 
sub_289ah:
	exx			;289a	d9 	. 
	ld hl,06821h		;289b	21 21 68 	! ! h 
	ld b,(hl)			;289e	46 	F 
	ld de,06d5dh		;289f	11 5d 6d 	. ] m 
	ex de,hl			;28a2	eb 	. 
	ld (hl),b			;28a3	70 	p 
	push hl			;28a4	e5 	. 
	exx			;28a5	d9 	. 
	pop hl			;28a6	e1 	. 
	ld a,041h		;28a7	3e 41 	> A 
	ret			;28a9	c9 	. 
sub_28aah:
	ld e,(iy+00dh)		;28aa	fd 5e 0d 	. ^ . 
	call sub_2810h		;28ad	cd 10 28 	. . ( 
	push ix		;28b0	dd e5 	. . 
	call sub_292ch		;28b2	cd 2c 29 	. , ) 
	push ix		;28b5	dd e5 	. . 
	push hl			;28b7	e5 	. 
	push de			;28b8	d5 	. 
	push bc			;28b9	c5 	. 
	push af			;28ba	f5 	. 
	call sub_289ah		;28bb	cd 9a 28 	. . ( 
	call sub_292ch		;28be	cd 2c 29 	. , ) 
	call sub_296fh		;28c1	cd 6f 29 	. o ) 
	di			;28c4	f3 	. 
	ld (de),a			;28c5	12 	. 
	ld (ix+000h),b		;28c6	dd 70 00 	. p . 
	ld (hl),c			;28c9	71 	q 
	pop af			;28ca	f1 	. 
	pop bc			;28cb	c1 	. 
	pop de			;28cc	d1 	. 
	pop hl			;28cd	e1 	. 
	pop ix		;28ce	dd e1 	. . 
	ld (de),a			;28d0	12 	. 
	ld (ix+000h),b		;28d1	dd 70 00 	. p . 
	ld (hl),c			;28d4	71 	q 
	ei			;28d5	fb 	. 
	pop ix		;28d6	dd e1 	. . 
l28d8h:
	exx			;28d8	d9 	. 
	ld hl,06d5dh		;28d9	21 5d 6d 	! ] m 
	ld a,(hl)			;28dc	7e 	~ 
	ld (de),a			;28dd	12 	. 
	ld hl,0a40fh		;28de	21 0f a4 	! . . 
	ld b,(hl)			;28e1	46 	F 
	call sub_06aeh		;28e2	cd ae 06 	. . . 
	ld hl,08807h		;28e5	21 07 88 	! . . 
	ld (hl),b			;28e8	70 	p 
	call sub_06b7h		;28e9	cd b7 06 	. . . 
	exx			;28ec	d9 	. 
	call sub_28f6h		;28ed	cd f6 28 	. . ( 
l28f0h:
	ld a,(071e1h)		;28f0	3a e1 71 	: . q 
	jp l1e3bh		;28f3	c3 3b 1e 	. ; . 
sub_28f6h:
	call sub_290bh		;28f6	cd 0b 29 	. . ) 
l28f9h:
	push de			;28f9	d5 	. 
	ld a,d			;28fa	7a 	z 
	add a,008h		;28fb	c6 08 	. . 
	ld d,a			;28fd	57 	W 
	inc hl			;28fe	23 	# 
	ld a,(hl)			;28ff	7e 	~ 
	ld (de),a			;2900	12 	. 
	pop de			;2901	d1 	. 
	ld a,(de)			;2902	1a 	. 
	add a,040h		;2903	c6 40 	. @ 
	ld e,a			;2905	5f 	_ 
	ld d,06dh		;2906	16 6d 	. m 
	djnz l28f9h		;2908	10 ef 	. . 
	ret			;290a	c9 	. 
sub_290bh:
	ld hl,0da09h		;290b	21 09 da 	! . . 
	ld a,(06da2h)		;290e	3a a2 6d 	: . m 
	inc a			;2911	3c 	< 
	ld b,a			;2912	47 	G 
	ld de,06821h		;2913	11 21 68 	. ! h 
	ret			;2916	c9 	. 
sub_2917h:
	call sub_290bh		;2917	cd 0b 29 	. . ) 
l291ah:
	push de			;291a	d5 	. 
	ld a,d			;291b	7a 	z 
	add a,008h		;291c	c6 08 	. . 
	ld d,a			;291e	57 	W 
	ld a,(de)			;291f	1a 	. 
	inc hl			;2920	23 	# 
	ld (hl),a			;2921	77 	w 
	pop de			;2922	d1 	. 
	ld a,(de)			;2923	1a 	. 
	add a,040h		;2924	c6 40 	. @ 
	ld e,a			;2926	5f 	_ 
	ld d,06dh		;2927	16 6d 	. m 
	djnz l291ah		;2929	10 ef 	. . 
	ret			;292b	c9 	. 
sub_292ch:
	call sub_2946h		;292c	cd 46 29 	. F ) 
	call sub_2955h		;292f	cd 55 29 	. U ) 
	ld b,(hl)			;2932	46 	F 
	ld l,c			;2933	69 	i 
	push hl			;2934	e5 	. 
	ld c,a			;2935	4f 	O 
	ld a,(071e0h)		;2936	3a e0 71 	: . q 
	add a,b			;2939	80 	. 
	ld l,a			;293a	6f 	o 
	ld e,(hl)			;293b	5e 	^ 
	pop hl			;293c	e1 	. 
	push hl			;293d	e5 	. 
	pop ix		;293e	dd e1 	. . 
	ld l,c			;2940	69 	i 
	ld c,e			;2941	4b 	K 
	ld e,a			;2942	5f 	_ 
	ld a,d			;2943	7a 	z 
	ld d,h			;2944	54 	T 
	ret			;2945	c9 	. 
sub_2946h:
	dec a			;2946	3d 	= 
	ld (071e0h),a		;2947	32 e0 71 	2 . q 
	ld b,(iy+00ch)		;294a	fd 46 0c 	. F . 
	dec b			;294d	05 	. 
	call nz,sub_2967h		;294e	c4 67 29 	. g ) 
	ld c,l			;2951	4d 	M 
	ld d,(hl)			;2952	56 	V 
	ld a,(hl)			;2953	7e 	~ 
	ret			;2954	c9 	. 
sub_2955h:
	ld a,(06da2h)		;2955	3a a2 6d 	: . m 
	inc a			;2958	3c 	< 
	ld b,a			;2959	47 	G 
	ld a,(iy+00dh)		;295a	fd 7e 0d 	. ~ . 
	cp b			;295d	b8 	. 
	jr c,l2962h		;295e	38 02 	8 . 
	ld a,b			;2960	78 	x 
	dec a			;2961	3d 	= 
l2962h:
	ld b,(iy+00ch)		;2962	fd 46 0c 	. F . 
	sub b			;2965	90 	. 
	ld b,a			;2966	47 	G 
sub_2967h:
	ld a,(071e0h)		;2967	3a e0 71 	: . q 
	add a,(hl)			;296a	86 	. 
	ld l,a			;296b	6f 	o 
	djnz sub_2967h		;296c	10 f9 	. . 
	ret			;296e	c9 	. 
sub_296fh:
	ex af,af'			;296f	08 	. 
	push hl			;2970	e5 	. 
	ld hl,06d66h		;2971	21 66 6d 	! f m 
	ld a,(hl)			;2974	7e 	~ 
l2975h:
	cp (hl)			;2975	be 	. 
	jr z,l2975h		;2976	28 fd 	( . 
	pop hl			;2978	e1 	. 
	ex af,af'			;2979	08 	. 
	ret			;297a	c9 	. 
l297bh:
	push de			;297b	d5 	. 
	ld b,000h		;297c	06 00 	. . 
	bit 1,(iy+000h)		;297e	fd cb 00 4e 	. . . N 
	jr nz,l298ch		;2982	20 08 	  . 
	ld a,0b9h		;2984	3e b9 	> . 
	call sub_2702h		;2986	cd 02 27 	. . ' 
	ld a,(hl)			;2989	7e 	~ 
	jr l298fh		;298a	18 03 	. . 
l298ch:
	ld a,(iy+002h)		;298c	fd 7e 02 	. ~ . 
l298fh:
	and 0c0h		;298f	e6 c0 	. . 
	ld c,a			;2991	4f 	O 
	rrca			;2992	0f 	. 
	rrca			;2993	0f 	. 
	ld b,a			;2994	47 	G 
	call sub_2700h		;2995	cd 00 27 	. . ' 
	bit 6,(iy+000h)		;2998	fd cb 00 76 	. . . v 
	jr nz,l29a3h		;299c	20 05 	  . 
	call sub_30ceh		;299e	cd ce 30 	. . 0 
	jr nz,l29beh		;29a1	20 1b 	  . 
l29a3h:
	call sub_3137h		;29a3	cd 37 31 	. 7 1 
	jr z,l29ebh		;29a6	28 43 	( C 
	push bc			;29a8	c5 	. 
	push hl			;29a9	e5 	. 
	ld de,l0020h		;29aa	11 20 00 	.   . 
	add hl,de			;29ad	19 	. 
	ld a,0b9h		;29ae	3e b9 	> . 
	cp h			;29b0	bc 	. 
	pop hl			;29b1	e1 	. 
	jr nz,l29b6h		;29b2	20 02 	  . 
	res 7,c		;29b4	cb b9 	. . 
l29b6h:
	bit 1,(iy+000h)		;29b6	fd cb 00 4e 	. . . N 
	call nz,sub_29c5h		;29ba	c4 c5 29 	. . ) 
	pop bc			;29bd	c1 	. 
l29beh:
	pop de			;29be	d1 	. 
	set 7,e		;29bf	cb fb 	. . 
	ld (iy+016h),b		;29c1	fd 70 16 	. p . 
	ret			;29c4	c9 	. 
sub_29c5h:
	push hl			;29c5	e5 	. 
	push bc			;29c6	c5 	. 
	ld a,h			;29c7	7c 	| 
	add a,005h		;29c8	c6 05 	. . 
	ld h,a			;29ca	67 	g 
	ld a,(iy+002h)		;29cb	fd 7e 02 	. ~ . 
	and 0c0h		;29ce	e6 c0 	. . 
	ld c,a			;29d0	4f 	O 
	ld a,03fh		;29d1	3e 3f 	> ? 
	call sub_2ed8h		;29d3	cd d8 2e 	. . . 
	bit 7,c		;29d6	cb 79 	. y 
	jr z,l29e3h		;29d8	28 09 	( . 
	push de			;29da	d5 	. 
	ld de,l0020h		;29db	11 20 00 	.   . 
	add hl,de			;29de	19 	. 
	pop de			;29df	d1 	. 
	call sub_2ed8h		;29e0	cd d8 2e 	. . . 
l29e3h:
	pop bc			;29e3	c1 	. 
	pop hl			;29e4	e1 	. 
	push hl			;29e5	e5 	. 
	call sub_2b59h		;29e6	cd 59 2b 	. Y + 
	pop hl			;29e9	e1 	. 
	ret			;29ea	c9 	. 
l29ebh:
	bit 6,c		;29eb	cb 71 	. q 
	jr z,l2a4ah		;29ed	28 5b 	( [ 
	push bc			;29ef	c5 	. 
	bit 1,(iy+000h)		;29f0	fd cb 00 4e 	. . . N 
	jr nz,l2a13h		;29f4	20 1d 	  . 
	ld a,(iy+00dh)		;29f6	fd 7e 0d 	. ~ . 
	ld b,(iy+008h)		;29f9	fd 46 08 	. F . 
	cp b			;29fc	b8 	. 
	jr nz,l2a13h		;29fd	20 14 	  . 
	bit 6,(iy+000h)		;29ff	fd cb 00 76 	. . . v 
	jr nz,l2a0dh		;2a03	20 08 	  . 
	ld a,(iy+00ch)		;2a05	fd 7e 0c 	. ~ . 
	cp (iy+00dh)		;2a08	fd be 0d 	. . . 
	jr nz,l2a10h		;2a0b	20 03 	  . 
l2a0dh:
	pop bc			;2a0d	c1 	. 
	jr l2a48h		;2a0e	18 38 	. 8 
l2a10h:
	call sub_2d3ch		;2a10	cd 3c 2d 	. < - 
l2a13h:
	pop bc			;2a13	c1 	. 
	call sub_2700h		;2a14	cd 00 27 	. . ' 
	ld a,(06da2h)		;2a17	3a a2 6d 	: . m 
	cp (iy+008h)		;2a1a	fd be 08 	. . . 
	jr z,l2a48h		;2a1d	28 29 	( ) 
	ld a,(iy+00ch)		;2a1f	fd 7e 0c 	. ~ . 
	dec a			;2a22	3d 	= 
	cp (iy+008h)		;2a23	fd be 08 	. . . 
	jr z,l2a48h		;2a26	28 20 	(   
	bit 6,(iy+000h)		;2a28	fd cb 00 76 	. . . v 
	jr z,l2a40h		;2a2c	28 12 	( . 
	call sub_30ceh		;2a2e	cd ce 30 	. . 0 
	push af			;2a31	f5 	. 
	call sub_30eah		;2a32	cd ea 30 	. . 0 
	call sub_30ceh		;2a35	cd ce 30 	. . 0 
	pop hl			;2a38	e1 	. 
	xor h			;2a39	ac 	. 
	bit 7,a		;2a3a	cb 7f 	.  
	jr nz,l2a48h		;2a3c	20 0a 	  . 
	jr l2a4ah		;2a3e	18 0a 	. . 
l2a40h:
	call sub_30eah		;2a40	cd ea 30 	. . 0 
	call sub_30ceh		;2a43	cd ce 30 	. . 0 
	jr z,l2a4ah		;2a46	28 02 	( . 
l2a48h:
	res 6,c		;2a48	cb b1 	. . 
l2a4ah:
	call sub_2700h		;2a4a	cd 00 27 	. . ' 
	push hl			;2a4d	e5 	. 
	bit 7,c		;2a4e	cb 79 	. y 
	jr z,l2a61h		;2a50	28 0f 	( . 
	call sub_30efh		;2a52	cd ef 30 	. . 0 
	add hl,de			;2a55	19 	. 
	bit 6,(hl)		;2a56	cb 76 	. v 
	jr nz,l2a5fh		;2a58	20 05 	  . 
	ld a,h			;2a5a	7c 	| 
	cp 0b9h		;2a5b	fe b9 	. . 
	jr nz,l2a61h		;2a5d	20 02 	  . 
l2a5fh:
	res 7,c		;2a5f	cb b9 	. . 
l2a61h:
	ld a,b			;2a61	78 	x 
	add a,c			;2a62	81 	. 
	ld b,a			;2a63	47 	G 
	ld a,002h		;2a64	3e 02 	> . 
	call sub_2d32h		;2a66	cd 32 2d 	. 2 - 
	bit 1,(iy+000h)		;2a69	fd cb 00 4e 	. . . N 
	jr nz,l2a74h		;2a6d	20 05 	  . 
	ld a,0b9h		;2a6f	3e b9 	> . 
	call sub_2702h		;2a71	cd 02 27 	. . ' 
l2a74h:
	bit 5,(hl)		;2a74	cb 6e 	. n 
	jr z,l2a7ah		;2a76	28 02 	( . 
	set 3,b		;2a78	cb d8 	. . 
l2a7ah:
	inc l			;2a7a	2c 	, 
	bit 1,(iy+000h)		;2a7b	fd cb 00 4e 	. . . N 
	jr nz,l2a86h		;2a7f	20 05 	  . 
	ld a,0cdh		;2a81	3e cd 	> . 
	call sub_2702h		;2a83	cd 02 27 	. . ' 
l2a86h:
	bit 6,(hl)		;2a86	cb 76 	. v 
	jr z,l2a8ch		;2a88	28 02 	( . 
	set 1,b		;2a8a	cb c8 	. . 
l2a8ch:
	ld (iy+016h),b		;2a8c	fd 70 16 	. p . 
	pop hl			;2a8f	e1 	. 
	push hl			;2a90	e5 	. 
	ld a,(hl)			;2a91	7e 	~ 
	and 03fh		;2a92	e6 3f 	. ? 
	add a,c			;2a94	81 	. 
	ld (hl),a			;2a95	77 	w 
	push hl			;2a96	e5 	. 
	ld de,l0020h		;2a97	11 20 00 	.   . 
	bit 6,c		;2a9a	cb 71 	. q 
	jr z,l2aaeh		;2a9c	28 10 	( . 
	call sub_30eah		;2a9e	cd ea 30 	. . 0 
	res 7,(hl)		;2aa1	cb be 	. . 
	res 6,(hl)		;2aa3	cb b6 	. . 
	bit 7,c		;2aa5	cb 79 	. y 
	jr z,l2aaeh		;2aa7	28 05 	( . 
	add hl,de			;2aa9	19 	. 
	res 6,(hl)		;2aaa	cb b6 	. . 
	res 7,(hl)		;2aac	cb be 	. . 
l2aaeh:
	pop hl			;2aae	e1 	. 
	bit 7,c		;2aaf	cb 79 	. y 
	jr z,l2ab8h		;2ab1	28 05 	( . 
	add hl,de			;2ab3	19 	. 
	res 7,(hl)		;2ab4	cb be 	. . 
	res 6,(hl)		;2ab6	cb b6 	. . 
l2ab8h:
	pop hl			;2ab8	e1 	. 
	bit 1,(iy+000h)		;2ab9	fd cb 00 4e 	. . . N 
	call nz,sub_29c5h		;2abd	c4 c5 29 	. . ) 
	xor a			;2ac0	af 	. 
	ld (071e1h),a		;2ac1	32 e1 71 	2 . q 
	call sub_2ee3h		;2ac4	cd e3 2e 	. . . 
	ld a,(071e1h)		;2ac7	3a e1 71 	: . q 
	or a			;2aca	b7 	. 
	jr z,l2ae3h		;2acb	28 16 	( . 
	ld a,078h		;2acd	3e 78 	> x 
	call sub_2702h		;2acf	cd 02 27 	. . ' 
	ld a,(hl)			;2ad2	7e 	~ 
	and 01fh		;2ad3	e6 1f 	. . 
	ld c,a			;2ad5	4f 	O 
	xor a			;2ad6	af 	. 
	ld de,l17deh+2		;2ad7	11 e0 17 	. . . 
	sbc hl,de		;2ada	ed 52 	. R 
	ld (hl),c			;2adc	71 	q 
	set 2,(iy+016h)		;2add	fd cb 16 d6 	. . . . 
	jr l2b47h		;2ae1	18 64 	. d 
l2ae3h:
	bit 5,(iy+000h)		;2ae3	fd cb 00 6e 	. . . n 
	jr z,l2b0eh		;2ae7	28 25 	( % 
	ld a,078h		;2ae9	3e 78 	> x 
	call sub_2702h		;2aeb	cd 02 27 	. . ' 
	set 7,(hl)		;2aee	cb fe 	. . 
	ld a,h			;2af0	7c 	| 
	sub 008h		;2af1	d6 08 	. . 
	ld h,a			;2af3	67 	g 
	set 5,(hl)		;2af4	cb ee 	. . 
	sub 008h		;2af6	d6 08 	. . 
	ld h,a			;2af8	67 	g 
	ld a,(hl)			;2af9	7e 	~ 
	and 0ech		;2afa	e6 ec 	. . 
	or 011h		;2afc	f6 11 	. . 
	ld (hl),a			;2afe	77 	w 
	ld a,h			;2aff	7c 	| 
	add a,065h		;2b00	c6 65 	. e 
	ld h,a			;2b02	67 	g 
	bit 6,(hl)		;2b03	cb 76 	. v 
	jr z,l2b47h		;2b05	28 40 	( @ 
	sub 05dh		;2b07	d6 5d 	. ] 
	ld h,a			;2b09	67 	g 
	set 6,(hl)		;2b0a	cb f6 	. . 
	jr l2b47h		;2b0c	18 39 	. 9 
l2b0eh:
	bit 4,(iy+000h)		;2b0e	fd cb 00 66 	. . . f 
	jr z,l2b4dh		;2b12	28 39 	( 9 
	ld hl,06d97h		;2b14	21 97 6d 	! . m 
	ld d,(hl)			;2b17	56 	V 
	inc hl			;2b18	23 	# 
	ld e,(hl)			;2b19	5e 	^ 
	inc hl			;2b1a	23 	# 
	ld b,(hl)			;2b1b	46 	F 
	inc hl			;2b1c	23 	# 
	ld a,(hl)			;2b1d	7e 	~ 
	rlca			;2b1e	07 	. 
	rlca			;2b1f	07 	. 
	rlca			;2b20	07 	. 
	push af			;2b21	f5 	. 
	and 0c0h		;2b22	e6 c0 	. . 
	or d			;2b24	b2 	. 
	ld d,a			;2b25	57 	W 
	pop af			;2b26	f1 	. 
	rlca			;2b27	07 	. 
	rlca			;2b28	07 	. 
	and 0e0h		;2b29	e6 e0 	. . 
	or e			;2b2b	b3 	. 
	ld e,a			;2b2c	5f 	_ 
	set 5,d		;2b2d	cb ea 	. . 
	ld a,068h		;2b2f	3e 68 	> h 
	call sub_2702h		;2b31	cd 02 27 	. . ' 
	ld a,(hl)			;2b34	7e 	~ 
	and 0e0h		;2b35	e6 e0 	. . 
	add a,b			;2b37	80 	. 
	ld (hl),a			;2b38	77 	w 
	ld a,h			;2b39	7c 	| 
	add a,008h		;2b3a	c6 08 	. . 
	ld h,a			;2b3c	67 	g 
	ld (hl),d			;2b3d	72 	r 
	push de			;2b3e	d5 	. 
	ld de,l0fe0h		;2b3f	11 e0 0f 	. . . 
	xor a			;2b42	af 	. 
	sbc hl,de		;2b43	ed 52 	. R 
	pop de			;2b45	d1 	. 
	ld (hl),e			;2b46	73 	s 
l2b47h:
	call sub_2700h		;2b47	cd 00 27 	. . ' 
	call sub_3023h		;2b4a	cd 23 30 	. # 0 
l2b4dh:
	pop de			;2b4d	d1 	. 
	ret			;2b4e	c9 	. 
sub_2b4fh:
	ld h,a			;2b4f	67 	g 
	ld (hl),b			;2b50	70 	p 
	bit 7,c		;2b51	cb 79 	. y 
	ret z			;2b53	c8 	. 
	push hl			;2b54	e5 	. 
	add hl,de			;2b55	19 	. 
	ld (hl),b			;2b56	70 	p 
	pop hl			;2b57	e1 	. 
	ret			;2b58	c9 	. 
sub_2b59h:
	ld a,h			;2b59	7c 	| 
	add a,005h		;2b5a	c6 05 	. . 
	ld b,(iy+002h)		;2b5c	fd 46 02 	. F . 
	call sub_2b4fh		;2b5f	cd 4f 2b 	. O + 
	add a,00fh		;2b62	c6 0f 	. . 
	ld b,(iy+001h)		;2b64	fd 46 01 	. F . 
	call sub_2b4fh		;2b67	cd 4f 2b 	. O + 
	add a,005h		;2b6a	c6 05 	. . 
	ld b,(iy+003h)		;2b6c	fd 46 03 	. F . 
	call sub_2b4fh		;2b6f	cd 4f 2b 	. O + 
	ld b,000h		;2b72	06 00 	. . 
	sub 028h		;2b74	d6 28 	. ( 
	jp sub_2b4fh		;2b76	c3 4f 2b 	. O + 
l2b79h:
	add a,b			;2b79	80 	. 
	nop			;2b7a	00 	. 
	add a,c			;2b7b	81 	. 
	ld bc,00282h		;2b7c	01 82 02 	. . . 
	add a,e			;2b7f	83 	. 
	inc bc			;2b80	03 	. 
	add a,h			;2b81	84 	. 
	inc b			;2b82	04 	. 
	add a,l			;2b83	85 	. 
	dec b			;2b84	05 	. 
	add a,(hl)			;2b85	86 	. 
	ld b,087h		;2b86	06 87 	. . 
	rlca			;2b88	07 	. 
	adc a,b			;2b89	88 	. 
	ld h,b			;2b8a	60 	` 
	adc a,c			;2b8b	89 	. 
	add a,b			;2b8c	80 	. 
	adc a,d			;2b8d	8a 	. 
	nop			;2b8e	00 	. 
	adc a,e			;2b8f	8b 	. 
	ld b,b			;2b90	40 	@ 
	adc a,h			;2b91	8c 	. 
	nop			;2b92	00 	. 
	adc a,l			;2b93	8d 	. 
	ld b,b			;2b94	40 	@ 
	adc a,(hl)			;2b95	8e 	. 
	add a,b			;2b96	80 	. 
	adc a,a			;2b97	8f 	. 
	ret nz			;2b98	c0 	. 
	sub b			;2b99	90 	. 
	nop			;2b9a	00 	. 
	sub c			;2b9b	91 	. 
	ld bc,l0292h		;2b9c	01 92 02 	. . . 
	sub e			;2b9f	93 	. 
	inc bc			;2ba0	03 	. 
	sub h			;2ba1	94 	. 
	inc b			;2ba2	04 	. 
	sub l			;2ba3	95 	. 
	dec b			;2ba4	05 	. 
	sub (hl)			;2ba5	96 	. 
	ld b,097h		;2ba6	06 97 	. . 
	rlca			;2ba8	07 	. 
	sbc a,b			;2ba9	98 	. 
	inc b			;2baa	04 	. 
	sbc a,c			;2bab	99 	. 
	nop			;2bac	00 	. 
	sbc a,d			;2bad	9a 	. 
	jr nz,-98		;2bae	20 9c 	  . 
	nop			;2bb0	00 	. 
	sbc a,l			;2bb1	9d 	. 
	jr nz,-96		;2bb2	20 9e 	  . 
	nop			;2bb4	00 	. 
	sbc a,a			;2bb5	9f 	. 
	jr nz,105		;2bb6	20 67 	  g 
	inc l			;2bb8	2c 	, 
	ld h,a			;2bb9	67 	g 
	inc l			;2bba	2c 	, 
	ld h,a			;2bbb	67 	g 
	inc l			;2bbc	2c 	, 
	ld h,a			;2bbd	67 	g 
	inc l			;2bbe	2c 	, 
	ld h,a			;2bbf	67 	g 
	inc l			;2bc0	2c 	, 
	ld h,a			;2bc1	67 	g 
	inc l			;2bc2	2c 	, 
	ld h,a			;2bc3	67 	g 
	inc l			;2bc4	2c 	, 
	ld h,a			;2bc5	67 	g 
	inc l			;2bc6	2c 	, 
	dec hl			;2bc7	2b 	+ 
	inc l			;2bc8	2c 	, 
	dec hl			;2bc9	2b 	+ 
	inc l			;2bca	2c 	, 
	defb 0fdh,02dh	;dec iyl		;2bcb	fd 2d 	. - 
	defb 0fdh,02dh	;dec iyl		;2bcd	fd 2d 	. - 
	ld e,c			;2bcf	59 	Y 
	dec l			;2bd0	2d 	- 
	ld e,c			;2bd1	59 	Y 
	dec l			;2bd2	2d 	- 
	ld e,c			;2bd3	59 	Y 
	dec l			;2bd4	2d 	- 
	ld e,c			;2bd5	59 	Y 
	dec l			;2bd6	2d 	- 
	add a,b			;2bd7	80 	. 
	inc l			;2bd8	2c 	, 
	add a,b			;2bd9	80 	. 
	inc l			;2bda	2c 	, 
	add a,b			;2bdb	80 	. 
	inc l			;2bdc	2c 	, 
	add a,b			;2bdd	80 	. 
	inc l			;2bde	2c 	, 
	add a,b			;2bdf	80 	. 
	inc l			;2be0	2c 	, 
	add a,b			;2be1	80 	. 
	inc l			;2be2	2c 	, 
	add a,b			;2be3	80 	. 
	inc l			;2be4	2c 	, 
	add a,b			;2be5	80 	. 
	inc l			;2be6	2c 	, 
	xor e			;2be7	ab 	. 
	dec l			;2be8	2d 	- 
	cp e			;2be9	bb 	. 
	dec l			;2bea	2d 	- 
	cp e			;2beb	bb 	. 
	dec l			;2bec	2d 	- 
	jp 08d2dh		;2bed	c3 2d 8d 	. - . 
	dec l			;2bf0	2d 	- 
	ld c,l			;2bf1	4d 	M 
	dec l			;2bf2	2d 	- 
	sbc a,l			;2bf3	9d 	. 
	dec l			;2bf4	2d 	- 
sub_2bf5h:
	ld hl,l2b79h		;2bf5	21 79 2b 	! y + 
	ld bc,0003eh		;2bf8	01 3e 00 	. > . 
	cpir		;2bfb	ed b1 	. . 
	push hl			;2bfd	e5 	. 
	pop ix		;2bfe	dd e1 	. . 
	call sub_06aah		;2c00	cd aa 06 	. . . 
	call sub_2c5ch		;2c03	cd 5c 2c 	. \ , 
	ld a,001h		;2c06	3e 01 	> . 
	bit 3,(iy+000h)		;2c08	fd cb 00 5e 	. . . ^ 
	call nz,sub_1f30h		;2c0c	c4 30 1f 	. 0 . 
	xor a			;2c0f	af 	. 
	ld (06d9ch),a		;2c10	32 9c 6d 	2 . m 
	ld (06d9dh),a		;2c13	32 9d 6d 	2 . m 
	bit 0,(iy+010h)		;2c16	fd cb 10 46 	. . . F 
	call nz,l1f60h		;2c1a	c4 60 1f 	. ` . 
	ld hl,sub_1f5bh		;2c1d	21 5b 1f 	! [ . 
	push hl			;2c20	e5 	. 
	ld e,(iy+000h)		;2c21	fd 5e 00 	. ^ . 
	ld h,(ix+03eh)		;2c24	dd 66 3e 	. f > 
	ld l,(ix+03dh)		;2c27	dd 6e 3d 	. n = 
	jp (hl)			;2c2a	e9 	. 
	ld c,(ix+000h)		;2c2b	dd 4e 00 	. N . 
	jr l2c36h		;2c2e	18 06 	. . 
	ld c,062h		;2c30	0e 62 	. b 
	jr l2c36h		;2c32	18 02 	. . 
	ld c,061h		;2c34	0e 61 	. a 
l2c36h:
	ld d,004h		;2c36	16 04 	. . 
	jr l2c4eh		;2c38	18 14 	. . 
	ld c,000h		;2c3a	0e 00 	. . 
	jr l2c4ch		;2c3c	18 0e 	. . 
	ld c,040h		;2c3e	0e 40 	. @ 
	jr l2c4ch		;2c40	18 0a 	. . 
	ld c,020h		;2c42	0e 20 	.   
	jr l2c4ch		;2c44	18 06 	. . 
	ld c,010h		;2c46	0e 10 	. . 
	jr l2c4ch		;2c48	18 02 	. . 
	ld c,008h		;2c4a	0e 08 	. . 
l2c4ch:
	ld d,007h		;2c4c	16 07 	. . 
l2c4eh:
	xor a			;2c4e	af 	. 
	set 5,a		;2c4f	cb ef 	. . 
	ld (06d9dh),a		;2c51	32 9d 6d 	2 . m 
	call sub_2c5ch		;2c54	cd 5c 2c 	. \ , 
	ld a,0fbh		;2c57	3e fb 	> . 
	jp l2cd9h		;2c59	c3 d9 2c 	. . , 
sub_2c5ch:
	bit 1,(iy+000h)		;2c5c	fd cb 00 4e 	. . . N 
	ret nz			;2c60	c0 	. 
	push hl			;2c61	e5 	. 
	call sub_1972h		;2c62	cd 72 19 	. r . 
	pop hl			;2c65	e1 	. 
	ret			;2c66	c9 	. 
	bit 0,e		;2c67	cb 43 	. C 
	jr z,l2c6fh		;2c69	28 04 	( . 
l2c6bh:
	res 7,(iy+011h)		;2c6b	fd cb 11 be 	. . . . 
l2c6fh:
	call sub_2cd1h		;2c6f	cd d1 2c 	. . , 
	xor a			;2c72	af 	. 
	set 0,a		;2c73	cb c7 	. . 
	ld (06d9ch),a		;2c75	32 9c 6d 	2 . m 
	ld d,0e0h		;2c78	16 e0 	. . 
	xor a			;2c7a	af 	. 
	set 0,a		;2c7b	cb c7 	. . 
	jp l2cf8h		;2c7d	c3 f8 2c 	. . , 
	bit 0,e		;2c80	cb 43 	. C 
	jr z,l2c8eh		;2c82	28 0a 	( . 
	bit 2,e		;2c84	cb 53 	. S 
	jr nz,l2c6bh		;2c86	20 e3 	  . 
	set 7,(iy+011h)		;2c88	fd cb 11 fe 	. . . . 
	jr l2c6fh		;2c8c	18 e1 	. . 
l2c8eh:
	call sub_2cd1h		;2c8e	cd d1 2c 	. . , 
l2c91h:
	xor a			;2c91	af 	. 
	set 1,a		;2c92	cb cf 	. . 
	ld (06d9ch),a		;2c94	32 9c 6d 	2 . m 
	ld d,0e0h		;2c97	16 e0 	. . 
	bit 3,e		;2c99	cb 5b 	. [ 
	jr z,l2caeh		;2c9b	28 11 	( . 
	ld hl,0da0ah		;2c9d	21 0a da 	! . . 
	ld a,c			;2ca0	79 	y 
	xor 01fh		;2ca1	ee 1f 	. . 
	ld c,a			;2ca3	4f 	O 
	ld b,01fh		;2ca4	06 1f 	. . 
l2ca6h:
	ld (hl),c			;2ca6	71 	q 
	inc hl			;2ca7	23 	# 
	djnz l2ca6h		;2ca8	10 fc 	. . 
	ld a,c			;2caa	79 	y 
	jp sub_108fh		;2cab	c3 8f 10 	. . . 
l2caeh:
	xor a			;2cae	af 	. 
	set 1,a		;2caf	cb cf 	. . 
	bit 2,e		;2cb1	cb 53 	. S 
	jp z,l2d16h		;2cb3	ca 16 2d 	. . - 
	ld a,c			;2cb6	79 	y 
	xor 01fh		;2cb7	ee 1f 	. . 
	ld c,a			;2cb9	4f 	O 
	ld a,(iy+004h)		;2cba	fd 7e 04 	. ~ . 
	and 01fh		;2cbd	e6 1f 	. . 
	ld l,a			;2cbf	6f 	o 
	push hl			;2cc0	e5 	. 
	call sub_30efh		;2cc1	cd ef 30 	. . 0 
	ld h,075h		;2cc4	26 75 	& u 
	ld a,l			;2cc6	7d 	} 
	cp 001h		;2cc7	fe 01 	. . 
	jr nz,l2cceh		;2cc9	20 03 	  . 
	ld hl,07021h		;2ccb	21 21 70 	! ! p 
l2cceh:
	ld (hl),c			;2cce	71 	q 
	pop hl			;2ccf	e1 	. 
	ret			;2cd0	c9 	. 
sub_2cd1h:
	ld a,(iy+00eh)		;2cd1	fd 7e 0e 	. ~ . 
	add a,(ix+000h)		;2cd4	dd 86 00 	. . . 
	ld c,a			;2cd7	4f 	O 
	ret			;2cd8	c9 	. 
l2cd9h:
	ld (06d9fh),a		;2cd9	32 9f 6d 	2 . m 
	ld a,0cdh		;2cdc	3e cd 	> . 
	ld (071e0h),a		;2cde	32 e0 71 	2 . q 
	ld a,014h		;2ce1	3e 14 	> . 
	ld (06d9bh),a		;2ce3	32 9b 6d 	2 . m 
	xor a			;2ce6	af 	. 
	set 2,a		;2ce7	cb d7 	. . 
	ld (06d9ch),a		;2ce9	32 9c 6d 	2 . m 
	ld a,001h		;2cec	3e 01 	> . 
	call sub_2d32h		;2cee	cd 32 2d 	. 2 - 
	ld a,0c8h		;2cf1	3e c8 	> . 
	jr l2d2fh		;2cf3	18 3a 	. : 
l2cf5h:
	ld c,(ix+000h)		;2cf5	dd 4e 00 	. N . 
l2cf8h:
	ld (06d9dh),a		;2cf8	32 9d 6d 	2 . m 
	ld a,d			;2cfb	7a 	z 
	cpl			;2cfc	2f 	/ 
	ld (06d9fh),a		;2cfd	32 9f 6d 	2 . m 
	ld a,0beh		;2d00	3e be 	> . 
	ld (071e0h),a		;2d02	32 e0 71 	2 . q 
	ld a,005h		;2d05	3e 05 	> . 
	ld (06d9bh),a		;2d07	32 9b 6d 	2 . m 
	ld a,002h		;2d0a	3e 02 	> . 
	call sub_2d32h		;2d0c	cd 32 2d 	. 2 - 
	ld a,0b9h		;2d0f	3e b9 	> . 
	jr l2d2fh		;2d11	18 1c 	. . 
l2d13h:
	ld c,(ix+000h)		;2d13	dd 4e 00 	. N . 
l2d16h:
	ld (06d9dh),a		;2d16	32 9d 6d 	2 . m 
	ld a,d			;2d19	7a 	z 
	cpl			;2d1a	2f 	/ 
	ld (06d9fh),a		;2d1b	32 9f 6d 	2 . m 
	ld a,0d2h		;2d1e	3e d2 	> . 
	ld (071e0h),a		;2d20	32 e0 71 	2 . q 
	ld a,019h		;2d23	3e 19 	> . 
	ld (06d9bh),a		;2d25	32 9b 6d 	2 . m 
	ld a,003h		;2d28	3e 03 	> . 
	call sub_2d32h		;2d2a	cd 32 2d 	. 2 - 
	ld a,0cdh		;2d2d	3e cd 	> . 
l2d2fh:
	jp l2e0bh		;2d2f	c3 0b 2e 	. . . 
sub_2d32h:
	push de			;2d32	d5 	. 
	push iy		;2d33	fd e5 	. . 
	pop hl			;2d35	e1 	. 
	ld e,a			;2d36	5f 	_ 
	ld d,000h		;2d37	16 00 	. . 
	add hl,de			;2d39	19 	. 
	pop de			;2d3a	d1 	. 
	ret			;2d3b	c9 	. 
sub_2d3ch:
	dec b			;2d3c	05 	. 
	ld (iy+008h),b		;2d3d	fd 70 08 	. p . 
	ld a,(iy+004h)		;2d40	fd 7e 04 	. ~ . 
	push af			;2d43	f5 	. 
	call sub_27bch		;2d44	cd bc 27 	. . ' 
	pop af			;2d47	f1 	. 
	and 01fh		;2d48	e6 1f 	. . 
	jp l1e3bh		;2d4a	c3 3b 1e 	. ; . 
	bit 0,e		;2d4d	cb 43 	. C 
	ld c,000h		;2d4f	0e 00 	. . 
	jp z,l2c91h		;2d51	ca 91 2c 	. . , 
	set 7,(iy+00fh)		;2d54	fd cb 0f fe 	. . . . 
	ret			;2d58	c9 	. 
	ld c,(ix+000h)		;2d59	dd 4e 00 	. N . 
	bit 6,c		;2d5c	cb 71 	. q 
	jr z,l2d80h		;2d5e	28 20 	(   
	bit 1,e		;2d60	cb 4b 	. K 
	jr nz,l2d80h		;2d62	20 1c 	  . 
	ld a,(iy+008h)		;2d64	fd 7e 08 	. ~ . 
	cp (iy+00dh)		;2d67	fd be 0d 	. . . 
	jr nz,l2d80h		;2d6a	20 14 	  . 
	ld b,a			;2d6c	47 	G 
	ld a,(iy+00ch)		;2d6d	fd 7e 0c 	. ~ . 
	cp (iy+00dh)		;2d70	fd be 0d 	. . . 
	jr z,l2d80h		;2d73	28 0b 	( . 
	push de			;2d75	d5 	. 
	ld l,(iy+004h)		;2d76	fd 6e 04 	. n . 
	call sub_30ceh		;2d79	cd ce 30 	. . 0 
	call z,sub_2d3ch		;2d7c	cc 3c 2d 	. < - 
	pop de			;2d7f	d1 	. 
l2d80h:
	ld d,03fh		;2d80	16 3f 	. ? 
	ld a,007h		;2d82	3e 07 	> . 
	ld (06d9ch),a		;2d84	32 9c 6d 	2 . m 
	xor a			;2d87	af 	. 
	set 6,a		;2d88	cb f7 	. . 
	jp l2cf5h		;2d8a	c3 f5 2c 	. . , 
	bit 0,e		;2d8d	cb 43 	. C 
	jr z,l2dc8h		;2d8f	28 37 	( 7 
	ld a,0b9h		;2d91	3e b9 	> . 
	call sub_2702h		;2d93	cd 02 27 	. . ' 
	ld a,(hl)			;2d96	7e 	~ 
	and 01fh		;2d97	e6 1f 	. . 
	ld c,a			;2d99	4f 	O 
	jp l2c91h		;2d9a	c3 91 2c 	. . , 
	bit 0,e		;2d9d	cb 43 	. C 
	jp z,l2da7h		;2d9f	ca a7 2d 	. . - 
	res 7,(iy+00fh)		;2da2	fd cb 0f be 	. . . . 
	ret			;2da6	c9 	. 
l2da7h:
	ld c,000h		;2da7	0e 00 	. . 
	jr l2daeh		;2da9	18 03 	. . 
	ld c,(ix+000h)		;2dab	dd 4e 00 	. N . 
l2daeh:
	ld d,0fbh		;2dae	16 fb 	. . 
	xor a			;2db0	af 	. 
	set 7,a		;2db1	cb ff 	. . 
	ld (06d9dh),a		;2db3	32 9d 6d 	2 . m 
	ld a,004h		;2db6	3e 04 	> . 
	jp l2cd9h		;2db8	c3 d9 2c 	. . , 
	ld d,0dfh		;2dbb	16 df 	. . 
	xor a			;2dbd	af 	. 
	set 2,a		;2dbe	cb d7 	. . 
	jp l2cf5h		;2dc0	c3 f5 2c 	. . , 
	bit 0,e		;2dc3	cb 43 	. C 
	jp nz,l2c8eh		;2dc5	c2 8e 2c 	. . , 
l2dc8h:
	ld a,0ffh		;2dc8	3e ff 	> . 
	ld (06d9ch),a		;2dca	32 9c 6d 	2 . m 
	ld d,0dfh		;2dcd	16 df 	. . 
	jp l2d13h		;2dcf	c3 13 2d 	. . - 
l2dd2h:
	ld c,000h		;2dd2	0e 00 	. . 
	jr l2dd8h		;2dd4	18 02 	. . 
l2dd6h:
	ld c,080h		;2dd6	0e 80 	. . 
l2dd8h:
	ld d,07fh		;2dd8	16 7f 	.  
	xor a			;2dda	af 	. 
	set 4,a		;2ddb	cb e7 	. . 
	jp l2d16h		;2ddd	c3 16 2d 	. . - 
sub_2de0h:
	ld c,000h		;2de0	0e 00 	. . 
	jr l2de6h		;2de2	18 02 	. . 
sub_2de4h:
	ld c,080h		;2de4	0e 80 	. . 
l2de6h:
	bit 2,(iy+000h)		;2de6	fd cb 00 56 	. . . V 
	ret z			;2dea	c8 	. 
	ld a,(iy+004h)		;2deb	fd 7e 04 	. ~ . 
	and 01fh		;2dee	e6 1f 	. . 
	ld b,a			;2df0	47 	G 
	ld hl,0b3e0h		;2df1	21 e0 b3 	! . . 
	ld a,l			;2df4	7d 	} 
	add a,b			;2df5	80 	. 
	ld l,a			;2df6	6f 	o 
	ld a,(hl)			;2df7	7e 	~ 
	and 07fh		;2df8	e6 7f 	.  
	add a,c			;2dfa	81 	. 
	ld (hl),a			;2dfb	77 	w 
	ret			;2dfc	c9 	. 
	xor a			;2dfd	af 	. 
	set 1,a		;2dfe	cb cf 	. . 
	ld (06d9ch),a		;2e00	32 9c 6d 	2 . m 
	ld d,0bfh		;2e03	16 bf 	. . 
	xor a			;2e05	af 	. 
	set 3,a		;2e06	cb df 	. . 
	jp l2d13h		;2e08	c3 13 2d 	. . - 
l2e0bh:
	push af			;2e0b	f5 	. 
	ld a,d			;2e0c	7a 	z 
	ld (06d9eh),a		;2e0d	32 9e 6d 	2 . m 
	pop af			;2e10	f1 	. 
	ld e,(iy+000h)		;2e11	fd 5e 00 	. ^ . 
	bit 1,e		;2e14	cb 4b 	. K 
	jp nz,l2ecch		;2e16	c2 cc 2e 	. . . 
	ld h,a			;2e19	67 	g 
	ld b,028h		;2e1a	06 28 	. ( 
	bit 3,e		;2e1c	cb 5b 	. [ 
	jr z,l2e2eh		;2e1e	28 0e 	( . 
	ld l,002h		;2e20	2e 02 	. . 
	ld a,(06da2h)		;2e22	3a a2 6d 	: . m 
	ld d,a			;2e25	57 	W 
l2e26h:
	call sub_2e8dh		;2e26	cd 8d 2e 	. . . 
	inc l			;2e29	2c 	, 
	dec d			;2e2a	15 	. 
	jr nz,l2e26h		;2e2b	20 f9 	  . 
	ret			;2e2d	c9 	. 
l2e2eh:
	bit 2,e		;2e2e	cb 53 	. S 
	jr z,l2e50h		;2e30	28 1e 	( . 
	ld a,(iy+004h)		;2e32	fd 7e 04 	. ~ . 
	and 01fh		;2e35	e6 1f 	. . 
	ld l,a			;2e37	6f 	o 
	push hl			;2e38	e5 	. 
	call sub_2e8dh		;2e39	cd 8d 2e 	. . . 
	pop hl			;2e3c	e1 	. 
	ld de,l0020h		;2e3d	11 20 00 	.   . 
	ld h,0a5h		;2e40	26 a5 	& . 
	ld b,028h		;2e42	06 28 	. ( 
	ld a,(06d9dh)		;2e44	3a 9d 6d 	: . m 
	cpl			;2e47	2f 	/ 
	ld c,a			;2e48	4f 	O 
l2e49h:
	ld a,(hl)			;2e49	7e 	~ 
	and c			;2e4a	a1 	. 
	ld (hl),a			;2e4b	77 	w 
	add hl,de			;2e4c	19 	. 
	djnz l2e49h		;2e4d	10 fa 	. . 
	ret			;2e4f	c9 	. 
l2e50h:
	call sub_2702h		;2e50	cd 02 27 	. . ' 
	push hl			;2e53	e5 	. 
	push bc			;2e54	c5 	. 
	exx			;2e55	d9 	. 
	ld a,0a5h		;2e56	3e a5 	> . 
	call sub_2702h		;2e58	cd 02 27 	. . ' 
	ld de,l0020h		;2e5b	11 20 00 	.   . 
	ld a,(06d9dh)		;2e5e	3a 9d 6d 	: . m 
	ld b,a			;2e61	47 	G 
	or (hl)			;2e62	b6 	. 
	ld (hl),a			;2e63	77 	w 
	push de			;2e64	d5 	. 
	exx			;2e65	d9 	. 
	pop de			;2e66	d1 	. 
	ld a,(06d9fh)		;2e67	3a 9f 6d 	: . m 
	and (hl)			;2e6a	a6 	. 
	ld c,a			;2e6b	4f 	O 
	ld b,000h		;2e6c	06 00 	. . 
l2e6eh:
	add hl,de			;2e6e	19 	. 
	inc b			;2e6f	04 	. 
	ld a,(071e0h)		;2e70	3a e0 71 	: . q 
	cp h			;2e73	bc 	. 
	jr z,l2e89h		;2e74	28 13 	( . 
	exx			;2e76	d9 	. 
	add hl,de			;2e77	19 	. 
	ld a,(hl)			;2e78	7e 	~ 
	and b			;2e79	a0 	. 
	exx			;2e7a	d9 	. 
	jr nz,l2e89h		;2e7b	20 0c 	  . 
	ld a,(06d9fh)		;2e7d	3a 9f 6d 	: . m 
	and (hl)			;2e80	a6 	. 
	cp c			;2e81	b9 	. 
	jr z,l2e6eh		;2e82	28 ea 	( . 
	exx			;2e84	d9 	. 
	ld a,b			;2e85	78 	x 
	or (hl)			;2e86	b6 	. 
	ld (hl),a			;2e87	77 	w 
	exx			;2e88	d9 	. 
l2e89h:
	ld a,b			;2e89	78 	x 
	pop bc			;2e8a	c1 	. 
	ld b,a			;2e8b	47 	G 
	pop hl			;2e8c	e1 	. 
sub_2e8dh:
	call sub_30ceh		;2e8d	cd ce 30 	. . 0 
	ret nz			;2e90	c0 	. 
	push bc			;2e91	c5 	. 
	push hl			;2e92	e5 	. 
	push de			;2e93	d5 	. 
	ld de,l0020h		;2e94	11 20 00 	.   . 
l2e97h:
	call l2ecch		;2e97	cd cc 2e 	. . . 
	push hl			;2e9a	e5 	. 
	ld a,(06d9bh)		;2e9b	3a 9b 6d 	: . m 
	sub h			;2e9e	94 	. 
	cpl			;2e9f	2f 	/ 
	inc a			;2ea0	3c 	< 
	ld h,a			;2ea1	67 	g 
	push hl			;2ea2	e5 	. 
	ld a,h			;2ea3	7c 	| 
	sub 03ch		;2ea4	d6 3c 	. < 
	ld h,a			;2ea6	67 	g 
	bit 7,(hl)		;2ea7	cb 7e 	. ~ 
	jr z,l2ec0h		;2ea9	28 15 	( . 
	push hl			;2eab	e5 	. 
	sub 008h		;2eac	d6 08 	. . 
	ld h,a			;2eae	67 	g 
	bit 5,(hl)		;2eaf	cb 6e 	. n 
	pop hl			;2eb1	e1 	. 
	jr nz,l2ec0h		;2eb2	20 0c 	  . 
	ld a,(06d9ch)		;2eb4	3a 9c 6d 	: . m 
	bit 1,a		;2eb7	cb 4f 	. O 
	jr nz,l2ebeh		;2eb9	20 03 	  . 
	pop hl			;2ebb	e1 	. 
	jr l2ec4h		;2ebc	18 06 	. . 
l2ebeh:
	res 7,(hl)		;2ebe	cb be 	. . 
l2ec0h:
	pop hl			;2ec0	e1 	. 
	call sub_2efbh		;2ec1	cd fb 2e 	. . . 
l2ec4h:
	pop hl			;2ec4	e1 	. 
	add hl,de			;2ec5	19 	. 
	djnz l2e97h		;2ec6	10 cf 	. . 
	pop de			;2ec8	d1 	. 
	pop hl			;2ec9	e1 	. 
	pop bc			;2eca	c1 	. 
	ret			;2ecb	c9 	. 
l2ecch:
	ld a,(06d9eh)		;2ecc	3a 9e 6d 	: . m 
	cp 03fh		;2ecf	fe 3f 	. ? 
	call z,sub_2ed8h		;2ed1	cc d8 2e 	. . . 
	and (hl)			;2ed4	a6 	. 
	or c			;2ed5	b1 	. 
	ld (hl),a			;2ed6	77 	w 
	ret			;2ed7	c9 	. 
sub_2ed8h:
	push hl			;2ed8	e5 	. 
	push af			;2ed9	f5 	. 
	cpl			;2eda	2f 	/ 
	and (hl)			;2edb	a6 	. 
	cp c			;2edc	b9 	. 
	call nz,sub_1f2dh		;2edd	c4 2d 1f 	. - . 
	pop af			;2ee0	f1 	. 
	pop hl			;2ee1	e1 	. 
	ret			;2ee2	c9 	. 
sub_2ee3h:
	ld a,007h		;2ee3	3e 07 	> . 
	ld (06d9ch),a		;2ee5	32 9c 6d 	2 . m 
	call sub_3137h		;2ee8	cd 37 31 	. 7 1 
	ret nz			;2eeb	c0 	. 
	push hl			;2eec	e5 	. 
	ld a,h			;2eed	7c 	| 
	sub 03ch		;2eee	d6 3c 	. < 
	ld h,a			;2ef0	67 	g 
	res 7,(hl)		;2ef1	cb be 	. . 
	sub 008h		;2ef3	d6 08 	. . 
	ld h,a			;2ef5	67 	g 
	res 5,(hl)		;2ef6	cb ae 	. . 
	pop hl			;2ef8	e1 	. 
	jr l2effh		;2ef9	18 04 	. . 
sub_2efbh:
	call sub_3137h		;2efb	cd 37 31 	. 7 1 
	ret nz			;2efe	c0 	. 
l2effh:
	push de			;2eff	d5 	. 
	push bc			;2f00	c5 	. 
	push hl			;2f01	e5 	. 
	push hl			;2f02	e5 	. 
	ld a,(06d9ch)		;2f03	3a 9c 6d 	: . m 
	ld b,a			;2f06	47 	G 
	ld a,h			;2f07	7c 	| 
	add a,005h		;2f08	c6 05 	. . 
	ld h,a			;2f0a	67 	g 
	ld d,(hl)			;2f0b	56 	V 
	add a,014h		;2f0c	c6 14 	. . 
	ld h,a			;2f0e	67 	g 
	ld e,(hl)			;2f0f	5e 	^ 
	push de			;2f10	d5 	. 
	exx			;2f11	d9 	. 
	pop de			;2f12	d1 	. 
	ld a,(iy+000h)		;2f13	fd 7e 00 	. ~ . 
	and 030h		;2f16	e6 30 	. 0 
	ld d,a			;2f18	57 	W 
	exx			;2f19	d9 	. 
	jr z,l2f1eh		;2f1a	28 02 	( . 
	res 5,e		;2f1c	cb ab 	. . 
l2f1eh:
	bit 0,b		;2f1e	cb 40 	. @ 
	jr z,l2f32h		;2f20	28 10 	( . 
	ld a,d			;2f22	7a 	z 
	and 01fh		;2f23	e6 1f 	. . 
	ld c,a			;2f25	4f 	O 
	pop hl			;2f26	e1 	. 
	push hl			;2f27	e5 	. 
	bit 5,e		;2f28	cb 6b 	. k 
	push af			;2f2a	f5 	. 
	call z,sub_30bah		;2f2b	cc ba 30 	. . 0 
	pop af			;2f2e	f1 	. 
	call nz,sub_30c4h		;2f2f	c4 c4 30 	. . 0 
l2f32h:
	bit 1,b		;2f32	cb 48 	. H 
	jr z,l2f46h		;2f34	28 10 	( . 
	pop hl			;2f36	e1 	. 
	push hl			;2f37	e5 	. 
	ld a,e			;2f38	7b 	{ 
	and 01fh		;2f39	e6 1f 	. . 
	ld c,a			;2f3b	4f 	O 
	bit 5,e		;2f3c	cb 6b 	. k 
l2f3eh:
	push af			;2f3e	f5 	. 
	call z,sub_30c4h		;2f3f	cc c4 30 	. . 0 
	pop af			;2f42	f1 	. 
	call nz,sub_30bah		;2f43	c4 ba 30 	. . 0 
l2f46h:
	bit 2,b		;2f46	cb 50 	. P 
	jp z,l3020h		;2f48	ca 20 30 	.   0 
	pop hl			;2f4b	e1 	. 
	push hl			;2f4c	e5 	. 
	ld a,h			;2f4d	7c 	| 
	add a,014h		;2f4e	c6 14 	. . 
	ld h,a			;2f50	67 	g 
	ld d,(hl)			;2f51	56 	V 
	exx			;2f52	d9 	. 
	xor a			;2f53	af 	. 
	cp d			;2f54	ba 	. 
	ld a,e			;2f55	7b 	{ 
	exx			;2f56	d9 	. 
	jr z,l2f77h		;2f57	28 1e 	( . 
	bit 5,a		;2f59	cb 6f 	. o 
	jr z,l2f77h		;2f5b	28 1a 	( . 
	set 5,e		;2f5d	cb eb 	. . 
	bit 2,d		;2f5f	cb 52 	. R 
	jr nz,l2f73h		;2f61	20 10 	  . 
	bit 0,d		;2f63	cb 42 	. B 
	jr z,l2f6eh		;2f65	28 07 	( . 
	ld a,0ffh		;2f67	3e ff 	> . 
	ld (071e1h),a		;2f69	32 e1 71 	2 . q 
	jr l2f77h		;2f6c	18 09 	. . 
l2f6eh:
	ld a,080h		;2f6e	3e 80 	> . 
	cp d			;2f70	ba 	. 
	jr nz,l2f77h		;2f71	20 04 	  . 
l2f73h:
	ld a,d			;2f73	7a 	z 
	xor 004h		;2f74	ee 04 	. . 
	ld d,a			;2f76	57 	W 
l2f77h:
	ld b,000h		;2f77	06 00 	. . 
	ld c,080h		;2f79	0e 80 	. . 
	ld a,d			;2f7b	7a 	z 
	cp c			;2f7c	b9 	. 
	jp z,l300ch		;2f7d	ca 0c 30 	. . 0 
	exx			;2f80	d9 	. 
	xor a			;2f81	af 	. 
	cp d			;2f82	ba 	. 
	exx			;2f83	d9 	. 
	jr nz,l2f8eh		;2f84	20 08 	  . 
	bit 5,e		;2f86	cb 6b 	. k 
	jr z,l2f8eh		;2f88	28 04 	( . 
	ld a,d			;2f8a	7a 	z 
	xor 002h		;2f8b	ee 02 	. . 
	ld d,a			;2f8d	57 	W 
l2f8eh:
	bit 2,d		;2f8e	cb 52 	. R 
	jr z,l2f97h		;2f90	28 05 	( . 
	set 5,b		;2f92	cb e8 	. . 
	jp l300ch		;2f94	c3 0c 30 	. . 0 
l2f97h:
	bit 2,(hl)		;2f97	cb 56 	. V 
	jr nz,l300ch		;2f99	20 71 	  q 
	ld a,d			;2f9b	7a 	z 
	res 7,a		;2f9c	cb bf 	. . 
	and 0e0h		;2f9e	e6 e0 	. . 
	ld c,a			;2fa0	4f 	O 
	xor a			;2fa1	af 	. 
	ld a,d			;2fa2	7a 	z 
	rra			;2fa3	1f 	. 
	rra			;2fa4	1f 	. 
	rra			;2fa5	1f 	. 
	rra			;2fa6	1f 	. 
	and 0e0h		;2fa7	e6 e0 	. . 
	xor 020h		;2fa9	ee 20 	.   
	ld b,a			;2fab	47 	G 
	ld a,d			;2fac	7a 	z 
	and 018h		;2fad	e6 18 	. . 
	jr z,l300ch		;2faf	28 5b 	( [ 
	bit 1,(iy+000h)		;2fb1	fd cb 00 4e 	. . . N 
	push hl			;2fb5	e5 	. 
	call nz,sub_1f2dh		;2fb6	c4 2d 1f 	. - . 
	pop hl			;2fb9	e1 	. 
	push bc			;2fba	c5 	. 
	push hl			;2fbb	e5 	. 
	ld a,h			;2fbc	7c 	| 
	sub 023h		;2fbd	d6 23 	. # 
	ld h,a			;2fbf	67 	g 
	bit 5,(hl)		;2fc0	cb 6e 	. n 
	jr nz,l3006h		;2fc2	20 42 	  B 
	push de			;2fc4	d5 	. 
	ld de,l0020h		;2fc5	11 20 00 	.   . 
	xor a			;2fc8	af 	. 
	sbc hl,de		;2fc9	ed 52 	. R 
	pop de			;2fcb	d1 	. 
	ld a,0a4h		;2fcc	3e a4 	> . 
	cp h			;2fce	bc 	. 
	jr z,l3006h		;2fcf	28 35 	( 5 
	ld a,h			;2fd1	7c 	| 
	add a,023h		;2fd2	c6 23 	. # 
	ld h,a			;2fd4	67 	g 
	ld a,(hl)			;2fd5	7e 	~ 
	and 018h		;2fd6	e6 18 	. . 
	ld c,a			;2fd8	4f 	O 
	ld a,d			;2fd9	7a 	z 
	and 018h		;2fda	e6 18 	. . 
	cp c			;2fdc	b9 	. 
	jr nz,l3006h		;2fdd	20 27 	  ' 
	ld a,h			;2fdf	7c 	| 
	sub 060h		;2fe0	d6 60 	. ` 
	ld h,a			;2fe2	67 	g 
	ld a,(hl)			;2fe3	7e 	~ 
	pop hl			;2fe4	e1 	. 
	and 060h		;2fe5	e6 60 	. ` 
	jr nz,l2ff1h		;2fe7	20 08 	  . 
	ld a,080h		;2fe9	3e 80 	> . 
	bit 4,d		;2feb	cb 62 	. b 
	jr nz,l2ff1h		;2fed	20 02 	  . 
	ld a,010h		;2fef	3e 10 	> . 
l2ff1h:
	bit 4,d		;2ff1	cb 62 	. b 
	jr z,l2ff8h		;2ff3	28 03 	( . 
	rra			;2ff5	1f 	. 
	jr l2ff9h		;2ff6	18 01 	. . 
l2ff8h:
	rla			;2ff8	17 	. 
l2ff9h:
	and 060h		;2ff9	e6 60 	. ` 
	pop bc			;2ffb	c1 	. 
	push af			;2ffc	f5 	. 
	ld a,c			;2ffd	79 	y 
	and 09fh		;2ffe	e6 9f 	. . 
	ld c,a			;3000	4f 	O 
	pop af			;3001	f1 	. 
	add a,c			;3002	81 	. 
	ld c,a			;3003	4f 	O 
	jr l300ch		;3004	18 06 	. . 
l3006h:
	pop hl			;3006	e1 	. 
	pop bc			;3007	c1 	. 
	ld a,c			;3008	79 	y 
	and 09fh		;3009	e6 9f 	. . 
	ld c,a			;300b	4f 	O 
l300ch:
	pop hl			;300c	e1 	. 
	push hl			;300d	e5 	. 
	ld a,h			;300e	7c 	| 
	sub 04ch		;300f	d6 4c 	. L 
	ld h,a			;3011	67 	g 
	ld a,(hl)			;3012	7e 	~ 
	and 01fh		;3013	e6 1f 	. . 
	or c			;3015	b1 	. 
	ld (hl),a			;3016	77 	w 
	ld a,h			;3017	7c 	| 
	add a,010h		;3018	c6 10 	. . 
	ld h,a			;301a	67 	g 
	ld a,(hl)			;301b	7e 	~ 
	and 09fh		;301c	e6 9f 	. . 
	or b			;301e	b0 	. 
	ld (hl),a			;301f	77 	w 
l3020h:
	pop hl			;3020	e1 	. 
	jr l3026h		;3021	18 03 	. . 
sub_3023h:
	push de			;3023	d5 	. 
	push bc			;3024	c5 	. 
	push hl			;3025	e5 	. 
l3026h:
	ld c,(hl)			;3026	4e 	N 
	push bc			;3027	c5 	. 
	ld a,c			;3028	79 	y 
	and 03fh		;3029	e6 3f 	. ? 
	ld (hl),a			;302b	77 	w 
	push hl			;302c	e5 	. 
	ld a,h			;302d	7c 	| 
	add a,005h		;302e	c6 05 	. . 
	ld h,a			;3030	67 	g 
	bit 6,(hl)		;3031	cb 76 	. v 
	jr z,l3037h		;3033	28 02 	( . 
	set 6,c		;3035	cb f1 	. . 
l3037h:
	pop hl			;3037	e1 	. 
	ld a,c			;3038	79 	y 
	and 0c0h		;3039	e6 c0 	. . 
	jr z,l3088h		;303b	28 4b 	( K 
	bit 6,c		;303d	cb 71 	. q 
	jr z,l306ah		;303f	28 29 	( ) 
	ld a,(iy+008h)		;3041	fd 7e 08 	. ~ . 
	inc a			;3044	3c 	< 
	cp (iy+00ch)		;3045	fd be 0c 	. . . 
	jr z,l3068h		;3048	28 1e 	( . 
	dec a			;304a	3d 	= 
	cp (iy+00dh)		;304b	fd be 0d 	. . . 
	jr z,l3068h		;304e	28 18 	( . 
	push hl			;3050	e5 	. 
	ld hl,06da2h		;3051	21 a2 6d 	! . m 
	cp (hl)			;3054	be 	. 
	pop hl			;3055	e1 	. 
	jr z,l3068h		;3056	28 10 	( . 
	bit 6,(iy+000h)		;3058	fd cb 00 76 	. . . v 
	jr nz,l306ah		;305c	20 0c 	  . 
	push hl			;305e	e5 	. 
	call sub_30eah		;305f	cd ea 30 	. . 0 
	call sub_30ceh		;3062	cd ce 30 	. . 0 
	pop hl			;3065	e1 	. 
	jr z,l306ah		;3066	28 02 	( . 
l3068h:
	res 6,c		;3068	cb b1 	. . 
l306ah:
	ld a,h			;306a	7c 	| 
	call sub_308fh		;306b	cd 8f 30 	. . 0 
	xor a			;306e	af 	. 
	ld de,053e0h		;306f	11 e0 53 	. . S 
	sbc hl,de		;3072	ed 52 	. R 
	call sub_3090h		;3074	cd 90 30 	. . 0 
	ld de,l0fe0h		;3077	11 e0 0f 	. . . 
	add hl,de			;307a	19 	. 
	call sub_3090h		;307b	cd 90 30 	. . 0 
	sub 008h		;307e	d6 08 	. . 
	call sub_308fh		;3080	cd 8f 30 	. . 0 
	add a,010h		;3083	c6 10 	. . 
	call sub_308fh		;3085	cd 8f 30 	. . 0 
l3088h:
	ld a,c			;3088	79 	y 
	pop bc			;3089	c1 	. 
	pop hl			;308a	e1 	. 
	ld (hl),c			;308b	71 	q 
	pop bc			;308c	c1 	. 
	pop de			;308d	d1 	. 
	ret			;308e	c9 	. 
sub_308fh:
	ld h,a			;308f	67 	g 
sub_3090h:
	push af			;3090	f5 	. 
	ld b,(hl)			;3091	46 	F 
	push hl			;3092	e5 	. 
	bit 7,c		;3093	cb 79 	. y 
	jr z,l30a4h		;3095	28 0d 	( . 
	ld de,l0020h		;3097	11 20 00 	.   . 
	add hl,de			;309a	19 	. 
	ld (hl),b			;309b	70 	p 
	bit 6,c		;309c	cb 71 	. q 
	jr z,l30aeh		;309e	28 0e 	( . 
	call sub_30eah		;30a0	cd ea 30 	. . 0 
	ld (hl),b			;30a3	70 	p 
l30a4h:
	pop hl			;30a4	e1 	. 
	push hl			;30a5	e5 	. 
	bit 6,c		;30a6	cb 71 	. q 
	jr z,l30aeh		;30a8	28 04 	( . 
	call sub_30eah		;30aa	cd ea 30 	. . 0 
	ld (hl),b			;30ad	70 	p 
l30aeh:
	pop hl			;30ae	e1 	. 
	pop af			;30af	f1 	. 
	ld a,h			;30b0	7c 	| 
	ret			;30b1	c9 	. 
sub_30b2h:
	ld h,a			;30b2	67 	g 
l30b3h:
	ld a,(hl)			;30b3	7e 	~ 
	and 0e0h		;30b4	e6 e0 	. . 
	add a,c			;30b6	81 	. 
	ld (hl),a			;30b7	77 	w 
	ld a,h			;30b8	7c 	| 
	ret			;30b9	c9 	. 
sub_30bah:
	push de			;30ba	d5 	. 
	xor a			;30bb	af 	. 
	ld de,053e0h		;30bc	11 e0 53 	. . S 
	sbc hl,de		;30bf	ed 52 	. R 
	pop de			;30c1	d1 	. 
	jr l30b3h		;30c2	18 ef 	. . 
sub_30c4h:
	ld a,h			;30c4	7c 	| 
	sub 044h		;30c5	d6 44 	. D 
	call sub_30b2h		;30c7	cd b2 30 	. . 0 
	add a,008h		;30ca	c6 08 	. . 
	jr sub_30b2h		;30cc	18 e4 	. . 
sub_30ceh:
	bit 2,(iy+010h)		;30ce	fd cb 10 56 	. . . V 
	jr z,l30d6h		;30d2	28 02 	( . 
	xor a			;30d4	af 	. 
	ret			;30d5	c9 	. 
l30d6h:
	push hl			;30d6	e5 	. 
	ld a,l			;30d7	7d 	} 
	and 01fh		;30d8	e6 1f 	. . 
	push af			;30da	f5 	. 
	ld hl,0b3e0h		;30db	21 e0 b3 	! . . 
	ld a,l			;30de	7d 	} 
	and 0e0h		;30df	e6 e0 	. . 
	ld l,a			;30e1	6f 	o 
	pop af			;30e2	f1 	. 
	add a,l			;30e3	85 	. 
	ld l,a			;30e4	6f 	o 
	ld a,(hl)			;30e5	7e 	~ 
	bit 7,a		;30e6	cb 7f 	.  
	pop hl			;30e8	e1 	. 
	ret			;30e9	c9 	. 
sub_30eah:
	ld a,(iy+009h)		;30ea	fd 7e 09 	. ~ . 
	jr l30f2h		;30ed	18 03 	. . 
sub_30efh:
	ld a,(iy+00ah)		;30ef	fd 7e 0a 	. ~ . 
l30f2h:
	add a,l			;30f2	85 	. 
	ld l,a			;30f3	6f 	o 
	ret			;30f4	c9 	. 
sub_30f5h:
	call sub_06aah		;30f5	cd aa 06 	. . . 
	ld hl,07502h		;30f8	21 02 75 	! . u 
	ld de,0dc00h		;30fb	11 00 dc 	. . . 
	push de			;30fe	d5 	. 
	push hl			;30ff	e5 	. 
	call sub_312eh		;3100	cd 2e 31 	. . 1 
	ld hl,07021h		;3103	21 21 70 	! ! p 
	ld a,(hl)			;3106	7e 	~ 
	push af			;3107	f5 	. 
	push hl			;3108	e5 	. 
	ld hl,07040h		;3109	21 40 70 	! @ p 
	ld de,0b3e1h		;310c	11 e1 b3 	. . . 
	ld a,(hl)			;310f	7e 	~ 
	push af			;3110	f5 	. 
	ld a,(de)			;3111	1a 	. 
	push de			;3112	d5 	. 
	and 01fh		;3113	e6 1f 	. . 
	call sub_108fh		;3115	cd 8f 10 	. . . 
	pop de			;3118	d1 	. 
	pop af			;3119	f1 	. 
	ld (de),a			;311a	12 	. 
	inc de			;311b	13 	. 
	ld a,(de)			;311c	1a 	. 
	pop hl			;311d	e1 	. 
	ld (hl),a			;311e	77 	w 
	pop af			;311f	f1 	. 
	ld (de),a			;3120	12 	. 
	ex de,hl			;3121	eb 	. 
	inc hl			;3122	23 	# 
	pop de			;3123	d1 	. 
	push hl			;3124	e5 	. 
	call sub_312eh		;3125	cd 2e 31 	. . 1 
	pop de			;3128	d1 	. 
	pop hl			;3129	e1 	. 
	call sub_312eh		;312a	cd 2e 31 	. . 1 
	ret			;312d	c9 	. 
sub_312eh:
	ld b,017h		;312e	06 17 	. . 
l3130h:
	ld a,(hl)			;3130	7e 	~ 
l3131h:
	ld (de),a			;3131	12 	. 
	inc hl			;3132	23 	# 
	inc de			;3133	13 	. 
	djnz l3130h		;3134	10 fa 	. . 
	ret			;3136	c9 	. 
sub_3137h:
	push hl			;3137	e5 	. 
	ld de,l0020h		;3138	11 20 00 	.   . 
	xor a			;313b	af 	. 
	sbc hl,de		;313c	ed 52 	. R 
	ld a,0b3h		;313e	3e b3 	> . 
	cp h			;3140	bc 	. 
	jr nz,l3148h		;3141	20 05 	  . 
	call sub_30efh		;3143	cd ef 30 	. . 0 
	jr l3157h		;3146	18 0f 	. . 
l3148h:
	bit 7,(hl)		;3148	cb 7e 	. ~ 
	jr nz,l315fh		;314a	20 13 	  . 
	call sub_30efh		;314c	cd ef 30 	. . 0 
	bit 6,(hl)		;314f	cb 76 	. v 
	jr z,l3157h		;3151	28 04 	( . 
	bit 7,(hl)		;3153	cb 7e 	. ~ 
	jr nz,l315fh		;3155	20 08 	  . 
l3157h:
	add hl,de			;3157	19 	. 
	bit 6,(hl)		;3158	cb 76 	. v 
	jr nz,l315fh		;315a	20 03 	  . 
	xor a			;315c	af 	. 
	jr l3161h		;315d	18 02 	. . 
l315fh:
	ld a,001h		;315f	3e 01 	> . 
l3161h:
	or a			;3161	b7 	. 
	pop hl			;3162	e1 	. 
	ret			;3163	c9 	. 
sub_3164h:
	call sub_06aah		;3164	cd aa 06 	. . . 
	call sub_2700h		;3167	cd 00 27 	. . ' 
	call sub_30ceh		;316a	cd ce 30 	. . 0 
	ret nz			;316d	c0 	. 
sub_316eh:
	ld b,0ffh		;316e	06 ff 	. . 
	ld de,l0020h		;3170	11 20 00 	.   . 
	push hl			;3173	e5 	. 
l3174h:
	add hl,de			;3174	19 	. 
	inc b			;3175	04 	. 
	ld a,h			;3176	7c 	| 
	cp 0b9h		;3177	fe b9 	. . 
	jr nz,l3174h		;3179	20 f9 	  . 
	pop hl			;317b	e1 	. 
	xor a			;317c	af 	. 
	cp b			;317d	b8 	. 
	ret z			;317e	c8 	. 
	ld a,(hl)			;317f	7e 	~ 
	and 03fh		;3180	e6 3f 	. ? 
	ld (hl),a			;3182	77 	w 
	ld a,h			;3183	7c 	| 
	push hl			;3184	e5 	. 
	call sub_31a9h		;3185	cd a9 31 	. . 1 
	add a,005h		;3188	c6 05 	. . 
	call sub_31a9h		;318a	cd a9 31 	. . 1 
	add a,00fh		;318d	c6 0f 	. . 
	call sub_31a9h		;318f	cd a9 31 	. . 1 
	add a,005h		;3192	c6 05 	. . 
	call sub_31a9h		;3194	cd a9 31 	. . 1 
	sub 028h		;3197	d6 28 	. ( 
	ld h,a			;3199	67 	g 
	ld c,(hl)			;319a	4e 	N 
	ld (hl),000h		;319b	36 00 	6 . 
	call sub_31a9h		;319d	cd a9 31 	. . 1 
	ld (hl),c			;31a0	71 	q 
	pop hl			;31a1	e1 	. 
l31a2h:
	add hl,de			;31a2	19 	. 
	call sub_2ee3h		;31a3	cd e3 2e 	. . . 
	djnz l31a2h		;31a6	10 fa 	. . 
	ret			;31a8	c9 	. 
sub_31a9h:
	ld h,a			;31a9	67 	g 
	push bc			;31aa	c5 	. 
	push hl			;31ab	e5 	. 
	ld c,(hl)			;31ac	4e 	N 
l31adh:
	add hl,de			;31ad	19 	. 
	ld (hl),c			;31ae	71 	q 
	djnz l31adh		;31af	10 fc 	. . 
	pop hl			;31b1	e1 	. 
	pop bc			;31b2	c1 	. 
	ld a,h			;31b3	7c 	| 
	ret			;31b4	c9 	. 
l31b5h:
	ld (hl),c			;31b5	71 	q 
	ld (l3278h),a		;31b6	32 78 32 	2 x 2 
	ld a,l			;31b9	7d 	} 
	ld (l328bh),a		;31ba	32 8b 32 	2 . 2 
	sub a			;31bd	97 	. 
	ld (032a6h),a		;31be	32 a6 32 	2 . 2 
	or e			;31c1	b3 	. 
	ld (l32b7h),a		;31c2	32 b7 32 	2 . 2 
	jp 0cf32h		;31c5	c3 32 cf 	. 2 . 
	ld (l32dah),a		;31c8	32 da 32 	2 . 2 
	ex (sp),hl			;31cb	e3 	. 
	ld (l32eah),a		;31cc	32 ea 32 	2 . 2 
	defb 0edh;next byte illegal after ed		;31cf	ed 	. 
	ld (l32f1h),a		;31d0	32 f1 32 	2 . 2 
	nop			;31d3	00 	. 
	inc sp			;31d4	33 	3 
	inc c			;31d5	0c 	. 
	inc sp			;31d6	33 	3 
	ld d,033h		;31d7	16 33 	. 3 
	dec h			;31d9	25 	% 
	inc sp			;31da	33 	3 
	inc (hl)			;31db	34 	4 
	inc sp			;31dc	33 	3 
	ld b,d			;31dd	42 	B 
	inc sp			;31de	33 	3 
	ld d,b			;31df	50 	P 
	inc sp			;31e0	33 	3 
	ld e,(hl)			;31e1	5e 	^ 
	inc sp			;31e2	33 	3 
	ld l,l			;31e3	6d 	m 
	inc sp			;31e4	33 	3 
	ld a,d			;31e5	7a 	z 
	inc sp			;31e6	33 	3 
	adc a,b			;31e7	88 	. 
	inc sp			;31e8	33 	3 
	sub b			;31e9	90 	. 
	inc sp			;31ea	33 	3 
	sbc a,c			;31eb	99 	. 
	inc sp			;31ec	33 	3 
	xor b			;31ed	a8 	. 
	inc sp			;31ee	33 	3 
	xor (hl)			;31ef	ae 	. 
	inc sp			;31f0	33 	3 
	cp l			;31f1	bd 	. 
	inc sp			;31f2	33 	3 
	defb 0cbh,033h	;sli e		;31f3	cb 33 	. 3 
	ret c			;31f5	d8 	. 
	inc sp			;31f6	33 	3 
	push hl			;31f7	e5 	. 
	inc sp			;31f8	33 	3 
	jp p,0fe33h		;31f9	f2 33 fe 	. 3 . 
	inc sp			;31fc	33 	3 
	dec bc			;31fd	0b 	. 
	inc (hl)			;31fe	34 	4 
	jr l3235h		;31ff	18 34 	. 4 
	inc hl			;3201	23 	# 
	inc (hl)			;3202	34 	4 
	ld sp,l3a34h		;3203	31 34 3a 	1 4 : 
	inc (hl)			;3206	34 	4 
	ld b,d			;3207	42 	B 
	inc (hl)			;3208	34 	4 
	ld c,d			;3209	4a 	J 
	inc (hl)			;320a	34 	4 
	ld e,c			;320b	59 	Y 
	inc (hl)			;320c	34 	4 
	ld e,a			;320d	5f 	_ 
	inc (hl)			;320e	34 	4 
	ld l,e			;320f	6b 	k 
	inc (hl)			;3210	34 	4 
	ld a,d			;3211	7a 	z 
	inc (hl)			;3212	34 	4 
	add a,d			;3213	82 	. 
	inc (hl)			;3214	34 	4 
	adc a,l			;3215	8d 	. 
	inc (hl)			;3216	34 	4 
	sbc a,h			;3217	9c 	. 
	inc (hl)			;3218	34 	4 
	xor d			;3219	aa 	. 
	inc (hl)			;321a	34 	4 
	cp c			;321b	b9 	. 
	inc (hl)			;321c	34 	4 
	cp a			;321d	bf 	. 
	inc (hl)			;321e	34 	4 
	push bc			;321f	c5 	. 
	inc (hl)			;3220	34 	4 
	rst 8			;3221	cf 	. 
	inc (hl)			;3222	34 	4 
	in a,(034h)		;3223	db 34 	. 4 
	jp pe,0f434h		;3225	ea 34 f4 	. 4 . 
	inc (hl)			;3228	34 	4 
	inc bc			;3229	03 	. 
	dec (hl)			;322a	35 	5 
	dec bc			;322b	0b 	. 
	dec (hl)			;322c	35 	5 
	ld a,(de)			;322d	1a 	. 
	dec (hl)			;322e	35 	5 
	ld (l2735h),hl		;322f	22 35 27 	" 5 ' 
	dec (hl)			;3232	35 	5 
	add hl,hl			;3233	29 	) 
	dec (hl)			;3234	35 	5 
l3235h:
	dec l			;3235	2d 	- 
	dec (hl)			;3236	35 	5 
	jr c,l326eh		;3237	38 35 	8 5 
	ld b,e			;3239	43 	C 
	dec (hl)			;323a	35 	5 
	ld c,e			;323b	4b 	K 
	dec (hl)			;323c	35 	5 
	ld d,(hl)			;323d	56 	V 
	dec (hl)			;323e	35 	5 
	ld h,c			;323f	61 	a 
	dec (hl)			;3240	35 	5 
l3241h:
	ld l,h			;3241	6c 	l 
	dec (hl)			;3242	35 	5 
	ld a,b			;3243	78 	x 
	dec (hl)			;3244	35 	5 
	add a,c			;3245	81 	. 
	dec (hl)			;3246	35 	5 
	adc a,d			;3247	8a 	. 
	dec (hl)			;3248	35 	5 
	sub l			;3249	95 	. 
	dec (hl)			;324a	35 	5 
	and e			;324b	a3 	. 
	dec (hl)			;324c	35 	5 
	xor c			;324d	a9 	. 
	dec (hl)			;324e	35 	5 
	xor a			;324f	af 	. 
	dec (hl)			;3250	35 	5 
	or l			;3251	b5 	. 
	dec (hl)			;3252	35 	5 
	cp l			;3253	bd 	. 
	dec (hl)			;3254	35 	5 
	ret z			;3255	c8 	. 
	dec (hl)			;3256	35 	5 
	out (035h),a		;3257	d3 35 	. 5 
	dec (ix-018h)		;3259	dd 35 e8 	. 5 . 
	dec (hl)			;325c	35 	5 
	di			;325d	f3 	. 
	dec (hl)			;325e	35 	5 
	ld sp,hl			;325f	f9 	. 
	dec (hl)			;3260	35 	5 
	ld bc,00736h		;3261	01 36 07 	. 6 . 
	ld (hl),012h		;3264	36 12 	6 . 
	ld (hl),01ch		;3266	36 1c 	6 . 
	ld (hl),027h		;3268	36 27 	6 ' 
	ld (hl),034h		;326a	36 34 	6 4 
	ld (hl),038h		;326c	36 38 	6 8 
l326eh:
	ld (hl),045h		;326e	36 45 	6 E 
	ld (hl),022h		;3270	36 22 	6 " 
	ld b,c			;3272	41 	A 
	ld h,b			;3273	60 	` 
	inc h			;3274	24 	$ 
	inc l			;3275	2c 	, 
	ld b,c			;3276	41 	A 
	ret po			;3277	e0 	. 
l3278h:
	ld (05846h),hl		;3278	22 46 58 	" F X 
	ld c,h			;327b	4c 	L 
	ret p			;327c	f0 	. 
	inc l			;327d	2c 	, 
	ld b,(hl)			;327e	46 	F 
	ld (hl),b			;327f	70 	p 
	ld hl,0784fh		;3280	21 4f 78 	! O x 
	ld b,(hl)			;3283	46 	F 
	ld (hl),b			;3284	70 	p 
	ld hl,0784fh		;3285	21 4f 78 	! O x 
	ld b,(hl)			;3288	46 	F 
	ld (hl),b			;3289	70 	p 
	and c			;328a	a1 	. 
l328bh:
	ld (05846h),hl		;328b	22 46 58 	" F X 
	ld b,e			;328e	43 	C 
	ld (hl),b			;328f	70 	p 
	ld b,(hl)			;3290	46 	F 
	ld e,b			;3291	58 	X 
	ld hl,07043h		;3292	21 43 70 	! C p 
	ld b,(hl)			;3295	46 	F 
	ret c			;3296	d8 	. 
	ld (04c4ch),hl		;3297	22 4c 4c 	" L L 
	ld c,h			;329a	4c 	L 
	ld e,b			;329b	58 	X 
	ld b,b			;329c	40 	@ 
	ld (hl),b			;329d	70 	p 
	ld b,c			;329e	41 	A 
	ld h,b			;329f	60 	` 
	ld b,e			;32a0	43 	C 
	ld b,b			;32a1	40 	@ 
	ld b,(hl)			;32a2	46 	F 
	ld c,h			;32a3	4c 	L 
	ld c,h			;32a4	4c 	L 
	call z,04722h		;32a5	cc 22 47 	. " G 
	ld b,b			;32a8	40 	@ 
	ld c,l			;32a9	4d 	M 
	ld h,b			;32aa	60 	` 
	ld hl,05847h		;32ab	21 47 58 	! G X 
	ld c,l			;32ae	4d 	M 
	ld (hl),b			;32af	70 	p 
	ld hl,0d847h		;32b0	21 47 d8 	! G . 
	ld (06041h),hl		;32b3	22 41 60 	" A ` 
	and c			;32b6	a1 	. 
l32b7h:
	ld (07040h),hl		;32b7	22 40 70 	" @ p 
	ld b,c			;32ba	41 	A 
	ld h,b			;32bb	60 	` 
	ld b,e			;32bc	43 	C 
	ld b,b			;32bd	40 	@ 
	ld (06041h),hl		;32be	22 41 60 	" A ` 
	ld b,b			;32c1	40 	@ 
	ret p			;32c2	f0 	. 
	ld (04043h),hl		;32c3	22 43 40 	" C @ 
	ld b,c			;32c6	41 	A 
	ld h,b			;32c7	60 	` 
	ld b,b			;32c8	40 	@ 
	ld (hl),b			;32c9	70 	p 
	ld (06041h),hl		;32ca	22 41 60 	" A ` 
	ld b,e			;32cd	43 	C 
	ret nz			;32ce	c0 	. 
	inc hl			;32cf	23 	# 
	ld b,c			;32d0	41 	A 
	ld h,b			;32d1	60 	` 
	ld c,l			;32d2	4d 	M 
	ld l,h			;32d3	6c 	l 
	ld b,e			;32d4	43 	C 
	ld (hl),b			;32d5	70 	p 
	ld c,l			;32d6	4d 	M 
	ld l,h			;32d7	6c 	l 
	ld b,c			;32d8	41 	A 
	ret po			;32d9	e0 	. 
l32dah:
	inc hl			;32da	23 	# 
	ld b,c			;32db	41 	A 
	ld h,b			;32dc	60 	` 
	ld hl,07c4fh		;32dd	21 4f 7c 	! O | 
	ld b,c			;32e0	41 	A 
	ld h,b			;32e1	60 	` 
	and c			;32e2	a1 	. 
	daa			;32e3	27 	' 
	ld b,b			;32e4	40 	@ 
	ld (hl),b			;32e5	70 	p 
	ld b,c			;32e6	41 	A 
	ld h,b			;32e7	60 	` 
	ld b,e			;32e8	43 	C 
	ret nz			;32e9	c0 	. 
l32eah:
	dec h			;32ea	25 	% 
	ld c,a			;32eb	4f 	O 
	call m,04127h		;32ec	fc 27 41 	. ' A 
	ld h,b			;32ef	60 	` 
	and c			;32f0	a1 	. 
l32f1h:
	ld (04c40h),hl		;32f1	22 40 4c 	" @ L 
	ld b,b			;32f4	40 	@ 
	ld e,b			;32f5	58 	X 
	ld b,b			;32f6	40 	@ 
	ld (hl),b			;32f7	70 	p 
	ld b,c			;32f8	41 	A 
	ld h,b			;32f9	60 	` 
	ld b,e			;32fa	43 	C 
	ld b,b			;32fb	40 	@ 
	ld b,(hl)			;32fc	46 	F 
	ld b,b			;32fd	40 	@ 
	ld c,h			;32fe	4c 	L 
	ret nz			;32ff	c0 	. 
	ld (06043h),hl		;3300	22 43 60 	" C ` 
	ld b,(hl)			;3303	46 	F 
	ld (hl),b			;3304	70 	p 
	ld c,h			;3305	4c 	L 
	ld e,b			;3306	58 	X 
	ld (07046h),hl		;3307	22 46 70 	" F p 
	ld b,e			;330a	43 	C 
	ret po			;330b	e0 	. 
	ld (06041h),hl		;330c	22 41 60 	" A ` 
	ld b,e			;330f	43 	C 
	ld h,b			;3310	60 	` 
	ld b,a			;3311	47 	G 
	ld h,b			;3312	60 	` 
	ld b,c			;3313	41 	A 
	ld h,b			;3314	60 	` 
l3315h:
	and e			;3315	a3 	. 
	ld (07047h),hl		;3316	22 47 70 	" G p 
	ld c,h			;3319	4c 	L 
	ld e,b			;331a	58 	X 
	ld b,b			;331b	40 	@ 
	ld (hl),b			;331c	70 	p 
	ld b,c			;331d	41 	A 
	ld h,b			;331e	60 	` 
	ld b,e			;331f	43 	C 
	ld b,b			;3320	40 	@ 
	ld b,(hl)			;3321	46 	F 
	ld b,b			;3322	40 	@ 
	ld c,a			;3323	4f 	O 
	ret m			;3324	f8 	. 
	ld (07847h),hl		;3325	22 47 78 	" G x 
	ld c,h			;3328	4c 	L 
	ld c,h			;3329	4c 	L 
	ld b,b			;332a	40 	@ 
	ld c,h			;332b	4c 	L 
	ld b,b			;332c	40 	@ 
	ld a,b			;332d	78 	x 
	ld b,b			;332e	40 	@ 
	ld c,h			;332f	4c 	L 
	ld c,h			;3330	4c 	L 
	ld c,h			;3331	4c 	L 
	ld b,a			;3332	47 	G 
	ret m			;3333	f8 	. 
	ld (07040h),hl		;3334	22 40 70 	" @ p 
	ld b,c			;3337	41 	A 
	ld h,b			;3338	60 	` 
	ld b,e			;3339	43 	C 
	ld b,b			;333a	40 	@ 
	ld b,(hl)			;333b	46 	F 
	ld (hl),b			;333c	70 	p 
	ld c,a			;333d	4f 	O 
	ld a,h			;333e	7c 	| 
	ld b,b			;333f	40 	@ 
	ld (hl),b			;3340	70 	p 
	and c			;3341	a1 	. 
	ld (07c4fh),hl		;3342	22 4f 7c 	" O | 
	ld c,h			;3345	4c 	L 
	ld b,b			;3346	40 	@ 
	ld hl,0784fh		;3347	21 4f 78 	! O x 
	ld b,b			;334a	40 	@ 
	ld c,h			;334b	4c 	L 
	ld c,h			;334c	4c 	L 
	ld c,h			;334d	4c 	L 
	ld b,a			;334e	47 	G 
	ret m			;334f	f8 	. 
	ld (06043h),hl		;3350	22 43 60 	" C ` 
	ld b,(hl)			;3353	46 	F 
	ld b,b			;3354	40 	@ 
	ld c,h			;3355	4c 	L 
	ld b,b			;3356	40 	@ 
	ld c,a			;3357	4f 	O 
	ld (hl),b			;3358	70 	p 
	ld c,h			;3359	4c 	L 
	ld e,b			;335a	58 	X 
	ld hl,0f047h		;335b	21 47 f0 	! G . 
	ld (07c4fh),hl		;335e	22 4f 7c 	" O | 
	ld b,b			;3361	40 	@ 
	ld e,b			;3362	58 	X 
	ld b,b			;3363	40 	@ 
	ld (hl),b			;3364	70 	p 
	ld b,c			;3365	41 	A 
	ld h,b			;3366	60 	` 
	ld b,e			;3367	43 	C 
	ld b,b			;3368	40 	@ 
	ld b,(hl)			;3369	46 	F 
	ld b,b			;336a	40 	@ 
	ld c,h			;336b	4c 	L 
	ret nz			;336c	c0 	. 
	ld (07847h),hl		;336d	22 47 78 	" G x 
	ld c,h			;3370	4c 	L 
	ld c,h			;3371	4c 	L 
	ld hl,07847h		;3372	21 47 78 	! G x 
	ld c,h			;3375	4c 	L 
	ld c,h			;3376	4c 	L 
	ld hl,0f847h		;3377	21 47 f8 	! G . 
	ld (07047h),hl		;337a	22 47 70 	" G p 
	ld c,h			;337d	4c 	L 
	ld e,b			;337e	58 	X 
	ld hl,07847h		;337f	21 47 78 	! G x 
	ld b,b			;3382	40 	@ 
	ld e,b			;3383	58 	X 
	ld b,b			;3384	40 	@ 
	ld (hl),b			;3385	70 	p 
	ld b,e			;3386	43 	C 
	ret po			;3387	e0 	. 
	inc h			;3388	24 	$ 
	ld b,c			;3389	41 	A 
	ld h,b			;338a	60 	` 
	ld hl,0412ch		;338b	21 2c 41 	! , A 
	ld h,b			;338e	60 	` 
	and c			;338f	a1 	. 
	inc l			;3390	2c 	, 
	dec h			;3391	25 	% 
	ld b,c			;3392	41 	A 
	ld h,b			;3393	60 	` 
	inc l			;3394	2c 	, 
	ld b,c			;3395	41 	A 
	ld h,b			;3396	60 	` 
	ld b,e			;3397	43 	C 
	ret nz			;3398	c0 	. 
	ld (06041h),hl		;3399	22 41 60 	" A ` 
	ld b,e			;339c	43 	C 
	ld b,b			;339d	40 	@ 
	ld b,(hl)			;339e	46 	F 
	ld b,b			;339f	40 	@ 
	ld c,h			;33a0	4c 	L 
	ld b,b			;33a1	40 	@ 
	ld b,(hl)			;33a2	46 	F 
	ld b,b			;33a3	40 	@ 
	ld b,e			;33a4	43 	C 
	ld b,b			;33a5	40 	@ 
	ld b,c			;33a6	41 	A 
	ret po			;33a7	e0 	. 
	inc h			;33a8	24 	$ 
	ld c,a			;33a9	4f 	O 
	ld a,h			;33aa	7c 	| 
	inc l			;33ab	2c 	, 
	ld c,a			;33ac	4f 	O 
	call m,04122h		;33ad	fc 22 41 	. " A 
	ld h,b			;33b0	60 	` 
	ld b,b			;33b1	40 	@ 
	ld (hl),b			;33b2	70 	p 
	ld b,b			;33b3	40 	@ 
	ld e,b			;33b4	58 	X 
	ld b,b			;33b5	40 	@ 
	ld c,h			;33b6	4c 	L 
	ld b,b			;33b7	40 	@ 
	ld e,b			;33b8	58 	X 
	ld b,b			;33b9	40 	@ 
	ld (hl),b			;33ba	70 	p 
	ld b,c			;33bb	41 	A 
	ret po			;33bc	e0 	. 
	ld (07047h),hl		;33bd	22 47 70 	" G p 
	ld c,h			;33c0	4c 	L 
	ld e,b			;33c1	58 	X 
	ld b,b			;33c2	40 	@ 
	ld e,b			;33c3	58 	X 
	ld b,b			;33c4	40 	@ 
	ld (hl),b			;33c5	70 	p 
	ld b,c			;33c6	41 	A 
	ld h,b			;33c7	60 	` 
	inc l			;33c8	2c 	, 
	ld b,c			;33c9	41 	A 
	ret po			;33ca	e0 	. 
	ld (07847h),hl		;33cb	22 47 78 	" G x 
	ld c,h			;33ce	4c 	L 
	ld c,h			;33cf	4c 	L 
	ld hl,07c4dh		;33d0	21 4d 7c 	! M | 
	ld hl,0404ch		;33d3	21 4c 40 	! L @ 
	ld b,a			;33d6	47 	G 
	call m,04322h		;33d7	fc 22 43 	. " C 
	ld (hl),b			;33da	70 	p 
	ld b,(hl)			;33db	46 	F 
	ld e,b			;33dc	58 	X 
	ld c,h			;33dd	4c 	L 
	ld c,h			;33de	4c 	L 
	ld hl,07c4fh		;33df	21 4f 7c 	! O | 
	ld c,h			;33e2	4c 	L 
	ld c,h			;33e3	4c 	L 
	and c			;33e4	a1 	. 
	ld (0784fh),hl		;33e5	22 4f 78 	" O x 
	ld c,h			;33e8	4c 	L 
	ld c,h			;33e9	4c 	L 
	ld hl,0784fh		;33ea	21 4f 78 	! O x 
	ld c,h			;33ed	4c 	L 
	ld c,h			;33ee	4c 	L 
	ld hl,0f84fh		;33ef	21 4f f8 	! O . 
	ld (07847h),hl		;33f2	22 47 78 	" G x 
	ld c,h			;33f5	4c 	L 
	ld c,h			;33f6	4c 	L 
	ld c,h			;33f7	4c 	L 
	ld b,b			;33f8	40 	@ 
	ld (04c4ch),hl		;33f9	22 4c 4c 	" L L 
	ld b,a			;33fc	47 	G 
	ret m			;33fd	f8 	. 
	inc l			;33fe	2c 	, 
	ld hl,0704fh		;33ff	21 4f 70 	! O p 
	ld c,h			;3402	4c 	L 
	ld e,b			;3403	58 	X 
	ld c,h			;3404	4c 	L 
	ld c,h			;3405	4c 	L 
	ld (0584ch),hl		;3406	22 4c 58 	" L X 
	ld c,a			;3409	4f 	O 
	ret p			;340a	f0 	. 
	ld (07c4fh),hl		;340b	22 4f 7c 	" O | 
	ld c,h			;340e	4c 	L 
	ld b,b			;340f	40 	@ 
	ld hl,0604fh		;3410	21 4f 60 	! O ` 
	ld c,h			;3413	4c 	L 
	ld b,b			;3414	40 	@ 
	ld hl,0fc4fh		;3415	21 4f fc 	! O . 
	ld (07c4fh),hl		;3418	22 4f 7c 	" O | 
	ld c,h			;341b	4c 	L 
	ld b,b			;341c	40 	@ 
	ld hl,0604fh		;341d	21 4f 60 	! O ` 
	ld c,h			;3420	4c 	L 
	ld b,b			;3421	40 	@ 
	and d			;3422	a2 	. 
	ld (07847h),hl		;3423	22 47 78 	" G x 
	ld c,h			;3426	4c 	L 
	ld c,h			;3427	4c 	L 
	ld c,h			;3428	4c 	L 
	ld b,b			;3429	40 	@ 
	ld c,l			;342a	4d 	M 
	ld a,h			;342b	7c 	| 
	ld c,h			;342c	4c 	L 
	ld c,h			;342d	4c 	L 
	ld hl,0f847h		;342e	21 47 f8 	! G . 
	ld (04c4ch),hl		;3431	22 4c 4c 	" L L 
	ld (07c4fh),hl		;3434	22 4f 7c 	" O | 
	ld c,h			;3437	4c 	L 
	ld c,h			;3438	4c 	L 
	and d			;3439	a2 	. 
	ld (07847h),hl		;343a	22 47 78 	" G x 
	ld b,c			;343d	41 	A 
	ld h,b			;343e	60 	` 
	inc h			;343f	24 	$ 
	ld b,a			;3440	47 	G 
	ret m			;3441	f8 	. 
	ld (05840h),hl		;3442	22 40 58 	" @ X 
	inc h			;3445	24 	$ 
	ld b,(hl)			;3446	46 	F 
	ld e,b			;3447	58 	X 
	ld b,e			;3448	43 	C 
	ret p			;3449	f0 	. 
	ld (0584ch),hl		;344a	22 4c 58 	" L X 
	ld c,h			;344d	4c 	L 
	ld (hl),b			;344e	70 	p 
	ld c,l			;344f	4d 	M 
	ld h,b			;3450	60 	` 
	ld c,a			;3451	4f 	O 
	ld b,b			;3452	40 	@ 
	ld c,l			;3453	4d 	M 
	ld h,b			;3454	60 	` 
	ld c,h			;3455	4c 	L 
	ld (hl),b			;3456	70 	p 
	ld c,h			;3457	4c 	L 
	ret c			;3458	d8 	. 
	ld (0404ch),hl		;3459	22 4c 40 	" L @ 
	dec h			;345c	25 	% 
	ld c,a			;345d	4f 	O 
	call m,04c22h		;345e	fc 22 4c 	. " L 
	ld c,h			;3461	4c 	L 
	ld c,(hl)			;3462	4e 	N 
	ld e,h			;3463	5c 	\ 
	ld c,a			;3464	4f 	O 
	ld a,h			;3465	7c 	| 
	ld c,l			;3466	4d 	M 
	ld l,h			;3467	6c 	l 
	ld c,h			;3468	4c 	L 
	ld c,h			;3469	4c 	L 
	and d			;346a	a2 	. 
	ld (04c4ch),hl		;346b	22 4c 4c 	" L L 
	ld c,(hl)			;346e	4e 	N 
	ld c,h			;346f	4c 	L 
	ld c,a			;3470	4f 	O 
	ld c,h			;3471	4c 	L 
	ld c,l			;3472	4d 	M 
	ld l,h			;3473	6c 	l 
	ld c,h			;3474	4c 	L 
	ld a,h			;3475	7c 	| 
	ld c,h			;3476	4c 	L 
	ld e,h			;3477	5c 	\ 
	ld c,h			;3478	4c 	L 
	call z,04722h		;3479	cc 22 47 	. " G 
	ld a,b			;347c	78 	x 
	ld c,h			;347d	4c 	L 
	ld c,h			;347e	4c 	L 
	inc h			;347f	24 	$ 
	ld b,a			;3480	47 	G 
	ret m			;3481	f8 	. 
	ld (0784fh),hl		;3482	22 4f 78 	" O x 
	ld c,h			;3485	4c 	L 
	ld c,h			;3486	4c 	L 
	ld hl,0784fh		;3487	21 4f 78 	! O x 
	ld c,h			;348a	4c 	L 
	ld b,b			;348b	40 	@ 
	and d			;348c	a2 	. 
	ld (07043h),hl		;348d	22 43 70 	" C p 
	ld b,(hl)			;3490	46 	F 
	ld e,b			;3491	58 	X 
	ld c,h			;3492	4c 	L 
	ld c,h			;3493	4c 	L 
	ld c,l			;3494	4d 	M 
	ld l,h			;3495	6c 	l 
	ld c,h			;3496	4c 	L 
	ld a,h			;3497	7c 	| 
	ld b,(hl)			;3498	46 	F 
	ld e,b			;3499	58 	X 
	ld b,e			;349a	43 	C 
	call m,04f22h		;349b	fc 22 4f 	. " O 
	ld a,b			;349e	78 	x 
	ld c,h			;349f	4c 	L 
	ld c,h			;34a0	4c 	L 
	ld hl,0784fh		;34a1	21 4f 78 	! O x 
	ld c,l			;34a4	4d 	M 
	ld h,b			;34a5	60 	` 
	ld c,h			;34a6	4c 	L 
	ld (hl),b			;34a7	70 	p 
	ld c,h			;34a8	4c 	L 
	ret c			;34a9	d8 	. 
	ld (07847h),hl		;34aa	22 47 78 	" G x 
	ld c,h			;34ad	4c 	L 
	ld c,h			;34ae	4c 	L 
	ld c,h			;34af	4c 	L 
	ld b,b			;34b0	40 	@ 
	ld b,a			;34b1	47 	G 
	ld a,b			;34b2	78 	x 
	ld b,b			;34b3	40 	@ 
	ld c,h			;34b4	4c 	L 
	ld c,h			;34b5	4c 	L 
	ld c,h			;34b6	4c 	L 
	ld b,a			;34b7	47 	G 
	ret m			;34b8	f8 	. 
	ld (07c4fh),hl		;34b9	22 4f 7c 	" O | 
	ld b,c			;34bc	41 	A 
	ld h,b			;34bd	60 	` 
	and l			;34be	a5 	. 
	ld (04c4ch),hl		;34bf	22 4c 4c 	" L L 
	dec h			;34c2	25 	% 
	ld b,a			;34c3	47 	G 
	ret m			;34c4	f8 	. 
	ld (04c4ch),hl		;34c5	22 4c 4c 	" L L 
	inc hl			;34c8	23 	# 
	ld b,(hl)			;34c9	46 	F 
	ld e,b			;34ca	58 	X 
	ld b,e			;34cb	43 	C 
	ld (hl),b			;34cc	70 	p 
	ld b,c			;34cd	41 	A 
	ret po			;34ce	e0 	. 
	ld (04c4ch),hl		;34cf	22 4c 4c 	" L L 
	ld (06c4dh),hl		;34d2	22 4d 6c 	" M l 
	ld c,a			;34d5	4f 	O 
	ld a,h			;34d6	7c 	| 
	ld c,(hl)			;34d7	4e 	N 
	ld e,h			;34d8	5c 	\ 
	ld c,h			;34d9	4c 	L 
	call z,04c22h		;34da	cc 22 4c 	. " L 
	ld c,h			;34dd	4c 	L 
	ld b,(hl)			;34de	46 	F 
	ld e,b			;34df	58 	X 
	ld b,e			;34e0	43 	C 
	ld (hl),b			;34e1	70 	p 
	ld b,c			;34e2	41 	A 
	ld h,b			;34e3	60 	` 
	ld b,e			;34e4	43 	C 
	ld (hl),b			;34e5	70 	p 
	ld b,(hl)			;34e6	46 	F 
	ld e,b			;34e7	58 	X 
	ld c,h			;34e8	4c 	L 
	call z,04c22h		;34e9	cc 22 4c 	. " L 
	ld c,h			;34ec	4c 	L 
	ld b,(hl)			;34ed	46 	F 
	ld e,b			;34ee	58 	X 
	ld b,e			;34ef	43 	C 
	ld (hl),b			;34f0	70 	p 
	ld b,c			;34f1	41 	A 
	ld h,b			;34f2	60 	` 
	and e			;34f3	a3 	. 
	ld (07c4fh),hl		;34f4	22 4f 7c 	" O | 
	ld b,b			;34f7	40 	@ 
	ld e,b			;34f8	58 	X 
	ld b,b			;34f9	40 	@ 
	ld (hl),b			;34fa	70 	p 
	ld b,c			;34fb	41 	A 
	ld h,b			;34fc	60 	` 
	ld b,e			;34fd	43 	C 
	ld b,b			;34fe	40 	@ 
	ld b,(hl)			;34ff	46 	F 
	ld b,b			;3500	40 	@ 
	ld c,a			;3501	4f 	O 
	call m,04f22h		;3502	fc 22 4f 	. " O 
	ld h,b			;3505	60 	` 
	ld c,h			;3506	4c 	L 
	ld b,b			;3507	40 	@ 
	inc h			;3508	24 	$ 
	ld c,a			;3509	4f 	O 
	ret po			;350a	e0 	. 
	ld (0404ch),hl		;350b	22 4c 40 	" L @ 
	ld b,(hl)			;350e	46 	F 
	ld b,b			;350f	40 	@ 
	ld b,e			;3510	43 	C 
	ld b,b			;3511	40 	@ 
	ld b,c			;3512	41 	A 
	ld h,b			;3513	60 	` 
	ld b,b			;3514	40 	@ 
	ld (hl),b			;3515	70 	p 
	ld b,b			;3516	40 	@ 
	ld e,b			;3517	58 	X 
	ld b,b			;3518	40 	@ 
	call z,04122h		;3519	cc 22 41 	. " A 
	ld a,h			;351c	7c 	| 
	ld b,b			;351d	40 	@ 
	ld c,h			;351e	4c 	L 
	inc h			;351f	24 	$ 
	ld b,c			;3520	41 	A 
	call m,0412ch		;3521	fc 2c 41 	. , A 
	ld h,b			;3524	60 	` 
	ld b,(hl)			;3525	46 	F 
	ret c			;3526	d8 	. 
	add hl,hl			;3527	29 	) 
	xor l			;3528	ad 	. 
	ld b,c			;3529	41 	A 
	ld h,b			;352a	60 	` 
	ld b,b			;352b	40 	@ 
	ret p			;352c	f0 	. 
	inc h			;352d	24 	$ 
	ld b,a			;352e	47 	G 
	ld h,b			;352f	60 	` 
	ld b,b			;3530	40 	@ 
	ld (hl),b			;3531	70 	p 
	ld c,a			;3532	4f 	O 
	ld (hl),b			;3533	70 	p 
	ld c,h			;3534	4c 	L 
	ld (hl),b			;3535	70 	p 
	ld b,a			;3536	47 	G 
	ret m			;3537	f8 	. 
	ld (04046h),hl		;3538	22 46 40 	" F @ 
	ld hl,07047h		;353b	21 47 70 	! G p 
	ld b,(hl)			;353e	46 	F 
	ld e,b			;353f	58 	X 
	ld (0f047h),hl		;3540	22 47 f0 	" G . 
	inc h			;3543	24 	$ 
	ld b,e			;3544	43 	C 
	ld (hl),b			;3545	70 	p 
	ld b,(hl)			;3546	46 	F 
	ld b,b			;3547	40 	@ 
	ld (0f043h),hl		;3548	22 43 f0 	" C . 
	ld (05840h),hl		;354b	22 40 58 	" @ X 
	ld hl,07843h		;354e	21 43 78 	! C x 
	ld b,(hl)			;3551	46 	F 
	ld e,b			;3552	58 	X 
	ld (0f843h),hl		;3553	22 43 f8 	" C . 
	inc h			;3556	24 	$ 
	ld b,e			;3557	43 	C 
	ld (hl),b			;3558	70 	p 
	ld b,(hl)			;3559	46 	F 
	ld e,b			;355a	58 	X 
	ld b,a			;355b	47 	G 
	ld a,b			;355c	78 	x 
	ld b,(hl)			;355d	46 	F 
	ld b,b			;355e	40 	@ 
	ld b,e			;355f	43 	C 
	ret m			;3560	f8 	. 
	ld (07840h),hl		;3561	22 40 78 	" @ x 
	ld b,c			;3564	41 	A 
	ld h,b			;3565	60 	` 
	ld hl,07043h		;3566	21 43 70 	! C p 
	ld b,c			;3569	41 	A 
	ld h,b			;356a	60 	` 
	and d			;356b	a2 	. 
	inc h			;356c	24 	$ 
	ld b,e			;356d	43 	C 
	ld (hl),b			;356e	70 	p 
	ld b,(hl)			;356f	46 	F 
	ld e,b			;3570	58 	X 
	ld hl,07843h		;3571	21 43 78 	! C x 
	ld b,b			;3574	40 	@ 
	ld e,b			;3575	58 	X 
	ld b,a			;3576	47 	G 
	ret m			;3577	f8 	. 
	ld (04046h),hl		;3578	22 46 40 	" F @ 
	ld hl,07047h		;357b	21 47 70 	! G p 
	ld b,(hl)			;357e	46 	F 
	ld e,b			;357f	58 	X 
	and e			;3580	a3 	. 
	ld (06041h),hl		;3581	22 41 60 	" A ` 
	inc l			;3584	2c 	, 
	ld b,e			;3585	43 	C 
	ld h,b			;3586	60 	` 
	ld b,c			;3587	41 	A 
	ld h,b			;3588	60 	` 
	and e			;3589	a3 	. 
	ld (06041h),hl		;358a	22 41 60 	" A ` 
	inc l			;358d	2c 	, 
	ld b,a			;358e	47 	G 
	ld h,b			;358f	60 	` 
	ld b,c			;3590	41 	A 
	ld h,b			;3591	60 	` 
	inc hl			;3592	23 	# 
	ld b,a			;3593	47 	G 
	ret nz			;3594	c0 	. 
	ld (04046h),hl		;3595	22 46 40 	" F @ 
	ld hl,05846h		;3598	21 46 58 	! F X 
	ld b,(hl)			;359b	46 	F 
	ld (hl),b			;359c	70 	p 
	ld b,a			;359d	47 	G 
	ld h,b			;359e	60 	` 
	ld b,(hl)			;359f	46 	F 
	ld (hl),b			;35a0	70 	p 
	ld b,(hl)			;35a1	46 	F 
	ret c			;35a2	d8 	. 
	ld (06041h),hl		;35a3	22 41 60 	" A ` 
	dec h			;35a6	25 	% 
	ld b,b			;35a7	40 	@ 
	ret m			;35a8	f8 	. 
	inc h			;35a9	24 	$ 
	ld c,a			;35aa	4f 	O 
	ld a,b			;35ab	78 	x 
	ld c,l			;35ac	4d 	M 
	ld l,h			;35ad	6c 	l 
	and e			;35ae	a3 	. 
	inc h			;35af	24 	$ 
	ld b,a			;35b0	47 	G 
	ld (hl),b			;35b1	70 	p 
	ld b,(hl)			;35b2	46 	F 
	ld e,b			;35b3	58 	X 
	and e			;35b4	a3 	. 
	inc h			;35b5	24 	$ 
	ld b,e			;35b6	43 	C 
	ld (hl),b			;35b7	70 	p 
	ld b,(hl)			;35b8	46 	F 
	ld e,b			;35b9	58 	X 
	ld (0f043h),hl		;35ba	22 43 f0 	" C . 
	inc h			;35bd	24 	$ 
	ld b,a			;35be	47 	G 
	ld (hl),b			;35bf	70 	p 
	ld b,(hl)			;35c0	46 	F 
	ld e,b			;35c1	58 	X 
	ld hl,07047h		;35c2	21 47 70 	! G p 
	ld b,(hl)			;35c5	46 	F 
	ld b,b			;35c6	40 	@ 
	and c			;35c7	a1 	. 
	inc h			;35c8	24 	$ 
	ld b,e			;35c9	43 	C 
	ld a,b			;35ca	78 	x 
	ld b,(hl)			;35cb	46 	F 
	ld e,b			;35cc	58 	X 
	ld hl,07843h		;35cd	21 43 78 	! C x 
	ld b,b			;35d0	40 	@ 
	ld e,b			;35d1	58 	X 
	and c			;35d2	a1 	. 
	inc h			;35d3	24 	$ 
	ld b,e			;35d4	43 	C 
	ld e,b			;35d5	58 	X 
	ld b,e			;35d6	43 	C 
	ld (hl),b			;35d7	70 	p 
	ld b,e			;35d8	43 	C 
	ld h,b			;35d9	60 	` 
	ld b,e			;35da	43 	C 
	ld b,b			;35db	40 	@ 
	and c			;35dc	a1 	. 
	inc h			;35dd	24 	$ 
	ld b,e			;35de	43 	C 
	ld a,b			;35df	78 	x 
	ld b,(hl)			;35e0	46 	F 
	ld b,b			;35e1	40 	@ 
	ld b,e			;35e2	43 	C 
	ld (hl),b			;35e3	70 	p 
	ld b,b			;35e4	40 	@ 
	ld e,b			;35e5	58 	X 
	ld b,a			;35e6	47 	G 
	ret p			;35e7	f0 	. 
	ld (06041h),hl		;35e8	22 41 60 	" A ` 
	ld hl,07043h		;35eb	21 43 70 	! C p 
	ld b,c			;35ee	41 	A 
	ld h,b			;35ef	60 	` 
	ld (0f840h),hl		;35f0	22 40 f8 	" @ . 
	inc h			;35f3	24 	$ 
	ld b,(hl)			;35f4	46 	F 
	ld e,b			;35f5	58 	X 
	inc hl			;35f6	23 	# 
	ld b,e			;35f7	43 	C 
	ret p			;35f8	f0 	. 
	inc h			;35f9	24 	$ 
	ld b,(hl)			;35fa	46 	F 
	ld e,b			;35fb	58 	X 
	ld (07043h),hl		;35fc	22 43 70 	" C p 
	ld b,c			;35ff	41 	A 
	ret po			;3600	e0 	. 
	inc h			;3601	24 	$ 
	ld c,l			;3602	4d 	M 
	ld l,h			;3603	6c 	l 
	inc hl			;3604	23 	# 
	ld b,a			;3605	47 	G 
	ret m			;3606	f8 	. 
	inc h			;3607	24 	$ 
	ld b,(hl)			;3608	46 	F 
	ld e,b			;3609	58 	X 
	ld b,e			;360a	43 	C 
	ld (hl),b			;360b	70 	p 
	ld b,c			;360c	41 	A 
	ld h,b			;360d	60 	` 
	ld b,e			;360e	43 	C 
	ld (hl),b			;360f	70 	p 
	ld b,(hl)			;3610	46 	F 
	ret c			;3611	d8 	. 
	inc h			;3612	24 	$ 
	ld b,(hl)			;3613	46 	F 
	ld e,b			;3614	58 	X 
	ld (07843h),hl		;3615	22 43 78 	" C x 
	ld b,b			;3618	40 	@ 
	ld e,b			;3619	58 	X 
	ld b,e			;361a	43 	C 
	ret m			;361b	f8 	. 
	inc h			;361c	24 	$ 
	ld b,a			;361d	47 	G 
	ld a,b			;361e	78 	x 
	ld b,b			;361f	40 	@ 
	ld (hl),b			;3620	70 	p 
	ld b,c			;3621	41 	A 
	ld h,b			;3622	60 	` 
	ld b,e			;3623	43 	C 
	ld b,b			;3624	40 	@ 
	ld b,a			;3625	47 	G 
	ret m			;3626	f8 	. 
	ld (07041h),hl		;3627	22 41 70 	" A p 
	ld b,e			;362a	43 	C 
	ld b,b			;362b	40 	@ 
	ld hl,04046h		;362c	21 46 40 	! F @ 
	ld b,e			;362f	43 	C 
	ld b,b			;3630	40 	@ 
	ld hl,0f041h		;3631	21 41 f0 	! A . 
	inc l			;3634	2c 	, 
	ld b,c			;3635	41 	A 
	ld h,b			;3636	60 	` 
	xor b			;3637	a8 	. 
	ld (06043h),hl		;3638	22 43 60 	" C ` 
	ld b,b			;363b	40 	@ 
	ld (hl),b			;363c	70 	p 
	ld hl,05840h		;363d	21 40 58 	! @ X 
	ld b,b			;3640	40 	@ 
	ld (hl),b			;3641	70 	p 
	ld hl,0e043h		;3642	21 43 e0 	! C . 
	ld hl,0baadh		;3645	21 ad ba 	! . . 
	ld e,a			;3648	5f 	_ 
	jp nz,0ca5fh		;3649	c2 5f ca 	. _ . 
	ld e,a			;364c	5f 	_ 
	push de			;364d	d5 	. 
	ld e,a			;364e	5f 	_ 
	add a,a			;364f	87 	. 
	ld (hl),09eh		;3650	36 9e 	6 . 
	ld (hl),0b5h		;3652	36 b5 	6 . 
	ld (hl),0c6h		;3654	36 c6 	6 . 
	ld (hl),0d5h		;3656	36 d5 	6 . 
	ld (hl),0e4h		;3658	36 e4 	6 . 
	ld (hl),0f3h		;365a	36 f3 	6 . 
	ld (hl),004h		;365c	36 04 	6 . 
	scf			;365e	37 	7 
	dec d			;365f	15 	. 
	scf			;3660	37 	7 
	rra			;3661	1f 	. 
	scf			;3662	37 	7 
	ld hl,(03837h)		;3663	2a 37 38 	* 7 8 
	scf			;3666	37 	7 
	ld b,a			;3667	47 	G 
	scf			;3668	37 	7 
	ld c,h			;3669	4c 	L 
	scf			;366a	37 	7 
	ld d,d			;366b	52 	R 
	scf			;366c	37 	7 
	ld e,e			;366d	5b 	[ 
	scf			;366e	37 	7 
	ld h,h			;366f	64 	d 
	scf			;3670	37 	7 
	ld l,l			;3671	6d 	m 
	scf			;3672	37 	7 
	halt			;3673	76 	v 
	scf			;3674	37 	7 
	add a,c			;3675	81 	. 
	scf			;3676	37 	7 
	adc a,h			;3677	8c 	. 
	scf			;3678	37 	7 
	sub h			;3679	94 	. 
	scf			;367a	37 	7 
	sbc a,h			;367b	9c 	. 
	scf			;367c	37 	7 
	and (hl)			;367d	a6 	. 
	scf			;367e	37 	7 
	or h			;367f	b4 	. 
	scf			;3680	37 	7 
	jp nz,0cd37h		;3681	c2 37 cd 	. 7 . 
	scf			;3684	37 	7 
	exx			;3685	d9 	. 
	scf			;3686	37 	7 
	ld b,c			;3687	41 	A 
	ld h,b			;3688	60 	` 
	ld b,e			;3689	43 	C 
	ld b,b			;368a	40 	@ 
	ld b,(hl)			;368b	46 	F 
	ld b,b			;368c	40 	@ 
	ld c,h			;368d	4c 	L 
	ld b,b			;368e	40 	@ 
	ld e,b			;368f	58 	X 
	ld b,b			;3690	40 	@ 
	ld (hl),b			;3691	70 	p 
	ld b,b			;3692	40 	@ 
	ld hl,04058h		;3693	21 58 40 	! X @ 
	ld c,h			;3696	4c 	L 
	ld b,b			;3697	40 	@ 
	ld b,(hl)			;3698	46 	F 
	ld b,b			;3699	40 	@ 
	ld b,e			;369a	43 	C 
	ld b,b			;369b	40 	@ 
	ld b,c			;369c	41 	A 
	ld h,b			;369d	60 	` 
	ld b,c			;369e	41 	A 
	ld h,b			;369f	60 	` 
	ld b,b			;36a0	40 	@ 
	ld (hl),b			;36a1	70 	p 
	ld b,b			;36a2	40 	@ 
	ld e,b			;36a3	58 	X 
	ld b,b			;36a4	40 	@ 
	ld c,h			;36a5	4c 	L 
	ld b,b			;36a6	40 	@ 
	ld b,(hl)			;36a7	46 	F 
	ld b,b			;36a8	40 	@ 
	ld b,e			;36a9	43 	C 
	ld hl,04640h		;36aa	21 40 46 	! @ F 
	ld b,b			;36ad	40 	@ 
	ld c,h			;36ae	4c 	L 
	ld b,b			;36af	40 	@ 
	ld e,b			;36b0	58 	X 
	ld b,b			;36b1	40 	@ 
	ld (hl),b			;36b2	70 	p 
	ld b,c			;36b3	41 	A 
	ld h,b			;36b4	60 	` 
	ld b,b			;36b5	40 	@ 
	ld b,b			;36b6	40 	@ 
	inc h			;36b7	24 	$ 
	ld h,b			;36b8	60 	` 
	ld b,c			;36b9	41 	A 
	ld (hl),b			;36ba	70 	p 
	ld b,e			;36bb	43 	C 
	ld e,b			;36bc	58 	X 
	ld b,(hl)			;36bd	46 	F 
	ld c,h			;36be	4c 	L 
	ld c,h			;36bf	4c 	L 
	ld b,(hl)			;36c0	46 	F 
	ld e,b			;36c1	58 	X 
	ld b,e			;36c2	43 	C 
	ld (hl),b			;36c3	70 	p 
	ld b,c			;36c4	41 	A 
	ld h,b			;36c5	60 	` 
	ld b,c			;36c6	41 	A 
	ld h,b			;36c7	60 	` 
	ld b,e			;36c8	43 	C 
	ld (hl),b			;36c9	70 	p 
	ld b,(hl)			;36ca	46 	F 
	ld e,b			;36cb	58 	X 
	ld c,h			;36cc	4c 	L 
	ld c,h			;36cd	4c 	L 
	ld e,b			;36ce	58 	X 
	ld b,(hl)			;36cf	46 	F 
	ld (hl),b			;36d0	70 	p 
	ld b,e			;36d1	43 	C 
	ld h,b			;36d2	60 	` 
	ld b,c			;36d3	41 	A 
	jr nz,l3717h		;36d4	20 41 	  A 
	ld h,b			;36d6	60 	` 
	ld b,e			;36d7	43 	C 
	ld b,b			;36d8	40 	@ 
	ld b,(hl)			;36d9	46 	F 
	ld b,b			;36da	40 	@ 
	ld c,h			;36db	4c 	L 
	ld b,b			;36dc	40 	@ 
	ld e,b			;36dd	58 	X 
	ld b,b			;36de	40 	@ 
	ld (hl),b			;36df	70 	p 
	ld b,b			;36e0	40 	@ 
	ld h,b			;36e1	60 	` 
	ld b,b			;36e2	40 	@ 
	jr nz,l3726h		;36e3	20 41 	  A 
	ld h,b			;36e5	60 	` 
	ld b,b			;36e6	40 	@ 
	ld (hl),b			;36e7	70 	p 
	ld b,b			;36e8	40 	@ 
	ld e,b			;36e9	58 	X 
	ld b,b			;36ea	40 	@ 
	ld c,h			;36eb	4c 	L 
	ld b,b			;36ec	40 	@ 
	ld b,(hl)			;36ed	46 	F 
	ld b,b			;36ee	40 	@ 
	ld b,e			;36ef	43 	C 
	ld b,b			;36f0	40 	@ 
	ld b,c			;36f1	41 	A 
	jr nz,l3734h		;36f2	20 40 	  @ 
	ld b,b			;36f4	40 	@ 
	inc h			;36f5	24 	$ 
	ld h,b			;36f6	60 	` 
	ld b,b			;36f7	40 	@ 
	ld (hl),b			;36f8	70 	p 
	ld b,b			;36f9	40 	@ 
	ld e,b			;36fa	58 	X 
	ld b,b			;36fb	40 	@ 
	ld c,h			;36fc	4c 	L 
	ld b,b			;36fd	40 	@ 
	ld b,(hl)			;36fe	46 	F 
	ld b,b			;36ff	40 	@ 
	ld b,e			;3700	43 	C 
	ld b,b			;3701	40 	@ 
	ld b,c			;3702	41 	A 
	ld h,b			;3703	60 	` 
	ld b,b			;3704	40 	@ 
	ld b,b			;3705	40 	@ 
	inc h			;3706	24 	$ 
	ld b,b			;3707	40 	@ 
	ld b,c			;3708	41 	A 
	ld b,b			;3709	40 	@ 
	ld b,e			;370a	43 	C 
	ld b,b			;370b	40 	@ 
	ld b,(hl)			;370c	46 	F 
	ld b,b			;370d	40 	@ 
	ld c,h			;370e	4c 	L 
	ld b,b			;370f	40 	@ 
	ld e,b			;3710	58 	X 
	ld b,b			;3711	40 	@ 
	ld (hl),b			;3712	70 	p 
	ld b,c			;3713	41 	A 
	ld h,b			;3714	60 	` 
	ld b,c			;3715	41 	A 
	ld h,b			;3716	60 	` 
l3717h:
	ld b,c			;3717	41 	A 
	ld h,b			;3718	60 	` 
	ld (0232dh),hl		;3719	22 2d 23 	" - # 
	ld b,c			;371c	41 	A 
	ld h,b			;371d	60 	` 
	inc hl			;371e	23 	# 
	ld b,b			;371f	40 	@ 
	ld b,b			;3720	40 	@ 
	inc hl			;3721	23 	# 
	ld b,e			;3722	43 	C 
	ld (hl),b			;3723	70 	p 
	ld b,a			;3724	47 	G 
	ld a,b			;3725	78 	x 
l3726h:
	ld hl,07043h		;3726	21 43 70 	! C p 
	jr nz,l376bh		;3729	20 40 	  @ 
	ld b,b			;372b	40 	@ 
	ld hl,07847h		;372c	21 47 78 	! G x 
	ld e,a			;372f	5f 	_ 
	ld a,(hl)			;3730	7e 	~ 
	dec l			;3731	2d 	- 
	inc hl			;3732	23 	# 
	ld e,a			;3733	5f 	_ 
l3734h:
	ld a,(hl)			;3734	7e 	~ 
	ld b,a			;3735	47 	G 
	ld a,b			;3736	78 	x 
	jr nz,l3779h		;3737	20 40 	  @ 
	ld b,b			;3739	40 	@ 
	ld hl,07847h		;373a	21 47 78 	! G x 
	ld e,h			;373d	5c 	\ 
	ld c,(hl)			;373e	4e 	N 
	ld (hl),b			;373f	70 	p 
	ld b,e			;3740	43 	C 
	inc hl			;3741	23 	# 
	ld e,h			;3742	5c 	\ 
	ld c,(hl)			;3743	4e 	N 
	ld b,a			;3744	47 	G 
	ld a,b			;3745	78 	x 
	jr nz,67		;3746	20 41 	  A 
	ld h,b			;3748	60 	` 
	ld b,c			;3749	41 	A 
	ld h,b			;374a	60 	` 
	ld hl,(04040h)		;374b	2a 40 40 	* @ @ 
	inc h			;374e	24 	$ 
	dec l			;374f	2d 	- 
	ld hl,04020h		;3750	21 20 40 	!   @ 
	ld b,b			;3753	40 	@ 
	inc h			;3754	24 	$ 
	ld b,c			;3755	41 	A 
	ld a,a			;3756	7f 	 
	ld hl,06041h		;3757	21 41 60 	! A ` 
	inc h			;375a	24 	$ 
	ld b,b			;375b	40 	@ 
	ld b,b			;375c	40 	@ 
	inc h			;375d	24 	$ 
	ld a,a			;375e	7f 	 
	ld h,b			;375f	60 	` 
	ld hl,06041h		;3760	21 41 60 	! A ` 
	inc h			;3763	24 	$ 
	ld b,c			;3764	41 	A 
	ld h,b			;3765	60 	` 
	ld b,c			;3766	41 	A 
	ld h,b			;3767	60 	` 
	inc hl			;3768	23 	# 
	ld b,c			;3769	41 	A 
	ld a,a			;376a	7f 	 
l376bh:
	ld hl,04120h		;376b	21 20 41 	!   A 
	ld h,b			;376e	60 	` 
	ld b,c			;376f	41 	A 
	ld h,b			;3770	60 	` 
	inc hl			;3771	23 	# 
	ld a,a			;3772	7f 	 
	ld h,b			;3773	60 	` 
	ld hl,04120h		;3774	21 20 41 	!   A 
	ld h,b			;3777	60 	` 
	ld b,c			;3778	41 	A 
l3779h:
	ld h,b			;3779	60 	` 
	inc hl			;377a	23 	# 
	ld b,c			;377b	41 	A 
	ld a,a			;377c	7f 	 
	ld hl,06041h		;377d	21 41 60 	! A ` 
	inc h			;3780	24 	$ 
	ld b,c			;3781	41 	A 
	ld h,b			;3782	60 	` 
	ld b,c			;3783	41 	A 
	ld h,b			;3784	60 	` 
	inc hl			;3785	23 	# 
	ld a,a			;3786	7f 	 
	ld h,b			;3787	60 	` 
	ld hl,06041h		;3788	21 41 60 	! A ` 
	inc h			;378b	24 	$ 
	ld b,b			;378c	40 	@ 
	ld b,b			;378d	40 	@ 
	inc h			;378e	24 	$ 
	dec l			;378f	2d 	- 
	ld hl,06041h		;3790	21 41 60 	! A ` 
	inc h			;3793	24 	$ 
	ld b,c			;3794	41 	A 
	ld h,b			;3795	60 	` 
	ld b,c			;3796	41 	A 
	ld h,b			;3797	60 	` 
	inc hl			;3798	23 	# 
	dec l			;3799	2d 	- 
	ld hl,04120h		;379a	21 20 41 	!   A 
	ld h,b			;379d	60 	` 
	ld b,c			;379e	41 	A 
	ld h,b			;379f	60 	` 
	inc hl			;37a0	23 	# 
	dec l			;37a1	2d 	- 
	ld hl,06041h		;37a2	21 41 60 	! A ` 
	inc h			;37a5	24 	$ 
	ld b,b			;37a6	40 	@ 
	ld b,b			;37a7	40 	@ 
	ld (04840h),hl		;37a8	22 40 48 	" @ H 
	ld b,b			;37ab	40 	@ 
	ld c,h			;37ac	4c 	L 
	dec l			;37ad	2d 	- 
	ld hl,04c40h		;37ae	21 40 4c 	! @ L 
	ld b,b			;37b1	40 	@ 
	ld c,b			;37b2	48 	H 
	jr nz,66		;37b3	20 40 	  @ 
	ld b,b			;37b5	40 	@ 
	ld (04044h),hl		;37b6	22 44 40 	" D @ 
	ld c,h			;37b9	4c 	L 
	ld b,b			;37ba	40 	@ 
	dec l			;37bb	2d 	- 
	ld hl,0404ch		;37bc	21 4c 40 	! L @ 
	ld b,h			;37bf	44 	D 
	ld b,b			;37c0	40 	@ 
	jr nz,l3804h		;37c1	20 41 	  A 
	ld h,b			;37c3	60 	` 
	ld b,c			;37c4	41 	A 
	ld h,b			;37c5	60 	` 
	ld b,e			;37c6	43 	C 
	ld (hl),b			;37c7	70 	p 
	ld b,a			;37c8	47 	G 
	ld a,b			;37c9	78 	x 
	ld b,c			;37ca	41 	A 
	ld h,b			;37cb	60 	` 
	daa			;37cc	27 	' 
	ld b,c			;37cd	41 	A 
	ld h,b			;37ce	60 	` 
	ld b,c			;37cf	41 	A 
l37d0h:
	ld h,b			;37d0	60 	` 
	ld h,047h		;37d1	26 47 	& G 
	ld a,b			;37d3	78 	x 
	ld b,e			;37d4	43 	C 
	ld (hl),b			;37d5	70 	p 
	ld b,c			;37d6	41 	A 
	ld h,b			;37d7	60 	` 
	ld hl,04040h		;37d8	21 40 40 	! @ @ 
	inc l			;37db	2c 	, 
	ld e,a			;37dc	5f 	_ 
	ld a,(hl)			;37dd	7e 	~ 
	ld e,(hl)			;37de	5e 	^ 
	ld e,(hl)			;37df	5e 	^ 
	ld (04e5fh),hl		;37e0	22 5f 4e 	" _ N 
	ld d,e			;37e3	53 	S 
	ld h,(hl)			;37e4	66 	f 
	ld e,b			;37e5	58 	X 
	ld c,(hl)			;37e6	4e 	N 
	ld e,a			;37e7	5f 	_ 
	ld a,(hl)			;37e8	7e 	~ 
	jr nz,l37d0h		;37e9	20 e5 	  . 
	ld hl,l0000h		;37eb	21 00 00 	! . . 
	ld d,h			;37ee	54 	T 
	ld e,l			;37ef	5d 	] 
	call sub_3823h		;37f0	cd 23 38 	. # 8 
	ld a,c			;37f3	79 	y 
	call sub_3823h		;37f4	cd 23 38 	. # 8 
	pop bc			;37f7	c1 	. 
	ld a,c			;37f8	79 	y 
	ld c,b			;37f9	48 	H 
	call sub_3823h		;37fa	cd 23 38 	. # 8 
	ld a,c			;37fd	79 	y 
	call sub_3823h		;37fe	cd 23 38 	. # 8 
	call sub_3831h		;3801	cd 31 38 	. 1 8 
l3804h:
	call sub_3831h		;3804	cd 31 38 	. 1 8 
	ld (06f16h),hl		;3807	22 16 6f 	" . o 
	ld (06f14h),de		;380a	ed 53 14 6f 	. S . o 
	push bc			;380e	c5 	. 
	call sub_3838h		;380f	cd 38 38 	. 8 8 
	call sub_3838h		;3812	cd 38 38 	. 8 8 
	pop bc			;3815	c1 	. 
	bit 2,c		;3816	cb 51 	. Q 
	call nz,sub_3a44h		;3818	c4 44 3a 	. D : 
	bit 5,c		;381b	cb 69 	. i 
	call nz,sub_3a3bh		;381d	c4 3b 3a 	. ; : 
	ld b,h			;3820	44 	D 
	ld c,l			;3821	4d 	M 
	ret			;3822	c9 	. 
sub_3823h:
	call sub_3826h		;3823	cd 26 38 	. & 8 
sub_3826h:
	ld b,003h		;3826	06 03 	. . 
l3828h:
	rrca			;3828	0f 	. 
	rr d		;3829	cb 1a 	. . 
	rr e		;382b	cb 1b 	. . 
	djnz l3828h		;382d	10 f9 	. . 
	ex de,hl			;382f	eb 	. 
	ret			;3830	c9 	. 
sub_3831h:
	ld b,004h		;3831	06 04 	. . 
	xor a			;3833	af 	. 
	res 7,d		;3834	cb ba 	. . 
	jr l3828h		;3836	18 f0 	. . 
sub_3838h:
	ld b,h			;3838	44 	D 
	ld c,l			;3839	4d 	M 
	add hl,hl			;383a	29 	) 
	add hl,hl			;383b	29 	) 
	add hl,bc			;383c	09 	. 
	ld bc,00500h		;383d	01 00 05 	. . . 
l3840h:
	srl h		;3840	cb 3c 	. < 
	rr l		;3842	cb 1d 	. . 
	djnz l3840h		;3844	10 fa 	. . 
	adc hl,bc		;3846	ed 4a 	. J 
	ex de,hl			;3848	eb 	. 
	ret			;3849	c9 	. 
sub_384ah:
	push bc			;384a	c5 	. 
	push de			;384b	d5 	. 
	exx			;384c	d9 	. 
	push bc			;384d	c5 	. 
	push de			;384e	d5 	. 
	exx			;384f	d9 	. 
	push de			;3850	d5 	. 
	exx			;3851	d9 	. 
	pop hl			;3852	e1 	. 
	push bc			;3853	c5 	. 
	ld b,h			;3854	44 	D 
	ld c,l			;3855	4d 	M 
	exx			;3856	d9 	. 
	pop de			;3857	d1 	. 
	ld (06e82h),de		;3858	ed 53 82 6e 	. S . n 
	call sub_3902h		;385c	cd 02 39 	. . 9 
	ld (06ea6h),hl		;385f	22 a6 6e 	" . n 
	ld (06eaah),bc		;3862	ed 43 aa 6e 	. C . n 
	exx			;3866	d9 	. 
	ld (06e84h),de		;3867	ed 53 84 6e 	. S . n 
	call sub_3902h		;386b	cd 02 39 	. . 9 
	ld (06ea8h),hl		;386e	22 a8 6e 	" . n 
	ld hl,(06eaah)		;3871	2a aa 6e 	* . n 
	or a			;3874	b7 	. 
	sbc hl,bc		;3875	ed 42 	. B 
	jr nc,l387dh		;3877	30 04 	0 . 
	ld (06eaah),bc		;3879	ed 43 aa 6e 	. C . n 
l387dh:
	ld ix,(06eaah)		;387d	dd 2a aa 6e 	. * . n 
	push ix		;3881	dd e5 	. . 
	pop de			;3883	d1 	. 
	sra d		;3884	cb 2a 	. * 
	rr e		;3886	cb 1b 	. . 
	push de			;3888	d5 	. 
	ld hl,(06ea8h)		;3889	2a a8 6e 	* . n 
	call sub_38bfh		;388c	cd bf 38 	. . 8 
	exx			;388f	d9 	. 
	pop de			;3890	d1 	. 
	ld hl,(06ea6h)		;3891	2a a6 6e 	* . n 
	call sub_38bfh		;3894	cd bf 38 	. . 8 
	exx			;3897	d9 	. 
	inc ix		;3898	dd 23 	. # 
l389ah:
	push bc			;389a	c5 	. 
	push de			;389b	d5 	. 
	call sub_39fdh		;389c	cd fd 39 	. . 9 
	call sub_3971h		;389f	cd 71 39 	. q 9 
	pop de			;38a2	d1 	. 
	pop bc			;38a3	c1 	. 
	dec ix		;38a4	dd 2b 	. + 
	push ix		;38a6	dd e5 	. . 
	pop hl			;38a8	e1 	. 
	ld a,h			;38a9	7c 	| 
	or l			;38aa	b5 	. 
	jp nz,l38cah		;38ab	c2 ca 38 	. . 8 
	exx			;38ae	d9 	. 
	pop de			;38af	d1 	. 
	pop bc			;38b0	c1 	. 
	exx			;38b1	d9 	. 
	pop de			;38b2	d1 	. 
	pop bc			;38b3	c1 	. 
	call sub_3a1ch		;38b4	cd 1c 3a 	. . : 
	bit 2,(iy+001h)		;38b7	fd cb 01 56 	. . . V 
	call nz,05391h		;38bb	c4 91 53 	. . S 
	ret			;38be	c9 	. 
sub_38bfh:
	bit 7,h		;38bf	cb 7c 	. | 
	ret z			;38c1	c8 	. 
	ld a,(06eaah)		;38c2	3a aa 6e 	: . n 
	bit 0,a		;38c5	cb 47 	. G 
	ret nz			;38c7	c0 	. 
	dec de			;38c8	1b 	. 
	ret			;38c9	c9 	. 
l38cah:
	exx			;38ca	d9 	. 
	call sub_38f2h		;38cb	cd f2 38 	. . 8 
	jr c,l38ddh		;38ce	38 0d 	8 . 
	push de			;38d0	d5 	. 
	ld hl,(06e82h)		;38d1	2a 82 6e 	* . n 
	ld de,(06ea6h)		;38d4	ed 5b a6 6e 	. [ . n 
	add hl,de			;38d8	19 	. 
	ld (06e82h),hl		;38d9	22 82 6e 	" . n 
	pop de			;38dc	d1 	. 
l38ddh:
	exx			;38dd	d9 	. 
	call sub_38f2h		;38de	cd f2 38 	. . 8 
	jr c,l389ah		;38e1	38 b7 	8 . 
	push de			;38e3	d5 	. 
	ld hl,(06e84h)		;38e4	2a 84 6e 	* . n 
	ld de,(06ea8h)		;38e7	ed 5b a8 6e 	. [ . n 
	add hl,de			;38eb	19 	. 
	ld (06e84h),hl		;38ec	22 84 6e 	" . n 
	pop de			;38ef	d1 	. 
	jr l389ah		;38f0	18 a8 	. . 
sub_38f2h:
	ld h,b			;38f2	60 	` 
	ld l,c			;38f3	69 	i 
	add hl,de			;38f4	19 	. 
	ex de,hl			;38f5	eb 	. 
	push de			;38f6	d5 	. 
	ld hl,(06eaah)		;38f7	2a aa 6e 	* . n 
	ex de,hl			;38fa	eb 	. 
	xor a			;38fb	af 	. 
	sbc hl,de		;38fc	ed 52 	. R 
	pop de			;38fe	d1 	. 
	ret c			;38ff	d8 	. 
	ex de,hl			;3900	eb 	. 
	ret			;3901	c9 	. 
sub_3902h:
	call sub_39efh		;3902	cd ef 39 	. . 9 
	jr c,l3911h		;3905	38 0a 	8 . 
	ld hl,l0000h+1		;3907	21 01 00 	! . . 
	ld a,c			;390a	79 	y 
	sub e			;390b	93 	. 
	ld c,a			;390c	4f 	O 
	ld a,b			;390d	78 	x 
	sbc a,d			;390e	9a 	. 
	ld b,a			;390f	47 	G 
	ret			;3910	c9 	. 
l3911h:
	ld hl,0ffffh		;3911	21 ff ff 	! . . 
	ld a,e			;3914	7b 	{ 
	sub c			;3915	91 	. 
	ld c,a			;3916	4f 	O 
	ld a,d			;3917	7a 	z 
	sbc a,b			;3918	98 	. 
	ld b,a			;3919	47 	G 
	ret			;391a	c9 	. 
l391bh:
	ld hl,(06f0bh)		;391b	2a 0b 6f 	* . o 
	jp (hl)			;391e	e9 	. 
	call sub_3c7dh		;391f	cd 7d 3c 	. } < 
	ret c			;3922	d8 	. 
	ld a,d			;3923	7a 	z 
	sub 010h		;3924	d6 10 	. . 
	ret nz			;3926	c0 	. 
	ld a,b			;3927	78 	x 
	sub 010h		;3928	d6 10 	. . 
	ld b,a			;392a	47 	G 
	ld hl,(06d78h)		;392b	2a 78 6d 	* x m 
l392eh:
	jp (hl)			;392e	e9 	. 
l392fh:
	ld hl,l013fh		;392f	21 3f 01 	! ? . 
l3932h:
	xor a			;3932	af 	. 
	sbc hl,bc		;3933	ed 42 	. B 
	ret c			;3935	d8 	. 
	ld hl,l0008h		;3936	21 08 00 	! . . 
	add hl,bc			;3939	09 	. 
	ld b,h			;393a	44 	D 
	ld c,l			;393b	4d 	M 
	ld a,0efh		;393c	3e ef 	> . 
	sub e			;393e	93 	. 
	ret c			;393f	d8 	. 
	add a,010h		;3940	c6 10 	. . 
	ld l,a			;3942	6f 	o 
	bit 0,c		;3943	cb 41 	. A 
	ld d,00fh		;3945	16 0f 	. . 
	ld e,0f0h		;3947	1e f0 	. . 
	jr nz,l394eh		;3949	20 03 	  . 
	ld a,e			;394b	7b 	{ 
	ld e,d			;394c	5a 	Z 
	ld d,a			;394d	57 	W 
l394eh:
	ld a,09ah		;394e	3e 9a 	> . 
	dec b			;3950	05 	. 
	jr nz,l3955h		;3951	20 02 	  . 
	ld a,092h		;3953	3e 92 	> . 
l3955h:
	di			;3955	f3 	. 
	out (0c0h),a		;3956	d3 c0 	. . 
	ld a,c			;3958	79 	y 
	rrca			;3959	0f 	. 
	or 080h		;395a	f6 80 	. . 
	ld h,a			;395c	67 	g 
	ld a,(hl)			;395d	7e 	~ 
	ld b,a			;395e	47 	G 
	and d			;395f	a2 	. 
	ld c,a			;3960	4f 	O 
	ld a,(06ea5h)		;3961	3a a5 6e 	: . n 
	and e			;3964	a3 	. 
	or c			;3965	b1 	. 
	cp b			;3966	b8 	. 
	jr z,l396ah		;3967	28 01 	( . 
	ld (hl),a			;3969	77 	w 
l396ah:
	ld a,(06da1h)		;396a	3a a1 6d 	: . m 
	out (0c0h),a		;396d	d3 c0 	. . 
	ei			;396f	fb 	. 
	ret			;3970	c9 	. 
sub_3971h:
	ld h,(iy+001h)		;3971	fd 66 01 	. f . 
	bit 2,h		;3974	cb 54 	. T 
	jp nz,05357h		;3976	c2 57 53 	. W S 
	bit 7,h		;3979	cb 7c 	. | 
	jp nz,l391bh		;397b	c2 1b 39 	. . 9 
	ld hl,06f31h		;397e	21 31 6f 	! 1 o 
	call sub_39e2h		;3981	cd e2 39 	. . 9 
	ret z			;3984	c8 	. 
	ld hl,06f33h		;3985	21 33 6f 	! 3 o 
	call sub_39e2h		;3988	cd e2 39 	. . 9 
	ret z			;398b	c8 	. 
	ld hl,(06f31h)		;398c	2a 31 6f 	* 1 o 
	ld (06f33h),hl		;398f	22 33 6f 	" 3 o 
	ld h,e			;3992	63 	c 
	ld l,c			;3993	69 	i 
	ld (06f31h),hl		;3994	22 31 6f 	" 1 o 
	ld a,(06e9ch)		;3997	3a 9c 6e 	: . n 
	or a			;399a	b7 	. 
	jp z,05730h		;399b	ca 30 57 	. 0 W 
	push bc			;399e	c5 	. 
	ld b,a			;399f	47 	G 
	ld a,(06efbh)		;39a0	3a fb 6e 	: . n 
	bit 0,b		;39a3	cb 40 	. @ 
	jr z,l39bdh		;39a5	28 16 	( . 
	or a			;39a7	b7 	. 
	jr z,l39c3h		;39a8	28 19 	( . 
	ld b,a			;39aa	47 	G 
	ld a,(06efdh)		;39ab	3a fd 6e 	: . n 
	inc a			;39ae	3c 	< 
	inc a			;39af	3c 	< 
	cp b			;39b0	b8 	. 
	pop bc			;39b1	c1 	. 
	call nc,05730h		;39b2	d4 30 57 	. 0 W 
l39b5h:
	ld a,(06efbh)		;39b5	3a fb 6e 	: . n 
	dec a			;39b8	3d 	= 
	ld (06efbh),a		;39b9	32 fb 6e 	2 . n 
	ret			;39bc	c9 	. 
l39bdh:
	or a			;39bd	b7 	. 
	jr z,l39c3h		;39be	28 03 	( . 
	pop bc			;39c0	c1 	. 
	jr l39b5h		;39c1	18 f2 	. . 
l39c3h:
	ld a,(06ebch)		;39c3	3a bc 6e 	: . n 
	cp 003h		;39c6	fe 03 	. . 
	jr nz,l39d1h		;39c8	20 07 	  . 
	ld a,b			;39ca	78 	x 
	xor 003h		;39cb	ee 03 	. . 
	ld b,a			;39cd	47 	G 
	ld (06e9ch),a		;39ce	32 9c 6e 	2 . n 
l39d1h:
	ld a,(06efah)		;39d1	3a fa 6e 	: . n 
	bit 0,b		;39d4	cb 40 	. @ 
	jr nz,l39dbh		;39d6	20 03 	  . 
	ld a,(06ef9h)		;39d8	3a f9 6e 	: . n 
l39dbh:
	ld (06efbh),a		;39db	32 fb 6e 	2 . n 
	pop bc			;39de	c1 	. 
	jp 05730h		;39df	c3 30 57 	. 0 W 
sub_39e2h:
	ld a,c			;39e2	79 	y 
	cp (hl)			;39e3	be 	. 
	ret nz			;39e4	c0 	. 
	inc hl			;39e5	23 	# 
	ld a,e			;39e6	7b 	{ 
	cp (hl)			;39e7	be 	. 
	ret			;39e8	c9 	. 
	ld a,h			;39e9	7c 	| 
	cp d			;39ea	ba 	. 
	ret nz			;39eb	c0 	. 
	ld a,l			;39ec	7d 	} 
	cp e			;39ed	bb 	. 
	ret			;39ee	c9 	. 
sub_39efh:
	ld a,b			;39ef	78 	x 
	cp d			;39f0	ba 	. 
	ret nz			;39f1	c0 	. 
	ld a,c			;39f2	79 	y 
	cp e			;39f3	bb 	. 
	ret			;39f4	c9 	. 
sub_39f5h:
	push hl			;39f5	e5 	. 
	xor a			;39f6	af 	. 
	sbc hl,de		;39f7	ed 52 	. R 
	pop hl			;39f9	e1 	. 
	ret nc			;39fa	d0 	. 
	ex de,hl			;39fb	eb 	. 
	ret			;39fc	c9 	. 
sub_39fdh:
	push hl			;39fd	e5 	. 
	ld hl,06e82h		;39fe	21 82 6e 	! . n 
	jr l3a13h		;3a01	18 10 	. . 
	push hl			;3a03	e5 	. 
	ld hl,06e86h		;3a04	21 86 6e 	! . n 
	jr l3a13h		;3a07	18 0a 	. . 
	push hl			;3a09	e5 	. 
	ld hl,06e8eh		;3a0a	21 8e 6e 	! . n 
	jr l3a13h		;3a0d	18 04 	. . 
	push hl			;3a0f	e5 	. 
	ld hl,06e92h		;3a10	21 92 6e 	! . n 
l3a13h:
	ld c,(hl)			;3a13	4e 	N 
	inc hl			;3a14	23 	# 
	ld b,(hl)			;3a15	46 	F 
	inc hl			;3a16	23 	# 
	ld e,(hl)			;3a17	5e 	^ 
	inc hl			;3a18	23 	# 
	ld d,(hl)			;3a19	56 	V 
	pop hl			;3a1a	e1 	. 
	ret			;3a1b	c9 	. 
sub_3a1ch:
	push hl			;3a1c	e5 	. 
	ld hl,06e82h		;3a1d	21 82 6e 	! . n 
	jr l3a32h		;3a20	18 10 	. . 
	push hl			;3a22	e5 	. 
	ld hl,06e86h		;3a23	21 86 6e 	! . n 
	jr l3a32h		;3a26	18 0a 	. . 
	push hl			;3a28	e5 	. 
	ld hl,06e8eh		;3a29	21 8e 6e 	! . n 
	jr l3a32h		;3a2c	18 04 	. . 
	push hl			;3a2e	e5 	. 
	ld hl,06e92h		;3a2f	21 92 6e 	! . n 
l3a32h:
	ld (hl),c			;3a32	71 	q 
	inc hl			;3a33	23 	# 
l3a34h:
	ld (hl),b			;3a34	70 	p 
	inc hl			;3a35	23 	# 
	ld (hl),e			;3a36	73 	s 
	inc hl			;3a37	23 	# 
	ld (hl),d			;3a38	72 	r 
	pop hl			;3a39	e1 	. 
	ret			;3a3a	c9 	. 
sub_3a3bh:
	push af			;3a3b	f5 	. 
	xor a			;3a3c	af 	. 
	sub l			;3a3d	95 	. 
	ld l,a			;3a3e	6f 	o 
	sbc a,a			;3a3f	9f 	. 
	sub h			;3a40	94 	. 
	ld h,a			;3a41	67 	g 
	pop af			;3a42	f1 	. 
	ret			;3a43	c9 	. 
sub_3a44h:
	push hl			;3a44	e5 	. 
	ex de,hl			;3a45	eb 	. 
	call sub_3a3bh		;3a46	cd 3b 3a 	. ; : 
	ex de,hl			;3a49	eb 	. 
	pop hl			;3a4a	e1 	. 
	ret			;3a4b	c9 	. 
	push af			;3a4c	f5 	. 
	xor a			;3a4d	af 	. 
	sub c			;3a4e	91 	. 
	ld c,a			;3a4f	4f 	O 
	sbc a,a			;3a50	9f 	. 
	sub b			;3a51	90 	. 
	ld b,a			;3a52	47 	G 
	pop af			;3a53	f1 	. 
	ret			;3a54	c9 	. 
	call l06a6h		;3a55	cd a6 06 	. . . 
	exx			;3a58	d9 	. 
	ld hl,0840fh		;3a59	21 0f 84 	! . . 
	ld c,000h		;3a5c	0e 00 	. . 
	exx			;3a5e	d9 	. 
	ld hl,07802h		;3a5f	21 02 78 	! . x 
	ld c,028h		;3a62	0e 28 	. ( 
l3a64h:
	ld b,018h		;3a64	06 18 	. . 
l3a66h:
	bit 7,(hl)		;3a66	cb 7e 	. ~ 
	jr z,l3a86h		;3a68	28 1c 	( . 
	ld d,h			;3a6a	54 	T 
	ld a,h			;3a6b	7c 	| 
	sub 008h		;3a6c	d6 08 	. . 
	ld h,a			;3a6e	67 	g 
	bit 5,(hl)		;3a6f	cb 6e 	. n 
	ld h,d			;3a71	62 	b 
	jr nz,l3a86h		;3a72	20 12 	  . 
	exx			;3a74	d9 	. 
	ld d,h			;3a75	54 	T 
	ld e,l			;3a76	5d 	] 
	ld a,004h		;3a77	3e 04 	> . 
l3a79h:
	ld b,00ah		;3a79	06 0a 	. . 
l3a7bh:
	inc hl			;3a7b	23 	# 
	ld (hl),c			;3a7c	71 	q 
	djnz l3a7bh		;3a7d	10 fc 	. . 
	ld l,e			;3a7f	6b 	k 
	inc h			;3a80	24 	$ 
	dec a			;3a81	3d 	= 
	jr nz,l3a79h		;3a82	20 f5 	  . 
	ld h,d			;3a84	62 	b 
	exx			;3a85	d9 	. 
l3a86h:
	exx			;3a86	d9 	. 
	ld a,l			;3a87	7d 	} 
	add a,00ah		;3a88	c6 0a 	. . 
	ld l,a			;3a8a	6f 	o 
	exx			;3a8b	d9 	. 
	inc l			;3a8c	2c 	, 
	djnz l3a66h		;3a8d	10 d7 	. . 
	ld de,l0008h		;3a8f	11 08 00 	. . . 
	add hl,de			;3a92	19 	. 
	exx			;3a93	d9 	. 
	ld l,00fh		;3a94	2e 0f 	. . 
	ld a,h			;3a96	7c 	| 
	add a,004h		;3a97	c6 04 	. . 
	ld h,a			;3a99	67 	g 
	jr nz,l3aa1h		;3a9a	20 05 	  . 
	set 7,h		;3a9c	cb fc 	. . 
	call sub_06aah		;3a9e	cd aa 06 	. . . 
l3aa1h:
	exx			;3aa1	d9 	. 
	dec c			;3aa2	0d 	. 
	jr nz,l3a64h		;3aa3	20 bf 	  . 
	ret			;3aa5	c9 	. 
sub_3aa6h:
	ex de,hl			;3aa6	eb 	. 
	xor a			;3aa7	af 	. 
	sbc hl,bc		;3aa8	ed 42 	. B 
	inc hl			;3aaa	23 	# 
	ld a,l			;3aab	7d 	} 
	srl a		;3aac	cb 3f 	. ? 
	ret z			;3aae	c8 	. 
	ex af,af'			;3aaf	08 	. 
	ld hl,06f07h		;3ab0	21 07 6f 	! . o 
	ld a,0efh		;3ab3	3e ef 	> . 
	sub (hl)			;3ab5	96 	. 
	ret c			;3ab6	d8 	. 
	add a,010h		;3ab7	c6 10 	. . 
	ld l,a			;3ab9	6f 	o 
	ld a,b			;3aba	78 	x 
	sub 011h		;3abb	d6 11 	. . 
	call nz,l06a6h		;3abd	c4 a6 06 	. . . 
	ld a,c			;3ac0	79 	y 
	rrca			;3ac1	0f 	. 
	or 080h		;3ac2	f6 80 	. . 
	ld h,a			;3ac4	67 	g 
	ex af,af'			;3ac5	08 	. 
	ld b,a			;3ac6	47 	G 
	ld a,(06ea5h)		;3ac7	3a a5 6e 	: . n 
	ld c,a			;3aca	4f 	O 
	jp (ix)		;3acb	dd e9 	. . 
l3acdh:
	srl b		;3acd	cb 38 	. 8 
	jr nc,l3ad7h		;3acf	30 06 	0 . 
	ld (hl),c			;3ad1	71 	q 
	ex af,af'			;3ad2	08 	. 
	inc h			;3ad3	24 	$ 
	ex af,af'			;3ad4	08 	. 
	jr z,l3ae7h		;3ad5	28 10 	( . 
l3ad7h:
	srl b		;3ad7	cb 38 	. 8 
	inc b			;3ad9	04 	. 
	jr c,l3ae1h		;3ada	38 05 	8 . 
	dec b			;3adc	05 	. 
l3addh:
	ld (hl),c			;3add	71 	q 
	inc h			;3ade	24 	$ 
	ld (hl),c			;3adf	71 	q 
	inc h			;3ae0	24 	$ 
l3ae1h:
	ld (hl),c			;3ae1	71 	q 
	inc h			;3ae2	24 	$ 
	ld (hl),c			;3ae3	71 	q 
	inc h			;3ae4	24 	$ 
	djnz l3addh		;3ae5	10 f6 	. . 
l3ae7h:
	jp sub_06aah		;3ae7	c3 aa 06 	. . . 
l3aeah:
	jr z,l3ae7h		;3aea	28 fb 	( . 
	ld a,c			;3aec	79 	y 
	and 00fh		;3aed	e6 0f 	. . 
	ld c,a			;3aef	4f 	O 
	bit 0,h		;3af0	cb 44 	. D 
	jr z,l3afbh		;3af2	28 07 	( . 
	inc h			;3af4	24 	$ 
	srl b		;3af5	cb 38 	. 8 
	jr z,l3ae7h		;3af7	28 ee 	( . 
	jr l3afeh		;3af9	18 03 	. . 
l3afbh:
	inc b			;3afb	04 	. 
	srl b		;3afc	cb 38 	. 8 
l3afeh:
	ld a,(hl)			;3afe	7e 	~ 
	and 0f0h		;3aff	e6 f0 	. . 
	or c			;3b01	b1 	. 
	ld (hl),a			;3b02	77 	w 
	inc h			;3b03	24 	$ 
	inc h			;3b04	24 	$ 
	djnz l3afeh		;3b05	10 f7 	. . 
	jr l3ae7h		;3b07	18 de 	. . 
l3b09h:
	push hl			;3b09	e5 	. 
	exx			;3b0a	d9 	. 
	pop af			;3b0b	f1 	. 
	push hl			;3b0c	e5 	. 
	push bc			;3b0d	c5 	. 
	push de			;3b0e	d5 	. 
	ld c,a			;3b0f	4f 	O 
	ld a,(06f07h)		;3b10	3a 07 6f 	: . o 
	ld b,a			;3b13	47 	G 
	ld a,(06ea5h)		;3b14	3a a5 6e 	: . n 
	ld e,0f0h		;3b17	1e f0 	. . 
	ld l,00fh		;3b19	2e 0f 	. . 
	ld d,a			;3b1b	57 	W 
	and e			;3b1c	a3 	. 
	ld h,a			;3b1d	67 	g 
	ld a,d			;3b1e	7a 	z 
	and l			;3b1f	a5 	. 
	ld d,a			;3b20	57 	W 
	ld a,(06ebfh)		;3b21	3a bf 6e 	: . n 
	cp 003h		;3b24	fe 03 	. . 
	ld a,b			;3b26	78 	x 
	jr nz,l3b2ch		;3b27	20 03 	  . 
	dec a			;3b29	3d 	= 
	xor 003h		;3b2a	ee 03 	. . 
l3b2ch:
	bit 0,a		;3b2c	cb 47 	. G 
	jr z,l3b31h		;3b2e	28 01 	( . 
	ex de,hl			;3b30	eb 	. 
l3b31h:
	add a,c			;3b31	81 	. 
	add a,c			;3b32	81 	. 
	ld hl,000ffh		;3b33	21 ff 00 	! . . 
	bit 0,a		;3b36	cb 47 	. G 
	jr z,l3b45h		;3b38	28 0b 	( . 
	ex af,af'			;3b3a	08 	. 
	ld a,(06ebfh)		;3b3b	3a bf 6e 	: . n 
	cp 005h		;3b3e	fe 05 	. . 
	jr nz,l3b44h		;3b40	20 02 	  . 
	ld h,d			;3b42	62 	b 
	ld l,e			;3b43	6b 	k 
l3b44h:
	ex af,af'			;3b44	08 	. 
l3b45h:
	bit 1,a		;3b45	cb 4f 	. O 
	jr z,l3b4ah		;3b47	28 01 	( . 
	ex de,hl			;3b49	eb 	. 
l3b4ah:
	exx			;3b4a	d9 	. 
l3b4bh:
	ld a,(hl)			;3b4b	7e 	~ 
	exx			;3b4c	d9 	. 
	and e			;3b4d	a3 	. 
	or d			;3b4e	b2 	. 
	ex de,hl			;3b4f	eb 	. 
	exx			;3b50	d9 	. 
	ld (hl),a			;3b51	77 	w 
	inc h			;3b52	24 	$ 
	djnz l3b4bh		;3b53	10 f6 	. . 
	exx			;3b55	d9 	. 
	pop de			;3b56	d1 	. 
	pop bc			;3b57	c1 	. 
	pop hl			;3b58	e1 	. 
	exx			;3b59	d9 	. 
	jr l3ae7h		;3b5a	18 8b 	. . 
	call 05893h		;3b5c	cd 93 58 	. . X 
l3b5fh:
	call sub_3a1ch		;3b5f	cd 1c 3a 	. . : 
	call 05841h		;3b62	cd 41 58 	. A X 
	call sub_3b6dh		;3b65	cd 6d 3b 	. m ; 
	call 05841h		;3b68	cd 41 58 	. A X 
	jr l3b5fh		;3b6b	18 f2 	. . 
sub_3b6dh:
	call 05683h		;3b6d	cd 83 56 	. . V 
	call sub_3b76h		;3b70	cd 76 3b 	. v ; 
	jp 05722h		;3b73	c3 22 57 	. " W 
sub_3b76h:
	ld a,(06ebeh)		;3b76	3a be 6e 	: . n 
	inc a			;3b79	3c 	< 
	bit 1,a		;3b7a	cb 4f 	. O 
	jr z,l3bc1h		;3b7c	28 43 	( C 
	push bc			;3b7e	c5 	. 
	ld hl,(06e84h)		;3b7f	2a 84 6e 	* . n 
	call sub_39f5h		;3b82	cd f5 39 	. . 9 
	push hl			;3b85	e5 	. 
	ld hl,(06ef1h)		;3b86	2a f1 6e 	* . n 
	call sub_39f5h		;3b89	cd f5 39 	. . 9 
	ld (06f07h),hl		;3b8c	22 07 6f 	" . o 
	pop de			;3b8f	d1 	. 
	push hl			;3b90	e5 	. 
	ld hl,(06ef5h)		;3b91	2a f5 6e 	* . n 
	call sub_39f5h		;3b94	cd f5 39 	. . 9 
	inc de			;3b97	13 	. 
	pop hl			;3b98	e1 	. 
	ex de,hl			;3b99	eb 	. 
	xor a			;3b9a	af 	. 
	sbc hl,de		;3b9b	ed 52 	. R 
	jr c,l3bbch		;3b9d	38 1d 	8 . 
	push hl			;3b9f	e5 	. 
	ld d,b			;3ba0	50 	P 
	ld e,c			;3ba1	59 	Y 
	ld hl,(06e82h)		;3ba2	2a 82 6e 	* . n 
	call sub_39f5h		;3ba5	cd f5 39 	. . 9 
	ex de,hl			;3ba8	eb 	. 
	ld b,h			;3ba9	44 	D 
	ld c,l			;3baa	4d 	M 
	pop hl			;3bab	e1 	. 
l3bach:
	push bc			;3bac	c5 	. 
	push de			;3bad	d5 	. 
	call sub_3be4h		;3bae	cd e4 3b 	. . ; 
	pop de			;3bb1	d1 	. 
	pop bc			;3bb2	c1 	. 
	exx			;3bb3	d9 	. 
	ld hl,06f07h		;3bb4	21 07 6f 	! . o 
	inc (hl)			;3bb7	34 	4 
	exx			;3bb8	d9 	. 
	dec l			;3bb9	2d 	- 
	jr nz,l3bach		;3bba	20 f0 	  . 
l3bbch:
	pop hl			;3bbc	e1 	. 
	ld (06e82h),hl		;3bbd	22 82 6e 	" . n 
	ret			;3bc0	c9 	. 
l3bc1h:
	push bc			;3bc1	c5 	. 
	push de			;3bc2	d5 	. 
	push bc			;3bc3	c5 	. 
	exx			;3bc4	d9 	. 
	call sub_39fdh		;3bc5	cd fd 39 	. . 9 
	ld h,b			;3bc8	60 	` 
	ld l,c			;3bc9	69 	i 
	pop bc			;3bca	c1 	. 
	push hl			;3bcb	e5 	. 
	call sub_384ah		;3bcc	cd 4a 38 	. J 8 
	push de			;3bcf	d5 	. 
	exx			;3bd0	d9 	. 
	pop de			;3bd1	d1 	. 
	pop bc			;3bd2	c1 	. 
	call sub_384ah		;3bd3	cd 4a 38 	. J 8 
	push bc			;3bd6	c5 	. 
	exx			;3bd7	d9 	. 
	pop bc			;3bd8	c1 	. 
	pop de			;3bd9	d1 	. 
	call sub_384ah		;3bda	cd 4a 38 	. J 8 
	push de			;3bdd	d5 	. 
	exx			;3bde	d9 	. 
	pop de			;3bdf	d1 	. 
	pop bc			;3be0	c1 	. 
	jp sub_384ah		;3be1	c3 4a 38 	. J 8 
sub_3be4h:
	ld a,(06ebeh)		;3be4	3a be 6e 	: . n 
	ld ix,l3acdh		;3be7	dd 21 cd 3a 	. ! . : 
	dec a			;3beb	3d 	= 
	jr z,l3c15h		;3bec	28 27 	( ' 
	ld a,(06ebfh)		;3bee	3a bf 6e 	: . n 
	or a			;3bf1	b7 	. 
	jr z,l3c0bh		;3bf2	28 17 	( . 
	cp 001h		;3bf4	fe 01 	. . 
	jr nz,l3c00h		;3bf6	20 08 	  . 
	ld a,(06f07h)		;3bf8	3a 07 6f 	: . o 
	and 003h		;3bfb	e6 03 	. . 
	jr z,l3c15h		;3bfd	28 16 	( . 
	ret			;3bff	c9 	. 
l3c00h:
	cp 004h		;3c00	fe 04 	. . 
	jr nz,l3c11h		;3c02	20 0d 	  . 
	ld a,(06f07h)		;3c04	3a 07 6f 	: . o 
	and 003h		;3c07	e6 03 	. . 
	jr z,l3c15h		;3c09	28 0a 	( . 
l3c0bh:
	ld ix,l3aeah		;3c0b	dd 21 ea 3a 	. ! . : 
	jr l3c15h		;3c0f	18 04 	. . 
l3c11h:
	ld ix,l3b09h		;3c11	dd 21 09 3b 	. ! . ; 
l3c15h:
	push hl			;3c15	e5 	. 
	push de			;3c16	d5 	. 
	push bc			;3c17	c5 	. 
	ld hl,(06eefh)		;3c18	2a ef 6e 	* . n 
	dec hl			;3c1b	2b 	+ 
	xor a			;3c1c	af 	. 
	sbc hl,bc		;3c1d	ed 42 	. B 
	jr c,l3c25h		;3c1f	38 04 	8 . 
	ld bc,(06eefh)		;3c21	ed 4b ef 6e 	. K . n 
l3c25h:
	ld hl,(06ef3h)		;3c25	2a f3 6e 	* . n 
	xor a			;3c28	af 	. 
	sbc hl,de		;3c29	ed 52 	. R 
	jr nc,l3c31h		;3c2b	30 04 	0 . 
	ld de,(06ef3h)		;3c2d	ed 5b f3 6e 	. [ . n 
l3c31h:
	ld h,d			;3c31	62 	b 
	ld l,e			;3c32	6b 	k 
	xor a			;3c33	af 	. 
	sbc hl,bc		;3c34	ed 42 	. B 
	jr c,l3c68h		;3c36	38 30 	8 0 
	bit 0,c		;3c38	cb 41 	. A 
	jr z,l3c40h		;3c3a	28 04 	( . 
	call sub_3c6ch		;3c3c	cd 6c 3c 	. l < 
	inc bc			;3c3f	03 	. 
l3c40h:
	bit 0,e		;3c40	cb 43 	. C 
	jr nz,l3c4ch		;3c42	20 08 	  . 
	push bc			;3c44	c5 	. 
	ld b,d			;3c45	42 	B 
	ld c,e			;3c46	4b 	K 
	call sub_3c6ch		;3c47	cd 6c 3c 	. l < 
	pop bc			;3c4a	c1 	. 
	dec de			;3c4b	1b 	. 
l3c4ch:
	ld hl,l0008h		;3c4c	21 08 00 	! . . 
	push hl			;3c4f	e5 	. 
	add hl,de			;3c50	19 	. 
	ex de,hl			;3c51	eb 	. 
	pop hl			;3c52	e1 	. 
	add hl,bc			;3c53	09 	. 
	ld b,h			;3c54	44 	D 
	ld c,l			;3c55	4d 	M 
	ld a,b			;3c56	78 	x 
	cp d			;3c57	ba 	. 
	jr z,l3c65h		;3c58	28 0b 	( . 
	push de			;3c5a	d5 	. 
	ld de,010ffh		;3c5b	11 ff 10 	. . . 
	call sub_3aa6h		;3c5e	cd a6 3a 	. . : 
	pop de			;3c61	d1 	. 
	ld bc,01100h		;3c62	01 00 11 	. . . 
l3c65h:
	call sub_3aa6h		;3c65	cd a6 3a 	. . : 
l3c68h:
	pop bc			;3c68	c1 	. 
	pop de			;3c69	d1 	. 
	pop hl			;3c6a	e1 	. 
	ret			;3c6b	c9 	. 
sub_3c6ch:
	push bc			;3c6c	c5 	. 
	push de			;3c6d	d5 	. 
	ld de,(06f07h)		;3c6e	ed 5b 07 6f 	. [ . o 
	call 05357h		;3c72	cd 57 53 	. W S 
	pop de			;3c75	d1 	. 
	pop bc			;3c76	c1 	. 
	ret			;3c77	c9 	. 
	ld a,(06ebeh)		;3c78	3a be 6e 	: . n 
	or a			;3c7b	b7 	. 
	ret z			;3c7c	c8 	. 
sub_3c7dh:
	push hl			;3c7d	e5 	. 
	ld hl,(06ef3h)		;3c7e	2a f3 6e 	* . n 
	xor a			;3c81	af 	. 
	sbc hl,bc		;3c82	ed 42 	. B 
	jr c,l3c92h		;3c84	38 0c 	8 . 
	ld hl,(06eefh)		;3c86	2a ef 6e 	* . n 
	dec hl			;3c89	2b 	+ 
	xor a			;3c8a	af 	. 
	sbc hl,bc		;3c8b	ed 42 	. B 
	jr nc,l3c98h		;3c8d	30 09 	0 . 
	xor a			;3c8f	af 	. 
	jr l3c9dh		;3c90	18 0b 	. . 
l3c92h:
	ld bc,(06ef3h)		;3c92	ed 4b f3 6e 	. K . n 
	jr l3c9ch		;3c96	18 04 	. . 
l3c98h:
	ld bc,(06eefh)		;3c98	ed 4b ef 6e 	. K . n 
l3c9ch:
	scf			;3c9c	37 	7 
l3c9dh:
	push af			;3c9d	f5 	. 
	ld hl,(06ef5h)		;3c9e	2a f5 6e 	* . n 
	xor a			;3ca1	af 	. 
	sbc hl,de		;3ca2	ed 52 	. R 
	jr c,l3cb2h		;3ca4	38 0c 	8 . 
	ld hl,(06ef1h)		;3ca6	2a f1 6e 	* . n 
	dec hl			;3ca9	2b 	+ 
	xor a			;3caa	af 	. 
	sbc hl,de		;3cab	ed 52 	. R 
	jr nc,l3cb8h		;3cad	30 09 	0 . 
	pop af			;3caf	f1 	. 
	pop hl			;3cb0	e1 	. 
	ret			;3cb1	c9 	. 
l3cb2h:
	ld de,(06ef5h)		;3cb2	ed 5b f5 6e 	. [ . n 
	jr l3cbch		;3cb6	18 04 	. . 
l3cb8h:
	ld de,(06ef1h)		;3cb8	ed 5b f1 6e 	. [ . n 
l3cbch:
	pop af			;3cbc	f1 	. 
	scf			;3cbd	37 	7 
	pop hl			;3cbe	e1 	. 
	ret			;3cbf	c9 	. 
	exx			;3cc0	d9 	. 
	ld de,l0000h		;3cc1	11 00 00 	. . . 
	exx			;3cc4	d9 	. 
	ld a,d			;3cc5	7a 	z 
	rla			;3cc6	17 	. 
	exx			;3cc7	d9 	. 
	ld de,l0000h		;3cc8	11 00 00 	. . . 
	jr nc,l3cceh		;3ccb	30 01 	0 . 
	dec de			;3ccd	1b 	. 
l3cceh:
	exx			;3cce	d9 	. 
	xor a			;3ccf	af 	. 
	bit 7,b		;3cd0	cb 78 	. x 
	jr z,l3ce7h		;3cd2	28 13 	( . 
	ld h,a			;3cd4	67 	g 
	ld l,a			;3cd5	6f 	o 
	sbc hl,bc		;3cd6	ed 42 	. B 
	ld b,h			;3cd8	44 	D 
	ld c,l			;3cd9	4d 	M 
	xor a			;3cda	af 	. 
	ld h,a			;3cdb	67 	g 
	ld l,a			;3cdc	6f 	o 
	sbc hl,de		;3cdd	ed 52 	. R 
	ex de,hl			;3cdf	eb 	. 
	exx			;3ce0	d9 	. 
	ld h,a			;3ce1	67 	g 
	ld l,a			;3ce2	6f 	o 
	sbc hl,de		;3ce3	ed 52 	. R 
	ex de,hl			;3ce5	eb 	. 
	exx			;3ce6	d9 	. 
l3ce7h:
	ld h,a			;3ce7	67 	g 
	ld l,a			;3ce8	6f 	o 
	exx			;3ce9	d9 	. 
	ld h,a			;3cea	67 	g 
	ld l,a			;3ceb	6f 	o 
	exx			;3cec	d9 	. 
	ld a,010h		;3ced	3e 10 	> . 
l3cefh:
	add hl,hl			;3cef	29 	) 
	exx			;3cf0	d9 	. 
	adc hl,hl		;3cf1	ed 6a 	. j 
	exx			;3cf3	d9 	. 
	sla c		;3cf4	cb 21 	. ! 
	rl b		;3cf6	cb 10 	. . 
	jr nc,l3cffh		;3cf8	30 05 	0 . 
	add hl,de			;3cfa	19 	. 
	exx			;3cfb	d9 	. 
	adc hl,de		;3cfc	ed 5a 	. Z 
	exx			;3cfe	d9 	. 
l3cffh:
	dec a			;3cff	3d 	= 
	jr nz,l3cefh		;3d00	20 ed 	  . 
	ret			;3d02	c9 	. 
	exx			;3d03	d9 	. 
	xor a			;3d04	af 	. 
l3d05h:
	ld l,a			;3d05	6f 	o 
	ld h,a			;3d06	67 	g 
	ld d,a			;3d07	57 	W 
	ld e,a			;3d08	5f 	_ 
	exx			;3d09	d9 	. 
	exx			;3d0a	d9 	. 
	ld a,d			;3d0b	7a 	z 
	bit 7,d		;3d0c	cb 7a 	. z 
	jr z,l3d22h		;3d0e	28 12 	( . 
	exx			;3d10	d9 	. 
	ex af,af'			;3d11	08 	. 
	xor a			;3d12	af 	. 
	sub e			;3d13	93 	. 
	ld e,a			;3d14	5f 	_ 
	ld a,000h		;3d15	3e 00 	> . 
	sbc a,d			;3d17	9a 	. 
	ld d,a			;3d18	57 	W 
	ld a,000h		;3d19	3e 00 	> . 
l3d1bh:
	exx			;3d1b	d9 	. 
	sbc a,e			;3d1c	9b 	. 
	ld e,a			;3d1d	5f 	_ 
l3d1eh:
	sbc a,a			;3d1e	9f 	. 
	sub d			;3d1f	92 	. 
	ld d,a			;3d20	57 	W 
	ex af,af'			;3d21	08 	. 
l3d22h:
	xor h			;3d22	ac 	. 
	bit 7,h		;3d23	cb 7c 	. | 
	jr z,l3d38h		;3d25	28 11 	( . 
	exx			;3d27	d9 	. 
	ex af,af'			;3d28	08 	. 
	ld b,h			;3d29	44 	D 
	ld c,l			;3d2a	4d 	M 
	xor a			;3d2b	af 	. 
l3d2ch:
	ld h,a			;3d2c	67 	g 
	ld l,a			;3d2d	6f 	o 
	sbc hl,bc		;3d2e	ed 42 	. B 
	exx			;3d30	d9 	. 
	ld b,h			;3d31	44 	D 
	ld c,l			;3d32	4d 	M 
	ld h,a			;3d33	67 	g 
	ld l,a			;3d34	6f 	o 
	sbc hl,bc		;3d35	ed 42 	. B 
	ex af,af'			;3d37	08 	. 
l3d38h:
	ex af,af'			;3d38	08 	. 
	exx			;3d39	d9 	. 
	xor a			;3d3a	af 	. 
	add hl,hl			;3d3b	29 	) 
	ld b,h			;3d3c	44 	D 
	ld c,l			;3d3d	4d 	M 
	ld h,a			;3d3e	67 	g 
l3d3fh:
	ld l,a			;3d3f	6f 	o 
	exx			;3d40	d9 	. 
	adc hl,hl		;3d41	ed 6a 	. j 
	ld b,h			;3d43	44 	D 
	ld c,l			;3d44	4d 	M 
	ld h,a			;3d45	67 	g 
	ld l,a			;3d46	6f 	o 
	ld a,b			;3d47	78 	x 
l3d48h:
	ld b,020h		;3d48	06 20 	.   
l3d4ah:
	exx			;3d4a	d9 	. 
	adc hl,hl		;3d4b	ed 6a 	. j 
	exx			;3d4d	d9 	. 
	adc hl,hl		;3d4e	ed 6a 	. j 
	exx			;3d50	d9 	. 
	sbc hl,de		;3d51	ed 52 	. R 
	exx			;3d53	d9 	. 
	sbc hl,de		;3d54	ed 52 	. R 
	ccf			;3d56	3f 	? 
	jr c,l3d5fh		;3d57	38 06 	8 . 
	exx			;3d59	d9 	. 
	add hl,de			;3d5a	19 	. 
	exx			;3d5b	d9 	. 
	adc hl,de		;3d5c	ed 5a 	. Z 
	or a			;3d5e	b7 	. 
l3d5fh:
	exx			;3d5f	d9 	. 
	rl c		;3d60	cb 11 	. . 
	rl b		;3d62	cb 10 	. . 
	exx			;3d64	d9 	. 
	rl c		;3d65	cb 11 	. . 
	rla			;3d67	17 	. 
	djnz l3d4ah		;3d68	10 e0 	. . 
	ex af,af'			;3d6a	08 	. 
	exx			;3d6b	d9 	. 
	rlca			;3d6c	07 	. 
	ret nc			;3d6d	d0 	. 
	xor a			;3d6e	af 	. 
	sub c			;3d6f	91 	. 
	ld c,a			;3d70	4f 	O 
	sbc a,a			;3d71	9f 	. 
	sub b			;3d72	90 	. 
	ld b,a			;3d73	47 	G 
	ret			;3d74	c9 	. 
l3d75h:
	ld a,(081a0h)		;3d75	3a a0 81 	: . . 
	ld c,e			;3d78	4b 	K 
	ld h,l			;3d79	65 	e 
	ld l,c			;3d7a	69 	i 
	ld l,(hl)			;3d7b	6e 	n 
	jr nz,l3d05h		;3d7c	20 87 	  . 
	sub h			;3d7e	94 	. 
	ld c,e			;3d7f	4b 	K 
	sub b			;3d80	90 	. 
	jr nz,l3dc4h		;3d81	20 41 	  A 
	and b			;3d83	a0 	. 
l3d84h:
	sub (hl)			;3d84	96 	. 
	add a,h			;3d85	84 	. 
	jr nc,l3d1bh		;3d86	30 93 	0 . 
	ld b,d			;3d88	42 	B 
	ld b,c			;3d89	41 	A 
	ld b,a			;3d8a	47 	G 
	sub b			;3d8b	90 	. 
	jr nz,-104		;3d8c	20 96 	  . 
	ld sp,06d93h		;3d8e	31 93 6d 	1 . m 
	ld h,c			;3d91	61 	a 
	ld l,(hl)			;3d92	6e 	n 
	sub b			;3d93	90 	. 
	jr nz,l3d2ch		;3d94	20 96 	  . 
	ld (05693h),a		;3d96	32 93 56 	2 . V 
	ld (09034h),a		;3d99	32 34 90 	2 4 . 
	jr nz,l3d1eh		;3d9c	20 80 	  . 
	sub a			;3d9e	97 	. 
	inc sp			;3d9f	33 	3 
	sub d			;3da0	92 	. 
	ld sp,03032h		;3da1	31 32 30 	1 2 0 
	jr nc,-110		;3da4	30 90 	0 . 
	jr nz,l3d3fh		;3da6	20 97 	  . 
	inc (hl)			;3da8	34 	4 
	sub d			;3da9	92 	. 
	ld (03034h),a		;3daa	32 34 30 	2 4 0 
	jr nc,l3d3fh		;3dad	30 90 	0 . 
	jr nz,l3d48h		;3daf	20 97 	  . 
	dec (hl)			;3db1	35 	5 
	sub d			;3db2	92 	. 
	inc (hl)			;3db3	34 	4 
	jr c,l3de6h		;3db4	38 30 	8 0 
	jr nc,l3d48h		;3db6	30 90 	0 . 
	and b			;3db8	a0 	. 
	add a,e			;3db9	83 	. 
	ld b,c			;3dba	41 	A 
	ld l,(hl)			;3dbb	6e 	n 
	ld (hl),a			;3dbc	77 	w 
	ld h,c			;3dbd	61 	a 
	ld l,b			;3dbe	68 	h 
	ld l,h			;3dbf	6c 	l 
	and b			;3dc0	a0 	. 
	add a,c			;3dc1	81 	. 
	ld b,l			;3dc2	45 	E 
	ld l,c			;3dc3	69 	i 
l3dc4h:
	ld h,a			;3dc4	67 	g 
	ld h,l			;3dc5	65 	e 
	ld l,(hl)			;3dc6	6e 	n 
	ld h,l			;3dc7	65 	e 
	ld (hl),e			;3dc8	73 	s 
	jr nz,l3e1fh		;3dc9	20 54 	  T 
	ld h,l			;3dcb	65 	e 
	ld l,h			;3dcc	6c 	l 
	ld h,l			;3dcd	65 	e 
	ld h,(hl)			;3dce	66 	f 
	ld l,a			;3dcf	6f 	o 
	ld l,(hl)			;3dd0	6e 	n 
	jr nz,100		;3dd1	20 62 	  b 
	ld h,l			;3dd3	65 	e 
	ld l,h			;3dd4	6c 	l 
	ld h,l			;3dd5	65 	e 
	ld h,a			;3dd6	67 	g 
	ld (hl),h			;3dd7	74 	t 
	and b			;3dd8	a0 	. 
	add a,c			;3dd9	81 	. 
	ld c,(hl)			;3dda	4e 	N 
	ld h,l			;3ddb	65 	e 
	ld (hl),l			;3ddc	75 	u 
	ld h,l			;3ddd	65 	e 
	ld (hl),d			;3dde	72 	r 
	ld l,h			;3ddf	6c 	l 
	ld l,c			;3de0	69 	i 
	ld h,e			;3de1	63 	c 
	ld l,b			;3de2	68 	h 
	jr nz,121		;3de3	20 77 	  w 
	ret z			;3de5	c8 	. 
l3de6h:
	ld h,c			;3de6	61 	a 
	ld l,b			;3de7	68 	h 
	ld l,h			;3de8	6c 	l 
	ld h,l			;3de9	65 	e 
	ld l,(hl)			;3dea	6e 	n 
	and b			;3deb	a0 	. 
	add a,c			;3dec	81 	. 
	ld d,e			;3ded	53 	S 
	ld (hl),b			;3dee	70 	p 
	ret z			;3def	c8 	. 
	ld h,c			;3df0	61 	a 
	ld (hl),h			;3df1	74 	t 
	ld h,l			;3df2	65 	e 
	ld (hl),d			;3df3	72 	r 
	jr nz,l3e6dh		;3df4	20 77 	  w 
	ret z			;3df6	c8 	. 
	ld h,c			;3df7	61 	a 
	ld l,b			;3df8	68 	h 
	ld l,h			;3df9	6c 	l 
	ld h,l			;3dfa	65 	e 
	ld l,(hl)			;3dfb	6e 	n 
	and b			;3dfc	a0 	. 
l3dfdh:
	add a,c			;3dfd	81 	. 
	ld c,e			;3dfe	4b 	K 
	ld h,l			;3dff	65 	e 
	ld l,c			;3e00	69 	i 
	ld l,(hl)			;3e01	6e 	n 
	ld h,l			;3e02	65 	e 
	jr nz,l3e5bh		;3e03	20 56 	  V 
	ld h,l			;3e05	65 	e 
	ld (hl),d			;3e06	72 	r 
	ld h,d			;3e07	62 	b 
	ld l,c			;3e08	69 	i 
	ld l,(hl)			;3e09	6e 	n 
	ld h,h			;3e0a	64 	d 
	ld (hl),l			;3e0b	75 	u 
	ld l,(hl)			;3e0c	6e 	n 
	ld h,a			;3e0d	67 	g 
	and b			;3e0e	a0 	. 
l3e0fh:
	add a,c			;3e0f	81 	. 
	ld b,(hl)			;3e10	46 	F 
	ld h,c			;3e11	61 	a 
	ld l,h			;3e12	6c 	l 
	ld (hl),e			;3e13	73 	s 
	ld h,e			;3e14	63 	c 
	ld l,b			;3e15	68 	h 
	ld h,l			;3e16	65 	e 
	ld (hl),e			;3e17	73 	s 
	jr nz,l3e65h		;3e18	20 4b 	  K 
	ld l,a			;3e1a	6f 	o 
	ld l,l			;3e1b	6d 	m 
	ld l,l			;3e1c	6d 	m 
	ld h,c			;3e1d	61 	a 
	ld l,(hl)			;3e1e	6e 	n 
l3e1fh:
	ld h,h			;3e1f	64 	d 
	ld l,a			;3e20	6f 	o 
	and b			;3e21	a0 	. 
	add a,e			;3e22	83 	. 
	ld d,h			;3e23	54 	T 
	ld h,l			;3e24	65 	e 
	ld (hl),e			;3e25	73 	s 
	ld (hl),h			;3e26	74 	t 
	jr nz,l3e95h		;3e27	20 6c 	  l 
	ret z			;3e29	c8 	. 
	ld h,c			;3e2a	61 	a 
	ld (hl),l			;3e2b	75 	u 
l3e2ch:
	ld h,(hl)			;3e2c	66 	f 
	ld (hl),h			;3e2d	74 	t 
	and b			;3e2e	a0 	. 
	add a,d			;3e2f	82 	. 
	ld d,h			;3e30	54 	T 
	ld h,l			;3e31	65 	e 
	ld (hl),e			;3e32	73 	s 
	ld (hl),h			;3e33	74 	t 
	jr nz,l3ea6h		;3e34	20 70 	  p 
	ld l,a			;3e36	6f 	o 
	ld (hl),e			;3e37	73 	s 
	ld l,c			;3e38	69 	i 
	ld (hl),h			;3e39	74 	t 
	ld l,c			;3e3a	69 	i 
	halt			;3e3b	76 	v 
	and b			;3e3c	a0 	. 
	add a,c			;3e3d	81 	. 
	ld d,h			;3e3e	54 	T 
	ld h,l			;3e3f	65 	e 
	ld (hl),e			;3e40	73 	s 
	ld (hl),h			;3e41	74 	t 
	jr nz,l3eb2h		;3e42	20 6e 	  n 
	ld h,l			;3e44	65 	e 
	ld h,a			;3e45	67 	g 
	ld h,c			;3e46	61 	a 
	ld (hl),h			;3e47	74 	t 
	ld l,c			;3e48	69 	i 
	halt			;3e49	76 	v 
	and b			;3e4a	a0 	. 
l3e4bh:
	add a,e			;3e4b	83 	. 
	ld d,b			;3e4c	50 	P 
	ld d,h			;3e4d	54 	T 
	ld d,(hl)			;3e4e	56 	V 
	dec l			;3e4f	2d 	- 
	ld c,l			;3e50	4d 	M 
	ld c,(hl)			;3e51	4e 	N 
	ld (hl),d			;3e52	72 	r 
	ld a,(l3131h)		;3e53	3a 31 31 	: 1 1 
	jr c,l3e91h		;3e56	38 39 	8 9 
	dec (hl)			;3e58	35 	5 
	jr nc,l3e8bh		;3e59	30 30 	0 0 
l3e5bh:
	jr nc,l3e92h		;3e5b	30 35 	0 5 
	jr nz,l3ea6h		;3e5d	20 47 	  G 
	ld d,e			;3e5f	53 	S 
	ld a,(l3932h)		;3e60	3a 32 39 	: 2 9 
	jr nz,l3de6h		;3e63	20 81 	  . 
l3e65h:
	out (020h),a		;3e65	d3 20 	.   
	ld c,l			;3e67	4d 	M 
	ld (hl),l			;3e68	75 	u 
	ld (hl),b			;3e69	70 	p 
	ld l,c			;3e6a	69 	i 
	ld h,h			;3e6b	64 	d 
	and b			;3e6c	a0 	. 
l3e6dh:
	ld (l392eh),a		;3e6d	32 2e 39 	2 . 9 
	ld h,c			;3e70	61 	a 
l3e71h:
	rra			;3e71	1f 	. 
	cpl			;3e72	2f 	/ 
	ld b,d			;3e73	42 	B 
	rra			;3e74	1f 	. 
	jr nc,l3e99h		;3e75	30 22 	0 " 
	ld sp,06034h		;3e77	31 34 60 	1 4 ` 
	ld sp,04320h		;3e7a	31 20 43 	1   C 
	ld sp,04022h		;3e7d	31 22 40 	1 " @ 
	ld sp,04021h		;3e80	31 21 40 	1 ! @ 
	ld b,b			;3e83	40 	@ 
	ld b,c			;3e84	41 	A 
	ld b,l			;3e85	45 	E 
	jr nz,l3ecah		;3e86	20 42 	  B 
	ld (hl),b			;3e88	70 	p 
	ld e,(hl)			;3e89	5e 	^ 
	ld d,e			;3e8a	53 	S 
l3e8bh:
	ld c,d			;3e8b	4a 	J 
	ld b,e			;3e8c	43 	C 
	ld h,h			;3e8d	64 	d 
	ld b,(hl)			;3e8e	46 	F 
	ld b,d			;3e8f	42 	B 
	ld a,e			;3e90	7b 	{ 
l3e91h:
	ld c,h			;3e91	4c 	L 
l3e92h:
	ld l,(hl)			;3e92	6e 	n 
	ld b,d			;3e93	42 	B 
	ld l,c			;3e94	69 	i 
l3e95h:
	ld l,h			;3e95	6c 	l 
	ld l,(hl)			;3e96	6e 	n 
	jr nz,l3edbh		;3e97	20 42 	  B 
l3e99h:
	ld e,b			;3e99	58 	X 
	ld h,(hl)			;3e9a	66 	f 
	ld (hl),e			;3e9b	73 	s 
	ld b,d			;3e9c	42 	B 
	ld c,e			;3e9d	4b 	K 
	ld h,h			;3e9e	64 	d 
	ld b,(hl)			;3e9f	46 	F 
	ld b,d			;3ea0	42 	B 
	ld d,e			;3ea1	53 	S 
	ld (hl),h			;3ea2	74 	t 
	ld e,(hl)			;3ea3	5e 	^ 
	ld b,d			;3ea4	42 	B 
	ld e,d			;3ea5	5a 	Z 
l3ea6h:
	ld e,a			;3ea6	5f 	_ 
	ld d,d			;3ea7	52 	R 
	jr nc,l3ecah		;3ea8	30 20 	0   
	ld b,d			;3eaa	42 	B 
	ld (hl),d			;3eab	72 	r 
	ld h,(hl)			;3eac	66 	f 
	ld b,e			;3ead	43 	C 
	ld b,d			;3eae	42 	B 
	ld e,d			;3eaf	5a 	Z 
	ld h,(hl)			;3eb0	66 	f 
	ld b,e			;3eb1	43 	C 
l3eb2h:
	ld b,d			;3eb2	42 	B 
	ld (hl),c			;3eb3	71 	q 
	ld h,b			;3eb4	60 	` 
	ld b,b			;3eb5	40 	@ 
	ld b,d			;3eb6	42 	B 
	ld l,d			;3eb7	6a 	j 
	ld b,h			;3eb8	44 	D 
	ld b,(hl)			;3eb9	46 	F 
	ld b,d			;3eba	42 	B 
	ld l,c			;3ebb	69 	i 
	ld b,c			;3ebc	41 	A 
	ld b,l			;3ebd	45 	E 
	ld b,d			;3ebe	42 	B 
	ld l,d			;3ebf	6a 	j 
	ld b,h			;3ec0	44 	D 
	ld b,(hl)			;3ec1	46 	F 
	rra			;3ec2	1f 	. 
	ld d,e			;3ec3	53 	S 
	ld b,(hl)			;3ec4	46 	F 
	add a,e			;3ec5	83 	. 
	adc a,a			;3ec6	8f 	. 
	ld d,b			;3ec7	50 	P 
	ld l,a			;3ec8	6f 	o 
	ld (hl),e			;3ec9	73 	s 
l3ecah:
	ld (hl),h			;3eca	74 	t 
	dec l			;3ecb	2d 	- 
	ld c,l			;3ecc	4d 	M 
	ld (hl),l			;3ecd	75 	u 
	ld (hl),b			;3ece	70 	p 
	ld l,c			;3ecf	69 	i 
	ld h,h			;3ed0	64 	d 
	jr nz,69		;3ed1	20 43 	  C 
	ld (l3241h),a		;3ed3	32 41 32 	2 A 2 
	dec de			;3ed6	1b 	. 
	ld (01e40h),hl		;3ed7	22 40 1e 	" @ . 
	add a,b			;3eda	80 	. 
l3edbh:
	nop			;3edb	00 	. 
	jp nc,000ffh		;3edc	d2 ff 00 	. . . 
	nop			;3edf	00 	. 
	nop			;3ee0	00 	. 
	nop			;3ee1	00 	. 
	nop			;3ee2	00 	. 
	nop			;3ee3	00 	. 
	nop			;3ee4	00 	. 
	nop			;3ee5	00 	. 
	nop			;3ee6	00 	. 
	nop			;3ee7	00 	. 
	nop			;3ee8	00 	. 
	nop			;3ee9	00 	. 
	nop			;3eea	00 	. 
	nop			;3eeb	00 	. 
	nop			;3eec	00 	. 
	nop			;3eed	00 	. 
	nop			;3eee	00 	. 
	nop			;3eef	00 	. 
	nop			;3ef0	00 	. 
	nop			;3ef1	00 	. 
	nop			;3ef2	00 	. 
	nop			;3ef3	00 	. 
	nop			;3ef4	00 	. 
	nop			;3ef5	00 	. 
	nop			;3ef6	00 	. 
	nop			;3ef7	00 	. 
	nop			;3ef8	00 	. 
	nop			;3ef9	00 	. 
	nop			;3efa	00 	. 
	nop			;3efb	00 	. 
	nop			;3efc	00 	. 
	nop			;3efd	00 	. 
	nop			;3efe	00 	. 
	nop			;3eff	00 	. 
l3f00h:
	nop			;3f00	00 	. 
	nop			;3f01	00 	. 
	nop			;3f02	00 	. 
	nop			;3f03	00 	. 
	ccf			;3f04	3f 	? 
	ccf			;3f05	3f 	? 
	ccf			;3f06	3f 	? 
	ccf			;3f07	3f 	? 
	jr nz,l3f3ah		;3f08	20 30 	  0 
	inc a			;3f0a	3c 	< 
	ld a,030h		;3f0b	3e 30 	> 0 
	inc a			;3f0d	3c 	< 
	ccf			;3f0e	3f 	? 
	ccf			;3f0f	3f 	? 
	nop			;3f10	00 	. 
	nop			;3f11	00 	. 
	jr nc,l3f50h		;3f12	30 3c 	0 < 
	nop			;3f14	00 	. 
	jr nz,l3f47h		;3f15	20 30 	  0 
	jr c,l3f51h		;3f17	38 38 	8 8 
	inc a			;3f19	3c 	< 
	ld a,03fh		;3f1a	3e 3f 	> ? 
	nop			;3f1c	00 	. 
	jr nz,34		;3f1d	20 20 	    
	jr nc,l3f51h		;3f1f	30 30 	0 0 
	jr c,58		;3f21	38 38 	8 8 
	inc a			;3f23	3c 	< 
	inc a			;3f24	3c 	< 
	ld a,03eh		;3f25	3e 3e 	> > 
	ccf			;3f27	3f 	? 
	jr nc,l3f4ah		;3f28	30 20 	0   
	jr nz,l3f5ch		;3f2a	20 30 	  0 
	inc a			;3f2c	3c 	< 
	ld a,03fh		;3f2d	3e 3f 	> ? 
	ccf			;3f2f	3f 	? 
	inc bc			;3f30	03 	. 
	ld bc,00301h		;3f31	01 01 03 	. . . 
	ccf			;3f34	3f 	? 
	ccf			;3f35	3f 	? 
	ld a,03ch		;3f36	3e 3c 	> < 
	rlca			;3f38	07 	. 
	rrca			;3f39	0f 	. 
l3f3ah:
	rra			;3f3a	1f 	. 
	ccf			;3f3b	3f 	? 
	nop			;3f3c	00 	. 
	nop			;3f3d	00 	. 
	jr nz,50		;3f3e	20 30 	  0 
l3f40h:
	ld b,b			;3f40	40 	@ 
	nop			;3f41	00 	. 
	nop			;3f42	00 	. 
	jr nz,l3f85h		;3f43	20 40 	  @ 
	nop			;3f45	00 	. 
	nop			;3f46	00 	. 
l3f47h:
	inc (hl)			;3f47	34 	4 
	ld b,b			;3f48	40 	@ 
	nop			;3f49	00 	. 
l3f4ah:
	ld d,b			;3f4a	50 	P 
	ld h,b			;3f4b	60 	` 
	ld b,b			;3f4c	40 	@ 
	nop			;3f4d	00 	. 
	jr nz,l3f62h		;3f4e	20 12 	  . 
l3f50h:
	ld b,b			;3f50	40 	@ 
l3f51h:
	ld (hl),b			;3f51	70 	p 
	add a,b			;3f52	80 	. 
	sub b			;3f53	90 	. 
	ld b,b			;3f54	40 	@ 
	ld d,b			;3f55	50 	P 
	cp a			;3f56	bf 	. 
	ld d,0c1h		;3f57	16 c1 	. . 
	ld hl,l1111h		;3f59	21 11 11 	! . . 
l3f5ch:
	jp 01134h		;3f5c	c3 34 11 	. 4 . 
	ld de,061c5h		;3f5f	11 c5 61 	. . a 
l3f62h:
	ld d,c			;3f62	51 	Q 
	ld de,l12c7h		;3f63	11 c7 12 	. . . 
	ld hl,0d511h		;3f66	21 11 d5 	! . . 
	sub c			;3f69	91 	. 
	add a,c			;3f6a	81 	. 
	ld (hl),c			;3f6b	71 	q 
	call z,03400h		;3f6c	cc 00 34 	. . 4 
	ld de,05141h		;3f6f	11 41 51 	. A Q 
	pop bc			;3f72	c1 	. 
	pop hl			;3f73	e1 	. 
	jp z,0bf56h		;3f74	ca 56 bf 	. V . 
	ld de,0c000h		;3f77	11 00 c0 	. . . 
	ccf			;3f7a	3f 	? 
	nop			;3f7b	00 	. 
	nop			;3f7c	00 	. 
	push bc			;3f7d	c5 	. 
	ccf			;3f7e	3f 	? 
	nop			;3f7f	00 	. 
	ret po			;3f80	e0 	. 
	nop			;3f81	00 	. 
	nop			;3f82	00 	. 
	ld (bc),a			;3f83	02 	. 
	ret p			;3f84	f0 	. 
l3f85h:
	nop			;3f85	00 	. 
	nop			;3f86	00 	. 
	inc (hl)			;3f87	34 	4 
	ret pe			;3f88	e8 	. 
	nop			;3f89	00 	. 
	ld b,005h		;3f8a	06 05 	. . 
	ret c			;3f8c	d8 	. 
	nop			;3f8d	00 	. 
	ld (bc),a			;3f8e	02 	. 
	ld hl,009eah		;3f8f	21 ea 09 	! . . 
	ex af,af'			;3f92	08 	. 
	rlca			;3f93	07 	. 
	sbc a,006h		;3f94	de 06 	. . 
	cp a			;3f96	bf 	. 
	ld d,c			;3f97	51 	Q 
	ld b,b			;3f98	40 	@ 
	ld (de),a			;3f99	12 	. 
	ld de,04011h		;3f9a	11 11 40 	. . @ 
	inc (hl)			;3f9d	34 	4 
	ld de,04011h		;3f9e	11 11 40 	. . @ 
	dec d			;3fa1	15 	. 
	ld d,011h		;3fa2	16 11 	. . 
	ld b,b			;3fa4	40 	@ 
	jr nz,l3fb9h		;3fa5	20 12 	  . 
	ld de,l1740h		;3fa7	11 40 17 	. @ . 
	jr 27		;3faa	18 19 	. . 
	ld b,b			;3fac	40 	@ 
	nop			;3fad	00 	. 
	inc (hl)			;3fae	34 	4 
	ld de,l1682h		;3faf	11 82 16 	. . . 
	ld a,(de)			;3fb2	1a 	. 
	ld d,078h		;3fb3	16 78 	. x 
	ld de,0e6dfh		;3fb5	11 df e6 	. . . 
	nop			;3fb8	00 	. 
l3fb9h:
	defb 0ddh,03fh,000h	;illegal sequence		;3fb9	dd 3f 00 	. ? . 
	ld b,b			;3fbc	40 	@ 
	ld de,l1111h		;3fbd	11 11 11 	. . . 
	ld (hl),b			;3fc0	70 	p 
	ld b,b			;3fc1	40 	@ 
	ld (hl),b			;3fc2	70 	p 
	ld b,b			;3fc3	40 	@ 
	ld hl,(0734ch)		;3fc4	2a 4c 73 	* L s 
	ld (hl),e			;3fc7	73 	s 
	ld c,h			;3fc8	4c 	L 
	ld c,h			;3fc9	4c 	L 
	ld (hl),e			;3fca	73 	s 
	ld (hl),e			;3fcb	73 	s 
	ld c,h			;3fcc	4c 	L 
	ld c,h			;3fcd	4c 	L 
	ld (hl),e			;3fce	73 	s 
	ld (hl),e			;3fcf	73 	s 
	ld c,h			;3fd0	4c 	L 
	ld c,h			;3fd1	4c 	L 
	ld (hl),e			;3fd2	73 	s 
	ld (hl),e			;3fd3	73 	s 
	ld c,h			;3fd4	4c 	L 
	ld c,h			;3fd5	4c 	L 
	ld (hl),e			;3fd6	73 	s 
	ld (hl),e			;3fd7	73 	s 
	ld c,h			;3fd8	4c 	L 
	ld c,h			;3fd9	4c 	L 
	ld (hl),e			;3fda	73 	s 
	ld (hl),e			;3fdb	73 	s 
	ld c,h			;3fdc	4c 	L 
	ld b,b			;3fdd	40 	@ 
	ld b,e			;3fde	43 	C 
	ld b,b			;3fdf	40 	@ 
	ld b,e			;3fe0	43 	C 
	ld hl,(0a03ah)		;3fe1	2a 3a a0 	* : . 
	ld (hl),d			;3fe4	72 	r 
	or a			;3fe5	b7 	. 
	ret nz			;3fe6	c0 	. 
	ld a,010h		;3fe7	3e 10 	> . 
	out (001h),a		;3fe9	d3 01 	. . 
	in a,(001h)		;3feb	db 01 	. . 
	bit 3,a		;3fed	cb 5f 	. _ 
	ret			;3fef	c9 	. 
	inc h			;3ff0	24 	$ 
	ld b,a			;3ff1	47 	G 
	ld a,b			;3ff2	78 	x 
	ld c,l			;3ff3	4d 	M 
	ld l,h			;3ff4	6c 	l 
	ld c,l			;3ff5	4d 	M 
	ld a,b			;3ff6	78 	x 
	ld c,l			;3ff7	4d 	M 
	ld h,b			;3ff8	60 	` 
	ld b,a			;3ff9	47 	G 
	call m,000ffh		;3ffa	fc ff 00 	. . . 
	ld a,a			;3ffd	7f 	 
	ld h,b			;3ffe	60 	` 
	nop			;3fff	00 	. 

	end
