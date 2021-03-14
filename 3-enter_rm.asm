; vi: syntax=asm68k

;{ 1/proc106 }

;:2a4a			3/proc170()
;Enter a room -> SEG/<setup>()

NOWHERE	equ	(-1)

enter_rm:
	movem.l	d3-d7/a2-a4/a6, -(sp)
	move.w	#$ffff, (SysEvtMask).w

	;D0/next room, (NOWHERE)?
enter2	move.w	next_rm(a5),	d0
	bmi	  .entered
	cmpi.w	    #2, winmode(a5)
	bne.s	  .enter3
	;window mode #2
scroll	move.w	demo_end(a5),	d7
	cmp.w	 demopos(a5),	d7
	ble	  .entered
	
	;same room?
enter3	cmp.w	curr_rm(a5),	d0
	sne	glob172(a5)
	;curr = next, next = NOWHERE
	move.w	#NOWHERE, next_rm(a5)
   	move.w	      d0, curr_rm(a5)
	;index into jump table 	
enterjt	move.w	curr_rm(a5),	d0
	asl.w		#3,	d0
	jsr    initrmjt(d0.w)
	;A0/room init routine
	move.l		a0,   -(sp)
	jsr	       (a0)
	
	;have exited this room ..
	;void (void (*Proc)(void));
exited	_UnLoadSeg
	tst.b	       practise(a5)
	beq.s	  .exit2
	;practise mode, can't progress
	tst.w	        next_rm(a5)
	bmi	  .exit2
	; -> respawn in same room
	move.w curr_rm(a5), next_rm(a5)
	clr.w	       entrance(a5)
exit2	bra	  .enter2
	
;:2aac			3/data134[6]
	dc.w	0, 0, 0

;:2ab2			3/data135[120]

initrmjt:
	;[:+0]	#0/<ANTE>:0a44
anterm	lea     19/proc385(a5), a0
	rts
	dc.w	0
	;[:+8]	#1/<CATC>:0914
catacom	lea     25/proc394(a5), a0
	rts
	dc.w	0
	;[:+16]	#2/<BASE>:0ac8
basemnt	lea     13/proc355(a5), a0
	rts
	dc.w	0
	;[:+24]	#3/<DUNJ>:10c0
dungeon	lea     6/proc308(a5), a0
	rts
	dc.w	0
	;[:+32]	#4/<WALL>:094e
wtwall	lea     22/proc389(a5), a0
	rts
	dc.w	0
	;[:+40]	#5/<WLAB>:0000
wlabyr	lea     21/proc387(a5), a0
	rts
	dc.w	0
	;[:+48]	#6/<WTOP>:0f48
wttop	lea     10/proc334(a5), a0
	rts
	dc.w	0
	;[:+56]	#7/<BREW>:07c2
brewery	lea     17/proc372(a5), a0
	rts
	dc.w	0
	;[:+64]	#8/<ELAB>:0000
elabyr	lea     20/proc386(a5), a0
	rts
	dc.w	0
	;[:+72]	#9/<ETOP>:0f22
ettop	lea     9/proc325(a5), a0
	rts
	dc.w	0
	;[:+80]	#10/<CLKT>:0c5a
clocktw	lea     14/proc359(a5), a0
	rts
	dc.w	0
	;[:+88]	#11/<BKCH>:0fd4
bkchamb	lea     11/proc340(a5), a0
	rts
	dc.w	0
	;[:+96]	#12/<FORE>:0000
forest	lea     23/proc390(a5), a0
	rts
	dc.w	0
	;[:+104] #13/<SWAM>:0000
swamp	lea     24/proc391(a5), a0
	rts
	dc.w	0
	;[:+112] #14/<COMP>:097a
comprm	lea     12/proc345(a5),	a0
	rts
	dc.w	0


;:2b28			3/proc171()
	move.w	       #15,	d1
	bra.s	  .retentr

;:2b2e			3/com_38()

entered	move.w  #$fffe, (SysEvtMask).w
	movem.l	(sp)+, d3-d7/a2-a4/a6
retentr	rts
