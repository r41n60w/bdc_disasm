; vi: syntax=asm68k

;:2e64		3/data147[]

	tst.w		rocklen(a5)
	beq.s	0x2ea4
	cmpi.w	    #1,	rocklen(a5)
	beq.s	0x2ea0
	move.b	  rocks(a5),	d0
	ext.w			d0
	ext.l			d0
	moveq		#1,	d2
	;A0/Str255[4]
	lea	 rocksz(a5),	a0
	move.b		#2,    (a0)+
	move.b	      #$ca,    (a0)+
	move.b	      #'0',    (a0)+
	;skip if zero rocks	:2e8c
	move.l		d0, 	d1
	beq.s	0x2ea0
	lsr.l		#4,	d0
	andi.w	#%00001111,	d1
	addi.w	      #'0',	d1
	move.b		d1,   -(a0)
	dbra		d2, 0x2e8c
;:2ea0	$1b2()
	jsr	       1/proc95(a5)
;:2ea4
	rts
