; vi: syntax=asm68k

VSUNARM	equ	    +0
VSARMED	equ	    +4
VSEQUIP	equ	    +8
VSSWING	equ	   +12
VSUNEQP	equ	   +16
VSDIZZY	equ	   +20
VSPARRY	equ	   +24
VSSTUN	equ	   +28

DC_VANI	equ	+48	 ;(Ani5 *).L
DC_VST4	equ	+52    ;(state4_t).W
DC_VMAC	equ	+54	;(frame_t).W
			; (mod5_t).W
		      ;stun(ivl_t).W
DC_VTYP	equ	+56	  ;(short).W
			;+0,+4

dcmace	equ	-$536	  ;(Obj *).L
qenemy	equ	-$502	 ;(Unit *).L
health	equ	 -$de	  ;(short).W
currpg	equ	 -$60	 ;(Page *).L

_NFR	equ	+2	;  (short).W	
X_EXIT	equ	 5	;(brush_t).W
W_STOP	equ	 6	;was F_LAND
W_	equ	27
F_DUEL	equ	41
O_MACE	equ	42

SND_FTSTEP	equ	 0
SND_DEAD	equ	10
SND_KEYS	equ	73
SND_MACE2	equ	84

FALSE	equ	0
TRUE	equ	1

;[O_MACE] tile params
_T0	equ	+6  ;bool16_t obj;
_T1	equ	+8	;px_t
_T2	equ	+10	;py_t
_T3	equ	+12 ;mod4_t   type;

;[F_DUEL] tile params
;_T0	equ	+6	short  dc;
NONE	equ	  0
STAND	equ	  1
DUCK	equ	  2
SWING	equ	  3
DCPARRY	equ	  4
;_T1	equ	+8	short  vs;
NOHIT	equ	  0
HIT	equ	  1
PARRY	equ	  2
;_T2	equ	+10	dx_t	dir;

ENDFR	equ	+4
HITFR	equ	+8
ARMFR	equ	+12


       ;$612(A5) ->07/proc313():085c
;MACE state handler [O_MACe]
;   arg	A6.L(Hero *):	player obj
;   arg D0.W(px_t):	player.X
;   arg D1.W(py_t):	  "   .Y
;   arg A2.L(Map *):	level data
;   arg D4.W(tile_t);	curr tile
;no ret

st_mace:
	subq.w		#1,	d1
	move.w	DC_VST4(a6),	d3
	jmp	 macejt(d3.W)

		  ;data227[8]:0866
macejt	jmp	  .vsunarm	;+0
	jmp	  .vsarmed	;+4
	jmp	  .vsequip	;+8
	jmp	  .vsswing	;+12
	jmp	  .vsuneqp	;+16
	jmp	  .vsdizzy	;+20
	jmp	  .vsparry	;+24
	jmp	  .vsstun	;+28


	;[+0/VSUNARM]	       :0886
vsunarm	tst.w		_T0(a2,d4.W)
	beq.s	  .unarm2
	;club ready to take
	btst.b	  #LOW, DC_DCF (a6)
	bne.s	  .unarm2
	btst.b	  #ACT, DC_JOYF(a6)
	beq.s	  .unarm2
	;action key (standing)
getclub	bclr.b	  #ACT, DC_JOYF(a6)
	move.w #VSEQUIP,DC_VST4(a6)
	clr.w		DC_VMAC(a6)
	push.w			d0
	move.w	#SND_KEYS,	d1
	jsr	    01/play_snd(a5)
	pop.w			d0
	;+0 vs henchman, +4 brewer
     move.w _T3(a2,d4.W),DC_VTYP(a6)
	;destroy mace on wall
getclb2	movea.l	dcmace(a5),	a0
	addq.w		#8,	a0
	clr.l		-8+_RUN(a0)
	jmp	  .vsequip

unarm2	addq.w		#1,	d1
	jmp	  02/st_default(a5)


	;[+8/VSEQUIP]
vsequip	tst.w		 DC_DIR(a6)
	blt.s	  .lequip
requip	move.w	      #+40,	d5
	bra.s	  .equip2
lequip	move.w	      #+32,	d5
equip2	bsr	  07/combat_spr(pc)
	move.w	DC_VMAC(a6),	d2
	addq.w	    #1, DC_VMAC(a6)
	movea.l	 currpg(a5),	a0
	jsr	     03/blt_spr(a5)

