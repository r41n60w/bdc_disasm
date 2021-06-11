; vi: syntax=asm68k

;0.w	(jtoff_t)	.mode ;{DEFAULT,POLESK}
;2.w	(xpos_t)	.skx  ;snake.X
;4.w	(ypos_t)	.sky  ;  "  .Y

;6.w	(xoff_t)	.skdx ;snake veloc.X
;8.w	(xpos_t)	.lsk  ;L bound
;10.w	(xpos_t)	.rsk  ;R bound
;12.w	(xoff_t)	.sku  ;U-turn range

;14.w	(xpos_t)	.polx ;pole.X
;16.w	(ypos_t)	.dpol ;pole bottom.Y
;18.w	(ypos_t)	.polg ;pole ground.Y

;20.w	(ivl_t)		.imin ;min ivl 
;22.w	(uint16_t)	.iand ;ivl mask
;24.w	(int16_t)	.nsk  ;# snakes left

;26.w	(xpos_t)	.lpol ;leftmost pole
;28.w	(xpos_t)	.mpol ;middle   "
;30.w	(xpos_t)	.rpol ;right    "

;32.w	(ivl_t)		.skc  ;snake ivl

;{ 6/proc308   11/proc340   25/proc394 }

;:0934			3/proc157()
;Create snake hole (generator)
; -> cb_snakeg()
;	arg A0(skg_t *): hole args

mk_snakeg:
	movea.l		a0,	a2
	moveq	    #(34+8),	d0
	_NewPtr		  , CLEAR
	lea	 3/cb_snakeg,	a1
	move.l		a1, _CB(a0)
	;copy snakeg_t[30] -> .data
	moveq	       #15,	d0
	movea.l		a0,	a1
	addq.w		#8,	a1
copyskg	move.w	       (a2)+,  (a1)+
	dbra		d0, .copyskg
	;generate interval [min,max]
	jsr	       3/random(pc)
	and.w	8+_IAND(a0),	d0
	add.w	8+_IMIN(a0),	d0
	move.w	     d0, 8+_SKC(a0)
	move.l	qobj(a5), _NEXT(a0)
	move.l	     a0,   qobj(a5)
	rts	


;:0968			3/data118[]
;Snake hole object function
;	arg A6(skg_t *)

