; vi: syntax=asm68k

;{
; 2/proc116	2/proc120	2/com_10
; 2/proc131	2/com_13	2/com_14
; 2/com_16	2/com_18	2/com_19
; 2/com_23	2/proc133	2/com_30
; 2/com_32	2/proc141	2/com_35
; 2/proc145	6/proc304	6/proc305
; 6/proc306	7/proc310	7/proc311
; 8/proc315	8/proc316	8/proc318
; 8/proc319	8/proc321	8/proc322
; 8/proc323	8/proc324	8/proc328
; 9/proc334	9/proc335	11/	94
; 11/proc345	12/proc353	13/proc356
; 14/proc359	15/proc362	15/proc363
; 16/proc371 }

;:0000			3/proc146()
;Blit (masked) sprite onto current page
;	arg A0:		(pg_t *) curr page
;	arg A1:		unpacked (spr_t *)
;	arg D0.w:	sprite X (coord_t)
;	arg D1.w:	  "    Y (coord_t)
;	arg D2.w:	frame [.#]

blit_spr:
	movem.l	 d0-d7/a1-a6, -(sp)
	sub.w	  _SCRX(a0),	d0
	sub.w	  _SCRY(a0),	d1
	move.w		d0,	d7
	;spr X mod 16: [0,15] -> [16,1]
getshif	andi.w	#%00001111,	d0
	subi.w	       #16,	d0
	neg.w			d0

getcell	asr.w		#3,	d7
	andi.w	    #$fffe,	d7
	move.w	 _CELS(a1),	d3
	move.w	 _ROWS(a1),	d4
	;D2 = (fr#*2) * sizeof(fr) + head
seekfr	asl.w		#1,	d2
	mulu.w	_FRLEN(a1),	d2
	addi.w	       #14,	d2
	;A1 -> fr bitmap, A2 -> bitmask
	movea.l		a1,	a2
	adda.w	 _FRLEN(a1),	a2
	adda.w		d2,	a1
	adda.w		d2,	a2

ybound	tst.w			d1
	bge.s	  .ybound2
	;(Y<0) offscreen, D4 visible rows
offtop	add.w		d1,	d4
	ble	  .endblit
	;partially onscreen, adjust ptrs
	;D1 = (cells * -Y) * 2
parttop	mulu.w		d3,	d1
	asl.w		#1,	d1
	suba.w		d1,	a1
	suba.w		d1,	a2
	clr.w		d1

ybound2	move.w  	d1,	d6
	add.w		d4,	d6
	;= 292|341 -$78(g244)
	sub.w	winbtm(a5),	d6
	ble.s	  .blit2
	;past scrn bottom, D4 visible rows
offbtm	sub.w		d6,	d4
	ble	  .endblit

blit2	movea.w	    #$0040,	a6
	movea.l	    _FB(a0),	a3
	movea.l	    _BG(a0),	a4
	asl.w		#6,	d1

xbound	tst.w			d7
	blt	  .offleft
xbound2	move.w		d3,	d5
	asl.w		#1,	d5
	add.w		d7,	d5
	subi.w	       #62,	d5
	bgt	  .offrigh

	;spr completely onscreen
onscrn	add.w		d7,	d1
	adda.w		d1,	a3
	adda.w		d1,	a4
	movea.l	   _BFP(a0),	a5
	move.w		d3,    (a5)+
	move.w		d4,    (a5)
	subq		#1,    (a5)+
	ext.l		d1
	move.l		d1,    (a5)+
	cmpi		#1,	d3
	beq	  .width16
	;2+ cells (32+ px) wide
	asl.w		#1,	d3
	suba.w		d3,	a6
	asr.w		#1,	d3
	subq		#2,	a6
	move.l		a6,    (a5)+
	subq		#1,	d3
	subq		#1,	d4

lgt_3   move.w  	d3,	d2
	move.w	(a3)+,d7
	move.w	d7,(a5)+
	move.w	(a4)+,d1
	swap	d7
	swap	d1
lgt_4   move.w	(a3)+,d7
	move.w	d7,(a5)+
	move.w	(a4)+,d1
	moveq	#0,d6
	move.w	(a2)+,d6
	rol.l	d0,d6
	and.l	d1,d6
	not.l	d6
	and.l	d6,d7
	moveq	#0,d6
	move.w	(a1)+,d6
	rol.l	d0,d6
	and.l	d1,d6
	or.l	d6,d7
	swap	d7
	move.w	d7,-4(a3)
	swap	d1	
	dbra	d2,lgt_4

	swap	d7
	move.w	d7,-2(a3)
	adda.w	a6,a3
	adda.w	a6,a4
	dbra	d4,lgt_3

	move.l	10(a0),(a5)+
	move.l	a5,10(a0)
	bra	  .endblit

	;spr off left scrn edge
offleft	move.w	d7,d5
	asr.w	#1,d5
	neg.w	d5
	cmp.w	d5,d3
	blt	  .endblit
	sub.w	d3,d5
	neg.w	d5
	add.w	d7,d1
	adda.w	d1,a3
	adda.w	d1,a4
	movea.l	10(a0),a5
	move.w	d3,(a5)+
	move.w	d4,(a5)
	subq	#1,(a5)+
	ext.l	d1
	move.l	d1,(a5)+
	asl.w	#1,d3
	suba.w	d3,a6
	asr.w	#1,d3
	subq	#2,a6
	move.l	a6,(a5)+
	subq	#1,d3
	subq	#1,d4
lgt_6   move.w	d3,d2
	move.w	(a3)+,d7
	move.w	d7,(a5)+
	move.w	(a4)+,d1
	swap	d7
	swap	d1
lgt_7	move.w	(a3)+,d7
	move.w	d7,(a5)+
	move.w	(a4)+,d1
	moveq	#0,d6
	move.w	(a2)+,d6
	rol.l	d0,d6
	and.l	d1,d6
	not.l	d6
	and.l	d6,d7
	moveq	#0,d6
	move.w	(a1)+,d6
	rol.l	d0,d6
	and.l	d1,d6
	or.l	d6,d7
	swap	d7
	cmp.w	d5,d2
	bge.s	lgt_8
	move.w	d7,-4(a3)
lgt_8	swap	d1
	dbra	d2,lgt_7
	swap	d7
	move.w	d7,-2(a3)
	adda.w	a6,a3
	adda.w	a6,a4
	dbra	d4,lgt_6

	move.l	10(a0),(a5)+
	move.l	a5,10(a0)
	bra	  .endblit

	;spr off right scrn edge
offrigh	asr.w	#1,d5
	cmp.w	d5,d3
	blt	  .endblit
	add.w	d7,d1
	adda.w	d1,a3
	adda.w	d1,a4
	movea.l	10(a0),a5
	move.w	d3,(a5)+
	move.w	d4,(a5)
	subq	#1,(a5)+
	ext.l	d1
	move.l	d1,(a5)+
	asl.w	#1,d3
	suba.w	d3,a6
	asr.w	#1,d3
	subq	#2,a6
	move.l	a6,(a5)+
	subq	#1,d3
	subq	#1,d4
	subq	#1,d5
lgt_10	move.w	d3,d2
	move.w	(a3)+,d7
	move.w	d7,(a5)+
	move.w	(a4)+,d1
	swap	d7
	swap	d1
lgt_11	move.w	(a3)+,d7
	move.w	d7,(a5)+
	move.w	(a4)+,d1
	moveq	#0,d6
	move.w	(a2)+,d6
	rol.l	d0,d6
	and.l	d1,d6
	not.l	d6
	and.l	d6,d7
	moveq	#0,d6
	move.w	(a1)+,d6
	rol.l	d0,d6
	and.l	d1,d6
	or.l	d6,d7
	swap	d7
	cmp.w	d2,d5
	bgt.s	lgt_12
	move.w	d7,-4(a3)
lgt_12	swap	d1
	dbra	d2,lgt_11
	swap	d7
	adda.w	a6,a3
	adda.w	a6,a4
	dbra	d4,lgt_10
	move.l	10(a0),(a5)+
	move.l	a5,10(a0)
	bra	  .endblit

	;single cell (16 bits) wide
width16	movea.w	#60,a6
	move.l	a6,(a5)+
	subq	#1,d4
lgt_14	move.l	(a3)+,d7
	move.l	d7,(a5)+
	move.l	(a4)+,d1
	moveq	#0,d6
	move.w	(a2)+,d6
	rol.l	d0,d6
	and.l	d1,d6
	not.l	d6
	and.l	d6,d7
	moveq	#0,d6
	move.w	(a1)+,d6
	rol.l	d0,d6
	and.l	d1,d6
	or.l	d6,d7
	move.l	d7,-4(a3)
	adda.w	a6,a3
	adda.w	a6,a4
	dbra	d4,lgt_14

	move.l	10(a0),(a5)+
	move.l	a5,10(a0)
	bra	  .endblit
endblit	movem.l (sp)+, d0-d7/a1-a6
	rts	
