; vi: syntax=asm68k

; { 3/proc169    5/proc250    5/proc260   
;   5/proc286    5/proc291 }

;:0826			3/proc151()

proc151	st		 vidirq(a5)
	tst.b	glob122(a5)
	bne.s	lgz_3
	clr.w	glob195(a5)
lgz_1	addq	#1,glob195(a5)
	move.w		#5,	d0
lgz_2	nop	
	dbra		d0,lgz_2
	tst.b		 vidirq(a5)
	bne	lgz_1
	bra.s	lgz_9

lgz_3	clr.w	glob195(a5)
lgz_4	addq	#1,glob195(a5)
	move.w	#5,d0
lgz_5	nop	
	dbra	d0,lgz_5
	movea.l	glob243(a5),a1
	cmpa.w	#0,a1
	beq	lgz_4
	move.l	glob246(a5),d0
	lea	glob262(a5),a1
	cmpa.l	d0,a1
	bne.s	lgz_6
	pea	glob253(a5)
	jsr	proc103(a5)
	bra.s	lgz_7
lgz_6	pea	glob251(a5)
	jsr	proc103(a5)
lgz_7	movea.l	glob243(a5),a1
	move.l	glob241(a5),d0
	beq.s	lgz_8
	movea.l	d0,a0
	jsr	(a0)
lgz_8	jsr	proc146
	clr.l	glob243(a5)
	sf	glob242(a5)
lgz_9	rts	
