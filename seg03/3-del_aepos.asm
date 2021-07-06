; vi: syntax=asm68k

;:3e96		3/data157[]
;Delete aerial pos slot
;  arg A0(int32_t *): ae pos ptr

del_aepos:
	movem.l	  d0-d1/a1,   -(sp)
	movea.l	 aeposv(a5),	a1
	move.w	 aeposc(a5),	d0
	;mask out hi byte -> A0
	move.l		a0,	d1
	andi.l	#$00ffffff,	d1
	movea.l		d1,	a0
	;search aeposv[] for arg
findlp	move.l	       (a1)+,	d1
	andi.l	#$00ffffff,	d1
	cmpa.l		d1,	a0
	dbeq		d0, .findlp
	tst.w		d0
	blt.s	  .nofound
	;found -> delete pos
found	clr.l		      -(a1)
nofound	movem.l	   (sp)+, d0-d1/a1
	rts
