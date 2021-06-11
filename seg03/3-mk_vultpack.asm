; vi: syntax=asm68k

;{ 9/proc325   14/proc359   22/proc389 }  

;:1488		3/proc160()

mk_vultpack:
	movea.l		a0,	a4
	;D7/--(# of vultures)
	move.w	       (a4)+,	d7
	subq.w		#1,	d7
	;A0/(aeg_t *) vulture data
	lea	3/vult_aeg,	a0 
	move.w	(a4)+,16(a0)
	move.w	(a4)+,18(a0)
	move.w	(a4)+,20(a0)
	move.w	(a4)+,30(a0)
	move.w	(a4)+,32(a0)
	move.w	(a4)+,34(a0)
	move.w	(a4)+,36(a0)
	clr.w	22(a0)
	clr.w	14(a0)
lhi_1	movea.l		a0,	a1
	move.l	       (a4)+,  (a1)+
	move.l	       (a4)+,  (a1)+
	move.l	       (a4)+,  (a1)+
	move.w	       (a4)+,  (a1)+
	movem.l	  d7/a0/a4,   -(sp)
	jsr	proc159
	movem.l	   (sp)+, d7/a0/a4
	dbra		d7, .lhi_1
	rts	

;:14d2		3/data123[38]
vult_aeg:	;(struct aeg_t)
	dc.w	0,  0,  0,  0
	dc.w	0,  0,  0

	dc.w	0,  0,  0,  0
	dc.w	0,  0,  0,  0
	dc.w	0,  0,  0,  0
