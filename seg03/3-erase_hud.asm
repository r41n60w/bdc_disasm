; vi: syntax=asm68k

;{ 3/proc180    3/proc182    3/proc184 } 

;:02d8			3/proc141()

erase_hud:
	movem.l	d0-d7/a1-a4/a6, -(sp)
	move.w		d0,	d3
	andi.w	#%00001111,	d0
	asr.w		#3,	d3
	andi.w	    #$fffe,	d3
cels	move.w	  _SCEL(a1),	d4
	subq.w		#1,	d4
	ext.l			d4
rows	move.w	  _SROW(a1),	d5
	subq.w		#1,	d5
	ext.l			d5
froff	asl.w		#1,	d2
	mulu.w	  _FLEN(a1),	d2
sprp	movea.l		a1,	a3
	adda.w	       #14,	a3
	adda.l		d2,	a3
maskp	movea.l		a3,	a4
	adda.w	  _FLEN(a1),	a4

delhud2	tst.w		d1
	bge.s	  .destp
offtop	neg.w		d1
	sub.w		d1,	d5
	ble	  .enddhud
	addq.l		#1,	d4
	mulu.w		d4,	d1
	subq.l		#1,	d4
	asl.l		#1,	d1
	adda.l		d1,	a3
	adda.l		d1,	a4
	moveq		#0,	d1

destp	move.w	  _RWLN(a0),	d6
	ext.l			d6
	movea.l	    _PG(a0),	a1
	mulu.w		d6,	d1
	ext.l		d3
	add.l		d3,	d1
	adda.l		d1,	a1
bwoff	asl.l		#1,	d4
	sub.l		d4,	d6
	asr.l		#1,	d4
	subq.l		#4,	d6

rowlp	move.l		d4,	d7
	move.w	       (a1)+,	d1
	swap			d1
cellp	move.w	       (a1)+,	d1
	move.w	       (a4)+,	d3
	swap			d3
	clr.w			d3
	ror.l		d0,	d3
	or.l		d3,	d1
	swap		d1
	move.w		d1,  -4(a1)
nxcell	dbra		d7, .cellp
	swap		d1
	move.w		d1,  -2(a1)
	adda.l		d6,	a1
nxrow	dbra		d5, .rowlp

enddhud	movem.l	(sp)+,d0-d7/a1-a4/a6
	rts	
