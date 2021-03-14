; vi: syntax=asm68k

;:4268		3/data161[]
	tst.w	-0xde(a5)
	beq.b	0x429a
	subq.w	0x6, -0xde(a5)
	cmpi.w	0xf00, -0xde(a5)
	bgt.w	0x429a
	subq.w	0x1, -0x608(a5)
	bgt.b	0x429a
	move.b	-0xde(a5), d0
	ext.w	d0
	addq.w	0x3, d0
	move.w	d0, -0x608(a5)
	move.w	d0, -(a7)
	move.w	0x18, d0
	jsr	0x42(a5)
	move.w	(a7)+, d0
;:429a
	subq.w	0x1, 0x2(a6)
	bgt.b	0x42de
	clr.w	0x2(a6)
	move.b	-0xde(a5), d0
	ext.w	d0
	cmp.b	(a6), d0
	beq.w	0x433a
	move.b	d0, (a6)
	move.w	0x2, 0x2(a6)
	tst.w	d0
	bge.b	0x42be
	clr.w	d0
;:42be
	lea.l	0x4322(pc), a0
	move.w	0x2(a0), d1
	add.w	d0, d1
	move.w	d1, 0x6(a0)
	lea.l	0x431a(pc), a0
	move.w	0x6(a0), d1
	subi.w	0x64, d0
	add.w	d0, d1
	move.w	d1, 0x2(a0)
;:42de
	cmpi.w	0x2, 0x2(a6)
	ble.b	0x42ec
	move.w	0x1, 0x2(a6)
;:42ec
	lea.l	-0x16(a5), a0
	cmpa.l	-0x60(a5), a0
	bne.b	0x42fc
	pea.l	-0x3a(a5)
	bra.b	0x4300
;:42fc
	pea.l	-0x48(a5)
;:4300	$a875(BitMap *)
	_SetPBits
	pea.l	0x431a(pc)
	pea.l	0x4332(pc)
;:430a	$a8a5(Rect *, Pattern *)
	_FillRect
	pea.l	0x4322(pc)
	pea.l	0x432a(pc)
	_FillRect
	bra.w	0x433a

;:431a	Rect[8]
	dc.w	330,   0, 337, 336
;:4322	Rect
	dc.w	330, 236, 337,   0
;:432a	Pattern[8]
	dc.b	$55, $aa, $55, $aa
	dc.b	$55, $aa, $55, $aa
;:4332	Pattern
	dc.b	$00, $00, $00, $00
	dc.b	$00, $00, $00, $00

;:433a
	rts
