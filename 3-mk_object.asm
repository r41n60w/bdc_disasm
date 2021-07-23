; vi: syntax=asm68k

;{6/proc300    6/proc308    7/proc314   
;9/proc325   10/proc334   14/proc359   
;17/proc372   19/proc383   23/proc390   
;24/proc391   25/proc394 } 

;2c48			3/proc175()
;Create a (still-frame) object
;	arg D0(xpos_t)/D1(ypos_t): pos
;	arg A1(sprhdr_t *): sprite
;	arg D2(frame_t):    frame #

mk_object:
	move.w	d0,d3
	move.w	d1,d4
	movea.l	a1,a3
	moveq	#18,d0
	_NewPtr ,CLEAR
	lea	cb_object,a1
	move.l	a1,4(a0)
	move.w	d3,8(a0)
	move.w	d4,10(a0)
	move.w	d2,12(a0)
	move.l	a3,14(a0)
	move.l	glob197(a5),(a0)
	move.l	a0,glob197(a5)    
	rts


;:2c74		3/data142[]

cb_object:
	move.w	(a6), d0
	move.w	0x2(a6), d1
	move.w	0x4(a6), d2
	movea.l	0x6(a6), a1
	movea.l	currpg(a5), a0
	tst.b	scrollf(a5)
	beq.b	0x2cb4
	move.w	0x12(a0), d4
	subi.w	0x20, d4
	cmp.w	d4, d0
	blt.b	0x2cb8
	addi.w	0x220, d4
	cmp.w	d4, d0
	bgt.b	0x2cb8
	move.w	0x14(a0), d5
	subi.w	0x20, d5
	cmp.w	d5, d1
	blt.b	0x2cb8
	addi.w	0x144, d5
	cmp.w	d5, d1
	bgt.b	0x2cb8
;:2cb4
	jsr	0x0(pc)
;:2cb8
	rts
