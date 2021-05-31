
; vi: syntax=asm68k

;48(A6).L  (tpz_t *) .vtpz

;:0000		13/proc348()
;#SWING (trapeze) state handler
; [<BASE>]
;	arg A6(dc.t *)
;	arg A2(map_t *), D4(tloff_t)

st_swing:
	tst.w	    6(a2,d4.w)
	bgt.s	loh_1
	;(0): trapeze #1
	movea.l	trapeze1(a5),	a3
	bra.s	loh_2
	;(1): trapeze #2
loh_1	movea.l	trapeze2(a5),	a3
	;(struct tpz_t *)
loh_2	move.l	      a3, _VTPZ(a6)
	move.w	#SWINGON,   _ST(a6)
	nop	
	;fall thru.. st_swingon(pc)


;:001c			[unnamed]
;:009c			13/data326[]
;#SWINGON (@trapeze) state handler

st_swingon:
	movea.l	  _VTPZ(a6),	a3
	move.w	      0(a3),	d4
	movea.l	      2(a3),	a4
	move.w	     -4(a4),	d0
	move.w	     -2(a4),	d1
swing2	move.w		d4,	d5
	asl.w		#2,	d5
	tst.w		  _FACE(a6)
	ble.s	  .lanim
	;(RIGHT) struct ani4z_t[22]
ranim	lea	13/rswing_ani,	a4
	bra.s	  .swing3
	;(LEFT)
lanim	lea	13/lswing_ani,	a4

swing3	adda.w		d5,	a4
	clr.w		d5
	;get pos .X offset, .Y "
tpzdx	move.b	       (a4)+,	d5
	add.w		d5,	d0
	subi.w	       #13,	d0
tpzdy	move.b	       (a4)+,	d5
	add.w		d5,	d1
tpzfr	move.b	       (a4)+,	d2
	ext.w			d2
swing4	movea.l	 currpg(a5),	a0
	tst.w		  _FACE(a6)
	ble.s	  .lswing
	;#122/SPR_RSWING<.6> 48x56px
rswing	btst.b	    #JMP, _JOYF(a6)
	bne	  .tpzjmp
	movea.l	  _SPRV(a6),	a4
	movea.l	   22*4(a4),	a1
	bra	  .blswing
	;#121/SPR_LSWING<.6>
lswing	btst.b	    #JMP, _JOYF(a6)
	bne	  .tpzjmp
	movea.l	  _SPRV(a6),	a4
	movea.l	   21*4(a4),	a1
	bra	  .blswing
	;blit dc (mid-swing)
blswing	move.w		d0,  _X(a6)
	move.w		d1,  _Y(a6)
	jsr	     3/blit_spr(a5)
	jmp	  2/dg_dispatch(a5)
;:009c			13/data326[]
	rts

	;jump off trapeze -> [#MIDJMP]
tpzjmp	movea.l	    2(a3),	a4
	;D3/(tloff_t) 2[PL_TPZE]
disabl1	move.w	   -8(a4),	d3
	move.w	_L(a2,d3.w),	d7
	subq.w	      #1,	d7
	move.w	      d7, _R(a2,d3.w)
disabl2	move.w	   -6(a4),	d3
	move.w	_L(a2,d3.w),	d7
	subq.w	      #1,	d7
	move.w	      d7, _R(a2,d3.w)
tpzjmp2	bclr.b	    #JMP, _JOYF(a6)
	addi.w	     #30,	d1
	move.w	      d1,    _Y(a6)
	move.w	_FACE(a6),_VDIR(a6)
	clr.b	 	   _VLJ(a6)
	;(ani8v_t) 2/sjmp_ani[3]
sjmp	jsr	      2/an_sjmp(a5)
	adda.w	    #3*8,	a3
	move.l	      a3, _VAN8(a6)
tpzjmp3	move.w	     #-1,   _FR(a6)
	move.w	 #MIDJMP,   _ST(a6)
	move.b	   #DOWN, _VYDR(a6)
	addq.w	      #4,  _DRW(a6)
	clr.w		   _VWX(a6)
	jmp	    2/st_midjmp(a5)


;struct ani4z_t[22]	13/data327:0100
lswing_ani:
	dc.b	   0,  +30,   1,   0
	dc.b	  +1,  +37,   1,   0
	dc.b	 +10,  +47,   1,   0
	dc.b	 +12,  +78,   2,   0
	dc.b	 +24,  +85,   2,   0
	dc.b	 +44,  +92,   2,   0
	dc.b	 +62,  +92,   2,   0
	dc.b	 +75,  +85,   3,   0
	dc.b	 +92,  +78,   3,   0
	dc.b	+104,  +55,   4,   0
	dc.b	+112,  +46,   4,   0
	dc.b	+116,  +38,   4,   0
	dc.b	+115,  +35,   5,   0
	dc.b	+110,  +44,   5,   0
	dc.b	 +96,  +56,   5,   0
	dc.b	 +78,  +63,   5,   0
	dc.b	 +64,  +70,   5,   0
	dc.b	 +57,  +73,   1,   0
	dc.b	 +39,  +66,   1,   0
	dc.b	 +23,  +59,   1,   0
	dc.b	 +11,  +49,   1,   0
	dc.b	  +5,  +38,   1,   0

;struct ani4z_t[22]	13/data328:0158
rswing_ani:	
	dc.b	  +8,  +30,   1,   0
	dc.b	 +12,  +37,   1,   0
	dc.b	 +24,  +46,   1,   0
	dc.b	 +39,  +78,   2,   0
	dc.b	 +60,  +85,   2,   0
	dc.b	 +74,  +92,   2,   0
	dc.b	 +94,  +92,   2,   0
	dc.b	+116,  +85,   3,   0
	dc.b	+132,  +78,   3,   0
	dc.b	+142,  +54,   4,   0
	dc.b	+150,  +46,   4,   0
	dc.b	+154,  +38,   4,   0
	dc.b	+148,  +35,   5,   0
	dc.b	+140,  +44,   5,   0
	dc.b	+130,  +56,   5,   0
	dc.b	+113,  +63,   5,   0
	dc.b	 +96,  +70,   5,   0
	dc.b	 +64,  +73,   1,   0
	dc.b	 +46,  +66,   1,   0
	dc.b	 +30,  +59,   1,   0
;:01a8		13/data329[8]
	dc.b	 +18,  +47,   1,   0
	dc.b	 +10,  +38,   1,   0
