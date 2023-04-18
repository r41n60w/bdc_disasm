; vi: syntax=asm68k

;{ 26/LoadMaze() }   

;:00c6			26/proc399()
;(Maze)  Load node table (MZDF via MBLKs)
;   arg	olda6(void *).L:  top A6
;	no ret
;	D4-D7,A3,A4 preserved

;pascal void	26/LoadNodes(void *olda6);

;pascal Handle	_GetResource(ResType theType,
;			     short   ID);

ndlen1	equ	(-918)  ; (short).W  --.len
mblkp	equ	(-916)  ;(MBLK *).L
mblkstr	equ	(-912)  ;(Str255)    "sqdata"
levw1	equ	(-656)  ; (short).W  --.levw
levh1	equ	(-654)  ; (short).W  --.levh
errmsg	equ	(-652)  ;(Str255)    MBNF:nn
sqxpos	equ	(-396)  ;    (pX).W  X*128-8
nodep	equ	(-394)  ;(Node *).L   new "
mblkv	equ	(-390)	;(MBLK **[95])
sqoff	equ	 (-10)  ; (short).W  [,4095]
;	UNUSED    (-8)           .W 
sqdata	equ	  (-6)  ;    (ID).W mblk[,92]
;	UNUSED	  (-4)		 .L

olda6	equ	(+8)	  ;LoadMaze(A6)::
 mzdf_h	equ        (-66)  ;MZDF**.L
 nodec	equ	   (-62)  ; short.W
 nodev	equ	   (-60)  ;Node**.L
 slab	equ	   (-56)  ; short.W
 alloc	equ	   (-54)  ; short.W

