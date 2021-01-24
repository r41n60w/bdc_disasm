; vi: syntax=asm68k

;{ 2/proc126, 2/com_33, 10/proc327 }

;:1cae			2/proc129()
;Set up #FALL state (fall/land)
; -> called after #MIDJMP or #WHOA
;	arg A6:		(dc_t *)
;	    A2:		(map_t *)
;	    D0.w:  dc.X (coord_t)
;	    D1.w:    .Y (coord_t)

ch_fall:
	;#FALL(D1, 10, 0, N/A)
	move.w		d1, _VY0(a6)
	push		d0
	move.w	 #SND_LAND,	d0
	jsr	     1/play_snd(a5)
	pop			d0
	bra.s	  .fall2 ;2/jbox_fall():


;{ 2/proc113, 2/proc117, 14/proc357 }

;:1cc0			2/proc130()
;Fall to death -> #FALL

dy_fall:
	;#FALL(-200, 10, 0, N/A)
	move.w	    #-200, _VY0(a6)
	move.w	  #FALL, _ST(a6)
	clr.w		  _VFAL(a6)
	move.w	      #10, _VDY(a6)
	;offscreen (left)?
ledge	cmp.w	lscr_edge(a5),	d0
	bge.s	  .redge
	move.w	lscr_edge(a5),	d0
	bra.s	  .dyfall2
	;    "	   (right)?
redge	cmp.w	rscr_edge(a5),	d0
	ble.s	  .retdy
	move.w	rscr_edge(a5),	d0
dyfall2	move.w		d0,  _X(a6)
retdy	bra	  .endfall
	;[RTS]


;:1cf4			2/com_27()
;Fall/land inside jumpbox -> #FALL
;  args A6,A2,D0/D1: as st_fall()

jbox_fall:
	;#FALL(D1-31, 10, 0, N/A)
	move.w	       d1, _VY0(a6)
	subi.w	      #31, _VY0(a6)
	push		d0
	move.w	 #SND_LAND,	d0
	jsr	     1/play_snd(a5)
	pop			d0
	nop	

	;2/ch_fall() ENTRY POINT
fall2	move.w	  #FALL, _ST(a6)
	clr.w		  _VFAL(a6)
	move.w	      #10, _VDY(a6)
ledge2	cmp.w	lscr_edge(a5),	d0
	bge.s	  .redge2
	move.w	lscr_edge(a5),	d0
	addi.w	       #10,	d0
	move.w		d0,  _X(a6)
	bra.s	   2/st_fall(pc)

redge2	cmp.w	rscr_edge(a5),	d0
	ble.s	   2/st_fall(pc)
	move.w	rscr_edge(a5),	d0
	subi.w	       #10,	d0
	move.w		d0,  _X(a6)
	; .. st_fall()


; { 2/proc113, 2/proc126, 2/com_27 }

;48	 _VY0(a6).w: initial dc.Y/-200 
;50	 _VDY(a6).w: fall veloc (init +10)
;52	_VFAL(a6).w: fall type {0,1,2}
;54	_VSPR(a6).l: (spr_t *) NOT type 0!

;:1d42			2/com_28()
;:1e42			2/com_29()
;:1ebc			2/com_30()
;:1eea			2/com_31()
;:1f24			2/com_32()

;#FALL state handler
;  args A6,A2/D4,D0/D1: as st_jmpoff()

st_fall:
	;fall down (w/gravity)
	add.w	    _VDY(a6),	d1
	addq.w	       #8, _VDY(a6)
	clr.w			d2
	;get row for new pos
	move.w	   _RWP(a6),	d3
flrow	move.w	  _Y(a2,d3.w),	d7
	cmp.w		d1,	d7
	bra.s	  .flrow2
rowdown	addq.w		#4,	d3
	bra	  .flrow
	;path clear? -> [fall]
flrow2	bgt	  .bltfall
	;find row tile containing dc.X
	move.w	_TLV(a2,d3.w),	d4
	beq	  .rowdown
	addi.w		  #18,	d4
fltile	cmp.w	 _RX(a2,d4.w),	d0
	bgt.s	  .fltiler
	cmp.w	 _LX(a2,d4.w),	d0
	blt	  .rowdown
	;can't land on pole etc
	cmpi.w	  #$200, _TL(a2,d4.w)
	bge.s	  .fltiler
	;hit tile -> [land]
flhittl	move.w	  _Y(a2,d3.w),	d1
	bra.s	  .land
	;next tile
fltiler	addi.w	    #18,	d4
	tst.w		 _LX(a2,d4.w)
	beq	  .rowdown
	bra	  .fltile


land	move.w	       d1,   _Y(a6)
	move.w	       d4, _TLP(a6)
	move.w	       d3, _RWP(a6)
	;#F_DUEL (mace combat)?
	cmpi.w	#F_DUEL, _TL(a2,d4.w)
	bne.s	  .land2
	;D7/distance fallen = (Y-Yi)
duel	move.w	    _VY0(a6),	d7
	neg.w			d7
	add.w		d1,	d7
	;lethal fall?	     (> 80px)
	cmpi.w	       #80,	d7
	bgt	  .lethal
