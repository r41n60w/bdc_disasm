; vi: syntax=asm68k

;{ 2/proc117 }

;:0268			2/com_7()
;#Fall (dead) down stairs -> (#STAIRD)

dy_stair:
	move.w	12(a2,d4.w),6(a6)
	move	8(a2,d4.w),d4
	move	d4,4(a6)
	tst	30(a6)
	blt.s	lem_2
	tst	52(a6)
	blt.s	lem_1
	; \ (facing RIGHT)
	lea	data74,a3   ; len= 100
	bra.s	lem_4
	; / (facing RIGHT)
lem_1	lea	data71,a3   ; len= 12
	bra.s	lem_4
lem_2	tst	52(a6)
	bgt.s	lem_3
	; / (facing LEFT)
	lea	data73,a3   ; len= 12
	bra.s	lem_4
	; \ (facing LEFT)
lem_3	lea	data72,a3   ; len= 12
lem_4	move	#33,18(a6)
	move.l	a3,48(a6)
	rts	
