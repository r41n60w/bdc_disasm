; vi: syntax=asm68k

;0(A6).l  (map_t *)  .map
;4(A6).w  (tloff_t)  .tile
;6(A6).w  (rwoff_t)  .row
;8(A6).w  (jtoff_t)  .bbst bomb state
;10(A6).w (int16_t)  .bbc  " ivl/fr idx
;12(A6).w (xpos_t)   .bbx
;14(A6).w (ypos_t)   .bby
;16(A6)[] (off_t[6]) .lfr  L.fr_idx[6]
;28(A6)[] (off_t[6]) .rfr  R."     [6]
;40(A6)[] (off_t[4]) .ufr  U."     [6]
;48(A6)[] (un_t)     .ubb  qenemy->[U]
;72(A6)   (un_t)     .lbb	 ->[L]
;96(A6)   (un_t)     .rbb	 ->[R]
;120(A6)  (un_t)     .ubb2  qbomb->[U]
;144(A6)  (un_t)     .lbb2       ->[L]
;168(A6)  (un_t)     .rbb2       ->[R]
;192(A6).b (Boolean) .expl  oding?


;:3064		3/data150[]
;Bomb [blast] object func
;  arg A6(bomb_t *):  obj

BBPLANT	equ	+0
BBFUSE	equ	+4
BBBLAST	equ	+8
BBDETON	equ	+12

cb_bomb:
	move.w	   _BBX(a6),	d0
	move.w	   _BBY(a6),	d1
	movea.l	 currpg(a5),	a0
	move.w	  _BBST(a6),	d3
	jmp		 bombjt(d3.w)

bombjt:			      ;:3078
	jmp	.bbplant    ;+0:3088
	jmp	.bbfuse     ;+4:3098
	jmp	.bbblast    ;+8:3358
	jmp	.bbdeton   ;+12:30ac


;:3088	[+0/BBPLANT]
bbplant	move.w	 #BBFUSE, _BBST(a6)
	move.w	     #25,  _BBC(a6)
	bra	  .endbomb


;:3098	[+4/BBFUSE]
	;#218/SPR_BOMB1<.6> 32x23px
bbfuse	movea.l	118*4+spr(a5),	a1
	move.w	       #5,	d2
	jsr	     3/blit_spr(pc)
	subq.w	       #1, _BBC(a6)
	bge	  .endbomb


;:30ac	[+12/BBDETON] #17/"boom!"
bbdeton	move.w		d0,   -(sp)
	move.w	 #SND_BOMB,	d0
	jsr	     1/play_snd(a5)
	move.w	       (sp)+,	d0
	;detonate -> [BBBLAST]
deton2	move.w	#BBBLAST, _BBST(a6)
	clr.w		   _BBC(a6)
	st		  _EXPL(a6)
	move.w	      #9, _LFRV(a6)
	move.w		#9,  28(a6)
	move.w		#9,  40(a6)
	addi.w	       #19,	d0
	;(un_t) bomb.ubb -> [qenemy] 
udeton	movem.l	   a0-a1,     -(sp)
	lea    qenemy(a5), 	a0
	lea	 _UBB(a6),	a1
	move.l	      a0,  _UPV(a1)
	move.l	 _UNX(a0), _UNX(a1)
	move.l	      a1,  _UNX(a0)
	movea.l	 _UNX(a1),	a0
	cmpa.w	   #NULL,	a0
	beq.s	  .udeton2
	move.l	      a1,  _UPV(a0)
udeton2	movem.l	   (sp)+,    a0-a1
	move.w	    d0,  48+_UX(a6)
	subi.w	   #10,  48+_UX(a6)
	move.w	    d1,  48+_UY(a6)
	subi.w	   #10,  48+_UY(a6)
	move.w	   #20,  48+_UW(a6)
	move.w	   #20,  48+_UH(a6)
	move.w	   #+1, 48+_UDX(a6)
	move.w	   #-1, 48+_UID(a6)
	;(un_t) .lbb -> [qenemy] 
