; vi: syntax=asm68k

DC_TRJ	equ	+32	;  (short).W
DC_TRJ0	equ	+34	;  (short).W
DC_KGST	equ	+36	;(state_t).W
DC_AIMC	equ	+38	;  (ivl_t).W
DC_KGC	equ	+40	;  (ivl_t).W
DC_ELXC	equ	+42	;  (ivl_t).W
DC_ST0	equ	+44	;(state_t).W
DC_SHDC	equ	+46	;  (ivl_t).W

AIM	equ	0
HID	equ	1
THW	equ	2
THI	equ	3


;     $02ca(A5) -> 02/proc138():34b2
;Aim/throw rock or fireball + arm
;   arg	A6(Hero *).L: (*this)
;   arg	D0  (px_t).W: player.X
;   arg	D1  (py_t).W:   "   .Y
;no ret
;	D0-D7,A0-A4 preserved

aim_kugel:
	movem.l	  d0-d7/a0-a4,-(sp)
	movea.l	 currpg(a5),	a0
	movea.l	DC_SPRV(a6),	a4
	clr.w			d7
	;branch by state
	;-> #AIM,#HID,#THW,#THI
	move.w	DC_KGST(a6),	d2
	asl.w		#2,	d2
	jmp	  aimjt(d2.W)
			  ;[4]:34ca
