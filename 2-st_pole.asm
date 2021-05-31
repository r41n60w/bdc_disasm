; vi: syntax=asm68k

;static const maptile_t vpole =	{
;	(xpos_t)	(l,r),
;	(tile_t) V_POLE,
;	(tloff_t)	ltl,
;	(tloff_t)	rtl,
;	(tloff_t)	utl,
;	(tloff_t)	dtl,
;	(ypos_t)	top,
;	(ypos_t)	bottom
;};
;#define STOPTL		((tloff_t) -1)
;#define PASSTL		((tloff_t)  0)
;#define FALLTL		((tloff_t) +1)

;48(A6).w  (xoff_t) .vdir {LEFT|RIGHT}
;50(A6).w  (ivl_t)  .vsnd (climb snd)

;:2134			2/data103[]
;#POLE (vertical tile) state handler
;	-> go_fall()	[#FALL]
;	-> st_poleon()	[#POLEON]
;  arg A6(dc_t *),  D1(ypos_t),
;  arg A2(map_t *), D4(tloff_t) V_POLE

st_pole:
	tst.w		  _VDIR(a6)
	blt.s	  .lgrab	
	;grab from RIGHT
rgrab	tst.w	   6(a2,d4.w)
	bge.s	  .onpole	
	jmp	      2/go_fall(pc)
	;"     "   LEFT
lgrab	tst.w	   8(a2,d4.w)
	bge.s	  .onpole	
	jmp	      2/go_fall(pc)
	;grab pole  -> [#POLEON]
onpole	clr.w		    _FR(a6)
	move.w	  _L(a2,d4.w),	d0
	move.w	     d0,     _X(a6)
	move.w	#POLEON,    _ST(a6)
	;(opposite side)
	move.w _VDIR(a6), _FACE(a6)
	neg.w		  _FACE(a6)
	clr.w		  _VSND(a6)
	cmp.w	  14(a2,d4.w),	d1
	bge.s	  .onpole2
	move.w	  14(a2,d4.w),	d1
onpole2	cmp.w	  16(a2,d4.w),	d1
	ble.s	    2/st_poleon(pc)
onpole3	move.w	  16(a2,d4.w),	d1
	;fall thru .. st_poleon()


;:2182			[unnamed]
;#POLEON (climb v. pole) state handler

POLE222	equ	($0200 | 34)

st_poleon:
	move.w	    _FR(a6),	d2
	movea.l	 currpg(a5),	a0
	cmpi.w #POLE222, _TL(a2,d4.w)
	bne.s	  .pole2
	;tile 2[#34] -> (climb DOWN)
tile34	move.w	    #+10, _VJOY(a6)
	subq.w	      #1,	d2
	bra	  .descend
	;D7/(xoff_t) move horiz? 
pole2	move.w	  _HJOY(a6),	d7
	beq	  .pole3
	blt.s	  .lpole
	;(moving RIGHT)
rpole	tst.w		   8(a2,d4.w)
	bge.s	  .poledir
	bra	  .pole3
	;(  "    LEFT)
lpole	tst.w		   6(a2,d4.w)
	bge.s	  .poledir
	bra	  .pole3
	;pole not blocked
poledir	cmp.w	  _FACE(a6),	d7
	bne.s	  .polflip
	;facing side -> [jump]
poljmp	tst.w			d7
	blt	  .ljmp
	bgt	  .rjmp
	;opposite side -> [swap]
polflip	move.w	      d7, _FACE(a6)
	clr.w		  _HJOY(a6)
	;..fall thru..

	;(.X at rest)||(-1/tile block)
pole3	tst.w		  _VJOY(a6)
	blt	  .ascend
	bgt	  .descend
	;(.Y at rest) -> mute #14
vstill	move.w		d0,   -(sp)
	move.w	#SND_CLIMB,	d0
	jsr	     1/mute_snd(a5)
	move.w	       (sp)+,	d0
	clr.w		  _VSND(a6)
	bra	  .bltpole


	;(moving/facing LEFT)
ljmp	move.w	   6(a2,d4.w),	d5
	beq	  .jmpoff
	bra	  .poljmp2
	;(moving/facing RIGHT)
rjmp	move.w	   8(a2,d4.w),	d5
	beq	  .jmpoff
	bra	  .poljmp2

	;jump off pole -> [#MIDJMP]
jmpoff	subq.w		#8,	d1
	move.w		d1,  _Y(a6)
	bsr	  2/dc_rowbelow(pc)
	tst.w		  _FACE(a6)
	bge.s	  .rjmpoff
ljmpoff	move.w	  _L(a2,d4.w),	d0
	subq.w		#1,	d0
	bra.s	  .jmpoff2
rjmpoff	move.w	  _R(a2,d4.w),	d0
	addq.w		#1,	d0
jmpoff2	move.w	     d0,     _Y(a6)
	move.w _FACE(a6), _VDIR(a6)
	clr.b		   _VLJ(a6)
	;A3/(ani8v_t *) -> [5]
	lea	2/sjmp_ani,	a3
	adda.w	    #5*8,	a3
	move.l	      a3, _VAN8(a6)
	move.w	     #-1,   _FR(a6)
	move.w	 #MIDJMP,   _ST(a6)
	move.b	#DOWN,	  _VYDR(a6)
	clr.w		   _VWX(a6)
	jmp	    2/st_midjmp(pc)

	
	;(D5/adjacent > 0)
poljmp2	cmpi.w	       #+1,	d5
	bne.s	  .poljmp3
	;(+1) -> [#FALL]
polfall	jsr	    2/pole_fall(pc)
	bsr	  2/dc_rowbelow(pc)
	tst.w		  _FACE(a6)
	bgt.s	  .rfall
lfall	subi.w	       #29,	d0
	move.w		d0,  _X(a6)
	addi.w	       #14,  _X(a6)
	bra.s	  .bltfall
rfall	addi.w	       #21,	d0
	move.w		d0,  _X(a6)
	subq.w		#3,	d0
bltfall	bra	  .bltx


	; -> D5/(tloff_t)
poljmp3	cmp.w	  14(a2,d5.w),	d1
	blt	  .jmpoff
	cmp.w	  16(a2,d5.w),	d1
	bgt	  .jmpoff
	;cross to adjacent pole
polex	move.w	  _L(a2,d5.w),	d0
	move.w	     d0,     _X(a6)
	move.w	     d5,	d4
	move.w	     d4,   _DTL(a6)
	clr.w		  _HJOY(a6)
	;blit (cross/fall)
	;#116/SPR_XPOLES<.2> 32x56px
bltx	movea.l	  _SPRV(a6),	a4
	movea.l	   16*4(a4),	a1
	move.w		d2, _FR(a6)
bltx2	tst.w		  _FACE(a6)
	bgt.s	  .rbltx
	;LEFT:	@(+22,-2) [.0]
lbltx	addi.w	       #22,	d0
	clr.w			d2
	bra.s	  .bltx3
	;RIGHT:	@(-4, -2) [.1]
rbltx	subq.w		#4,	d0
	move.w		#1,	d2
bltx3	subq.w		#2,	d1
	jsr	     3/blit_spr(a5)
	;~(.face)
xface2	neg.w		  _FACE(a6)
	bra	  .endpole
	;  -> [dg_dispatch()]

	
	;climb UP pole (+8 .Y)
ascend	add.w	  _VJOY(a6),	d1
upole	cmp.w	  14(a2,d4.w),	d1
	bge.s	  .upole2
	;hit top of pole
hittop	move.w	  10(a2,d4.w),	d5
	ble.s	  .ublock
	;-> D5/(tloff_t) pole above
uabove	tst.w		  _FACE(a6)
	blt.s	  .labove
	;(facing RIGHT) path block?
rabove	tst.w	   8(a2,d5.w)
	bge.s	  .uadj
	bra.s	  .ublock
	;(LEFT)
labove	tst.w	   6(a2,d5.w)
	bge.s	  .uadj
	bra.s	  .ublock
	;(0|tloff_t) -> side passable
	;[move to tile above]
uadj	move.w	       d5,	d4
	move.w	       d4, _DTL(a6)
	bra.s	  .upole
	;(-1) -> side blocked
	;[stay at pole top]
ublock	move.w	  14(a2,d4.w),	d1
	bra	  .bltpole
	;(every 8 fr.s) snd #14/grunt
upole2	subq.w	      #1, _VSND(a6)
	bge.s	  .prevfr
clmbsnd	move.w		d0,   -(sp)
	move.w	#SND_CLIMB,	d0
	jsr	     1/play_snd(a5)
	move.w	       (sp)+,	d0
	move.w	     #8,  _VSND(a6)
	;wrap (--frame)?
prevfr	subq.w		#1,	d2
	bge	  .bltpole
uwrap	move.w		#2,	d2
	bra	  .bltpole


	;climb DOWN -> hit bottom?
descend	add.w	  _VJOY(a6),	d1
dpole	cmp.w	  16(a2,d4.w),	d1
	ble.s	  .dpole2
hitbott	move.w	  12(a2,d4.w),	d5
	beq.s	  .dfall
	blt.s	  .dblock
dbelow	tst.w		  _FACE(a6)
	blt.s	  .lbelow
rbelow	tst.w	   8(a2,d5.w)
	bge.s	  .dadj
	bra.s	  .dblock
lbelow	tst.w	   6(a2,d5.w)
	bge.s	  .dadj
	bra.s	  .dblock
dadj	move.w	       d5,	d4
	move.w	       d4, _DTL(a6)
	bra.s	  .dpole2
dblock	move.w	    _Y(a6),	d1
	bra	  .bltpole
	;(0) below -> [#FALL]
dfall	move.w	  16(a2,d4.w),	d1
	move.w		d1,  _Y(a6)
	bsr	  2/dc_rowbelow(pc)
	addq.w		#4,	d0
	move.w		d0,  _X(a6)
	jmp	      2/go_fall(pc)

dpole2	subq.w	      #1, _VSND(a6)
	bge.s	  .nextfr
	move.w		d0,   -(sp)
	move.w	#SND_CLIMB,	d0
	jsr	     1/play_snd(a5)
	move.w	       (sp)+,	d0
	move.w	      #8, _VSND(a6)
nextfr	addq.w		#1,	d2
	cmpi.w		#3,	d2
	blt	  .bltpole
dwrap	clr.w			d2


	;blit (dc @pole)[.012]
bltpole	movea.l	  _SPRV(a6),	a4
	tst.w		  _FACE(a6)
	blt.s	  .lblit
	;#115/SPR_RPOLE<.3> 32x48px
rblit	movea.l	   15*4(a4),	a1
	bra.s	  .bltpol2
	;#114/SPR_LPOLE<.3> 32x48px
lblit	movea.l	   14*4(a4),	a1
	addq.w		#5,	d0
bltpol2	move.w		d2, _FR(a6)
	move.w		d1,  _Y(a6)
	jsr	     3/blit_spr(a5)
endpole	jmp	  2/dg_dispatch(pc)
	rts