ldeton	movem.l	    a0-a1,    -(sp)
	lea    qenemy(a5), 	a0
	lea	 _LBB(a6),	a1
	move.l	      a0,  _UPV(a1)
	move.l	 _UNX(a0), _UNX(a1)
	move.l	      a1,  _UNX(a0)
	movea.l	 _UNX(a1),	a0
	cmpa.w	   #NULL,	a0
	beq.s	  .ldeton2
	move.l	      a1,  _UPV(a0)
ldeton2	movem.l	   (sp)+,    a0-a1
	move.w	    d0,  72+_UX(a6)
	subi.w	   #20,  72+_UX(a6)
	move.w	    d1,  72+_UY(a6)
	move.w	   #20,  72+_UW(a6)
	move.w	   #23,  72+_UH(a6)
	move.w	   #+1, 72+_UDX(a6)
	move.w	   #-1, 72+_UDY(a6)
	;(un_t) .rbb -> [qenemy] 
rdeton	movem.l	   a0-a1,     -(sp)
	lea    qenemy(a5), 	a0
	lea	 _RBB(a6),	a1
	move.l	      a0,  _UPV(a1)
	move.l	 _UNX(a0), _UNX(a1)
	move.l	      a1,  _UNX(a0)
	movea.l	 _UNX(a1),	a0
	cmpa.w	   #NULL,	a0
	beq.s	  .rdeton2
	move.l	      a1,  _UPV(a0)
rdeton2	movem.l	   (sp)+,    a0-a1
	move.w	    d0,  96+_UX(a6)
	move.w	    d1,  96+_UY(a6)
	move.w	   #20,  96+_UW(a6)
	move.w	   #23,  96+_UH(a6)
	move.w	   #+1, 96+_UDX(a6)
	move.w	   #+1, 96+_UDY(a6)
	;(un_t) bomb.ubb2 -> [qbomb] 
u2deton	movem.l	   a0-a1,     -(sp)
	lea	qbomb(a5),	a0
	lea	_UBB2(a6),	a1
	move.l	      a0,  _UPV(a1)
	move.l	 _UNX(a0), _UNX(a1)
	move.l	      a1,  _UNX(a0)
	movea.l	 _UNX(a1),	a0
	cmpa.w	   #NULL,	a0
	beq.s	  .u2deto2
	move.l	      a1,  _UPV(a0)
u2deto2	movem.l	  (sp)+,     a0-a1
	move.w	   d0,  120+_UX(a6)
	subi.w	  #10,  120+_UX(a6)
	move.w	   d1,  120+_UY(a6)
	subi.w	  #10,  120+_UY(a6)
	move.w	  #20,  120+_UW(a6)
	move.w	  #20,  120+_UH(a6)
	move.w	  #+1, 120+_UDX(a6)
	move.w	  #-1, 120+_UID(a6)
	;(un_t) .lbb2 -> [qbomb] 
l2deton	movem.l	   a0-a1,     -(sp)
	lea	qbomb(a5),	a0
	lea	_LBB2(a6),	a1
	move.l	      a0,  _UPV(a1)
	move.l	 _UNX(a0), _UNX(a1)
	move.l	      a1,  _UNX(a0)
	movea.l	 _UNX(a1),	a0
	cmpa.w	   #NULL,	a0
	beq.s	  .l2deto2
	move.l	      a1,  _UPV(a0)
l2deto2	movem.l	  (sp)+,     a0-a1
	move.w	   d0,  144+_UX(a6)
	subi.w	  #20,  144+_UX(a6)
	move.w	   d1,  144+_UY(a6)
	move.w	  #20,  144+_UW(a6)
	move.w	  #23,  144+_UH(a6)
	move.w	  #+1, 144+_UDX(a6)
	move.w	  #-1, 144+_UDY(a6)
	;(un_t) .rbb2 -> [qbomb] 
