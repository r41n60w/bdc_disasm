; vi: syntax=asm68k

;{ 26/LinkNodes() }

;:05ca                  26/proc403()
;(Maze)  Find (adjacent) node 
;   arg	grid(Grid).W:  curr grid ref
;   arg	  sq(char).B:  relative/adjacent sq
;   arg	idx(short).W:  node index (lowest 4 bits) 
;   arg	calla6(void *).L:  caller A6
;   ret(short).W:      node #
;	D5-D7,A4 preserved

;pascal short 26/FindNode(Grid grid,
;	char sq, short idx, void *calla6);

vqk_1     VEQU  -784
vqk_2     VEQU  -528
vqk_3     VEQU  -272
grid0	equ	(-16)  ;  (Grid).W  orig.

calla6	equ	 (+8)  ;(void *).L
 olda6	equ	   (+8)  ; "
 nodec	equ        (-62) ;  (short).W  
 nodev	equ        (-60) ;(Node*)[].L
idx	equ	(+12)  ; (short).W
sq	equ	(+14)  ;  (char).B
grid	equ	(+16)  ;(ushort).W
retval	equ	(+18)  ; (short).W


FindNode:
	link		a6,  #-784
	movem.l	  d5-d7/a4,   -(sp)
	movea.l	calla6(a6),	a4
	movea.l	 olda6(a4),	a4
	move.w	 grid(a6),grid0(a6)
	;replace grid index [lo nibble]
	move.w	 idx(a6),	d0
	ext.l			d0
	divs	       #16,	d0
	swap			d0
	tst.w			d0
	lea	 grid(a6),	a0
	andi.w	    #$000f,	d0
	andi.w	    #$fff0,    (a0)
	or.w		d0,    (a0)
find2	move.b	     sq(a6),	d0
	ext.w			d0
	bmi	  .find3
	cmpi.w		#3,	d0
	bgt	  .find3
	add.w		d0,	d0
	move.w	data456(d0.w),	d0
	jmp   data456-2(d0.w)
	;d456[4]:0618
data456	jump	  .above
	jump	  .below
	jump	  .left
	jump	  .right


	;(00)  .U/square above
above	move.b	 grid(a6),	d0
	lsr.w		#3,	d0
	andi.w	#%00011111,	d0
	subq		#1,	d0
above2	lea	 grid(a6),	a0
	andi.w	#%00011111,	d0
	lsl.w		#3,	d0
	andi.b	#%00000111,    (a0)
	or.b		d0,    (a0)
	bra.s	  .find3


	;(01)  .D/square below
below	move.b	 grid(a6),	d0
	lsr.w		#3,	d0
	andi.w	#%00011111,	d0
	addq		#1,	d0
below2	lea	 grid(a6),	a0
	andi.w	#%00011111,	d0
	lsl.w		#3,	d0
	andi.b	#%00000111,    (a0)
	or.b		d0,    (a0)
	bra.s	  .find3


	;(02)  .L/square to left
left	move.w	 grid(a6),	d0
	lsr.w		#4,	d0
	andi.w	#%01111111,	d0
	subq		#1,	d0
left2	lea	 grid(a6),	a0
	andi.w	#%01111111,	d0
	lsl.w		#4,	d0
	andi.w	    #$f80f,    (a0)
	or.w		d0,    (a0)
	bra.s	  .find3


	;(03)  .R/square to right
right	move.w	 grid(a6),	d0
	lsr.w		#4,	d0
	andi.w	#%01111111,	d0
	addq		#1,	d0
right2	lea	   grid(a6),	a0
	andi.w	#%01111111,	d0
	lsl.w		#4,	d0
	andi.w	    #$f80f,    (a0)
	or.w		d0,    (a0)
	;..

	;(04)  ./this square
find3	clr.w			d6
	move.w	  nodec(a4),	d5

lqk_6	move.w		d5,	d0
	sub.w		d6,	d0
	ext.l			d0
	divs		#2,	d0
	bpl.s	  .lqk_7
	neg.w			d0
lqk_7	move.w		d0,	d7
	add.w		d6,	d7
	movea.l	  nodev(a4),	a0
	move.w		d7,	d0
	asl.w		#2,	d0
	movea.l	    (a0,d0.w),	a0
	move.w	   grid(a6),	d0
	cmp.w	  _GRID(a0),	d0
	bge.s	  .lqk_8
	move.w		d7,	d5
	bra.s	  .lqk_10

lqk_8	movea.l	  nodev(a4),	a0
	move.w		d7,	d0
	asl.w		#2,	d0
	movea.l	    (a0,d0.w),	a0
	move.w	   grid(a6),	d0
	cmp.w	  _GRID(a0),	d0
	ble.s	  .lqk_9
	;nodev[D7]->	
	move.w		d7,	d6
	bra.s	  .lqk_10

	;found, ret node index
lqk_9	move.w	     d7, retval(a6)
	bra.s	  .endfind


lqk_10	move.w		d6,	d0
	addq		#1,	d0
	cmp.w		d0,	d5
	bne	  .lqk_6

	movea.l	  nodev(a4),	a0
	move.w		d6,	d0
	asl.w		#2,	d0
	movea.l	    (a0,d0.w),	a0
	move.w	 grid(a6),	d0
	cmp.w	       (a0),	d0
	bne.s	  .errlbnf

	move.w	     d7, retval(a6)
	bra.s	  .endfind

	;Level Block Not Found error
errlbnf	pea	26/data458 ;LBNF:'
	pea		  vqk_2(a6)
	push.w		   grid(a6)
	jsr	      01/proc89(a5)
	pea	26/data457 ;' from '
	pea		  vqk_1(a6)
	push.w		  grid0(a6)
	jsr	      01/proc89(a5)
	pea		  vqk_3(a6)
	push.w			#4
	jsr	      01/proc69(a5)
	pea		  vqk_3(a6)
	jsr	      01/proc85(a5)

endfind	movem.l	   (sp)+, d5-d7/a4
	unlk			a6
	pop.l			a0
	adda.w	   #10,		sp
	jmp		       (a0)


	;d457(Str255):0748
	dc.b	6, " from "
	;d458(Str255):0750
	dc.b	5, "LBNF:"
