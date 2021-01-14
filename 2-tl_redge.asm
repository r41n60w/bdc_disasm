; vi: syntax=asm68k

;-refs -  2/com_15     7/proc315   

;:0ea2			2/proc121()

tl_redge:
	move.w          d4,     d5
        addi.w         #18,     d5
        move.w   _LX(a2,d5.w),  d6
	subq.w          #1,     d6
        cmp.w    _RX(a2,d4.w),  d6
	beq	lev_1
	jmp           2/proc131(pc)

lev_1	cmpi.w  #6,    _TL(a2,d5.w)
	bne.s	lev_3
	move.w   _RX(a2,d4.w),  d0

lev_2   move.w          d0,  _X(a6)
        clr.w             _JOYX(a6)
        rts
lev_3   cmpi.w  #27, _TL(a2,d5.w)
        bne.s   lev_4
	lea	data67,	a3   ;[20]
	move.w       #12,   _ST(a6)
        move.l        a3, _VANI(a6)
        subi.w #(15<<8), health(a5)
	move.w   _RX(a2,d4.w),  d0
	subq.w          #6,     d0
        cmpi.w    #41, _TL(a2,d4.w)
        bne     lev_2
	pea           7/proc312(a5)
        bra     lev_2

lev_4   bra       2/tl_dispatch(pc)
