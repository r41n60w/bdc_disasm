; vi: syntax=asm68k

;{ 3/proc169, 5/proc250, 5/proc260   
;  5/proc286, 5/proc291 }

;:0826			3/proc151()
;Busy wait (while video IRQs run)
;[caller: 3/levelmain()		      ]
;[     -> qobj traversed, frame ready ]
;	no args

wait_virqs:
	;(vidirq) -> frame complete
	st		 vidirq(a5)
qdtype	tst.b		    cqd(a5)
	bne.s	  .qdcolor
	;[B&W QuickDraw]
qdbw	clr.w	       vidwaitc(a5)
wait	addq.w	   #1, vidwaitc(a5)
	;busy-wait a few cycles
	move.w	   #5,		d0
waitlp	nop	
	dbra		d0, .waitlp
wait2	tst.b		 vidirq(a5)
	bne	  .wait
	;both IRQs done	   -> [RTS]
irqok	bra.s	  .retwait

	;[Colour QD], instead of V2IRQ 
qdcolor	clr.w	       vidwaitc(a5)
cwait	addq.w	   #1, vidwaitc(a5)
	move.w	   #5,		d0
cwaitlp	nop	
	dbra		d0, .cwaitlp
cwait2	movea.l	dirtypg(a5),	a1
	cmpa.w	     #NULL,	a1
	beq	  .cwait
	;(dirtypg) -> V1IRQ done
cdirty	move.l	 currpg(a5),	d0
	lea	    pg1(a5),	a1
	cmpa.l		d0,	a1
	bne.s	  .cpage2
cpage1	pea		  bits1(a5)
	jsr	      1/proc103(a5)
	bra.s	  .cgetcb
cpage2	pea		  bits2(a5)
	jsr	      1/proc103(a5)
	;call cb func, if exists
cgetcb	movea.l	 dirtypg(a5),	a1
	move.l	v2irq_cb(a5),	d0
	beq.s	  .cunblit
ccallcb	movea.l		d0,	a0
	jsr		       (a0)
cunblit	jsr	  3/unblit_page(pc)
	;(!vidirq) -> IRQs done	
endcqd	clr.l		dirtypg(a5)
	sf		 vidirq(a5)
retwait	rts	
