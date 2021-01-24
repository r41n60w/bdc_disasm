; vi: syntax=asm68k

; { 2/proc120, 2/proc121,
;   2/proc132, 7/proc314 }

;:1f26			2/proc131()
;Change state to #WHOA (suspended mid-air)

ch_whoa:
	tst		  _JOYX(a6)
	bne.s	  .cwhoa3
	;.X stationery		:1fbe
dwhoa	lea	2/dwhoa_ani,	a3
	bra.s	  .cwhoa2
cwhoa2	tst		  _JOYX(a6)
	bgt.s	  .rwhoa
	;moving LEFT   ani2x_t[]:1fb6
lwhoa	lea	2/lwhoa_ani,	a3
	bra.s	  .cwhoa3
	;  "    RIGHT		:1f98
rwhoa	lea	2/rwhoa_ani,	a3
	;set up new state
cwhoa3	move.l	      a3, _VANI(a6)
	move	   #WHOA,   _ST(a6)
	bra	  .endwhoa
	;[=RTS]


;:1f50			2/com_33()
;#WHOA (suspended mid-air) state handler
;	args:	A6	(dc_t *)
;		D0/D1.w	(coord_t) .X
; 48(a6).l	_VANI	(ani2x_t *)

st_whoa:
	;#125/SPR_WHOA <.4> 32x40px
	movea.l	  _SPRV(a6),	a4
	movea.l	   25*4(a4),	a1
	movea.l	  _VANI(a6),	a3
	;get new .X 	ani2x_t[]
whoa1	move.b	       (a3)+,	d3
	ext			d3
	add		d3,	d0
	;frame(END)	-> [#FALL]
whoa2	move.b	       (a3)+,	d2
	ext			d2
	bge.s	  .whoa3
aniend	jmp	      2/ch_fall(pc) ;p129

	;frame(WHOASND)	-> gasp!/#5
whoa3	cmpi.w	 #WHOASND,	d2
	bne.s	  .whoa4
gasp	push		d0
	move	#SND_WHOA,	d0
	jsr	     1/play_snd(a5)
	pop			d0
	;blit spr [.2], save anim ptr
	move          #2,	d2
whoa4	movea.l	 currpg(a5),	a0
	move	      d0,    _X(a6)
	move.l	      a3, _VANI(a6)
bltwhoa	jsr	     3/blit_spr(a5)
	jmp	  2/dg_dispatch(pc)
endwhoa	rts	
