; vi: syntax=asm68k

;interrupt void	3/V1IRQ(void);

	;[Globals](A5)
vidirq		equ (-$6d).b
debugvid	equ (-$75).b  ;(Boolean)
vblankc		equ (-$74).w  ;(int16_t)
vid1irq		equ (-$64).l  ;(VBLTask *)
dirtypg		equ (-$6c).l  ;(pg_t *)
currpg		equ (-$60).l
pg1		equ (-$16)  ;(struct pg_t)
pg2		equ (-$2c)	     ;[22]
	;[System vars]
CurrentA5 equ	($0904).l
VIA	equ	($01d4).w
ViaBufA	equ	($00effffe).l
ViaBufB	equ	($00efe1fe).l
ALTSCR	equ	(6)	;ViaBufB bit #


;{ 4/proc236 }

;:072e			3/proc148()
;(V1IRQ) Video interrupt handler #1
;	no args
V1IRQ:
	move.l		a5,   -(sp)
	movea.l	 CurrentA5,	a5
	tst.b	       debugvid(a5)
	bne.s	  .frameok
	;was exec.ing 3/wait_virqs()?
vidirq	tst.b		 vidirq(a5)
	beq.s	  .irq1x
	;(vidirq) -> frame complete
	;get A0/(ViaBufB).b
frameok	movea.l	       VIA,	a0
	adda.w	    #$1e00,	a0
	;work out current page ptr
	move.l	 currpg(a5),	d0
	lea	    pg1(a5),	a1
	cmpa.l		d0,	a1
	bne.s	  .page2
	;flip	-> [pg2]
page1	lea	pg2(a5),	a1
	move.l	    a1,  currpg(a5)
	bset.b #ALTSCR,        (a0)
	move.l	    a1, dirtypg(a5)
	bra.s	  .irq5x
	;flip	-> [pg1]
page2	lea	pg1(a5),	a1
	move.l	    a1,  currpg(a5)
	bclr.b #ALTSCR,        (a0)
	move.l	    a1, dirtypg(a5)
	;sched     -> (1/12 sec)
irq5x	movea.l	vid1irq(a5),	a0
	move.w	   #5, vblCount(a0)
	bra.s	  .endvirq
	;(!vidirq) -> frame not ready
	;sched	   -> next vblank
irq1x	movea.l	vid1irq(a5),	a0
	move.w	   #1, vblCount(a0)
	addq.w	   #1,  vblankc(a5)
	;restore IRQ A5 world
endvirq	movem.l	       (sp)+,	a5
	rts	
