; vi: syntax=asm68k

;0(A6).L (maptile_t *) .qtl tile queue

;  (maptile_t *)->tl(#PL_STON):
;F0(A4).w (xpos_t)  .lpl  L bound
;F1(A4).w (xpos_t)  .rpl  R bound
;F2(A4).w (ypos_t)  .ply  stone.Y
;F3(A4).w (xoff_t)  .pldx    " .dX
;F4(A4).w (tloff_t) .nxpl next tile
;F5(A4).w (frame_t) .plfr STONE[].#


;{ 22/proc389, 25/proc394 } 

;:2ea6			3/proc187()
;Create all stepstones (#PL_STON)
;	arg A0(maptile_t *): tile

mk_sstones:
	movea.l		a0,	a4
	moveq	       #12,	d0
	_NewPtr		  ,  CLEAR
	lea	3/cb_stones,	a1
	move.l	    a1,	    _CB(a0)
	;save (maptile_t *)
mkston2	move.l	    a4,   _DATA(a0)
	move.l qobj(a5),  _NEXT(a0)
	move.l	    a0,    qobj(a5)
	;walk thru all stone tiles
chktile	move.w	 _L(a4),	d0
	bgt	  .nxchk
	;(left.X <= 0): invalidate
invalid	addi.w	     #1000,  _L(a4)
	addi.w	     #1000,  _R(a4)
	;A3.w/(tloff_t) next stone
nxchk	movea.w	    _F4(a4),	a3
	cmpa.w		#0,	a3
	beq.s	  .endstns
	; -> next tile
	adda.w		a3,	a4
	bra	  .chktile
endstns	rts	


;:2ee0			3/data148[]
;Stepstones (all) object function
;	arg A6(maptile_t **): obj

cb_stones:
	movea.l	   _QTL(a6),	a4
	movea.l	 currpg(a5),	a0
	cmpi.w	 #WALL, curr_rm(a5)
	bne.s	  .spr2
	;#342/SPR_STONE1
spr1	movea.l	242*4+spr(a5),	a1
	bra.s	  .stonelp11
	;#220/SPR_STONE2	:2ef4
spr2	movea.l	120*4+spr(a5),	a1
	;
stonelp	move.w	     _L(a4),	d0
	ble	  .nxston
	move.w	    _F2(a4),	d1
	addi.w	       #40,	d1
	move.w	    _F5(a4),	d2
	tst.w	    _F3(a4)
	bgt.s	  .stone2
	cmp.w	    _F0(a4),	d0
	bgt.s	  .stone3
	bra.s	  .bounce

stone2	cmp.w	    _F1(a4),	d0
	blt.s	  .stone3
	;(@bound) reverse direction
bounce	neg.w	    _F3(a4)
	;move stone
stone3	move.w	    _F3(a4),	d3
	add.w		d3,	d0
	move.w		d0,  _L(a4)
	add.w		d3,  _R(a4)
	addi.w	       #14,	d0
	sub.w		d3,	d0
	jsr	     3/blit_spr(pc)
	;get next (PL_STON) tile
nxston	movea.w	    _F4(a4),	a3
	cmpa.w		#0,	a3
	beq.s	  .endston
	adda.w		a3,	a4
	bra.s	  .stonelp
endston	rts
