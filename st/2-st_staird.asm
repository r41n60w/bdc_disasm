; vi: syntax=asm68k

;:02aa		2/data70()
;(Fall down) #STAIRD state handler
; [dy_stair() -> *stair*_ani[3]
;   (down stairs)  *roll_ani[5]
;   (@ bottom)    *foot*_ani[3] -> #DEATH]
;   arg  A6,D0/D1,A2/D4 -> st_stair()

; 48(a6).L  _VANI: (ani4v_t *) anim ptr
; 52(a6).W  _VSLP {LEFT|RIGHT} slope

st_staird:
	;A3/(ani4v_t *) anim ptr
	movea.l	  _VANI(a6),	a3
	;apply ∆dc.X	(xoff8_t)
stairdx	move.b	       (a3)+,	d3
	ext.w			d3
	add.w		d3,	d0
	; ∆.Y		(yoff8_t)
stairdy	move.b	       (a3)+,	d3
	ext.w			d3
	add.w		d3,	d1
	;(+ve) spr index (spr8_t)
stairsp	move.b	       (a3)+,	d3
	ext.w			d3
	movea.l	  _SPRV(a6),	a4
	movea.l	23*4(a4,d3.w),	a1
	;get frame #	(frame8_t)
stairfr	move.b	       (a3)+,	d2
	ext.w			d2
	bge.s	  .frameok


	;-1/[#END] -> (rolling)
rolla	tst.w		  _VSLP(a6)
	bgt.s	  .rroll
	; / lroll_ani[]
lroll	lea	2/lroll_ani,	a3
	bra.s	  .roll2
	; \ rroll_ani[]
rroll	lea	2/rroll_ani,	a3
roll2	move.l	      a3, _VANI(a6)
	bra.s	    2/st_staird(pc)
	
	
frameok	move.w		d0,  _X(a6)
	move.w		d1,  _Y(a6)
	;dc.Y >= (curr_row.Y + 9)?
	move.w	   _DRW(a6),	d3
	move.w	_RWY(a2,d3.w),	d6
	addi.w		#9,	d6
	cmp.w		d6,	d1
	blt.s	  .bltstrd

	;(hit stair bottom)
hitfoot	move.w		d6,	d1
	subi.w		#9,	d1
	move.w		d1,  _Y(a6)
foot2	tst.w		  _FACE(a6)
	blt.s	  .lfoot
	;(facing RIGHT)
rfoot	tst.w		  _VSLP(a6)
	blt.s	  .rftback
	; \  land forwards
rftfwd	lea	  2/rfootr_ani,	a3
	addq.w		#4,	d0
	bra.s	  .foot3
	; /  "    backwards
rftback	lea	  2/rfootl_ani,	a3
	subi.w	       #24,	d0
	bra.s	  .foot3
	;(facing LEFT)
lfoot	tst.w		  _VSLP(a6)
	blt.s	  .lftfwd
lftback	lea	2/lfootr_ani,	a3
	addq.w		#4,	d0
	bra.s	  .foot3
lftfwd	lea	2/lfootl_ani,	a3
	subi.w	       #24,	d0
	;sound #78
foot3	move.w		d0,   -(sp)
	move.w	 #SND_TRIP,	d0
	jsr	     1/play_snd(a5)
	move.w	       (sp)+,	d0
	;A3/(ani4v_t *) -> [#DEATH]
deatha	move.w		d0,  _X(a6)
	jmp	     2/dy_death(pc)
	;	  -> 2/st_death(pc)


	;save anim ptr, blit
bltstrd	movea.l  currpg(a5),	a0
	move.l	      a3, _VANI(a6)
	jsr	     3/blit_spr(a5)
	rts