duel2	tst.w		  _FACE(a6)
	bgt.s	  .rduel
	;land facing LEFT/RIGHT
lduel	lea	2/lfall_ani,	a3
	bra.s	  .duel3
rduel	lea	2/rfall_ani,	a3
	subi.w	      #12,	d0
duel3	move.w	       d0,   _X(a6)
	move.l	       a3,  _V0(a6)
	jmp	      7/proc312(a5)


land2	cmpi.w	      #2, _VFAL(a6)
	bne.s	  .land3
	;type #2/[after hitting wall]
wall	move.w	    _VY0(a6),	d7
	neg.w			d7
	add.w		d1,	d7
	cmpi.w	       #80,	d7
	bgt	  .lethal
	;DIZZY, even when fall < 30px
wall2	tst.w		  _FACE(a6)
	bgt.s	  .rwall
lwall	lea	2/lfall_ani,	a3
	bra.s	  .wall3
rwall	lea	2/rfall_ani,	a3
	subi.w	     #12,	d0
	;don't auto X_EXIT
wall3	cmpi.w	#X_EXIT, _TL(a2,d4.w)
	bne.s	  .wall4
	;wall on right? -> (--tile)
rexit	cmpi.w	#W_,  18+_TL(a2,d4.w)
	bne.s	  .lexit
	subi.w	      #18,	d4
	move.w	       d4, _TLP(a6)
	bra.s	  .wall4
	;     on left? 	   (++tile)
lexit	cmpi.w	#W_, -18+_TL(a2,d4.w)
	bne.s	  .wall4
	addi.w	      #18,	d4
	move.w	       d4, _TLP(a6)
	;lose 15% health -> DIZZY
wall4	move.w	       d0,   _X(a6)
	move.w	   #DIZZY,  _ST(a6)
	move.l	      a3, _VANI(a6)
	subi.w	  #$f00, health(a5)
	jmp	     2/st_dizzy(pc)


	;:1e42		2/com_29()
	;swamp/forest ground? [die]
land3	cmpi.w	#F_B212, _TL(a2,d4.w)
	bne.s	  .land4
b212	clr.w		 health(a5)
	move.w	     d4,	d5
	jsr	  2/tl_dispatch(pc)
	addi.w	    #10,	d1
	bra	  .bltfall


	;#X_SFHS (false floor)?
land4	cmpi.w	#X_SFHS, _TL(a2,d4.w)
	bne.s	  .land5
sfhs	cmpi.w	  #-200,   _VY0(a6)
	beq.s	  .dead
	;alive -> <DUNJ>
sfhs2	move.w	  #SFHS,    _ST(a6)
	move.w	     #4,    _V0(a6)
	jmp	com_34
	;already dead
dead	jsr	    2/lose_life(pc)
	tst.w		  lives(a5)
gamover	blt	  .endfall
	sf.b		 new_rm(a5)
	bra	  .sfhs2

	
	;land on (normal) tile!
land5	move.w	    _VY0(a6),	d7
	neg.w			d7
	add.w		d1,	d7
	;squarely/fallen < 30px?
	ble.s	  .fallok
	cmpi.w	       #30,	d7
	blt.s	  .fallok
	;lethal fall?
	cmpi.w	       #80,	d7
	bgt.s	  .lethal
	; -> [concussed], -15% health
dizzy	move.w	 #DIZZY,    _ST(a6)
	lea	2/dfall_ani,	a3
	move.l	     a3,  _VANI(a6)
	subi.w	  #$f00, health(a5)
	jmp	     2/st_dizzy(pc)

	;:1ebc		2/com_30()
	;#6/death rattle
lethal	push		d0
	move.w	#SND_PLUMMET,	d0
	jsr	     1/play_snd(a5)
	pop			d0
	lea	2/fdie_ani,	a3
	clr.w		 health(a5)
	jmp	     2/st_death(pc)

	;#4/'whoa!' sound
fallok	push		d0
	move.w	 #SND_FALL,	d0
	jsr	     1/play_snd(a5)
	pop			d0
	; -> [tile landed on]
	move.w		d4,	d5
	jsr	  2/tl_dispatch(pc)
	jmp	  2/st_dispatch(pc)


	;:1eea		2/com_31()
	;blit falling spr
bltfall	move.w	       d4, _TLP(a6)
	move.w	       d3, _RWP(a6)
	move.w	       d1,   _Y(a6)
	subq	       #8,	d1
	movea.l	currpg(a5),	a0
	movea.l	 _SPRV(a6),	a4
blit2	tst.w		  _VFAL(a6)
	bne.s	  .vspr
	;type 0: #123/SPR_FALL <. >
fallspr	movea.l	  23*4(a4),	a1
	bra.s	  .blit3
	;"  1/2: #198/SPR_     <. >
vspr	move.w	   _FR(a6),	d2
	movea.l	 _VSPR(a6),	a1
blit3	jsr	     3/blit_spr(a5)
	;already dead?
	cmpi.w	    #-200, _VY0(a6)
	beq.s	  .endfall
	jmp	  2/dg_dispatch(pc)

	;:1f24		2/com_32()
endfall rts
