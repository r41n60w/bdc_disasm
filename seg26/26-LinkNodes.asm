; vi: syntax=asm68k

;{ 26/LoadMaze() }

;:0756			26/proc404()
;(Maze)
;   arg	olda6(void *).L:  top A6
;	no ret
;	D4-D7,A2-A4 preserved

;pascal void 26/LinkNodes(void *olda6);

powg	equ	(-28)  ;   (PowG *).L
nodearg	equ	(-24)  ;(NodeArg *).L
node1c	equ	(-20)  ;    --nodec.W
node2c	equ	(-18)  ;    --  "  .W
row1c	equ	(-16)  ;     --rowc.W
;	[UNUSED  -14]		  [.L]
tilelen	equ	(-10)  ;   18*tilec.W

olda6	equ	(+8)  ;(void *).L
 powv	equ	   (-82) ; (PowG *).L
 rowc	equ        (-78) ;  (short).W
 rowh	equ        (-76) ; (Map **).L
 tilec	equ        (-72) ;  (short).W 
 tileh	equ        (-70) ;TileDef**.L
 nodec	equ        (-62) ;  (short).W  
 nodev	equ        (-60) ;(Node*)[].L

OPDATA	equ	0
OPTILE	equ	1
OPROW	equ	2
OPY	equ	3
OPX	equ	4
OPENTRY	equ	5
OPEXIT	equ	6
OPPOW	equ	7
OPMZ	equ	8


LinkNodes:
	link	      a6,     #-28
	movem.l	d4-d7/a2-a4,  -(sp)
	movea.l	olda6(a6),	a4
	;D4.W = rowc*sizeof(RowDef);
	move.w	 rowc(a4),	d4
	asl.w	      #2,	d4
link2	move.w	 rowc(a4),	d0
	subq	      #1,	d0
	move.w	      d0, row1c(a6)
	;for(r=0; r<rowc; ++r)
	clr.w			d7
	bra.s	  .lastrow
linkrow	movea.l	   rowh(a4),	a0
	movea.l	       (a0),	a0
	move.w		d7,	d0
	asl.w		#2,	d0
	move.w		d4,	d1
	add.w	   2(a0,d0.w),	d1
linkrw2	movea.l	   rowh(a4),	a0
	movea.l	       (a0),	a0
	move.w		d7,	d0
	asl.w		#2,	d0
	move.w		d1,2(a0,d0.w)
nextrow	addq		#1,	d7
	bvs.s	  .link3
lastrow	cmp.w	row1c(a6),	d7
	ble	  .linkrow

link3	move.w	nodec(a4),	d0
	subq	      #1,	d0
	move.w	      d0,node2c(a6)
	;for(t=0; t<nodec; ++t)
	clr.w			d7
	bra.s	  .lasttil
linktil	movea.l	  nodev(a4),	a0
	move.w		d7,	d0
	asl.w		#2,	d0
	movea.l	    (a0,d0.w),	a0
	move.w		d4,	d0
	add.w	      4(a0),	d0
linktl2	movea.l	  nodev(a4),	a0
	move.w		d7,	d1
	asl.w		#2,	d1
	movea.l	    (a0,d1.w),	a0
	move.w		d0,   4(a0)
nextile	addq		#1,	d7
	bvs.s	  .link4
lasttil	cmp.w	 node2c(a6),	d7
	ble	  .linktil

	;tilelen = tilec*sizeof(TileDef);
link4	moveq	   #18,		d0
	muls  tilec(a4),	d0
	move.w	    d0, tilelen(a6)
	;SetHandleSize(rowh, tilelen+D4.W);
maplen	push.l		   rowh(a4)
	move.w	tilelen(a6),	d0
	add.w		d4,	d0
	ext.l			d0
	push.l			d0
	jsr    01/SetHandleSize(a5)
	;if(MemErr) 
link5	clr.w		      -(sp)
	move.w	     MemErr.w, (sp)
	tst.w		       (sp)+
	beq.s	  .copytil
	;"PccW" error
errpccw	pea		26/pccwstr
	jsr	      01/proc85(a5)

	;BlockMove(*tileh,*rowh+rowlen,tilelen);
