; vi: syntax=asm68k

;:34b2			2/proc138()

;Aim/throw rock or fireball + arm
;	arg D0:	(coord_t) dc X
;	    D1:	(coord_t) dc Y

aim_kugel:
	movem.l	  d0-d7/a0-a4,-(sp)
	movea.l	 currpg(a5),	a0
	movea.l	  _SPRV(a6),	a4
	clr.w			d7
	;branch by st #AIM,HID,THW,THI
	move.w	  _KGST(a6),	d2
	asl.w		 2,	d2
	jmp	  aimjt(d2.w)
aimjt:				;:34ca
	jmp	  .staim
	jmp	  .sthid
	jmp	  .stthw
	jmp	  .stthi

;:34da	dc->kgst(#HID) #1
sthid	move.w	   _TRJ(a6),	d2
	cmp.w	  _TRJ0(a6),	d2
	bne.s	  .showarm
	btst.b	     #MOU, _JOY(a6)
	bne.s	  .showarm
	;traj unchanged/no click [.7]
hid2	move.w		#7,	d2
	bra	  .blitaim
	;arm moved OR click -> #AIM
showarm	move.w	     #25, _AIMC(a6)
	clr.w		  _KGST(a6)
	nop

;3500	c->kgst(#AIM) #0
staim	move.w	   _TRJ(a6),	d2
	cmp.w	  _TRJ0(a6),	d2
	beq.s	  .aim2
	;new trajectory (9 bits wide)
dtrj	move.w	     #25, _AIMC(a6)
	move.w	      d2, _TRJ0(a6)

aim2	subq.w	      #1,  _KGC(a6)
	bge.s	  .aim3
	;(--kgc < 0) throw timeout
kgtmout	clr.w		   _KGC(a6)
	btst.b	    #MOU,  _JOY(a6)
	beq.s	  .aim3
	;(mouse click) = throw kugel
kgstart	move.w	     #25, _AIMC(a6)
	move.w	      #4,  _KGC(a6)
	move.w	      #8,	d2
	move.w	     #16,	d7
	;low (< 192°)/high throw?
startlo	move.w	    #THW, _KGST(a6)
	cmpi.w	    #192,  _TRJ(a6)
	bgt	  .blitaim
starthi	move.w	    #THI, _KGST(a6)
	bra	  .blitaim
;:3554
	;(kgc >= 0) || no click
aim3	asr.w	       6,	d2
	subq.w	      #1, _AIMC(a6)
	bgt	  .blitaim
	;aim timeout -> hide arm
aimout	move.w	    #HID, _KGST(a6)
	bra	  .blitaim

;:3568	dc->kgst(#THW) #2
stthw	move.w		#9,	d2
	bra.s	  .throw
;:356e	dc->kgst(#THI) #3
stthi	move.w	       #10,	d2
	;next state #AIM
throw	clr.w		  _KGST(a6)
	tst.w		  _FACE(a6)
	blt.s	  .lthrow
	;SPR_RARM <.11>/#112 (-12,-6)
rthrow	movea.l	   12*4(a4),	a1
	lea    rtraj_xy(pc),	a2
	subq.w		#6,	d1
	addq.w		#4,	d0
	subi.w	       #16,	d0
	bra.s	  .blthrow
	;SPR_LARM <.11>/#111 (+2,-6)
lthrow	movea.l	   11*4(a4),	a1
	lea    ltraj_xy(pc),	a2
	subq.w		#6,	d1
	subi.w	       #14,	d0
	addi.w	       #16, 	d0
	;blit throwing arm [.9|.10]
blthrow	jsr	     3/blit_spr(a5)

throw2	btst.b	      #FB, _FLG(a6)
	bne.s	  .thwfb
	;SPR_ROCK <.4>/#113, 16x8px
thwrock	movea.l	   13*4(a4),	a0
	tst.b		  rocks(a5)
	beq.s	  .throw3
	;rocks remain -> 'nyah' sound
	move.w		d0,   -(sp)
	move.w		#7,	d0
	jsr	1/play_snd(a5)
	move.w	       (sp)+,	d0
	bra.s	  .throw3
	;SPR_FIREBALL <.2>/#138, 16x9px
thwfb	movea.l	   38*4(a4),	a0
	tst.b		  rocks(a5)
	beq.s	  .throw3
	move.w		d0,   -(sp)
	move.w		#9,	d0
	jsr	1/play_snd(a5)
	move.w	       (sp)+,	d0

	;traj -> <lr>traj_xy[] index
throw3	lea	 kghead(a5),	a1
	move.w	   _TRJ(a6),	d2
	asr.w		6,	d2
	asl.w		1,	d2
	adda.w		d2,	a2
	;get ∆x,∆y (struct ani2v_t[8])
getdx	move.b	       (a2)+,	d2
	ext.w			d2
	add.w		d2,	d0
getdy	move.b	       (a2),	d3
	ext.w			d3
	add.w		d3,	d1

	;compute kugel velocity
	;∆y = traj - 300. [-300,+212]
kgveloc	move.w	   _TRJ(a6),	d3
	move.w	       #300,	d2
	subi.w	       #300,	d3
	bmi.s	  .negdy
	;{∆y≥0} ∆x = 600-traj [300,88]
posdy	sub.w		d3,	d2
	bra.s	  .veloc2
	;{∆y<0} ∆x = traj     [0,299]
negdy	add.w		d3,	d2
	;make long, >>= 3
veloc2	ext.l			d2
	ext.l			d3
	moveq	       #13,	d5
	asl.l		d5,	d2
	asl.l		d5,	d3

	tst.w		  _FACE(a6)
	bge.s	  .rveloc
	;facing LEFT: -∆x (RIGHT: +∆x)
lveloc	neg.l			d2
rveloc	cmpi.w	     #B212, _ST(a6)
	bne.s	  .veloc3
	cmpi.w	    #(3*4), _VFN(a6)
	bne.s	  .veloc3
	;state(B212):fn(3) -> in chopper
b212dx	move.w	    _V2(a6),	d4
	add.w		d4,	d0
	swap			d4
	clr.w			d4
	add.l		d4,	d2
	;gravity accl (x1/$10000px/fr²)
veloc3	move.l	#$0000d555,	d4

	tst.b		  rocks(a5)
	beq.s	  .endaim
	;--rocks remain (bcd_t)
decrock	move.b	rocks(a5),	d7
	move.b	    #1,		d6
	andi.b  #%00000111,	ccr
	sbcd.b	    d6,		d7
	move.b	    d7,   rocks(a5)
	move.w	    #2, rocklen(a5)
	;create new kugel
	jsr	     2/mk_kugel(pc)
	bra	  .endaim

blitaim	tst.w		  _FACE(a6)
	blt.s	  .lbltaim
	;SPR_RARM <.11>/#112 (+4[-16],-6)
rbltaim	movea.l	   12*4(a4),	a1
	subq.w		#6,	d1
	addq.w		#4,	d0
	sub.w		d7,	d0
	bra.s	  .bltaim2
	;SPR_LARM <.11>/#111 (-14[+16],-6)
lbltaim	movea.l	   11*4(a4),	a1
	subq.w		#6,	d1
	subi.w	       #14,	d0
	add.w		d7,	d0
	;blit throwing arm (32x32px)
bltaim2	jsr	     3/blit_spr(a5)

endaim	movem.l	   (sp)+, d0-d7/a0-a4
	rts

;:368a
rtraj_xy:
	dc.b	+16,	+3
	dc.b	+16,	+3
	dc.b	+16,	+3
	dc.b	+16,	+3
	dc.b	+19,	+19
	dc.b	+19,	+19
	dc.b	+19,	+19
	dc.b	+19,	+19

	dc.b	+19,	+19
;:369c
ltraj_xy:
	dc.b	+11,	+4
	dc.b	+11,	+4
	dc.b	+11,	+4
	dc.b	+11,	+4
	dc.b	+12,	+19
	dc.b	+12,	+19
	dc.b	+12,	+19
	dc.b	+12,	+19
