; vi: syntax=asm68k

;{ 2/com_30, 7/proc312, 7/proc314 }

;:03e2			2/proc113()
;Lethal fall damage -> #DEATH
;	arg A6: (dc_t *)
;	arg D0.w: (xoff_t) dc.X
;	arg A2: (map_t *)
;	arg A3: (ani4v_t *) anim tbl

dy_plummet:
	move.w	  #DEATH,   _ST(a6)
	move.l	      a3, _VANI(a6)
	move.w	     #-1,   _VC(a6)
	move.w	 _RWP(a6),	d5
	move.w	_Y(a2,d5.w),	d1
	move.w	      d1,    _Y(a6)
	; fall thru 
	; .. 2/st_death()

;:03fe			2/.len_1
;#DEATH (dead) state handler

;48.l	dc.vani (ani4v_t *) anim ptr
;52.w	dc.vc   (ivl_t) final fr count

st_death:
	jsr	    2/mov_platf(pc)

	movea.l	  _VANI(a6),	a3
	;get .∆X (xoff8_t)
diedx	move.b	       (a3)+,	d3
	ext.w		d3
	add.w		d3,	d0
	;get .∆Y (yoff8_t)
diedy	move.b	       (a3)+,	d3
	ext.w		d3
	add.w		d3,	d1
	;get sprite index -> A1
dyspr	move.b	       (a3)+,	d3
	ext.w		d3
	bge.s	  .idxpos
	;[-6,-1] look up index
idxneg	neg.w		d3
	jsr	   2/get_anispr(pc)
	bra.s	  .dyfr
	;(+ve) index from #123/SPR_FALL
idxpos	movea.l	  _SPRV(a6),	a4
	movea.l	23*4(a4,d3.w),	a1

	;get frame #
dyfr	move.b	       (a3)+,	d2
	ext.w			d2
	bge.s	  .death2
	cmpi.w	       #-2,	d2
	beq.s	  .death2
	;-1/[END] -> get final frame
dyfinal	move.w	     #40,   _VC(a6)
	move.l	      a3, _VANI(a6)
	bra	     2/st_death(pc)

death2	movea.l	 currpg(a5),	a0
	;(--vc == 0) end of death
	subq.w	      #1,   _VC(a6)
	beq	    2/lose_life(pc)
	;(> 0) last frame
	bgt.s	  .death3
	;(< 0) advance anim ptr
	move.l	      a3, _VANI(a6)

	;[TOASH]? don't blit
death3	cmpi.w	     #-2,	d2
	beq.s	  .retdy
	move.w	   _TLP(a6),	d3
	cmpi.w #PL_BELT, _TL(a2,d3.w)
	bne.s	  .death4
	;#PL_BELT (conveyor belt)
onbelt	tst.w		 _F0(a2,d3.w)
	bgt.s	  .rbelt
	;roll LEFT: over edge?
lbelt	cmp.w	 _F1(a2,d3.w),	d0
	bgt.s	  .death4
	jmp	       2/fdbelt(pc)
	;roll RIGHT
rbelt	cmp.w	 _F1(a2,d3.w),	d0
	blt.s	  .death4
	jmp	       2/fdbelt(pc)

	;outside tile?
death4	cmp.w	 _LX(a2,d3.w),	d0
	blt.s	  .lrow
	cmp.w	 _RX(a2,d3.w),	d0
	bgt.s	  .rrow
	;within tile, blit SPR_*DEATH
bltdead	jsr	     3/blit_spr(a5)
retdy	rts	


	; -> #FALL (dead)
plummet	move.w		d0,  _X(a6)
	jsr	      2/dy_fall(pc)
	jmp	      2/st_fall(pc)


	;gap on left?
lrow	cmp.w	_RX(a2,d3.w),	d0
	bgt	  .plummet
	cmp.w	_LX(a2,d3.w),	d0
	blt.s	  .tilel
	;now within tile -> blit
lhittl	move.w	       d3, _TLP(a6)
	bra	  .bltdead
	;left of tile: (--tlp)
tilel	subi.w	    #18,	d3
	cmpi.w	    #W_, _TL(a2,d3.w)
	bne.s	  .lrow2
	;#W_/hit wall, on left
lwall	move.w	 _RX(a2,d3.w),	d0
	addi.w	    #20,	d0
	bra	  .plummet
	;@row start?
lrow2	tst.w		 _LX(a2,d3.w)
	beq	  .plummet
	;no, continue
	bra	  .lrow


rrow	cmp.w	 _RX(a2,d3.w),	d0
	bgt.s	  .tiler
	cmp.w	 _LX(a2,d3.w),	d0
	blt	  .plummet
rhittl	move.w	     d3,   _TLP(a6)
	bra	  .bltdead
	;right of tile: (++tlp)
tiler	addi.w	    #18,	d3
	cmpi.w	    #W_, _TL(a2,d3.w)
	bne.s	  .rrow2
rwall	move.w	 _LX(a2,d3.w),	d0
	subi.w	    #20,	d0
	bra	  .plummet
rrow2	tst.w		 _LX(a2,d3.w)
	beq	  .plummet
	bra	  .rrow
