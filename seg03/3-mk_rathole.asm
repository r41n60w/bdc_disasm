; vi: syntax=asm68k

;{ 12/proc345 }

;[also:	   mk_ratholev(rathole_t *), ]
;[	  mk_mzrathole(rathole_t *); ]

;:19c6		3/proc162()
;Create a mouse hole (generator) 
;	-> cb_rathole()
;	arg D0(xpos_t):	hole.X pos
;	arg D1(ypos_t):	hole.Y  "
;	arg D2(xpos_t):	L bound  (.X)
;	arg D3(xpos_t): R bound
;	arg D4(uint16_t):  respawn mask
;	arg D5(ivl_t):   min.  "   ivl.
;	arg D6(int16_t): # rats max.

mk_rathole:
	move		d0,	d7
	moveq	       #54,	d0
	_NewPtr 	  ,  CLEAR
	lea	3/cb_rathole,	a1
	move.l		a1,   4(a0)

	move.w	   d7,  8+_HOLX(a0)
	move.w	   d1,  8+_HOLY(a0)
	clr.w	       8+_RATDX(a0)
	move.w	   d2,  8+_LRAT(a0)
	move.w	   d3,  8+_RRAT(a0)
	move.w	   d4,     8+20(a0)
	move.w	   d5,     8+18(a0)
	clr.w		   8+38(a0)
	;#213/SPR_LRAT<.4> 32x12px
	;#214/SPR_RRAT<.4> 32x12px
	move.l 113*4+spr(a5), 8+10(a0)
	move.l 114*4+spr(a5), 8+14(a0)
	move.w	   d6,     8+22(a0)
	;initial state #0
	clr.w		   8+26(a0)
	move.w	  #-1,     8+28(a0)

	move.l	qobj(a5), _NEXT(a0)
	move.l	     a0,   qobj(a5)
	rts	


;{ 9/proc325, 11/proc340, 14/proc359 } 

;:1a18		3/proc163()

mk_ratholev:
	movea.l	a0,a2
	moveq	#54,d0
	_NewPtr ,CLEAR

	lea	data128,a1
	move.l	a1,4(a0)
	moveq	#20,d0
	movea.l	a0,a1
	addq	#8,a1
lhl_1	move	(a2)+,(a1)+
	dbra	d0,lhl_1
	move.l	glob28(a5),18(a0)
	move.l	glob29(a5),22(a0)
	move.l	glob197(a5),(a0)
	move.l	a0,glob197(a5)
	rts	


; { 18/ }

;:1d7c		3/proc164()

mk_mzrathole:
	movea.l	a0,a2
	moveq	#54,d0
	_NewPtr ,CLEAR
	lea	data129,a1  ; len= 312
	move.l	a1,4(a0)
	moveq	#20,d0
	movea.l	a0,a1
	addq	#8,a1
lhm_1	move	(a2)+,(a1)+
	dbra	d0,lhm_1
	move.l	glob28(a5),18(a0)
	move.l	glob29(a5),22(a0)
	move.l	glob197(a5),(a0)
	move.l	a0,glob197(a5)
	rts	
