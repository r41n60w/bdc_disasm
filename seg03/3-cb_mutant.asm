; vi: syntax=asm68k

;0(A6).w  (xpos_t)	.mutx
;2(A6).w  (ypos_t)	.muty
;4(A6).w  (xpos_t)      .lmut
;6(A6).w  (xpos_t)      .rmut
;8(A6).w  (xoff_t)      .mutdx
;10(A6).w (ivl_t)       .tjmin min rock iv

;12(A6).w (jtoff_t)     .mutst mode [mod4]
;14(A6).w (int16_t)     .mutfr frame index
;16(A6).w (ivl_t)       .mutc

;18(A6).w (xoff_t)      .tjdx rock traj dX
;20(A6).w (yoff_t)      .tjdy  "    "   dY
;22(A6).l (mutdoor_t *) .mdoor mutant door

;26(A6)   (struct un_t) .mutun[24] unit
;...
;52(A6).w (ivl_t)       .tjc rock interval

MUTNORM	equ	+0
MUTJMP	equ	+4
MUTKILL	equ	+8
MUTAIM	equ	+12


;:26e2		3/data133[]
;Mutant object function
;  arg A6(mutant_t "):  obj

cb_mutant:
	move.w	  _MUTX(a6),	d0
	move.w	  _MUTY(a6),	d1
	;A0/(pg_t *)->win.X
	movea.l	 currpg(a5),	a0
	move.w	  _WINX(a0),	d2
loffscr	subi.w	       #32,	d2
	cmp.w		d0,	d2
	bgt	  .retmuta
roffscr	addi.w	  #(512+32),	d2
	cmp.w		d0,	d2
	blt	  .retmuta
mutant2	move.w	 _MUTST(a6),	d7
	jmp	     3/mutjt(d7.w)

mutjt:			;:270c
	jmp	.mutnorm	;+0:28fe
	jmp	.mutjmp		;+4:2886
	jmp	.mutkill	;+8:28be
	jmp	.mutaim		;+12:27d2


	;(state dispatch)
mutdpch	move.w		d0,   -(sp)
	jsr	3/random(pc)
	move.w		d0,	d7
	move.w	       (sp)+,	d0
	andi.w	    #$7fff,	d7
	subq.w	       #1, _TJC(a6)
	bgt.s	  .mutdpc2

	;(--tjc) zero -> [MUTAIM]
throw	move.w _TJMIN(a6), _TJC(a6)
	movea.l	dcobj(a5),	a4
	addq.w	      #8,	a4
	cmpi.w	   #B212,   _ST(a4)
	bne.s	  .mutdpc2
	;[#B212] <SWAM>/<FORE>
throw2	cmpi.w	    #314,  _DCY(a4)
	bgt.s	  .jump
	;(throw rock)
throw3	andi.w	     #1,	d7
	add.w	     d7,   _TJC(a6)
	move.w	#MUTAIM, _MUTST(a6)
thrwsnd	move.w		d0,   -(sp)
	move.w	#SND_MUTANT,	d0
	jsr	     1/play_snd(a5)
	move.w	       (sp)+,	d0
	;compute trajectory
traj	move.w	   _DCX(a4),	d3
	sub.w		d0,	d3
	move.w	   _DCY(a4),	d4
	sub.w		d1,	d4
	move.w		d3,	d5
	bgt.s	  .traj2
	;(dc on left)
	neg.w			d5
traj2	move.w		d4,	d6
	bgt.s	  .traj3
	;(dc below)
	neg.w			d6
	;D5/D6([xy]off_t) ∆X/∆Y
traj3	add.w		d5,	d6
	asl.w		#5,	d3
	asl.w		#5,	d4
	ext.l			d3
	ext.l			d4
	divs.w		d6,	d3
	divs.w		d6,	d4
trajdx	move.w	     d3, _TJDX(a6)
	subq.w	     #6,	d4
trajdy	move.w	     d4, _TJDY(a6)
	bra.s	  .enddpch


mutdpc2	cmpi.w	    #20000,	d7
	blt.s	  .mutdpc3
	;(jump)
jump	move.w	#MUTJMP, _MUTST(a6)
jumpsnd	move.w		d0,   -(sp)
	move.w	#SND_MUTANT,	d0
	jsr	     1/play_snd(a5)
	move.w	       (sp)+,	d0
	bra.s	  .enddpch


mutdpc3	cmpi.w	    #10000,	d7
	blt.s	  .normal
	;(turn around)
reverse	neg.w		 _MUTDX(a6)
	; -> [MUTNORM] gen dispatch ivl
normal	andi.w	#%00000111,	d7
	addq.w	      #3,	d7
	move.w	      d7, _MUTC(a6)
	clr.w		 _MUTST(a6)
	;dispatched
enddpch	clr.w		 _MUTFR(a6)
	bra	  .dgmut


;:27d2	[+12/MUTAIM]
mutaim	move.w	_TJDX(a6),	d7
	bgt.s	  .raim
laim	cmp.w	_TJDY(a6),	d7
	blt.s	  .ldaim
	;(-dX) >= (-dY)
luaim	lea	3/lumutkg_fr,	a2
	bra.s	  .aimfr
ldaim	lea	3/ldmutkg_fr,	a2
	bra.s	  .aimfr
raim	neg.w			d7
	cmp.w	_TJDY(a6),	d7
	blt.s	  .rdaim
ruaim	lea	3/rumutkg_fr,	a2
	bra.s	  .aimfr
rdaim	lea	3/rdmutkg_fr,	a2
	;#337/SPR_MUTAIM<.7> 32x23px
aimfr	movea.l	237*4+spr(a5),	a1
	move.w	   _MUTFR(a6),	d3
	move.b	 (a2,d3.w),	d2
	addq.w	     #1,	d3
	move.w	     d3, _MUTFR(a6)
	ext.w			d2
	bge.s	  .aimfr2
	;[END] -> mode dispatch [.0]
aimend	clr.w			d2
	jsr	     3/blit_spr(pc)
	bra	  .mutdpch


aimfr2	cmpi.w	       #64,	d2
	blt.s	  .bltaim
	;(>= 64): create (kg_t)
kugel	andi.w	#%00111111,	d2
	movem.l	d0-d2/a0-a1, -(sp)
	cmpi.w	       #32,	d2
	blt.s	  .kugel2
	addi.w	       #24,	d0
kugel2	move.w	_TJDX(a6),	d2
	move.w	_TJDY(a6),	d3
	add.w		d2,	d0
	add.w		d3,	d1
	swap		d2
	clr.w		d2
	swap		d3
	clr.w		d3
	move.l	#$0000aaaa,	d4
	;#113/SPR_ROCK<.4> [!]16x[!]8px
	movea.l	13*4+spr(a5),	a0
	lea	 qbullet(a5),	a1
	jsr	2/mk_kugel(a5)
kugel3	movem.l	(sp)+, d0-d2/a0-a1
	andi.w	#%00011111, d2
bltaim	jsr	3/blit_spr(pc)
	bra	  .dgmut


lumutkg_fr:		;:286a
	dc.b	0,   0,   1,   1
	dc.b   67,   3, END
ldmutkg_fr:		;:2871
	dc.b	0,   0,   1,   1
	dc.b   66,   2, END
rumutkg_fr:		;:2878
	dc.b	0,   0,   4,   4
	dc.b  102,   6, END
rdmutkg_fr:		;:287f
	dc.b	0,   0,   4,   4
	dc.b  101,   5, END


;:2886	[+4/MUTJMP]
mutjmp	move.w	  _MUTFR(a6),	d3
	move.b mutjmp_fr(d3.w), d2
	ext.w			d2
	;#335/SPR_MUTANX<.10> 32x23px
	movea.l	235*4+spr(a5),	a1
	jsr	     3/blit_spr(pc)
	addq.w	     #1,	d3
	move.w	     d3, _MUTFR(a6)
	move.b mutjmp_fr(d3.w), d2
	blt	  .mutdpch
	bra	  .dgmut


;:28aa		frame8_t[19]
mutjmp_fr:
	dc.b	0,   1,   0,   1
	dc.b	0,   1,   2,   3
	dc.b	2,   1,   0,   0
	dc.b	2,   3,   2,   1
	dc.b	0,   0, END
	dc.b    0


;:28be	[+8/MUTKILL]
mutkill	move.w	  _MUTFR(a6),	d3
	move.b mutdie_fr(d3.w),	d2
	ext.w			d2
	;#335/SPR_MUTANX<.10> 32x23px
	movea.l	235*4+spr(a5),	a1
	jsr	     3/blit_spr(pc)

	addq.w	     #1,	d3
	move.w	     d3, _MUTFR(a6)
	move.b mutdie_fr(d3.w),	d2
	bge	  .endmuta
	;A0/(mutdoor_t *)->nmut++
	movea.l	_MDOOR(a6),	a0
	cmpa.w	   #NULL,	a0
	beq.s	  .mutdel
incnmut	addq.w	      #1, _NMUT(a0)
	;delete obj (mutant_t)
mutdel	clr.l		 -8+_CB(a6)
	bra	  .retmuta


mutdie_fr:		;:28f4
	dc.b	4,   4,   5,   5
	dc.b	6,   7,   8,   9
	dc.b  END
	dc.b    0


;:28fe	[+0/MUTNORM] walk L/R
mutnorm	add.w	 _MUTDX(a6),	d0
	tst.w	 _MUTDX(a6)
	bgt.s	  .rnorm
	;LEFT, til bound
lnorm	lea	3/lmutant_fr,	a3
	cmp.w	  _LMUT(a6),	d0
	ble.s	  .hitboun
	bra.s	  .norm2
	;RIGHT, "  "
rnorm	lea	3/rmutant_fr,	a3
	cmp.w	  _RMUT(a6),	d0
	bge.s	  .hitboun

norm2	move.w	 _MUTFR(a6),	d3
normfr	move.b	    (a3,d3.w),	d2
	ext.w			d2
	bge.s	  .bltnorm
	;[END] -> loop anim
	clr.w			d3
	bra.s	  .normfr
	;#336/SPR_HMUTANT<.8> 32x23px
bltnorm	movea.l	236*4+spr(a5),	a1
	jsr	     3/blit_spr(pc)
	addq.w	     #1,	d3
	move.w	     d3, _MUTFR(a6)
	;mode dispatch?
	subq.w	     #1,  _MUTC(a6)
	blt	  .mutdpch
	bra	  .dgmut

	;turn around
hitboun	neg.w		 _MUTDX(a6)
	bra.s	  .mutnorm


lmutant_fr:		;:294e
	dc.b	0,   1,   2,   3
	dc.b  END
rmutant_fr:		;:2953
	dc.b	4,   5,   6,   7
	dc.b  END


;:2958
dgmut	movem.w      d0-d1,   -(sp)
	lea	 qkugel(a5),	a0
	jsr	   3/collide_kg(pc)
	beq.s	  .misskg
	;(rock/fb hit) -> delete kugel
hitkg	clr.l		   _KGX(a0)
killsnd	move.w		d0,   -(sp)
	move.w	#SND_MUTAN2,	d0
	jsr	     1/play_snd(a5)
	move.w	       (sp)+,	d0
	;add score
	move.w	       #16,	d0
	jsr		 0x409c(pc)
	;unlink (un_t)
unlkun	movem.l	    a0-a1,    -(sp)
	lea	_MUTUN(a6),	a1
	movea.l	  _UPV(a1), 	a0
	movea.l	  _UNX(a1),	a1
	move.l	       a1, _UNX(a0)
	cmpa.w	    #NULL,	a1
	beq.s	  .hitkg2
	move.l 	       a0, _UPV(a1)
hitkg2	movem.l	      (sp)+, a0-a1
	move.w #MUTKILL, _MUTST(a6)
	clr.w		 _MUTFR(a6)
misskg	movem.w	      (sp)+, d0-d1
	bra	  .endmuta

endmuta	move.w	     d0,  _MUTX(a6)
	move.w	     d1,  _MUTY(a6)
	move.w	     d0, 26+_UX(a6)
	move.w	     d1, 26+_UY(a6)
retmuta	rts			;:29bc
