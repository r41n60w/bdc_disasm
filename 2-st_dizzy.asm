; vi: syntax=asm68k

;{ 2/com_28     2/com_29     2/data108   
;  7/proc312    7/proc314 }

;:0000		2/proc109()

;#DIZZY state handler
;	arg A6: (dc_t *)
;	arg A2:	level (map_t *)
;	arg D4.w: map->(tloff_t)
;	arg D0.w: (xpos_t) dc.X
;	arg D1.w: (ypos_t) dc.Y

; 48(A6).L: dc.vani (ani5v_t *) anim ptr

st_dizzy:
	;on moving platform? update
	jsr	    2/mov_platf(pc)
	;A3/(ani5v_t *) anim ptr
	movea.l	  _VANI(a6),	a3
	;(xoff_t) apply X offset
dzdx	move.b	       (a3)+,	d3
	ext.w			d3
	add.w		d3,	d0
	;(yoff_t)   "   Y offset
dzdy	move.b	       (a3)+,	d3
	ext.w			d3
	add.w		d3,	d1
	;get spr index -> A1/(sprhdr_t *) 
dzspr	move.b	       (a3)+,	d3
	ext.w			d3
	bge.s	  .idxpos
	;[-6,-1] look up in tbl
idxneg	neg.w			d3
	jsr	   2/get_anispr(pc)
	bra.s	  .dcfr
	;(>= 0) index from #123/SPR_FALL
idxpos	movea.l	  _SPRV(a6),	a4
	movea.l	23*4(a4,d3.w),	a1

	;get (dc) frame # 
dcfr	move.b	       (a3)+,	d2
	ext.w			d2
	bge.s	  .bltdc
	cmpi.w	       #-2,	d2
	bne.s	  .dzend
	;-2/[TODIZ]: end of fall anim
todiz	move.w	      d0,    _X(a6)
	move.w	      d1,    _Y(a6)
	lea	2/dizzy_ani,	a3
	move.l	      a3, _VANI(a6)
	bra	     2/st_dizzy(pc)
	;-1/[END]: parse new tile etc
dzend	move.w		d4,	d5
	jsr	  2/tl_dispatch(pc)
	jmp	  2/st_dispatch(pc)
	;blit dc spr <.6>
bltdc	movea.l	 currpg(a5),	a0
	;save A1/(sprhdr_t *)
	movea.l		a1,	a2
	jsr	     3/blit_spr(a5)

	;get headspin frame #
hsfr	move.b	       (a3)+,	d2
	cmpi.b	      #-42,	d2
	bne.s	  .hsfr2
	;-42/[DIZSND]: sound #2 [.0]
dizsnd	move.w		d0,   -(sp)
	move.w	#SND_DIZZY,	d0
	jsr	     1/play_snd(a5)
	move.w	       (sp)+,	d0
	clr.b			d2
	bra.s	  .blths
hsfr2	cmpi.b	      #-43,	d2
	bne.s	  .hsfr3
	;-43/[BRRSND]: sound #3 (no HS)
brrsnd	move.w		d0,   -(sp)
	move.w	#SND_DIZZY2,	d0
	jsr	     1/play_snd(a5)
	move.w	       (sp)+,	d0
	bra.s	  .nohs

	;-1/[NOHS] no headspin?
hsfr3	tst.b			d2
	blt.s	  .nohs
	;[.0-5]: blit #127/SPR_DIZHS
blths	ext.w			d2
	move.w	     _X(a6),	d0
	move.w	     _Y(a6),	d1
	movea.l	   27*4(a4),	a1
	;(+8,-10) above his head
	subi.w	       #10,	d1
	addq		#8,	d0
	jsr	     3/blit_spr(a5)
	;save anim ptr
nohs	move.l	      a3, _VANI(a6)
	movea.l	      a2,	a1
	move.w	   _X(a6),	d0
	move.w	   _Y(a6),	d1
	movea.l	 _MAP(a6),	a2
	jmp	  2/dg_dispatch(pc)
