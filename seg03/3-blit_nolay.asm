; vi: syntax=asm68k

;:036c		3/proc142()
;Blit sprite (without layer mask) to page

blit_nolay:
	movem.l	d0-d7/a1-a4/a6, -(sp)
	move		d0,	d3
	andi	#$f,d0
	asr	#3,d3
	andi	#$fffe,d3
	move	4(a1),d4
	subq	#1,d4
	ext.l	d4
	move	6(a1),d5
	subq	#1,d5
	ext.l	d5
	asl	#1,d2
	mulu	8(a1),d2
	movea.l	a1,a3
	adda.w	#14,a3
	adda.l	d2,a3
	movea.l	a3,a4
	adda.w	8(a1),a4

bltnl2	tst	d1
	bge.s	lgq_1
	neg	d1
	sub	d1,d5
	ble	lgq_4
	addq.l	#1,d4
	mulu	d4,d1
	subq.l	#1,d4
	asl.l	#1,d1
	adda.l	d1,a3
	adda.l	d1,a4
	moveq	#0,d1

lgq_1	movea.l	10(a0),a6
	move	d4,(a6)
	addq	#1,(a6)+
	move	d5,(a6)+

	move	(a0),d6
	ext.l	d6
	movea.l	2(a0),a1
	mulu	d6,d1
	ext.l	d3
	add.l	d3,d1
	move.l	d1,(a6)+
	adda.l	d1,a1
	asl.l	#1,d4
	sub.l	d4,d6
	asr.l	#1,d4
	subq.l	#4,d6
	move.l	d6,(a6)+

rowlp	move.l	d4,d7
	move	(a1)+,d1
	move	d1,(a6)+
	swap	d1
cellp	move	(a1)+,d1
	move	d1,(a6)+
	move	(a4)+,d3
	swap	d3
	clr	d3
	ror.l	d0,d3
	not.l	d3
	and.l	d3,d1
	move	(a3)+,d3
	swap	d3
	clr	d3
	ror.l	d0,d3
	or.l	d3,d1
	swap	d1
	move	d1,-4(a1)
	dbra	d7, .cellp
	swap	d1
	move	d1,-2(a1)
	adda.l	d6,a1
	dbra	d5, .rowlp

	move.l	10(a0),(a6)+
	move.l	a6,10(a0)
lgq_4	movem.l	(sp)+,d0-d7/a1-a4/a6
	rts	