copytil	movea.l	  tileh(a4),	a0
	push.l		       (a0)
	movea.l	   rowh(a4),	a0
	move.w		d4,	d0
	ext.l			d0
	add.l	       (a0),	d0
	push.l			d0
	move.w	tilelen(a6),	d0
	ext.l			d0
	push.l			d0
	jsr	   01/BlockMove(a5)
	;DisposHandle(tileh);
	;HLock(rowh);
link6	push.l		  tileh(a4)
	jsr	01/DisposHandle(a5)
	push.l		   rowh(a4)
	jsr	       01/HLock(a5)
	;Map *D5.L = *rowh;
	;(node1c = nodec)--; 
	movea.l	 rowh(a4),	a0
	move.l	     (a0),	d5
	move.w	nodec(a4),	d0
	subq	      #1,	d0
	move.w	      d0,node1c(a6)

	clr.w			d7
	bra	  .lastnod
	;for(D7.W=0; D7<nodec; ++D7)
linknod	movea.l	  nodev(a4),	a0
	move.w		d7,	d0
	asl.w		#2,	d0
	;Node *A3 = nodev[D7];
	movea.l	    (a0,d0.w),	a3

	clr.w			d6
	bra	  .lastarg
	;for(D6.W=0; D6<6; ++D6)
linkarg	move.w	    d6,		d0
	asl.w	    #2,		d0
	lea	 14(a3,d0.w),	a0
	;NodeArg *nodearg = &(nodev[D7]->arg[D6]);
	move.l	    a0, nodearg(a6)
	;if(nodearg->op < 0 ||
	;   nodearg->op > 8)
	;	continue;
	move.b	  0(a0),	d0
	ext.w			d0
	bmi	  .nextarg
	cmpi.w		#8,	d0
	bgt	  .nextarg

OPVEC	equ	(argopjt-2)	;:0880	

	add.w		d0,	d0
	move.w	argopjt(d0.w),	d0
	jmp		  OPVEC(d0.w)
			 ;d459[9]:0882
argopjt	dc.w	-OPVEC+.opc0
	dc.w	-OPVEC+.opc1
	dc.w	-OPVEC+.opc2
	dc.w	-OPVEC+.opc3
	dc.w	-OPVEC+.opc4
	dc.w	-OPVEC+.opc5
	dc.w	-OPVEC+.opc6
	dc.w	-OPVEC+.opc7
	dc.w	-OPVEC+.opc8

	;Node	*A3
	;Map	*D5.L
	;short	 D6.W arg[n]

	;[opcode 00]  DATA	:0894
opc0	movea.l	nodearg(a6),	a0
	movea.l		d5,	a1
	move.w	      4(a3),	d0
	addq		#6,	d0
	ext.l			d0
	divs		#2,	d0
	add.w		d6,	d0
	add.w		d0,	d0
;map[nodev[i]->tile].f[j] =
;    nodearg->data;
	move.w	      2(a0),(a1,d0.w)
	bra	  .nextarg


	;[opcode 01]  TILE	:08b4
opc1	movea.l		d5,	a0
	move.w	      4(a3),	d0
	addq		#6,	d0
	ext.l			d0
	divs		#2,	d0
	add.w		d6,	d0
	add.w		d0,	d0
	movea.l	  nodev(a4),	a1
	;save A0,A1,D0 for below
	movem.l	  d0/a0-a1,   -(sp)
	clr.w		      -(sp)
	push.w		       (a3)
	movea.l	nodearg(a6),	a2
	push.b		      1(a2)
	movea.l	nodearg(a6),	a2
	push.w		      2(a2)
	push.l			a6
	;get node # -> D1.w
	jsr	    26/FindNode(pc) ;p403
	pop.w			d1
	;restore regs
	movem.l	   (sp)+, d0/a0-a1
	asl.w	    #2,		d1
	;get node ptr
	movea.l	   (a1,d1.w),	a1
;map[nodev[i]->tile].f[j] =
;    nodev[p403()]->tile;
	move.w	  4(a1),    (a0,d0.w)
	bra	  .nextarg


	;[opcode 02]  ROW	:08fe
opc2	movea.l		d5,	a0
	move.w	      4(a3),	d0
	addq		#6,	d0
	ext.l			d0
	divs		#2,	d0
	add.w		d6,	d0
	add.w		d0,	d0
	movea.l	  nodev(a4),	a1
	movem.l	  d0/a0-a1,   -(sp)
	clr.w		      -(sp)
	push.w		      0(a3)
	movea.l	nodearg(a6),	a2
	push.b		      1(a2)
	movea.l	nodearg(a6),	a2
	push.w		      2(a2)
	push.l			a6
	jsr	    26/FindNode(pc)
	pop.w			d1
	movem.l	   (sp)+, d0/a0-a1
	asl.w	    #2,		d1
	movea.l	   (a1,d1.w),	a1
