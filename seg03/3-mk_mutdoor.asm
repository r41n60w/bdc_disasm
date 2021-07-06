; vi: syntax=asm68k

;0(A6).w  (xpos_t)	.drx
;2(A6).w  (ypos_t)	.dry
;4(A6).w  (xpos_t)	.lmut
;6(A6).w  (xpos_t)	.rmut
;8(A6).w  (xoff_t)	.drdx
;10(A6).w (ivl_t)	.tjmin

;12(A6).w (ivl_t)	.gmut0  respawn min
;14(A6).w (uint16_t)	.g	   "  mask
;16(A6).w (int16_t)	.nmut	# mutants

;18(A6).w (ivl_t)	.gmutc  respawn ivl


;{ 22/proc389 }

;:2684		3/proc168()
;Create a mutant door (generator)
;  arg A0(mutdoor_t *):  door info

mk_mutdoor:
	movea.l		a0,	a2
	moveq	       #28,	d0
	_NewPtr 	  ,  CLEAR
	lea	3/cb_mutdoor,	a1
	move.l		a1, _CB(a0)
	;copy info 
	moveq		#8,	d0
	movea.l		a0,	a1
	addq		#8,	a1
cpymtdr	move.w	       (a2)+,  (a1)+
	dbra		d0, .cpymtdr
	;gen respawn interval
	jsr	       3/random(pc)
	and.w	22(a0),		d0
	add.w	20(a0),		d0
	move.w	   d0, 8+_GMUTC(a0)
	move.l	qobj(a5), _NEXT(a0)
	move.l	     a0,   qobj(a5)
	rts	


;:26b8		3/data132[]
;Mutant door obj func
;  arg A6(mutdoor_t *):  obj

cb_mutdoor:
	tst.w		  _NMUT(a6)
	ble.s	  .endmtdr
	subq.w	     #1, _GMUTC(a6)
	bgt.s	  .endmtdr
	subq.w	     #1,  _NMUT(a6)
	movea.l	     a6,	a0
	movea.l	     a6,	a1
	jsr	    3/mk_mutant(pc) ;2608
	;generate new interval
	jsr	       3/random(pc)
	and.w	  14(a6),	d0
	add.w	  12(a6),	d0
	move.w	     d0, _GMUTC(a6)
endmtdr	rts