r2deton	movem.l	   a0-a1,     -(sp)
	lea	qbomb(a5),	a0
	lea	_RBB2(a6),	a1
	move.l	      a0,  _UPV(a1)
	move.l	 _UNX(a0), _UNX(a1)
	move.l	      a1,  _UNX(a0)
	movea.l	 _UNX(a1),	a0
	cmpa.w	   #NULL,	a0
	beq.s	  .r2deto2
	move.l	      a1,  _UPV(a0)
r2deto2	movem.l	  (sp)+,     a0-a1
	move.w	   d0,  168+_UX(a6)
	move.w	   d1,  168+_UY(a6)
	move.w	  #20,  168+_UW(a6)
	move.w	  #23,  168+_UH(a6)
	move.w	  #+1, 168+_UDX(a6)
	move.w	  #+1, 168+_UDY(a6)
	bra	.endbomb


;:329c			3/[unnamed]
;Check if wall (on left) bombed 
;  arg A6(bomb_t *):  bomb obj
;  arg D0(xpos_t):    bomb.X
;  ret	(Z set):      [no wall]
;	(Z clear):    [hit wall]
bomb_lwall:
	movem.l	  d0/d4/a2,   -(sp)
	movea.l	   _MAP(a6),	a2
	move.w	  _TILE(a6),	d4
	;(-15,0) stay onscreen
	subi.w	       #15,	d0
	tst.w			d0
	bgt.s	  .bbtilel
	move.w		#1,	d0
	;(--tile)
bbtilel	subi.w	       #18,	d4
	cmp.w	  _R(a2,d4.w),	d0
	bge.s	  .lnowall
	;(within tile)
	cmpi.w	    #W_, _TL(a2,d4.w)
	bne.s	  .bbtilel
	;hit wall, explode  -> [!Z]
lhitwal	move.w	  #TRUE, _F0(a2,d4.w)
	andi.b	#%00001011,	ccr
	bra.s	  .endbblw
	;no wall	    -> [Z]
lnowall	ori.b	#%00000100,	ccr
endbblw	movem.l	   (sp)+, d0/d4/a2
retbblw	rts		;:32d8


;:32da			3/[unnamed]
;Check if wall (on right) bombed 
;  arg A6(bomb_t *):  bomb obj
;  arg D0(xpos_t):    bomb.X
;  ret	(Z set):       [no wall]
;	(Z clear):    [hit wall]
bomb_rwall:
	movem.l	  d0/d4/a2,   -(sp)
	movea.l	   _MAP(a6),	a2
	move.w	  _TILE(a6),	d4
	addi.w	       #15,	d0
	;(++tile)
bbtiler	addi.w	       #18,	d4
	cmp.w	  _L(a2,d4.w),	d0
	blt.s	  .rnowall
	cmpi.w	    #W_, _TL(a2,d4.w)
	bne.s	  .bbtiler
rhitwal	move.w	  #TRUE, _F0(a2,d4.w)
	andi.b	#%00001011,	ccr
	bra.s	  .endbbrw
rnowall	ori.b	#%00000100,	ccr
endbbrw	movem.l	   (sp)+, d0/d4/a2
retbbrw	rts		;:330e


;:3310			3/[unnamed]
;Check if wall (on right) bombed 
;  arg A6(bomb_t *):  bomb obj
;  arg D1(ypos_t):    bomb.Y
;  ret	(Z set):       [no ceiling]
;	(Z clear):    [hit ceiling]
bomb_ceil:
	movem.l  d1/d3-d4/a2, -(sp)
	movea.l	   _MAP(a6),	a2
	move.w	   _ROW(a6),	d3
	subi.w	       #54,	d1
	;get row above
bbrowu	subq.w		#4,	d3
	cmp.w	_RWY(a2,d3.w),	d1
	bgt.s	  .noceil
	;top row?
	tst.l	    (a2,d3.w)
	beq.s	  .noceil
	move.w	_TL0(a2,d3.w),	d4
	;find tile above bomb