cb_snakeg:
	tst.w		   _NSK(a6)
	ble	  .endskg
	;(# snakes < max)
	subq.w	       #1, _SKC(a6)
	bgt	  .endskg
	;(--skc) timeout -> generate
gensk	subq.w	       #1, _NSK(a6)
	movea.l	       a6,	a0
	movea.l	       a6, 	a1
	jsr	       3/random(pc)
	move.w	       d0,	d7
	move.w	 _MODE(a6),	d3
	jmp    snakegjt(d3.w)
snakegjt:
	jmp	  .default	;:0994
	jmp	  .polesk	;:0a32

	
	;generate (on ground)
default	cmpi.w	 #ELAB, curr_rm(a5)
	beq	  .labyr
	cmpi.w	 #WLAB, curr_rm(a5)
	beq	  .labyr
	;<DUNJ>|<CATC>|<BKCH>
nolabyr	bsr	     3/mk_snake(pc)
	bra	  .genivl
	;<[WE]LAB>	A4/(pg_t *)
labyr	movea.l	 currpg(a5),	a4
	move.w	  _WINY(a4),	d3
	cmp.w	   _SKY(a6),	d3
	bgt	  .nogen
	addi.w	      #292,	d3
	cmp.w	   _SKY(a6),	d3
	blt	  .nogen
	;onscreen
labyr2	move.w	  _WINX(a4),	d2
	movea.l	  dcobj(a5),	a3
	tst.w		8+_FACE(a3)
	bgt.s	  .rlabyr
	;facing LEFT
llabyr	cmp.w	   _LSK(a6),	d2
	blt	  .nogen
	addi.w	      #512,	d2
	cmp.w	   _RSK(a6),	d2
	bgt	  .nogen
	;within range, spawn off @L.edge
ledge	move.w	     #+6, _SKDX(a6)
	subi.w	  #(512+32),	d2
	move.w	      d2,  _SKX(a6)
	bsr	     3/mk_snake(pc)
	bra	  .genivl
	;facing RIGHT
rlabyr	addi.w	      #512,	d2
	cmp.w	   _RSK(a6),	d2
	bgt	  .nogen
	subi.w	      #512,	d2
	cmp.w	   _LSK(a6),	d2
	blt	  .nogen
	;spawn @R.edge (going left)
redge	move.w	     #-6, _SKDX(a6)
	addi.w	    #512,	d2
	move.w	      d2,  _SKX(a6)
	bsr	     3/mk_snake(pc)
	bra	  .genivl


	;generate (on pole) <[WE]LAB>
polesk	movea.l	 currpg(a5),	a4
	move.w	  _WINX(a4),	d2
	cmp.w	  _RPOL(a6),	d2
	bgt.s	  .nogen
	addi.w	      #512,	d2
	cmp.w	  _LPOL(a6),	d2
	blt.s	  .nogen
polesk2	move.w	  _WINY(a4),	d3
	cmp.w	  _DPOL(a6),	d3
	bgt.s	  .nogen
	addi.w	      #292,	d3
	cmp.w	   _SKY(a6),	d3
	bge.s	  .lpole


	;(not generated)
nogen	addq.w	       #1, _NSK(a6)
	bra	  .genivl


	;at least 1 pole onscreen
lpole	cmpi.w	    #$5555,	d7
	bhi.s	  .midpole
	;(1/3 chance) each pole
	move.w _LPOL(a6), _POLX(a6)
	bra.s	  .polesk3
midpole	cmpi.w	    #$aaaa,	d7
	bhi.s	  .rpole
	move.w _MPOL(a6), _POLX(a6)
	bra.s	  .polesk3
rpole	move.w _RPOL(a6), _POLX(a6)
	;D1/(ypos_t) screen top
polesk3	move.w	  _WINY(a4),	d1
	move.w	   _SKY(a6),  -(sp)
	move.w	  _MODE(a6),  -(sp)
	move.w	   _SKX(a6),  -(sp)
	;(@ pole top)? [hole]
poletop	cmp.w	   _SKY(a6),	d1
	ble.s	  .genhole
	;(on pole) climb UP? [above]
ascend	movea.l	  dcobj(a5),	a3
	tst.w		8+_VJOY(a3)
	ble.s	  .upole
	;climb DOWN: [below], if room 
descend	addi.w	      #330,	d1
	cmp.w	  _DPOL(a6),	d1
	blt.s	  .dpole
	;pole btm visible -> [above]
polebtm	subi.w	      #330,	d1
	bra.s	  .upole
	;spawn below screen
dpole	move.w	      d1,  _SKY(a6)
	move.w	_POLX(a6), _SKX(a6)
	addq.w	      #7,  _SKX(a6)
	move.w	    #3*4, _MODE(a0)
	;spawn above screen
upole	subi.w	     #28,	d1
	move.w	      d1,  _SKY(a6)
	move.w	_POLX(a6), _SKX(a6)
	addq.w	      #7,  _SKX(a6)
	move.w	    #3*4, _MODE(a0)
	;spawn from hole
genhole	bsr	     3/mk_snake(pc)
	;restore normal args
	move.w	   (sp)+,  _SKX(a6)
	move.w	   (sp)+, _MODE(a6)
	move.w	   (sp)+,  _SKY(a6)
	bra	  .genivl


	;new (random) interval
genivl	and.w	 _IAND(a6),	d7
	add.w	 _IMIN(a6),	d7
	move.w	       d7, _SKC(a6)
endskg	rts
