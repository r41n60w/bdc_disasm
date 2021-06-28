; vi: syntax=asm68k

;{ 25/proc394 }

;:1998		3/proc161()
;Create burning eye
;  arg A0(
mk_eye:
	move.w	       (a0)+,	d0
	move.w	       (a0)+,	d1
	move.w		#6,	d2
	movea.l		a0,	a3
	lea	  3/an_eye,	a0 
	;#361/SPR_REYE<.13> 22x2[24]px
	;#362/SPR_LEYE<.7>  22x2[24]px
	lea	261*4+spr(a5),	a1
	lea	  3/dg_eye,	a2
	lea	3/blit_eye2,	a4
	jsr	    3/mk_aerial(pc)
	lea	     36(a0),	a0
	move.l	#$04000000,	d7
	jsr	    3/add_aepos(pc)
	rts	
