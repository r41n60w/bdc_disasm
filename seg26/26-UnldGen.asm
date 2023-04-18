; vi: syntax=asm68k

;{ 26/LoadMaze() }

;:0090			26/proc398()
;(Maze)  Unload generator
;   arg	olda6(void *).L:  top A6
;	no ret
;	D7,A4 preserved

;pascal void  26/UnldGen(void *olda6);

lastb	equ	(-4)  ; (short).W
;	UNUSED	 -2	      [.W]
olda6	equ	(+8)  ;(void *).L
 slab    equ       (-56) ;(short).W [1,13]


UnldGen	link	      a6,      #-4
	movem.l	   d7/a4,     -(sp)
	movea.l olda6(a6),	a4
	move.w	 slab(a4),lastb(a6)
	moveq	      #1,	d7
	bra.s	  .delblk2
	;free all (non-empty) genblocks
delblk	move.w		d7,	d0
	asl.w		#2,	d0
	push.l		slab(a4,d0.w)
	jsr	   01/DisposPtr(a5)
	addq		#1,	d7
	bvs.s	  .endunld
delblk2	cmp.w	  lastb(a6),	d7
	ble	  .delblk

endunld	movem.l	      (sp)+, d7/a4
	unlk			a6
	pop.l		       (sp)
	rts	
