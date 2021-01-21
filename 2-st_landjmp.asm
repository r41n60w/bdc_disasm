; vi: syntax=asm68k

;{ 2/proc126, 2/com_33, 10/proc327 }

;:1cae			2/proc129()
;Play SND_xxx, -> #LANDJMP
;	arg A6:		(dc_t *)
;	    A2:		(map_t *l
;	    D0.w:  dc.X (coord_t)
;	    D1.w:    .Y (coord_t)

proc129:
	;#LANDJMP(D1, 10, 0, N/A)
	move.w		d1, _V0(a6)
	push		d0
	move.w	 #SND_LAND,	d0
	jsr	     1/play_snd(a5)
	pop			d0
	bra.s	  .land2 ;2/land_jbox():


;{ 2/proc113    2/proc117   14/proc357 }

;:1cc0			2/proc130()

proc130:
	;#LANDJMP(-200, 10, 0, N/A)
	move.w	     #-200, _V0(a6)
	move.w	  #LANDJMP, _ST(a6)
	clr.w		    _V2(a6)
	move.w	       #10, _V1(a6)
ledge	cmp.w	lscr_edge(a5),	d0
	bge.s	  .redge
	;offscreen (left)
	move.w	lscr_edge(a5),	d0
	bra.s	  .fall2

redge	cmp.w	rscr_edge(a5),	d0
	ble.s	  .endfall
	;    "	   (right)
	move.w	rscr_edge(a5),	d0
fall2	move.w		d0,  _X(a6)
endfall	bra	  .endland
	;[RTS]


; { 2/proc127 }

;:1cf4			2/com_27()
;Land inside jumpbox -> #LANDJMP
;  args A6,A2,D0/D1: as st_landjmp()
land_jbox:
	;#LANDJMP(D1-31, 10, 0, N/A)
	move.w		d1, _V0(a6)
	subi.w	       #31, _V0(a6)
	push		d0
	move.w	 #SND_LAND,	d0
	jsr	     1/play_snd(a5)
	pop			d0
	nop	

land2	move.w	  #LANDJMP, _ST(a6)
	clr.w		    _V2(a6)
	move.w	       #10, _V1(a6)
loffscr	cmp.w	lscr_edge(a5),	d0
	bge.s	  .roffscr
	;offscreen (left)
	move.w	lscr_edge(a5),	d0
	addi.w	       #10,	d0
	move.w		d0,  _X(a6)
	bra.s	   2/st_landjmp(pc)

roffscr	cmp.w	rscr_edge(a5),	d0
	ble.s	   2/st_landjmp(pc)
	;    "     (right)
	move.w	rscr_edge(a5),	d0
	subi.w	       #10,	d0
	move.w		d0,  _X(a6)
	; .. st_landjmp()


; { 2/proc113, 2/proc126, 2/com_27 }

;:1d42				2/com_28()
;#LANDJMP state handler
;  args A6,A2/D4,D0/D1: as st_jmpoff()
;	_V0(a6).w: 
;	_V1(a6).w:
;	_V2(a6).w:
;	_V3(a6).l:
st_landjmp:
	;( ,+10)
	add.w	    _V1(a6),	d1
	addq.w		#8, _V1(a6)
	clr.w			d2
	move.w	   _RWP(a6),	d3

ldrow	move.w	  _Y(a2,d3.w),	d7
	cmp.w		d1,	d7
	bra.s	  .ldrow2
rowdown	addq.w		#4,	d3
	bra	  .ldrow

ldrow2	bgt	com_31
	move.w	_TLV(a2,d3.w),	d4

	beq	  .rowdown
	addi.w		  #18,	d4
ldtile	cmp.w	 _RX(a2,d4.w),	d0
	bgt.s	  .ldtiler
	cmp.w	 _LX(a2,d4.w),	d0
	blt	  .rowdown
	cmpi.w	  #$200, _TL(a2,d4.w)
	bge.s	  .ldtiler
ldgottl	move.w	  _Y(a2,d3.w),	d1
	bra.s	lfv_11

ldtiler	addi.w	       #18,	d4
	tst.w		 _LX(a2,d4.w)
	beq	  .rowdown
	bra	  .ldtile

lfv_11	move.w	       d1,   _Y(a6)
	move.w	       d4, _TLP(a6)
	move.w	       d3, _RWP(a6)
	cmpi.w	#F_DUEL, _TL(a2,d4.w)
	bne.s	lfv_14
	move.w	    _V0(a6),	d7
	neg.w			d7
	add.w		d1,	d7
	cmpi.w	       #80,	d7
	bgt	  .lethal

	tst.w		  _FACE(a6)
	bgt.s	lfv_12
	lea	2/lfall_ani,	a3
	bra.s	lfv_13
lfv_12	lea	2/rfall_ani,	a3
	subi.w	       #12,	d0
lfv_13	move.w		d0,  _X(a6)
	move.l		a3, _V0(a6)
	jmp	      7/proc312(a5)

lfv_14	cmpi.w		#2, _V2(a6)
	bne.s	com_29

	move.w	    _V0(a6),	d7
	neg.w			d7
	add.w		d1,	d7
	;lethal fall?
	cmpi.w	       #80,	d7
	bgt	  .lethal

	;DIZZY
	tst.w		  _FACE(a6)
	bgt.s	lfv_15
	lea	2/lfall_ani,	a3
	bra.s	lfv_16
lfv_15	lea	2/rfall_ani,	a3
	subi.w	     #12,	d0
lfv_16	cmpi.w	#X_EXIT, _TL(a2,d4.w)
	bne.s	lfv_18
	cmpi.w	#W_,  18+_TL(a2,d4.w)
	bne.s	lfv_17
	subi.w	      #18,	d4
	move.w	       d4, _TLP(a6)
	bra.s	lfv_18
lfv_17	cmpi.w	#W_, -18+_TL(a2,d4.w)
	bne.s	lfv_18
	addi.w	      #18,	d4
	move.w	       d4, _TLP(a6)
lfv_18	move.w	       d0,   _X(a6)
	move.w	   #DIZZY,  _ST(a6)
	move.l	       a3,  _V0(a6)
	;lose 15% health
	subi.w	  #$f00, health(a5)
	jmp	     2/st_dizzy(pc)


;{ 2/com_28 }

;:1e42				2/com_29()

com_29	cmpi.w	#F_B212, _TL(a2,d4.w)
	bne.s	lfx_1
	;#F_B212 (swamp/forest ground) die
	clr.w		 health(a5)
	move.w	     d4,	d5
	jsr	  2/tl_dispatch(pc)
	addi.w	    #10,	d1
	bra	com_31

lfx_1	cmpi.w	#X_SFHS, _TL(a2,d4.w)
	bne.s	lfx_4
	;#X_SFHS: fall thru to <DUNJ>
	cmpi.w	#-200, _V0(a6)
	beq.s	lfx_3
lfx_2	move.w	#SFHS, _ST(a6)
	move.w	#4, _V0(a6)
	jmp	com_34
	;already dead, respawn
lfx_3	jsr	    2/lose_life(pc)
	tst.w		  lives(a5)
gamover	blt	  .endland
	sf.b		 new_rm(a5)
	bra	lfx_2

lfx_4	move.w	    _V0(a6),	d7
	neg.w			d7
	add.w		d1,	d7
	ble.s	  .fallok
	cmpi.w	       #30,	d7
	blt.s	  .fallok
	cmpi.w	       #80,	d7
	bgt.s	  .lethal
	;DIZZY
	move.w	 #DIZZY,    _ST(a6)
	lea	2/dfall_ani,	a3
	move.l	     a3,  _VANI(a6)
	subi.w	  #$f00, health(a5)
	jmp	     2/st_dizzy(pc)


;{ 2/com_28     2/com_29 } 

;:1ebc				2/com_30()
;(#LANDJMP) [non/]lethal fall

	;'eee!'/death rattle (#6)
lethal	push		d0
	move.w	#SND_PLUMMET,	d0
	jsr	     1/play_snd(a5)
	pop			d0
	lea	2/fdie_ani,	a3
	clr.w		 health(a5)
	jmp	proc113
	;'whoa!'/falling sound (#4)
fallok	push		d0
	move.w	 #SND_FALL,	d0
	jsr	     1/play_snd(a5)
	pop			d0
	move.w		d4,	d5
	jsr	  2/tl_dispatch(pc)
	jmp	  2/st_dispatch(pc)


;  { 2/com_28     2/com_29 }

;:1eea				2/com_31()

com_31	move.w	       d4, _TLP(a6)
	move.w	       d3, _RWP(a6)
	move.w	       d1,   _Y(a6)
	subq	       #8,	d1
	movea.l	currpg(a5),	a0
	movea.l	 _SPRV(a6),	a4
	tst.w		    _V2(a6)
	bne.s	lfy_1
	;{0}: #123/SPR_ <. >
	movea.l	  23*4(a4),	a1
	bra.s	lfy_2
	;{2}: #198/SPR_ <. >??
lfy_1	move.w	   _FR(a6),	d2
	movea.l	   _V3(a6),	a1
lfy_2	jsr	     3/blit_spr(a5)

	cmpi.w	     #-200, _V0(a6)
	beq.s	  .endland
	jmp	  2/dg_dispatch(pc)


; {  2/proc130    2/com_29     2/com_31 }

;:1f24				2/com_32()
endland rts
