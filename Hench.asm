; vi: syntax=asm68k

;struct Hench	{
HH_X	equ	   +0	   ;(px_t).W
HH_Y	equ	   +2	   ;(py_t).W
HH_ST4	equ	   +4  ;(state4_t).W
HH_FR5	equ	   +6    ;(mod5_t).W
HH_C	equ	   +8  ;   (ivl_t).W
HH_DIR	equ	  +10      ;(dx_t).W
HH_HP	equ	  +12	  ;(short).W
HH_ZZMIN equ	  +14	;(uint8_t).B
HH_ZZMAX equ	  +15	;(uint8_t).B
HH_HITC	equ	  +16	  ;(ivl_t).W
HH_HPMAX equ	  +18	;  (short).W
HH_TL1	equ	  +20  ;  (Tile *).L
HH_TL2	equ	  +24  ;  (Tile *).L
HH_TYPE	equ	  +28	; (mod2_t).W

;Henchman states
HHSLEEP	equ	+0
HHSWING	equ	+4
HHWAIT	equ	+8
HHSTUN2	equ	+12
HHSTUN	equ	+16
HHKO	equ	+20
BWBARRL	equ	+24
HHEQUIP	equ	+28
HHPARRY	equ	+32
HHSLEE2	equ	+36
HHWAKE	equ	+40

spr	equ	(-$b1e);Sprite*[306]
dcmace	equ	(-$532)	;  (Obj *).L
diffic	equ	(-$15e)	;  (short).W
BEG	equ	     0
IMD	equ	     1
ADV	equ	     2
currlev	equ	(-$158)	;  (lev_t).W
DUNJ	equ	     3	;  (lev_t).W
WALD	equ	    12
SWAM	equ	    13
qobj	equ	(-$102)	;  (Obj *).L
_NEXT	equ	    +0	;  (Obj *).L
_RUN	equ	    +4;void(*)(void*
dcobj	equ	 (-$c4)	;  (Obj *).L
DC_X	equ	   +12	; (xpos_t).W
DC_Y	equ	   +14	; (ypos_t).W
DC_ST	equ	   +18	;(state_t).W
currpg	equ	 (-$60)	; (Page *).L

_TL	equ	    +4	;(brush_t).W
F_	equ	 1
W_	equ	27	;(brush_t).W
F_DUEL	equ	41	;(brush_t).W
_T0	equ	    +6
_T1	equ	    +8
_T2	equ	   +10

LADDON	equ	 1	;(state_t).W
LADD	equ	 2	;(state_t).W
LADDTD	equ	14	;(state_t).W
LADDTU	equ	15	;(state_t).W

SND_PARRY	equ	22
SND_BARRL2	equ	48
SND_MACE1	equ	56
SND_KO		equ	57
SND_MACE2	equ	84

BREWER	equ	+0
FIGHTER	equ	+2

LEFT	equ	-1
RIGHT	equ	+1

NONE	equ	+0
ENDFR	equ	+4
HITFR	equ	+8
THROW	equ	+8
RMOBJ	equ	+8
ARM	equ	+12
BWSND	equ	+16


;{ 6/proc308	17/proc372
; 23/proc390    24/proc391 }

;07/:0000		proc309()
;Create henchman
;	arg D0.W(px_t):	hench.X
;	arg D1.W(py_t):   "  .Y
;	arg D2.W(char[2]): min,max
;	arg D3.W(ivl_t): swing ivl.
;	arg D4.W(short): HP (# hits)
;	arg D5.W(off2_t): type +[02]
;	arg A0.L(Tile *): map tile
;	ret A0.L(Obj *):  object

new_hench:
	move.w		d0,	d6
	move.w		d1,	d7
	movea.l		a0,	a2
	moveq	    #(8+30),	d0
	_NewPtr 	  ,  CLEAR
	lea    07/run_hench(),	a1
	move.l	     a1,   _RUN(a0)
	move.w	     d6, 8+HH_X(a0)
	move.w	     d7, 8+HH_Y(a0)

	jmp   typejt(d5.W)
	;D5.W:	 07/data223[2]:001e
typejt	bra.s	  .brewer	;+0
	bra.s	  .fighter	;+2
	;+0/BREWER     -> [BWBARRL]
brewer move.w #BWBARRL,8+HH_ST4(a0)
	bra.s	  .newhh2
	;+2/FIGHTER    -> [HHSLEEP]
fighter	clr.w	       8+HH_ST4(a0)
	nop	

newhh2	asl.w	 #8,		d4
	move.w	 d4, 8+HH_HP   (a0)
	move.w	 d2, 8+HH_ZZMIN(a0)
	move.w	 d3, 8+HH_HITC (a0)
	move.w	 d4, 8+HH_HPMAX(a0)
	move.l	 a2, 8+HH_TL1  (a0)
	move.w	 d5, 8+HH_TYPE (a0)
newhh3	move.w #W_,     -18+_TL(a2)
	move.w #W_,     +18+_TL(a2)
	move.w #F_DUEL, -36+_TL(a2)
	move.w #F_DUEL, +36+_TL(a2)
	move.l	qobj(a5), _NEXT(a0)
	move.l	     a0,   qobj(a5)
	rts		    ;:006a


;08/:006c
;Henchman handler routine
;   arg	A6.L(Hench *):  *this
;no ret

run_hench:
	move.w	 HH_X  (a6),	d0
	move.w	 HH_Y  (a6),	d1
	move.w	 HH_ST4(a6),	d2
	jmp	henchjt(d2.W)
			;[11]:007a
henchjt	jmp	  .hhsleep	;+0
	jmp	  .hhswing	;+4
	jmp	  .hhwait	;+8
	jmp	  .hhstun2	;+12
	jmp	  .hhstun	;+16
	jmp	  .hhko		;+20
	jmp	  .bwbarrl	;+24
	jmp	  .hhequip	;+28
	jmp	  .hhparry	;+32
	jmp	  .hhslee2	;+36
	jmp	  .hhwake	;+40


	;[+0/HHSLEEP]	     :00a6
hhsleep	cmpi.w	 #DUNJ, currlev(a5)
	beq.s	  .sleep3
sleep2	movea.l	 currpg(a5),	a0
	move.w	  HH_HP(a6),	d4
	cmpi.w	 #SWAM, currlev(a5)
	bne.s	  .forest
	;[SWAM]P
swamp	addi.w	      #552,	d4
	cmp.w	  _XWIN(a0),	d4
	blt	  .endhh
	;-> RTS
	bra.s	  .sleep3
	;[WALD]	Black Forest
forest	cmp.w	  _XWIN(a0),	d4
	bgt	  .endhh
	;..
	;[DUNJ]
sleep3	bsr	  07/wake_hench(pc)
	subq.w	     #1, HH_C  (a6)
	bgt.s	  .sleep4
	;if(--.c == 0) -> [HHSLEE2]
toslee2	move.w #HHSLEE2, HH_ST4(a6)
	clr.w		 HH_FR5(a6)
	bra	  .hhslee2
	
sleep4	lea	07/hhsleep_fr,	a2
	tst.b	               (a2)+
	bra	  .dghench	


hhsleep_fr:	       ;Ani5[1]:00f6
	dc.b NONE, -20,  +7,  +0,  2

	.align	2

	;[+36/HHSLEE2]	     :00fc
hhslee2	bsr	  07/wake_hench(pc)
	;get next anim frame
	move.w	HH_FR5(a6),	d3
	addq.w	     #5, HH_FR5(a6)
	lea  hhsleep_ani(d3.W),	a2
	cmpi.b	    #+4,       (a2)+
	bne	  .dghench
	;ENDFR -> [HHSLEEP]
endslp2	clr.w		 HH_ST4(a6)
	move.w		d0,   -(sp)
	jsr	      03/random(a5)
	andi.w	#%00011111,	d0
	addq.w	       #5,	d0
	move.w	       d0, HH_C(a6)
	move.w	      (sp)+,	d0
	bra	  .dghench


hhsleep_ani:	      ;Ani5[10]:012e
	dc.b NONE, -20,  +7,  +0,  1
	dc.b NONE, -20,  +7,  +0,  1
	dc.b NONE, -20,  +7,  +0,  2
	dc.b NONE, -20,  +7,  +0,  2
	dc.b NONE, -20,  +7,  +0,  3
	dc.b NONE, -20,  +7,  +0,  3
	dc.b NONE, -20,  +7,  +0,  2
	dc.b NONE, -20,  +7,  +0,  2
	dc.b NONE, -20,  +7,  +0,  1
	dc.b ENDFR,-20,  +7,  +0,  1


			 ;07/:0160
;Check if henchman onscreen/nearby
; -> [HHWAKE] state
;   arg	A6.L(Hench *):  hench obj
;no ret

wake_hench:
	movea.l	  dcobj(a5),	a3
	addq.w		#8,	a3
	move.w	   DC_X(a3),	d4
	move.w	   DC_Y(a3),	d5
	cmpi.w	 #DUNJ, currlev(a5)
	bne.s	  .wake2
	;[DUNJ]
dnjwake	cmpi.w	      #173,	d5
	bgt.s	  .endwake
	cmpi.w	       #59,	d5
	ble.s	  .endwake
	cmpi.w	      #285,	d4
	bgt.s	  .endwake
	;.XY(<=285,60-173) wake up
	move.w	#HHWAKE, HH_ST4(a6)
	bra.s	  .endwake

wake2	cmpi.w	 #SWAM, currlev(a5)
	bne.s	  .forest2
	;[SWAM]p
swamp2	cmpi.w	      #424,	d4
	bgt.s	  .endwake
	move.w	#HHWAKE, HH_ST4(a6)
	bra.s	  .endwake
	;[WALD] Black Forest :01a6
forest2	cmpi.w	    #12192,	d4
	blt.s	  .endwake
	move.w	#HHWAKE, HH_ST4(a6)
endwake	rts		    ;:01b2


	;[+40/HHWAKE]	     :01b4
hhwake	movea.l	  dcobj(a5),	a3
	addq.w		#8,	a3
	move.w	   DC_X(a3),	d4
	move.w	   DC_Y(a3),	d5
	cmpi.w	 #DUNJ, currlev(a5)
	beq.s	  .dungeon
hhwake2	lea	07/wake3fr,	a2
	cmpi.w	 #SWAM, currlev(a5)
	bne.s	  .forest3
	;[SWAM]p
swamp3	cmpi.w	      #384,	d4
	bgt	  .hhwake3
	bra.s	  .toequip
	;[WALD] Black Forest :01e0
forest3	cmpi.w	    #12232,	d4
	blt	  .hhwake3
	bra.s	  .toequip
	;Dungeon	     :01ea
dungeon	cmpi.w	      #173,	d5
	bgt.s	  .tosleep
	cmpi.w	       #59,	d5
	ble.s	  .tosleep
	cmpi.w	      #285,	d4
	bgt.s	  .tosleep
	cmpi.w	 #LADD,   DC_ST(a3)
	beq.s	  .ladder
	cmpi.w	 #LADDON, DC_ST(a3)
	beq.s	  .ladder
	cmpi.w	 #LADDTD, DC_ST(a3)
	beq.s	  .ladder
	cmpi.w	 #LADDTU, DC_ST(a3)
	beq.s	  .ladder
	cmpi.w	    #114,	d5
	ble.s	  .dungeo2

	;create bare stool   :0222
	;#282/SPR_HENCZZ.7 @(-20,+7)
toequip	movem.w	   d0-d1,     -(sp)
	subi.w	     #20,	d0
	addq.w	      #7,	d1
	move.w	      #7,	d2
	movea.l	spr+182*4(a5),	a1
	jsr	  03/new_object(a5)
	movem.w	      (sp)+, d0-d1
	;-> [HHEQUIP]
toeqp2	move.w #HHEQUIP, HH_ST4(a6)
	clr.w		 HH_FR5(a6)
	move.w	 #RIGHT, HH_DIR(a6)
	movea.l	HH_TL1(a6),	a3
	adda.w	    #36,	a3
	move.l	     a3, HH_TL2(a6)
	lea	07/wake3fr,	a2
	bra.s	  .hhwake3

	;(dc.Y ≤ 114): [.4]  :025e
dungeo2	lea	07/wake1fr,	a2
hhwake3	tst.b	      	       (a2)+
	bra	  .dghench

	;-> [HHSLEEP]
tosleep	clr.w		 HH_ST4(a6)
	move.w	    #10, HH_C  (a6)
	bra	  .hhsleep

	;#LADD[ON|TD|TU] on ladder
ladder	cmpi.w	      #140,	d5
	bgt.s	  .dladder
	;(.Y ≤ 140): [.5]
uladder	lea	07/wake2fr,	a2
	bra.s	  .hhwake3
	;(.Y > 140): [.6]
dladder	lea	07/wake3fr,	a2
	bra.s	  .hhwake3


		       ;Ani5[3]:0288
wake2fr	dc.b NONE, -20,  +7,  +0,  5
wake3fr	dc.b NONE, -20,  +7,  +0,  6
wake1fr	dc.b NONE, -20,  +7,  +0,  4

	.align	2
bwswing_ani:	       ;Ani5[8]:0298
	dc.b NONE, -13,  -1,  +4,  0
	dc.b ARMFR, -6, -14,  +0,  0
	dc.b ARMFR, -6, -14,  +0,  0
	dc.b ARMFR,-13,  -1,  +4,  0
	dc.b HITFR,-24,  -1,  +4,  1
	dc.b NONE,  -6, -14,  +0,  1
	dc.b NONE,  -6, -14,  +0,  1
	dc.b ENDFR,-24,  -1,  +4,  1

hhswing_ani:	       ;Ani5[8]:02c0
	dc.b NONE, -13,  +4, +12,  0
	dc.b ARMFR,-10, -13,  +8,  0
	dc.b ARMFR,-10, -13,  +8,  0
	dc.b ARMFR,-13,  +4, +12,  0
	dc.b HITFR, +5,  +4, +12,  1
	dc.b NONE, -10, -13,  +8,  1
	dc.b NONE, -10, -13,  +8,  1
	dc.b ENDFR, +5,  +4, +12,  1


	;[+4/HHSWING]	     :02e8
hhswing	move.w	HH_FR5 (a6),	d3
	move.w	HH_TYPE(a6),	d7
	jmp	type2jt(d7.W)
			 ;[2]:02f4
type2jt	bra.s	  .bwani       ;+0
	bra.s	  .hhani       ;+2
	;BREWER		     :02f8
bwani	lea  bwswing_ani(d3.W),	a2
	bra.s	  .swing2
	;FIGHTER	     :02fe
hhani	lea  hhswing_ani(d3.W),	a2
	nop	

swing2	addq.w	     #5, HH_FR5(a6)
	move.b	    (a2)+,	d3
	ext.w			d3
	jmp  swingjt(d3.W)
			 ;[4]:0310
swingjt	jmp	  .dgswing	;+0
	jmp	  .endswng	;+4
	jmp	  .hitswng	;+8
	jmp	  .dgswng2     ;+12

	;{+4/ENDFR}	     :0320
	;last frame -> repeat anim
endswng	clr.w		 HH_FR5(a6)
	movea.l	HH_TL2(a6),	a3
	tst.w		    _T0(a3)
	beq.s	  .nofight
	;repeat swing .hitc times
endswg2	subq.w	       #1, HH_C(a6)
	bgt	  .dgswing
	;(--count == 0): [HHWAIT]
endswg3	move.w	#HHWAIT, HH_ST4(a6)
	move.w	     d0,      -(sp)
	jsr	      03/random(a5)
	and.b	HH_ZZMAX(a6),	d0
	add.b	HH_ZZMIN(a6),	d0
	ext.w			d0
	move.w	     d0,   HH_C(a6)
	move.w	    (sp)+,	d0
	bra.s	  .dgswing

	;tl(F_DUEL).dc == 0  :0354
	;player not in combat
nofight	clr.w		    _T1(a3)
	;move.w	HH_TYPE(a6),	d7
	;jmp	  $0360(d7.W)
	;bra.s	0x364	  [2]:0360
	;bra.s	0x366
	bra.s	  .endswg2  ;:0364
	;bra.s	  .endswg2   :0366

	;{+8/HITFR}	     :0368
hitswng	movea.l	HH_TL2(a6),	a3
	cmpi.w	       #4,  _T0(a3)
	bne.s	  .hitswg2
	;4/DCPARRY -> 2/PARRY
toparry	move.w	     #2,    _T1(a3)
	move.w #HHPARRY, HH_ST4(a6)
	clr.w		 HH_FR5(a6)
	move.w	     #3,   HH_C(a6)
parrysd	move.w		d0,   -(sp)
	move.w	#SND_PARRY,	d0
	jsr	    01/play_snd(a5)
	;move.w	       (sp)+,	d0
	;move.w		d0,   -(sp)
pryscor	move.w	       #26,	d0
	jsr	   03/add_score(a5)
	move.w	       (sp)+,	d0
	bra	  .hhparry

	;club swing sound    :03a6
hitswg2	move.w		d0,   -(sp)
	move.w	#SND_MACE2,	d0
	jsr	    01/play_snd(a5)
	move.w	       (sp)+,	d0
	;.dc(STAND||SWING)?
hitswg3	cmpi.w		#1, _T0(a3)
	beq.s	  .touche
	cmpi.w		#3, _T0(a3)
	bne.s	  .dgswing
	;touché: .vs(HIT)    :03c2
touche	move.w		#1, _T1(a3)
	clr.w		 HH_FR5(a6)
	bra.s	  .dgswing

	;{+12/unused}	     :03ce
dgswng2	nop	
	;{+0/NONE}	     :03d0
dgswing	bra	  .dghench


	;[+8/HHWAIT]	     :03d4
hhwait	move.w	HH_TYPE(a6),	d7
	jmp	 waitjt(d7.W)
			 ;[2]:03dc
waitjt	bra.s	  .bwwait      ;+0
	bra.s	  .hhwait2     ;+2
	;BREWER
bwwait	lea	07/bwwait_fr,	a2
	bra.s	  .hhwait3
	;FIGHTER
hhwait2	lea	07/hhwait_fr,	a2
	nop	
	;..		     :03ec
hhwait3	tst.b		       (a2)+
	subq.w	     #1,   HH_C(a6)
	bgt	  .dghench
	;(--count == 0): [HHSWING]
endwait	move.w #HHSWING, HH_ST4(a6)
	move.w	HH_TYPE(a6),	d7
	jmp	wait2jt(d7.W)
			 ;[2]:0404
wait2jt	bra.s	  .bwmid	;+0
	bra.s	  .hhmid	;+2
	;BREWER  mid-swing
bwmid	lea  07/bwswing_ani+10,	a3
	lea  07/bwswing_ani,	a4
	bra.s	  .endwai2
	;FIGHTER mid-swing
hhmid	lea  07/hhswing_ani+10,	a3
	lea  07/hhswing_ani,	a4
	nop	
	;..		     :041c
endwai2	suba.l	    a4,		a3
	move.w	    a3,  HH_FR5(a6)
	move.w HH_HITC(a6),HH_C(a6)
	bra	  .dghench


bwwait_fr:	       ;Ani5[1]:042c
	dc.b NONE,  -6, -14,  +0,  0

	.align	2
hhwait_fr:	       ;Ani5[1]:0432
	dc.b NONE, -10, -13,  +8,  0

	.align	2

	;[+12/HHSTUN2]	     :0438
hhstun:	;[+16/HHSTUN]
hhstun2	move.w	HH_TYPE(a6),	d7
	jmp	 stunjt(d7.W)
			 ;[2]:0440
stunjt	bra.s	  .bwstun      ;+0
	bra.s	  .hhstun3     ;+2
	;BREWER
bwstun	lea	07/bwstun_fr,	a2
	bra.s	  .hhstun4
	;FIGHTER
hhstun3	lea	07/hhstun_fr,	a2
	nop	
	;..
hhstun4	tst.b		       (a2)+
	cmpi.w	  #$160, HH_HP (a6)
	blt.s	  .endstun
	;-> [HHSWING]
recover	move.w #HHSWING, HH_ST4(a6)
	clr.w		 HH_FR5(a6)
	move.w HH_HITC(a6),HH_C(a6)
endstun	bra	  .dghench


bwstun_fr:	       ;Ani5[1]:046e
	dc.b NONE,   0, -13, +12,  0

hhstun_fr:	       ;Ani5[1]:0473
	dc.b NONE,   0,  +1,  +4,  4


	;[+20/HHKO]	     :0478
hhko	move.w	HH_FR5 (a6),	d3
	move.w	HH_TYPE(a6),	d7
	jmp	   kojt(d7.W)
			 ;[2]:0484
kojt	bra.s	  .bwko		;+0
	bra.s	  .hhko2	;+2
	;BREWER
bwko	lea  07/bwko_ani(d3.W),	a2
	bra.s	  .hhko3
	;FIGHTER
hhko2	lea  07/hhko_ani(d3.W),	a2
	nop	
	;..
hhko3	cmpi.b	    #+4,       (a2)+
	beq.s	  .endko
nextko	addq.w	     #5, HH_FR5(a6)
	;{+4/ENDFR}
endko	bra	  .dghench


hhko_ani:	      ;Ani5[5]:04a2
	dc.b NONE,   0,  +1,  +4,  4
	dc.b NONE,   0,  +1,  +4,  4
	dc.b NONE,  -9,  +4, +12,  2
	dc.b NONE,  -9,  +4, +12,  2
	dc.b ENDFR, -9,  +4, +12,  3

bwko_ani:	      ;Ani5[5]:04bb
	dc.b NONE,  -9,  +4,  +8,  0
	dc.b NONE,  -9,  +4,  +8,  0
	dc.b NONE,  -9,  +4,  +8,  1
	dc.b NONE,  -9,  +4,  +8,  1
	dc.b ENDFR, -9,  +4,  +8,  2


	;[+24/BwBARRL]	     :04d4
bwbarrl	move.w	HH_FR5(a6),	d3
	subq.w	       #1, HH_C(a6)
	bgt.s	  .brewer2
	;(--delay == 0): next frame
nextbw	addq.w	     #5, HH_FR5(a6)
brewer2	lea	07/brewer_ani,	a2
	adda.w		d3,	a2
	move.b	       (a2)+,	d4
	ext.w			d4
	jmp	 brewjt(d4.W)
			  ;[5]:04f0
brewjt	jmp	  .dgbrew	;+0
	jmp	  .endbw	;+4
	jmp	  .bwthrow	;+8
	jmp	  .bwarm       ;+12
	jmp	  .bwsnd       ;+16

	;{+16/BWSND}	     :0504
bwsnd	move.w		d0,   -(sp)
	move.w #SND_BARRL2,	d0
	jsr	    01/play_snd(a5)
	move.w	       (sp)+,	d0
	bra	  .dgbrew

	;{+4/ENDFR}	     :0514
	;delay varies by difficulty
endbw	clr.w		 HH_FR5(a6)
	move.w	 diffic(a5),	d7
	cmpi.w	      #ADV,	d7
	ble.s	  .endbw2
	move.w	      #ADV,	d7
endbw2	move.b	bwdelay(d7.W),	d6
	ext.w			d6
	move.w	     d6,   HH_C(a6)
	bra.s	  .bwarm

bwdelay: 	     ;char[3]:0532
	dc.b	65	;BEG
	dc.b	50	;IMD
	dc.b	35	;ADV

	.align	2

	;{+8/THROW}	     :0536
bwthrow	movem.l	  d0-d1/a2,   -(sp)
	movea.l	 HH_TL1(a6),	a0
	move.w	 diffic(a5),	d7
	cmpi.w	      #ADV,	d7
	ble.s	  .throw2
	move.w	      #ADV,	d7
throw2	asl.w		#1,	d7
	move.w		d0,   -(sp)
	jsr	      03/random(a5)
	move.w		d0,	d3
	move.w	       (sp)+,	d0
dxmax  move.b barrel_dx+1(d7.W),d6
	ext.w			d6
	and.w		d6,	d3
dxmin	move.b barrel_dx(d7.W),	d6
	ext.w			d6
	add.w		d6,	d3
	swap			d3
	clr.w			d3
	neg.l			d3
	;spawn barrel (@ brewery)
	;D2.W:  map row
	;A0.L:  level ptr
throw3	subi.w	       #30,	d0
	subi.w	       #30,	d1
	move.w	    _T2(a0),	d2
	suba.w	    _T1(a0),	a0
	jsr	  17/new_barrel(a5)
	movem.l	   (sp)+, d0-d1/a2
	bra.s	  .dgbrew2


barrel_dx:	  ;min,max[3]:0588
	dc.b	10, %00000000	;BEG
	dc.b	10, %00000010	;IMD
	dc.b	 9, %00000011	;ADV


	;{+12/ARMFR}	     :058e
bwarm	movea.l	  dcobj(a5),	a3
	addq.w		#8,	a3
	move.w	   DC_X(a3),	d4
	move.w	   DC_Y(a3),	d5
	cmpi.w	       #48,	d5
	bgt.s	  .dgbrew2
	cmpi.w	      #300,	d4
	blt.s	  .dgbrew2
	;@(>300,<48) -> [HHEQUIP]
	movea.l	HH_TL1(a6),	a3
	move.w	  #LEFT, HH_DIR(a6)
	lea	 -36(a3),	a3
	move.l	     a3, HH_TL2(a6)
	move.w #HHEQUIP, HH_ST4(a6)
	lea	07/brewer_ani,	a2
	tst.b	    	       (a2)+
	clr.w		 HH_FR5(a6)
	;..		     :05ca
dgbrew2	nop
	;{+0/NONE}	     :05cc
dgbrew	bra	  .dghench


brewer_ani:      ;Ani5sxysf[14]:05d0
	dc.b ARMFR,  0, -13, +12,  0
	dc.b ARMFR,  0, -13, +16,  3
	dc.b ARMFR,  0, -13, +16,  3
	dc.b BWSND,  0, -13, +16,  4
	dc.b  NONE,  0, -13, +16,  4
	dc.b  NONE,  0, -13, +12,  1
	dc.b  NONE,  0, -13, +12,  1
	dc.b  NONE,-13, -13, +16,  2
	dc.b  NONE,-13, -13, +16,  2
	dc.b  NONE,-13, -13, +16,  1
	dc.b  NONE,-13, -13, +16,  1
	dc.b  NONE,-13, -13, +16,  2
	dc.b THROW,-13, -13, +16,  0
	dc.b ENDFR,-13, -13, +16,  0


	;[+28/HHEQUIP]	     :0616
hhequip	move.w	HH_FR5(a6),	d3
	addq.w	     #5, HH_FR5(a6)
	move.w	HH_TYPE(a6),	d7
	jmp	equipjt(d7.W)
			 ;[2]:0626
equipjt	bra.s	  .bwequip	;+0
	bra.s	  .hheqp2	;+2
	;BREWER
bwequip	lea  bwequip_ani(d3.W),	a2
	bra.s	  .equip3
	;FIGHTER
hheqp2	lea  hhequip_ani(d3.W),	a2
	nop	
	;..
equip3	cmpi.b	       #+8,    (a2)
	bne.s	  .equip4
	;{+8/RMOBJ} delete mace obj
rmobj	movea.l	 dcmace(a5),	a0
	addq.w		#8,	a0
	clr.l		-8+_RUN(a0)
	;..
equip4	cmpi.b	       #+4,    (a2)+
	bne.s	  .dgequip
	;{+4/ENDFR} -> [HHSWING]
endeqp	move.w #HHSWING, HH_ST4(a6)
	clr.w		 HH_FR5(a6)
	move.w HH_HITC(a6),HH_C(a6)
dgequip	bra	  .dghench  ;:065c


bwequip_ani:	     ;Ani5[4]:0660
	dc.b NONE,  -3,  +1, +32,  0
	dc.b NONE,  -3,  +1, +32,  1
	dc.b RMOBJ, -3,  +1, +32,  2
	dc.b ENDFR, -3,  +1, +32,  3

hhequip_ani:	     ;Ani5[8]:0674
	dc.b NONE,   0,  +1,  +4,  0
	dc.b NONE,   0,  +1,  +4,  0
	dc.b NONE,   0,  +1,  +4,  1
	dc.b RMOBJ,  0,  +1,  +4,  1
	dc.b NONE,   0,  +1,  +4,  2
	dc.b NONE,   0,  +1,  +4,  2
	dc.b NONE,   0,  +1,  +4,  3
	dc.b ENDFR,  0,  +1,  +4,  3


	;[+32/HHPARRY]	     :069c
hhparry	move.w	HH_TYPE(a6),	d7
	jmp	parryjt(d7.W)
			 ;[2]:06a4
parryjt	bra.s	  .bwparry	;+0
	bra.s	  .hhparr2	;+2
	;BREWER
bwparry	lea	07/bwparry_fr,	a2
	bra.s	  .parry3
	;FIGHTER
hhparr2	lea	07/hhparry_fr,	a2
	nop	

parry3	tst.b		       (a2)+
	subq.w	       #1, HH_C(a6)
	blt.s	  .endparr
	;if(--count >= 0)	
parry4	movea.l	HH_TL2(a6),	a3
	cmpi.w	       #4,  _T0(a3)
	bne.s	  .endparr
	;(6(A3) == 4) keep parrying
parry5	clr.w		    _T0(a3)
	bra.w	  .dghench

	;-> [HHWAIT]	     :06d0
endparr	move.w	#HHWAIT, HH_ST4(a6)
	move.w	     d0,      -(sp)
	jsr	      03/random(a5)
	and.b	HH_ZZMAX(a6),	d0
	add.b	HH_ZZMIN(a6),	d0
	ext.w			d0
	move.w	     d0,   HH_C(a6)
	move.w	    (sp)+,	d0
	bra	  .dghench


bwparry_fr:	     ;Ani5[1]:06f0
	dc.b NONE,  -9, -14,  +0,  2

	.align	2
hhparry_fr:	     ;Ani5[1]:06f6
	dc.b NONE, -10, -13,  +8,  2

	.align	2

	;read Ani5 frame    ;:06fc
dghench	move.b	       (a2)+,	d4
	ext.w			d4
	add.w		d4,	d0
henchdy	move.b	       (a2)+,	d4
	ext.w			d4
	add.w		d4,	d1
hhspr	move.b	       (a2)+,	d4
	ext.w			d4
	move.w	HH_TYPE(a6),	d7
	jmp	hhsprjt(d7.W)
			  ;[2]:0714
hhsprjt	bra.s	  .bwsprv	;+0
	bra.s	  .hhsprv	;+2
;BREWER	#223/SPR_BREWVS1<.3> 24x48px
bwsprv	lea	spr+123*4(a5),	a3
	bra.s	  .hhspr2
;FIGHTER #282/SPR_HENCZZ<.8> 24x48px
hhsprv	lea	spr+182*4(a5),	a3
	nop	
hhspr2	adda.w		d4,	a3
	movea.l	       (a3),	a1
henchfr	move.b	       (a2)+,	d2
	ext.w			d2
	;draw henchman
blthh	movea.l	 currpg(a5),	a0
	jsr	     03/blt_spr(a5)

	;if(hh.st4 != HHKO)
dghh2	movea.l	HH_TL2(a6),	a3
	cmpi.w	  #HHKO, HH_ST4(a6)
	beq.s	  .dghh4
	;slowly replenish health
regenr8	addq.w	     #8,  HH_HP(a6)
	move.w HH_HP   (a6),	d7
	cmp.w  HH_HPMAX(a6),	d7
	ble.s	  .dghh3
	;max health
maxhp move.w HH_HPMAX(a6),HH_HP(a6)

	;.dc(SWING)?	     :0754
dghh3	cmpi.w		#3, _T0(a3)
	bne.s	  .dghh4
	;henchman hit, grunt
hithh	move.w		d0,   -(sp)
	move.w	#SND_MACE1,	d0
	jsr	    01/play_snd(a5)
	move.w	       (sp)+,	d0
	;--HP
hithh2	subi.w	 #(1<<8), HH_HP(a6)
	blt.s	  .nohp
	cmpi.w	  #$160,  HH_HP(a6)
	bgt.s	  .dghh4
	;(< 1.3 HP) -> [HHSTUN]
stun	move.w	#HHSTUN, HH_ST4(a6)
	bra.s	  .dghh4

	;no health -> [HHKO]  :0780
nohp	move.w	  #HHKO, HH_ST4(a6)
	clr.w		 HH_FR5(a6)
	;add score
	move.w	    #24,	d0
	jsr	   03/add_score(a5)
kosnd	move.w		d0,   -(sp)
	move.w	   #SND_KO,	d0
	jsr	    01/play_snd(a5)
	move.w	       (sp)+,	d0
	;[F_DUEL|W_] now passable
tlpass	movea.l	 HH_TL1(a6),	a3
	move.w	   #F_, -18+_TL(a3)
	move.w	   #F_, +18+_TL(a3)
	move.w	   #F_, -36+_TL(a3)
	move.w	   #F_, +36+_TL(a3)

	;.dc = NONE
dghh4	clr.w		    _T0(a3)
endhh	rts		    ;:07be
	nop	
