; vi: syntax=asm68k

;0(A6).b  (int8_t)  .hh0  old health
;2(A6).w  (int16_t) .hhc  blit count


;{ 3/proc172 }

;:4240		3/proc219()
;Create health bar updater
;	no args

mk_health:
	moveq	       #12,	d0
  	_NewPtr
	lea	3/cb_health,	a1
	move.l		a1, _CB(a0)
	move.l   #$ffff, 8+_HH0(a0)
	clr.w		 8+_HHC(a0)
	move.l	qobj(a5), _NEXT(a0)
	move.l	     a0,   qobj(a5)
	move.w #(100<<8),health(a5)
	rts	


;:4268		3/data161[]
;Health bar obj func
;  arg A6(health_t *):	obj

cb_health:
	tst.w		 health(a5)
	beq.s	  .health2
	;incremental loss (<1%)
	subq.w	     #6, health(a5)
	cmpi.w #(15<<8), health(a5)
	bgt	  .health2
	;(<15% health) bob interval
absolv	subq.w	    #1, absolvc(a5)
	bgt.s	  .health2
	;timeout -> update ivl
	move.b	 health(a5),	d0
	ext.w			d0
	addq.w	    #3,		d0
	move.w	    d0, absolvc(a5)
	;low health "bob" sound
	move.w	    d0,       -(sp)
	move.w	#SND_ABSOLV,	d0
	jsr	     1/play_snd(a5)
	move.w	   (sp)+,	d0

health2	subq.w	       #1, _HHC(a6)
	bgt.s	  .bltheal
	clr.w		   _HHC(a6)
	move.b	 health(a5),	d0
	ext.w			d0
	cmp.b	   _HH0(a6),	d0
	beq	  .endheal
	;health changed, save
	move.b	       d0, _HH0(a6)
	move.w	       #2, _HHC(a6)
	tst.w			d0
	bge.s	  .lrect
	clr.w			d0
	;A0/(Rect *)
lrect	lea	 3/lhealth,	a0
	move.w	      2(a0),	d1
	add.w		d0,	d1
	move.w		d1,   6(a0)
rrect	lea	 3/rhealth,	a0
	move.w	      6(a0),	d1
	subi.w	      #100,	d0
	add.w		d0,	d1
	move.w		d1,   2(a0)


bltheal	cmpi.w	       #2, _HHC(a6)
	ble.s	  .blthea2
	move.w	       #1, _HHC(a6)
blthea2	lea	    pg1(a5),	a0
	cmpa.l	 currpg(a5),	a0
	bne.s	  .page2
	pea	  bits1(a5)
	bra.s	  .setbits
page2	pea	  bits2(a5)

;void SetPBits(BitMap *);
;void FillRect(Rect *, Pattern *);
setbits	_SetPBits
	pea	3/rhealth
	pea	3/hhwhite
	_FillRect
	pea	3/lhealth
	pea	3/hhgrey
	_FillRect
	bra	  .endheal

rhealth:	;Rect[8]:431a
	dc.w	330,   0, 337, 336
lhealth:	;Rect[8]:4322
	dc.w	330, 236, 337,   0

hhgrey:		;Pattern[8]:432a
	dc.b	$55, $aa, $55, $aa
	dc.b	$55, $aa, $55, $aa
hhwhite:	;Pattern[8]:4332
	dc.b	$00, $00, $00, $00
	dc.b	$00, $00, $00, $00

endheal	rts		;:433a
