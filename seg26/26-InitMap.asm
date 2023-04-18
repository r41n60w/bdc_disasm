; vi: syntax=asm68k

;{ 26/LoadMaze() }

;:03fc			26/proc402()
;(Maze)  Init map (from nodes)
;   arg	olda6(void *).L:  top A6
;	no ret
;	D7,A3,A4 preserved

;pascal void 26/InitMap(void *olda6);

tldef	equ	(-34)  ;(TileDef *).L
nodec1	equ	(-30)  ;    --nodec.W
;	UNUSED	 -28		  [.L]
;TileDef[18]  {
ldelim	equ	(-24)  ;       (pX).W
rdelim	equ	(-22)  ;       (pX).W
pathdlm	equ	(-20)  ;     (Path).W
param1	equ	(-18)  ;           .W
param2	equ	(-16)  ;	   .W
param3	equ	(-14)  ;           .W
param4	equ	(-12)  ;           .W
param5	equ	(-10)  ;           .W
param6	equ	 (-8)  ;           .W
;}
;	UNUSED	  -6		  .[6]
olda6	equ	(+8)	 ;(void *).L
rowc	equ	   (-78) ;     (short).W
rowh	equ	   (-76) ;    (Map **).L
tilec	equ	   (-72) ;     (short).W
tileh	equ	   (-70) ;(TileDef **).L
nodec	equ	   (-62) ;     (short).W
nodev	equ	   (-60) ;  (Node *[]).L


InitMap	link		a6,   #-34
	movem.l	  d7/a3-a4,  -(sp)
	;A4/(void *) top A6, frame ptr
	movea.l	  olda6(a6),	a4
	;map tile array
mktile	clr.l		      -(sp)
	push.l		 #(1778*18)
	jsr	   01/NewHandle(a5)
	pop.l		  tileh(a4)
mktile2	push.l		  tileh(a4)
	jsr	    01/HNoPurge(a5)
	;map row array
mkrow	clr.l		      -(sp)
	push.l		   #(501*4)
	jsr	   01/NewHandle(a5)
	pop.l		   rowh(a4)
	;HNoPurge(rowh);
mkrow2	push.l		   rowh(a4)
	jsr	    01/HNoPurge(a5)

	clr.w		 ldelim(a6)
	clr.w		 rdelim(a6)
	clr.w		pathdlm(a6)
	;set magic # = $ec78
magic	movea.l	rowh(a4),	a0
	movea.l	    (a0),	a0
	move.w	 #-5000, _MAGIC(a0)
;	movea.l	rowh(a4),	a0
;	movea.l	    (a0),	a0
magic2	clr.w	 	      2(a0)
	;leave first tile as DELIM
first	move.w	     #1,   rowc(a4)
	movea.l	tileh(a4),	a0
	movea.l	     (a0),	a0
	lea	   18(a0),	a0
	lea    ldelim(a6),	a1
	moveq	      #3,	d0
copy1st	move.l	     (a1)+,    (a0)+
	dbra	      d0, .copy1st
	move.w	     (a1),     (a0)
	;rowc = tilec = 1;
	move.w	      #1, tilec(a4)
	move.w	nodec(a4),	d0
	subq	      #1,	d0
	move.w	      d0,nodec1(a6)

	;for(D7=0; D7<nodec; ++D7)
	clr.w			d7
	bra	  .lastnod
nodelp	movea.l	nodev(a4),	a0
	move.w	      d7,	d0
	asl.w	      #2,	d0
	movea.l	    (a0,d0.w),	a3
	;A3/(Node *)
node2	movea.l	rowh(a4),	a0
	movea.l	    (a0),	a0
	move.w	rowc(a4),	d0
	subq	     #1,	d0
	asl.w	     #2,	d0
	move.w _ROWY(a0,d0.w),	d1
	cmp.w  _NODY(a3),	d1
	beq.s	  .node3

	;(Node->y != *rowh[rowc-1].y)
	;	  new map row[4]
newrow	movea.l	rowh(a4),	a0
	movea.l	    (a0),	a0
	move.w	rowc(a4),	d0
	asl.w	     #2,	d0
	*rowh[rowc].y = Node.y;
	move.w _NODY(a3), _ROWY(a0,d0.w)
