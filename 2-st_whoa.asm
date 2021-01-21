; vi: syntax=asm68k

;-refs -  2/proc120    2/proc121    2/proc132
;-        7/proc314

;:1f26			2/proc131()

proc131	tst	8(a6)
	bne.s	lga_1
	lea	data102,	a3 ;[272]
	bra.s	lga_3
lga_1	tst	8(a6)
	bgt.s	lga_2
	lea	data101,	a3 ;[8]
	bra.s	lga_3
lga_2	lea	data100,	a3 ;[30]
lga_3	move.l	a3,48(a6)
	move	#6,18(a6)
	bra	lga_6


;:1f50			2/com_33()

com_33	movea.l	22(a6),a4
	movea.l 100(a4),a1
	movea.l	48(a6),a3
	move.b	       (a3)+,	d3
	ext			d3
	add		d3,	d0
	move.b	(a3)+,d2
	ext	d2
	bge.s	lga_4
	jmp	proc129
lga_4	cmpi	#42,		d2
	bne.s	lga_5
	push	d0
	move	#5,d0
	jsr	proc9(a5)
	pop	d0
	move	#2,d2
lga_5	movea.l	glob246(a5),a0
	move	d0,12(a6)
	move.l	a3,48(a6)
	jsr	proc139(a5)
	jmp	proc117
lga_6	rts	
