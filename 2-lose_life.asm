; vi: syntax=asm68k

;{ proc113      proc124      com_29    
;  6/proc294    6/proc297    8/proc319   

;:04fc			2/proc114()
;Lose a life, respawn if able

lose_life:
	subq	#1, lives(a5)
	st.b	new_rm(a5)
	tst.w	lives(a5)
	blt.s	  .endlose
	;lives left -> respawn here
respawn	move.w	curr_rm(a5), next_rm(a5)
	cmpi.b	#$10, rocks(a5)
	bhi.s	  .endlose
	;10x rocks minimum
	move.b	#$10, rocks(a5)
endlose	rts