;MZDF resource
_LEVW	equ	+0	;(short).W  [0,127]
_LEVH	equ	+2	;(short).W  [0,31]
_TBL	equ	+4	;char[.levh][.levw]
;..
;MBLK resource
_LEN	equ	+0	;(short).W # of nodes
;		+2  		.B      ALIGN
_PBLK	equ	+3	; (char).B 2000[0,66]
_DATA	equ	+4	;Node[.len] 
;..
;struct Node[38]  {
_GRID	equ	+0  ;.W   [yyyyyxxx xxxxnnnn]
_ROW	equ	+2  ; Row.W
_TILE	equ	+4  ;Tile.W
_Y	equ	+6  ;  pY.W
_L	equ	+8  ;  pX.W
_R	equ    +10  ;  pX.W
_ELEM	equ    +12 ;short.W
_ARG	equ    +14 ;NodeArg[6]
;..

LoadNodes:
	link	       a6,   #-918
	movem.l	 d4-d7/a3-a4, -(sp)
initgen	push.l		  olda6(a6)
	jsr	     26/InitGen(pc) ;p396
	;memset(mblkv, 0, 94*4);
	clr.w			d7
	bra.s	  .lasth
inittab	move.w		d7,	d0
	asl.w		#2,	d0
	lea	  mblkv(a6),	a0
	moveq		#0,	d1
	move.l		d1, (a0,d0.w)
nexth	addq		#1,	d7
lasth	moveq	       #93,	d0
	cmp.w		d7,	d0
	bge	  .inittab
	;A3/(MZDF *) grid def table
nodes2	movea.l	 olda6(a6),	a0
	clr.w		  nodec(a0)
	movea.l	 olda6(a6),	a1
	movea.l	mzdf_h(a1),	a0
	movea.l	      (a0),	a3
	move.w	 _LEVH(a3),	d0
	subq		#1,	d0
	move.w	      d0, levh1(a6)


	;for(D4=0; D4<.height; ++D4)
	clr.w			d4
	bra	  .lasty
ygridlp	move.w	  _LEVW(a3),	d0
	subq		#1,	d0
	move.w	      d0, levw1(a6)


	;for(D5=0; D5<.width; ++D5)
	clr.w			d5
	bra	  .lastx
	;MZDF sq offset = Y*width+X
xgridlp	move.w	      d4,	d0
	muls.w	_LEVW(a3),	d0
	add.w	      d5,	d0
	move.w	      d0, sqoff(a6)
	;look up square data/MBLK id
getdata	clr.w			d1
	move.b   _TBL(a3,d0.w),	d1
	move.w	     d1, sqdata(a6)
	;D6/MBLK already loaded?
ismblk	move.w	 sqdata(a6),	d0
	asl.w		#2,	d0
	lea	  mblkv(a6),	a0
	move.l	    (a0,d0.w),	d6
	bne.s	  .gotmblk
	;(NULL/empty)  load [MBLK:#id]
nomblk	clr.l		      -(sp)
	push.l		   26/MBLK  ;d455
	push.w		 sqdata(a6)
	_GetResource		    ;a9a0
	pop.l			d6
	;save handle/D6 -> mblkv[95]
saveh	move.w	 sqdata(a6),	d0
	asl.w		#2,	d0
	lea	  mblkv(a6),	a0
	move.l		d6, (a0,d0.w)
	;MoveHHi(MBLK **); HLock();
himemh	push.l			d6
	jsr	     01/MoveHHi(a5);p25
lockh	push.l			d6
	jsr	       01/HLock(a5)
	;valid handle?
	tst.l			d6
	bne.s	  .gotmblk
	;Maze Block Not Found error
mbnferr	pea		26/mbnfstr
	;sprintf("%d", MBLK id #);
	pea		mblkstr(a6)
	push.w		 sqdata(a6)
	jsr	      01/proc89(a5)
	;errmsg = strcat("MBNF:", mblkstr)
mbnf2	pea		 errmsg(a6)
	push.w			#2
	jsr	      01/proc69(a5)
mbnf3	pea		 errmsg(a6)
	jsr	      01/proc85(a5)
	;[crash "MBNF:nn"]


gotmblk	movea.l	      d6,	a0
	movea.l	     (a0),	a0
	move.l	      a0, mblkp(a6)
	;sq PBLK # -> overwrite MZDF tbl
pblk2sq	move.w	sqoff(a6),	d0
	movea.l	mblkp(a6),	a0
	move.b	_PBLK(a0), _TBL(a3,d0.w)
	;get # of nodes = MBLK.len-1
;	movea.l	mblkp(a6),	a0
	move.w	 _LEN(a0),	d0
	subq	      #1,	d0
	move.w	      d0,ndlen1(a6)
	;D4[D5]    grid.Y[.X]
	;D7	   node #

	;for((D7=0; D7<.len; ++D7))
	bra	  .lastnod
	clr.w			d7
	;allocate a (Node *)
newnode	clr.l		      -(sp)
	push.l		  olda6(a6)
	jsr	      26/MkNode(pc);397
	pop.l		  nodep(a6)
	;append node to (sort) array
appendv	movea.l	 olda6(a6),	a1
	movea.l	 nodev(a1),	a0
;	movea.l	 olda6(a6),	a1
	move.w	 nodec(a1),	d0
	asl.w	       #2,	d0
	move.l	 nodep(a6), (a0,d0.w)
	;copy MBLK.node[i] -> node
	move.l	  mblkp(a6),	a0
	move.w		d7,	d0
	muls	       #38,	d0
	movea.l	  nodep(a6),	a1
	lea    _DATA(a0,d0.w),	a0
	moveq		#8,	d0
copynod	move.l	       (a0)+,  (a1)+
	dbra		d0, .copynod
	move.w	       (a0),   (a1)
	movea.l	nodep(a6),	a4
	;A4/(Node *)
	;pack grid.X -> node.XXXXX___________
xpack	move.w	      d4,	d0
	andi.w #%00011111,	d0
	lsl.w	      #3,	d0
	andi.b #%00000111,_GRID(a4)
	or.b	      d0, _GRID(a4)
	;pack grid.Y -> node._____YYYYYYY____
ypack	move.w	      d5,	d0
	andi.w #%01111111,	d0
	lsl.w	      #4,	d0
	andi.w #%1111100000001111,_GRID(a4)
	or.w	      d0,	  _GRID(a4)
	;node.l|.r| += (X.grid*128-8);
lxabs	move.w	      d5,	d0
	asl.w	      #7,	d0
	subq	      #8,	d0
	move.w	      d0,sqxpos(a6)
	add.w	   _L(a4),	d0
	move.w	      d0,    _L(a4)
rxabs	move.w sqxpos(a6),	d0
	add.w	   _R(a4),	d0
	move.w	      d0,    _R(a4)
	;node.y += (Y.grid*120-40);
pyabs	move.w		d4,	d0
	muls	      #120,	d0
	add.w	     _Y(a4),	d0
	sub.w	       #40,	d0
	move.w		d0,  _Y(a4)
	movea.l	 olda6(a6),	a0
	addq	      #1, nodec(a0)


nextnod	addq	      #1,	d7
	bvs.s	  .nextx
lastnod	cmp.w	  ndlen1(a6),	d7
	ble	  .newnode

nextx	addq		#1,	d5
	bvs.s	  .nexty
lastx	cmp.w	  levw1(a6),	d5
	ble	  .xgridlp

nexty	addq		#1,	d4
	bvs.s	  .nodes3
lasty	cmp.w	  levh1(a6),	d4
	ble	  .ygridlp


nodes3	clr.w			d7
	bra.s	  .lqg_16
lqg_14	move.w		d7,	d0
	asl.w		#2,	d0
	lea	  mblkv(a6),	a0
	tst.l		    (a0,d0.w)
	beq.s	  .lqg_15
	;slot full, unlock handle
	move.w		d7,	d0
	asl.w		#2,	d0
	lea	  mblkv(a6),	a0
	push.l		    (a0,d0.w)
	jsr	     01/HUnLock(a5)
lqg_15	addq		#1,	d7
lqg_16	moveq	       #93,	d0
	cmp.w		d7,	d0
	bge	  .lqg_14

endnode	movem.l	(sp)+, d4-d7/a3-a4
	unlk			a6
	pop.l		       (sp)
	rts	


mbnfstr	dc.b	5,'MBNF:' ;d454 (Str255):02ae
MBLK	dc.b	'MBLK'	  ;d455(ResType):02b4