newrow2	moveq	    #18,	d0
	muls.w tilec(a4),	d0
	movea.l	rowh(a4),	a0
	movea.l	    (a0),	a0
	move.w	rowc(a4),	d1
	asl.w	     #2,	d1
;*rowh[rowc].delim = tilec*sizeof(TileDef);
	move.w	     d0, _DELIM(a0,d1.w)
	;append delimiter tile[18]
delim	movea.l	tileh(a4),	a0
	movea.l	     (a0),	a0
	move.w	tilec(a4),	d0
	muls.w	     #18,	d0
	lea	     (a0,d0.w),	a0
	lea    ldelim(a6),	a1
	moveq	      #3,	d0
;memcpy(*tileh+tilec, &ldelim, sizeof(TileDef);
copydlm	move.l	     (a1)+,    (a0)+
	dbra	      d0, .copydlm
	move.w	     (a1),     (a0)
	;++rowc, ++tilec;
incrow	addq	      #1,  rowc(a4)
inctile	addq	      #1, tilec(a4)

	;init new map tile[18]
node3	movea.l	tileh(a4),	a0
	movea.l	     (a0),	a0
	move.w	tilec(a4),	d0
	muls.w       #18,	d0
	lea	     (a0,d0.w),	a0
;TileDef *tldef = &(*tileh[tilec]);
	move.l	      a0, tldef(a6)
	;tldef->l = Node->l;
ltile	move.w	   _L(a3),   _L(a0)
;	movea.l	tldef(a6),	a0
rtile	move.w	   _R(a3),   _R(a0)
;	movea.l	tldef(a6),	a0
pathtil	move.w _PATH(a3), _PATH(a0)
	;Node->row = (rowc-1)*sizeof(RowDef);
noderow	move.w	rowc(a4),	d0
	subq	     #1,	d0
	asl.w	     #2,	d0
	move.w	     d0,   _ROW(a3)
	;Node->tile = tilec++*sizeof(TileDef);
nodetil	moveq	    #18,	d0
	muls.w tilec(a4),	d0
	move.w	     d0,  _TILE(a3)
	addq	      #1, tilec(a4)
nextnod	addq	      #1,	d7
	bvs.s	  .endtile
lastnod	cmp.w	nodec1(a6),	d7
	ble	  .nodelp


	;append final tile {0}
endtile	movea.l	tileh(a4),	a0
	movea.l	     (a0),	a0
	move.w	tilec(a4),	d0
	muls.w	     #18,	d0
	lea	     (a0,d0.w),	a0
	lea    ldelim(a6),	a1
	moveq	      #3,	d0
copyend	move.l	     (a1)+,    (a0)+
	dbra	      d0, .copyend
	move.w	     (a1),     (a0)
	addq	      #1, tilec(a4)   
	;   "   final row
endrow	movea.l	 rowh(a4),	a0
	movea.l	     (a0),	a0
	move.w	 rowc(a4),	d0
	asl.w	      #2,	d0
	clr.w	       _ROWY(a0,d0.w)
endrow2	movea.l	 rowh(a4),	a0
	movea.l	     (a0),	a0
	move.w	 rowc(a4),	d0
	asl.w	      #2,	d0
	clr.w	      _DELIM(a0,d0.w)
	addq	      #1,  rowc(a4)
;SetHandleSize(rowh, ++rowc*sizeof(RowDef));
rowlen	push.l	    	   rowh(a4)
	move.w	 rowc(a4),	d0
	asl.w	      #2,	d0
	ext.l			d0
	push.l			d0
	jsr    01/SetHandleSize(a5)
;SetHandleSize(tileh, tilec*sizeof(TileDef));
tilelen	push.l		  tileh(a4)
	moveq	     #18,	d0
	muls.w	tilec(a4),	d0
	ext.l			d0
	push.l			d0
	jsr    01/SetHandleSize(a5)
endimap	movem.l	   (sp)+, d7/a3-a4
	unlk			a6
	pop.l		       (sp)
	rts	
