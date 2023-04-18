; vi: syntax=asm68k

;{ 26/LoadMaze() }

;:0a5e			26/proc405()
;(Maze)  Detach resource [MZDF]:#mzid
;   arg	olda6(void *):  top A6
;	no ret

;pascal void 26/DetachMZDF(void *olda6);

;pascal void	_DetachResource(
;	Handle	theResource);

olda6	equ	(+8)  ;(void *)
 mzdf_h	equ	   (-66) ;top.(MZDF **)


DetachMZDF:
	link		a6,    #-2
	movea.l	  olda6(a6),	a0
	push.l		 mzdf_h(a0)
	_DetachResource		  ;a992
	movea.l	olda6(a6),	a0
	move.l mzdf_h(a0),mzdfh(a5)
	unlk			a6
	pop.l		       (sp)
	rts	
