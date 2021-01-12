; vi: syntax=asm68k

;{ proc109      proc113 }

;:0520			2/proc115()
;Get sprite ptr from anim table index
;	arg D3.w: (positive) index [1-6]
;	ret A1:   mapped (spr_t *)

get_anispr:
	subq	#1,d3
	asl	#3,d3
	jmp	anisprjt(d3.w)
data81   DC.W    0
     ;:052a
anisprjt:
	movea.l	glob10(A5),A1 ;-$a1a
	rts	
	dc.w	0
	movea.l	glob11(a5),a1 ;-$a0e
	rts	
	dc.w	0
	movea.l	glob12(a5),a1 ;-$a0a
	rts	
	dc.w	0
	movea.l	glob26(a5),a1 ;-$992
	rts	
	dc.w	0
	movea.l	glob3(a5),a1 ;-$ad2
	rts	
	dc.w	0
	movea.l	glob4(a5),a1 ;-$ace
	rts	
