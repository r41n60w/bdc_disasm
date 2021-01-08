; vi: syntax=asm68k

;:3dea		3/proc206()

;{ 2/proc124 }

collide_kg:
	movem.l	     d2-d6,   -(sp)
	move.w		d0,	d2
	add.w	     _W(a1),	d2
	move.w		d1,	d3
	add.w	     _H(a1),	d3
	;spr: D2/.right, D3/.bottom
nextkg	movea.l	   _QNX(a0),	a0
	cmpa.w	      #NULL,	a0
	beq.s	liv_6
	;kg: D4/.left, D5/.top, D6/dX
kgpos	move.w	     _X(a0),	d4
	beq	  .nextkg
	move.w	     _Y(a0),	d5
xveloc	move.w	    _DX(a0),	d6
	blt.s	  .lbound

rbound	cmp.w		d4,	d2
	blt	  .nextkg
	add.w		d6,	d4
	cmp.w		d4,	d0
	bgt	  .nextkg
	bra.s	  .yveloc

lbound	cmp.w		d4,	d0
	bgt	  .nextkg
	add.w		d6,	d4
	cmp.w		d4,	d2
	blt	  .nextkg

yveloc	move.w	    _DY(a0),	d6
	blt.s	  .ubound

dbound	cmp.w		d5,	d3
	blt	  .nextkg
	add.w	    _DY(a0),	d5
	cmp.w		d5,	d1
	bgt	  .nextkg
	bra.s	liv_5

ubound	cmp.w		d5,	d1
	bgt	  .nextkg
	add.w	    _DY(a0),	d5
	cmp.w		d5,	d3
	blt	  .nextkg
	;found collision -> kg.veloc
liv_5	move.w	    _DX(a0),	d0
	move.w	    _DY(a0),	d1
	bra.s	liv_7
liv_6	suba.l		a0,	a0
liv_7	cmpa.w	     #NULL,	a0
	movem.l	      (sp)+, d2-d6
	rts	
