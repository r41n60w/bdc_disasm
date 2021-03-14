; vi: syntax=asm68k

;-refs -  4/proc236   

;:072e			3/proc148()

proc148	push.l	a5
	movea.l	CurrentA5,a5
	tst.b	glob239(a5)
	bne.s	lgw_1
	tst.b	glob242(a5)
	beq.s	lgw_4
lgw_1	movea.l	VIA,a0
	adda.w	#$1e00,a0
	move.l	glob246(a5),d0
	lea	glob262(a5),a1
	cmpa.l	d0,a1
	bne.s	lgw_2
	lea	glob255(a5),a1
	move.l	a1,glob246(a5)
	bset	#6,(a0)
	move.l	a1,glob243(a5)
	bra.s	lgw_3
lgw_2	lea	glob262(a5),a1
	move.l	a1,glob246(a5)
	bclr	#6,(a0)
	move.l	a1,glob243(a5)
lgw_3	movea.l	glob245(a5),a0
	move	#5,10(a0)
	bra.s	lgw_5
lgw_4	movea.l	glob245(a5),a0
	move	#1,10(a0)
	addq	#1,glob240(a5)
lgw_5	movem.l	(sp)+,a5
	rts	
