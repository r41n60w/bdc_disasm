; vi: syntax=asm68k

;:0faa		3/data121[]
;Vulture animate function

an_vulture:
	move.w	     32+14(a6),	d2
	asl.w		#2,	d2
	jmp		 vultjt(d2.w)

vultjt:				;:0fb4
	jmp	.novult		;[#0]:0fec
	jmp	.vlspawn	;[#1]:1014
	jmp	.vlhover	;[#2]:106a
	jmp	.vlfallx	;[#3]:121a
	jmp	.vldeath	;[#4]:125c

	jmp	.vldive		;[#5]:1082
	jmp	.vldown		;[#6]:10a0
	jmp	.vldive2	;[#7]:10de
	jmp	.vlhorz		;[#8]:1124
	jmp	.vlloop		;[#9]:1178
	jmp	.vlup		;[#10]:1196
	jmp	.vldive3	;[#11]:11a8
	jmp	.vlhorz2	;[#12]:11c6
	jmp	.vldive4	;[#13]:11e4


;:0fec	[#0/NOVULT] wait to respawn
novult	lea	3/empty_ani,	a0
	move.w	       #-1,	d2
	subq.w		#1,  54(a6)
	bgt	  .endvula
	;(<= 0)
	move.w	  #VLSPAWN,  46(a6)
	lea	     28(a6),	a0
	move.l	#$08000000,	d7
	jsr	    3/add_aepos(pc)
	bra	0x1014


;:1014	[#1/VLSPAWN]
vlspawn	tst.w		     36(a6)
	beq.s	  .lspawn
rspawn	lea	3/rvultg_ani,	a0
	bra.s	  .spawn2
lspawn	lea	3/lvultg_ani,	a0
spawn2	move.w		#1,	d2
gensnd	move.w		d0,   -(sp)
	move.w	       #64,	d0
	jsr	     1/play_snd(a5)
	move.w	       (sp)+,	d0
	;set initial pos -> [VLHOVER]
	move.w	     32(a6),	d0
	move.w	     34(a6),	d1
	move.w	  #VLHOVER,  46(a6)
	;gen dive interval
	movem.l	  d0-d2/a0-a2,-(sp)
	jsr	       3/random(pc)
	and.w	     40(a6),	d0
	subq.w		#2,	d0
	move.w		d0,  54(a6)
	movem.l	   (sp)+, d0-d2/a0-a2
	tst.w		     54(a6)
	bgt	  .endvula
	;(<= 0): dive
	move.w	   #VLDIVE,  46(a6)
	bra	  .endvula


;:106a	[#2/VLHOVER] flap wings @top
vlhover	subq.w		#1,  54(a6)
	bgt.s	  .anhover
	;(dive)
	move.w	   #VLDIVE,  46(a6)
anhover	lea	3/fvult_ani,	a0
	move.w		#3,	d2
	bra	  .endvula


;:1082	[#5/VLDIVE]
vldive	lea	3/xvult_ani,	a0
	move.w		#1,	d2
	move.w	   #VLDOWN,  46(a6)
	;"myyyrh!" sound
divesnd	move.w		d0,   -(sp)
	move.w	       #63,	d0
	jsr	     1/play_snd(a5)
	move.w	       (sp)+,	d0
	bra	  .endvula


;:10a0	[#6/VLDOWN] dive <S>
vldown	lea	3/dvult_ani, 	a0
	movea.l	  dcobj(a5),	a3
	move.w	 8+_DCY(a3),	d2
	cmp.w	     68(a6),	d2
	ble.s	0x10b6
	move.w	     68(a6),	d2
;:10b6
	cmp.w	     66(a6),	d2
	bge.s	0x10c0
	move.w	     66(a6),	d2
;:10c0
	sub.w		d1,	d2
	subi.w	       #18,	d2
	bgt.s	0x10ca
	clr.w			d2
;:10ca
	ext.l			d2
	divu.w	       #12,	d2
	move.w		d2,  60(a6)
	move.w	  #VLDIVE2,  46(a6)
	bra	  .endvula


;:10de	[#7/VLDIVE2]
vldive2	movea.l	  dcobj(a5),	a3
	move.w	 8+_DCX(a3),	d2
	cmp.w	     62(a6),	d2
	bge.s	0x10f2
	move.w	     62(a6),	d2
	bra.s	0x10fc
;:10f2
	cmp.w	     64(a6),	d2
	ble.s	0x10fc
	move.w	     64(a6),	d2
;:10fc
	cmp.w		d0,	d2
	bgt.s	0x110c
	;
	move.w	     #LEFT,  56(a6)
	lea	3/ldive_ani,	a0
	bra.s	0x1116
;:110c
	move.w	    #RIGHT,  56(a6)
	lea	3/rdive_ani,	a0
;:1116
	move.w		#1,	d2
	move.w	   #VLHORZ,  46(a6)
	bra	  .endvula


;:1124	[#8/VLHORZ] swoop L/R
vlhorz	movea.l	  dcobj(a5),	a3
	move.w	 8+_DCX(a3),	d2
	cmp.w	     62(a6),	d2
	bge.s	0x1138
	move.w	     62(a6),	d2
	bra.s	0x1142
;:1138
	cmp.w	     64(a6),	d2
	ble.s	0x1142
	move.w	     64(a6),	d2
;:1142
	sub.w		d0,	d2
	tst.w		     56(a6)
	blt.s	0x1154
	lea	3/rvult_ani,	a0
	addi.w	       #12,	d2
	bra.s	0x115e
;:1154
	lea	3/lvult_ani,	a0
	neg.w			d2
	subi.w	       #35,	d2
;:115e
	tst.w			d2
	bgt.s	0x1164
	clr.w			d2
;:1164
	ext.l			d2
	divu.w	       #12,	d2
	move.w		d2,  58(a6)
	move.w	   #VLLOOP,  46(a6)
	bra	  .endvula


;:1178	[#9/VLLOOP]
vlloop	tst.w		     56(a6)
	blt.s	0x1184
r	lea	3/rloop_ani,	a0
	bra.s	0x1188
;:1184
	lea	3/lloop_ani,	a0
;:1188
	move.w		#1,	d2
	move.w	     #VLUP,  46(a6)
	bra	  .endvula


;:1196	[#10/VLUP] swoop back to top
vlup	lea	3/uvult_ani,	a0
	move.w	     60(a6),	d2
	move.w	  #VLDIVE3,  46(a6)
	bra	  .endvula


;:11a8	[#11/VLDIVE3]
vldive3	tst.w		     56(a6)
	blt.s	  .rsoar
lsoar	lea	3/lsoar_ani,	a0
	bra.s	  .andive3
rsoar	lea	3/rsoar_ani,	a0
andive3	move.w		#1,	d2
	move.w	  #VLHORZ2,  46(a6)
	bra	  .endvula


;:11c6	[#12/VLHORZ2]
vlhorz2	tst.w		     56(a6)
	blt.s	  .rvult2
lvult2	lea	3/lvult_ani,	a0
	bra.s	  .anhorz2
rvult2	lea	3/rvult_ani,	a0
anhorz2	move.w	     58(a6),	d2
	move.w	  #VLDIVE4,  46(a6)
	bra	  .endvula


;:11e4	[#13/VLDIVE4] -> VLHOVER
vldive4	tst.w		     56(a6)
	blt.s	  .rsettle
lsettle	lea	3/lsettle_ani,	a0
	bra.s	  .andive4
rsettle	lea	3/rsettle_ani,	a0
andive4	move.w		#1,	d2
	move.w	  #VLHOVER,  46(a6)
	;gen dive interval
	movem.l	  d0-d2/a0-a2,-(sp)
	jsr	       3/random(pc)
	and.w	     40(a6),	d0
	add.w	     38(a6),	d0
	move.w		d0,  54(a6)
	movem.l	   (sp)+, d0-d2/a0-a2
	bra	  .endvula


;:121a	[#3/VLFALLX] -> VLDEATH
vlfallx	addi.w	       #30,	d1
	cmp.w	     52(a6),	d0
	blt.s	0x1238
	;(.X > .mgnd)
	cmp.w	     50(a6),	d1
	blt.s	0x124c
	move.w	     50(a6),	d1
	move.w	   #VLDEATH,  46(a6)
	bra	0x125c

;:1238
	cmp.w	     48(a6),	d1
	blt.s	0x124c
	move.w	     48(a6),	d1
	move.w	   #VLDEATH,  46(a6)
	bra	0x125c
;:124c
	subi.w	       #30,	d1
	lea	3/vlfallx_ani,	a0
	move.w		#1,	d2
	bra	  .endvula


;:125c	[#4/VLDEATH] -> NOVULT
vldeath	lea	3/vultx_ani,	a0
	move.w		#1,	d2
	move.w		d0,   -(sp)
	move.w	       #61,	d0
	jsr	     1/play_snd(a5)
	move.w	       (sp)+,	d0
	;gen respawn interval
	clr.w		     46(a6)
	movem.l	 d0-d2/a0-a2, -(sp)
	jsr	       3/random(pc)
	and.w	     44(a6),	d0
	add.w	     42(a6),	d0
	move.w		d0,  54(a6)
	movem.l	   (sp)+, d0-d2/a0-a2
;:128c
endvula	rts


VULT	equ	+0 ;<.20> 32x18px #215
 X	equ	0
HOVER1	equ	1
HOVER2	equ	2
HOVER3	equ	3
HOVER4	equ	4
SE	equ	5
SW	equ	6
NE	equ	7
NW	equ	8
N	equ	9
S	equ	10
W	equ	11
RANTI	equ	12
UANTI	equ	13
LANTI	equ	14
DANTI	equ	15
DCLKW	equ	16
LCLKW	equ	17
UCLKW	equ	18
RCLKW	equ	19

VULT2	equ	+4 ; <.4> 32x16px #216
 DIE1	equ	0
 DIE2	equ	1
 DIE3	equ	2
 E	equ	3

rvultg_ani:	;ani4v_t[8]:128e
	dc.b	 -27, +30,  VULT,   6 ;SW
	dc.b	 -27, +30,  VULT,   6
	dc.b	 -18, +20,  VULT,   6
	dc.b	  -8,  +8,  VULT,   6
	dc.b	 -11, +13,  VULT,   0 ;X
	dc.b	  -9, +14,  VULT,   0
	dc.b	  -5, +13,  VULT,   0
	dc.b	   0,   0,     0, END

lvultg_ani:	;ani4v_t[8]:12ae
	dc.b	 +27, +30,  VULT,   5 ;SE
	dc.b	 +27, +30,  VULT,   5
	dc.b	 +18, +20,  VULT,   5
	dc.b	  +8,  +8,  VULT,   5
	dc.b	 +11, +13,  VULT,   0 ;X
	dc.b	  +9, +14,  VULT,   0
	dc.b	  +5, +13,  VULT,   0
	dc.b	   0,   0,     0, END

xvult_ani:	;[2]:12ce	
	dc.b	   0,   0,  VULT,   0 ;X
	dc.b	   0,   0,     0, END

dvult_ani:	;[2]:12d6
	dc.b	   0, +12,  VULT,  10 ;S
	dc.b	   0,   0,     0, END

uvult_ani:	;[2]:12de
	dc.b	   0, -12,  VULT,   9 ;N
	dc.b	   0,   0,     0, END

rvldive_ani:	;[4]:12e6
	dc.b	  +6,  +8,  VULT,  15 ;DAN
	dc.b	  +6,  +8,  VULT,   5 ;SE
	dc.b	  +6,  +8, VULT2,   3 ;E
	dc.b	   0,   0,     0, END

lvldive_ani:	;[4]:12f6
	dc.b	  -6,  +8,  VULT,  16 ;DCW
	dc.b	  -6,  +8,  VULT,   6 ;SW
	dc.b	  -6,  +8,  VULT,  11 ;W
	dc.b	   0,   0,     0, END

rvult_ani:	;[2]:1306
	dc.b	 +12,  +0, VULT2,   3 ;E
	dc.b	   0,   0,     0, END

lvult_ani:	;[2]:130e
	dc.b	 -12,  +0,  VULT,  11 ;W
	dc.b	   0,   0,     0, END

rvlloop_ani:	;[13]:1316
	dc.b	  +8,  -8,  VULT,  12
	dc.b	   0,  -8,  VULT,   9
	dc.b	  -8,  -8,  VULT,  13
	dc.b	  -8,   0,  VULT,  11
	dc.b	  -8,  +8,  VULT,  14
	dc.b	   0,  +8,  VULT,  10
	dc.b	  +8,  +8,  VULT,  15
	dc.b	 +12,  +0, VULT2,   3
	dc.b	 +12,  +0, VULT2,   3
	dc.b	  +8,  -8,  VULT,  12
	dc.b	 +10, -10,  VULT,   7
	dc.b	 +10, -10,  VULT,   7
	dc.b	   0,   0,     0, END

lvlloop_ani:	;[13]:134a
	dc.b	  -8,  -8,  VULT,  17
	dc.b	   0,  -8,  VULT,   9
	dc.b	  +8,  -8,  VULT,  18
	dc.b	  +8,   0, VULT2,   3
	dc.b	  +8,  +8,  VULT,  19
	dc.b	   0,  +8,  VULT,  10
	dc.b	  -8,  +8,  VULT,  16
	dc.b	 -12,  +0,  VULT,  11
	dc.b	 -12,  +0,  VULT,  11
	dc.b	  -8,  -8,  VULT,  17
	dc.b	 -10, -10,  VULT,   8
	dc.b	 -10, -10,  VULT,   8
	dc.b	   0,   0,     0, END

lvlsoar_ani:		;[4]:137e
	dc.b	   0, -16,  VULT,   9 ;N
	dc.b	  -8,  -8,  VULT,  13 ;UAC
	dc.b	 -12, -12,  VULT,   8 ;NW
	dc.b	   0,   0,     0, END

rvlsoar_ani:		;[4]:138e
	dc.b	   0, -16,  VULT,   9 ;N
	dc.b	  +8,  -8,  VULT,  18 ;UCW
	dc.b	 +12, -12,  VULT,   7 ;NE
	dc.b	   0,   0,     0, END

lvldivx_ani:	;[6]:139e
	dc.b	 -10, +10,  VULT,  14 ;LAC
	dc.b	 -10, +10,  VULT,   6 ;SW
	dc.b	 -10,  +8,  VULT,   0 ;X
	dc.b	  -6,  +6,  VULT,   0
	dc.b	  -6,  +6,  VULT,   0
	dc.b	   0,   0,     0, END

rvldivx_ani:	;[6]:13b6
	dc.b	 +10, +10,  VULT,  19 ;RCW
	dc.b	 +10, +10,  VULT,   5 ;SE
	dc.b	 +10,  +8,  VULT,   0 ;X
	dc.b	  +6,  +6,  VULT,   0
	dc.b	  +6,  +6,  VULT,   0
	dc.b	   0,   0,     0, END

fvult_ani:		;[9]:13ce
	dc.b	   0,   0,  VULT,   1
	dc.b	   0,   0,  VULT,   1
	dc.b	   0,   0,  VULT,   2
	dc.b	   0,   0,  VULT,   2
	dc.b	   0,   0,  VULT,   3
	dc.b	   0,   0,  VULT,   3
	dc.b	   0,   0,  VULT,   4
	dc.b	   0,   0,  VULT,   4
	dc.b	   0,   0,     0, END

vlfallx_ani:		;[3]:13f2
	dc.b	   0, +25,  VULT,  16 ;DCW
	dc.b	   0, +25,  VULT,  15 ;DAC
	dc.b	   0,   0,     0, END

vultx_ani:		;[5]:13fe
	dc.b	   0,   0, VULT2,   0 ;DY1
	dc.b	   0,   0, VULT2,   1 ;DY2
	dc.b	   0,   0, VULT2,   2 ;DY3
	dc.b	   0,   0, VULT2,   1 ;DY2
	dc.b	   0,   0,     0, END

