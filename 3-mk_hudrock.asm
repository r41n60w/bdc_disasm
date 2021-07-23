; vi: syntax=asm68k

;{ 3/init_level() }

;:2e48		3/proc186()
;Create HUD "rocks:" updater
;	no args
;	ret A0(obj_t *):  obj
mk_hudrock:
	moveq	    #8,		d0
	_NewPtr	      ,	     CLEAR
	lea	3/cb_hudrock,	a1
	move.l	    a1,     _CB(a0)
	move.l qobj(a5),  _NEXT(a0)
	move.l	    a0,    qobj(a5)
	move.w	    #2,	rockblt(a5)
	rts	


;:2e64		3/data147[]
;HUD "rocks:" updater obj func
;	arg A6(void *):  <UNUSED>
cb_hudrock:
	tst.w		rockblt(a5)
	beq.s	  .endrock
	cmpi.w	    #1,	rockblt(a5)
	beq.s	  .bltrock
	;(rockblt == 2)
	;D0/(bcd_t[1])  # of rocks
	move.b	  rocks(a5),	d0
	ext.w			d0
	ext.l			d0
	moveq		#1,	d2
	;init string	A0/Str255[4]
	lea	rockstr(a5),	a0
	move.b		#2,    (a0)+
	move.b	      #$ca,    (a0)+
	move.b	      #'0',    (a0)+
	;convert BCD -> string
bcd2str	move.l		d0, 	d1
	beq.s	  .bltrock
	lsr.l		#4,	d0
	andi.w	#%00001111,	d1
	addi.w	      #'0',	d1
	move.b		d1,   -(a0)
	dbra		d2, .bcd2str
	;blit "rocks NN" on HUD
bltrock	jsr	       1/proc95(a5)
	;(--rockblt)
endrock	rts
