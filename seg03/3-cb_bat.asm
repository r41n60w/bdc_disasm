; vi: syntax=asm68k

;0(A6).w  (xpos_t)	.batx
;2(A6).w  (ypos_t)	.baty
;4(A6).w  (frame_t)	.batfr
;6(A6).w  (xoff_t)	.batdx
;8(A6).w  (yoff_t)	.batdy
;10(A6).l (sprhdr_t *)	.baspr
;14(A6).w (ivl_t)	.sdmin
;16(A6).w (uint16_t)	.sdand
;18(A6).w (ivl_t)	.sndc
;20(A6).w (int16_t)	.batst {-1,0,+1}
;22(A6).w (ivl_t)	.zzc
;24(A6).w (ypos_t)	.ubat
;26(A6).w (ypos_t)	.dbat


;:1f38		3/data130[]
;Bat object function
;  arg A6(bat_t *): obj

BATBITE	equ	-1
BATNORM	equ	 0
BATKILL	equ	+1

cb_bat:
	tst.w		 _BATST(a6)
	blt	  .batbite
	bgt	  .batkill

	;state BATNORM (asleep/flying)
batnorm	move.w	 _BATX(a6),	d0
	move.w	 _BATY(a6),	d1
	move.w	_BATFR(a6),	d2
	movea.l	_BASPR(a6),	a1
	movea.l	currpg(a5),	a0
	subq.w	       #1, _ZZC(a6)
	bgt	  .bltzz
	;(!--zzc):  wake up bat
wakebat	clr.w		   _ZZC(a6)
	;move bat
	add.w	 _BATDX(a6),	d0
	add.w	 _BATDY(a6),	d1
	;next frame [1,3]
batfr	addq.w		#1,	d2
	cmpi.w		#3,	d2
	blt.s	  .batfr2
wrapfr	move.w		#1,	d2
batfr2	move.w	     d2, _BATFR(a6)
	move.w	     d0,  _BATX(a6)
	move.w	     d1,  _BATY(a6)
	jsr	     3/blit_spr(pc)

	cmpi.w		#5,	d0
	ble.s	0x1fac
	cmpi.w	      #500,	d0
	bge.s	0x1fac
	cmp.w	  _UBAT(a6),	d1
	ble.s	  .batdown
	cmp.w	  _DBAT(a6),	d1
	blt.s	0x1fb0
	;below bottom bound
batup	move.w	    #-3, _BATDY(a6)
	bra.s	0x1fb0
;:1fa4
	;above top bound
batdown	move.w	    #+3, _BATDY(a6)
	bra.s	0x1fb0
;:1fac
	;outside left/right bound
clrsndc	clr.w		  _SNDC(a6)


;:1fb0
	;A3/(dc_t *)
	movea.l	dcobj(a5),	a3
	addq.w	      #8,	a3
	subq.w	      #1, _SNDC(a6)
	bgt	  .collidc
	;#69/bat flap sound 
sndbat	move.w		d0,   -(sp)
	move.w	  #SND_BAT,	d0
	jsr	     1/play_snd(a5)
	move.w	       (sp)+,	d0
	;gen new interval -> .sndc
	move.w	 _SDMIN(a6), _SNDC(a6)
	move.w		d0,   -(sp)
	jsr	       3/random(pc)
	move.w		d0,	d3
	move.w	       (sp)+,	d0
	and.w	 _SDAND(a6),	d3
	add.w	      d3, _SNDC(a6)
	;update veloc (chase player)
	addq.w	      #8,	d0
	addq.w	      #6,	d1
	move.w	     _X(a3),	d4
	move.w	     _Y(a3),	d5
	addi.w	       #16,	d4
	addi.w	       #20,	d5
batdx	cmp.w		d0,	d4
	blt.s	  .lbatdx
	bgt.s	  .rbatdx
	;(dc.X == bat.X)
nodx	clr.w		 _BATDX(a6)
	bra.s	0x2010
lbatdx	move.w	    #-3, _BATDX(a6)
	bra.s	0x2010
rbatdx	move.w	    #+3, _BATDX(a6)

;:2010
batdy	cmp.w		d5,	d1
	blt.s	  .dbatdy
	bgt.s	  .ubatdy
nody	clr.w		 _BATDY(a6)
	bra.s	0x202a
ubatdy	move.w	    #-3, _BATDY(a6)
	bra.s	0x202a
dbatdy	move.w	    #+3, _BATDY(a6)
;:202a
	nop


;:202c
collidc	move.w	  _BATX(a6),	d0
	move.w	  _BATY(a6),	d1
	move.w	     _X(a3),	d4
	move.w	     _Y(a3),	d5
	move.w		d4,	d2
	move.w		d5,	d3
	movea.l	 _DCSPR(a3),	a2
	add.w	    _SW(a2),	d2
	add.w	    _SH(a2),	d3
	;D0/(xpos_t) bat.X   D1/bat.Y
	;D4/(xpos_t) dc.left D2/.right
	;D5/(ypos_t) dc.top  D3/.bottom
	cmp.w		d4,	d0
	blt.s	  .missdc
	cmp.w		d5,	d1
	blt.s	  .missdc
	cmp.w		d2,	d0
	bgt.s	  .missdc
	cmp.w		d3,	d1
	bgt.s	  .missdc
	;collide w/dc -> [BATBITE]
