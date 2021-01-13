; vi: syntax=asm68k

; { 2/com_17 }  

;:16c6			2/com_19()
;#LADDTU state handler
;	arg A6: (dc_t *)
;	    A2:	(map_t *)
;	    D4: U_LDD tile (off_t)
;	    D0: dc.X (coord_t)
;	    D1:  ".Y (coord_t)

st_laddtu:
	;st_laddon() -> [.0]
	move.w	_FR(a6),d2
	movea.l	currpg(a5),a0
	movea.l	_SPRV(a6),a4
	movea.l	3*4(a4),a1
	;blit #103/SPR_LADD2 <.5>
	subi.w	#10,d1
	jsr	3/blit_spr(a5)
nextfr	addq.w	#1,d2
	cmp.w	_NFR(a1),d2
	blt.s	  .endldd
	;past [.5] -> dismount ladder
stladd	clr.w	d2
	move.w	#LADD, _ST(a6)
	move.w	_RWP(a6),d3
	move.w	_Y(a2,d3.w),d1
	
endldd	move.w	d2, _FR(a6)
	move.w	d1, _Y(a6)
	jmp	2/dg_dispatch(pc)
