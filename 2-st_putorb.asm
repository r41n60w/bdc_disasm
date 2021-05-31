; vi: syntax=asm68k

;:2764		2/data107[]
;#PUTORB (orb -> plinth) state handler
;  [PL_ORBX tile]

st_putorb:
	movea.l	 currpg(a5),	a0
	move.w	     48(a6),	d3
	jmp	      putorbjt(d3.w)
;:2770	putorbjt[2]
	jmp	0x2778(pc)
	jmp	0x27a6(pc)

;:2778
	btst.b	    #LOW,  _DCF(a6)
	bne.s	0x27a2
	btst.b	    #ACT, _JOYF(a6)
	beq.s	0x27a2
	btst.b	    #ORB,  _DCF(a6)
	beq.s	0x27a2
	bclr.b	    #ORB,  _DCF(a6)
	move.w	    #1*4,  _VFN(a6)
	clr.w		     50(a6)
	bra.s	0x27a6
;:27a2
	jmp	   2/st_default(pc)



;:27a6
	move.w	     50(a6),	d3
	addq.w		#3,  50(a6)
	lea	2/putorb_ani,	a4
	adda.w		d3,	a4
	;A4/(ani3o_t *) anim ptr
	move.b	       (a4)+,	d3
	bge.s	0x27e8
	;-1/[END]: set orb flag
	move.w	  10(a2,d4.w),	d6
	bset.b	     d6, plorbf(a5)
	move.w	     #2,	d0
	jsr		 3/p178(a5) ;2d12
	;all 5 orbs placed?
	cmpi.b	#%00011111, plorbf(a5)
	bne	0x27da
	st	       opengate(a5)
	st	        dragona(a5)
;:27da
	move.w	    #F_, _TL(a2,d4.w)
	clr.w		    _ST(a6)
	jmp	   2/st_default(pc)

;:27e8
	;#179/SPR_PUTORB1<.7> 32x40px
	lea	79*4+spr(a5),	a1
	ext.w		d3
	adda.w		d3,	a1
	movea.l	       (a1),	a1
	;get ∆.Y for this spr, .X
	asr.w		#1,	d3
	add.w	2/putorb_dy(d3.w), d1
	move.w	   6(a2,d4.w),	d0

	move.b	       (a4)+,	d2
	ext.w			d2
	jsr	     3/blit_spr(a5)

	move.b	       (a4)+,	d7
	ext.w			d7
	blt.s	0x2832
	cmpi.w	       #64,	d7
	blt.s	0x2820
	;[64,65,66]
	subi.w	       #64,	d7
	;sound #59/orb pulse
	move.w		d0,   -(sp)
	move.w	  #SND_ORB,	d0
	jsr	     1/play_snd(a5)
	move.w	       (sp)+,	d0
;:2820
	;#236/SPR_ORBSQ2<.6> 32x17px
	movea.l	136*4+spr(a5),	a1
	move.w		d7,	d2
	addq.w		#7,	d0
	addq.w		#1, 	d1
	jsr	     3/blit_spr(a5)
	bra	  .endorbx

;:2832
	;(< 0)
	cmpi.w	       #-2,	d7
	bne.s	  .endorbx
	move.w	   6(a2,d4.w),	d0
	move.w	   8(a2,d4.w),	d1
	clr.w			d2
	;#235/SPR_ORB<.1> 32x26px
	movea.l	135*4+spr(a5),	a1
	jsr		 3/p175(a5) ;2c48
	;sound #80/orb end tune
	move.w		d0,   -(sp)
	move.w	 #SND_ORB2,	d0
	jsr	     1/play_snd(a5)
	move.w	       (sp)+,	d0
	bra	  .endorbx


;:285c		yoff_t[3]
putorb_dy:
	dc.w	   0, -17,  -7


;:2862		struct ani3o_t[53]
putorb_ani:
	dc.b	   0,   0,  -1
	dc.b	   0,   0,  -1
	dc.b	   0,   1,  -1
	dc.b	   0,   1,  -1
	dc.b	   0,   0,  -1
	dc.b	   0,   0,  -1
	dc.b	   0,   2,  -1
	dc.b	   0,   2,  -1
	dc.b	   0,   2,  -1
	dc.b	   0,   2,  -1
	
	dc.b	   0,   3,  -1
	dc.b	   0,   3,  -1

	dc.b	   8,   0,  -1
	dc.b	   8,   0,  -1
	dc.b	   8,   1,  -1
	dc.b	   8,   1,  -1
	dc.b	   4,   0,  -1
	dc.b	   4,   0,  -1
	dc.b	   4,   1,  -1
	dc.b	   4,   1,  -1
	dc.b	   4,   2,  -1
	dc.b	   4,   2,  -1

	dc.b	   4,   3,  -1
	dc.b	   4,   3,   0

	dc.b	   4,   3,  65
	dc.b	   4,   3,   2
	dc.b	   4,   3,   3
	dc.b	   4,   3,   4
	dc.b	   4,   3,   5
	dc.b	   4,   3,   4
	dc.b	   4,   3,   3
	dc.b	   4,   3,   2
	dc.b	   4,   3,   1
	dc.b	   4,   3,   0

	dc.b	   4,   3,  65
	dc.b	   4,   3,   2
	dc.b	   4,   3,   3
	dc.b	   4,   3,   4
	dc.b	   4,   3,   5
	dc.b	   4,   3,   4
	dc.b	   4,   3,   3
	dc.b	   4,   3,   2
	dc.b	   4,   3,   1
	dc.b	   4,   3,   0

	dc.b	   8,   2,  -1
	dc.b	   8,   2,  -2
	dc.b	   0,   4,  -1
	dc.b	   0,   4,  -1
	dc.b	   0,   5,  -1
	dc.b	   0,   5,  -1
	dc.b	   0,   6,  -1
	dc.b	   0,   6,  -1

	dc.b	 END,   0,   0
	dc.b	   0

;:2902
endorbx	rts
