; vi: syntax=asm68k

;{ recursive(), 26/SortNodes() }

;:02b8			26/proc400()
;(Maze) Recursive quicksort implement.n
;   arg	     lo(short).W: low node
;   arg	     hi(short).W: high  "
;   arg	calla6(void *).L: caller A6
;	no ret
;	D4-D7,A3,A4 preserved

;pascal void 26/QSort(const short lo,
;		      const short hi,
;		      void   *calla6);

calla6	equ	 (+8)  ;(void *).L
 pvgrid   equ	   (-14)  ;(ushort).W
 pvmap	  equ	   (-12)   ;(pY,pX).L
 pivot	  equ       (-8)  ;(Node *).L
 tmp	  equ       (-4)  ;(Node *).L
 olda6	  equ	    (+8)
  nodev	  equ	      (-60) ;(Node**).L
 isgrid	  equ	   (+12)  ;(bool).B
hi	  equ	(+12)  ;(short).W
lo	  equ	(+14)  ;(short).W


QSort	link	        a6,    #-4
	movem.l	  d4-d7/a3-a4,-(sp)
	;D5.w	lo node (const)
	;D4	hi  "
	move.w	     lo(a6),	d5
	move.w	     hi(a6),	d4
	;A3	SortNodes()::A6
	;A4	 LoadMaze()  "
	movea.l	 calla6(a6),	a3
	movea.l	  olda6(a3),	a4
	;D7	left index	
	;D6	right  "
	move.w		d5,	d7
	move.w		d4,	d6
	;init pivot (Node *) in middle
pivot	movea.l	  nodev(a4),	a0
	move.w	   d5,		d0
	add.w	   d4,		d0
	ext.l			d0
	divs	   #2,		d0
	asl.w	   #2,		d0
	move.l (a0,d0.w), pivot(a3)


	;while(TRUE)
	;get sort order, fork 
qsloop	move.b	isgrid(a3),	d0
	ext.w			d0
	beq.s	  .map
	subq		#1,	d0
	beq.s	  .grid
	;ASSERT(never gets here!);
	bra.s	  .found


	;(FALSE)  Map sort order 
map	movea.l	 pivot(a3),	a0
	move.l	   6(a0), pvmap(a3)
	;move left index -> unsorted
mapl	movea.l	  nodev(a4),	a0
	move.w		d7,	d0
	asl.w		#2,	d0
	movea.l	    (a0,d0.w),	a0
	move.l	   6(a0),	d0
	cmp.l  pvmap(a3),	d0
	bge.s	  .mapr
	addq	     #1,	d7
	bra	  .mapl
	;move right index
mapr	movea.l	  nodev(a4),	a0
	move.w		d6,	d0
	asl.w		#2,	d0
	movea.l	    (a0,d0.w),	a0
	move.l	  pvmap(a3),	d0
	cmp.l	      6(a0),	d0
	bge.s	  .mapok
	subq		#1,	d6
	bra	  .mapr
	;ready to swap
mapok	bra.s	  .found


	;(TRUE)  Grid sort order 
grid	movea.l	  pivot(a3),	a0
	move.w	  0(a0), pvgrid(a3)
gridl	movea.l	  nodev(a4),	a0
	move.w		d7,	d0
	asl.w		#2,	d0
	movea.l	    (a0,d0.w),	a0
	move.w	   0(a0),	d0
	cmp.w pvgrid(a3),	d0
	bge.s	  .gridr
	addq		#1,	d7
	bra	  .gridl
gridr	movea.l	  nodev(a4),	a0
	move.w		d6,	d0
	asl.w		#2,	d0
	movea.l	    (a0,d0.w),	a0
	move.w	 pvgrid(a3),	d0
	cmp.w	       (a0),	d0
	bge.s	  .found
	subq		#1,	d6
	bra	  .gridr
	; ...


	;check for X'd indices
found	cmp.w		d7,	d6
	blt.s	  .qsnext
	;no, swap nodev[left] .[right]
swap	movea.l nodev(a4),	a0
	move.w	      d7,	d0
	asl.w	      #2,	d0
	move.l	  (a0,d0.w),tmp(a3)
swap2	movea.l	  nodev(a4),	a0
	move.w		d6,	d0
	asl.w		#2,	d0
	movea.l	  nodev(a4),	a1
	move.w		d7,	d1
	asl.w		#2,	d1
	move.l	 (a0,d0.w), (a1,d1.w)
swap3	movea.l	  nodev(a4),	a0
	move.w		d6,	d0
	asl.w		#2,	d0
	move.l	    tmp(a3),(a0,d0.w)
swap4	addq		#1,	d7
	subq		#1,	d6
qsnext	cmp.w		d7,	d6
	bge	  .qsloop


	;indices crossed
	;recurse(lo, left, A6);
qleft	cmp.w		d5,	d6
	ble.s	  .qright
	push.w			d5
	push.w			d6
	push.l		 calla6(a6)
	jsr	       26/QSort(pc) ;p400
	;recurse(lo+1, right, A6);
qright	cmp.w		d7,	d4
	ble.s	  .endsort
	push.w			d7
	push.w			d4
	push.l		 calla6(a6)
	jsr	       26/QSort(pc)
	;done
endsort	movem.l	(sp)+, d4-d7/a3-a4
	unlk			a6
	pop.l			a0
	addq		#8,	sp
	jmp		       (a0)