aimjt	jmp	  .staim	;#0
	jmp	  .sthid	;#1
	jmp	  .stthw	;#2
	jmp	  .stthi	;#3


	;dc->kgst(1/#HID)    :34da
sthid	move.w	  _TRJ (a6),	d2
	cmp.w	  _TRJ0(a6),	d2
	bne.s	  .showarm
	btst	    #MOU, _JOYF(a6)
	bne.s	  .showarm
	;traj unchanged/no click[.7]
hid2	move.w		#7,	d2
	bra	  .bltaim
	;arm moved OR click -> #AIM
showarm	move.w	     #25, _AIMC(a6)
	clr.w		DC_KGST(a6)
	nop
	;fall thru...


	;dc->kgst(0/#AIM)    :3500
staim	move.w	  _TRJ (a6),	d2
	cmp.w	  _TRJ0(a6),	d2
	beq.s	  .aim2
	;new trajectory, 9 bits wide
dtrj	move.w	     #25, _AIMC(a6)
	move.w	      d2, _TRJ0(a6)

aim2	subq.w	      #1,  _KGC(a6)
	bge.s	  .aim3
	;(--kgc < 0) throw timeout
kgtmout	clr.w		   _KGC(a6)
	btst.b	  #MOU, DC_JOYF(a6)
	beq.s	  .aim3
	;(mouse click): throw kugel
kgstart	move.w	     #25, _AIMC(a6)
	move.w	      #4,  _KGC(a6)
	move.w	      #8,	d2
	move.w	     #16,	d7
	;low (< 192°)/high throw?
startlo	move.w	    #THW, _KGST(a6)
	cmpi.w	    #192,  _TRJ(a6)
	bgt	  .bltaim
starthi	move.w	    #THI, _KGST(a6)
	bra	  .bltaim

	;(kgc >= 0) || !click :3554
aim3	asr.w	       6,	d2
	subq.w	      #1, _AIMC(a6)
	bgt	  .bltaim
	;aim timeout -> hide arm
aimout	move.w	    #HID, _KGST(a6)
	bra	  .bltaim


	;dc->kgst(2/#THW)    :3568
stthw	move.w		#9,	d2
	bra.s	  .throw

	;dc->kgst(3/#THI)     :356e
stthi	move.w	       #10,	d2
	;next state #AIM
throw	clr.w		  _KGST(a6)
	tst.w		 DC_DIR(a6)
	blt.s	  .lthrow
	;SPR_RARM<.11>/#112 (-12,-6)
rthrow	movea.l	   12*4(a4),	a1
	lea    02/rtraj_xy,	a2
	subq.w		#6,	d1
	addq.w		#4,	d0
	subi.w	       #16,	d0
	bra.s	  .blthrow
	;SPR_LARM <.11>/#111 (+2,-6)
lthrow	movea.l	   11*4(a4),	a1
	lea    02/ltraj_xy,	a2
	subq.w		#6,	d1
	subi.w	       #14,	d0
	addi.w	       #16, 	d0
	;blt throwing arm [.9|.10]
blthrow	jsr	     03/blt_spr(a5)

throw2	btst.b	    #FB, DC_FLG(a6)
	bne.s	  .thwfb
	;SPR_ROCK <.4>/#113, 16x8px
thwrock	movea.l	   13*4(a4),	a0
	tst.b		  rocks(a5)
	beq.s	  .throw3
	;rocks remain -> 'nyah' snd
	move.w		d0,   -(sp)
	move.w		#7,	d0
	jsr	    01/play_snd(a5)
	move.w	       (sp)+,	d0
	bra.s	  .throw3
	;SPR_FIREBL<.2>/#138, 16x9px
thwfb	movea.l	   38*4(a4),	a0
	tst.b		  rocks(a5)
	beq.s	  .throw3
	move.w		d0,   -(sp)
	move.w		#9,	d0
	jsr	    01/play_snd(a5)
	move.w	       (sp)+,	d0
	;traj -> <lr>traj_xy[] index
throw3	lea	 qkugel(a5),	a1
	move.w	   _TRJ(a6),	d2
	asr.w		#6,	d2
	asl.w		#1,	d2
	adda.w		d2,	a2
	;get ∆x,∆y (struct Ani2[8])
getdx	move.b	       (a2)+,	d2
	ext.w			d2
	add.w		d2,	d0
getdy	move.b	       (a2),	d3
	ext.w			d3
	add.w		d3,	d1
	;compute kugel velocity
	;∆y = traj - 300 [-300,+211]
kgveloc	move.w	   _TRJ(a6),	d3
	move.w	      #300,	d2
	subi.w	      #300,	d3
	bmi.s	  .negdy
	;{∆y≥0} ∆x=600-traj [300,89]
posdy	sub.w		d3,	d2
	bra.s	  .veloc2
	;{∆y<0} ∆x=traj     [0,299]
negdy	add.w		d3,	d2
	;make long, >>= 3
veloc2	ext.l			d2
	ext.l			d3
	moveq	       #13,	d5
	asl.l		d5,	d2
	asl.l		d5,	d3

	tst.w		 DC_DIR(a6)
	bge.s	  .rveloc
	;facing LEFT: -∆x
lveloc	neg.l			d2
	;     (RIGHT: +∆x)
rveloc	cmpi.w	   #B212, DC_ST(a6)
	bne.s	  .veloc3
	cmpi.w	    #+12, _VST4(a6)
	bne.s	  .veloc3
	;state(B212)->vst4(+12) @jet
b212dx	move.w	    _V2(a6),	d4
	add.w		d4,	d0
	swap			d4
	clr.w			d4
	add.l		d4,	d2
	;gravity (1/$10000 px/fr²)
veloc3	move.l	#$0000d555,	d4
	tst.b		  rocks(a5)
	beq.s	  .endaim
	;--rocks_remaining (bcd_t)
decrock	move.b	rocks(a5),	d7
	move.b	    #1,		d6
	;clear carry flag
	andi.b  #%00000111,    ccr
	sbcd.b	    d6,		d7
	move.b	    d7,   rocks(a5)
	move.w	    #2, rocklen(a5)
	;create new kugel
	jsr	   02/new_kugel(pc)
	bra	  .endaim

bltaim	tst.w		 DC_DIR(a6)
	blt.s	  .lbltaim
	;#112/SPR_RARM<.11>
	;(+4[-16],-6)
rbltaim	movea.l	   12*4(a4),	a1
	subq.w		#6,	d1
	addq.w		#4,	d0
	sub.w		d7,	d0
	bra.s	  .bltaim2
	;#111/SPR_LARM<.11>
	;(-14[+16],-6)
lbltaim	movea.l	   11*4(a4),	a1
	subq.w		#6,	d1
	subi.w	       #14,	d0
	add.w		d7,	d0
	;blt throwing arm, 32x32px
bltaim2	jsr	      3/blt_spr(a5)

endaim	movem.l	(sp)+, d0-d7/a0-a4
	rts


rtraj_xy:	    ;Ani2_xy[9]:368a
	dc.b	+16,	+3
	dc.b	+16,	+3
	dc.b	+16,	+3
	dc.b	+16,	+3
	dc.b	+19,	+19
	dc.b	+19,	+19
	dc.b	+19,	+19
	dc.b	+19,	+19

	dc.b	+19,	+19

ltraj_xy:	    ;Ani2_xy[8]:369c
	dc.b	+11,	 +4
	dc.b	+11,	 +4
	dc.b	+11, 	 +4
	dc.b	+11,	 +4
	dc.b	+12,	+19
	dc.b	+12,	+19
	dc.b	+12,	+19
	dc.b	+12,	+19
