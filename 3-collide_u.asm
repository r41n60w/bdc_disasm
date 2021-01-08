; vi: syntax=asm68k

;{ 2/proc124, 6/proc305 }  

;:3f2c			3/proc210()


;	arg A0: (un_t **) queue
;	    A1: dc (spr_t *)
;	    D0:	dc.X (coord_t)
;	    D1:	  .Y (coord_t)

collide_un:
	movem.l	     d2-d4,   -(sp)
	;get (spr).right + .bottom
	move.w		d0,	d2
	add.w	     _W(a1),	d2
	move.w		d1,	d3
	add.w	     _H(a1),	d3
	;for(u=*A0; u; u=u->qnx)
nextun	movea.l	       (a0),	a0
	cmpa.w	      #NULL,	a0
	beq	  .retun
	;if(u.left <= dc.right)
	move.w	     _X(a0),	d4
	cmp.w		d2,	d4
	bgt	  .nextun
	; if(dc.left <= u.right)
	add.w	     _W(a0),	d4
	cmp.w		d0,	d4
	blt	  .nextun
	;  if(u.top <= dc.bottom)
	move.w	     _Y(a0),	d4
	cmp.w		d3,	d4
	bgt	  .nextun
	;   (dc.top <= u.bottom)
	add.w	     _H(a0),	d4
	cmp.w		d1,	d4
	blt	  .nextun
	; -> return u; // collision
	;return NULL;  // none found
retun	movem.l	      (sp)+, d2-d4
	rts	
