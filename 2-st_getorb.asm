; vi: syntax=asm68k

;:2502			2/com_35()
;:259c			2/com_36()
;:2762			2/com_37()

;#GETORB (orb @ square) state handler
; [ st_ladd() -> tile #U_LDDO ] 
;  arg A6(dc_t *), D0/D1([xy]pos_t)
;  arg A2(map_t *),   D4(tloff_t) [U_LDDO]

st_getorb:
	movea.l	 currpg(a5),	a0
	move.w	     48(a6),	d3
	addq.w		#3,  48(a6)
	;(struct ani3x
	lea	 2/data106,	a4 ;[72]
	adda.w		d3,	a4
	move.b	       (a4)+,	d3
	bge	com_36

	;sound #11: "yeah!"
	move.w		d0,   -(sp)
	move.w	 #SND_YEAH,	d0
	jsr	     1/play_snd(a5)
	move.w	       (sp)+,	d0

	move.b	 15(a2,d4.w),	d6
	bclr.b	    d6,  sqorbf(a5)
	movem.l	 d0-d3/a0-a1, -(sp)
	move.w	    #2,		d0
	jsr	      3/proc177(a5)

	move.w	curr_rm(a5),	d7
	cmpi.w	     #CATC,	d7
	bne.s	lgg_1
	move.w	       #52,	d0
	bra.s	lgg_5
lgg_1	cmpi.w	     #ETOP,	d7
	bne.s	lgg_2
	move.w	       #84,	d0
	bra.s	lgg_5
lgg_2	cmpi.w	     #WTOP,	d7
	bne.s	lgg_3
	move.w	       #72,	d0
	bra.s	lgg_5
lgg_3	cmpi.w	     #SWAM,	d7
	bne.s	lgg_4
	move.w	       #96,	d0
	bra.s	lgg_5
lgg_4	cmpi.w	     #FORE,	d7
	bne.s	lgg_6
	move.w	      #100,	d0

lgg_5	jsr	      3/proc209(a5)
lgg_6	movem.l	(sp)+, d0-d3/a0-a1
	move.w	#U_LDD,  _TL(a2,d4.w)
	clr.w		     50(a6)
	move.w	     #LADD, _ST(a6)
	move.w	     _X(a6),	d0
	move.w	     _Y(a6),	d1
	jmp	      2/st_ladd(pc)


;:259c			2/com_36()

	;#176/SPR_GETORB3<.8> 32x35px
com_36	lea    76*4+spr(a5),	a1
	ext.w		d3
	adda.w		d3,	a1
	movea.l	       (a1),	a1
	asr.w		#1,	d3
	lea	 2/getorb_dy,	a3 ;[3]
	add.w	   0(a3,d3.w),	d1
	subq.w		#1,	d0

	move.b	       (a4)+,	d2
	ext.w			d2
	cmpi.w		#6,	d2
	bne.s	lgh_1
	btst.b	      #ORB, dcf(a5)
	beq.s	lgh_1

	movem.l d0-d2/d4/a0-a1, -(sp)
	move.w	      d4,	d2
	move.w	 _DRW(a6),	d3
	addi.w	     #17,	d1
	jsr	      3/proc190(a5)
	movem.l	(sp)+, d0-d2/d4/a0-a1

	clr.w		 health(a5)
	move.w	 #BLASTD,   _ST(a6)
	move.l	      a1, _DSPR(a6)
	move.w	      d1,    _Y(a6)
	move.w	      d2,   _FR(a6)
	move.w	      #5,    48(a6)
	move.w	     #15,    50(a6)
	jmp	    2/st_blastd(pc)

lgh_1	movem.l	d0-d2/a1,-(sp)
	move.b	(a4)+,d7
	ext.w			d7
	blt.s	lgh_3
	cmpi.w	#64,d7 ; '@'
	blt.s	lgh_2
	subi.w	#64,d7
	;sound #59: orb 'woow..'
	move.w		d0,   -(sp)
	move.w	  #SND_ORB,	d0
	jsr	     1/play_snd(a5)
	move.w	       (sp)+,	d0

lgh_2	move.w		d7,	d2
	;#234/SPR_ORBSQ<.6> 48x58px
	movea.l	134*4+spr(a5),	a1
	move.w	     _X(a6),	d0
	move.w	     _Y(a6),	d1
	subi.w	       #10,	d0
	subi.w	       #17,	d1
	sub.w	  _WINX(a0),	d0
	sub.w	  _WINY(a0),	d1
	jsr	      3/proc143(a5)
lgh_3	movem.l	   (sp)+, d0-d2/a1
	jsr	     3/blit_spr(a5)
	tst.w			d7
	blt.s	lgh_4

	;#236/SPR_ORBSQ2<.6> 32x17px
	movea.l	136*4+spr(a5),	a1
	move.w		d7,	d2
	addq.w		#7,	d0
	addq.w		#1,	d1
	jsr	     3/blit_spr(a5)
	bra	com_37

lgh_4	cmpi.w	       #-2,	d7
	bne	com_37
	movea.l	  sqorb(a5),	a0
	addq.w		#8,	a0
	clr.l		 -8+_CB(a0)
	;A0/void (*cb_func)(void)
	movea.l	getorb_cb(a5),	a0
	cmpa.w	       #NULL,	a0
	beq	com_37
	jsr		       (a0)
	bra	com_37


;:2684			2/data105[]
getorb_dy:
	dc.w	   +2,  -17,  -13

;:268a			2/data106[]
;(struct ani3f_t)[72]
getorb_ani:
	dc.w	  0,   0,  -1
	dc.w	  0,   0,  -1
	dc.w	  0,   1,  -2
	dc.w	  0,   1,  -1
	dc.w	  8,   0,  -1
	dc.w	  8,   0,  -1
	dc.w	  4,   0,  -1
	dc.w	  4,   0,  -1
	dc.w	  4,   1,  -1
	dc.w	  4,   1,  -1
	dc.w	  4,   2,  -1
	dc.w	  4,   2,  -1
	dc.w	  4,   3,  -1
	dc.w	  4,   3,  -1
	dc.w	  4,   4,  -1
	dc.w	  4,   4,  -1
	dc.w	  4,   5,   0
	dc.w	  4,   5,  65
	dc.w	  4,   5,   2
	dc.w	  4,   5,   3
	dc.w	  4,   5,   4
	dc.w	  4,   5,   5
	dc.w	  4,   5,   5
	dc.w	  4,   5,   5
	dc.w	  4,   5,   4
	dc.w	  4,   5,   3
	dc.w	  4,   5,   2
	dc.w	  4,   5,   1
	dc.w	  4,   5,   0
	dc.w	  4,   5,   0
	dc.w	  4,   5,  65
	dc.w	  4,   5,   2
	dc.w	  4,   5,   3
	dc.w	  4,   5,   4
	dc.w	  4,   5,   5
	dc.w	  4,   5,   5
	dc.w	  4,   5,   5
	dc.w	  4,   5,   4
	dc.w	  4,   5,   3
	dc.w	  4,   5,   2
	dc.w	  4,   5,   1
	dc.w	  4,   5,   0
	dc.w	  4,   5,   0
	dc.w	  4,   5,   1
	dc.w	  4,   5,   2
	dc.w	  4,   5,   3
	dc.w	  4,   5,   4
	dc.w	  4,   5,   5
	dc.w	  4,   5,   5
	dc.w	  4,   5,   5
	dc.w	  4,   5,   4
	dc.w	  4,   5,   3
	dc.w	  4,   5,   2
	dc.w	  4,   5,   1
	dc.w	  4,   5,   0
	dc.w	  8,   1,  -1
	dc.w	  8,   2,  -1
	dc.w	  8,   3,  -1
	dc.w	  8,   4,  -1
	dc.w	  0,   2,  -1
	dc.w	  0,   2,  -1
	dc.w	  0,   3,  -1
	dc.w	  0,   3,  -1
	dc.w	  0,   4,  -1
	dc.w	  0,   4,  -1
	dc.w	  0,   5,  -1
	dc.w	  0,   5,  -1
	dc.w	  0,   6,  -1
	dc.w	  0,   6,  -1
	dc.w	  0,   7,  -1
	dc.w	  0,   7,  -1
	dc.w	END,   0,   0


;:2762		2/com_37()
endorb	rts
