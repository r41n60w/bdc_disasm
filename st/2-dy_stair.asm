; vi: syntax=asm68k

;{ 2/proc117 }

;:0268			2/com_7()
;Fatal fall down stairs  -> (#STAIRD)
;  arg A6,A2/D4: -> st_stairon()

;(tloff_t) U_STEP

dy_stair:
	;[L_STEP] -> curr tile
	move.w	_F3(a2,d4.w), _DRW(a6)
	move.w	_F1(a2,d4.w),	d4
	move.w	       d4, _TLP(a6)
staird2	tst.w		  _FACE(a6)
	blt.s	  .lstaird
rstaird	tst.w		  _VSLP(a6)
	blt.s	  .rback
	; \ (facing RIGHT)
rforw	lea	2/rstairr_ani,	a3
	bra.s	  .staird3
	; / (facing RIGHT)
rback	lea	2/rstairl_ani,	a3
	bra.s	  .staird3
lstaird	tst.w		  _VSLP(a6)
	bgt.s	  .lback
	; / (facing LEFT)
lforw	lea	2/lstairl_ani,	a3
	bra.s	  .staird3
	; \ (facing LEFT)
lback	lea	2/lstairr_ani,	a3
staird3	move.w	 #STAIRD,   _ST(a6)
	move.l	      a3, _VANI(a6)
	rts	
