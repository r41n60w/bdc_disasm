; vi: syntax=asm68k

KG_NX	equ	 +0
KG_PV	equ	 +4
KG_X	equ	 +8
KG_Y	equ	+12
KG_DX	equ	+16
KG_DY	equ	+20
KG_SPR	equ	+24
KG_FR	equ	+28
KG_G	equ	+30

_XWIN	equ	+18
_YWIN	equ	+20
_NFR	equ	 +2
_NEXT	equ	 +0
_RUN	equ	 +4

NULL	equ	0


;      $2c2(A5) -> 02/proc137():33b2
;Create new rock/fireball
;   arg	A0(Sprite *).L: kugel sprite
;   out	A1(Kugel **).L: &qkugel
;   arg	A6  (Hero *).L: player obj
;   arg	D0    (px_t).W: kugel.X
;   arg	D1    (py_t).W:	   " .Y
;   arg	D2   (Fixed).L: " veloc. ∆X
;   arg	D3   (Fixed).L:	"    "   ∆Y
;   arg	D4   (Fixed).L: gravity(∆∆Y)
;no ret
;	D0,D5,A0,A2,A3 preserved

new_kugel:
	movem.l	d0/d5/a0/a2-a3,-(sp)
	move.w		d0,	d5
	movea.l		a0,	a2
kgalloc	moveq	    #(8+34),	d0
	_NewPtr	          ,  CLEAR
kginit1	lea   02/run_kugel(pc),	a3
	move.l	   a3,     _RUN(a0)
kgx	swap			d5
	clr.w			d5
	move.l	   d5, 8+KG_X  (a0)
kgy	swap			d1
	clr.w			d1
	move.l	   d1, 8+KG_Y  (a0)
kgveloc	move.l	   d2, 8+KG_DX (a0)
	move.l	   d3, 8+KG_DY (a0)
	sub.l	   d2, 8+KG_X  (a0)
	sub.l	   d3, 8+KG_Y  (a0)
kginit2	move.l	   a2, 8+KG_SPR(a0)
	clr.w	       8+KG_FR (a0)
	move.l	   d4, 8+KG_G  (a0)
	;if(qptr != NULL)
	cmpa.w	#NULL,		a1
	beq.s	  .noq
	;A1: (Kg **) ptr to queue
	;A3: (Kg *)  old q. head
gethead	movea.l	  (a1),		a3
	move.l	   a3, 8+KG_NX (a0)
	move.l	   a1, 8+KG_PV (a0)
	;insert at head of queue
newhead	move.l	   a0,         (a1)
	addq.l	   #8,         (a1)
	cmpa.w	#NULL,		a3
	beq.s	  .kginit3
	;queue not empty
kglink	move.l	  (a1),   KG_PV(a3)
	bra.s	  .kginit3
	;if(!qptr)
	;    kg->nx = kg->pv = NULL;
noq	clr.l	        8+KG_NX(a0)
	clr.l		8+KG_PV(a0)
	;..
	;insert just after Hero obj.
kginit3	move.l _NEXT-8(a6),_NEXT(a0)
	move.l	    a0, -8+_NEXT(a6)
	movem.l	(sp)+,d0/d5/a0/a2-a3
	rts


;		   02/data112[]:3428
;Rock/fireball handler routine
;   arg	A6(Kugel *).L:  (*this)
;no ret

run_kugel:
	move.l	 KG_X(a6),	d0
	beq.s	  .offscrn
	move.l	 KG_Y(a6),	d1
	;apply gravity (+$d555 ∆y)
dygrav	move.l	 KG_G(a6),	d3
	add.l	      d3, KG_DY(a6)
	;move kugel +(∆x,∆y) abs
movekg	add.l	  KG_DX(a6),	d0
	add.l	  KG_DY(a6),	d1
scrpos	movea.l	 currpg(a5),	a0
	move.l		d0,	d4
	move.l		d1,	d5
	swap			d4
	sub.w	  _XWIN(a0),	d4
	swap			d5
	sub.w	  _YWIN(a0),	d5
xbound	cmpi.w		#4,	d4
	ble.s	  .offscrn
	cmpi.w	   #(512-8),	d4
	bge.s	  .offscrn
ybound	cmpi.w		#4,	d5
	ble.s	  .offscrn
	cmpi.w	   #(342-8),	d5
	bge.s	  .offscrn
	;onscreen, next
	;(++fr mod <.4|.2>)
nextfr	movea.l	 KG_SPR(a6),	a1
	move.w	 KG_FR (a6),	d2
	addq.w		#1,	d2
	cmp.w	   _NFR(a1),	d2
	blt.s	  .nowrap
wrapfr	clr.w			d2
nowrap	move.l	      d0, KG_X (a6)
	move.l	      d1, KG_Y (a6)
	move.w	      d2, KG_FR(a6)
	;blit SPR_ROCK/_FIREBL
	;∆(-4,-4)
bltkg	swap			d0
	swap			d1
	subq.w	      #4,	d0
	subq.w	      #4,	d1
	jsr	     03/blt_spr(a5)
endkg	rts

	;(4,4):(504,334)
	;offscreen, remove
offscrn	movea.l	KG_PV(a6),	a3
	cmpa.w	   #NULL,	a3
	beq.s	  .delkg
rmhead	movea.l	KG_NX(a6),	a4
	move.l	      a4, KG_NX(a3)
	move.l	      a3, KG_PV(a4)
	;disable this callback
delkg	clr.l		-8+_RUN(a6)
	bra.s	  .endkg
	;-> RTS	
