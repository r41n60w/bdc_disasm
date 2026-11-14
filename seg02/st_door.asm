; vi: syntax=asm68k ts=8 sw=8

;[DOOR]-specific Hero.members
DC_VST	equ	+48    ;(state4_t).W
DC_VFR3	equ	+50    ;  (mod3_t).W
DC_VAN3	equ	+52   ;(Ani3ffr *).L
DC_VREP	equ	+56    ;   (ivl_t).W
;[X_DOOR] tile fields
_T0	equ	 +6	;  (lev_t).W
_T1	equ	 +8	;in(short).W
_T2	equ	+10    ;out(short).W
_T3	equ	+12   ;key(mod2_t).W
_T4	equ	+14   ;     (px_t).W
_T5	equ	+16   ;     (py_t).W
;(sub)states -> dc.vst
ATDOOR	equ	 +0
DOORANI	equ	 +4
DOORCLS	equ	 +8
;lock types
LOCKED	equ	 +0
NOLOCK	equ	 +2 
BADKEY	equ	 +4
;anim terminators
EXIT	equ	 -1
NOKEY	equ      -2
CLOSE	equ      -3
;sounds
SND_DOOR equ	 60
SND_KEYS equ	 73
;misc constants
ANTE	equ	  0
NOFR	equ      -1
;globals
currlev	equ  (-$158)	;  (lev_t).W
keyc	equ  ( -$e0)	;  (short).W
currpg	equ  ( -$60)	; (Page *).L


;			    02/:2be4
;#DOOR state handler
;   arg	A6.L(Hero *): player (*this)
;   arg A2.L(Map *) -> level data
;   arg D4.W(tile_t): [X_DOOR] tile
;no ret

st_door:
	move.w	 DC_VST(a6),	d7
	jmp	 doorjt(d7.W)
			  ;[3]:2bec
doorjt	jmp	  .atdoor	;+0
	jmp	  .doorani	;+4
	jmp	  .doorcls	;+8


	;[+0/ATDOOR]  	     :2bf8
atdoor	btst.b	  #LOW, DC_FLG (a6)
	bne	  .default
	btst.b	  #ACT, DC_JOYF(a6)
	beq	  .default
	;action_key (standing)
atdoor2	bclr.b	  #ACT, DC_JOYF(a6)
	;branch by lock type
	move.w	_T3(a2,d4.W),	d7
	jmp	lockjt(d7.W)
			  ;[3]:2c1a
lockjt	bra.s	  .locked	;+0
	bra.s	  .nolock	;+2
	bra.s	  .badkey	;+4

	;{+0/LOCKED}	     :2c20
locked	tst.w		   keyc(a5)
	bgt.s	  .unlock
nokeys	lea	08/nokeys_ani,	a3
	move.l	    a3, DC_VAN3(a6)
	bra.s	  .atdoor3
	;if(keyc > 0) --keyc; :2c30
unlock	lea	08/unlock_ani,	a3
	move.l	    a3, DC_VAN3(a6)
	subq.w	    #1,    keyc(a5)
	bra.s	  .atdoor3

	;{+2/NOLOCK}	     :2c3e
nolock	cmpi.w	 #ANTE, currlev(a5)
	bne.s	  .base
	;anteroom
ante	lea   08/openadoor_ani,	a3
	bra.s	  .nolock2
	;basement
base	lea   08/openkdoor_ani,	a3
nolock2	move.l	    a3, DC_VAN3(a6)
	bra.s	  .atdoor3

	;{+4/BADKEY}	      :2c56
badkey	tst.w		   keyc(a5)
	bgt.s	  .badkey2
nokeys2	lea	08/nokeys_ani,	a3
	move.l	    a3, DC_VAN3(a6)
	bra.s	  .atdoor3
	;wrong key, can't open door
badkey2	subq.w	    #1,    keyc(a5)
	lea	08/badkey_ani,	a3
	move.l	    a3, DC_VAN3(a6)
	nop	
	;..
	;-> [DOORANI]	     :2c74
