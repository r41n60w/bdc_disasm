; vi: syntax=asm68k

;{ 3/proc147, 3/proc151, 3/proc154 }

;:0698			3/proc146()
;Restore screen page to "clean"
;	arg A1(pg_t *): dirty page

unblit_page:
	movem.l	 d3-d4/a2-a3, -(sp)
	movea.l	 _BLTP(a1),	a0
lgu_1	movea.l	     -(a0),	a0
	cmpa.w	     #NULL,	a0
	beq.s	lgu_7
	move.l	      a0, _BLTP(a1)
	movea.l	      a0,	a2
	move.w	     (a2)+,	d0
	move.w	     (a2)+,	d1
	move.l	     (a2)+,	d2
	move.l	     (a2)+,	d3
	movea.l	  _PG(a1),	a3
	adda.l	      d2,	a3
	subq.w	      #1,	d0
	btst.b	      #0,	d0
	beq.s	lgu_4
	asr.w		#1,	d0
lgu_2	move.w		d0,	d4
lgu_3	move.l	       (a2)+,  (a3)+
	dbra		d4, .lgu_3
	move.w	       (a2)+,  (a3)+
	adda.l		d3,	a3
	dbra		d1, .lgu_2
	bra	  .lgu_1
lgu_4	asr.w		#1,	d0
lgu_5	move.w		d0,	d4
lgu_6	move.l	       (a2)+,  (a3)+
	dbra		d4, .lgu_6
	adda.l		d3,	a3
	dbra		d1, .lgu_5
	bra	  .lgu_1
lgu_7	movem.l	 (sp)+, d3-d4/a2-a3
	rts	


;{ 5/proc250, 5/proc263, 5/proc286, 5/proc291 }

;:0900		3/proc154()
;Pascal wrapper -> unblit_page()
;	arg (pg_t* page)

UnblitPage:
	movea.l	       (sp)+,	a2
	movea.l	       (sp)+,	a1
	move.l		a2,   -(sp)
	jsr	  3/unblit_page(pc)
	rts
