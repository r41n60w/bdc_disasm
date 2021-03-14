; vi: syntax=asm68k

;{  6/proc308    9/proc325   10/proc334   
;  11/proc340   12/proc345   13/proc355   
;  14/proc359   17/proc372   19/proc385   
;  20/proc386   21/proc387   22/proc389   
;  23/proc390   24/proc391   25/proc394 } 

;:2b3a			3/proc172()

proc172:
	move.w	curr_rm(a5),  -(sp)
	jsr	    1/load_sftr(a5)

	clr.l		   qobj(a5)
	;new obj[8]
	jsr	      3/proc174(pc)
	clr.w		glob181(a5)

	clr.l		qbullet(a5)
	clr.l		glob202(a5)
	move.w	       #30,	d0
	;clear aeposc.w
	jsr	      3/proc200(pc)
	clr.w		  xrats(a5)
	clr.l	      virq_func(a5)
	;new obj[10]
	jsr	      3/proc205(pc)
	;new obj[8], rocklen = 2 p186()
	jsr	      3/mk_hudrock(pc)

	move.w	 #-9, lscr_edge(a5)
	move.w	#499, rscr_edge(a5)
	move.w	 #-1,  jboxr_on(a5)
	move.w	 #-1,  jboxl_on(a5)
	sf		planted(a5)

	lea	  bombs(a5),	a0
	lea	 3/hud_bomb,	a1
	jsr	      3/proc220(pc)
	lea	elixirs(a5),	a0
	lea	 3/hud_elix,	a1
	jsr	      3/proc220(pc)
	lea	  lives(a5),	a0
	lea	  3/hud_1up,	a1
	jsr	      3/proc220(pc)
	lea	   keys(a5),	a0
	lea	  3/hud_key,	a1
	jsr	      3/proc220(pc)
	lea	    gas(a5),	a0
	lea	  3/hud_gas,	a1
	jsr	      3/proc220(pc)

	clr.l	glob88(a5)
	clr.l	glob89(a5)
	clr.l	glob90(a5)
	clr.l	glob91(a5)
	clr.l	glob76(a5)
	;new obj[1w]
	jsr	3/proc219(pc)
	clr.w	glob156(a5)
	rts	

;:2be4			data136[10]
hud_lives:
	dc.w	2, 298, 332, 305, 346


;:2bee			data137[10]
hud_bombs:
	dc.w	2, 314, 332, 321, 346

;:2bf8			data138[10]
hud_keys:
	dc.w	2, 298, 408, 305, 422

;:2c02			data139[10]
hud_elix:
	dc.w	2, 314, 408, 321, 422
	;:2c0c		data140[10]
hud_gas:
	dc.w	2, 330, 408, 337, 422
