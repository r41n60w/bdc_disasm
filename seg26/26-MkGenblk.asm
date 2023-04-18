; vi: syntax=asm68k

;{ 26/proc396, 26/proc397 } 

;:0000			26/proc395()
;(Maze)  Create generator block
;   arg olda6(void *).L:  top A6
;	no ret
;	A4 preserved

;pascal void	26/MkGenblk(void *olda6);

olda6	equ	(+8)  ;(void *).L
 slab	equ        (-56) ;(short).W [1,13]
 alloc	equ        (-54) ;(short).W [0,99]


MkGenblk:
	link		a6,	#0
	push.l			a4
	movea.l	  olda6(a6),	a4
	;++slab[alloc = 0];
	clr.w		  alloc(a4)
	addq	       #1, slab(a4)
	move.w	  slab(a4),	d0
	asl.w	       #2,	d0
	push.l			d0
	;alloc new block[100][38]
	clr.l		      -(sp)
	push.l		     #3800
	jsr	      01/NewPtr(a5)
	pop.l			d1
	pop.l			d0
	;save in table
	move.l	    d1, slab(a4,d0.w)
	pop.l			a4
	unlk			a6
	pop.l		       (sp)
	rts	