;map[nodev[i]->tile].f[j] =
;    nodev[p403()]->row;
	move.w	  2(a1),    (a0,d0.w)
	bra	  .nextarg


	;[opcode 03]  Y		:0948
	;Y blocks/node[0]::<bbbbb___ ________>
opc3	move.b	       (a3),	d0
	lsr.w		#3,	d0
	andi.w	#%00011111,	d0
	muls	      #120,	d0
	sub.w	       #40,	d0
	movea.l	nodearg(a6),	a0
	move.w	      2(a0),	d1
	add.w		d0,	d1
;(pY) D1.w = yblks*120 - 40
;	     + nodearg->data;
	movea.l		d5,	a0
	move.w	      4(a3),	d0
	addq		#6,	d0
	ext.l			d0
	divs		#2,	d0
	add.w		d6,	d0
	add.w		d0,	d0
;map[nodev[i]->tile].f[j] = D1.w;
	move.w		d1, (a0,d0.w)
	bra	  .nextarg


	;[opcode 04]  X		:097c
	;X blocks/node[0]::<_____xxx xxxx____>
opc4	move.w	       (a3),	d0
	lsr.w		#4,	d0
	andi.w	#%01111111,	d0
	asl.w		#7,	d0
	movea.l	nodearg(a6),	a0
	move.w	      2(a0),	d1
	add.w		d0,	d1
	movea.l		d5,	a0
	move.w	      4(a3),	d0
	addq		#6,	d0
	ext.l			d0
	divs		#2,	d0
	add.w		d6,	d0
	add.w		d0,	d0
	move.w		d1, (a0,d0.w)
	bra	  .nextarg


	;[opcode 05]  ENTRY	:09aa
opc5	move.w	 2(a3),  mzrow1(a5)
	move.w	 4(a3), mztile1(a5)
	bra.s	  .nextarg


	;[opcode 06]  EXIT	:09b8
opc6	move.w	 2(a3),  mzrow2(a5)
	move.w	 4(a3), mztile2(a5)
	bra.s	  .nextarg


	;[opcode 07]  POW	:09c6
opc7	movea.l	 powv(a4),	a0
	move.l	      a0,  powg(a6)
	move.w	    0(a0),	d0
	addq	      #1,	d0
	movea.l	 powg(a6),	a0
	move.w	      d0,     0(a0)
pow2	movea.l	 powg(a6),	a0
	movea.l	 powg(a6),	a1
	move.w	     (a1),	d0
	asl.w	      #2,	d0
	move.w	    4(a3),-2(a0,d0.w)
pow3	movea.l	nodearg(a6),	a0
	movea.l	   powg(a6),	a1
	movea.l	   powg(a6),	a2
	move.w	       (a2),	d0
	asl.w	        #2,	d0
	move.w	      2(a0),(a1,d0.w)
	bra.s	  .nextarg

			
	;[opcode 08]  MZ	:0a02
opc8	movea.l	nodearg(a6),	a0
	move.w	      2(a0),	d0
	add.w		d0,	d0
	lea	 mztile(a5),	a0
	move.w	      4(a3),(a0,d0.w)
mz2	movea.l	nodearg(a6),	a1
	move.w	      2(a1),	d0
	add.w		d0,	d0
	lea	  mzrow(a5),	a1
	move.w	      2(a3),(a1,d0.w)
	;..

nextarg	addq		#1,	d6
lastarg	moveq		#5,	d0
	cmp.w		d6,	d0
	bge	  .linkarg

nexnode	addq		#1,	d7
	bvs.s	  .endlink
lastnod	cmp.w	 node1c(a6),	d7
	ble	  .linknod

	;HUnLock(rowh);
endlink	push.l		   rowh(a4)
	jsr	     01/HUnLock(a5)
	move.l	powv(a4), mzpow(a5)
	movem.l	(sp)+, d4-d7/a2-a4
	unlk			a6
	pop.l		       (sp)
	rts	


	;d460(Str255):0a58
pccwstr	dc.b	4, "PccW"
