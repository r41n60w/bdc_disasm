; vi: syntax=asm68k
 
CB_X	equ	 +0	   ;(px_t).w
CB_Y	equ	 +2	   ;(py_t).w
CB_SPR	equ	 +4    ;(Sprite *).L
CB_FRC	equ	 +8	  ;(short).w
CB_FR	equ	+10	;(frame_t).W

END	equ	-1

;{ 02/dg_dispatch
;  07/st_mace }

;	$622(A5) ->07/proc316():0f86
;Create falling club
;   arg A1.L(Sprite *): club sprite
;   arg	A6.L(Hero *):	player obj
;   arg D0.W(px_t):	club.X
;   arg D1.W(py_t):	 "  .Y
;   arg D2.W(frame_t):	frame #
;   ret A0.L(Obj *):	club obj
;	D5-D7,A0,A4 preserved

new_dropclub:
	movem.l	d5-d7/a0/a4,  -(sp)
	movea.l		a1,	a4
	move.w		d0,	d6
	move.w		d1,	d7
;	move.w		d2,	d5
	moveq	    #(8+12),	d0
	_NewPtr 	  ,  CLEAR
	lea    07/run_dropclub, a1
	move.l	   a1,     _RUN(a0)
	move.w	   d6, 8+CB_X  (a0)
	subq.w	   #8,		d7
	move.w	   d7, 8+CB_Y  (a0)
	move.w	   d2, 8+CB_FR (a0)
	clr.w	       8+CB_FRC(a0)
	move.l	   a4, 8+CB_SPR(a0)
	;insert after player obj
	move.l _NEXT-8(a6),_NEXT(a0)
	move.l	      a0,_NEXT-8(a6)
	movem.l	 (sp)+, d5-d7/a0/a4
	rts	


;		   07/data238[]:0fc2
;Dropped club handler
;   arg	A6.L(DropClub *):  *this
;no ret

run_dropclub:
	move.w	   CB_X(a6),	d0
	move.w	   CB_Y(a6),	d1
	movea.l	 CB_SPR(a6),	a1
	movea.l	 currpg(a5),	a0
dclub2	move.w	 CB_FRC(a6),	d3
	move.b dropclub_fr(d3.W),d2
	ext.w			d2
       move.b dropclub_fr+1(d3.W),d3
	blt.s	  .lastfr
	;fall, 
fall	addq.w	     #1, CB_FRC(a6)
	addq.w	     #8, CB_Y  (a6)
	;last frame (before END)
lastfr	add.w	  CB_FR(a6),	d2
	jsr	     03/blt_spr(a5)
	bra.s	  .enddclb


dropclub_fr:	;frame8_t[4]:0ff2
	dc.b	0,	0,	1
	dc.b	END


enddclb	rts		   ;:0ff6
