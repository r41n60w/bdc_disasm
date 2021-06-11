; vi: syntax=asm68k

;{  2/com_36    11/proc339 }

;:0426		3/proc143()

blit_img:
	movem.l	d0-d7/a1-a4/a6,-(a7)
	move	d0,d3
	andi	#$f,d0
	asr	#3,d3
	andi	#$fffe,d3
	move	4(a1),d4
	subq	#1,d4
	ext.l	d4
	move	6(a1),d5
	subq	#1,d5
	ext.l	d5
	mulu	8(a1),d2
	movea.l	a1,a3
	adda.w	#14,a3
	adda.l	d2,a3

bltblk2	tst	d1
	bge.s	lgr_1
	neg	d1
	sub	d1,d5
	ble	lgr_4
	addq.l	#1,d4
	mulu	d4,d1
	subq.l	#1,d4
	asl.l	#1,d1
	adda.l	d1,a3
	moveq	#0,d1
	
lgr_1	movea.l	10(a0),a6
	move	d4,(a6)
	addq	#1,(a6)+
	move	d5,(a6)+
	move	(a0),d6
	ext.l	d6
	movea.l	6(a0),a2
	movea.l	2(a0),a1
	mulu	d6,d1
	ext.l	d3
	add.l	d3,d1
	move.l	d1,(a6)+
	adda.l	d1,a1
	adda.l	d1,a2
	asl.l	#1,d4
	sub.l	d4,d6
	asr.l	#1,d4
	subq.l	#4,d6
	move.l	d6,(a6)+

lgr_2	move.l	d4,d7
	move	(a1)+,d1
	move	d1,(a6)+
	move	(a2)+,d2
	swap	d1
	swap	d2
lgr_3	move	(a1)+,d1
	move	d1,(a6)+
	move	(a2)+,d2
	move	#$ffff,d3
	swap	d3
	clr	d3
	ror.l	d0,d3
	and.l	d2,d3
	not.l	d3
	and.l	d3,d1
	move	(a3)+,d3
	swap	d3
	clr	d3
	ror.l	d0,d3
	and.l	d2,d3
	or.l	d3,d1
	swap	d1
	move	d1,-4(a1)
	swap	d2
	dbra	d7,lgr_3
	swap	d1
	move	d1,-2(a1)
	adda.l	d6,a1
	adda.l	d6,a2
	dbra	d5,lgr_2
	move.l	10(a0),(a6)+
	move.l	a6,10(a0)
lgr_4	movem.l	(a7)+,d0-d7/a1-a4/a6
	rts	
