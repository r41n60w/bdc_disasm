; vi: syntax=asm68k

;{ 2/com_21     2/com_22     2/com_25 } 
;:185e			2/com_25()
;#STAIR (tile) state handler

st_stair:
	btst.b	     #LOW, _FLG(a6)
	bne.s	  .still
	tst.w		    _DY(a6)
	bne.s	  .stair2
	;(crouched) OR stationery
still	jmp	   2/st_default(pc)

stair2	bpl.s	   dstair
	;(!crouched, moving UP)
ustair	move.w	     #U_STEP,	d3
	cmp.w	_TL(a2,d4.w),	d3
	bne.s	  .ascend
	;@U_STEP: already at top
attop	jmp	   2/st_default(pc)

	;@L_STEP -> start climbing
ascend	move.w	  #STAIRON, _ST(a6)
	move.w	       d4,   _VLOW(a6)
	move.w	_F0(a2,d4.w), _TLP(a6)
	clr.w		    _FR(a6)
	move.w	_F4(a2,d4.w),_VSLP(a6)
	move.w	_F5(a2,d4.w),	d0
	move.w	       d0,   _X(a6)
	subq.w	       #7,	d1
	move.w	       d1,   _Y(a6)
	move.w	  _TLP(a6),	d4
	bra	   2/st_stairon(pc)

	;(!crouched, moving DOWN)
dstair	move.w	  #L_STEP,	d3
	cmp.w	_TL(a2,d4.w),	d3
	bne.s	  .descend
atfoot	jmp	   2/st_default(pc)
	;(@U_STEP)
descend	move.w	 #STAIRON,  _ST(a6)
	move.w	       d4, _TLP(a6)
	move.w  _F1(a2,d4.w),_VLOW(a6)
	clr.w		    _FR(a6)
	move.w	_F4(a2,d4.w),_VSLP(a6)
	move.w	_F5(a2,d4.w),	d0
	move.w	       d0,   _X(a6)
	subq.w	       #2,	d1
	move.w	       d1,   _Y(a6)
	bra	   2/st_stairon(pc)
