; vi: syntax=asm68k

;{ 11/proc340,
;  20/proc386, 21/proc387   
;  23/proc390, 24/proc391 } 

;:0a7c			26/proc406()
;(Maze) Load scrolling level 
;   arg	mzid(id_t).W:  maze ID
;	no ret
;	D7,A4 preserved

;pascal void	26/LoadMaze(id_t mzid);

;pascal Handle		_GetResource(
;	ResType theType, short ID);

;These are effectively static vars 
;(A6 passed to _all_ subroutines))
mzidstr	equ    (-596)  ; (Str255)
errstr  equ    (-340)  ; (Str255)
;	UNUSED	 -84		 .W
powv	equ	(-82)  ; (PowG *).L [122]
rowc	equ	(-78)  ;  (short).W
rowh	equ	(-76)  ; (Map **).L [4]
tilec	equ	(-72)  ;  (short).W
tileh	equ	(-70) ;TileDef **.L [18]
mzdf_h	equ	(-66)  ;(MZDF **).L
nodec	equ	(-62)  ;  (short).W
nodev	equ	(-60) ;(Node *)[].L

slab	equ	(-56) ;   (short).W [1,13]
alloc	equ	(-54) ;   (short).W [0,99]
genblk	equ	(-52) ;(Node *[13])->[100]
	;... [13*sizeof(Ptr)]

mzid	equ	 (+8)  ;   (id_t).W


LoadMaze:
	link		a6,  #-596
	movem.l	     d7/a4,   -(sp)
	clr.w			d7
	;powerup info (PowG)
	;initially none, max 30
powg	clr.l		      -(sp)
	moveq	      #122,	d0
	push.l			d0
	jsr	      01/NewPtr(a5)
	pop.l		   powv(a6)
	movea.l	   powv(a6),	a0
powg2	clr.w		   _LEN(a0)
	;node table -> (Node *[1276])
nodetab	clr.l		      -(sp)
	push.l		  #(1276*4)
	jsr	      01/NewPtr(a5)
	pop.l		  nodev(a6)
;Handle mzdf_h = GetResource('MZDF',mzid);
getmzdf	clr.l		      -(sp)
	push.l		   26/MZDF ;d462
	push.w		   mzid(a6)
	_GetResource		   ;a9a0
	pop.l		 mzdf_h(a6)
	bne.s	  .mzdfok

	;(NULL)  MaZe Not Found error
errmznf	pea	      26/mznfstr
	pea		mzidstr(a6)
	push.w		   mzid(a6)
	jsr	      01/proc89(a5)
	pea		 errstr(a6)
	push.w			#2
	jsr	      01/proc69(a5)
	pea		 errstr(a6)
	jsr	      01/proc85(a5)
	;[crash "MZNF:%d"]

	;valid rsrc, move to himem/lock 
mzdfok	push.l		 mzdf_h(a6)
	jsr	     01/MoveHHi(a5) ;p25
	push.l		 mzdf_h(a6)
	jsr	       01/HLock(a5)
	;set window bounds
	;horz.	[7,128w-512+7]
lbound	movea.l	mzdf_h(a6),	a0
	movea.l	    (a0),	a4
	move.w	     #7, lmzwin(a5)
rbound	move.w _LEVW(a4),	d0
	asl.w	     #7,	d0
	sub.w	   #512,	d0
	addq	     #7,	d0
	move.w	     d0, rmzwin(a5)
	;vert.	[0,120h-292]
ubound	clr.w		 umzwin(a5)
dbound	moveq	   #120,	d0
	muls.w _LEVH(a4),	d0
	sub.w	   #292,	d0
	move.w	     d0, dmzwin(a5)

loadnod	push.l			a6
	jsr	   26/LoadNodes(pc) ;p399
	;-> InitGen(),MkGenBlk(),MkNode()

	;sort(FALSE) in Map order
sortmap	clr.w		      -(sp)
	push.l			a6
	jsr	   26/SortNodes(pc) ;p401
	;create row/tile definitions
initmap	push.l			a6
	jsr	     26/InitMap(pc) ;p402

	;sort(TRUE) in grid order
sortgrd	push.b			#1
	push.l			a6
	jsr	   26/SortNodes(pc)
	;link nodes -> tile arg[6]
linknod	push.l			a6
	jsr	   26/LinkNodes(pc) ;p404
	;-> FindNode()

cleanup	push.l			a6
	jsr	     26/UnldGen(pc) ;p398
	push.l			a6
	jsr	  26/DetachMZDF(pc) ;p405
	push.l		  nodev(a6)
	jsr	   01/DisposPtr(a5)
	;move (Map **) to himem/lock
maph	move.l   rowh(a6), maph(a5)
	push.l		   maph(a5)
	jsr	     01/MoveHHi(a5)
	push.l		   maph(a5)
	jsr	       01/HLock(a5)
endmaze	movem.l	      (sp)+, d7/a4
	unlk			a6
	pop.l			a0
	addq		#2,	sp
	jmp		       (a0)


mznfstr	dc.b 5, 'MZNF:' ;d461(Str255):0b76
MZDF	dc.b	'MZDF' ;d462(ResType):0b7c
