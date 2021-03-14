; vi: syntax=asm68k

;{ 6/proc308    9/proc325   10/proc334   
; 11/proc340   12/proc345   13/proc355   
; 14/proc359   17/proc372   19/proc385   
; 20/proc386   21/proc387   22/proc389   
; 23/proc390   24/proc391   25/proc394 } 

;:29be			3/proc169()
;Main game loop (for current level)
;Turns on/off irqs
;Traverses obj list, calling each func
;Deletes any expired objs (->cb == NULL)
;	no args

levelmain:
	movem.l	d0-d7/a0-a4/a6, -(sp)
	;only HUD actually uses QuickDraw
	jsr	  1/set_hudport(a5)
	;set up video/sound irqs
	sf		 vidirq(a5)
	jsr	  1/enable_irqs(a5)
	sf		 new_rm(a5)
	clr.w	       vidwaitc(a5)

	;main loop
qhead	tst.b	      scrolling(a5)
	beq.s	  .qhead2
	jsr	     18/proc374(a5)
	;get first obj in queue
qhead2	lea	  qobj(a5),	a3
	movea.l	       (a3),	a4
	;A3/previous,  A4/curr (obj_t *)
	;delete if expired/NULL fn ptr
queuelp	movea.l	    _CB(a4),	a2
	cmpa.w	      #NULL,	a2
	beq	  .delobj
	;A6/(dc_t *) obj fields
	lea	  _DATA(a4),	a6
	;call A2/obj func
qfunc	movem.l	     a3-a4,   -(sp)
	jsr	       (a2)
	movem.l	       (sp)+,   a3-a4
	;to next obj in queue
qnext	movea.l		a4,	a3
	movea.l	  _NEXT(a4),	a4
	;[.delobj] jumps here
qnext2	cmpa.w	      #NULL,	a4
	bne	  .queuelp

	;end of list, delay til vblank?
qvirq	jsr	  3/wait_vidirq(pc)
	; -> next loop, while @room
	tst.b		 new_rm(a5)
	beq	  .qhead

	;exited room, delete whole q
	;for(o=qobj;o;o=o->next)
	movea.l	  qobj(a5),	a3
qfreelp	cmpa.w	      #NULL,	a3
	beq.s	  .endlev
	movea.l	  _NEXT(a3),	a4
	movea.l		a3,	a0
	;== free(obj_t *)
	_DisposPtr
freenex	movea.l		a4,	a3
	bra	  .qfreelp


	;delete expired obj (+ relink)
delobj	move.l	  _NEXT(a4), _NEXT(a3)
	movea.l		a3,	a2
	movea.l		a4,	a3
	movea.l	  _NEXT(a4),	a4
	movea.l		a3,	a0
	_DisposPtr
	movea.l		a2,	a3
	bra	  .qnext2


	;purge snd data, disable irqs
endlev	jsr	   1/purge_sftr(a5)
	jsr	 1/disable_irqs(a5)
	clr.l		   qobj(a5)
	movem.l	(sp)+, d0-d7/a0-a4/a6
	rts
