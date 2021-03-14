; vi: syntax=asm68k

;:4002		3/data158[]

	tst.w	0(a6)
	ble.s	0x4016
	subq.w	#1, (a6)
	bne.s	0x4016
	move.w	d0, -(sp)
	move.w	0x8, d0
	jsr	0x42(a5)
	move.w	(sp)+, d0
;:4016
	bsr	0x401c
	rts

;:401c
	tst.w	-0x10e(a5)
	beq	0x4076
	cmpi.w	0x1, -0x10e(a5)
	beq	0x4072
	move.l	-0x10c(a5), d0
	cmp.l	-0x122(a5), d0
	blt.s	0x406e
;:4038
	addq.w	0x1, -0x108(a5)
	movea.l	-0x11e(a5), a0
	movea.l	(a0), a0
	adda.w	0x30, a0
	lea	-0x122(a5), a1
	addq.l	0x4, a1
	andi.b	0x7, ccr
	moveq	0x3, d1
;:4052
	abcd.b	-(a0), -(a1)
	dbra	d1, 0x4052
	cmp.l	-0x122(a5), d0
	bge.s	0x4038
	move.w	0xd, (a6)
	move.w	d0, -(sp)
	move.w	0x8, d0
	jsr	0x42(a5)
	move.w	(sp)+, d0
;:406e
	jsr	0x40b2(pc)
;:4072
	jsr	0x1aa(a5)
;:4076
	rts
