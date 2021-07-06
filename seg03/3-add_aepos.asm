; vi: syntax=asm68k

;{ 3/proc161    9/proc324 }

;:3e64		3/proc201()
;Add aerial pos slot
;  arg A0(int32_t *): aerial pos ptr
;  arg D7.L(uint32_t): [hibyte] type

add_aepos:
	movem.l	     d1/a1,   -(sp)
	move.l		a0,	d1
	or.l		d7,	d1
	movea.l		d1,	a0
	movea.l	 aeposv(a5),	a1
	move.w	 aeposc(a5),	d1
	;scan aeposv for empty slot
	move.w		#0,	ccr
	bra.s	  .nxscan
scanlp	tst.l	       (a1)+
nxscan	dbeq		d1, .scanlp
	tst.w		d1
	bge.s	  .emptysl
	;reached last slot, append
addslot	addq.w	     #1, aeposc(a5)
	move.l	     a0,       (a1)
	bra.s	  .endaesl
	;found empty slot, use it
emptysl	move.l	       a0,    -(a1)
endaesl	movem.l	      (sp)+, d1/a1
	rts	
