; vi: syntax=asm68k

;{ 9/proc325, 12/proc345, 13/proc355 }

;:1ee4		3/proc165()
;Create a bat
;	arg D0(xpos_t):  bat.X pos
;	arg D1(ypos_t):   " .Y
;	arg D2(ivl_t): min snd ivl
;	arg D3(uint16_t): snd ivl mask
;	arg D4(ivl_t):   wake ivl?
;	arg D5(ypos_t):  top bound
;	arg D6(ypos_t):  btm bound

mk_bat:
	movem.w	      d0-d2,  -(sp)
	moveq	        #36,	d0
  	_NewPtr		   , CLEAR
	movem.w	      (sp)+, d0-d2
	lea	3/cb_bat,	a1
	move.l		a1, _CB(a0)
	move.w		d0,   8(a0)
	move.w		d1,  10(a0)
	clr.w		     12(a0)
	move.w		d2,  22(a0)
	move.w		d3,  24(a0)
	move.w		d2,  26(a0)
	move.w		d4,  30(a0)
	clr.w		     14(a0)
	clr.w		     16(a0)
	;state [BATNORM]
	clr.w		     28(a0)
	;#212/SPR_BAT<.6> 24x16px
	move.l 112*4+spr(a5),18(a0)
	move.w	     d5,     32(a0)
	move.w	     d6,     34(a0)
	move.l	qobj(a5), _NEXT(a0)
	move.l	     a0,   qobj(a5)
	rts	
