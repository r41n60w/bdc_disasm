; vi: syntax=asm68k

; { 1/load_pcmirq() }

;049e			1/proc13()
;(RealSound) Interrupt handler
;	no args
;	D4/A5 preserved

;static pascal interrupt void 1/PCMIRQ(void);

	;struct pcminfo_t, PCMInfo[1046];
_MAP		equ	  (+0)	;(uint32_t).L
_MAP0		equ	  (+4)	;(uint32_t).L
_LOOP		equ	  (+8)	;(uint32_t).L
_WRAPW		equ	 (+12)	;(off_t).W
_WRP		equ	 (+14)	;(off_t).W
_LAST		equ	 (+16)	;(uint8_t).B
;__PAD__  		 (+17)	 	  .B
_IRQ		equ	 (+18)	;(struct VBLTask) {
 qLink		   equ		 +0  ;(QElemPtr).L
 qType		   equ		 +4  ;(short).W
 vblAddr	   equ		 +6  ;(ProcPtr).L
 vblCount	   equ		+10  ;(short).W
 vblPhase	   equ		+12  ;(short).W }.[14]
_SLOT		equ	 (+32)	;(struct PcmSlot[32]) {
 _PCM		   equ	   	 +0  ;(uint8_t *).L
 _END		   equ		 +4  ;(uint8_t *).L
 _LP0		   equ		 +8  ;(uint8_t *).L
 _PCM0		   equ		+12  ;(uint8_t *).L }.[16]
_ID		equ	(+544)	;(int8_t[100])
_H		equ	(+644)	;(Handle[100])
_LOAD		equ    (+1044)	;(bool16_t).W

ApplScratch	equ	($0a78)	;(PCMInfo *).L
SdVolume	equ	($0260)	;(uint8_t:3).B
SoundBase	equ	($0266)	;(uint16_t[370]).L


PCMIRQ	movem.l	     d4/a5,   -(sp)
	;A5/(PCMInfo *) data block
	;all sounds loaded?
	movea.l	ApplScratch.w,	a5
	tst.w		  _LOAD(a5)
	beq	  .ENDIRQ
	;D0.W/bitmap index (highest to lowest)
	;D1.L/PCM bitmap[32],  D2.L/loop "
	;D4.B/PCM hi bit #
	;A0/(PcmSlot *) &slot[31]
INITIRQ	moveq		#7,	d4
	moveq	       #31,	d0
	move.l	   _MAP(a5),	d1
	move.l	  _LOOP(a5),	d2
	movea.l		a5,	a0
	adda.w	#31*16+_SLOT,	a0	;+528

	;find highest priority sound
find1	btst.l		d0,	d1
	bne.s	  .found1
next1	suba.w	       #16,	a0
	dbra		d0, .find1
	;(!bitmap) -> no sound
silence	lea   1/PCMMUTE(pc),	a3	;:056a
	bra.s	  .PCMIRQ2
	;found sound, ptr -> A1
found1	movea.l	   _PCM(a0),	a1
	bsr	      1/PCMSEEK(pc)
	bra.s	  .next2

	;find next-highest sound
find2	btst.l		d0,	d1
	bne.s	  .found2
next2	suba.w	       #16,	a0
	dbra		d0, .find2
	; -> (mono)
mono	lea   1/PCM1CH(pc),	a3	;:057e
	move.l	       d1, _MAP(a5)
	bra.s	  .PCMIRQ2
	;found		  -> A2
found2	movea.l	  _PCM(a0),	a2
	bsr.s	      1/PCMSEEK(pc)
	bra.s	  .next3

	;advance any other sounds
find3	btst.l		d0,	d1
	beq.s	  .next3
found3	bsr.s	      1/PCMSEEK(pc)
next3	suba.w	       #16,	a0
	dbra		d0, .find3
	;all done -> (stereo)
stereo	lea   1/PCM2CH(pc),	a3	;:05a0
	move.l	       d1, _MAP(a5)

	;D3.B/last PCM value
PCMIRQ2	move.b	 _LAST(a5),	d3
	move.b	 SdVolume.w,	d0
	andi.w	#%00000111,	d0
	bne.s	  .PCMIRQ3
	;volume 0 -> (mute)
mute	lea   1/PCMMUTE(pc),	a3
	;fill sound buffer [+wrap..end]
PCMIRQ3	movea.l	SoundBase.w,	a0
	adda.w	  _WRAP(a5),	a0
	move.w	      #370,	d0
	sub.w	 _WRPW(a5),	d0
	lsr.w		#1,	d0
	subq.w		#1,	d0
	;A3/(PCMFunc *) PCMMUTE|1CH|2CH
fill1	jsr		       (a3)
	;fill buf[start..+wrap], save last val
PCMIRQ4	movea.l	SoundBase.w,	a0
	move.w	 _WRPW(a5),	d0
	lsr.w		#1,	d0
	subq.w		#1,	d0
fill2	jsr		       (a3)
	move.b	 d3,	  _LAST(a5)
	;reschedule IRQ -> next Vs
ENDIRQ	move.w	 #1, vblCount+_IRQ(a5)
	movem.l	(sp)+,	        d4/a5
	rts	
