; vi: syntax=asm68k

;{  6/proc308    9/proc325   10/proc334   
;  11/proc340   12/proc345   13/proc355   
;  14/proc359   17/proc372   19/proc385   
;  20/proc386   21/proc387   22/proc389   
;  23/proc390   24/proc391   25/proc394 } 

;:2b3a			3/proc172()
;Init level vars, draw HUD
;	no args
init_level:
	;load level sounds
	move.w	curr_rm(a5),  -(sp)
	jsr	    1/load_sftr(a5)
	;clear object queue (obj_t *)
	clr.l		   qobj(a5)
	;init screen/HUD (one-shot)
	jsr	  3/mk_initscrn(pc)
	clr.w		nopause(a5)
	clr.l		qbullet(a5)
	clr.l	      bullet_cb(a5)
;	move.w	       #30,	d0
	;init upos table
	jsr	    3/clr_uposc(pc)
	clr.w		  xbats(a5)
	clr.l	      virq_func(a5)
	;HUD score/rock # updaters
	jsr	  3/mk_hudscore(pc)
	jsr	   3/mk_hudrock(pc)
	;map.X range [-9,499]
	move.w	 #-9, lscr_edge(a5)
	move.w	#499, rscr_edge(a5)
	;disable jumpboxes
	move.w	 #-1,  jboxr_on(a5)
	move.w	 #-1,  jboxl_on(a5)
	sf		planted(a5)
	;HUD stat updaters
	lea	  bombs(a5),	a0
	lea	 3/hud_bomb,	a1
	jsr	   3/mk_hudstat(pc)
	lea	elixirs(a5),	a0
	lea	 3/hud_elix,	a1
	jsr	   3/mk_hudstat(pc)
	lea	  lives(a5),	a0
	lea	  3/hud_1up,	a1
	jsr	   3/mk_hudstat(pc)
	lea	   keys(a5),	a0
	lea	  3/hud_key,	a1
	jsr	   3/mk_hudstat(pc)
	lea	    gas(a5),	a0
	lea	  3/hud_gas,	a1
	jsr	   3/mk_hudstat(pc)
	;clear queues (un_t *)
	clr.l		 qenemy(a5)
	clr.l		qenemy0(a5)
	clr.l		  qbomb(a5)
	clr.l		 qbomb0(a5)
	clr.l	      getorb_cb(a5)
	;health bar updater
	jsr	    3/mk_health(pc)
	clr.w		   rand(a5)
	rts	

	;(struct HUDRect[10])
hud_lives:		;data136:2be4
	dc.w	2, 298, 332, 305, 346
hud_bombs:		;data137:2bee
	dc.w	2, 314, 332, 321, 346
hud_keys:		;data138:2bf8
	dc.w	2, 298, 408, 305, 422
hud_elix:		;data139:2c02
	dc.w	2, 314, 408, 321, 422
hud_gas:		;data140:2c0c
	dc.w	2, 330, 408, 337, 422
