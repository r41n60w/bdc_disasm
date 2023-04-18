; vi: syntax=asm68k

;{ 26/proc399() } 

;:0050			26/proc397()
;(Maze)  Create generator node
;   arg	olda6(void *).L:    top A6
;   ret      (Node *).L:  ptr to node 
;	A4 preserved

;pascal Node	* 26/MkNode(void *olda6);

olda6	equ	(+8)  ;(void *).L
 slab	equ        (-56) ;(short).W [1,13]
 alloc	equ        (-54) ;(short).W [0,99]
retval	equ	(+12) ;(Node *).L


MkNode	link		a6,	#0
	push.l			a4
	movea.l	  olda6(a6),	a4
	moveq	      #100,	d0
	cmp.w	  alloc(a4),	d0
	bne.s	  .okblk
	;(-54(top)== 100) block full    
fullblk	push.l		  olda6(a6)
	jsr	    26/MkGenblk(pc) ;p395

okblk	addq	      #1, alloc(a4)
	move.w	 slab(a4),	d0
	asl.w	      #2,	d0
	movea.l	 slab(a4,d0.w),	a0
	move.w	alloc(a4),	d0
	muls	     #38,	d0
	;return ptr to next slot[38]
	lea	 -38(a0,d0.w),	a0
	move.l	     a0, retval(a6)
endnode	pop.l			a4
	unlk			a6
	pop.l		       (sp)
	rts	
