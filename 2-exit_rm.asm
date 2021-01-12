;  vi: syntax=asm68k

; { com_17     7/proc314    9/proc323  

;:0e24			2/proc119()
;Leave current room
;	arg A6:   dc_t ptr
;	arg A2:   level (map_t *)
;	    D5.w: X_EXIT tile (off_t)

exit_rm:
	;#DEFAULT state
	clr	_ST(a6)
	move.b	1+_F3(a2,d5.w), exitlv_tag(a5)
	move	_F0(a2,d5.w), next_rm(a5)
	move	_F1(a2,d5.w), entrance(a5)
	st	new_rm(a5)
	rts	
