; vi: syntax=asm68k

;{ 2/proc126 }

;:1b4c			2/proc127()
;(#MIDJMP) Detect jumpbox cross ->land_jbox()
; -> blit_spr(), dg_dispatch()
;	arg A6:   	   (dc_t *)
;	    A1: SPR_xJUMPx (spr_t *)
;	    A3:   anim ptr (ani8v_t *)
;	    A2:	  	   (map_t *) 
;	    D3.w:  map row (off_t)
;	    D4.w:   " tile (off_t)
;	    D6.w:    dc.X' (coord_t)
;	    D0.w:      .X  (coord_t)
;	    D1.w:      .Y  (coord_t)

x_midjmp:
     	move.w	       d4, _TLP(a6)
	move.w	       d3, _RWP(a6)
	move.w	       d0,   _X(a6)
	move.w	       d1,   _Y(a6)
	movea.l	  currpg(a5),	a0
	tst.w	  jbox_r(a5)
	blt.s	  .bltjmp
	;jumpbox enabled <DUNJ><ETOP>
jboxr	cmp.w	jbox_ry1(a5),	d1
	blt.s	  .jboxl
	cmp.w	jbox_ry2(a5),	d1
	bgt.s	  .jboxl
	;(dc.Y within jumpbox)
jboxr2	move.w	 jbox_rx(a5),	d5
	cmp.w		 d5,	d0
	blt.s	  .lboxr
rboxr	cmp.w		 d5,	d6
	bgt.s	  .jboxl
	;cross left to right 
	bra.s	  .cross
lboxr	cmp.w		 d5,	d6
	blt.s	  .jboxl
	;cross right to left
	bra.s	  .cross

jboxl	cmp.w	jboxl_y1(a5),	d1
	blt.s	  .bltjmp
	cmp.w	jboxl_y2(a5),	d1
	bgt.s	  .bltjmp
jboxl2	move.w	 jboxl_x(a5),	d5
	cmp.w		 d5,	d0
	blt.s	  .lboxl
rboxl	cmp.w		 d5,	d6
	bgt.s	  .bltjmp
	bra.s	  .cross
lboxl	cmp.w		 d5,	d6
	blt.s	  .bltjmp

	;.. crossed into jumpbox
cross	tst.b		   _VYDR(a6)
	bpl	  .cross2
	addq	       #4, _RWP(a6)
cross2	sub.w	 _VDIR(a6),	d5
	move.w	       d5,   _X(a6)
	move.w	       d5,	d0
	jmp 	    2/land_jbox(pc)

	;no cross -> blit SPR_xJUMPx
bltjmp	move.w	      (a3)+,	d2
	add.w	      (a3)+,	d1
	move.w	       d2,  _FR(a6)
	jsr	     3/blit_spr(a5)
	jmp	  2/dg_dispatch(pc)
