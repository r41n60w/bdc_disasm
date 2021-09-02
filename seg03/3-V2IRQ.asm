; vi: syntax=asm68k

;interrupt void V2IRQ(void);	


;{ 4/proc236 }

;:06f0			3/proc147()
;(V2IRQ): Video interrupt #2
;	no args

V2IRQ:	
	;access BDC A5 world
	move.l		a5,   -(sp)
	movea.l	 CurrentA5,	a5
	;A1/(pg_t *) dirty page?
dirty	movea.l	dirtypg(a5),	a1
	cmpa.w	     #NULL,	a1
	beq.s	  .irq1x
	;yes, sched (1/12 sec)
	;A0/(VBLTask *)
irq5x	movea.l	 vid2irq(a5),	a0
	move.w	   #5, vblCount(a0)
	;A0/void(*)(pg_t*)
getcb	move.l	v2irq_cb(a5),	d0
	beq.s	  .unblit
	;func exists, call it
callcb	movea.l		d0,	a0
	jsr		       (a0)
	;unblit page (A1)
unblit	bsr	  3/unblit_page(pc)
	clr.l		dirtypg(a5)
	;(!vidirq): end wait_virqs()
	sf		 vidirq(a5)
	bra.s	  .endvirq
	;(!dirtypg) -> next vblank
irq1x	movea.l	vid2irq(a5),	a0
	move.w	   #1, vblCount(a0)
	;restore IRQ A5 world
endvirq	move.l	       (sp)+,	a5
	rts	
