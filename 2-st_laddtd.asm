; vi: syntax=asm68k

; {  2/com_18 }

;:1702			2/com_20()
;#LADDTD state handler
;       arg A6: (dc_t *)               
;           A2: (map_t *)
;           D4: U_LDD tile (off_t)     
;           D0: dc.X (coord_t)  
;           D1:  ".Y (coord_t)

st_laddtd:
	;st_ladd() -> [.3]
	move.w	_FR(a6),d2
	movea.l	currpg(a5),a0
	movea.l	_SPRV(a6),a4
	movea.l	3*4(a4),a1
	;blit #103/SPR_LADD2 <.5>
	jsr     3/blit_spr(a5)
prevfr	subq.w	#1,d2
	bge.s	  .endldd
	;< [.0] -> mount ladder
laddon	clr.w	d2
	move.w	#LADDON, _ST(a6)
	clr.w	_VSND(a6)
	subi.w	#10, _Y(a6)

endldd	move.w	d2, _FR(a6)
	addi.w	#10, _Y(a6)
	jmp	2/dg_dispatch(pc)
