; vi: syntax=asm68k

;## :1dac  [below]	3/data129[] ##
;##	  cb_mzrathole()

;:1ca8			3/data128[]
;Mousehole (generator) obj func
;  arg A6(rathole_t *):  obj

cb_rathole:
	;reached max # mice?
	tst.w		     22(a6)
	ble	  .endrath
	subq.w		#1,  38(a6)
	bgt	  .endrath

	;spawn new rat	D7/(random)
mkmouse	jsr	       3/random(pc)
	move.w		d0,	d7
	moveq	       #54,	d0
	_NewPtr		  ,  CLEAR
	lea	3/cb_mouse,	a1
	move.l		a1, _CB(a0)
	;#21[34]/SPR_[LR]RAT<.4> 32x12px
	move.w	_LRAT(a6), 8+_LRAT(a0)
	move.w	_RRAT(a6), 8+_RRAT(a0)
	;start pos, @ hole
	move.w	_HOLX(a6), 8+_RATX(a0)
	move.w	_HOLY(a6), 8+_RATY(a0)

	clr.w		   8+20(a0)
	clr.w		   8+44(a0)
	move.l	_LSPR(a6), 8+_LSPR(a0)
	move.l	_RSPR(a6), 8+_RSPR(a0)
	move.w	      d7,	d6
	andi.w	  #$000f,	d6
	addq.w	      #4,	d6
	move.w	      d6,  8+18(a0)
	;(rathole_t *) this
	move.l	      a6,  8+22(a0)

	move.w	     26(a6), 8+26(a0)
	beq.s	0x1d42
	;states [#1-#4]
	move.w	   28(a6), 8+28(a0)
	move.w	   30(a6), 8+30(a0)
	move.w _RATDX(a6),  8+8(a0)
	;D7/(random): 1/3 chance
lpole	cmpi.w	    #$5555,	d7
	bhi.s	  .midpole
	move.w	     32(a6), 40(a0)
	bra.s	0x1d48
midpole	cmpi.w	    #$aaaa,	d7
	bhi.s	  .rpole
	move.w	     34(a6), 40(a0)
	bra.s	0x1d48
rpole	move.w	     36(a6), 40(a0)
	bra.s	0x1d48

;:1d42	state [#0]	-> [RIGHT]
	move.w	       #+2,  16(a0)

;:1d48
	move.l	qobj(a5), _NEXT(a0)
	move.l	     a0,   qobj(a5)
	;(--max rats), gen. interval
	subq.w	     #1,     22(a6)
	and.w	  20(a6),	d7
	add.w	  18(a6),	d7
	move.w	     d7,     38(a6)

	lea	  48(a0),	a0
	move.l	#$05000000,	d7
	jsr	0x3e64(pc)
	move.w		d0,   -(sp)
	move.w	       #70,	d0
	jsr	     1/play_snd(a5)
	move.w	       (sp)+,	d0
;:1d7a
endrath	rts


;:1dac		3/data129[]
;@<[WE]LAB> mousehole obj func
;  arg A6(rathole_t *):  obj

cb_mzrathole:
	;reached
	tst.w		     22(a6)
	ble	  .endmzrt
	subq.w		#1,  38(a6)
	bgt	  .endmzrt

	jsr	       3/random(pc)
	move.w		d0,	d7
	;check if onscreen
	movea.l	 currpg(a5),	a0
	move.w	     18(a0),	d2
	cmp.w	     36(a6),	d2
	bgt.s	0x1dee
	addi.w	      #512,	d2
	cmp.w	     32(a6),	d2
	blt.s	0x1dee

	move.w	     20(a0),	d3
	cmp.w	     30(a6),	d3
	bgt.s	0x1dee
	addi.w	      #300,	d3
	cmp.w	      2(a6),	d3
	bgt.s	0x1dfe
;:1dee
	;offscreen: just gen ivl
	and.w	     20(a6),	d7
	add.w	     18(a6),	d7
	move.w		d7,  38(a6)
	bra	  .endmzrt

;:1dfe
	moveq	       #54,	d0
	_NewPtr		  ,  CLEAR
	lea	0x1a48(pc),	a1
	move.l		a1, _CB(a0)
	move.w	     4(a6), 8+4(a0)
	move.w	     6(a6), 8+6(a0)
	move.w	     0(a6), 8+0(a0)
	move.w	     2(a6), 8+2(a0)
	clr.w		   8+20(a0)

	move.w	       #60,  52(a0)
	move.l	     10(a6), 18(a0)
	move.l	     14(a6), 22(a0)
	move.w		d7,	d6
	andi.w	    #$000f,	d6
	addq.w		#4,	d6
	move.w		d6,  26(a0)
	move.l		a6,  30(a0)
	move.w	        #1,  8+26(a0)
	move.w	     28(a6), 36(a0)
	move.w	     30(a6), 38(a0)
	move.w	      8(a6), 16(a0)

lmzpole	cmpi.w	    #$5555,	d7
	bhi.s	  .mmzpole
	move.w	     32(a6), 40(a0)
	bra.s	0x1e88
mmzpole	cmpi.w	    #$aaaa,	d7
	bhi.s	  .rmzpole
	move.w	     34(a6), 40(a0)
	bra.s	0x1e88
rmzpole	move.w	     36(a6), 40(a0)
	bra.s	0x1e88

;:1e82	[unused]
	move.w		#2,  16(a0)
;:1e88
	movea.l	 currpg(a5),	a2
	move.w	     20(a2),	d1
	cmp.w	     10(a0),	d1
	ble.s	0x1eb0
	cmp.w	     36(a0),	d1
	ble.s	0x1ea0
	move.w	     36(a0),	d1
;:1ea0
	move.w		d1,  10(a0)
	move.w	     40(a0),  8(a0)
	move.w		#2, 8+26(a0)
;:1eb0
	move.l	qobj(a5), _NEXT(a0)
	move.l	     a0,   qobj(a5)

	subq.w	     #1,     22(a6)
	and.w	  20(a6),	d7
	add.w	  18(a6),	d7
	move.w	     d7,     38(a6)
	lea	  48(a0),	a0
	move.l	#$05000000,	d7
	jsr	0x3e64(pc)
	move.w		d0,   -(sp)
	move.w	#SND_RAT,	d0
	jsr	     1/play_snd(a5)
	move.w	       (sp)+,	d0
;:1ee2
endmzrt	rts
