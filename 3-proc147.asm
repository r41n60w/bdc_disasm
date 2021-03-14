; vi: syntax=asm68k

;-refs -  4/proc236   

;:06f0			3/proc147()

proc147	push.l	a5
	movea.l	CurrentA5,a5
	movea.l	glob243(a5),a1
	cmpa.w	#0,a1
	beq.s	lgv_2
	movea.l	glob244(a5),a0
	move	#5,10(a0)
	move.l	glob241(a5),d0
	beq.s	lgv_1
	movea.l	d0,a0
	jsr	(a0)
lgv_1	bsr	proc146
	clr.l	glob243(a5)
	sf	glob242(a5)
	bra.s	lgv_3
lgv_2	movea.l	glob244(a5),a0
	move	#1,10(a0)
lgv_3	pop.l	a5
	rts	
