; vi: syntax=asm68k

; { 2/com_15, 7/proc315 }

;:0ef0			2/proc120()
;Move left to adjacent tile
;	arg A6:		(dc_t *)
;	    A2:		(map_t *)
;	    D4.w:  tile	(off_t)
;	    D0.w:  dc.X	(coord_t)
;	    D1.w:   ".Y	(coord_t)

tl_ladj:
	;D5/left adjacent (--tlp)
	move.w		d4,	d5
	subi.w	       #18,	d5
	move.w	 _RX(a2,d5.w),	d6
	addq.w		#1,	d6
	cmp.w	 _LX(a2,d4.w),	d6
	beq	  .ladj2
	;gap on left -> fall down
lgap	jmp	      2/proc131(pc)

ladj2	cmpi.w	#F_LAND, _TL(a2,d5.w)
	bne.s	  .ladj3
	;#F_LAND[ing]: stop at edge
lland	move.w	 _LX(a2,d4.w),	d0

lstop	move.w		d0,  _X(a6)
	clr.w	          _JOYX(a6)
	rts	

ladj3	cmpi.w	    #W_, _TL(a2,d5.w)
	bne.s	  .ldispat
	;#W_: stumble against wall
lwall	lea	2/lwfall_ani,	a3 ;1ef
	move.w	  #DIZZY,   _ST(a6)
	move.l	      a3, _VANI(a6)
	;-15% health, stop at (LEdge-3,Y)
lwalll	subi.w #(15<<8), health(a5)
	move.w	 _LX(a2,d4.w),	d0
	subq.w		#3,	d0
	cmpi.w	#F_DUEL, _TL(a2,d4.w)
	bne	  .lstop
	;#F_DUEL -> nearest to opponent
lduel	pea	      7/proc312(a5)
	bra	  .lstop
	;(new tile -> tlp)	
ldispat	bra	  2/tl_dispatch(pc)
