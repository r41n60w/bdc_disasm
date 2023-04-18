; vi: syntax=asm68k

;{ 26/LoadMaze() }

;:03dc			26/proc401()
;(Maze)  Sort node table, [map|grid]
;  ->	26/QSort(_recursive_) ...
;   arg	isgrid(bool).B:  [flag]
;   arg olda6(void *).L:  top A6
;	no ret

;pascal void 26/SortNodes(bool  isgrid,
;			  void *olda6);

pvgrid	equ	(-14)	;(ushort).W
pvmap	equ	(-12)	;        .L
;   [row].h	  ";     {  (pY).W
;  [tile].l	 -10;       (pX).W }
pivot	equ	(-8)	;(Node *).L
tmp	equ	(-4)	;(Node *).L

olda6	equ	(+8)	;(void *).L
 nodec	equ	   (-62)  ;top.(short).W
isgrid	equ	(+12)	;(bool)


SortNodes:
	link		a6,   #-14
	clr.w		      -(sp)
	movea.l	  olda6(a6),	a0
	move.w	  nodec(a0),	d0
	subq		#1,	d0
	push.w			d0
	push.l			a6
	;QSort(0, nodec-1, A6);
	jsr	       26/QSort(pc) ;p400
	unlk			a6
	pop.l			a0
	addq		#6,	sp
	jmp		       (a0)
