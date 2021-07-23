; vi: syntax=asm68k

;0(A6).w  (xpos_t)  .lbnd  L bound
;2(A6).w  (ypos_t)  .acy  spark.Y
;4(A6).w  (xpos_t)  .rbnd  R bound
;6(A6).w  (ivl_t)   .frq   freq
;8(A6).w  (ivl_t)   .acc  initial
;10(A6).w (xpos_t)  .lac  spark.L
;12(A6).w (xpos_t)  .rac    "  .R
;14(A6).w (jtoff_t) .acst  state

;16(A6)[] (struct un_t) .ac  [24]
;   ..



;:3568		3/proc191()
;Create a spark  <WTOP>,<COMP>
;  arg D0(xpos_t):  left bound
;  arg D2(xpos_t): right   "
;  arg D1(ypos_t):  spark.Y
;  arg D3(ivl_t):  frequency
;  arg D4(ivl_t):  init interval

mk_spark:
	move.w		d0,	d6
	move.w		d1,	d7
	moveq	       #48,	d0
	lea	3/cb_spark,	a1
	move.l	    a1,     _CB(a0)
	move.w	    d6, 8+_LBND(a0)
	move.w	    d7,  8+_ACY(a0)
	subi.w	   #32,		d2
	move.w	    d2, 8+_RTML(a0)
	move.w	    d3,  8+_FRQ(a0)
	move.w	    d4,  8+_ACC(a0)
	;init state [#
	clr		8+_ACST(a0)
	move.w	8+_ACY(a0), 24+_UY(a0)
	move.w	    #3, 24+_UID(a0)
	move.w		#1,  38(a0)
	move.w		#3,  44(a0)
	move.l	qobj(a5), _NEXT(a0)
	move.l	     a0,   qobj(a5)
	rts	


;:35b6		3/data151[]
;Spark object func
;  arg A6(spark_t *):  obj

cb_spark:
	subq.w	       #1, _ACC(a6)
	move.w	 _ACST(a6),	d3
	jmp		sparkjt(d3.w)

sparkjt:		      ;:35c2
	jmp	  .nospark  ;+0:35ce
	jmp	  .lspark   ;+4:362c
	jmp	  .rspark   ;+4:364a


;:35ce	[+0/NOSPARK]
nospark	tst.w		   _ACC(a6)
	bgt	  .endspk	
	;(timeout): generate
genac	move.w	 _FRQ(a6), _ACC(a6)
	move.w	_LTML(a6), _LAC(a6)
	move.w	_LTML(a6), _RAC(a6)
	subq.w	      #1,  _RAC(a6)
	move.w	 #LSPARK, _ACST(a6)
	;add to enemy queue
qadd	movem.l	   a0-a1,     -(sp)
	lea    qenemy(a5),	a0
	lea	  _AC(a6),	a1
	move.l	      a0,  _UPV(a1)
	move.l	 _UNX(a0), _UNX(a1)
	move.l	      a1,  _UNX(a0)
	movea.l	 _UNX(a1),	a0
	cmpa.w	   #NULL,	a0
	beq.s	  .genac2
	move.l	      a1,  _UPV(a0)
genac2	movem.l	  (sp)+,     a0-a1
	move.w	10(a6), _AC+_UX(a6)
	clr.w		 16+_UW(a6)
	;#44/"zzzz" sound
sprksnd	move.w		d0,   -(sp)
	move.w	#SND_SPARK,	d0
	jsr	     1/play_snd(a5)
	move.w	       (sp)+,	d0
	bra	  .endspk	
	; -> [#LSPARK]


;:362c	[+4/LSPARK]
lspark	addi.w	     #32,  _RAC(a6)
	move.w	_RTML(a6),	d0
	cmp.w	 _RAC(a6),	d0
	bgt.s	  .bltac
	;(hit R bound) -> [RSPARK]
acfull	move.w	 #RSPARK, _ACST(a6)
	move.w	_RTML(a6), _RAC(a6)
	bra.s	  .bltac


;:364a	[+8/RSPARK]
rspark	addi.w	       #32, _LAC(a6)
	move.w	   _RTML(a6),	d0
	cmp.w	  _LAC(a6),	d0
	bgt.s	  .bltac
	;(hit terminal) -> [NOSPARK]
acgone	clr.w		  _ACST(a6)
	movem.l	    a0-a1,    -(sp)
	;unlink (struct un_t) from q
unlkac	lea	   _AC(a6),	a1
	movea.l	  _UPV(a1),	a0
	movea.l	  _UNX(a1),	a1
	move.l	       a1, _UNX(a0)
	cmpa.w	    #NULL,	a1
	beq.s	  .acgone2
	move.l	       a0, _UPV(a1)
acgone2	movem.l	      (sp)+, a0-a1
	nop
	;[fall thru]

	;blit #247/SPR_SPARK.1 32x3px
bltac	move.w	   _LAC(a6),	d0
	move.w	   _ACY(a6),	d1
	clr.w			d2
	movea.l	147*4+spr(a5),	a1
	movea.l	   currpg(a5),	a0
	;blit [.L,.R]
blitlp	cmp.w	   _RAC(a6),	d0
	bge.s	  .bltac2
	jsr	     3/blit_spr(pc)
	addi.w	       #32,	d0
	bra.s	  .blitlp

	;blit right edge
bltac2	move.w	   _RAC(a6),	d0
	jsr	     3/blit_spr(pc)
	;compute (new) spark width
uwidth	move.w	   _LAC(a6),	d0
	move.w	    d0, _AC+_UX(a6)
	sub.w	   _RAC(a6),	d0
	neg.w			d0
	addi.w	   #33,		d0
	move.w	    d0, _AC+_UW(a6)
	nop
endspk	rts			;:36c0
