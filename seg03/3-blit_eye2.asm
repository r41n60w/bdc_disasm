; vi: syntax=asm68k

;:18e4		3/data125[]
;Eye flames blit function
;  arg A6(ae_t *):	obj
;  arg D0/D1([xy]pos_t) eye pos [&]

blit_eye2:
	move.w	 currpg(a5),	a0
	;#360/SPR_EYE2<.2> 32x39px
	movea.l	260*4+spr(a5), a1
	move.w	34(a6), d2
	move.w	0x1, d3
	eor.w	d3, 34(a6)
	cmpi.w	0x14, d0
	bge.b	0x1904
	move.w	0x14, d0
	bra.b	0x1926
;:1904
	cmpi.w	0x1ec, d0
	ble.b	0x1910
	move.w	0x1ec, d0
	bra.b	0x1926
;:1910
	cmpi.w	0x14, d1
	bge.b	0x191c
	move.w	0x14, d1
	bra.b	0x1926
;:191c
	cmpi.w	0x116, d1
	ble.b	0x1926
	move.w	0x116, d1
;:1926
	subi.w	0x10, d0
	subi.w	0x10, d1
	jsr	3/blit_spr(pc)
	addi.w	0x10, d0
	addi.w	0x10, d1
;193a
	rts
