; vi: syntax=asm68k

;{ 11/proc340, 20/proc386, 21/proc387  
;      	       23/proc390, 24/proc391 } 

;:0b80			26/proc407()
;(Maze) Unload maze vars
;	no args/ret

;pascal void 26/UnldMaze(void);


UnldMaze:
	link		a6,	#0
	;DisposHandle(mzdfh);
	push.l		  mzdfh(a5)
	jsr	01/DisposHandle(a5)
	;DisposHandle(maph);
	push.l		   maph(a5)
	jsr	01/DisposHandle(a5)
	;DisposPtr(mzpow);
	push.l		  mzpow(a5)
	jsr	   01/DisposPtr(a5)
	unlk			a6
	rts	
