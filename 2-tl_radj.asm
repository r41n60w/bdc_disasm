; vi: syntax=asm68k

;-refs -  2/com_15     7/proc315   

;:0ea2			2/proc121()
;Move right to adjacent tile
;  args A6,A2/D4,D0/D1.w: as tl_ladj()

tl_radj:
	move.w          d4,     d5
        addi.w         #18,     d5
        move.w   _LX(a2,d5.w),  d6
	subq.w          #1,     d6
        cmp.w    _RX(a2,d4.w),  d6
	beq	  .radj2
	jmp           2/proc131(pc)

radj2	cmpi.w	#F_LAND, _TL(a2,d5.w)
	bne.s	  .radj3
rland	move.w   _RX(a2,d4.w),  d0
rstop	move.w          d0,  _X(a6)
        clr.w             _JOYX(a6)
        rts

radj3	cmpi.w  #W_, _TL(a2,d5.w)
        bne.s     .rdispat
rwall	lea	data67,	a3   ;[20]
	move.w  #DIZZY,   _ST(a6)
        move.l        a3, _VANI(a6)
        subi.w #(15<<8), health(a5)
	move.w   _RX(a2,d4.w),  d0
	subq.w          #6,     d0
        cmpi.w	#F_DUEL, _TL(a2,d4.w)
        bne       .rstop
	pea           7/proc312(a5)
        bra       .rstol

rdispat	bra       2/tl_dispatch(pc)
