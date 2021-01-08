; vi: syntax=asm68k

;{ 2/proc124 } 

;:3ec6		3/proc209()
;Detect spr collision with bat/vulture

collide_ae:
	movem.l  d2-d6/a2-a3, -(sp)
	;struct { coord_t x, y; } *[64];
	movea.l	  aeposv(a5),	a2 ;g208
	move.w	  aeposc(a5),	d6 ;g207
	;D2/spr.right, D3/.bottom
	move.w		d0,	d2
	add.w	     _W(a1),	d2
	move.w		d1,	d3
	add.w	     _H(a1),	d3
	bra.s	  .nextae
	;while(--aeposc) *aeposv++?
aeloop	movea.l	       (a2)+,	a3
	cmpa.w	     #NULL,	a3
	beq.s	  .nextae
	;slot taken, D4/ae.X, D5/.Y
getpos	move.w	     _X(a3),	d4
	move.w	     _Y(a3),	d5
	;point inside spr bounds?
	;.left <= (ae.X) <= .right
pointin	cmp.w		d0,	d4
	blt.s	  .missed
	cmp.w		d1,	d5
	blt.s	  .missed
	;.top  <= (ae.Y) <= .bottom
	cmp.w		d2,	d4
	bgt.s	  .missed
	cmp.w		d3,	d5
	bgt.s	  .missed
	;collision, get veloc -> D0/D1
hitae	sub.w	 128+_X(a2),	d4
	move.w		d4,	d0
	sub.w	 128+_Y(a2),	d5
	move.w		d5,	d1
	;ae type -> A0 (hi byte)
	move.l		a3,	d2
	andi.l	#$ff000000,	d2
	movea.l		d2,	a0
	move.w		#0,	ccr
	bra.s	  .retae
	;not found, save curr pos
missed	move.l	      (a3), 128(a2)
nextae	dbra	       d6, .aeloop
	move.w		#4,	ccr
	;
retae	movem.l	(sp)+, d2-d6/a2-a3
	rts	