bbtileu	addi.w	       #18,	d4
	cmp.w	  _L(a2,d4.w),	d0
	blt.s	  .bbrowu
	cmp.w	  _R(a2,d4.w),	d0
	bgt.s	  .bbtileu
	;[V_POLE]?
	cmpi.w	#$0200, _TL(a2,d4.w)
	bge.s	  .bbrowu
	;hit ceiling	-> [!Z]
hitceil	andi.b	#%00001011,	ccr
	bra.s	  .endbbcl
	;no ceiling	-> [Z]
noceil	ori.b	#%00000100,	ccr
endbbcl	movem.l	(sp)+, d1/d3-d4/a2
	rts		;:3356


;:3358	[+8/BBBLAST]
bbblast	tst.b		    _EXPL(a6)
	bne	  .blast2
	;(!expl) -> delete obj	
delbomb	clr.l		 -8+_CB(a6)
	sf		planted(a5)
	bra	.endbomb

blast2	sf		    _EXPL(a6)
	;save pos
	move.w	       d0,	d6
	move.w	       d1,	d7
	move.w	  _BBC(a6),	d2
	addq.w	       #1, _BBC(a6)
	cmpi.w	       #4,	d2
	bgt.s	  .lblast
	;#217/SPR_BOMB2<.3> 80x32px
bltmain	move.b bbmain_fr(d2.w),	d2
	ext.w			d2
	movea.l	117*4+spr(a5),	a1
	subi.w	       #22,	d0
	subi.w		#9,	d1
	;blit main blast, D2/[0,4]
	jsr	     3/blit_spr(pc)
	bra.s	  .lblast


bbmain_fr:	;frame8_t[5]:339a
	dc.b	0,  1,  2,  1,  0
	dc.b	0


	;#218/SPR_BOMB1<.6>	:33a0
lblast	movea.l	118*4+spr(a5),	a1
	;restore pos
	move.w		d6,	d0
	move.w		d7,	d1
	lea	  _LFRV(a6),	a3
	move.w		#5,	d7
	;(left blast) D7/loc [x6]
lbomblp	subq.w		#1,	d7
	blt	  .rblast
	;A3/each loc. @(-20,0)
	subi.w	       #20,	d0
	subq.w		#1,    (a3)+
	blt.s	  .lbomblp
	;D3/(--lfrv[loc] >= 0)
lbombfr	move.w	     -2(a3),	d3
	lea	3/bbadj_fr,	a4
	adda.w		d3,	a4
	move.b	       (a4),	d2
	ext.w			d2
	bge.s	  .bltlbb
	;D2/(frame_t < 0)
lnegfr	neg.w			d2
	jsr	   3/bomb_lwall(pc)
	bne.s	  .dellbb
	;(no hit wall): expand left
lexpand	move.w	    #9,        (a3)
	subi.w	   #20,  72+_UX(a6)
	addi.w	   #20,  72+_UW(a6)
	subi.w	   #20, 144+_UX(a6)
	addi.w	   #20, 144+_UW(a6)
	tst.w			d7
	bgt.s	  .bltlbb
	;(hit wall/loc[4]) unlink
dellbb	movem.l	    a0-a1,    -(sp)
	lea	  _LBB(a6),	a1
	movea.l	  _UPV(a1),	a0
	movea.l	  _UNX(a1),	a1
	move.l	       a1, _UNX(a0)
	cmpa.w	    #NULL,	a1
	beq.s	  .dellbb2
	move.l	       a0, _UPV(a1)
dellbb2	movem.l	      (sp)+, a0-a1
	movem.l	    a0-a1,    -(sp)
	lea	 _LBB2(a6),	a1
	movea.l	  _UPV(a1),	a0
	movea.l	  _UNX(a1),	a1
	move.l	       a1, _UNX(a0)
	cmpa.w	    #NULL,	a1
	beq.s	  .dellbb3
	move.l	       a0, _UPV(a1)
dellbb3	movem.l	      (sp)+, a0-a1
	;blit left blast
bltlbb	jsr	     3/blit_spr(pc)
	st		  _EXPL(a6)
	bra	  .lbomblp


rblast	move.w		d6,	d0
	lea	  _RFRV(a6),	a3
	move.w		#5,	d7
