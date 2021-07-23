; vi: syntax=asm68k

;0(A6).l  (maptile_t *) .wall	" tile
;4(A6).w  (jtoff_t) 	.wlst	state
;6(A6).w  (frame_t) 	.wxfr SPR_WALLX.#

;	[W_] (maptile_t):
;F0(A2).w (bool16_t)	.bomb	explode?
;F1(A2).w (xpos_t)	.wlx	wall.X
;F2(A2).w (ypos_t)	.wly	wall.Y
;F3(A2).w (frame_t)	.wofr  WALLO.[#01]
;F4(A2).w (uint16_t)	.wbit  wallf bit #;[no F5]


;:2f48		3/proc188()
;Create a (explodable) wall
;  arg A0(maptile_t *): tile [W_]

WALLOK	equ	+0
WALLX	equ	+4

mk_wall:
	movea.l		a0,	a2
	moveq	       #16,	d0
	lea	3/cb_wall,	a1
	move.l	      a1,   _CB(a0)
	move.l	      a2, _WALL(a0)
	clr.w		  _WLST(a0)
	move.l	qobj(a5), _NEXT(a0)
	move.l	     a0,   qobj(a5)
	rts	


;:2f68		3/data149[]
;Wall object func
;  arg A6(wall_t *):  obj
cb_wall:
	movea.l	  _WALL(a6),	a2
	move.w	    _F1(a2),	d0
	move.w	    _F2(a2),	d1
	movea.l	 currpg(a5),	a0
	move.w	  _WLST(a6),	d3
	jmp		 walljt(d3.w)

walljt:			     ;:2f7e
	jmp	  .wallok  ;+0:2f86
	jmp	  .wallx   ;+4:2faa


	;[+0/WALLOK]  wall standing
wallok	movea.l	121*4+spr(a5),	a1
	;A2/(maptile_t *) W_
	move.w	      _F3(a2),	d2
	;blit #221/SPR_WALLO
	jsr	     3/blit_spr(pc)
wallok2	tst.w		    _F0(a2)
	beq	  .endwall
	;(tile.f0 TRUE) -> [#WALLX]
	move.w	  #WALLX, _WLST(a6)
	move.w	      #2, _WXFR(a6)
	bra	  .endwall


	;[+4/WALLC4]  explode wall
wallx	movea.l	122*4+spr(a5),	a1
	;#222/SPR_WALLX<.2>
	move.w	    _WXFR(a6),	d2
	subq.w		  #1,	d2
	bge.s	  .bltwx
	;past [.0] -> remove wall
delwall	movea.l	  _WALL(a6),	a2
	move.w	       #F_, _TL(a2)
	clr.l		 -8+_CB(a6)
	move.w	       #36,	d0
	jsr		 0x409c(pc)
	move.w	 wallf(a5),	d7
	move.w	 _F4(a2),	d6
	bset.b	     d6,	d7
	move.w	     d7,  wallf(a5)
	bra	  .endwall

	;blit exploding wall
bltwx	move.w	      d2, _WXFR(a6)
	subi.w	     #10,	d0
	jsr	     3/blit_spr(pc)
	bra	  .endwall
endwall	rts			;:2fec
