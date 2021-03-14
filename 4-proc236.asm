; vi: syntax=asm68k

;-refs -  4/proc239   

;:04de		4/proc236()

proc236	link		a6,	#0
	movem.l	     a3-a4,b  -(sp)
	move.b	glob122(a5),	d0
	beq.s	ljz_2
	clr.l		      -(sp)
	push	#$3e8
	clr.l		      -(sp)
	clr.l		      -(sp)
 ; (windowID:INTEGER; wStorage:Ptr; behind:WindowPtr):WindowPtr A9BD 
	_GetNewWindow
	pop.l	glob121(a5)
	push.l	a6
	jsr	proc235
	push.l	glob121(a5)
 ; (theWindow:WindowPtr) A915
	_ShowWindow
	push.l	glob121(a5)
   50C: A873
	_SetPort
	pea	glob98(a5)
   512: A87C ; (pat:Pattern) 
	_BackPat
	clr.l	-(sp)
	push.l	#$5580
	jsr	1/NewPtr(a5)
	pop.l	glob143(a5)
	clr.l	-(sp)
	push.l	#$5580
	jsr	1/NewPtr(a5)
	pop.l	glob142(a5)
	clr.l	-(sp)
	push.l	#$1b58
	jsr	1/NewPtr(a5)
	pop.l	glob152(a5)
	bne.s	ljz_1
	pea	data172     ; 'umem'
	jsr	proc85(a5)
ljz_1	bra.s	ljz_4
ljz_2	move.l	glob93(a5),glob143(a5)
	move.l	glob93(a5),d0
	sub.l	#$4000,d0
	sub.l	#$4000,d0
	move.l	d0,glob142(a5)
	move.b	glob247(a5),d0
	beq.s	ljz_3
	move.l	glob143(a5),d0
	sub.l	#$1b58,d0
	move.l	d0,glob152(a5)
	bra.s	ljz_4
ljz_3	clr.l	-(sp)
	push.l	#$1b58
	jsr	1/NewPtr(a5)
	pop.l	glob152(a5)
	bne.s	ljz_4
	pea	data172     ; 'umem'
	jsr	proc85(a5)
ljz_4	pea	glob149(a5)
	; (port:GrafPtr) A86D
	_InitPort
	move.l	glob143(a5),glob263(a5)
	move.w	#64,glob262(a5)
	clr.l	-(sp)
	push.l	#$5580
	jsr	1/NewPtr(a5)
	pop.l	glob248(a5)
	bne.s	ljz_5
	pea	data173     ; 'mmem'
	jsr	proc85(a5)
ljz_5	move.l	glob248(a5),glob264(a5)
	movea.l	glob152(a5),a0
	moveq	#0,d0
	move.l	d0,(a0)
	move.l	glob152(a5),d0
	addq.l	#4,d0
	move.l	d0,glob265(a5)
	move.l	glob152(a5),d0
	add.l	#$1b58,d0
	move.l	d0,glob266(a5)
	clr.w	glob267(a5)
	clr.w	glob268(a5)
	lea	glob253(a5),a4
	lea	6(a4),a3
	move.l	glob263(a5),(a4)
	move.w	glob262(a5),4(a4)
	clr.w	2(a3)
	move.w	#$200,6(a3)
	clr.w	(a3)
	move.w	#$156,4(a3)
	pea	glob253(a5)
   61C: A875           '.u'             
	_SetPBits ; (bm:BitMap) 
	pea	glob254(a5)
   622: A8A2           '..'             
	_PaintRect ; (r:Rect) 
	lea	glob249(a5),a0
	lea	glob253(a5),a1
	move.l	(a1)+,(a0)+
	move.l	(a1)+,(a0)+
	move.l	(a1)+,(a0)+
	move.w	(a1),(a0)
	move.l	glob248(a5),glob249(a5)
	pea	glob249(a5)
	_SetPBits ; (bm:BitMap) 
	pea	glob250(a5)
	_EraseRect ; (r:Rect) A8A3
	lea	glob262(a5),a0
	move.l	a0,glob246(a5)
	move.b	glob247(a5),d0
	beq.s	ljz_7
	move.l	glob142(a5), glob256(a5)
	move.w	#64,glob255(a5)
	move.l	glob248(a5), glob257(a5)
	clr.l	-(sp)
	push.l	#$1b58
	jsr	1/NewPtr(a5)
	pop.l	glob153(a5)
	bne.s	ljz_6
	pea	data172     ; 'umem'
	jsr	proc85(a5)
ljz_6	movea.l	glob153(a5),a0
	moveq	#0,d0
	move.l	d0,(a0)
	move.l	glob153(a5),d0
	addq.l	#4,d0
	move.l	d0,glob258(a5)
	move.l	glob153(a5),d0
	add.l	#$1b58,d0
	move.l	d0,glob259(a5)
	clr.w	glob260(a5)
	clr.w	glob261(a5)
	lea	glob251(a5),a0
	lea	glob253(a5),a1
	move.l	(a1)+,(a0)+
	move.l	(a1)+,(a0)+
	move.l	(a1)+,(a0)+
	move.w	(a1),(a0)
	move.l	glob256(a5), glob251(a5)
	pea	glob251(a5)
	_SetPBits ; (bm:BitMap) A875
	pea	glob252(a5)
	_PaintRect ; (r:Rect) A8A2
ljz_7	clr.l	-(sp)
	moveq	#14,d0
	push.l	d0
	jsr	1/NewPtr(a5)
	pop.l	glob245(a5)
	movea.l	glob245(a5),a4
	move.w	#1,4(a4)
	move.b	glob247(a5),d0
	beq.s	ljz_9
	move.b	glob122(a5),d0
	beq.s	ljz_8
	lea	proc150(a5),a0
	move.l	a0,6(a4)
	bra.s	ljz_10
ljz_8	lea	proc148(a5),a0
	move.l	a0,6(a4)
	bra.s	ljz_10
ljz_9	lea	proc149(a5),a0
	move.l	a0,6(a4)
ljz_10	move.w	#2,10(a4)
	clr.w	12(a4)
	moveq	#0,d0
	move.l	d0,glob241(a5)
	clr.w	glob240(a5)
	clr.l	-(sp)
	moveq	#14,d0
	push.l	d0
	jsr	1/NewPtr(a5)
	pop.l	glob244(a5)
	movea.l	glob244(a5),a4
	move.w	#1,4(a4)
	lea	proc147(a5),a0
	move.l	a0,6(a4)
	move.w	#2,10(a4)
	clr.w	12(a4)
	moveq	#0,d0
	move.l	d0,glob243(a5)
	clr.b	glob236(a5)
	move.w	#$155,glob237(a5)
	clr.b	glob238(a5)
	movem.l	(sp)+,a3-a4
	unlk	a6
	pop.l	(sp)
	rts	

                                 ;-refs -  4/proc236   

data172	str	'umem'

                                 ;-refs -  4/proc236   

data173	str	'mmem'

