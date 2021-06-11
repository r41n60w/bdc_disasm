; vi: syntax=asm68k

;:0afe		6/data118[]:+$196
;Create snake
;	arg A0:
;	arg A1:

mk_snake:
	movea.l		a0,	a2
	movea.l		a1,	a3
	moveq	       #60,	d0
	_NewPtr		  ,  CLEAR
	lea	3/cb_snake,	a1
	move.l	       a1,  _CB(a0)
	move.l	       a3, 8+24(a0)
	move.w	      #60, 8+22(a0)
snake2	moveq	       #9,	d0
	movea.l	       a0,	a1
	addq.w	       #8,	a1
copysk	move.w	       (a2)+,  (a1)+
	dbra		d0, .copysk
snake3	move.w	 8+_SKX(a0), 44(a0)
	move.w	 8+_SKY(a0), 46(a0)
	move.w		#6,  48(a0)
	cmpi.w	  #3*4, 8+_MODE(a0)
	bne.s	  .defausk
polesk	move.w		#8,  54(a0)
	move.w	       #24,  56(a0)
	bra.s	  .snake4
defausk	move.w	       #24,  54(a0)
	move.w		#4,  56(a0)

snake4	movea.l		a0,	a4
	movem.l	     a0-a1,   -(sp)
	lea	 qenemy(a5),	a0
	lea	     36(a4),	a1
	move.l	      a0,  _UPV(a1)
	move.l	 _UNX(a0), _UNX(a1)
	move.l	      a1,  _UNX(a0)
	movea.l	 _UNX(a1),	a0
	cmpa.w	   #NULL,	a0
	beq.s	  .qempty
qexist	move.l	      a1,  _UPV(a0)
qempty	movem.l	      (sp)+, a0-a1
	move.l	  qobj(a5),    (a0)
	move.l	       a0, qobj(a5)

snaksnd	move.w		d0,   -(sp)
	move.w	#SND_SNAKE,	d0
	jsr	     1/play_snd(a5)
	move.w	       (sp)+,	d0
	rts
