; vi: syntax=asm68k

;:33b2			2/proc137()
;Create new rock/fireball
;  arg A6:	dc_t ptr
;      A0:	kugel sprite	
;  out A1:	&kghead (kg_t **)
;      D0.w:	kugel X coord_t
;      D1.w:	kugel Y coord_t
;      D2.l:	kugel velocity ∆X
;      D3.l:	kugel velocity ∆Y
;      D4.l:	gravity accel (∆Y)

mk_kugel:
	movem.l	d0/d5/a0/a2-a3, -(sp)
	move.w	d0, d5
	movea.l	a0, a2
kgalloc	moveq	#42, d0
	_NewPtr	  , CLEAR	;a31e
kginit	lea.l	2/cb_kugel(pc), a3 ;:3428
	move.l	a3, _CB(a0)
kgx	swap	d5
	clr.w	d5
	move.l	d5, 8+_X(a0)
kgy	swap	d1
	clr.w	d1
	move.l	d1, 8+_Y(a0)
kgveloc	move.l	d2, 8+_DX(a0)
	move.l	d3, 8+_DY(a0)
	sub.l	d2, 8+_X(a0)
	sub.l	d3, 8+_Y(a0)
kginit2	move.l	a2, 8+_SPR(a0)
	clr.w	8+_FR(a0)
	move.l	d4, 8+_G(a0)

	cmpa.w	#0, a1
	beq.s	  .nohead
gethead	movea.l	(a1), a3
	move.l	a3, 8+_LAST(a0)
	move.l	a1, 8+_KGV(a0)
newhead	move.l	a0, (a1)
	addq.l	#8, (a1)
	cmpa.w	#0, a3
	beq.s	  .kginser
kglink	move.l	(a1), _KGV(a3)
	bra.s	  .kginser
nohead	clr.l	8+_LAST(a0)
	clr.l	8+_KGV(a0)

kginser	move.l	-8+_NEXT(a6), _NEXT(a0)
	move.l	a0, -8+_NEXT(a6)
	movem.l	(sp)+, d0/d5/a0/a2-a3
	rts
