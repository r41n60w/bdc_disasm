; vi: syntax=asm68k

;{ 2/proc113 }

;:115e		2/com_11()
;Dead fall over belt edge -> (#FDBELT)
;	arg A6: (dc_t *)

dy_belt:
	;A3/(ani4v_t *) anim ptr
	movea.l	  _VANI(a6),	a3
	move.b	  _ASPR(a3),	d6 ;2
	ext.w			d6
	move.b	   _AFR(a3),	d7 ;3
	ext.w			d7
	
	;#130/SPR_LTRIP<.7> 48x42px
ltrip	cmpi.w	     #(7*4),	d6
	bne.s	  .rtrip
	clr.w			d2
	clr.w		     58(a6)
	bra.s	  .chbelt2

	;#131/SPR_RTRIP<.7> 48x42px
rtrip	cmpi.w	     #(8*4),	d6
	bne.s	  .bdeath2
	move.w		#4,	d2
	move.w		#1,  58(a6)
	bra.s	  .chbelt2

	;#137/SPR_BDEATH2<.2> 64x9px
bdeath2	cmpi.w	    #(14*4),	d6
	bne.s	  .bdeath
	cmpi.w		#2,	d7
	bgt.s	lfb_3
	;[.012]
	move.w		#1,	d2
	clr.w		     58(a6)
	bra.s	  .chbelt2
	;>[.2]
lfb_3	move.w		#3,	d2
	move.w		#1,  58(a6)
	bra.s	  .chbelt2

	;#136/SPR_BDEATH<.8> 48x34px
bdeath	cmpi.w	    #(13*4),	d6
	bne.s	  .othersp
	cmpi.w		#0,	d7
	bne.s	lfb_5
	;[.0]
	move.w		#1,	d2
	clr.w		     58(a6)
	bra.s	  .chbelt2
	;[.1-7]
lfb_5	move.w		#3,	d2
	move.w		#1,  58(a6)
	bra.s	  .chbelt2

	; (D6 == 0|4):
	;#123/SPR_FALL<.2> 32x48 OR
	;#124/SPR_FDEATH<.4> 32x25px
othersp	move.w		#2,	d2
	move.w		#2,  58(a6)
	nop	

chbelt2	move.w _F0(a2,d4.w), 50(a6)
	move.w		d2, _FR(a6)
	move.w   _F1(a2,d4.w),	d0
	move.w		d0,  _X(a6)
	move.w	   #FDBELT, _ST(a6)
	move.w		#1,  48(a6)
	bra	    2/st_fdbelt(pc)
data94	rts

;:1202			2/lfb_8()
;#FDBELT (belt dead fall) state handler
;
;48.w	dc.vc	(ivl_t)  frame count
;50.w	  .vdir (xoff_t) LEFT|RIGHT
;58.w	  .vfr0 (int16_t) fall frame #

st_beltd:
	movea.l	 currpg(a5),	a0
	move.w	     _X(a6),	d0
	move.w	     _Y(a6),	d1
	tst.w	     50(a6)
	blt.s	  .lbeltd
	;#191/SPR_RBELTD<.5> 48x31px
rbeltd	movea.l	91*4+spr(a5),	a1
	bra.s	  .bltbelt
	;#192/SPR_LBELTD<.5> 48x31px
lbeltd	movea.l	92*4+spr(a5),	a1

bltbelt	move.w	     _FR(a6),	d2
	addi.w	        #31,	d1
	jsr	     3/blit_spr(a5)

fdbelt2	subq.w		 #1, 48(a6)
	bgt.s	  .endbelt
	tst.w		     50(a6)
	blt.s	  .lbelt2
	;#193/SPR_RBELT2<.3> 32x53px
rbelt2	movea.l	93*4+spr(a5),	a1
	addi.w		#22,	d0
	bra.s	  .fdbelt3
	;#194/SPR_LBELT2<.3> 32x53px
lbelt2	movea.l	94*4+spr(a5),	a1
	addi.w	        #-3,	d0

fdbelt3	move.w		d0,  _X(a6)
	addi.w	       #19,	d1
	move.w		d1,  _Y(a6)
	move.l		a1,  54(a6)
	move.w	     #-200,  48(a6)
	move.w	     #FALL, _ST(a6)
	move.w	    58(a6), _FR(a6)
	move.w	       #1,   52(a6)
	move.w	      #10,   50(a6)
	addq.w	       #4, _RWP(a6)
endbelt	rts	