atdoor3	move.w	   #-3, DC_VFR3(a6)
	clr.w		DC_VREP(a6)
	move.w #DOORANI, DC_VST(a6)
	move.w	_T4(a2,d4.W),	d0
	;adjust player.X
atdoor4	cmpi.w	 #ANTE, currlev(a5)
	bne.s	  .basedx
	;anteroom (door.X+20)
antedx	addi.w	      #20,	d0
	bra.s	  .atdoor5
	;basement (  "   +36)
basedx	addi.w	      #36,	d0
atdoor5	move.w	       d0, DC_X(a6)
	bra	  .doorani

	;crouch OR (!action)  :2ca2
	;-> stand by door
default	jmp	  92/st_default(pc)


	;[+8/DOORCLS] close   :2ca6
doorcls	cmpi.w	 #ANTE, currlev(a5)
	bne.s	  .base2
	;<ANTE>
ante2	lea   08/shutadoor_ani,	a3
	bra.s	  .close2
base2	lea   08/shutkdoor_ani,	a3
	;-> [DOORANI] @(12+door.X)
close2	move.l	    a3, DC_VAN3(a6)
	move.w	   #-3, DC_VFR3(a6)
	clr.w		DC_VREP(a6)
	move.w #DOORANI,DC_VST (a6)
	move.w	_T4(a2,d4.W),	d0
	addi.w	   #12,		d0
	move.w	    d0, DC_X   (a6)
	;bra	  .doorani
	;...


	;[+4/DOORANI]	     :2cdc
	;A4.L(Ani3ffr *)->anim tbl[]
	;D3.W(mod3_t):    anim pos
doorani	move.w	DC_VFR3(a6),	d3
	movea.l	DC_VAN3(a6),	a4
	;repeat this frame?
	subq.w	    #1, DC_VREP(a6)
	bgt.s	  .repani
	;no, advance a frame
norep	addq.w		#3,	d3
	tst.b	         0(a4,d3.W)
	bge.s	  .dooran2

	;fr{-[123],0,0} terminator
endani	cmpi.b	  #EXIT, 0(a4,d3.W)
	bne.s	  .endani2
	;{-1/EXIT} level
exit	move.w		d4,	d5
	jsr	    02/exit_lev(pc)
	move.w	DC_VFR3(a6),	d3
	bra.s	  .repani
	;repeat final frame
endani2	cmpi.b	 #CLOSE, 0(a4,d3.W)
	bne.s	  .nokey
	;{-3/CLOSE} door -> [ATDOOR]
close	move.w		d0,   -(sp)
	move.w	 #SND_DOOR,	d0
	jsr	    01/play_snd(a5)
	move.w	       (sp)+,	d0
	clr.w		 DC_VST(a6)
	bra	  .atdoor
	;{-2/NOKEY}    -> [DEFAULT]
nokey	clr.w		  DC_ST(a6)
	jmp	  02/st_default(pc)

	;save ++anim_pos     :2d2a
dooran2	move.w	    d3, DC_VFR3(a6)
	;D5.W: # of repeated frames
repc	move.b	  2(a4,d3.W),	d5
	ext.w			d5
	bge.s	  .dooran3
	;(-ve repeat #) jangle keys
jangle	neg.w			d5
	move.w		d0,   -(sp)
	move.w	 #SND_KEYS,	d0
	jsr	    01/play_snd(a5)
	move.w	       (sp)+,	d0
dooran3	move.w	    d5, DC_VREP(a6)

repani	movea.l	currpg(a5),	a0
	;D2.W: door frame #
	;      {-1/NOFR} skip draw
doorfr	move.b	  1(a4,d3.W),	d2
	ext.w			d2
	blt.s	  .dooran4
	;door.X, .Y
doorx	move.w	_T4(a2,d4.W),	d0
doory	move.w	_T5(a2,d4.W),	d1
	cmpi.w	 #ANTE, currlev(a5)
	bne.s	  .kdoor
	;#407/SPR_ADOOR<.2> 56x81px
adoor	movea.l	spr+307*4(a5),	a1
	bra.s	  .bltdoor
	;#287/SPR_KDOOR<.3> 56x81px
kdoor	movea.l	spr+187*4(a5),	a1
bltdoor	jsr	     03/blt_spr(a5)

	;draw player	     :2d72
dooran4	move.w	   DC_X(a6),	d0
	move.w	   DC_Y(a6),	d1
	addq.w		#1,	d1
	;D2.W: player frame #
herofr	move.b	   0(a4,d3.W),	d2
	ext.w			d2
	cmpi.w	      #$40,	d2
	bge.s	  .standfr
	;#347/SPR_UNLOCK<.8> 24x39px
unloksp	movea.l	spr+247*4(a5),	a1
	bra.s	  .blthero
	;[$40|0123]
	;#106/SPR_STAND<.4> 22x40px
standsp	movea.l	spr+6*4(a5),	a1
	subi.w	       #64,	d2
	addq.w		#1,	d0
blthero	jsr	     03/blt_spr(a5)
	;o vulnerable when
	;{-1/NOFR} door closed
dooran5	tst.b	         1(a4,d3.W)
	bge	  .enddoor ;-> RTS
	jmp	02/dg_dispatch(pc)


unlock_ani: 	;Ani3ffr[11]:2da8
	dc.b   $41,	-1,	2
	dc.b	 0,	-1,	3
	dc.b	 1,	-1,	3
	dc.b	 0,	-1,	3
	dc.b	 2,	-1,	4
	dc.b	 3,	-1,	3
	dc.b	 4,	-1,    -2
	dc.b	 4,	 0,     3
	dc.b	 4,	 1,     3
	dc.b	 4,	 2,     3
	dc.b  EXIT,	 0,	0

badkey_ani: 	;Ani3ffr[12]:2dca
	dc.b   $41,	-1,	2
	dc.b	 0,	-1,	3
	dc.b	 1,	-1,	3
	dc.b	 0,	-1,	3
	dc.b	 2,	-1,	4
	dc.b	 3,	-1,	3
	dc.b	 4,	-1,    -5
	dc.b   $40,	-1,	2
	dc.b   $42,	-1,	4
	dc.b	 7,	-1,	5
	dc.b   $42,	-1,	4
	dc.b NOKEY,	 0,	0

nokeys_ani:	;Ani3ffr[12]:2dee
	dc.b   $41,	-1,	2
	dc.b	 0,	-1,	3
	dc.b	 1,	-1,	3
	dc.b	 0,	-1,	3
	dc.b	 5,	-1,	3
	dc.b	 6,	-1,	3
	dc.b	 5,	-1,	3
	dc.b   $40,	-1,	2
	dc.b   $42,	-1,	4
	dc.b	 7,	-1,	5
	dc.b   $42,	-1,	4
	dc.b NOKEY,	 0,	0

openkdoor_ani:	 ;Ani3ffr[5]:2e12
	dc.b   $41,	-1,    -2
	dc.b	 4,	 0,     3
	dc.b	 4,	 1,     3
	dc.b	 4,	 2,     3
	dc.b  EXIT,	 0,	0

shutkdoor_ani:	 ;Ani3ffr[4]:2e22
	dc.b   $42,	 2,     3
	dc.b   $42,	 1,     3
	dc.b   $42,	 0,     3
	dc.b CLOSE,	 0,	0

openadoor_ani:	 ;Ani3ffr[4]:2e2e
	dc.b   $41,	-1,    -2
	dc.b	 4,	 0,     4
	dc.b	 4,	 1,     4
	dc.b  EXIT,	 0,	0

shutkdoor_ani:	 ;Ani3ffr[3]:2e3a
	dc.b   $42,	 1,     4
	dc.b   $42,	 0,     4
	dc.b CLOSE,	 0,	0

	.align 2
enddoor	rts		   ;:2e44
