; vi: syntax=asm68k

;-refs -  3/proc147    3/proc151    3/proc154

;:0698			3/proc146()

proc146	movem.l	d3-d4/a2-a3,-(sp)
	movea.l	10(a1),a0
lgu_1	movea.l	-(a0),a0
	cmpa.w	#0,a0
	beq.s	lgu_7
	move.l	a0,10(a1)
	movea.l	a0,a2
	move	(a2)+,d0
	move	(a2)+,d1
	move.l	(a2)+,d2
	move.l	(a2)+,d3
	movea.l	2(a1),a3
	adda.l	d2,a3
	subq	#1,d0
	btst	#0,d0
	beq.s	lgu_4
	asr	#1,d0
lgu_2	move	d0,d4
lgu_3	move.l	(a2)+,(a3)+
	dbra	d4,lgu_3
	move	(a2)+,(a3)+
	adda.l	d3,a3
	dbra	d1,lgu_2
	bra	lgu_1
lgu_4	asr	#1,d0
lgu_5	move	d0,d4
lgu_6	move.l	(a2)+,(a3)+
	dbra	d4,lgu_6
	adda.l	d3,a3
	dbra	d1,lgu_5
	bra	lgu_1
lgu_7	movem.l	(sp)+,d3-d4/a2-a3
	rts	
