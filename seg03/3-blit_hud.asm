; vi: syntax=asm68k

;{ 3/proc179, 3/proc181,
;  3/proc183, 3/proc185 }

;:0238		3/proc140()
;Blit sprite to HUD
; [Like blit_spr(), unbuffered +
;  		    no layer mask]
; [all regs preserved]
;  arg A0(pg_t *), D0/D1([xy]pos_t)
;  arg A1(sprhdr_t *), D2(frame_t)

blit_hud:
	movem.l	d0-d7/a1-a4/a6, -(sp)
	;D0/(.X mod 15) cell offset
	move.w		d0,	d3
	andi.w	#%00001111,	d0
	;D3/(.X/8 & ~1) cell bytes
	asr.w		#3,	d3
	andi.w	    #$fffe,	d3
	;D4/(--spr.scel)  cells, -1
cels	move.w	  _SCEL(a1),	d4
	subq.w		#1,	d4
	ext.l			d4
	;D5/(--spr.srow)   rows, -1
rows	move.w	  _SROW(a1),	d5
	subq.w		#1,	d5
	ext.l			d5
	;D2/2(fr*spr.flen) frame off.B
froff	asl.w		#1,	d2
	mulu.w	_FLEN(a1),	d2
	;A3/spr.sdat(D2)  *frame_bits
sprp	movea.l		a1,	a3
	adda.w	       #14,	a3
	adda.l		d2,	a3
	;A4/spr.flen(A3)  *frame_mask
maskp	movea.l		a3,	a4
	adda.w	  _FLEN(a1),	a4

blthud2	tst.w		d1
	bge.s	  .destp
	;(.Y < 0) D5 -= (-.Y)
offtop	neg.w		d1
	sub.w		d1,	d5
	ble	  .endbhud
	;adjust sprite *bits, *mask
	addq.l		#1,	d4
	mulu.w		d4,	d1
	subq.l		#1,	d4
	asl.l		#1,	d1
	adda.l		d1,	a3
	adda.l		d1,	a4
	;(.Y = 0)
	moveq		#0,	d1

destp	move.w	  _RWLN(a0),	d6
	ext.l			d6
	;A1/(Byte *) screen page
	; -> points to target pos
	movea.l	    _PG(a0),	a1
	mulu.w		d6,	d1
	ext.l		d3
	add.l		d3,	d1
	adda.l		d1,	a1
	;D6/(off_t) between rows
bwoff	asl.l		#1,	d4
	sub.l		d4,	d6
	asr.l		#1,	d4
	subq.l		#4,	d6

	;blit one row
rowlp	move.l		d4,	d7
	;first cell in row
	move.w	       (a1)+,	d1
	swap			d1
	;loop over row cells 
cellp	move.w	       (a1)+,	d1
	;(spr mask >> cell offset).L
mask32	move.w	       (a4)+,	d3
	swap			d3
	clr.w			d3
	ror.l		d0,	d3
	not.l			d3
	;mask out screen long
	and.l		d3,	d1
	;(spr word >> cell offset).L
spr32	move.w	       (a3)+,	d3
	swap			d3
	clr.w			d3
	ror.l		d0,	d3
	;blit spr on masked bg
doblit	or.l		d3,	d1
	;write hi word -> (screen)
	swap			d1
	move.w		d1,  -4(a1)
	;next cell
nxcell	dbra		d7, .cellp
	;write last cell
	swap		d1
	move.w		d1,  -2(a1)
	;advance scrn ptr -> (next row)
	adda.l		d6,	a1
nxrow	dbra		d5, .rowlp

endbhud	movem.l	(sp)+, d0-d7/a1-a4/a6
	rts	
