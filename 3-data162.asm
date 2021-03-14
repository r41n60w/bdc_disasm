; vi: syntax=asm68k

;:4368		3/data162[148]

	movea.l	0(a6), a0
	move.w	(a0), d0
	subq.w	#1, 6(a6)
	bgt.s	0x43ba
	clr.w	6(a6)
	cmp.w	4(a6), d0
	beq.w	0x43fa
	move.w	d0, 4(a6)
	bge.s	0x4386
	clr.w	d0
;:4386
	cmpi.w	#99, d0
	ble.s	0x4390
	move.w	#99, d0
;:4390
	move.w	#2, 6(a6)
	lea	12(a6), a0
	move.w	#$02ca, (a0)+
	move.b	#'0', (a0)+
	swap	d0
	clr.w	d0
	swap	d0
;:43a8
	divu.w	#10, d0
	swap	d0
	addi.w	#'0', d0
	move.b	d0, -(a0)
	clr.w	d0
	swap	d0
	bne.s	0x43a8
;:43ba
	cmpi.w	#2, 6(a6)
	ble.s	0x43c8
	move.w	#1, 6(a6)
;:43c8
	lea	-0x16(a5), a0
	cmpa.l	-0x60(a5), a0
	bne.s	0x43d8
	pea	-0x3a(a5)
;:43d6
	bra.s	0x43dc
;:43d8
	pea	glob251(a5)
;:43dc $a875(BitMap *)
	_SetPBits
	movea.l	8(a6), a4
	pea	2(a4)
;	$a8a2(Rect *)
	_PaintRect
	move.w	4(a4), -(sp)
	move.w	2(a4), -(sp)
	addq.w	#7, (sp)
;	$a893(h,v)
	_MoveTo
	pea	12(a6)
;	$a884(Str255 *)
	_DrawString
;:43fa
	rts