equip3	cmpi.w		#3,	d2
	blt	  .dgmace
	;fr[0..3] now holding mace
	;tl.tget = FALSE;
	clr.w	   	_T0(a2,d4.W)
	move.w #VSARMED, DC_VST4(a6)
	bra	  .dgmace


;{ 02/proc117	07/proc313 }

;      $60a(A5)	-> 07/proc314():090c
;Combat sprite lookup func.  [#MACE]
;   arg A6.L(Hero *):   player obj
;   arg	D5.W(mod8_t):	spr index*8
;   ret	A1.L(Sprite *): sprite data
;	D7.W clobbered

combat_spr:
	move.w	DC_VTYP(a6),	d7
	jmp	 typejt(d7.W)

	       ;07/data228[2]:0914
typejt	jmp	 macejt(d5.W)	;+0
	jmp	 clubjt(d5.W)	;+4

		;+4 -> [7][8]:091c
	;henchman <DUNJ><SWAM><WALD>
clubjt:		
;+0	#185/SPR_LCLUB1<.3> 48x59px
	movea.l	spr+85*4(a5),	a1
	rts
	nop
;+8	#188/SPR_RCLUB1<.3> 48x59px
	movea.l	spr+88*4(a5),	a1
	rts
	nop
;+16	#186/SPR_LCLUB2<.2> 64x43px
	movea.l spr+86*4(a5),	a1
	rts
	nop
;+24	#189/SPR_RCLUB2<.2> 64x43px
	movea.l spr+89*4(a5),	a1
	rts
	nop
;+32	#184/SPR_LCLUB3<.6> 24x41px
	movea.l	spr+84*4(a5),	a1
	rts
	nop
;+40	#187/SPR_RCLUB3<.6> 24x41px
	movea.l	spr+87*4(a5),	a1
	rts
	nop
;+48	#408/SPR_HCLUBO<.4> 32x15px
	movea.l spr+308*4(a5),	a1
	rts
	nop


		;+0 -> [7][8]:0954
	;vs brewer <BREW>
macejt:		
;+0	#161/SPR_LMACE1<.3> 48x59px
	movea.l spr+61*4(a5),	a1
	rts
	nop
;+8	#162/SPR_RMACE1<.3> 48x59px
	movea.l spr+62*4(a5),	a1
	rts
	nop
;+16	#163/SPR_LMACE2<.2> 64x43px
	movea.l spr+63*4(a5),	a1
	rts
	nop
;+24	#164/SPR_RMACE2<.2> 64x43px
	movea.l spr+64*4(a5),	a1
	rts
	nop
;+32	#166/SPR_LMACE3<.6> 24x41px
	movea.l spr+66*4(a5),	a1
	rts
	nop
;+40	#167/SPR_RMACE3<.6> 24x41px
	movea.l spr+67*4(a5),	a1
	rts
	nop
;+48	#211/SPR_MACEO<.6> 32x28px
	movea.l spr+111*4(a5),	a1
	rts
	nop


	;[+4/VSARMED]	     :098c
vsarmed	btst.b	  #MOU, DC_JOYF(a6)
	beq.s	  .armed2
	;(mouse down): swing club
	bclr.b	  #MOU, DC_JOYF(a6)
	move.w #VSSWING,DC_VST4(a6)
	clr.w	        DC_VMAC(a6)
	bra	  .vsswing

armed2	btst.b	  #ACT, DC_JOYF(a6)
	beq.s	  .armed3
	cmpi.w #O_MACE, _TL(a2,d4.W)
	bne.s	  .toparry
	btst.b	  #DUK, DC_JOYF(a6)
	bne.s	  .armed3
	;(action)[O_MACE]: disarm
disarm	move.w	    #4, DC_VMAC(a6)
	move.w #VSUNEQP,DC_VST4(a6)
	bclr.b	  #ACT, DC_JOYF(a6)
	push.w			d0
	move.w	#SND_KEYS,	d0
	jsr	    01/play_snd(a5)
	pop.w			d0
	bra	  .vsuneqp

	;(action)[F_DUEL]: parry
toparry	move.w #VSPARRY,DC_VST4(a6)
	bra	  .vsparry

armed3	btst.b	  #DUK, DC_JOYF(a6)
	beq.s	  .armed4
	;duck key
duck	cmpi.w #F_DUEL, _TL(a2,d4.W)
	bne.s	  .duck2
	move.w	    #2, _T0(a2,d4.W)
duck2	tst.w		 DC_DIR(a6)
	blt.s	  .lduck
rduck	move.w	    #+40,	d5
	bra.s	  .lduck3
lduck	moveq	    #+32,	d5
lduck3	bsr	  07/combat_spr(pc)
	move.w	      #4,	d2
	bra	  .armed9

	;standing/walking
armed4	cmpi.w #F_DUEL, _TL(a2,d4.W)
	bne.s	  .armed5
	move.w	    #1, _T0(a2,d4.W)
armed5	add.w	DC_DX(a6),	d0
	cmpi.w	      #4, DC_FR(a6)
	bne.s	  .armed6
	add.w	  DC_DX(a6),	d0

armed6	cmp.w	 _LX(a2,d4.W),	d0
	bge	  .armed7
	;left-adjacent tile
ladj	move.w		d4,	d5
	subi.w	       #18,	d5
	move.w	 _RX(a2,d5.W),	d6
	addq.w		#1,	d6
	cmp.w	 _LX(a2,d4.W),	d6
	beq	  .ladj2
	;gap between tiles
lgap	jmp	     02/ch_whoa(a5)
	;limited tl_dispatch()
ladj2	move.w	 _TL(a2,d5.W),	d7
	cmpi.w	   #W_STOP,	d7
	beq.s	  .lstop
	cmpi.w	       #W_,	d7
	beq.s	  .lwall
	move.w		d5,	d4
	bra	  .armed8
	;[W_STOP] was F_LAND
lstop	move.w	  _LX(a2,d4.W),	d0
	move.w	      d0, DC_X (a6)
	clr.w		  DC_DX(a6)
	bra	  .stand
	;[W_] invisible wall
lwall	move.w	 _LX(a2,d4.W),	d0
	jsr	   02/an_lwfall(a5)
	movem.l	  d0-d2/a1,   -(sp)
	moveq	      #+48,	d5
	bsr	  07/combat_spr(pc)
	addi.w	       #30,	d0
	addi.w	       #25,	d1
	move.w		#2,	d2
	jsr	07/new_dropclub(pc)
	movem.l	   (sp)+, d0-d2/a1
	;-> dizzy
wall2	move.w	    d0, DC_X   (a6)
	clr.w		DC_DX  (a6)
	move.w	    d4, DC_TL  (a6)
	clr.w		_T1(a2,d4.W)
	move.w #VSDIZZY,DC_VST4(a6)
	move.l	    a3, DC_VANI(a6)
	bra	  .vsdizzy

armed7	cmp.w	 _RX(a2,d4.W),	d0
	ble.s	  .armed8
	;right-adjacent tile
radj	move.w		d4,	d5
	addi.w	       #18,	d5
	move.w	 _LX(a2,d5.W),	d6
	subq.w		#1,	d6
	cmp.w	 _RX(a2,d4.w),	d6
	beq	  .radj2
rgap	jmp	     02/ch_whoa(a5)

radj2	move.w	 _TL(a2,d5.w),	d7
	cmpi.w	   #W_STOP,	d7
	beq.s	  .rstop
	cmpi.w	       #W_,	d7
	beq.s	  .rwall
	cmpi.w	   #X_EXIT,	d7
	beq.s	  .exit
	move.w		d5,	d4
	bra.s	  .armed8
	;[X_EXIT]
exit	jmp	    02/exit_lev(a5)
	;[W_STOP] was F_LAND
rstop	move.w	  _RX(a2,d4.W),	d0
	move.w	      d0, DC_X (a6)
	clr.w		  DC_DX(a6)
	bra.s	  .stand
	;[W_]
rwall	move.w	 _RX(a2,d4.W),	d0
	jsr	   02/an_rwfall(a5)
	movem.l	  d0-d2/a1,   -(sp)
	moveq	      #+48,	d5
	bsr	  07/combat_spr(pc)
	subi.w	       #30,	d0
	addi.w	       #25,	d1
	clr.w			d2
	jsr	07/new_dropclub(pc)
	movem.l	   (sp)+, d0-d2/a1
	bra	  .wall2

armed8	move.w	      d4, DC_TL(a6)
	move.w	      d0, DC_X (a6)
	move.w	DC_FR(a6),	d2
	tst.w		  DC_DX(a6)
	beq.s	  .stand
	bgt.s	  .rwalk

	;#159/SPR_LMACEW<.6> 30x40px
lwalk	movea.l	spr+59*4(a5),	a1
	move.l	     a1, DC_SPR(a6)
	move.w	  #LEFT, DC_DIR(a6)
	addq.w	     #1,	d2
	bra.s	  .walk2

	;#160/SPR_RMACEW<.6> 30x40px
rwalk	movea.l	spr+60*4(a5),	a1
	move.l	     a1, DC_SPR(a6)
	move.w	 #RIGHT, DC_DIR(a6)
	addq.w	     #1,	d2
	bra.s	  .walk2

stand	move.w		#3,	d2
	tst.w		 DC_DIR(a6)
	bgt.s	  .rstand
lstand	move.w	      #+32,	d5
	bra.s	  .stand2
rstand	move.w	      #+40,	d5
stand2	bsr	  07/combat_spr(pc)
	bra.s	  .armed9

walk2	addq.w		#2,	d1
	cmpi.w		#0,	d2
	beq.s	  .ftstep
	cmpi.w		#3,	d2
	bne.s	  .walk3
	;<.0|.3> SND_FTSTEP
ftstep	push.w			d0
	clr.w			d0
	jsr	    01/play_snd(a5)
	pop.w			d0
walk3	cmp.w	 _NFR(a1),	d2
	blt.s	  .walk4
	clr.w			d2
walk4	move.w	      d2, DC_FR(a6)

armed9	movea.l	currpg(a5),	a0
	jsr	     03/blt_spr(a5)
	btst.b	  #DUK, DC_JOYF(a6)
	beq	  .upright
	;(crouched)
crouch	cmpi.w #F_DUEL, _TL(a2,d4.W)
	bne	  .dgmace
	clr.w		_T1(a2,d4.W)
	bra	  .dgmace
	;(standing)
upright	cmpi.w #F_DUEL, _TL(a2,d4.W)
	bne	  .dgmace
	cmpi.w	    #1, _T1(a2,d4.W)
	beq	  .opphit
	clr.w		_T1(a2,d4.W)
	bra	  .dgmace

	;hit by opponent
opphit	clr.w		_T1(a2,d4.W)
	push.w			d0
	move.w	#SND_DEAD,	d0
	jsr	    01/play_snd(a5)
	pop.w			d0
	subi.w	#(20<<8),health(a5)
	ble	  .kodead
	bra	  .dgmace


	;[+20/VSDIZZY]
vsdizzy	move.w	    #1, _T0(a2,d4.W)
	cmpi.w	    #1, _T1(a2,d4.w)
	bne.s	  .dizzy2
	;hit while dizzy
	clr.w		_T1(a2,d4.W)
	push.w			d0
	move.w	#SND_DEAD,	d0
	jsr	    01/play_snd(a5)
	pop.w			d0
	subi.w	#(20<<8),health(a5)
	ble.s	  .kodead3
	;already dropped club
dizzy2	move.w	   DC_Y(a6),	d1
	jmp	    02/st_dizzy(a5)

	;KO'd -> drop club
kodead	movem.l	  d0-d2/a1,   -(sp)
	moveq	      #+48,	d5
	jsr	  07/combat_spr(pc)
	tst.w		 DC_DIR(a6)
	bgt.s	  .lkodead
lkodead	addi.w	       #30,	d0
	move.w		#2,	d2
	bra.s	  .kodead2
rkodead	subi.w	       #30,	d0
	clr.w			d2
kodead2	addi.w	       #25,	d1
	jsr	07/new_dropclub(pc)
	movem.l	   (sp)+, d0-d2/a1
kodead3	clr.w		 health(a5)
	jsr	   02/an_duelko(a5)
	jmp	    02/dy_death(a5)


rmace_ani: 	 ;07/data229[8]:0c70
	dc.b NONE, -25, -17,  +8,  0
	dc.b ARMFR,-37,  -2, +24,  0
	dc.b HITFR, -9,  -2, +24,  1
	dc.b ARMFR,-16, -17,  +8,  1
	dc.b NONE, -16, -17,  +8,  1
		 ;07/data230[3]:0c89
	dc.b NONE,  -9,  -2, +24,  1
	dc.b NONE, -37,  -2, +24,  0
	dc.b ENDFR,-25, -17,  +8,  0


	;[+12/VSSWING]	       :0c98
vsswing	cmpi.w #F_DUEL, _TL(a2,d4.W)
	bne	  .swing2
	;[F_DUEL]
	move.w	    #1, _T0(a2,d4.W)

swing2	move.w	DC_VMAC(a6),	d3
	addq.w	    #5, DC_VMAC(a6)
	tst.w		 DC_DIR(a6)
	ble.s	  .lswing
rswing	lea  07/rmace_ani(d3.W),a3
	bra.s	  .swing3
lswing	lea	07/lmace_ani,	a3
	adda.w		d3,	a3
swing3	clr.w			d7
	move.b	       (a3)+,	d7
	jmp	swingjt(d7.W)
		   ;data231[4]:0cca
swingjt	jmp	  .swingdx	;+0
	jmp	  .endfr	;+4
	jmp	  .hitfr	;+8
	jmp	  .barrel      ;+12

	;{+8/HITFR}	     :0cda
hitfr	push.w			d0
	move.w	#SND_MACE2,	d0
	jsr	    01/play_snd(a5)
	pop.w			d0
	cmpi.w #F_DUEL, _TL(a2,d4.W)
	bne.s	  .barrel
	;[F_DUEL] facing opponent?
hitfr2	move.w	 DC_DIR(a6),	d7
	cmp.w	 _T2(a2,d4.W),	d7
	bne	  .swingdx
	;yes, tl.dc = SWING
hitfr3	move.w	    #3, _T0(a2,d4.W)
	tst.w		 DC_DIR(a6)
	ble.s	  .lswing2
rswing2	lea	07/rmace_ani,	a0 
	lea	25+rmace_ani,	a4
	bra.s	  .skipfr
lswing2	lea	07/lmace_ani,	a0
	lea	25+lmace_ani,	a4
skipfr	suba.l	    a0,		a4
	move.w	    a4, DC_VMAC(a6)
	bra.s	  .swingdx
	
	;{+12/ARMFR} smash barrel
barrel	movem.w	     d0-d1,   -(sp)
	lea	 07/barrel_spr,	a1
	lea	 qenemy(a5),	a0
	subi.w	       #10,	d1
barrel2	tst.w		 DC_DIR(a6)
	bgt.s	  .rbarrel
lbarrel	subi.w	       #20,	d0
	bra.s	  .barrel3
rbarrel	addi.w	       #40,	d0
barrel3	jsr	  03/collide_un(a5)
	movem	       (sp)+,d0-d1
	cmpa.w		#0,	a0
	beq	  .swingdx
	;hit barrel -> smash
barrel_spr:  ;data232(Sprite):0d50
	move.w	     #2, UN_HIT(a0)
	bra	  .swingdx
		     ;data233:0d5a
barrelw	dc.w	20	    ;spr.w
barrelh	dc.w	25	    ;spr.h

	;{+4/ENDFR}	     :0d5e
endfr	move.w #VSARMED,DC_VST4(a6)
	nop	

	;{+0/NONE}
swingdx	move.b	       (a3)+,	d5
	ext.w			d5
	add.w		d5,	d0
swingdy	move.b	       (a3)+,	d5
	ext.w			d5
	add.w		d5,	d1
swingsp	move.b	       (a3)+,	d5
	ext.w			d5
	bsr	  07/combat_spr(pc)
swingfr	move.b	       (a3)+,	d2
	ext.w			d2
	;draw anim frame
	movea.l	 currpg(a5),	a0
	jsr	     03/blt_spr(a5)
	bra	  .upright


lmace_ani: 	    ;data234[8]:0d8a
	dc.b NONE,  +9, -17,  +0,  0
	dc.b ARMFR, +6, -17, +16,  0
	dc.b HITFR,-23,  -2, +16,  1
	dc.b ARMFR,  0, -17,  +0,  1
	dc.b NONE,   0, -17,  +0,  1
		    ;data235[3]:0da3
	dc.b NONE, -23,  -2, +16,  1
	dc.b NONE,  +6, -17, +16,  0
	dc.b ENDFR, +9, -17,  +0,  0


	;[+16/VSUNEQP]	       :0db2
vsuneqp	tst.w		 DC_DIR(a6)
	blt.s	  .luneqp
runeqp	move.w	      #+40,	d5
	bra.s	  .uneqp2
luneqp	move.w	      #+32,	d5
uneqp2	bsr	  07/combat_spr(pc)
	move.w	DC_VMAC(a6),	d2
	subq.w		#1,	d2
	bge.s	  .uneqp3

	;put back club -> [VSUNARM]
putback	clr.w		DC_VST4(a6)
	move.w	 #TRUE, _T0(a2,d4.W)
	movem.l	  d0-d1/d4/a2,-(sp)
	move.w	  _T1(a2,d4.W),	d0
	move.w	  _T2(a2,d4.w),	d1
	cmpi.w	   #+0, DC_VTYP(a6)
	bne.s	  .clubobj
;+0	#211/SPR_MACEO<.6> 32x28px
maceobj	move.w	    #4,		d2
	movea.l	spr+111*4(a5),	a1
	bra.s	  .putbak2
;+4	#286/SPR_VCLUBO<.1> 8x28px
clubobj	clr.w			d2
	movea.l	spr+186*4(a5),	a1

putbak2	jsr	  03/new_object(a5)
	move.l	     a0, dcmace(a5)
	movem.l	(sp)+, d0-d1/d4/a2
	bra	  .vsunarm

uneqp3	move.w	    d2, DC_VMAC(a6)
	movea.l	currpg(a5),	a0
	jsr	     03/blt_spr(a5)
	bra	  .dgmace


	;[+24/VSPARRY]
vsparry	btst.b	  #ACT, DC_JOYF(a6)
	bne.s	  .parry2
	;!action_key -> lower club
	move.w #VSARMED,DC_VST4(a6)
	bra	  .vsarmed

	;action_key
parry2	cmpi.w #F_DUEL, _TL(a2,d4.W)
	bne.s	  .parry4
	;[F_DUEL]
	cmpi.w	    #2, _T1(a2,d4.W)
	bne.s	  .parry3
	;(tile[8] == 2)
	;opponent's strike
	clr.w		_T1(a2,d4.W)
	subi.w	#(2<<8), health(a5)
	blt	  .kodead
	cmpi.w #(10<<8), health(a5)
	bgt.s	  .parry3
	;<10% health: stunned
tostun	move.w #VSSTUN, DC_VST4(a6)
	move.w	   #40, DC_VMAC(a6)
	bra	  .vsstun

	;F_DUEL[6] = 4 (parrying)
parry3	move.w	    #4, _T0(a2,d4.W)
parry4	tst.w		 DC_DIR(a6)
	blt.s	  .lparry
	;facing RIGHT
rparry	move.w	     #+8,	d5
	subi.w	     #11,	d0
	bra.s	  .parry5
	;facing LEFT
lparry	moveq	     #+0,	d5
	subq.w	      #5,	d0
parry5	bsr	  07/combat_spr(pc)
	move.w	      #2,	d2
	subi.w	     #18,	d1
	movea.l	currpg(a5),	a0
	jsr	     03/blt_spr(a5)
	bra	  .dgmace


	;[+28/VSSTUN]
vsstun	subq.w	    #1, DC_VMAC(a6)
	bge.s	  .stun2
	;recover
	move.w #VSARMED,DC_VST4(a6)
	bra	  .vsarmed
	
stun2	move.w	    #1, _T0(a2,d4.W)
	cmpi.w	    #1, _T1(a2,d4.W)
	bne.s	   .stun3
	;hit while stunned -> dead
	subi.w	#(2<<8), health(a5)
	clr.w		_T1(a2,d4.W)
	bra	  .kodead

	;SPR_Lxxxx3[.5]
stun3	movea.l	 currpg(a5),	a0
	move.w	      #+32,	d5
	jsr	  07/combat_spr(pc)
	move.w		#5,	d2
	jsr	     03/blt_spr(a5)
	;bra	  .dgmace


	;#159/SPR_LMACEW<.6> 30x40px
dgmace	move.w	    DC_X(a6),	d0
	move.w	    DC_Y(a6),	d1
	movea.l	spr+59*4(a5),	a1
	jmp	 02/dg_dispatch(a5)
data236	;rts		    ;:0eea