hitdc	move.w #BATBITE, _BATST(a6)
	addq.w	     #1,  xrats(a5)
	;move nearby
	move.w	     d0,      -(sp)
	jsr	       3/random(pc)
	move.w		d0,	d7
	move.w	       (sp)+,	d0
	move.w		d7,	d6
	andi.w	#%00001111,	d6
	move.w	     d6, _BATDX(a6)
	andi.w	#%11110000,	d7
	asr.w	     #4,	d7
	move.w	     d7, _BATDY(a6)
;:2082
missdc	bra	  .dgbat


	;state BATBITE: (biting player)
batbite	movea.l	dcobj(a5),	a3
	move.w	8+_X(a3),	d0
	move.w	8+_Y(a3),	d1
	move.w	_BATFR(a6),	d2
	movea.l	_BASPR(a6),	a1
	movea.l	currpg(a5),	a0
	;follow player
	add.w	 _BATDX(a6),	d0
	add.w	 _BATDY(a6),	d1
bitefr	addq.w		#1,	d2
	cmpi.w		#3,	d2
	blt.s	  .bltbite
wrapfr2	move.w		#1,	d2
bltbite	move.w	     d2, _BATFR(a6)
	move.w	     d0,  _BATX(a6)
	move.w	     d1,  _BATY(a6)
	jsr	     3/blit_spr(pc)
	bra	  .dgbat


	;state BATKILL: (dead/falling)
batkill	move.w	 _BATX(a6),	d0
	move.w	 _BATY(a6),	d1
	movea.l	_BASPR(a6),	a1
	movea.l	currpg(a5),	a0
	tst.w		   _ZZC(a6)
	bgt	0x2192
	blt	0x216a
	movea.l	  dcobj(a5),	a4
	movea.l	 8+_MAP(a4),	a2
	move.w		#4,	d2
	jsr	      3/proc204(pc) ;3f6c
	;ret D7.L/(tloff_t << rwoff_t)
	tst.w		d7
	beq.s	0x2148
	blt.s	0x2100
	swap		d7
	move.w	 _TL(a2,d7.w),	d5
	cmpi.w	#F_B212,	d5
	bne.s	0x2108
;:2100
	;(-1)
	clr.l		 -8+_CB(a6)
	bra	  .endbat
;:2108
	cmpi.w	#PL_STON, d5
	bne.s	0x2122
	move.w	#-1, _ZZC(a6)
	move.l	a2, 14(a6)
	move.w	d7, 18(a6)
	move.w	d1, _BATY(a6)
	bra.s	0x216a
;:2122
	cmpi.w	#15, d5
	bne.b	0x213c
	move.w	#-2, 0x16(a6)
	move.l	a2, 14(a6)
	move.w	d7, 18(a6)
	move.w	d1, _BATY(a6)
	bra.s	0x216a
;:213c
	move.w	#+2, 0x16(a6)
	move.w	d1, _BATY(a6)
	bra.s	0x2192
;:2148
	addi.w	       #30,	d1
	clr.w			d2
	cmpi.w	      #310,	d1
	blt.s	0x215c
	clr.l		 -8+_CB(a6)
	bra	  .endbat
;:215c
	jsr	     3/blit_spr(pc)
	addi.w	     #15, _BATY(a6)
	bra	  .endbat

;:216a
	cmpi.w	#-2, 0x16(a6)
	beq.s	0x2190
	movea.l	14(a6), a2
	move.w	18(a6), d4
	tst.w	_LX(a2,d4.w)
	bgt.s	0x2188
	clr.l		 -8+_CB(a6)
	bra	  .endbat
;:2188
	add.w	12(a2,d4.w),	d0
	move.w	      d0, _BATX(a6)
	bra.s	0x2192
;:2190
	addq.w	      #2, _BATX(a6)
;:2192
	addi.w	       #30,	d1
	move.w		#5,	d2
	jsr	     3/blit_spr(pc)
	subq.w	     #1, 4(a6)
	bgt	  .endbat
	clr.l		 -8+_CB(a6)
	bra	  .endbat


	;blit asleep [.0]
bltzz	jsr	     3/blit_spr(pc)


dgbat	lea	 qkugel(a5),	a0
	jsr	   3/collide_kg(pc)
	beq.s	  .endbat
	;rock/fireball hit bat
hitkg	clr.l	_KGX(a0)
sndbat2	move.w	d0, -(sp)
	move.w	#SND_BAT2, d0
	jsr	1/play_snd(a5)
	move.w	(sp)+, d0
	tst.w	_BATST(a6)
	beq.s	0x21d6
	;state BATBITE: (--xrats)
dgbite	subq.w	      #1, xrats(a5)
;:21d6
	move.w	#BATKILL, _BATST(a6)
	move.w	#60, 4(a6)
	clr.w	22(a6)
	subi.w	#20, _BATY(a6)
	move.w		#6,	d0
	jsr	3/proc207(pc)
endbat	rts
