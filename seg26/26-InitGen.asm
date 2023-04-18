; vi: syntax=asm68k

;{ 26/proc399() }

;:0036       	   26/proc396()
;(Maze)  Init generator
;   arg	olda6(void *).L:  top A6
;	no ret

;pascal void	26/InitGen(void *olda6);

olda6	equ	(+8)	;(void *).L
 slab	equ        (-56) ;(short).W [1,13]

InitGen:
	link		a6,	#0
	movea.l	  olda6(a6),	a0
	;reset slab #
	clr.w		   slab(a0)
	push.l		  olda6(a6)
	jsr	    26/MkGenblk(pc) ;p395
	unlk			a6
	pop.l		       (sp)
	rts	
