; vi: syntax=asm68k

;0(A6).w  (xpos_t)	.x   anim.X
;2(A6).w  (ypos_t)	.y   anim.Y
;4(A6).w  (froff_t)	.fr  frame index
;6(A6).L  (sprhdr_t *)	.spr sprite ptr
;10(A6).L (frame8_t *)	.frv frame table


;:391a			3/proc194()
;Create animated object (<CLKT>)
;  arg A0(frame8_t *):  frame table
;  arg A1(sprhdr_t *):  sprite
;  arg D0(xpos_t):	animobj.X
;  arg D1(ypos_t):  	      ".Y
;  arg D2(froff_t):  	initial fr
mk_animobj:
	move.w		d0,	d3
	move.w		d1,	d4
	movea.l		a1,	a3
	movea.l		a0,	a4
	moveq	       #22,	d0
	lea	3/cb_animobj,	a1
	move.l	     a1,    _CB(a0)
	move.w	     d3,   8+_X(a0)
	move.w	     d4,   8+_Y(a0)
	move.w	     d2,  8+_FR(a0)
	;#289/290 SPR_GEARS.3/WINDSK.6
	move.l	     a3, 8+_SPR(a0)
	move.l	     a4, 8+_FRV(a0)
	move.l	qobj(a5), _NEXT(a0)
	move.l	     a0,   qobj(a5)
	rts	


;:394c			3/data154[]
;Animated object func
;  arg A6(animobj_t *):  obj
cb_animobj:
	move.w	     _X(a6),	d0
	move.w	     _Y(a6),	d1
	movea.l	   _SPR(a6),	a1
	movea.l	 currpg(a5),	a0
	tst.b	scrollf(a5)
	beq.s	  .onscrn
	;(scroll level) onscreen?
ledge	move.w	  _WINX(a0),	d4
	subi.w	       #32,	d4
	cmp.w		d4,	d0
	blt.s	  .endanio
redge	addi.w	  #(512+32),	d4
	cmp.w		d4,	d0
	bgt.s	  .endanio
uedge	move.w	  _WINY(a0),	d5
	subi.w	       #32,	d5
	cmp.w		d5,	d1
	blt.s	  .endanio
dedge	addi.w	  #(292+32),	d5
	cmp.w		d5,	d1
	bgt.s	  .endanio
	; -> (onscreen)
	;A2/(frame8_t *) D2/(froff_t)
onscrn	move.w	    _FR(a6),	d2
	movea.l	   _FRV(a6),	a2
	;get frame from table
getfr	move.b	    (a2,d2.w),	d2
	ext.w			d2
	bge.s	  .bltanio
	;-1/[END]: loop anim
endfr	clr.w			d2
	clr.w		    _FR(a6)
	bra.s	  .getfr
	;blit SPR_GEARS/_WINDSK
bltanio	addq.w		#1, _FR(a6)
	jsr	     3/blit_spr(pc)
endanio	rts		;:39a8
