; vi: syntax=asm68k



;:2608		3/proc167()
;Create a mutant
;  arg A0(mutdoor_t *): copy source
;  arg A1(mutdoor_t *): door ptr

mk_mutant:
	movea.l		a0,	a2
	movea.l		a1,	a3
	moveq	       #60,	d0
	_NewPtr		   , CLEAR
	lea	3/cb_mutant,	a1
	move.l		a1, _CB(a0)
	;copy from (mutdoor_t *)
	moveq		#5,	d0
	movea.l		a0,	a1
	addq		#8,	a1
mutcopy	move.w	       (a2)+,  (a1)+
	dbra		d0, .mutcopy
mkmut2	clr	       8+_MUTST(a0)
	move.w	    #2, 8+_MUTC(a0)
	move.w	8+_TJMIN(a0), 8+_TJC(a0)
	move.l	   a3, 8+_MDOOR(a0)
	move.w	  8(a0), 34+_UX(a0)
	move.w	 10(a0), 34+_UY(a0)
	clr.w		34+_UID(a0)
	move.w	    #10, 34+_UW(a0)
	move.w	    #15, 34+_UH(a0)
	;link embedded (struct un_t)
mkmut3	movea.l		a0,	a3
	movem.l	     a0-a1,   -(sp)
	lea	 qenemy(a5),	a0
	lea	   8+26(a3),	a1
	move.l		a0, _UPV(a1)
	move.l	   _UNX(a0),_UNX(a1)
	move.l		a1, _UNX(a0)
	movea.l	   _UNX(a1),	a0
	cmpa.w	     #NULL,	a0
	beq.s	  .mkmut4
	move.l	     a1,   _UPV(a0)
mkmut4	movem.l	    (sp)+,   a0-a1
	move.l	qobj(a5), _NEXT(a0)
	move.l	     a0,   qobj(a5)
	rts	
