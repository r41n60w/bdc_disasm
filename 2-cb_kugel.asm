; vi: syntax=asm68k

;:3428			2/data112[]
;Rock/fireball callback function
;	arg A6:	kg_t ptr
cb_kugel:
	move.l	_X(a6), d0
	beq.s	  .offscrn
	move.l	_Y(a6), d1
	;apply gravity (+$d555 ∆y)
dygrav	move.l	_G(a6), d3
	add.l	d3, _DY(a6)
	;move kugel +(∆x,∆y) abs
movekg	add.l	_DX(a6), d0
	add.l	_DY(a6), d1
scrpos	movea.l	currpg(a5), a0
	move.l	d0, d4
	move.l	d1, d5
	swap	d4
	sub.w	_SCRX(a0), d4
	swap	d5
	sub.w	_SCRY(a0), d5
xbound	cmpi.w	#4, d4
	ble.s	  .offscrn
	cmpi.w	#504, d4
	bge.s	  .offscrn
ybound	cmpi.w	#4, d5
	ble.s	  .offscrn
	cmpi.w	#334, d5
	bge.s	  .offscrn
	;onscreen, next (++fr mod <.4|.2>)
nextfr	movea.l	_SPR(a6), a1
	move.w	_FR(a6), d2
	addq.w	#1, d2
	cmp.w	_NFR(a1), d2
	blt.s	  .nowrap
wrapfr	clr.w	d2
	;blit SPR_ROCK/_FIREBALL ∆(-4,-4)
nowrap	move.l	d0, _X(a6)
	move.l	d1, _Y(a6)
	move.w	d2, _FR(a6)
blitkg	swap	d0
	swap	d1
	subq.w	#4, d0
	subq.w	#4, d1
	jsr	3/blit_spr(a5)
endcb	rts
	;(4,4):(504,334) offscreen, remove
offscrn	movea.l	_KGV(a6), a3
	cmpa.w	#0, a3
	beq.s	  .undefcb
rmhead	movea.l	_LAST(a6), a4
	move.l	a4, (a3)
	move.l	a3, _KGV(a4)
	;disable this callback
undefcb	clr.l	-8+_CB(a6)
	bra.s	  .endcb
