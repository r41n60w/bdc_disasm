; vi: syntax=asm68k

;0(A6).L  (int16_t *)	.statp	stat ptr
;4(A6).w  (int16_t)	.stat0	old value
;6(A6).w  (int16_t)	.bltc	pages to draw
;8(A6).L  (HUDRect *)	.hrect	dimensions
;12(A6)   (Str255[3])	.tosz	string to draw


;{ 3/proc172 }  

;:433c			3/proc220()
;Create HUD stat (eg. # lives)
;  arg A0(int16_t *):	ptr to stat counter
;  arg A1(HUDRect *):	HUD dimensions

mk_hudstat:
	movea.l		a0,	a3
	movea.l		a1,	a4
	moveq	       #24,	d0
  	_NewPtr
	lea	3/cb_hudstat,	a1
	move.l	   a1,      _CB(a0)
	move.l	   a3, 8+_STATP(a0)
	move.l	   a4,  8+_RECT(a0)
	move.w #$7fff, 8+_STAT0(a0)
	clr.w		8+_BLTC(a0)
	move.l	qobj(a5), _NEXT(a0)
	move.l	     a0,   qobj(a5)
	rts	


;:4368			3/data162[148]
;HUD stat object func
;  arg A6(hudstat_t *):	obj

cb_hudstat:
	;get D0/curr value
	movea.l	 _STATP(a6),	a0
	move.w	       (a0),	d0
	subq.w	      #1, _BLTC(a6)
	bgt.s	  .blthud
	;drawing complete
	clr.w		  _BLTC(a6)
	cmp.w	 _STAT0(a6),	d0
	beq	  .endstat
	;stat changed, save
	move.w	     d0, _STAT0(a6)
	;range [0,99]
minstat	bge.s	  .maxstat
	clr.w			d0
maxstat	cmpi.w	       #99,	d0
	ble.s	  .initsz
	move.w	       #99,	d0
	;init Str255[2]
initsz	move.w	      #2, _BLTC(a6)
	lea	_TOSZ(a6),	a0
	move.w	  #$02ca,      (a0)+
	move.b	    #'0',      (a0)+
	;clear hiword
	swap			d0
	clr.w			d0
	swap			d0
	;convert to decimal
itoa	divu.w	       #10,	d0
	swap			d0
	addi.w	      #'0',	d0
	move.b		d0,   -(a0)
	clr.w		d0
	swap		d0
	bne.s	  .itoa

	;draw onto HUD
blthud	cmpi.w	      #2, _BLTC(a6)
	ble.s	  .blthud2
	move.w	      #1, _BLTC(a6)
blthud2	lea	    pg1(a5),	a0
	cmpa.l	 currpg(a5),	a0
	bne.s	  .page2
page1	pea	  bits1(a5)
	bra.s	  .setbits
page2	pea	  bits2(a5)
;:43dc $a875(BitMap *)
setbits	_SetPBits
	;A4/(HUDRect *) dimensions
	movea.l	 _HRECT(a6),	a4
	pea	  _RECT(a4)
;	$a8a2(Rect *)
	_PaintRect
	move.w _RECT.left(a4),-(sp)
	move.w	_RECT.top(a4),-(sp)
	addq.w		  #7,  (sp)
;	$a893(h,v)
	_MoveTo
	pea		  _TOSZ(a6)
;	$a884(Str255 *)
	_DrawString
endstat	rts		;:43fa
