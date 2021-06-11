; vi: syntax=asm68k

;{ 3/proc153 }

;:08a0			3/proc152()
;Dispatch according to spr format
;  arg A0(pg_t *),        D2(frame_t)
;  arg A1(sprhdr_t *), D0/D1([xy]pos_t)

bl_dispatch:
	move.l		d3,   -(sp)
	move.w	  _SFMT(a1),	d3
	ext.l			d3
	divu.w	     #1000,	d3
	swap			d3
	asl.w		#2,	d3
	ext.l			d3
	jsr	 blitjt(d3.w)
	move.l	       (sp)+,	d3
	rts	

;:08b8		3/data117[]

blitjt:
	jmp	     3/blit_spr(pc)
	jmp	     3/blit_spr(pc)
	jmp	     3/blit_spr(pc)
	jmp	   3/blit_nolay(pc) ;:036c
	jmp	   3/blit_nlimg(pc) ;:04ec
	jmp	     3/blit_img(pc) ;:0426
	jmp	      5/proc247(a5) ;:053c
	jmp	   3/blit_orimg(pc) ;:059e
	jmp	     3/blit_img(pc)
	jmp	   3/blit_nolay(pc)


;{ 5/proc244, 5/proc250, 5/proc254, 5/proc256 }

;:08e0			3/proc153()
;Pascal wrapper -> bl_dispatch()
;	arg (xpos_t x)	-> D0.w
;	arg (ypos_t y)	-> D1.w
;	arg (frame_t fr)-> D2.w
;	arg (pg_t *dest)-> A0
;	arg (sprhdr_t *spr) -> A1

TMPRET	equ	(ApplScratch + 8).w

BlDispatch:
	move.l	      (sp)+, TMPRET
	movea.l	      (sp)+,	a1
	movea.l	      (sp)+,	a0
	move.w	      (sp)+,	d2
	move.w	      (sp)+,	d1
	move.w	      (sp)+,	d0
	move.l	   TMPRET,    -(sp)	
	;save all other regs
	movem.l	 d3-d7/a2-a4, -(sp)
	jsr	  3/bl_dispatch(pc)
	movem.l	(sp)+, d3-d7/a2-a4
	rts