rbomblp	subq.w		#1,	d7
	blt	  .ublast
	addi.w	       #20,	d0
	subq.w		#1,    (a3)+
	blt.s	  .rbomblp
rbombfr	move.w	     -2(a3),	d3
	move.b	bbadj_fr(d3.w),	d2
	ext.w			d2
	bge.s	  .bltrbb
rnegfr	neg.w			d2
	jsr	   3/bomb_rwall(pc)
	bne.s	  .delrbb
	;(no hit wall): expand right
rexpand	move.w	    #9,	       (a3)
	addi.w	   #20,  96+_UW(a6)
	addi.w	   #20, 168+_UW(a6)
	tst.w			d7
	bgt.s	  .bltrbb
	;(hit wall): unlink .rbb
delrbb	movem.l	    a0-a1,    -(sp)
	lea	  _RBB(a6),	a1
	movea.l	  _UPV(a1),	a0
	movea.l	  _UNX(a1),	a1
	move.l	       a1, _UNX(a0)
	cmpa.w	    #NULL,	a1
	beq.s	  .delrbb2
	move.l	       a0, _UPV(a1)
delrbb2	movem.l	      (sp)+, a0-a1
	movem.l	    a0-a1,    -(sp)
	lea	 _RBB2(a6),	a1
	movea.l	  _UPV(a1),	a0
	movea.l	  _UNX(a1),	a1
	move.l	       a1, _UNX(a0)
	cmpa.w	    #NULL,	a1
	beq.s	  .delrbb3
	move.l	       a0, _UPV(a1)
delrbb3	movem.l	      (sp)+, a0-a1
	;blit right blast
bltrbb	jsr	     3/blit_spr(pc)
	st		  _EXPL(a6)
	bra.s	  .rbomblp


bbadj_fr:	;frame8_t[9]:34c4
	dc.b	4,  3,  2,  1,  0
	dc.b	1, -2,	3,  4
	dc.b	0


ublast	move.w		d6,	d0
	lea	  _UFRV(a6),	a3
	move.w		#3,	d7
	;(up blast) D7/loc [x6]
ubomblp	subq.w		#1,	d7
	blt	  .endblas
	subi.w	       #20,	d1
	subq.w		#1,    (a3)+
	blt.s	  .ubomblp
ubombfr	move.w	     -2(a3),	d3
	move.b	bbadj_fr(d3.w),	d2
	ext.w			d2
	bge.s	  .bltubb
	neg.w			d2
	jsr	    3/bomb_ceil(pc)
	bne.s	  .delubb
	;(no hit ceil): expand upward
uexpand	move.w	    #9,        (a3)
	subi.w	   #20,  48+_UY(a6)
	addi.w	   #20,  48+_UW(a6)
	subi.w	   #20, 120+_UY(a6)
	addi.w	   #20, 120+_UW(a6)
	tst.w			d7
	bgt.s	  .bltubb
	;(hit ceil/loc[2]): unlink
delubb	movem.l	    a0-a1,    -(sp)
	lea	  _UBB(a6),	a1
	movea.l	  _UPV(a1),	a0
	movea.l	  _UNX(a1),	a1
	move.l	       a1, _UNX(a0)
	cmpa.w	    #NULL,	a1
	beq.s	  .delubb2
	move.l	       a0, _UPV(a1)
delubb2	movem.l	      (sp)+, a0-a1
	movem.l	    a0-a1,    -(sp)
	lea	 _UBB2(a6),	a1
	movea.l	  _UPV(a1),	a0
	movea.l	  _UNX(a1),	a1
	move.l	       a1, _UNX(a0)
	cmpa.w	    #NULL,	a1
	beq.s	  .delubb3
	move.l	       a0, _UPV(a1)
delubb3	movem.l	      (sp)+, a0-a1
bltubb	jsr	     3/blit_spr(pc)
	st		  _EXPL(a6)
	bra	  .ubomblp
endblas	bra	  .endbomb
endbomb	rts		;:3566
