; vi: syntax=asm68k

;{ 2/data108   13/   FC 14/proc357 }

;:198e			2/proc126()
;#MIDJMP state handler

st_midjmp:
	movea.l	  _VAN8(a6),	a3
	;next anim frame (++van8)
	addq.l	      #8, _VAN8(a6)
	tst.w		       (a3)
	bge.s	  .notend
	;{END,..} -> #LANDJMP( ,-10)
aniend	subi.w	     #10,	d1
	move.w	      d1,    _Y(a6)
	jmp	proc129

notend	movea.l	  _SPRV(a6),	a4
	;D6/(coord_t) dc.X' 
	move.w		d0,	d6
	tst.w		  _VDIR(a6)
	blt	  .ljump

	;jump RIGHT	(+dX)
rjump	add.w	       (a3)+,	d0
	tst.w		   _VWX(a6)
	beq.s	  .rjump2
	cmp.w	   _VWX(a6),	d0
	blt.s	  .rjump2
	;(dc.X >= wall.X) hit wall [.1]
rhitw	move.w		#1, _FR(a6)
	move.w	   _VWX(a6),	d0
hitwall	tst.b	          _VYDR(a6)
	bpl	  .wall2
	addq	       #4, _RWP(a6)
wall2	move.w	       d1,  _V0(a6)
	move.w	       d0,   _X(a6)
	;landing sound (#1)
	push	       d0
	move.w	 #SND_LAND,	d0
	jsr	     1/play_snd(a5)
	pop			d0
;#LANDJMP(D1, 10, 2, (spr_t *)#198)
wall3	move.w	  #LANDJMP, _ST(a6)
	move.w		#2, _V2(a6)
	move.w	       #10, _V1(a6)
	;#198/SPR_ <. >
	move.l 392+sprv(a5), _V3(a6)
	jmp	   2/st_landjmp(pc)


rjump2	cmp.w	rscr_edge(a5),	d0
	blt.s	  .rjump3
	;hit [right] scrn edge @(489,Y)
redge	move.w	rscr_edge(a5),	d0
	subi.w	      #10,	d0
hitedge	move.w	       d0,   _X(a6)
	tst.b		   _VYDR(a6)
	bpl	  .aniend
	addq	       #4, _RWP(a6)
	bra	  .aniend

rjump3	tst.b		   _VLJ(a6)
	beq.s	  .rshortj
	;#105/SPR_RJUMPL <.6> 32x45px
rlongj	movea.l	    5*4(a4),	a1
	bra.s	  .dyjump
	;#118/SPR_RJUMPS <.7> 32x50px
rshortj	movea.l	   18*4(a4),	a1
	bra.s	  .dyjump


	;jump LEFT	(-dX)
ljump	sub.w	       (a3)+,	d0
	tst.w		   _VWX(a6)
	beq.s	  .ljump2
	cmp.w	   _VWX(a6),	d0
	bgt.s	  .ljump2
	;hit wall [.0]
lhitw	clr.w		    _FR(a6)
	move.w	   _VWX(a6),	d0
	addq		#7,	d0
	bra	  .hitwall
ljump2	cmp.w	lscr_edge(a5),	d0
	bgt.s	  .ljump3
	;hit [left] scrn edge @(1,Y)
ledge	move.w	lscr_edge(a5),	d0
	addi.w	         #10,	d0
	bra	  .hitedge
ljump3	tst.b		   _VLJ(a6)
	beq.s	  .lshortj
	;#104/SPR_LJUMPL <.6> 32x45px
llongj	movea.l	    4*4(a4),	a1
	bra.s	  .dyjump
	;#117/SPR_LJUMPS <.7> 32x50px
lshortj	movea.l	   17*4(a4),	a1
	nop	

	;D7/(delta_t) Y displacement 
dyjump	move.w	       (a3)+,	d7
	add.w		d7,	d1
	tst.w		d7
	bgt.s	  .djump


	;move UP	(-ve dY)
ujump	move.w	   _RWP(a6),	d3
urow	move.w	  _Y(a2,d3.w),	d7
	; > last row?
	beq	     2/x_midjmp(pc)
	cmp.w		d1,	d7
	bra.s	  .urow2
rowup	subq		#4,	d3
	bra	  .urow

	;(map[r].Y < dc.Y) jump clear?
urow2	blt	     2/x_midjmp(pc)
	;get first tile in row
	move.w	_TLV(a2,d3.w),	d4
	addi.w	       #18,	d4
	;find curr tile
utile	cmp.w	 _RX(a2,d4.w),	d0
	bgt.s	  .utiler
	;gap between tiles -> --row
	cmp.w	 _LX(a2,d4.w),	d0
	blt	  .rowup
	;hit ceiling, pole etc.
uhittl	move.w	  _Y(a2,d3.w),	d1
	push	d0
	move.w	#SND_FALL,	d0
	jsr	     1/play_snd(a5)
	pop			d0
	bsr	     2/x_midjmp(pc)
uhit2	cmpi.w	   #MIDJMP, _ST(a6)
	bne.s	  .uend
	;#MIDJMP -> end jump
	move.w		d4,	d5
	jsr	  2/tl_dispatch(pc)
uend	rts	
	;next tile -> end of row?
utiler	addi.w	       #18,	d4
	tst.w		 _LX(a2,d4.w)
	beq	  .rowup
	bra	  .utile


	;(+ve dY) DOWN
djump	move.w	   _RWP(a6),	d3
	tst.b		   _VYDR(a6)
	bpl.s	  .drow
	;peak of jump -> (++row)
dpeak	addq	       #4,	d3
	move.b	  #DOWN,  _VYDR(a6)
drow	move.w	  _Y(a2,d3.w),	d7
	cmp.w		d1,	d7
	bra.s	  .drow2
rowdown	addq		#4,	d3
	bra	  .drow

drow2	bgt	     2/x_midjmp(pc)
	move.w	_TLV(a2,d3.w),	d4
	beq	  .rowdown
	addi.w	       #18,	d4
dtile	cmp.w	 _RX(a2,d4.w),	d0
	bgt.s	  .dtiler
	cmp.w	 _LX(a2,d4.w),	d0
	blt	  .rowdown
	cmpi.w	  #$400, _TL(a2,d4.w)
	bge	  .rowdown
	;jump onto tile	
dhittl	move.w	  _Y(a2,d3.w),	d1
	push		d0
	move.w	#SND_FALL,	d0
	jsr	     1/play_snd(a5)
	pop			d0
	bsr.s	     2/x_midjmp(pc)
dhit2	cmpi.w	   #MIDJMP, _ST(a6)
	bne.s	  .dend
	move.w		d4,	d5
	jsr	  2/tl_dispatch(pc)
dend	rts	
dtiler	addi.w	       #18,	d4
	tst.w		 _LX(a2,d4.w)
	beq	  .rowdown
	bra	  .dtile
