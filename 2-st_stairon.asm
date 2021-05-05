; vi: syntax=asm68k

;:173a			2/com_21()
;:17cc			2/com_22()
;:183c			2/com_23()
;:1840			2/com_24()
;:185e			2/com_25()

;:173a			2/com_21()
;#STAIRON (on stairs) state handler

;48(a6).w:	(tloff_t) dc.vlow
;52(a6).w:	(UP|DOWN) dc.vslp

st_stairon:
	move.w	    _FR(a6),	d2
	move.w	  _VLOW(a6),	d5
	movea.l	  _SPRV(a6),	a4
	tst.w		    _DY(a6)
	beq	  .atrest
	blt.s	  .ascend

descend	tst.w		  _VSLP(a6)
	blt.s	  .ldescen
	;DOWN ( \ slope)
rdescen	move.w	  #RIGHT, _FACE(a6)
	move.w	    #+18,	d7
	movea.l	    8*4(a4),	a1
	bra.s	  .descen2
	;UP ( / slope)
ldescen	move.w	   #LEFT, _FACE(a6)
	move.w	    #-18,	d7
	movea.l	   10*4(a4),	a1

descen2	move.w	 _F3(a2,d4.w),	d3
	move.w	  _Y(a2,d3.w),	d6
	subi.w		#9,	d6
	cmp.w		d6,	d1
	blt.s	  .descen3
	;hit stair bottom -> #STAIR
hitfoot	move.w	    #STAIR, _ST(a6)
	move.w  _Y(a2,d3.w),	d1
	move.w	      d1,   _Y(a6)
	move.w	      d5, _TLP(a6)
	move.w	      d5,	d4
	move.w	      d3, _RWP(a6)
	bra	    2/st_stair(pc)

	;next frame
descen3	addq.w		#1,	d2
	cmpi.w		#0,	d2
	beq.s	  .stepsnd
	cmpi.w		#3,	d2
	bne.s	  .descen4
	;[.0|3] #0/SND_FTSTEP
stepsnd	move.w		d0,   -(sp)
	clr.w			d0
	jsr	     1/play_snd(a5)
	move.w	       (sp)+,	d0

descen4	cmp.w	   _NFR(a1),	d2
	blt	  .bltstep
	;wrap to [.0], adjust pos
ddiagon	add.w		d7,	d0
	addi.w	      #+10,	d1
	clr.w			d2
	bra	  .bltstep

;:17cc			2/com_22()

ascend	tst.w		  _VSLP(a6)
	blt.s	  .rascend
lascend	move.w	   #LEFT, _FACE(a6)
	move.w	    #-18,	d7
	movea.l	 9*4(a4),	a1
	bra.s	  .ascend2
rascend	move.w	  #RIGHT, _FACE(a6)
	move.w	    #+18,	d7
	movea.l	 7*4(a4),	a1
ascend2	move.w	 _F2(a2,d5.w),	d3
	cmp.w	  _Y(a2,d3.w),	d1
	bgt.s	  .ascend3
	;hit stair top -> #STAIR
hittop	move.w	    #STAIR, _ST(a6)
	move.w	 _Y(a2,d3.w),	d1
	move.w	       d1,   _Y(a6)
	move.w	       d4, _TLP(a6)
	move.w	       d3, _RWP(a6)
	bra	     2/st_stair(pc)

ascend3	addq.w		#1,	d2
	cmpi.w		#0,	d2
	beq.s	  .stpsnd2
	cmpi.w		#3,	d2
	bne.s	  .ascend4
stpsnd2	move.w		d0,   -(sp)
	clr.w		d0
	jsr	     1/play_snd(a5)
	move.w	       (sp)+,	d0
ascend4	cmp.w	   _NFR(a1),	d2
	blt.s	  .bltstep
	clr.w		d2
udiagon	add.w		d7,	d0
	subi.w	       #10,	d1
	bra.s	  .bltstep

;:183c			2/com_23()

atrest	movea.l	   _SPR(a6),	a1

;:1840			2/com_24()

bltstep	movea.l	currpg(a5),	a0
	move.w	       d2, _FR(a6)
	move.w	       d0,  _X(a6)
	move.w	       d1,  _Y(a6)
	move.l	       a1, _SPR(a6)
	subq.w	       #1,	d1
	jsr	     3/blit_spr(a5)
	jmp	  2/dg_dispatch(pc)
