; vi: syntax=asm68k

;{ 1/proc11 }


pcm4	equ	+8
packlen	equ	+12
pcmout	equ	+16
packed	equ	+20

;:004e		1/proc5()

unpack_pcm:
	link		a6,	#0
	movem.l	d3/a2,-(sp)
	movea.l	 packed(a6),	a0
	movea.l	 pcmout(a6),	a1
	move.l	packlen(a6),	d0
	movea.l	   pcm4(a6),	a2
	move.w	#$80,d3
	subq.l	#1,d0
laf_1	move.b	(a0)+,d1
	move.b	d1,d2
	lsr.b	#4,d1
	andi.w	#$f,d1
	add.b	0(a2,d1.w),d3
	move.b	d3,(a1)+
	andi.w	#$f,d2
	add.b	0(a2,d2.w),d3
	move.b	d3,(a1)+
	dbra	d0,laf_1
	movem.l	(a7)+,d3/a2
	unlk	a6
	pop.l	a0
	adda.w	#16,a7
	jmp	(a0)
