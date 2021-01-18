; vi: syntax=asm68k

;:18ea			2/com_26()
;#JMPOFF state handler
;  args A6,A2/D4,D0/D1: as st_ladd()
;  48(a6).w	_VDIR {LEFT,RIGHT}
;  50(a6).l	_VAN8 (ani8v_t *)
;  54(a6).b	_VLJ  (bool)
;  55(a6).b	_VDR  row delta {-1,0?,+1}
;  56(a6).w	_VWX  wall.X (coord_t|0)

st_jmpoff:
	bclr.b	    #JMP,  _JOY(a6)
	move.w _JOYX(a6), _VDIR(a6)
	beq.s	  .shortj
	;long jump
longj	move.b	    #TRUE, _VLJ(a6)
ljmp	lea    2/ljmp_ani,	a3
	bra.s	  .jump2

shortj	clr.b		   _VLJ(a6)
	move.w _FACE(a6), _VDIR(a6)
	bne.s	  .short2
	;(facing FRONT)? -> RIGHT
	move.w	     #+8, _VDIR(a6)
short2	tst.w		  _JOYY(a6)
	bgt.s	  .djmp
	;normal jump
sjmp	lea	2/sjmp_ani,	a3
	bra.s	  .jump2
	;down (shortened) jump
djmp	lea	2/djmp_ani,	a3

jump2	move.w _VDIR(a6), _FACE(a6)
	move.l	     a3,  _VAN8(a6)
	move.w	#MIDJMP,    _ST(a6)
	subq.w	     #4,   _RWP(a6)
	move.b	    #-1,   _VDR(a6)
	move.w	     d4,	d5

	tst.w		  _VDIR(a6)
	bgt.s	  .rjmplp
	;jump LEFT -> search tiles
ljmplp	subi.w	    #18,	d5
	cmpi.w	    #W_, _TL(a2,d5.w)
	beq.s	  .lwall
	tst.l		 _LX(a2,d5.w) ;RX.
ltile	bne	  .ljmplp
	bra.s	  .nowall
	;hit left wall
lwall	move.w	_RX(a2,d5.w),	d7
	addq.w	       #1,	d7
	move.w	       d7, _VWX(a6)
	bra.s	  .tomidj
	
	;jump RIGHT
rjmplp	addi.w	    #18,	d5
	cmpi.w	    #W_, _TL(a2,d5.w)
	beq.s	  .rwall
	tst.l		 _LX(a2,d5.w)
rtile	bne	  .rjmplp
	bra.s	  .nowall
rwall	move.w	_LX(a2,d5.w),	d7
	subq.w	       #1,	d7
	move.w	       d7, _VWX(a6)
	bra.s	  .tomidj

	;start/end of row
nowall	clr.w		   _VWX(a6)
tomidj	nop	
	;..
	;[2/st_midjmp():198e]
