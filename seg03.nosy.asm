; vi: syntax=asm68k

         Segment  3

         QUAL    proc146 ; b# =300  s#3  =proc146

;-refs -  2/proc116    2/proc120    2/com_10    
;-        2/proc131    2/com_13     2/com_14    
;-        2/com_16     2/com_18     2/com_19    
;-        2/com_23     2/proc133    2/com_30    
;-        2/com_32     2/proc141    2/com_35    
;-        2/proc145    6/proc304    6/proc305   
;-        6/proc306    7/proc310    7/proc311   
;-        8/proc315    8/proc316    8/proc318   
;-        8/proc319    8/proc321    8/proc322   
;-        8/proc323    8/proc324    8/proc328   
;-        9/proc334    9/proc335   11/   94 
;-       11/proc345   12/proc353   13/proc356   
;-       14/proc359   15/proc362   15/proc363   
;-       16/proc371   

proc146  MOVEM.L D0-D7/A1-A6,-(A7)
         SUB     18(A0),D0
         SUB     20(A0),D1
         MOVE    D0,D7
         ANDI    #$F,D0
         SUBI    #16,D0
         NEG     D0
         ASR     #3,D7
         ANDI    #$FFFE,D7
         MOVE    4(A1),D3
         MOVE    6(A1),D4
         ASL     #1,D2
         MULU    8(A1),D2
         ADDI    #14,D2
         MOVEA.L A1,A2
         ADDA.W  8(A1),A2
         ADDA.W  D2,A1
         ADDA.W  D2,A2
         TST     D1
         BGE.S   lgt_1
         ADD     D1,D4
         BLE     lgt_15
         MULU    D3,D1
         ASL     #1,D1
         SUBA.W  D1,A1
         SUBA.W  D1,A2
         CLR     D1
lgt_1    MOVE    D1,D6
         ADD     D4,D6
         SUB     glob244(A5),D6
         BLE.S   lgt_2
         SUB     D6,D4
         BLE     lgt_15
lgt_2    MOVEA   #$40,A6
         MOVEA.L 2(A0),A3
         MOVEA.L 6(A0),A4
         ASL     #6,D1
         TST     D7
         BLT     lgt_5
         MOVE    D3,D5
         ASL     #1,D5
         ADD     D7,D5
         SUBI    #62,D5
         BGT     lgt_9
         ADD     D7,D1
         ADDA.W  D1,A3
         ADDA.W  D1,A4
         MOVEA.L 10(A0),A5
         MOVE    D3,(A5)+
         MOVE    D4,(A5)
         SUBQ    #1,(A5)+
         EXT.L   D1
         MOVE.L  D1,(A5)+
         CMPI    #1,D3
         BEQ     lgt_13
         ASL     #1,D3
         SUBA.W  D3,A6
         ASR     #1,D3
         SUBQ    #2,A6
         MOVE.L  A6,(A5)+
         SUBQ    #1,D3
         SUBQ    #1,D4
lgt_3    MOVE    D3,D2
         MOVE    (A3)+,D7
         MOVE    D7,(A5)+
         MOVE    (A4)+,D1
         SWAP    D7
         SWAP    D1
lgt_4    MOVE    (A3)+,D7
         MOVE    D7,(A5)+
         MOVE    (A4)+,D1
         MOVEQ   #0,D6
         MOVE    (A2)+,D6
         ROL.L   D0,D6
         AND.L   D1,D6
         NOT.L   D6
         AND.L   D6,D7
         MOVEQ   #0,D6
         MOVE    (A1)+,D6
         ROL.L   D0,D6
         AND.L   D1,D6
         OR.L    D6,D7
         SWAP    D7
         MOVE    D7,-4(A3)
         SWAP    D1
         DBRA    D2,lgt_4
         SWAP    D7
         MOVE    D7,-2(A3)
         ADDA.W  A6,A3
         ADDA.W  A6,A4
         DBRA    D4,lgt_3
         MOVE.L  10(A0),(A5)+
         MOVE.L  A5,10(A0)
         BRA     lgt_15
lgt_5    MOVE    D7,D5
         ASR     #1,D5
         NEG     D5
         CMP.W   D5,D3
         BLT     lgt_15
         SUB     D3,D5
         NEG     D5
         ADD     D7,D1
         ADDA.W  D1,A3
         ADDA.W  D1,A4
         MOVEA.L 10(A0),A5
         MOVE    D3,(A5)+
         MOVE    D4,(A5)
         SUBQ    #1,(A5)+
         EXT.L   D1
         MOVE.L  D1,(A5)+
         ASL     #1,D3
         SUBA.W  D3,A6
         ASR     #1,D3
         SUBQ    #2,A6
         MOVE.L  A6,(A5)+
         SUBQ    #1,D3
         SUBQ    #1,D4
lgt_6    MOVE    D3,D2
         MOVE    (A3)+,D7
         MOVE    D7,(A5)+
         MOVE    (A4)+,D1
         SWAP    D7
         SWAP    D1
lgt_7    MOVE    (A3)+,D7
         MOVE    D7,(A5)+
         MOVE    (A4)+,D1
         MOVEQ   #0,D6
         MOVE    (A2)+,D6
         ROL.L   D0,D6
         AND.L   D1,D6
         NOT.L   D6
         AND.L   D6,D7
         MOVEQ   #0,D6
         MOVE    (A1)+,D6
         ROL.L   D0,D6
         AND.L   D1,D6
         OR.L    D6,D7
         SWAP    D7
         CMP.W   D5,D2
         BGE.S   lgt_8
         MOVE    D7,-4(A3)
lgt_8    SWAP    D1
         DBRA    D2,lgt_7
         SWAP    D7
         MOVE    D7,-2(A3)
         ADDA.W  A6,A3
         ADDA.W  A6,A4
         DBRA    D4,lgt_6
         MOVE.L  10(A0),(A5)+
         MOVE.L  A5,10(A0)
         BRA     lgt_15
lgt_9    ASR     #1,D5
         CMP.W   D5,D3
         BLT     lgt_15
         ADD     D7,D1
         ADDA.W  D1,A3
         ADDA.W  D1,A4
         MOVEA.L 10(A0),A5
         MOVE    D3,(A5)+
         MOVE    D4,(A5)
         SUBQ    #1,(A5)+
         EXT.L   D1
         MOVE.L  D1,(A5)+
         ASL     #1,D3
         SUBA.W  D3,A6
         ASR     #1,D3
         SUBQ    #2,A6
         MOVE.L  A6,(A5)+
         SUBQ    #1,D3
         SUBQ    #1,D4
         SUBQ    #1,D5
lgt_10   MOVE    D3,D2
         MOVE    (A3)+,D7
         MOVE    D7,(A5)+
         MOVE    (A4)+,D1
         SWAP    D7
         SWAP    D1
lgt_11   MOVE    (A3)+,D7
         MOVE    D7,(A5)+
         MOVE    (A4)+,D1
         MOVEQ   #0,D6
         MOVE    (A2)+,D6
         ROL.L   D0,D6
         AND.L   D1,D6
         NOT.L   D6
         AND.L   D6,D7
         MOVEQ   #0,D6
         MOVE    (A1)+,D6
         ROL.L   D0,D6
         AND.L   D1,D6
         OR.L    D6,D7
         SWAP    D7
         CMP.W   D2,D5
         BGT.S   lgt_12
         MOVE    D7,-4(A3)
lgt_12   SWAP    D1
         DBRA    D2,lgt_11
         SWAP    D7
         ADDA.W  A6,A3
         ADDA.W  A6,A4
         DBRA    D4,lgt_10
         MOVE.L  10(A0),(A5)+
         MOVE.L  A5,10(A0)
         BRA     lgt_15
lgt_13   MOVEA   #$3C,A6
         MOVE.L  A6,(A5)+
         SUBQ    #1,D4
lgt_14   MOVE.L  (A3)+,D7
         MOVE.L  D7,(A5)+
         MOVE.L  (A4)+,D1
         MOVEQ   #0,D6
         MOVE    (A2)+,D6
         ROL.L   D0,D6
         AND.L   D1,D6
         NOT.L   D6
         AND.L   D6,D7
         MOVEQ   #0,D6
         MOVE    (A1)+,D6
         ROL.L   D0,D6
         AND.L   D1,D6
         OR.L    D6,D7
         MOVE.L  D7,-4(A3)
         ADDA.W  A6,A3
         ADDA.W  A6,A4
         DBRA    D4,lgt_14
         MOVE.L  10(A0),(A5)+
         MOVE.L  A5,10(A0)
         BRA     lgt_15
lgt_15   MOVEM.L (A7)+,D0-D7/A1-A6
         RTS     

         QUAL    proc147 ; b# =301  s#3  =proc147

;-refs -  3/proc186    3/proc188    3/proc190   
;-        3/proc192   

proc147  MOVEM.L D0-D7/A1-A4/A6,-(A7)
         MOVE    D0,D3
         ANDI    #$F,D0
         ASR     #3,D3
         ANDI    #$FFFE,D3
         MOVE    4(A1),D4
         SUBQ    #1,D4
         EXT.L   D4
         MOVE    6(A1),D5
         SUBQ    #1,D5
         EXT.L   D5
         ASL     #1,D2
         MULU    8(A1),D2
         MOVEA.L A1,A3
         ADDA.W  #14,A3
         ADDA.L  D2,A3
         MOVEA.L A3,A4
         ADDA.W  8(A1),A4
         TST     D1
         BGE.S   lgu_1
         NEG     D1
         SUB     D1,D5
         BLE     lgu_4
         ADDQ.L  #1,D4
         MULU    D4,D1
         SUBQ.L  #1,D4
         ASL.L   #1,D1
         ADDA.L  D1,A3
         ADDA.L  D1,A4
         MOVEQ   #0,D1
lgu_1    MOVE    (A0),D6
         EXT.L   D6
         MOVEA.L 2(A0),A1
         MULU    D6,D1
         EXT.L   D3
         ADD.L   D3,D1
         ADDA.L  D1,A1
         ASL.L   #1,D4
         SUB.L   D4,D6
         ASR.L   #1,D4
         SUBQ.L  #4,D6
lgu_2    MOVE.L  D4,D7
         MOVE    (A1)+,D1
         SWAP    D1
lgu_3    MOVE    (A1)+,D1
         MOVE    (A4)+,D3
         SWAP    D3
         CLR     D3
         ROR.L   D0,D3
         NOT.L   D3
         AND.L   D3,D1
         MOVE    (A3)+,D3
         SWAP    D3
         CLR     D3
         ROR.L   D0,D3
         OR.L    D3,D1
         SWAP    D1
         MOVE    D1,-4(A1)
         DBRA    D7,lgu_3
         SWAP    D1
         MOVE    D1,-2(A1)
         ADDA.L  D6,A1
         DBRA    D5,lgu_2
lgu_4    MOVEM.L (A7)+,D0-D7/A1-A4/A6
         RTS     

         QUAL    proc148 ; b# =302  s#3  =proc148

;-refs -  3/proc187    3/proc189    3/proc191   

proc148  MOVEM.L D0-D7/A1-A4/A6,-(A7)
         MOVE    D0,D3
         ANDI    #$F,D0
         ASR     #3,D3
         ANDI    #$FFFE,D3
         MOVE    4(A1),D4
         SUBQ    #1,D4
         EXT.L   D4
         MOVE    6(A1),D5
         SUBQ    #1,D5
         EXT.L   D5
         ASL     #1,D2
         MULU    8(A1),D2
         MOVEA.L A1,A3
         ADDA.W  #14,A3
         ADDA.L  D2,A3
         MOVEA.L A3,A4
         ADDA.W  8(A1),A4
         TST     D1
         BGE.S   lgv_1
         NEG     D1
         SUB     D1,D5
         BLE     lgv_4
         ADDQ.L  #1,D4
         MULU    D4,D1
         SUBQ.L  #1,D4
         ASL.L   #1,D1
         ADDA.L  D1,A3
         ADDA.L  D1,A4
         MOVEQ   #0,D1
lgv_1    MOVE    (A0),D6
         EXT.L   D6
         MOVEA.L 2(A0),A1
         MULU    D6,D1
         EXT.L   D3
         ADD.L   D3,D1
         ADDA.L  D1,A1
         ASL.L   #1,D4
         SUB.L   D4,D6
         ASR.L   #1,D4
         SUBQ.L  #4,D6
lgv_2    MOVE.L  D4,D7
         MOVE    (A1)+,D1
         SWAP    D1
lgv_3    MOVE    (A1)+,D1
         MOVE    (A4)+,D3
         SWAP    D3
         CLR     D3
         ROR.L   D0,D3
         OR.L    D3,D1
         SWAP    D1
         MOVE    D1,-4(A1)
         DBRA    D7,lgv_3
         SWAP    D1
         MOVE    D1,-2(A1)
         ADDA.L  D6,A1
         DBRA    D5,lgv_2
lgv_4    MOVEM.L (A7)+,D0-D7/A1-A4/A6
         RTS     

         QUAL    proc149 ; b# =303  s#3  =proc149


proc149  MOVEM.L D0-D7/A1-A4/A6,-(A7)
         MOVE    D0,D3
         ANDI    #$F,D0
         ASR     #3,D3
         ANDI    #$FFFE,D3
         MOVE    4(A1),D4
         SUBQ    #1,D4
         EXT.L   D4
         MOVE    6(A1),D5
         SUBQ    #1,D5
         EXT.L   D5
         ASL     #1,D2
         MULU    8(A1),D2
         MOVEA.L A1,A3
         ADDA.W  #14,A3
         ADDA.L  D2,A3
         MOVEA.L A3,A4
         ADDA.W  8(A1),A4
         TST     D1
         BGE.S   lgw_1
         NEG     D1
         SUB     D1,D5
         BLE     lgw_4
         ADDQ.L  #1,D4
         MULU    D4,D1
         SUBQ.L  #1,D4
         ASL.L   #1,D1
         ADDA.L  D1,A3
         ADDA.L  D1,A4
         MOVEQ   #0,D1
lgw_1    MOVEA.L 10(A0),A6
         MOVE    D4,(A6)
         ADDQ    #1,(A6)+
         MOVE    D5,(A6)+
         MOVE    (A0),D6
         EXT.L   D6
         MOVEA.L 2(A0),A1
         MULU    D6,D1
         EXT.L   D3
         ADD.L   D3,D1
         MOVE.L  D1,(A6)+
         ADDA.L  D1,A1
         ASL.L   #1,D4
         SUB.L   D4,D6
         ASR.L   #1,D4
         SUBQ.L  #4,D6
         MOVE.L  D6,(A6)+
lgw_2    MOVE.L  D4,D7
         MOVE    (A1)+,D1
         MOVE    D1,(A6)+
         SWAP    D1
lgw_3    MOVE    (A1)+,D1
         MOVE    D1,(A6)+
         MOVE    (A4)+,D3
         SWAP    D3
         CLR     D3
         ROR.L   D0,D3
         NOT.L   D3
         AND.L   D3,D1
         MOVE    (A3)+,D3
         SWAP    D3
         CLR     D3
         ROR.L   D0,D3
         OR.L    D3,D1
         SWAP    D1
         MOVE    D1,-4(A1)
         DBRA    D7,lgw_3
         SWAP    D1
         MOVE    D1,-2(A1)
         ADDA.L  D6,A1
         DBRA    D5,lgw_2
         MOVE.L  10(A0),(A6)+
         MOVE.L  A6,10(A0)
lgw_4    MOVEM.L (A7)+,D0-D7/A1-A4/A6
         RTS     

         QUAL    proc150 ; b# =304  s#3  =proc150

;-refs -  2/com_35     9/proc335   

proc150  MOVEM.L D0-D7/A1-A4/A6,-(A7)
         MOVE    D0,D3
         ANDI    #$F,D0
         ASR     #3,D3
         ANDI    #$FFFE,D3
         MOVE    4(A1),D4
         SUBQ    #1,D4
         EXT.L   D4
         MOVE    6(A1),D5
         SUBQ    #1,D5
         EXT.L   D5
         MULU    8(A1),D2
         MOVEA.L A1,A3
         ADDA.W  #14,A3
         ADDA.L  D2,A3
         TST     D1
         BGE.S   lgx_1
         NEG     D1
         SUB     D1,D5
         BLE     lgx_4
         ADDQ.L  #1,D4
         MULU    D4,D1
         SUBQ.L  #1,D4
         ASL.L   #1,D1
         ADDA.L  D1,A3
         MOVEQ   #0,D1
lgx_1    MOVEA.L 10(A0),A6
         MOVE    D4,(A6)
         ADDQ    #1,(A6)+
         MOVE    D5,(A6)+
         MOVE    (A0),D6
         EXT.L   D6
         MOVEA.L 6(A0),A2
         MOVEA.L 2(A0),A1
         MULU    D6,D1
         EXT.L   D3
         ADD.L   D3,D1
         MOVE.L  D1,(A6)+
         ADDA.L  D1,A1
         ADDA.L  D1,A2
         ASL.L   #1,D4
         SUB.L   D4,D6
         ASR.L   #1,D4
         SUBQ.L  #4,D6
         MOVE.L  D6,(A6)+
lgx_2    MOVE.L  D4,D7
         MOVE    (A1)+,D1
         MOVE    D1,(A6)+
         MOVE    (A2)+,D2
         SWAP    D1
         SWAP    D2
lgx_3    MOVE    (A1)+,D1
         MOVE    D1,(A6)+
         MOVE    (A2)+,D2
         MOVE    #$FFFF,D3
         SWAP    D3
         CLR     D3
         ROR.L   D0,D3
         AND.L   D2,D3
         NOT.L   D3
         AND.L   D3,D1
         MOVE    (A3)+,D3
         SWAP    D3
         CLR     D3
         ROR.L   D0,D3
         AND.L   D2,D3
         OR.L    D3,D1
         SWAP    D1
         MOVE    D1,-4(A1)
         SWAP    D2
         DBRA    D7,lgx_3
         SWAP    D1
         MOVE    D1,-2(A1)
         ADDA.L  D6,A1
         ADDA.L  D6,A2
         DBRA    D5,lgx_2
         MOVE.L  10(A0),(A6)+
         MOVE.L  A6,10(A0)
lgx_4    MOVEM.L (A7)+,D0-D7/A1-A4/A6
         RTS     

         QUAL    proc151 ; b# =305  s#3  =proc151


proc151  MOVEM.L D0-D7/A1-A4/A6,-(A7)
         MOVE    D0,D3
         ANDI    #$F,D0
         ASR     #3,D3
         ANDI    #$FFFE,D3
         MOVE    4(A1),D4
         SUBQ    #1,D4
         EXT.L   D4
         MOVE    6(A1),D5
         SUBQ    #1,D5
         EXT.L   D5
         MULU    8(A1),D2
         MOVEA.L A1,A3
         ADDA.W  #14,A3
         ADDA.L  D2,A3
         TST     D1
         BGE.S   lgy_1
         NEG     D1
         SUB     D1,D5
         BLE     lgy_4
         ADDQ.L  #1,D4
         MULU    D4,D1
         SUBQ.L  #1,D4
         ASL.L   #1,D1
         ADDA.L  D1,A3
         MOVEQ   #0,D1
lgy_1    MOVEA.L 10(A0),A6
         MOVE    D4,(A6)
         ADDQ    #1,(A6)+
         MOVE    D5,(A6)+
         MOVE    (A0),D6
         EXT.L   D6
         MOVEA.L 2(A0),A1
         MULU    D6,D1
         EXT.L   D3
         ADD.L   D3,D1
         MOVE.L  D1,(A6)+
         ADDA.L  D1,A1
         ASL.L   #1,D4
         SUB.L   D4,D6
         ASR.L   #1,D4
         SUBQ.L  #4,D6
         MOVE.L  D6,(A6)+
lgy_2    MOVE.L  D4,D7
         MOVE    (A1)+,D1
         MOVE    D1,(A6)+
         SWAP    D1
lgy_3    MOVE    (A1)+,D1
         MOVE    D1,(A6)+
         MOVE    #$FFFF,D3
         SWAP    D3
         CLR     D3
         ROR.L   D0,D3
         NOT.L   D3
         AND.L   D3,D1
         MOVE    (A3)+,D3
         SWAP    D3
         CLR     D3
         ROR.L   D0,D3
         OR.L    D3,D1
         SWAP    D1
         MOVE    D1,-4(A1)
         DBRA    D7,lgy_3
         SWAP    D1
         MOVE    D1,-2(A1)
         ADDA.L  D6,A1
         DBRA    D5,lgy_2
         MOVE.L  10(A0),(A6)+
         MOVE.L  A6,10(A0)
lgy_4    MOVEM.L (A7)+,D0-D7/A1-A4/A6
         RTS     


data120  DC.W    $48E7,$FF7A,$3600,$240,$F,$E643,$243,$FFFE
         DC.W    $3829,4,$5344,$48C4,$3A29,6,$5345,$48C5
         DC.W    $C4E9,8,$2649,$D6FC,$E,$D7C2,$4A41,$6C14
         DC.W    $4441,$9A41,$6F00,$68,$5284,$C2C4,$5384,$E381
         DC.W    $D7C1,$7200,$2C68,$A,$3C84,$525E,$3CC5,$3C10
         DC.W    $48C6,$2268,2,$C2C6,$48C3,$D283,$2CC1,$D3C1
         DC.W    $E384,$9C84,$E284,$5986,$2CC6,$2E04,$3219,$3CC1
         DC.W    $4841,$3219,$3CC1,$361B,$4843,$4243,$E0BB,$8283
         DC.W    $4841,$3341,$FFFC,$51CF,$FFEA,$4841,$3341,$FFFE
         DC.W    $D3C6,$51CD,$FFD6,$2CE8,$A,$214E,$A,$4CDF
         DC.W    $5EFF,$4E75

         QUAL    proc152 ; b# =307  s#3  =proc152

;-refs - 11/proc348   

proc152  MOVEM.L D0-D5/A2-A4,-(A7)
         LEA     14(A1),A2
         MULU    8(A1),D2
         ADDA.L  D2,A2
         ASR     #3,D0
         ANDI    #$FFFE,D0
         EXT.L   D0
         MOVEA.L 2(A0),A4
         MOVE    D1,D4
         MULU    (A0),D4
         ADDA.L  D4,A4
         ADDA.L  D0,A4
         MOVE    4(A1),D1
         ASR     #1,D1
         SUBQ    #1,D1
         EXT.L   D1
         MOVE    6(A1),D2
         SUBQ    #1,D2
         EXT.L   D2
         MOVE    (A0),D5
         ASL     #2,D1
         SUB     D1,D5
         SUBQ    #4,D5
         EXT.L   D5
         ASR     #2,D1
lgz_1    MOVE.L  D1,D3
lgz_2    MOVE.L  (A2)+,D0
         EOR.L   D0,(A4)+
         DBRA    D3,lgz_2
         ADDA.L  D5,A4
         DBRA    D2,lgz_1
         MOVEM.L (A7)+,D0-D5/A2-A4
         RTS     

         QUAL    proc153 ; b# =308  s#3  =proc153

;-refs -  3/proc154    3/proc158    3/proc161   

proc153  MOVEM.L D3-D4/A2-A3,-(A7)
         MOVEA.L 10(A1),A0
lha_1    MOVEA.L -(A0),A0
         CMPA.W  #0,A0
         BEQ.S   lha_7
         MOVE.L  A0,10(A1)
         MOVEA.L A0,A2
         MOVE    (A2)+,D0
         MOVE    (A2)+,D1
         MOVE.L  (A2)+,D2
         MOVE.L  (A2)+,D3
         MOVEA.L 2(A1),A3
         ADDA.L  D2,A3
         SUBQ    #1,D0
         BTST    #0,D0
         BEQ.S   lha_4
         ASR     #1,D0
lha_2    MOVE    D0,D4
lha_3    MOVE.L  (A2)+,(A3)+
         DBRA    D4,lha_3
         MOVE    (A2)+,(A3)+
         ADDA.L  D3,A3
         DBRA    D1,lha_2
         BRA     lha_1
lha_4    ASR     #1,D0
lha_5    MOVE    D0,D4
lha_6    MOVE.L  (A2)+,(A3)+
         DBRA    D4,lha_6
         ADDA.L  D3,A3
         DBRA    D1,lha_5
         BRA     lha_1
lha_7    MOVEM.L (A7)+,D3-D4/A2-A3
         RTS     

         QUAL    proc154 ; b# =309  s#3  =proc154

;-refs -  4/proc244   

proc154  PUSH.L  A5
         MOVEA.L CurrentA5,A5
         MOVEA.L glob250(A5),A1
         CMPA.W  #0,A1
         BEQ.S   lhb_2
         MOVEA.L glob251(A5),A0
         MOVE    #5,10(A0)
         MOVE.L  glob248(A5),D0
         BEQ.S   lhb_1
         MOVEA.L D0,A0
         JSR     (A0)
lhb_1    BSR     proc153
         CLR.L   glob250(A5)
         SF      glob249(A5)
         BRA.S   lhb_3
lhb_2    MOVEA.L glob251(A5),A0
         MOVE    #1,10(A0)
lhb_3    POP.L   A5
         RTS     

         QUAL    proc155 ; b# =310  s#3  =proc155

;-refs -  4/proc244   

proc155  PUSH.L  A5
         MOVEA.L CurrentA5,A5
         TST.B   glob246(A5)
         BNE.S   lhc_1
         TST.B   glob249(A5)
         BEQ.S   lhc_4
lhc_1    MOVEA.L VIA,A0
         ADDA.W  #$1E00,A0
         MOVE.L  glob253(A5),D0
         LEA     glob269(A5),A1
         CMPA.L  D0,A1
         BNE.S   lhc_2
         LEA     glob262(A5),A1
         MOVE.L  A1,glob253(A5)
         BSET    #6,(A0)
         MOVE.L  A1,glob250(A5)
         BRA.S   lhc_3
lhc_2    LEA     glob269(A5),A1
         MOVE.L  A1,glob253(A5)
         BCLR    #6,(A0)
         MOVE.L  A1,glob250(A5)
lhc_3    MOVEA.L glob252(A5),A0
         MOVE    #5,10(A0)
         BRA.S   lhc_5
lhc_4    MOVEA.L glob252(A5),A0
         MOVE    #1,10(A0)
         ADDQ    #1,glob247(A5)
lhc_5    MOVEM.L (A7)+,A5
         RTS     

         QUAL    proc156 ; b# =311  s#3  =proc156

;-refs -  4/proc244   

proc156  PUSH.L  A5
         MOVEA.L CurrentA5,A5
         TST.B   glob246(A5)
         BNE.S   lhd_1
         TST.B   glob249(A5)
         BEQ.S   lhd_2
lhd_1    MOVEA.L glob253(A5),A1
         MOVE.L  A1,glob250(A5)
         MOVEA.L glob252(A5),A1
         MOVE    #5,10(A1)
         BRA.S   lhd_3
lhd_2    MOVEA.L glob252(A5),A1
         MOVE    #1,10(A1)
         ADDQ    #1,glob247(A5)
lhd_3    POP.L   A5
         RTS     

         QUAL    proc157 ; b# =312  s#3  =proc157

;-refs -  4/proc244   

proc157  PUSH.L  A5
         MOVEA.L CurrentA5,A5
         TST.B   glob246(A5)
         BNE.S   lhe_1
         TST.B   glob249(A5)
         BEQ.S   lhe_4
lhe_1    MOVE.L  glob253(A5),D0
         LEA     glob269(A5),A1
         CMPA.L  D0,A1
         BNE.S   lhe_2
         LEA     glob262(A5),A1
         MOVE.L  A1,glob253(A5)
         MOVE.L  A1,glob250(A5)
         BRA.S   lhe_3
lhe_2    LEA     glob269(A5),A1
         MOVE.L  A1,glob253(A5)
         MOVE.L  A1,glob250(A5)
lhe_3    MOVEA.L glob252(A5),A0
         MOVE    #5,10(A0)
         BRA.S   lhe_5
lhe_4    MOVEA.L glob252(A5),A0
         MOVE    #1,10(A0)
         ADDQ    #1,glob247(A5)
lhe_5    MOVEM.L (A7)+,A5
         RTS     

         QUAL    proc158 ; b# =313  s#3  =proc158

;-refs -  3/proc176    5/proc258    5/proc268   
;-        5/proc294    5/proc299   

proc158  ST      glob249(A5)
         TST.B   glob129(A5)
         BNE.S   lhf_3
         CLR     glob202(A5)
lhf_1    ADDQ    #1,glob202(A5)
         MOVE    #5,D0
lhf_2    NOP     
         DBRA    D0,lhf_2
         TST.B   glob249(A5)
         BNE     lhf_1
         BRA.S   lhf_9
lhf_3    CLR     glob202(A5)
lhf_4    ADDQ    #1,glob202(A5)
         MOVE    #5,D0
lhf_5    NOP     
         DBRA    D0,lhf_5
         MOVEA.L glob250(A5),A1
         CMPA.W  #0,A1
         BEQ     lhf_4
         MOVE.L  glob253(A5),D0
         LEA     glob269(A5),A1
         CMPA.L  D0,A1
         BNE.S   lhf_6
         PEA     glob260(A5)
         JSR     proc110(A5)
         BRA.S   lhf_7
lhf_6    PEA     glob258(A5)
         JSR     proc110(A5)
lhf_7    MOVEA.L glob250(A5),A1
         MOVE.L  glob248(A5),D0
         BEQ.S   lhf_8
         MOVEA.L D0,A0
         JSR     (A0)
lhf_8    JSR     proc153
         CLR.L   glob250(A5)
         SF      glob249(A5)
lhf_9    RTS     

         QUAL    proc159 ; b# =314  s#3  =proc159

;-refs -  3/proc160   

proc159  PUSH.L  D3
         MOVE    (A1),D3
         EXT.L   D3
         DIVU    #$3E8,D3
         SWAP    D3
         ASL     #2,D3
         EXT.L   D3
         JSR     data121(D3.W)
         POP.L   D3
         RTS     

;-refs -  3/proc159   

data121  DC.W    $4EFA,$F746,$4EFA,$F742,$4EFA,$F73E,$4EFA,$FAA6
         DC.W    $4EFA,$FC22,$4EFA,$FB58,$4EED,$4F2,$4EFA,$FCC8
         DC.W    $4EFA,$FB4C,$4EFA,$FA8E

         QUAL    proc160 ; b# =316  s#3  =proc160

;-refs -  5/proc252    5/proc258    5/proc262   
;-        5/proc264   

proc160  POP.L   ApplScratch+8
         POP.L   A1
         POP.L   A0
         POP     D2
         POP     D1
         POP     D0
         PUSH.L  ApplScratch+8
         MOVEM.L D3-D7/A2-A4,-(A7)
         JSR     proc159
         MOVEM.L (A7)+,D3-D7/A2-A4
         RTS     

         QUAL    proc161 ; b# =317  s#3  =proc161

;-refs -  5/proc258    5/proc271    5/proc294   
;-        5/proc299   

proc161  POP.L   A2
         POP.L   A1
         PUSH.L  A2
         JSR     proc153
         RTS     

         QUAL    proc162 ; b# =318  s#3  =proc162

;-refs -  1/proc83     1/proc85     1/proc90    
;-        1/proc92     1/proc98     1/proc114   
;-        5/proc299   

proc162  TST.B   glob129(A5)
         BNE.S   lhj_1
         MOVEA.L VIA,A0
         ADDA.W  #$1E00,A0
         BSET    #6,(A0)
lhj_1    RTS     

         QUAL    proc163 ; b# =319  s#3  =proc163

;-refs -  1/proc82     5/proc258    5/proc299   

proc163  TST.B   glob129(A5)
         BNE.S   lhk_1
         MOVEA.L VIA,A0
         ADDA.W  #$1E00,A0
         BCLR    #6,(A0)
lhk_1    RTS     

         QUAL    proc164 ; b# =320  s#3  =proc164

;-refs -  8/proc330    9/proc336   25/proc402   

proc164  MOVEA.L A0,A2
         MOVEQ   #42,D0
         _NewPtr ,CLEAR; (D0/byteCount:Size):A0\Ptr 
         LEA     data122,A1
         MOVE.L  A1,4(A0)
         MOVEQ   #15,D0
         MOVEA.L A0,A1
         ADDQ    #8,A1
lhl_1    MOVE    (A2)+,(A1)+
         DBRA    D0,lhl_1
         JSR     proc219
         AND     30(A0),D0
         ADD     28(A0),D0
         MOVE    D0,40(A0)
         MOVE.L  glob204(A5),(A0)
         MOVE.L  A0,glob204(A5)
         RTS     

;-refs -  3/proc164   

data122  DC.W    $4A6E,$18,$6F00,$18E,$536E,$20,$6E00,$186
         DC.W    $536E,$18,$204E,$224E,$4EBA,$37E6,$3E00,$3616
         DC.W    $4EFB,$3002,$4EFA,6,$4EFA,$A0,$C6D,8
         DC.W    $FEA8,$6700,$14,$C6D,5,$FEA8,$6700,$A
         DC.W    $6100,$154,$6000,$142,$286D,$FFA0,$362C,$14
         DC.W    $B66E,4,$6E00,$A0,$643,$124,$B66E,4
         DC.W    $6D00,$94,$342C,$12,$266D,$FF3C,$4A6B,$26
         DC.W    $6E2A,$B46E,8,$6D00,$7E,$642,$200,$B46E
         DC.W    $A,$6E00,$72,$3D7C,6,6,$442,$220
         DC.W    $3D42,2,$6100,$100,$6000,$EE,$642,$200
         DC.W    $B46E,$A,$6E00,$50,$442,$200,$B46E,8
         DC.W    $6D00,$44,$3D7C,$FFFA,6,$642,$200,$3D42
         DC.W    2,$6100,$D2,$6000,$C0,$286D,$FFA0,$342C
         DC.W    $12,$B46E,$1E,$6E1E,$642,$200,$B46E,$1A
         DC.W    $6D14,$362C,$14,$B66E,$10,$6E0A,$643,$124
         DC.W    $B66E,4,$6C08,$526E,$18,$6000,$8C,$C47
         DC.W    $5555,$6208,$3D6E,$1A,$E,$6014,$C47,$AAAA
         DC.W    $6208,$3D6E,$1C,$E,$6006,$3D6E,$1E,$E
         DC.W    $322C,$14,$3F2E,4,$3F16,$3F2E,2,$B26E
         DC.W    4,$6F42,$266D,$FF3C,$4A6B,$12,$6F22,$641
         DC.W    $14A,$B26E,$10,$6D06,$441,$14A,$6012,$3D41
         DC.W    4,$3D6E,$E,2,$5E6E,2,$30BC,$C
         DC.W    $441,$1C,$3D41,4,$3D6E,$E,2,$5E6E
         DC.W    2,$30BC,$C,$6100,$1E,$3D5F,2,$3C9F
         DC.W    $3D5F,4,$6000,2,$CE6E,$16,$DE6E,$14
         DC.W    $3D47,$20,$4E75,$2448,$2649,$703C,$A31E,$43FA
         DC.W    $8C,$2149,4,$214B,$20,$317C,$3C,$1E
         DC.W    $7009,$2248,$5049,$32DA,$51C8,$FFFC,$3168,$A
         DC.W    $2C,$3168,$C,$2E,$317C,6,$30,$C68
         DC.W    $C,8,$660E,$317C,8,$36,$317C,$18
         DC.W    $38,$600C,$317C,$18,$36,$317C,4,$38
         DC.W    $2848,$48E7,$C0,$41ED,$FA0C,$43EC,$24,$2348
         DC.W    4,$2290,$2089,$2051,$B0FC,0,$6704,$2149
         DC.W    4,$4CDF,$300,$20AD,$FEFE,$2B48,$FEFE,$3F00
         DC.W    $303C,$13,$4EAD,$42,$301F,$4E75,$302E,2
         DC.W    $322E,4,$3416,$4EFB,$2002,$4EFA,$14E,$4EFA
         DC.W    $E8,$4EFA,$98,$4EFA,$4E,$4EFA,6,$4EFA
         DC.W    $212,$641,$A,$3D41,4,$B26E,$12,$6D22
         DC.W    $4256,$426E,$14,$322E,$12,$641,$B,$3D41
         DC.W    4,$3D7C,$18,$2E,$3D7C,4,$30,$6000
         DC.W    $10A,$226D,$F7AC,$343C,6,$6000,$21E,1
         DC.W    $2FF,$304,$5FF,$B26E,$10,$6D0A,$3CBC,$10
         DC.W    $426E,$14,$60AC,$226D,$F7AC,$342E,$14,$526E
         DC.W    $14,$4A2E,6,$6D06,$143B,$201E,$6004,$143B
         DC.W    $2014,$4882,$6C00,$1E4,$426E,$14,$5041,$3D41
         DC.W    4,$60D6,1,$2FF,$304,$5FF,$362E,$14
         DC.W    $526E,$14,$143B,$303A,$4882,$6C24,$3CBC,$C
         DC.W    $426E,$14,$5E40,$3D40,2,$641,$A,$3D41
         DC.W    4,$3D7C,8,$2E,$3D7C,$18,$30,$6086
         DC.W    $226D,$F7A8,$4A6E,6,$6D02,$5E42,$6000,$18C
         DC.W    1,$203,$405,$6FF,$D06E,6,$4A6E,6
         DC.W    $6E1E,$B06E,$E,$6E1E,$3CBC,8,$302E,$E
         DC.W    $3D40,2,$5E41,$3D41,4,$426E,$14,$608C
         DC.W    $B06E,$E,$6CE2,$3D40,2,$226D,$F708,$342E
         DC.W    $14,$526E,$14,$4A2E,6,$6D06,$143B,$2018
         DC.W    $6004,$143B,$200E,$4882,$6C00,$130,$426E,$14
         DC.W    $60DC,1,$2FF,$304,$5FF,$C6E,1,$32
         DC.W    $660A,$D06E,6,$426E,$32,$602E,$D06E,6
         DC.W    $B06E,8,$6E08,$3D7C,6,6,$600C,$B06E
         DC.W    $A,$6D12,$3D7C,$FFFA,6,$3F00,$303C,$13
         DC.W    $4EAD,$42,$301F,$3D40,2,$266D,$FF3C,$C6B
         DC.W    $D,$1A,$6700,$5C,$C6B,$25,$1A,$6700
         DC.W    $52,$382B,$14,$3A2B,$16,$645,$28,$B245
         DC.W    $6E40,$445,$1E,$B245,$6D38,$D86E,$C,$B044
         DC.W    $6E30,$986E,$C,$986E,$C,$B044,$6D24,$D86E
         DC.W    $C,$B840,$6D0E,$B86E,$A,$6E16,$3D7C,6
         DC.W    6,$600E,$B86E,8,$6D08,$3D7C,$FFFA,6
         DC.W    $4E71,$226D,$F708,$342E,$14,$526E,$14,$4A2E
         DC.W    6,$6D06,$143B,$2018,$6004,$143B,$200E,$4882
         DC.W    $6C00,$58,$426E,$14,$60DC,1,$2FF,$304
         DC.W    $5FF,$206D,$FFA0,$342E,$14,$4EFB,$2002,$4EFA
         DC.W    $12,$4EFA,$E,$4EFA,$1C,$4EFA,$18,$4EFA
         DC.W    $14,$226D,$F86C,$5541,$4242,$4A6E,6,$6D02
         DC.W    $5242,$600A,$226D,$F868,$5D40,$4242,$4E71,$4EBA
         DC.W    $F1F8,$42AE,$FFFC,$6000,$BE,$206D,$FFA0,$4EBA
         DC.W    $F1E8,$3D40,$24,$3D41,$26,$41ED,$FF1C,$4EBA
         DC.W    $2FC2,$6752,$42A8,8,$3F00,$303C,$3D,$4EAD
         DC.W    $42,$301F,$303C,$22,$4EBA,$325A,$3D56,$14
         DC.W    $3CBC,$14,$48E7,$C0,$43EE,$1C,$2069,4
         DC.W    $2251,$2089,$B2FC,0,$6704,$2348,4,$4CDF
         DC.W    $300,$206E,$18,$B0FC,0,$6700,$5A,$5268
         DC.W    $18,$6000,$52,$41ED,$FA14,$4EBA,$30A8,$B0FC
         DC.W    0,$66A4,$4A2D,$FF87,$673C,$206D,$FFA0,$3428
         DC.W    $12,$302E,2,$B440,$6E24,$642,$200,$B440
         DC.W    $6D1C,$322E,4,$3628,$14,$B641,$6E10,$643
         DC.W    $12C,$B641,$6D08,$3D7C,$3C,$16,$6008,$536E
         DC.W    $16,$6F00,$FF78,$4E75

         QUAL    proc165 ; b# =322  s#3  =proc165

;-refs -  3/proc166    3/proc168   

proc165  MOVE    D0,D6
         MOVE    D1,D7
         MOVE.L  A0,D5
         MOVE.L  A1,D4
         MOVE.L  A2,D3
         MOVEQ   #40,D0
         ADD     D2,D0
         _NewPtr ,CLEAR; (D0/byteCount:Size):A0\Ptr 
         LEA     data124,A1
         MOVE.L  A1,4(A0)
         MOVE.L  A4,32(A0)
         MOVE    D6,8(A0)
         MOVE    D7,10(A0)
         LEA     data123,A4
         MOVE.L  A4,12(A0)
         CLR     16(A0)
         CLR     18(A0)
         MOVE.L  D5,20(A0)
         MOVE.L  D4,24(A0)
         MOVE.L  D3,28(A0)
         LEA     40(A0),A4
         ASR     #1,D2
         BRA.S   lhm_2
lhm_1    MOVE    (A3)+,(A4)+
lhm_2    DBRA    D2,lhm_1
         MOVE.L  glob204(A5),(A0)
         MOVE.L  A0,glob204(A5)
         RTS     

;-refs -  3/proc165   

data123  DC.W    0,$FF

;-refs -  3/proc165   

data124  DC.W    $3016,$322E,2,$206E,$18,$B0FC,0,$6702
         DC.W    $4E90,$266E,4,$D6EE,8,$586E,8,$4A2B
         DC.W    3,$6C24,$536E,$A,$6E18,$206E,$C,$4E90
         DC.W    $2D48,4,$426E,8,$3D42,$A,$6D00,$3E
         DC.W    $60D0,$426E,8,$60CA,$161B,$4883,$D043,$161B
         DC.W    $4883,$D243,$161B,$4883,$226E,$10,$2271,$3000
         DC.W    $141B,$4882,$206D,$FFA0,$3C80,$3D41,2,$440
         DC.W    $10,$4EBA,$F060,$206E,$14,$4ED0,$4E75

;-refs -  3/proc166   

data125  DC.W    $342E,$2E,$E542,$4EFB,$2002,$4EFA,$36,$4EFA
         DC.W    $5A,$4EFA,$AC,$4EFA,$258,$4EFA,$296,$4EFA
         DC.W    $B8,$4EFA,$D2,$4EFA,$10C,$4EFA,$14E,$4EFA
         DC.W    $19E,$4EFA,$1B8,$4EFA,$1C6,$4EFA,$1E0,$4EFA
         DC.W    $1FA,$41FA,$FF3A,$343C,$FFFF,$536E,$36,$6E00
         DC.W    $292,$3D7C,1,$2E,$41EE,$1C,$2E3C,$800
         DC.W    0,$4EBA,$2E56,$6000,2,$4A6E,$24,$6706
         DC.W    $41FA,$272,$6004,$41FA,$28C,$343C,1,$3F00
         DC.W    $303C,$40,$4EAD,$42,$301F,$302E,$20,$322E
         DC.W    $22,$3D7C,2,$2E,$48E7,$E0E0,$4EBA,$3120
         DC.W    $C06E,$28,$5540,$3D40,$36,$4CDF,$707,$4A6E
         DC.W    $36,$6E00,$22E,$3D7C,5,$2E,$6000,$224
         DC.W    $536E,$36,$6E06,$3D7C,5,$2E,$41FA,$356
         DC.W    $343C,3,$6000,$20C,$41FA,$24A,$343C,1
         DC.W    $3D7C,6,$2E,$3F00,$303C,$3F,$4EAD,$42
         DC.W    $301F,$6000,$1EE,$41FA,$234,$266D,$FF3C,$342B
         DC.W    $16,$B46E,$44,$6F04,$342E,$44,$B46E,$42
         DC.W    $6C04,$342E,$42,$9441,$442,$12,$6E02,$4242
         DC.W    $48C2,$84FC,$C,$3D42,$3C,$3D7C,7,$2E
         DC.W    $6000,$1B0,$266D,$FF3C,$342B,$14,$B46E,$3E
         DC.W    $6C06,$342E,$3E,$600A,$B46E,$40,$6F04,$342E
         DC.W    $40,$B440,$6E0C,$3D7C,$FFFF,$38,$41FA,$1EE
         DC.W    $600A,$3D7C,1,$38,$41FA,$1D2,$343C,1
         DC.W    $3D7C,8,$2E,$6000,$16A,$266D,$FF3C,$342B
         DC.W    $14,$B46E,$3E,$6C06,$342E,$3E,$600A,$B46E
         DC.W    $40,$6F04,$342E,$40,$9440,$4A6E,$38,$6D0A
         DC.W    $41FA,$1BA,$642,$C,$600A,$41FA,$1B8,$4442
         DC.W    $442,$23,$4A42,$6E02,$4242,$48C2,$84FC,$C
         DC.W    $3D42,$3A,$3D7C,9,$2E,$6000,$116,$4A6E
         DC.W    $38,$6D06,$41FA,$196,$6004,$41FA,$1C4,$343C
         DC.W    1,$3D7C,$A,$2E,$6000,$F8,$41FA,$146
         DC.W    $342E,$3C,$3D7C,$B,$2E,$6000,$E6,$4A6E
         DC.W    $38,$6D06,$41FA,$1CE,$6004,$41FA,$1D8,$343C
         DC.W    1,$3D7C,$C,$2E,$6000,$C8,$4A6E,$38
         DC.W    $6D06,$41FA,$140,$6004,$41FA,$132,$342E,$3A
         DC.W    $3D7C,$D,$2E,$6000,$AA,$4A6E,$38,$6D06
         DC.W    $41FA,$1B2,$6004,$41FA,$1C4,$343C,1,$3D7C
         DC.W    2,$2E,$48E7,$E0E0,$4EBA,$2F64,$C06E,$28
         DC.W    $D06E,$26,$3D40,$36,$4CDF,$707,$6000,$74
         DC.W    $641,$1E,$B06E,$34,$6D14,$B26E,$32,$6D22
         DC.W    $322E,$32,$3D7C,4,$2E,$6000,$26,$B26E
         DC.W    $30,$6D0E,$322E,$30,$3D7C,4,$2E,$6000
         DC.W    $12,$441,$1E,$41FA,$1A0,$343C,1,$6000
         DC.W    $32,$41FA,$1A0,$343C,1,$3F00,$303C,$3D
         DC.W    $4EAD,$42,$301F,$426E,$2E,$48E7,$E0E0,$4EBA
         DC.W    $2EEE,$C06E,$2C,$D06E,$2A,$3D40,$36,$4CDF
         DC.W    $707,$4E75,$E51E,6,$E51E,6,$EE14,6
         DC.W    $F808,6,$F50D,0,$F70E,0,$FB0D,0
         DC.W    0,$FF,$1B1E,5,$1B1E,5,$1214,5
         DC.W    $808,5,$B0D,0,$90E,0,$50D,0
         DC.W    0,$FF,0,0,0,$FF,$C,$A
         DC.W    0,$FF,$F4,9,0,$FF,$608,$F
         DC.W    $608,5,$608,$403,0,$FF,$FA08,$10
         DC.W    $FA08,6,$FA08,$B,0,$FF,$C00,$403
         DC.W    0,$FF,$F400,$B,0,$FF,$8F8,$C
         DC.W    $F8,9,$F8F8,$D,$F800,$B,$F808,$E
         DC.W    8,$A,$808,$F,$C00,$403,$C00,$403
         DC.W    $8F8,$C,$AF6,7,$AF6,7,0,$FF
         DC.W    $F8F8,$11,$F8,9,$8F8,$12,$800,$403
         DC.W    $808,$13,8,$A,$F808,$10,$F400,$B
         DC.W    $F400,$B,$F8F8,$11,$F6F6,8,$F6F6,8
         DC.W    0,$FF,$F0,9,$F8F8,$D,$F4F4,8
         DC.W    0,$FF,$F0,9,$8F8,$12,$CF4,7
         DC.W    0,$FF,$F60A,$E,$F60A,6,$F608,0
         DC.W    $FA06,0,$FA06,0,0,$FF,$A0A,$13
         DC.W    $A0A,5,$A08,0,$606,0,$606,0
         DC.W    0,$FF,0,1,0,1,0,2
         DC.W    0,2,0,3,0,3,0,4
         DC.W    0,4,0,$FF,$19,$10,$19,$F
         DC.W    0,$FF,0,$400,0,$401,0,$402
         DC.W    0,$401,0,$FF

;-refs -  3/proc166   

data126  DC.W    $3D40,$1C,$3D41,$1E,$66E,$10,$1C,$66E
         DC.W    $A,$1E,$41ED,$FF1C,$4EBA,$29BE,$6736,$42A8
         DC.W    8,$41EE,$1C,$4EBA,$2A5C,$303C,$E,$4EBA
         DC.W    $2C5A,$3D7C,3,$2E,$3F00,$303C,$3E,$4EAD
         DC.W    $42,$301F,$41FA,$FAD0,$2D48,4,$426E,8
         DC.W    $426E,$A,$4E75

         QUAL    proc166 ; b# =327  s#3  =proc166

;-refs -  3/proc167   

proc166  MOVE    (A0),D0
         MOVE    2(A0),D1
         MOVE    #38,D2
         MOVEA.L A0,A3
         LEA     data125,A0
         LEA     glob30(A5),A1
         LEA     data126,A2
         SUBA.L  A4,A4
         JSR     proc165
         RTS     

         QUAL    proc167 ; b# =328  s#3  =proc167

;-refs - 12/proc355   14/proc361   21/proc396   

proc167  MOVEA.L A0,A4
         MOVE    (A4)+,D7
         SUBQ    #1,D7
         LEA     data127,A0
         MOVE    (A4)+,16(A0)
         MOVE    (A4)+,18(A0)
         MOVE    (A4)+,20(A0)
         MOVE    (A4)+,30(A0)
         MOVE    (A4)+,32(A0)
         MOVE    (A4)+,34(A0)
         MOVE    (A4)+,36(A0)
         CLR     22(A0)
         CLR     14(A0)
lho_1    MOVEA.L A0,A1
         MOVE.L  (A4)+,(A1)+
         MOVE.L  (A4)+,(A1)+
         MOVE.L  (A4)+,(A1)+
         MOVE    (A4)+,(A1)+
         MOVEM.L D7/A0/A4,-(A7)
         JSR     proc166
         MOVEM.L (A7)+,D7/A0/A4
         DBRA    D7,lho_1
         RTS     

;-refs -  3/proc167   

data127  DZS.W   19

;-refs -  3/proc168   

data128  DC.W    $3E2E,$20,$4EFB,$7002,$4EFA,$30,$4EFA,6
         DC.W    $4EFA,$14,$41FA,$3CE,$342E,$24,$3D7C,8
         DC.W    $20,$6000,$1C6,$41EE,$1C,$2E3C,$400,0
         DC.W    $4EBA,$293A,$426E,$20,$4E71,$48E7,$10,$3F00
         DC.W    $4EBA,$2C2E,$3E00,$301F,$247,$1C,$4EFB,$7002
         DC.W    $4EFA,$1E,$4EFA,$26,$4EFA,$3A,$4EFA,$2A
         DC.W    $4EFA,$B6,$4EFA,$B2,$4EFA,$36,$4EFA,$32
         DC.W    $41FA,$2C2,$343C,1,$6000,$16C,$41FA,$2E2
         DC.W    $343C,1,$6000,$160,$41FA,$2FE,$343C,1
         DC.W    $6000,$154,$41FA,$322,$343C,1,$6000,$148
         DC.W    $266D,$FF3C,$504B,$382B,$C,$3A2B,$E,$644
         DC.W    $10,$645,$14,$244,$FFE0,$245,$FFE0,$3400
         DC.W    $3601,$242,$FFE0,$243,$FFE0,$B840,$6E14,$6724
         DC.W    $BA41,$6D08,$672E,$41FA,$114,$6034,$41FA,$166
         DC.W    $602E,$BA41,$6D08,$6722,$41FA,$12A,$6022,$41FA
         DC.W    $178,$601C,$BA41,$6D06,$41FA,$196,$6012,$41FA
         DC.W    $1B4,$600C,$41FA,$1D6,$6006,$41FA,$1F8,$4E71
         DC.W    $343C,3,$6000,$D0,$266D,$FF3C,$504B,$382B
         DC.W    $C,$3A2B,$E,$644,$10,$645,$14,$244
         DC.W    $FFE0,$245,$FFE0,$3400,$3601,$242,$FFE0,$243
         DC.W    $FFE0,$B840,$6E26,$6748,$243C,$FFFB,5,$BA41
         DC.W    $6D0E,$675A,$41FA,$96,$263C,4,$FFFB,$605E
         DC.W    $41FA,$E2,$263C,$FFFB,5,$6052,$243C,4
         DC.W    $FFFB,$BA41,$6D0E,$673E,$41FA,$9A,$263C,4
         DC.W    $FFFB,$603A,$41FA,$E2,$263C,$FFFB,5,$602E
         DC.W    $7400,$BA41,$6D0C,$41FA,$F8,$263C,$FFFB,5
         DC.W    $601C,$41FA,$110,$263C,4,$FFFB,$6010,$41FA
         DC.W    $154,$7600,$6008,$41FA,$124,$7600,$4E71,$48E7
         DC.W    $C080,$7800,$43ED,$FF14,$206D,$F488,$4EAD,$2D2
         DC.W    $4CDF,$103,$3F00,$303C,9,$4EAD,$42,$301F
         DC.W    $343C,2,$4E71,$4CDF,$800,$4E75,$FF01,$402
         DC.W    $FF01,$403,$FF01,$406,$FF01,$403,$FF01,$403
         DC.W    $FF01,$403,$FF01,$406,$FF01,$403,$FF01,$402
         DC.W    0,$FF,$101,9,$101,$C,$101,7
         DC.W    $101,7,$101,$B,$101,7,$101,7
         DC.W    $101,7,$101,$B,$101,7,$101,9
         DC.W    0,$FF,$FFFF,2,$FFFF,$400,$FFFF,$400
         DC.W    $FFFF,$405,$FFFF,$400,$FFFF,$405,$FFFF,$400
         DC.W    $FFFF,0,0,$FF,$1FF,8,$1FF,6
         DC.W    $1FF,6,$1FF,$B,$1FF,6,$1FF,$B
         DC.W    $1FF,6,$1FF,8,$1FF,1,0,$FF
         DC.W    $FF,1,$FF,2,$FF,4,$FF,2
         DC.W    $FF,2,$FF,4,$FF,2,$FF,0
         DC.W    0,$FF,1,1,1,3,1,3
         DC.W    1,5,1,3,1,3,1,5
         DC.W    1,3,1,0,0,$FF,$FF00,$400
         DC.W    $FF00,$402,$FF00,$402,$FF00,$406,$FF00,$402
         DC.W    $FF00,$402,$FF00,$406,$FF00,$402,$FF00,$401
         DC.W    0,$FF,$100,1,$100,9,$100,7
         DC.W    $100,8,$100,$B,$100,8,$100,8
         DC.W    $100,$B,$100,8,$100,7,$100,$A
         DC.W    0,$FF,0,8,0,7,0,7
         DC.W    0,$B,0,7,0,7,0,8
         DC.W    0,6,0,2,0,0,0,$FF
         DC.W    0,$402,0,$403,0,$406,0,$403
         DC.W    0,$403,0,$406,0,$403,0,$402
         DC.W    0,6,0,$FF,0,8,0,6
         DC.W    0,$B,0,6,0,2,0,2
         DC.W    0,$404,0,$406,0,$404,0,$402
         DC.W    0,1,0,$FF,0,$403,0,$403
         DC.W    0,$406,0,3,0,3,0,5
         DC.W    0,3,0,7,0,8,0,3
         DC.W    0,$FF,0,5,0,$FF

;-refs -  3/proc168   

data129  DC.W    $206D,$FFA0,$226D,$F800,$342E,$22,$363C,1
         DC.W    $B76E,$22,$C40,$14,$6C06,$303C,$14,$6022
         DC.W    $C40,$1EC,$6F06,$303C,$1EC,$6016,$C41,$14
         DC.W    $6C06,$323C,$14,$600A,$C41,$116,$6F04,$323C
         DC.W    $116,$440,$10,$441,$10,$4EBA,$E6D0,$640
         DC.W    $10,$641,$10,$4E75

;-refs -  3/proc168   

data130  DC.W    $3D40,$1C,$3D41,$1E,$66E,$10,$1C,$66E
         DC.W    $B,$1E,$41ED,$FF1C,$4EBA,$2494,$673C,$42A8
         DC.W    8,$41EE,$1C,$2E3C,$400,0,$4EBA,$252C
         DC.W    $3D7C,4,$20,$3F00,$303C,$2B,$4EAD,$42
         DC.W    $301F,$303C,$C,$4EBA,$2718,$41FA,$F5A0,$2D48
         DC.W    4,$426E,8,$426E,$A,$4E75

         QUAL    proc168 ; b# =333  s#3  =proc168

;-refs - 25/proc402   

proc168  MOVE    (A0)+,D0
         MOVE    (A0)+,D1
         MOVE    #6,D2
         MOVEA.L A0,A3
         LEA     data128,A0
         LEA     glob60(A5),A1
         LEA     data130,A2
         LEA     data129,A4
         JSR     proc165
         LEA     36(A0),A0
         MOVE.L  #$4000000,D7
         JSR     proc208
         RTS     

         QUAL    proc169 ; b# =334  s#3  =proc169

;-refs - 10/proc341   

proc169  MOVE    D0,D7
         MOVEQ   #54,D0
         _NewPtr ,CLEAR; (D0/byteCount:Size):A0\Ptr 
         LEA     data132,A1
         MOVE.L  A1,4(A0)
         MOVE    D7,8(A0)
         MOVE    D1,10(A0)
         CLR     16(A0)
         MOVE    D2,12(A0)
         MOVE    D3,14(A0)
         MOVE    D4,28(A0)
         MOVE    D5,26(A0)
         CLR     46(A0)
         MOVE.L  glob28(A5),18(A0)
         MOVE.L  glob29(A5),22(A0)
         MOVE    D6,30(A0)
         CLR     34(A0)
         MOVE    #$FFFF,36(A0)
         MOVE.L  glob204(A5),(A0)
         MOVE.L  A0,glob204(A5)
         RTS     

         QUAL    proc170 ; b# =335  s#3  =proc170

;-refs -  9/proc336   12/proc355   14/proc361   

proc170  MOVEA.L A0,A2
         MOVEQ   #54,D0
         _NewPtr ,CLEAR; (D0/byteCount:Size):A0\Ptr 
         LEA     data132,A1
         MOVE.L  A1,4(A0)
         MOVEQ   #20,D0
         MOVEA.L A0,A1
         ADDQ    #8,A1
lhr_1    MOVE    (A2)+,(A1)+
         DBRA    D0,lhr_1
         MOVE.L  glob28(A5),18(A0)
         MOVE.L  glob29(A5),22(A0)
         MOVE.L  glob204(A5),(A0)
         MOVE.L  A0,glob204(A5)
         RTS     


data131  DC.W    $3016,$322E,2,$206D,$FFA0,$3E2E,$1A,$E547
         DC.W    $4EFB,$7002,$4EFA,$116,$4EFA,$BE,$4EFA,$76
         DC.W    $4EFA,$44,$4EFA,2,$343C,3,$641,$F
         DC.W    $C41,$12C,$6D18,$41EE,$28,$4EBA,$2412,$42AE
         DC.W    $FFFC,$206E,$16,$5268,$16,$6000,$1C0,$4A6E
         DC.W    8,$6E06,$226E,$A,$6004,$226E,$E,$4EBA
         DC.W    $E558,$6000,$14C,$343C,3,$641,$F,$B26E
         DC.W    $1E,$6D08,$426E,$1A,$322E,$1E,$4A6E,8
         DC.W    $6E06,$226E,$A,$6004,$226E,$E,$4EBA,$E52A
         DC.W    $6000,$11E,$343C,2,$641,$A,$B26E,$1C
         DC.W    $6D1E,$B06E,4,$6D0E,$B06E,6,$6E08,$3D7C
         DC.W    3,$1A,$6006,$3D7C,4,$1A,$322E,$1C
         DC.W    $4A6E,8,$6E06,$226E,$A,$6004,$226E,$E
         DC.W    $4EBA,$E4E6,$6000,$DA,$342E,$14,$D06E,8
         DC.W    $4A6E,8,$6E1E,$B06E,$20,$6E0A,$3D7C,2
         DC.W    $1A,$302E,$20,$226E,$A,$5342,$6C22,$343C
         DC.W    1,$601C,$B06E,$20,$6D0A,$3D7C,2,$1A
         DC.W    $302E,$20,$226E,$E,$5342,$6C04,$343C,1
         DC.W    $3D42,$14,$4EBA,$E492,$6000,$86,$536E,$12
         DC.W    $6E18,$446E,8,$4EBA,$25E8,$3E00,$3016,$247
         DC.W    $3F,$647,$A,$3D47,$12,$342E,$14,$D06E
         DC.W    8,$B06E,4,$6E14,$3D7C,2,8,$3F00
         DC.W    $303C,$46,$4EAD,$42,$301F,$6018,$B06E,6
         DC.W    $6D12,$3D7C,$FFFE,8,$3F00,$303C,$46,$4EAD
         DC.W    $42,$301F,$4A6E,8,$6E0E,$226E,$A,$5342
         DC.W    $6C12,$343C,1,$600C,$226E,$E,$5342,$6C04
         DC.W    $343C,1,$3D42,$14,$4EBA,$E40E,$6000,2
         DC.W    $3C80,$3D41,2,$3D40,$28,$3D41,$2A,$506E
         DC.W    $28,$5C6E,$2A,$41ED,$FF1C,$4EBA,$21D6,$672E
         DC.W    $42A8,8,$3F00,$303C,$57,$4EAD,$42,$301F
         DC.W    $41EE,$28,$4EBA,$2268,$42AE,$FFFC,$206E,$16
         DC.W    $5268,$16,$4240,$4EBA,$245C,$6000,$10,$41ED
         DC.W    $FA14,$4EBA,$22E0,$B0FC,0,$66C8,$4A6E,$2C
         DC.W    $674C,$206D,$FFA0,$3428,$12,$3016,$B440,$6E24
         DC.W    $642,$200,$B440,$6D1C,$322E,2,$3628,$14
         DC.W    $B641,$6E10,$643,$12C,$B641,$6D08,$3D7C,$3C
         DC.W    $2C,$601A,$536E,$2C,$6E14,$41EE,$28,$4EBA
         DC.W    $21FE,$42AE,$FFFC,$206E,$16,$5268,$16,$4E75

;-refs -  3/proc169    3/proc170   

data132  DC.W    $4A6E,$16,$6F00,$CC,$536E,$26,$6E00,$C4
         DC.W    $4EBA,$24AE,$3E00,$7036,$A31E,$43FA,$FD84,$2149
         DC.W    4,$316E,4,$C,$316E,6,$E,$3156
         DC.W    8,$316E,2,$A,$4268,$1C,$4268,$34
         DC.W    $216E,$A,$12,$216E,$E,$16,$3C07,$246
         DC.W    $F,$5846,$3146,$1A,$214E,$1E,$316E,$1A
         DC.W    $22,$6736,$316E,$1C,$24,$316E,$1E,$26
         DC.W    $316E,8,$10,$C47,$5555,$6208,$316E,$20
         DC.W    $28,$601C,$C47,$AAAA,$6208,$316E,$22,$28
         DC.W    $600E,$316E,$24,$28,$6006,$317C,2,$10
         DC.W    $20AD,$FEFE,$2B48,$FEFE,$536E,$16,$CE6E,$14
         DC.W    $DE6E,$12,$3D47,$26,$41E8,$30,$2E3C,$500
         DC.W    0,$4EBA,$20F8,$3F00,$303C,$46,$4EAD,$42
         DC.W    $301F,$4E75

         QUAL    proc171 ; b# =338  s#3  =proc171


proc171  MOVEA.L A0,A2
         MOVEQ   #54,D0
         _NewPtr ,CLEAR; (D0/byteCount:Size):A0\Ptr 
         LEA     data133,A1
         MOVE.L  A1,4(A0)
         MOVEQ   #20,D0
         MOVEA.L A0,A1
         ADDQ    #8,A1
lhs_1    MOVE    (A2)+,(A1)+
         DBRA    D0,lhs_1
         MOVE.L  glob28(A5),18(A0)
         MOVE.L  glob29(A5),22(A0)
         MOVE.L  glob204(A5),(A0)
         MOVE.L  A0,glob204(A5)
         RTS     

;-refs -  3/proc171   

data133  DC.W    $4A6E,$16,$6F00,$130,$536E,$26,$6E00,$128
         DC.W    $4EBA,$23AA,$3E00,$206D,$FFA0,$3428,$12,$B46E
         DC.W    $24,$6E1E,$642,$200,$B46E,$20,$6D14,$3628
         DC.W    $14,$B66E,$1E,$6E0A,$643,$12C,$B66E,2
         DC.W    $6E10,$CE6E,$14,$DE6E,$12,$3D47,$26,$6000
         DC.W    $E6,$7036,$A31E,$43FA,$FC44,$2149,4,$316E
         DC.W    4,$C,$316E,6,$E,$3156,8,$316E
         DC.W    2,$A,$4268,$1C,$317C,$3C,$34,$216E
         DC.W    $A,$12,$216E,$E,$16,$3C07,$246,$F
         DC.W    $5846,$3146,$1A,$214E,$1E,$317C,1,$22
         DC.W    $316E,$1C,$24,$316E,$1E,$26,$316E,8
         DC.W    $10,$C47,$5555,$6208,$316E,$20,$28,$601C
         DC.W    $C47,$AAAA,$6208,$316E,$22,$28,$600E,$316E
         DC.W    $24,$28,$6006,$317C,2,$10,$246D,$FFA0
         DC.W    $322A,$14,$B268,$A,$6F1A,$B268,$24,$6F04
         DC.W    $3228,$24,$3141,$A,$3168,$28,8,$317C
         DC.W    2,$22,$20AD,$FEFE,$2B48,$FEFE,$536E,$16
         DC.W    $CE6E,$14,$DE6E,$12,$3D47,$26,$41E8,$30
         DC.W    $2E3C,$500,0,$4EBA,$1F90,$3F00,$303C,$46
         DC.W    $4EAD,$42,$301F,$4E75

         QUAL    proc172 ; b# =340  s#3  =proc172

;-refs - 10/proc341   11/proc351   14/proc361   

proc172  MOVEM   D0-D2,-(A7)
         MOVEQ   #36,D0
         _NewPtr ,CLEAR; (D0/byteCount:Size):A0\Ptr 
         MOVEM   (A7)+,D0-D2
         LEA     data134,A1
         MOVE.L  A1,4(A0)
         MOVE    D0,8(A0)
         MOVE    D1,10(A0)
         CLR     12(A0)
         MOVE    D2,22(A0)
         MOVE    D3,24(A0)
         MOVE    D2,26(A0)
         MOVE    D4,30(A0)
         CLR     14(A0)
         CLR     16(A0)
         CLR     28(A0)
         MOVE.L  glob27(A5),18(A0)
         MOVE    D5,32(A0)
         MOVE    D6,34(A0)
         MOVE.L  glob204(A5),(A0)
         MOVE.L  A0,glob204(A5)
         RTS     

;-refs -  3/proc172   

data134  DC.W    $4A6E,$14,$6D00,$148,$6E00,$182,$3016,$322E
         DC.W    2,$342E,4,$226E,$A,$206D,$FFA0,$536E
         DC.W    $16,$6E00,$252,$426E,$16,$D06E,6,$D26E
         DC.W    8,$5242,$C42,3,$6D04,$343C,1,$3D42
         DC.W    4,$3C80,$3D41,2,$4EBA,$E07E,$C40,5
         DC.W    $6F22,$C40,$1F4,$6C1C,$B26E,$18,$6F0E,$B26E
         DC.W    $1A,$6D14,$3D7C,$FFFD,8,$600C,$3D7C,3
         DC.W    8,$6004,$426E,$12,$266D,$FF3C,$504B,$536E
         DC.W    $12,$6E00,$70,$3F00,$303C,$45,$4EAD,$42
         DC.W    $301F,$3D6E,$E,$12,$3F00,$4EBA,$2194,$3600
         DC.W    $301F,$C66E,$10,$D76E,$12,$5040,$5C41,$382B
         DC.W    $C,$3A2B,$E,$644,$10,$645,$14,$B840
         DC.W    $6D08,$6E0E,$426E,6,$600E,$3D7C,$FFFD,6
         DC.W    $6006,$3D7C,3,6,$B245,$6D10,$6E06,$426E
         DC.W    8,$600E,$3D7C,$FFFD,8,$6006,$3D7C,3
         DC.W    8,$4E71,$3016,$322E,2,$382B,$C,$3A2B
         DC.W    $E,$3404,$3605,$246B,$1A,$D46A,$A,$D66A
         DC.W    $C,$B044,$6D34,$B245,$6D30,$B042,$6E2C,$B243
         DC.W    $6E28,$3D7C,$FFFF,$14,$526D,$FEDA,$3F00,$4EBA
         DC.W    $2100,$3E00,$301F,$3C07,$246,$F,$3D46,6
         DC.W    $247,$F0,$E847,$3D47,8,$6000,$12E,$266D
         DC.W    $FF3C,$302B,$14,$322B,$16,$342E,4,$226E
         DC.W    $A,$206D,$FFA0,$D06E,6,$D26E,8,$5242
         DC.W    $C42,3,$6D04,$343C,1,$3D42,4,$3C80
         DC.W    $3D41,2,$4EBA,$DF42,$6000,$F0,$3016,$322E
         DC.W    2,$226E,$A,$206D,$FFA0,$4A6E,$16,$6E00
         DC.W    $BA,$6D00,$8E,$286D,$FF3C,$246C,8,$343C
         DC.W    4,$4EBA,$1E80,$4A47,$6756,$6D0C,$4847,$3A32
         DC.W    $7004,$C45,$16,$6608,$42AE,$FFFC,$6000,$EE
         DC.W    $C45,$E,$6614,$3D7C,$FFFF,$16,$2D4A,$E
         DC.W    $3D47,$12,$3D41,2,$6048,$C45,$F,$6614
         DC.W    $3D7C,$FFFE,$16,$2D4A,$E,$3D47,$12,$3D41
         DC.W    2,$602E,$3D7C,2,$16,$3D41,2,$604A
         DC.W    $641,$1E,$4242,$C41,$136,$6D08,$42AE,$FFFC
         DC.W    $6000,$9A,$4EBA,$DEA2,$66E,$F,2,$6000
         DC.W    $8C,$C6E,$FFFE,$16,$671E,$246E,$E,$382E
         DC.W    $12,$4A72,$4000,$6E08,$42AE,$FFFC,$6000,$6E
         DC.W    $D072,$400C,$3C80,$6002,$5456,$641,$1E,$343C
         DC.W    5,$4EBA,$DE64,$536E,4,$6E00,$50,$42AE
         DC.W    $FFFC,$6000,$48,$4EBA,$DE50,$41ED,$FF1C,$4EBA
         DC.W    $1C32,$6738,$42A8,8,$3F00,$303C,$55,$4EAD
         DC.W    $42,$301F,$4A6E,$14,$6704,$536D,$FEDA,$3D7C
         DC.W    1,$14,$3D7C,$3C,4,$426E,$16,$46E
         DC.W    $14,2,$303C,6,$4EBA,$1EAA,$4E75,$536E
         DC.W    $E,$6E0E,$4EBA,$1F6A,$3600,$3D7C,$A,$E
         DC.W    $6004,$363C,$7FFF,$3016,$440,$A,$322E,2
         DC.W    $342E,$A,$6C74,$5242,$3D42,$A,$4442,$82D
         DC.W    0,$FF3A,$671E,$C42,$14,$671E,$4A42,$6E24
         DC.W    $42AE,$FFFC,$206E,$12,$B0FC,0,$6716,$5268
         DC.W    $10,$6010,$B46E,$16,$6604,$4242,$601C,$C42
         DC.W    0,$6706,$343C,1,$6010,$343C,2,$41D6
         DC.W    $2E3C,$200,0,$4EBA,$1BF4,$206D,$FFA0,$4A6E
         DC.W    4,$6E06,$226D,$F698,$6004,$226D,$F69C,$441
         DC.W    $18,$4EBA,$DD74,$6000,$19E,$C43,$3E8,$6348
         DC.W    $D06E,4,$B06E,6,$6E1C,$4A6E,4,$6E0C
         DC.W    $3F00,$303C,$42,$4EAD,$42,$301F,$3D7C,4
         DC.W    4,$6000,$CE,$B06E,8,$6D30,$4A6E,4
         DC.W    $6D0C,$3F00,$303C,$42,$4EAD,$42,$301F,$3D7C
         DC.W    $FFFC,4,$6000,$AC,$446E,4,$3F00,$303C
         DC.W    $42,$4EAD,$42,$301F,$6000,$98,$536E,$10
         DC.W    $6E00,$90,$B66E,$C,$6200,$88,$286D,$FF3C
         DC.W    $3801,$644,$FFFA,$EA44,$3A2C,$16,$645,$10
         DC.W    $EA45,$BA44,$6600,$6C,$4A6E,4,$6D0A,$B06C
         DC.W    $14,$6E00,$5E,$6008,$B06C,$14,$6D00,$54
         DC.W    $48E7,$E000,$441,$A,$263C,$FFFD,$8000,$43ED
         DC.W    $FF14,$4A6E,4,$6E0E,$243C,$FFF0,0,$5B40
         DC.W    $206D,$F6A0,$600C,$243C,$10,0,$5A40,$206D
         DC.W    $F6A4,$283C,0,$4000,$4EAD,$2D2,$3F00,$303C
         DC.W    $3A,$4EAD,$42,$301F,$3D7C,$28,$10,$4CDF
         DC.W    7,$4A6E,4,$6E10,$43ED,$F688,$5342,$6C16
         DC.W    $343C,2,$5342,$600E,$43ED,$F68C,$5342,$6C06
         DC.W    $343C,2,$5342,$286D,$FF3C,$3801,$644,$FFFA
         DC.W    $EA44,$3A2C,$16,$645,$10,$EA45,$BA44,$6602
         DC.W    $5089,$2251,$206D,$FFA0,$640,$A,$3C80,$440
         DC.W    $A,$3D42,$A,$441,$18,$4EBA,$DC1C,$41ED
         DC.W    $FF1C,$4EBA,$19FE,$673E,$42A8,8,$82D,0
         DC.W    $FF3A,$6608,$3D6E,$16,$A,$6006,$3D7C,$14
         DC.W    $A,$526E,$A,$446E,$A,$3F00,$303C,$52
         DC.W    $4EAD,$42,$301F,$41D6,$4EBA,$1A74,$303C,4
         DC.W    $4EBA,$1C72,$6014,$41ED,$FA14,$4EBA,$1AF8,$B0FC
         DC.W    0,$6706,$42AE,$FFFC,$60D0,$4E75,$3E00,$7020
         DC.W    $A31E,$43FA,$FDAA,$2149,4,$647,$A,$3147
         DC.W    8,$641,$10,$3141,$A,$3144,$C,$3142
         DC.W    $E,$3143,$10,$3146,$14,$4268,$16,$4268
         DC.W    $18,$4268,$12,$42A8,$1A,$3145,$1E,$20AD
         DC.W    $FEFE,$2B48,$FEFE,$4E75

         QUAL    proc173 ; b# =342  s#3  =proc173

;-refs -  8/proc330    9/proc336   11/proc351   

proc173  MOVEA   D0,A4
         MOVEQ   #32,D0
         _NewPtr ,CLEAR; (D0/byteCount:Size):A0\Ptr 
         LEA     data135,A1
         MOVE.L  A1,4(A0)
         MOVE    A4,8(A0)
         MOVE    D1,10(A0)
         MOVE    D4,12(A0)
         MOVE    D2,14(A0)
         MOVE    D3,16(A0)
         CLR     18(A0)
         MOVE.B  D7,19(A0)
         MOVE    D6,20(A0)
         MOVE    D7,22(A0)
         MOVE    D5,24(A0)
         MOVE    A2,30(A0)
         MOVE.L  glob204(A5),(A0)
         MOVE.L  A0,glob204(A5)
         RTS     

;-refs -  3/proc173   

data135  DC.W    $4A6E,$A,$6B00,$6A,$4A6E,$10,$6F00,$124
         DC.W    $536E,$A,$6E00,$11C,$226D,$F6A8,$3D69,2
         DC.W    $A,$E1EE,$A,$E1EE,$A,$446E,$A,$4242
         DC.W    $322E,2,$5141,$206D,$FFA0,$4A6E,4,$6D12
         DC.W    $226D,$F6A8,$C56,$1E,$6D04,$3016,$601A,$4240
         DC.W    $6016,$226D,$F6AC,$C56,$200,$6D08,$3016,$440
         DC.W    $20,$6004,$303C,$1E0,$4EBA,$DAC2,$6000,$C4
         DC.W    $342E,$A,$5242,$3D42,$A,$4442,$322E,2
         DC.W    $5141,$206D,$FFA0,$4A6E,4,$6D12,$226D,$F6A8
         DC.W    $C56,$1E,$6D04,$3016,$601A,$4240,$6016,$226D
         DC.W    $F6AC,$C56,$200,$6D08,$3016,$440,$20,$6004
         DC.W    $303C,$1E0,$E442,$4EBA,$DA74,$4A42,$6E74,$7020
         DC.W    $A31E,$43FA,$FC5E,$2149,4,$700B,$244E,$2248
         DC.W    $5049,$32DA,$51C8,$FFFC,$668,$A,8,$668
         DC.W    $18,$A,$4268,$16,$4268,$18,$4268,$12
         DC.W    $214E,$1A,$20AD,$FEFE,$2B48,$FEFE,$3F00,$303C
         DC.W    $3C,$4EAD,$42,$301F,$41E8,8,$2E3C,$200
         DC.W    0,$4EBA,$187C,$536E,$10,$4EBA,$1B78,$1C2E
         DC.W    $E,$4886,$1E2E,$F,$4886,$C046,$D047,$3D40
         DC.W    $A,$4E75

         QUAL    proc174 ; b# =344  s#3  =proc174


proc174  MOVEA.L A0,A2
         MOVEA.L A1,A3
         MOVEQ   #60,D0
         _NewPtr ,CLEAR; (D0/byteCount:Size):A0\Ptr 
         LEA     data137,A1
         MOVE.L  A1,4(A0)
         MOVEQ   #5,D0
         MOVEA.L A0,A1
         ADDQ    #8,A1
lhv_1    MOVE    (A2)+,(A1)+
         DBRA    D0,lhv_1
         CLR     20(A0)
         MOVE    #2,24(A0)
         MOVE    18(A0),58(A0)
         MOVE.L  A3,30(A0)
         MOVE    8(A0),42(A0)
         MOVE    10(A0),44(A0)
         CLR     46(A0)
         MOVE    #10,52(A0)
         MOVE    #15,54(A0)
         MOVEA.L A0,A3
         MOVEM.L A0-A1,-(A7)
         LEA     glob88(A5),A0
         LEA     34(A3),A1
         MOVE.L  A0,4(A1)
         MOVE.L  (A0),(A1)
         MOVE.L  A1,(A0)
         MOVEA.L (A1),A0
         CMPA.W  #0,A0
         BEQ.S   lhv_2
         MOVE.L  A1,4(A0)
lhv_2    MOVEM.L (A7)+,A0-A1
         MOVE.L  glob204(A5),(A0)
         MOVE.L  A0,glob204(A5)
         RTS     

         QUAL    proc175 ; b# =345  s#3  =proc175

;-refs - 21/proc396   

proc175  MOVEA.L A0,A2
         MOVEQ   #28,D0
         _NewPtr ,CLEAR; (D0/byteCount:Size):A0\Ptr 
         LEA     data136,A1
         MOVE.L  A1,4(A0)
         MOVEQ   #8,D0
         MOVEA.L A0,A1
         ADDQ    #8,A1
lhw_1    MOVE    (A2)+,(A1)+
         DBRA    D0,lhw_1
         JSR     proc219
         AND     22(A0),D0
         ADD     20(A0),D0
         MOVE    D0,26(A0)
         MOVE.L  glob204(A5),(A0)
         MOVE.L  A0,glob204(A5)
         RTS     

;-refs -  3/proc175   

data136  DC.W    $4A6E,$10,$6F22,$536E,$12,$6E1C,$536E,$10
         DC.W    $204E,$224E,$4EBA,$FF3A,$4EBA,$1A96,$C06E,$E
         DC.W    $D06E,$C,$3D40,$12,$4E75

;-refs -  3/proc174   

data137  DC.W    $3016,$322E,2,$206D,$FFA0,$3428,$12,$442
         DC.W    $20,$B440,$6E00,$2C4,$642,$220,$B440,$6D00
         DC.W    $2BA,$3E2E,$C,$4EFB,$7002,$4EFA,$1F0,$4EFA
         DC.W    $174,$4EFA,$1A8,$4EFA,$B8,$3F00,$4EBA,$1A48
         DC.W    $3E00,$301F,$247,$7FFF,$536E,$32,$6E68,$3D6E
         DC.W    $A,$32,$286D,$FF3C,$504C,$C6C,$38,$12
         DC.W    $6654,$C6C,$13A,$E,$6E52,$247,1,$DF6E
         DC.W    $32,$3D7C,$C,$C,$3F00,$303C,$44,$4EAD
         DC.W    $42,$301F,$362C,$C,$9640,$382C,$E,$9841
         DC.W    $3A03,$6E02,$4445,$3C04,$6E02,$4446,$DC45,$EB43
         DC.W    $EB44,$48C3,$48C4,$87C6,$89C6,$3D43,$12,$5D44
         DC.W    $3D44,$14,$6032,$C47,$4E20,$6D14,$3D7C,4
         DC.W    $C,$3F00,$303C,$44,$4EAD,$42,$301F,$6018
         DC.W    $C47,$2710,$6D04,$446E,8,$247,7,$5647
         DC.W    $3D47,$10,$426E,$C,$426E,$E,$6000,$188
         DC.W    $3E2E,$12,$6E12,$BE6E,$14,$6D06,$45FA,$8A
         DC.W    $6018,$45FA,$8B,$6012,$4447,$BE6E,$14,$6D06
         DC.W    $45FA,$84,$6004,$45FA,$85,$226D,$F7A4,$362E
         DC.W    $E,$1432,$3000,$5243,$3D43,$E,$4882,$6C0A
         DC.W    $4242,$4EBA,$D7EA,$6000,$FF02,$C42,$40,$6D40
         DC.W    $242,$3F,$48E7,$E0C0,$C42,$20,$6D04,$640
         DC.W    $18,$342E,$12,$362E,$14,$D042,$D243,$4842
         DC.W    $4242,$4843,$4243,$283C,0,$AAAA,$206D,$F424
         DC.W    $43ED,$FF14,$4EAD,$2D2,$4CDF,$307,$242,$1F
         DC.W    $4EBA,$D79C,$6000,$F0,0,$101,$4303,$FF00
         DC.W    1,$142,$2FF,0,$404,$6606,$FF00,4
         DC.W    $465,$5FF,$362E,$E,$143B,$301E,$4882,$226D
         DC.W    $F79C,$4EBA,$D76A,$5243,$3D43,$E,$143B,$300A
         DC.W    $6D00,$FE78,$6000,$B0,1,1,1,$203
         DC.W    $201,0,$203,$201,0,$FF00,$362E,$E
         DC.W    $143B,$3030,$4882,$226D,$F79C,$4EBA,$D732,$5243
         DC.W    $3D43,$E,$143B,$301C,$6C00,$D2,$206E,$16
         DC.W    $B0FC,0,$6704,$5268,$10,$42AE,$FFFC,$6000
         DC.W    $CA,$404,$505,$607,$809,$FF00,$D06E,8
         DC.W    $4A6E,8,$6E0C,$47FA,$44,$B06E,4,$6F36
         DC.W    $600A,$47FA,$3D,$B06E,6,$6C2A,$362E,$E
         DC.W    $1433,$3000,$4882,$6C04,$4243,$60F4,$226D,$F7A0
         DC.W    $4EBA,$D6CC,$5243,$3D43,$E,$536E,$10,$6D00
         DC.W    $FDDA,$6000,$12,$446E,8,$60B0,1,$203
         DC.W    $FF04,$506,$7FF,$48A7,$C000,$41ED,$FF1C,$4EBA
         DC.W    $1488,$6740,$42A8,8,$3F00,$303C,$43,$4EAD
         DC.W    $42,$301F,$303C,$10,$4EBA,$1720,$48E7,$C0
         DC.W    $43EE,$1A,$2069,4,$2251,$2089,$B2FC,0
         DC.W    $6704,$2348,4,$4CDF,$300,$3D7C,8,$C
         DC.W    $426E,$E,$4C9F,3,$6000,2,$3C80,$3D41
         DC.W    2,$3D40,$22,$3D41,$24,$4E75

         QUAL    proc176 ; b# =348  s#3  =proc176

;-refs -  8/proc330    9/proc336   10/proc341   
;-       11/proc351   12/proc355   14/proc361   
;-       15/proc370   16/proc376   18/proc386   
;-       20/proc394   21/proc396   22/proc397   
;-       23/proc398   24/proc399   25/proc402   

proc176  MOVEM.L D0-D7/A0-A4/A6,-(A7)
         JSR     proc88(A5)
         SF      glob249(A5)
         JSR     proc86(A5)
         SF      glob203(A5)
         CLR     glob202(A5)
lhx_1    TST.B   glob243(A5)
         BEQ.S   lhx_2
         JSR     proc388(A5)
lhx_2    LEA     glob204(A5),A3
         MOVEA.L (A3),A4
lhx_3    MOVEA.L 4(A4),A2
         CMPA.W  #0,A2
         BEQ     lhx_6
         LEA     8(A4),A6
         MOVEM.L A3-A4,-(A7)
         JSR     (A2)
         MOVEM.L (A7)+,A3-A4
         MOVEA.L A4,A3
         MOVEA.L (A4),A4
lhx_4    CMPA.W  #0,A4
         BNE     lhx_3
         JSR     proc158
         TST.B   glob203(A5)
         BEQ     lhx_1
         MOVEA.L glob204(A5),A3
lhx_5    CMPA.W  #0,A3
         BEQ.S   lhx_7
         MOVEA.L (A3),A4
         MOVEA.L A3,A0
         _DisposPtr ; (A0/p:Ptr) 
         MOVEA.L A4,A3
         BRA     lhx_5
lhx_6    MOVE.L  (A4),(A3)
         MOVEA.L A3,A2
         MOVEA.L A4,A3
         MOVEA.L (A4),A4
         MOVEA.L A3,A0
         _DisposPtr ; (A0/p:Ptr) 
         MOVEA.L A2,A3
         BRA     lhx_4
lhx_7    JSR     proc12(A5)
         JSR     proc87(A5)
         CLR.L   glob204(A5)
         MOVEM.L (A7)+,D0-D7/A0-A4/A6
         RTS     

         QUAL    proc177 ; b# =349  s#3  =proc177

;-refs -  1/proc113   

proc177  MOVEM.L D3-D7/A2-A4/A6,-(A7)
         MOVE    #$FFFF,SysEvtMask
lhy_1    MOVE    glob172(A5),D0
         BMI     com_37
         CMPI    #2,glob168(A5)
         BNE.S   lhy_2
         MOVE    glob166(A5),D7
         CMP.W   glob165(A5),D7
         BLE     com_37
lhy_2    CMP.W   glob173(A5),D0
         SNE     glob179(A5)
         MOVE    #$FFFF,glob172(A5)
         MOVE    D0,glob173(A5)
         MOVE    glob173(A5),D0
         ASL     #3,D0
         JSR     data139(D0.W)
         PUSH.L  A0
         JSR     (A0)
         _UnLoadSeg ; (Proc:ProcPtr) 
         TST.B   glob169(A5)
         BEQ.S   lhy_3
         TST     glob172(A5)
         BMI     lhy_3
         MOVE    glob173(A5),glob172(A5)
         CLR     glob171(A5)
lhy_3    BRA     lhy_1


data138  DZS.W   3

;-refs -  3/proc177   

data139  DC.W    $41ED,$712,$4E75,0,$41ED,$782,$4E75,0
         DC.W    $41ED,$6AA,$4E75,0,$41ED,$662,$4E75,0
         DC.W    $41ED,$762,$4E75,0,$41ED,$76A,$4E75,0
         DC.W    $41ED,$702,$4E75,0,$41ED,$732,$4E75,0
         DC.W    $41ED,$75A,$4E75,0,$41ED,$6EA,$4E75,0
         DC.W    $41ED,$6C2,$4E75,0,$41ED,$67A,$4E75,0
         DC.W    $41ED,$772,$4E75,0,$41ED,$77A,$4E75,0
         DC.W    $41ED,$68A,$4E75

         QUAL    proc178 ; b# =352  s#3  =proc178


proc178  MOVE    #15,D1
         BRA.S   lhz_1

;-refs -  3/proc177   

com_37   MOVE    #$FFFE,SysEvtMask
         MOVEM.L (A7)+,D3-D7/A2-A4/A6
lhz_1    RTS     

         QUAL    proc179 ; b# =354  s#3  =proc179

;-refs -  8/proc330    9/proc336   10/proc341   
;-       11/proc351   12/proc355   14/proc361   
;-       15/proc370   16/proc376   18/proc386   
;-       20/proc394   21/proc396   22/proc397   
;-       23/proc398   24/proc399   25/proc402   

proc179  PUSH    glob173(A5)
         JSR     proc11(A5)
         CLR.L   glob204(A5)
         JSR     proc181
         CLR     glob188(A5)
         CLR.L   glob210(A5)
         CLR.L   glob209(A5)
         MOVE    #30,D0
         JSR     proc207
         CLR     glob194(A5)
         CLR.L   glob248(A5)
         JSR     proc212
         JSR     proc193
         MOVE    #$FFF7,glob223(A5)
         MOVE    #$1F3,glob222(A5)
         MOVE    #$FFFF,glob184(A5)
         MOVE    #$FFFF,glob180(A5)
         SF      glob216(A5)
         LEA     glob217(A5),A0
         LEA     data141,A1
         JSR     proc227
         LEA     glob215(A5),A0
         LEA     data143,A1
         JSR     proc227
         LEA     glob201(A5),A0
         LEA     data140,A1
         JSR     proc227
         LEA     glob213(A5),A0
         LEA     data142,A1
         JSR     proc227
         LEA     glob218(A5),A0
         LEA     data144,A1
         JSR     proc227
         CLR.L   glob88(A5)
         CLR.L   glob89(A5)
         CLR.L   glob90(A5)
         CLR.L   glob91(A5)
         CLR.L   glob76(A5)
         JSR     proc226
         CLR     glob163(A5)
         RTS     

;-refs -  3/proc179   

data140  DC.W    2,$12A,$14C,$131,$15A

;-refs -  3/proc179   

data141  DC.W    2,$13A,$14C,$141,$15A

;-refs -  3/proc179   

data142  DC.W    2,$12A,$198,$131,$1A6

;-refs -  3/proc179   

data143  DC.W    2,$13A,$198,$141,$1A6

;-refs -  3/proc179   

data144  DC.W    2,$14A,$198,$151,$1A6

         QUAL    proc180 ; b# =360  s#3  =proc180

;-refs -  4/proc237   

proc180  MOVE.L  #$100,D0
         _NewPtr ,CLEAR; (D0/byteCount:Size):A0\Ptr 
         MOVE.L  A0,glob208(A5)
         RTS     

         QUAL    proc181 ; b# =361  s#3  =proc181

;-refs -  3/proc179   

proc181  MOVEQ   #8,D0
         _NewPtr ,CLEAR; (D0/byteCount:Size):A0\Ptr 
         LEA     data145,A1
         MOVE.L  A1,4(A0)
         MOVE.L  glob204(A5),(A0)
         MOVE.L  A0,glob204(A5)
         RTS     

;-refs -  3/proc181   

data145  DC.W    $4EAD,$14A,$4EBA,$7A,$42AE,$FFFC,$4E75

         QUAL    proc182 ; b# =363  s#3  =proc182

;-refs -  6/proc305    8/proc322    8/proc330   
;-       12/proc355   14/proc361   15/proc370   
;-       16/proc374   18/proc386   23/proc398   
;-       24/proc399   25/proc402   

proc182  MOVE    D0,D3
         MOVE    D1,D4
         MOVEA.L A1,A3
         MOVEQ   #18,D0
         _NewPtr ,CLEAR; (D0/byteCount:Size):A0\Ptr 
         LEA     data146,A1
         MOVE.L  A1,4(A0)
         MOVE    D3,8(A0)
         MOVE    D4,10(A0)
         MOVE    D2,12(A0)
         MOVE.L  A3,14(A0)
         MOVE.L  glob204(A5),(A0)
         MOVE.L  A0,glob204(A5)
         RTS     

;-refs -  3/proc182   

data146  DC.W    $3016,$322E,2,$342E,4,$226E,6,$206D
         DC.W    $FFA0,$4A2D,$FF87,$6728,$3828,$12,$444,$20
         DC.W    $B044,$6D20,$644,$220,$B044,$6E18,$3A28,$14
         DC.W    $445,$20,$B245,$6D0C,$645,$144,$B245,$6E04
         DC.W    $4EBA,$D34A,$4E75

         QUAL    proc183 ; b# =365  s#3  =proc183


proc183  BTST    #0,glob224(A5)
         BEQ.S   lif_1
         JSR     proc188
         BRA.S   lif_2
lif_1    JSR     proc189
lif_2    BTST    #1,glob224(A5)
         BEQ.S   lif_3
         JSR     proc190
         BRA.S   lif_4
lif_3    JSR     proc191
lif_4    BTST    #2,glob224(A5)
         BEQ.S   lif_5
         JSR     proc186
         BRA.S   lif_6
lif_5    JSR     proc187
lif_6    JSR     proc192
         RTS     

         QUAL    proc184 ; b# =366  s#3  =proc184

;-refs -  2/com_34    14/proc359   15/proc362   

proc184  BSET    D0,21(A6)
         BSET    D0,glob224(A5)
         ASL     #2,D0
         JMP     data147(D0.W)
         JBIAS  0
;-refs -  3/proc184   

data147  JMP     proc188
         JMP     proc190
         JMP     proc186


data148  DC.B    'Nu'



proc185  BCLR    D0,21(A6)
         BCLR    D0,glob224(A5)
         ASL     #2,D0
         JMP     data149(D0.W)
         JBIAS  0
;-refs -  3/proc185   

data149  JMP     proc189
         JMP     proc191
         JMP     proc187


data150  DC.B    'Nu'


;-refs -  3/proc183    3/proc184   

proc186  MOVE    #$1AF,D0
         MOVE    #$140,D1
         CLR     D2
         MOVEA.L glob55(A5),A1
         LEA     glob269(A5),A0
         JSR     proc147
         TST.B   glob254(A5)
         BEQ.S   lig_1
         LEA     glob262(A5),A0
         JSR     proc147
lig_1    RTS     

;-refs -  3/proc183    3/proc185   

proc187  MOVE    #$1AF,D0
         MOVE    #$140,D1
         CLR     D2
         MOVEA.L glob55(A5),A1
         LEA     glob269(A5),A0
         JSR     proc148
         TST.B   glob254(A5)
         BEQ.S   lig_2
         LEA     glob262(A5),A0
         JSR     proc148
lig_2    RTS     

;-refs -  3/proc183    3/proc184   

proc188  MOVE    #$1CD,D0
         MOVE    #$141,D1
         CLR     D2
         MOVEA.L glob54(A5),A1
         LEA     glob269(A5),A0
         JSR     proc147
         TST.B   glob254(A5)
         BEQ.S   lig_3
         LEA     glob262(A5),A0
         JSR     proc147
lig_3    RTS     

;-refs -  3/proc183    3/proc185   

proc189  MOVE    #$1CD,D0
         MOVE    #$141,D1
         CLR     D2
         MOVEA.L glob54(A5),A1
         LEA     glob269(A5),A0
         JSR     proc148
         TST.B   glob254(A5)
         BEQ.S   lig_4
         LEA     glob262(A5),A0
         JSR     proc148
lig_4    RTS     

;-refs -  3/proc183    3/proc184   

proc190  MOVE    #$1EA,D0
         MOVE    #$142,D1
         MOVE    #1,D2
         MOVEA.L glob54(A5),A1
         LEA     glob269(A5),A0
         JSR     proc147
         TST.B   glob254(A5)
         BEQ.S   lig_5
         LEA     glob262(A5),A0
         JSR     proc147
lig_5    RTS     

;-refs -  3/proc183    3/proc185   

proc191  MOVE    #$1EA,D0
         MOVE    #$142,D1
         MOVE    #1,D2
         MOVEA.L glob54(A5),A1
         LEA     glob269(A5),A0
         JSR     proc148
         TST.B   glob254(A5)
         BEQ.S   lig_6
         LEA     glob262(A5),A0
         JSR     proc148
lig_6    RTS     

         QUAL    proc192 ; b# =378  s#3  =proc192

;-refs -  3/proc183   

proc192  MOVE    #$1AF,D0
         MOVE    #$12D,D1
         MOVE    glob170(A5),D2
         CMPI    #2,D2
         BLE.S   lih_1
         MOVE    #2,D2
lih_1    MOVEA.L glob66(A5),A1
         LEA     glob269(A5),A0
         JSR     proc147
         TST.B   glob254(A5)
         BEQ.S   lih_2
         LEA     glob262(A5),A0
         JSR     proc147
lih_2    RTS     

         QUAL    proc193 ; b# =379  s#3  =proc193

;-refs -  3/proc179   

proc193  MOVEQ   #8,D0
         _NewPtr ,CLEAR; (D0/byteCount:Size):A0\Ptr 
         LEA     data151,A1
         MOVE.L  A1,4(A0)
         MOVE.L  glob204(A5),(A0)
         MOVE.L  A0,glob204(A5)
         MOVE    #2,glob219(A5)
         RTS     

;-refs -  3/proc193   

data151  DC.W    $4A6D,$FF2E,$673A,$C6D,1,$FF2E,$672E,$102D
         DC.W    $FF34,$4880,$48C0,$7401,$41ED,$FF30,$10FC,2
         DC.W    $10FC,$CA,$10FC,$30,$2200,$6710,$E888,$241
         DC.W    $F,$641,$30,$1101,$51CA,$FFEE,$4EAD,$1B2
         DC.W    $4E75

         QUAL    proc194 ; b# =381  s#3  =proc194

;-refs - 21/proc396   25/proc402   

proc194  MOVEA.L A0,A4
         MOVEQ   #12,D0
         _NewPtr ,CLEAR; (D0/byteCount:Size):A0\Ptr 
         LEA     data152,A1
         MOVE.L  A1,4(A0)
         MOVE.L  A4,8(A0)
         MOVE.L  glob204(A5),(A0)
         MOVE.L  A0,glob204(A5)
lij_1    MOVE    (A4),D0
         BGT     lij_2
         ADDI    #$3E8,(A4)
         ADDI    #$3E8,2(A4)
lij_2    MOVEA   14(A4),A3
         CMPA.W  #0,A3
         BEQ.S   lij_3
         ADDA.W  A3,A4
         BRA     lij_1
lij_3    RTS     

;-refs -  3/proc194   

data152  DC.W    $2856,$206D,$FFA0,$C6D,4,$FEA8,$6606,$226D
         DC.W    $F7B8,$6004,$226D,$F5D0,$3014,$6F00,$3C,$322C
         DC.W    $A,$641,$28,$342C,$10,$4A6C,$C,$6E08
         DC.W    $B06C,6,$6E0C,$6006,$B06C,8,$6D04,$446C
         DC.W    $C,$362C,$C,$D043,$3880,$D76C,2,$640
         DC.W    $E,$9043,$4EBA,$D0CA,$366C,$E,$B6FC,0
         DC.W    $6704,$D8CB,$60B2,$4E75

         QUAL    proc195 ; b# =383  s#3  =proc195

;-refs - 15/proc366   25/proc400   

proc195  MOVEA.L A0,A2
         MOVEQ   #16,D0
         _NewPtr ; (D0/byteCount:Size):A0\Ptr 
         LEA     data153,A1
         MOVE.L  A1,4(A0)
         MOVE.L  A2,8(A0)
         CLR     12(A0)
         MOVE.L  glob204(A5),(A0)
         MOVE.L  A0,glob204(A5)
         RTS     

;-refs -  3/proc195   

data153  DC.W    $2456,$302A,8,$322A,$A,$206D,$FFA0,$362E
         DC.W    4,$4EFB,$3002,$4EFA,6,$4EFA,$26,$226D
         DC.W    $F5D4,$342A,$C,$4EBA,$D070,$4A6A,6,$6700
         DC.W    $54,$3D7C,4,4,$3D7C,2,6,$6000
         DC.W    $44,$226D,$F5D8,$342E,6,$5342,$6C26,$2456
         DC.W    $357C,1,4,$42AE,$FFFC,$303C,$24,$4EBA
         DC.W    $10D4,$3E2D,$FEAA,$3C2A,$E,$DC7,$3B47,$FEAA
         DC.W    $6000,$12,$3D42,6,$440,$A,$4EBA,$D01A
         DC.W    $6000,2,$4E75

         QUAL    proc196 ; b# =385  s#3  =proc196

;-refs -  2/proc132   

proc196  MOVE    D0,D6
         MOVE    D1,D7
         MOVE.L  #$CA,D0
         _NewPtr ,CLEAR; (D0/byteCount:Size):A0\Ptr 
         LEA     data154,A1
         MOVE.L  A1,4(A0)
         MOVE.L  A2,8(A0)
         CLR     16(A0)
         MOVE    D6,20(A0)
         MOVE    D7,22(A0)
         MOVE    D2,12(A0)
         MOVE    D3,14(A0)
         MOVE.L  glob204(A5),(A0)
         MOVE.L  A0,glob204(A5)
         ST      glob216(A5)
         RTS     

         QUAL    proc197 ; b# =386  s#3  =proc197

;-refs -  2/com_35     7/proc310   

proc197  MOVE    D0,D6
         MOVE    D1,D7
         MOVE.L  #$CA,D0
         _NewPtr ,CLEAR; (D0/byteCount:Size):A0\Ptr 
         LEA     data154,A1
         MOVE.L  A1,4(A0)
         MOVE.L  A2,8(A0)
         MOVE    #12,16(A0)
         MOVE    D6,20(A0)
         MOVE    D7,22(A0)
         MOVE    D2,12(A0)
         MOVE    D3,14(A0)
         MOVE.L  glob204(A5),(A0)
         MOVE.L  A0,glob204(A5)
         ST      glob216(A5)
         RTS     

;-refs -  3/proc196    3/proc197   

data154  DC.W    $302E,$C,$322E,$E,$206D,$FFA0,$362E,8
         DC.W    $4EFB,$3002,$4EFA,$E,$4EFA,$1A,$4EFA,$2D6
         DC.W    $4EFA,$26,$3D7C,4,8,$3D7C,$19,$A
         DC.W    $6000,$4D0,$226D,$F5C8,$343C,5,$4EBA,$CF5E
         DC.W    $536E,$A,$6C00,$4BC,$3F00,$303C,$11,$4EAD
         DC.W    $42,$301F,$3D7C,8,8,$426E,$A,$50EE
         DC.W    $C0,$3D7C,9,$10,$3D7C,9,$1C,$3D7C
         DC.W    9,$28,$640,$13,$48E7,$C0,$41ED,$FA0C
         DC.W    $43EE,$30,$2348,4,$2290,$2089,$2051,$B0FC
         DC.W    0,$6704,$2149,4,$4CDF,$300,$3D40,$38
         DC.W    $46E,$A,$38,$3D41,$3A,$46E,$A,$3A
         DC.W    $3D7C,$14,$42,$3D7C,$14,$44,$3D7C,1
         DC.W    $3C,$3D7C,$FFFF,$40,$48E7,$C0,$41ED,$FA0C
         DC.W    $43EE,$48,$2348,4,$2290,$2089,$2051,$B0FC
         DC.W    0,$6704,$2149,4,$4CDF,$300,$3D40,$50
         DC.W    $46E,$14,$50,$3D41,$52,$3D7C,$14,$5A
         DC.W    $3D7C,$17,$5C,$3D7C,1,$54,$3D7C,$FFFF
         DC.W    $56,$48E7,$C0,$41ED,$FA0C,$43EE,$60,$2348
         DC.W    4,$2290,$2089,$2051,$B0FC,0,$6704,$2149
         DC.W    4,$4CDF,$300,$3D40,$68,$3D41,$6A,$3D7C
         DC.W    $14,$72,$3D7C,$17,$74,$3D7C,1,$6C
         DC.W    $3D7C,1,$6E,$48E7,$C0,$41ED,$FA14,$43EE
         DC.W    $78,$2348,4,$2290,$2089,$2051,$B0FC,0
         DC.W    $6704,$2149,4,$4CDF,$300,$3D40,$80,$46E
         DC.W    $A,$80,$3D41,$82,$46E,$A,$82,$3D7C
         DC.W    $14,$8A,$3D7C,$14,$8C,$3D7C,1,$84
         DC.W    $3D7C,$FFFF,$88,$48E7,$C0,$41ED,$FA14,$43EE
         DC.W    $90,$2348,4,$2290,$2089,$2051,$B0FC,0
         DC.W    $6704,$2149,4,$4CDF,$300,$3D40,$98,$46E
         DC.W    $14,$98,$3D41,$9A,$3D7C,$14,$A2,$3D7C
         DC.W    $17,$A4,$3D7C,1,$9C,$3D7C,$FFFF,$9E
         DC.W    $48E7,$C0,$41ED,$FA14,$43EE,$A8,$2348,4
         DC.W    $2290,$2089,$2051,$B0FC,0,$6704,$2149,4
         DC.W    $4CDF,$300,$3D40,$B0,$3D41,$B2,$3D7C,$14
         DC.W    $BA,$3D7C,$17,$BC,$3D7C,1,$B4,$3D7C
         DC.W    1,$B6,$6000,$2CC,$48E7,$8820,$2456,$382E
         DC.W    4,$440,$F,$4A40,$6E04,$303C,1,$444
         DC.W    $12,$B072,$4002,$6C14,$C72,$1B,$4004,$66EE
         DC.W    $35BC,1,$4006,$23C,$B,$6004,$3C,4
         DC.W    $4CDF,$411,$4E75,$48E7,$8820,$2456,$382E,4
         DC.W    $640,$F,$644,$12,$B072,$4000,$6D14,$C72
         DC.W    $1B,$4004,$66EE,$35BC,1,$4006,$23C,$B
         DC.W    $6004,$3C,4,$4CDF,$411,$4E75,$48E7,$5820
         DC.W    $2456,$362E,6,$441,$36,$5943,$B272,$3000
         DC.W    $6E28,$4AB2,$3000,$6722,$3832,$3002,$644,$12
         DC.W    $B072,$4000,$6DE4,$B072,$4002,$6EF0,$C72,$200
         DC.W    $4004,$6CD6,$23C,$B,$6004,$3C,4,$4CDF
         DC.W    $41A,$4E75,$4A2E,$C0,$6600,$E,$42AE,$FFFC
         DC.W    $51ED,$FF27,$6000,$1FC,$51EE,$C0,$3C00,$3E01
         DC.W    $342E,$A,$526E,$A,$C42,4,$6E1E,$143B
         DC.W    $2016,$4882,$226D,$F5C4,$440,$16,$441,9
         DC.W    $4EBA,$CC6A,$6006,1,$201,0,$226D,$F5C8
         DC.W    $3006,$3207,$47EE,$10,$3E3C,5,$5347,$6D00
         DC.W    $8A,$440,$14,$535B,$6DF2,$362B,$FFFE,$49FA
         DC.W    $100,$D8C3,$1414,$4882,$6C64,$4442,$4EBA,$FECA
         DC.W    $6620,$36BC,9,$46E,$14,$50,$66E,$14
         DC.W    $5A,$46E,$14,$98,$66E,$14,$A2,$4A47
         DC.W    $6E3C,$48E7,$C0,$43EE,$48,$2069,4,$2251
         DC.W    $2089,$B2FC,0,$6704,$2348,4,$4CDF,$300
         DC.W    $48E7,$C0,$43EE,$90,$2069,4,$2251,$2089
         DC.W    $B2FC,0,$6704,$2348,4,$4CDF,$300,$4EBA
         DC.W    $CBCC,$50EE,$C0,$6000,$FF74,$3006,$47EE,$1C
         DC.W    $3E3C,5,$5347,$6D00,$82,$640,$14,$535B
         DC.W    $6DF2,$362B,$FFFE,$143B,$3068,$4882,$6C58,$4442
         DC.W    $4EBA,$FE74,$6614,$36BC,9,$66E,$14,$72
         DC.W    $66E,$14,$BA,$4A47,$6E3C,$48E7,$C0,$43EE
         DC.W    $60,$2069,4,$2251,$2089,$B2FC,0,$6704
         DC.W    $2348,4,$4CDF,$300,$48E7,$C0,$43EE,$A8
         DC.W    $2069,4,$2251,$2089,$B2FC,0,$6704,$2348
         DC.W    4,$4CDF,$300,$4EBA,$CB44,$50EE,$C0,$6084
         DC.W    $403,$201,1,$FE03,$400,$3006,$47EE,$28
         DC.W    $3E3C,3,$5347,$6D00,$86,$441,$14,$535B
         DC.W    $6DF2,$362B,$FFFE,$143B,$30D8,$4882,$6C64,$4442
         DC.W    $4EBA,$FE1A,$6620,$36BC,9,$46E,$14,$3A
         DC.W    $66E,$14,$44,$46E,$14,$82,$66E,$14
         DC.W    $8C,$4A47,$6E3C,$48E7,$C0,$43EE,$30,$2069
         DC.W    4,$2251,$2089,$B2FC,0,$6704,$2348,4
         DC.W    $4CDF,$300,$48E7,$C0,$43EE,$78,$2069,4
         DC.W    $2251,$2089,$B2FC,0,$6704,$2348,4,$4CDF
         DC.W    $300,$4EBA,$CAA8,$50EE,$C0,$6000,$FF78,$6000
         DC.W    2,$4E75

         QUAL    proc198 ; b# =388  s#3  =proc198

;-refs - 10/proc340   15/proc369   

proc198  MOVE    D0,D6
         MOVE    D1,D7
         MOVEQ   #48,D0
         _NewPtr ; (D0/byteCount:Size):A0\Ptr 
         LEA     data155,A1
         MOVE.L  A1,4(A0)
         MOVE    D6,8(A0)
         MOVE    D7,10(A0)
         SUBI    #32,D2
         MOVE    D2,12(A0)
         MOVE    D3,14(A0)
         MOVE    D4,16(A0)
         CLR     22(A0)
         MOVE    10(A0),34(A0)
         MOVE    #3,36(A0)
         MOVE    #1,38(A0)
         MOVE    #3,44(A0)
         MOVE.L  glob204(A5),(A0)
         MOVE.L  A0,glob204(A5)
         RTS     

;-refs -  3/proc198   

data155  DC.W    $536E,8,$362E,$E,$4EFB,$3002,$4EFA,$A
         DC.W    $4EFA,$64,$4EFA,$7E,$4A6E,8,$6E00,$EC
         DC.W    $3D6E,6,8,$3D56,$A,$3D56,$C,$536E
         DC.W    $C,$3D7C,4,$E,$48E7,$C0,$41ED,$FA0C
         DC.W    $43EE,$10,$2348,4,$2290,$2089,$2051,$B0FC
         DC.W    0,$6704,$2149,4,$4CDF,$300,$3D6E,$A
         DC.W    $18,$426E,$22,$3F00,$303C,$2C,$4EAD,$42
         DC.W    $301F,$6000,$96,$66E,$20,$C,$302E,4
         DC.W    $B06E,$C,$6E42,$3D7C,8,$E,$3D6E,4
         DC.W    $C,$6034,$66E,$20,$A,$302E,4,$B06E
         DC.W    $A,$6E24,$426E,$E,$48E7,$C0,$43EE,$10
         DC.W    $2069,4,$2251,$2089,$B2FC,0,$6704,$2348
         DC.W    4,$4CDF,$300,$4E71,$302E,$A,$322E,2
         DC.W    $4242,$226D,$F63C,$206D,$FFA0,$B06E,$C,$6C0A
         DC.W    $4EBA,$C968,$640,$20,$60F0,$302E,$C,$4EBA
         DC.W    $C95A,$302E,$A,$3D40,$18,$906E,$C,$4440
         DC.W    $640,$21,$3D40,$22,$4E71,$4E75

         QUAL    proc199 ; b# =390  s#3  =proc199

;-refs -  8/proc330    9/proc336   10/proc341   
;-       11/proc351   12/proc355   14/proc361   
;-       15/proc370   18/proc386   20/proc394   
;-       21/proc396   22/proc397   23/proc398   
;-       24/proc399   25/proc402   

proc199  MOVEA.L A0,A4
         MOVEA.L A1,A2
         MOVE    (A2),D5
         MOVE    #4,D0
         MULU    D5,D0
         ADDI.L  #14,D0
         _NewPtr ,CLEAR; (D0/byteCount:Size):A0\Ptr 
         LEA     data156,A1
         MOVE.L  A1,4(A0)
         MOVE.L  A4,8(A0)
         SUBQ    #1,D5
         CLR     12(A0)
         LEA     14(A0),A3
         ADDQ    #2,A2
lio_1    MOVE    (A2)+,D3
         MOVE    (A2)+,D6
         JSR     proc219
         ANDI    #$7FFF,D0
         CMP.W   D0,D6
         BLT.S   lio_2
         MOVE    D3,(A3)+
         MOVE    #49,4(A4,D3.W)
         ADDQ    #1,12(A0)
         BRA.S   lio_3
lio_2    MOVE    #1,4(A4,D3.W)
lio_3    DBRA    D5,lio_1
         MOVE.L  glob204(A5),(A0)
         MOVE.L  A0,glob204(A5)
         RTS     

;-refs -  3/proc199   

data156  DC.W    $3E2E,4,$6700,$152,$2456,$49EE,6,$4246
         DC.W    $206D,$FFA0,$6000,$136,$361C,$C72,$31,$3004
         DC.W    $6600,$12A,$3032,$3000,$3232,$3006,$4A2D,$FF87
         DC.W    $6730,$3828,$12,$444,$28,$B044,$6D00,$10C
         DC.W    $644,$228,$B044,$6E00,$102,$3A28,$14,$445
         DC.W    $28,$B245,$6D00,$F4,$645,$136,$B245,$6E00
         DC.W    $EA,$3832,$3008,$4EFB,$4002,$4EFA,$26,$4EFA
         DC.W    $34,$4EFA,$44,$4EFA,$52,$4EFA,$5E,$4EFA
         DC.W    $6C,$4EFA,$7A,$4EFA,$88,$4EFA,$96,$4EFA
         DC.W    $A4,$4242,$226D,$F670,$640,$C,$641,$1C
         DC.W    $6000,$A4,$343C,1,$226D,$F670,$640,$C
         DC.W    $641,$1C,$6000,$90,$226D,$F670,$343C,2
         DC.W    $640,$C,$641,$1C,$607C,$226D,$F6EC,$4242
         DC.W    $640,$C,$641,$17,$606C,$226D,$F6EC,$343C
         DC.W    1,$640,$C,$641,$17,$605A,$226D,$F6EC
         DC.W    $343C,2,$640,$C,$641,$17,$6048,$226D
         DC.W    $F6EC,$343C,3,$640,$C,$641,$17,$6036
         DC.W    $226D,$F6EC,$343C,4,$640,$C,$641,$FFF5
         DC.W    $6024,$226D,$F6EC,$343C,6,$640,$C,$641
         DC.W    $FFF5,$6012,$226D,$F6EC,$343C,5,$640,$C
         DC.W    $641,$FFF5,$4E71,$4EBA,$C798,$5246,$51CF,$FECA
         DC.W    $4A46,$6704,$6000,8,$42AE,$FFFC,$60F6,$4E75

         QUAL    proc200 ; b# =392  s#3  =proc200

;-refs -  8/proc330   

proc200  MOVEA.L A0,A4
         MOVEQ   #12,D0
         _NewPtr ,CLEAR; (D0/byteCount:Size):A0\Ptr 
         LEA     data157,A1
         MOVE.L  A1,4(A0)
         MOVE.L  A4,8(A0)
         CLR     6(A4)
         CLR     glob178(A5)
         MOVE.L  glob204(A5),(A0)
         MOVE.L  A0,glob204(A5)
         RTS     

;-refs -  3/proc200   

data157  DC.W    $2856,$302C,$A,$322C,$C,$206D,$FFA0,$4A6C
         DC.W    $E,$6E06,$226D,$F6B8,$6004,$226D,$F7BC,$342C
         DC.W    6,$6E14,$6D08,$4242,$4EBA,$C732,$6046,$343C
         DC.W    4,$4EBA,$C728,$603C,$526C,6,$5342,$660C
         DC.W    $3F00,$303C,$1D,$4EAD,$42,$301F,$C42,4
         DC.W    $6F1E,$C42,9,$6F14,$397C,$FFFF,6,$3E2C
         DC.W    8,$3C2D,$FEB2,$FC6,$3B46,$FEB2,$343C,4
         DC.W    $4EBA,$C6EA,$4E75

         QUAL    proc201 ; b# =394  s#3  =proc201

;-refs - 12/proc355   

proc201  MOVE    D0,D3
         MOVE    D1,D4
         MOVEA.L A1,A3
         MOVEA.L A0,A4
         MOVEQ   #22,D0
         _NewPtr ,CLEAR; (D0/byteCount:Size):A0\Ptr 
         LEA     data158,A1
         MOVE.L  A1,4(A0)
         MOVE    D3,8(A0)
         MOVE    D4,10(A0)
         MOVE    D2,12(A0)
         MOVE.L  A3,14(A0)
         MOVE.L  A4,18(A0)
         MOVE.L  glob204(A5),(A0)
         MOVE.L  A0,glob204(A5)
         RTS     

;-refs -  3/proc201   

data158  DC.W    $3016,$322E,2,$226E,6,$206D,$FFA0,$4A2D
         DC.W    $FF87,$6728,$3828,$12,$444,$20,$B044,$6D3C
         DC.W    $644,$220,$B044,$6E34,$3A28,$14,$445,$20
         DC.W    $B245,$6D28,$645,$144,$B245,$6E20,$342E,4
         DC.W    $246E,$A,$1432,$2000,$4882,$6C08,$4242,$426E
         DC.W    4,$60F0,$526E,4,$4EBA,$C65A,$4E75

         QUAL    proc202 ; b# =396  s#3  =proc202

;-refs -  9/proc336   14/proc361   15/proc370   
;-       18/proc386   

proc202  MOVEA.L A0,A4
         MOVE    (A4)+,D7
         SUBQ    #1,D7
lir_1    MOVEQ   #40,D0
         _NewPtr ,CLEAR; (D0/byteCount:Size):A0\Ptr 
         LEA     data159,A1
         MOVE.L  A1,4(A0)
         MOVE    #4,8(A0)
         MOVE.B  4(A4),D0
         EXT     D0
         MOVE    D0,10(A0)
         MOVE.B  5(A4),D0
         EXT     D0
         MOVE    D0,14(A0)
         MOVE.B  6(A4),D0
         EXT     D0
         MOVE    D0,12(A0)
         MOVE    (A4),24(A0)
         ADDQ    #6,24(A0)
         MOVE    2(A4),26(A0)
         ADDQ    #5,26(A0)
         CLR     28(A0)
         MOVE    #10,34(A0)
         MOVE    #2,36(A0)
         MOVE.L  glob204(A5),(A0)
         MOVE.L  A0,glob204(A5)
         ADDQ    #8,A4
         DBRA    D7,lir_1
         RTS     

;-refs -  3/proc202   

data159  DC.W    $3616,$4EFB,$3002,$4EFA,$E,$4EFA,$24,$4EFA
         DC.W    $38,$4EFA,$70,$343C,2,$536E,2,$6E00
         DC.W    $9C,$3CBC,$C,$3D7C,2,2,$6000,$8E
         DC.W    $4242,$536E,2,$6E00,$84,$3CBC,8,$3D7C
         DC.W    2,2,$6000,$76,$343C,1,$536E,2
         DC.W    $6E00,$6A,$4256,$3D6E,4,2,$48E7,$C0
         DC.W    $41ED,$FA0C,$43EE,8,$2348,4,$2290,$2089
         DC.W    $2051,$B0FC,0,$6704,$2149,4,$4CDF,$300
         DC.W    $6000,$3A,$343C,1,$536E,2,$6E00,$2E
         DC.W    $3CBC,4,$3D6E,6,2,$48E7,$C0,$43EE
         DC.W    8,$2069,4,$2251,$2089,$B2FC,0,$6704
         DC.W    $2348,4,$4CDF,$300,$6000,2,$206D,$FFA0
         DC.W    $302E,$10,$5D40,$322E,$12,$5B41,$3828,$12
         DC.W    $444,$20,$B044,$6D24,$644,$220,$B044,$6E1C
         DC.W    $3A28,$14,$445,$A,$B245,$6D10,$645,$12E
         DC.W    $B245,$6E08,$226D,$F7B0,$4EBA,$C4F4,$4E75

         QUAL    proc203 ; b# =398  s#3  =proc203

;-refs - 10/proc341   11/proc351   21/proc396   

proc203  MOVEA.L A0,A4
         MOVE    (A4)+,D7
         SUBQ    #1,D7
lis_1    MOVEQ   #28,D0
         _NewPtr ,CLEAR; (D0/byteCount:Size):A0\Ptr 
         LEA     data160,A1
         MOVE.L  A1,4(A0)
         CLR     26(A0)
         MOVE    (A4)+,8(A0)
         MOVE    (A4)+,10(A0)
         MOVEA.L A2,A1
         ADDA.W  (A4)+,A1
         MOVE.L  A1,12(A0)
         MOVE    (A1),2(A1)
         ADDI    #30,2(A1)
         MOVE.B  (A4)+,D0
         EXT     D0
         MOVE    D0,16(A0)
         MOVE.B  (A4)+,D0
         EXT     D0
         BGE.S   lis_2
         MOVE    #16,26(A0)
         MOVE    #1,24(A0)
         NEG     D0
         MOVE    (A1),2(A1)
         SUBQ    #1,2(A1)
lis_2    MOVE    D0,18(A0)
         MOVE.B  (A4)+,D0
         EXT     D0
         MOVE    D0,20(A0)
         MOVE.B  (A4)+,D0
         EXT     D0
         MOVE    D0,22(A0)
         MOVE.L  glob204(A5),(A0)
         MOVE.L  A0,glob204(A5)
         DBRA    D7,lis_1
         RTS     

;-refs -  3/proc203   

data160  DC.W    $362E,$12,$4EFB,$3002,$4EFA,$12,$4EFA,$7C
         DC.W    $4EFA,$90,$4EFA,$B2,$4EFA,$C8,$343C,1
         DC.W    $536E,$A,$6E00,$D8,$C6E,1,$10,$6700
         DC.W    $CE,$3D7C,$C,$12,$3D7C,2,$A,$246E
         DC.W    4,$3552,2,$536A,2,$206D,$FF3C,$3228
         DC.W    $C,$48C1,$D2A8,8,$B2AE,4,$6600,$A0
         DC.W    $3028,$1A,$C40,0,$6710,$C40,$3F,$670A
         DC.W    $C40,$C,$6704,$6000,$86,$2F0E,$2C48,$504E
         DC.W    $4EAD,$2B2,$2C5F,$6000,$76,$536E,$A,$6E00
         DC.W    $84,$3D7C,8,$12,$3D7C,2,$A,$6000
         DC.W    $74,$4242,$536E,$A,$6E00,$54,$426E,$12
         DC.W    $3D6E,$C,$A,$246E,4,$3552,2,$66A
         DC.W    $1E,2,$6000,$38,$4242,$536E,$A,$6E00
         DC.W    $2E,$3D7C,4,$12,$3D6E,$E,$A,$6000
         DC.W    $1E,$362E,$A,$72D,$FEB0,$6700,$28,$3D7C
         DC.W    8,$12,$3D7C,2,$A,$6000,$18,$206D
         DC.W    $FFA0,$D46E,8,$3016,$322E,2,$226D,$F7B4
         DC.W    $4EBA,$C368,$4E75

         QUAL    proc204 ; b# =400  s#3  =proc204

param4    VEQU  8
param3    VEQU  10
param2    VEQU  12
param1    VEQU  16
         VEND    

;-refs -  1/proc103   

proc204  LINK    A6,#0
         MOVEM.L D2-D5/A2,-(A7)
         MOVE    param4(A6),D5
         MOVE    param3(A6),D0
         MOVEA.L param2(A6),A1
         MOVEA.L param1(A6),A0
         ASR     #1,D5
         MOVEA.L A1,A2
lit_1    CLR     (A2)+
         DBRA    D5,lit_1
         MOVE    #7,D1
lit_2    MOVE.B  (A0)+,D2
         BPL.S   lit_7
         ANDI    #$7F,D2
         BNE.S   lit_3
         BRA     lit_9
lit_3    BTST    #6,D2
         BEQ.S   lit_6
         ANDI    #$3F,D2
         ADDQ    #7,D2
         SUB     D1,D2
         SUBQ    #1,D2
         MOVEQ   #-1,D3
         MOVEQ   #7,D4
         SUB     D1,D4
         LSR.B   D4,D3
         OR.B    D3,(A1)+
         MOVE    D2,D3
         ASR     #3,D3
         BRA.S   lit_5
lit_4    MOVE.B  #$FF,(A1)+
lit_5    DBRA    D3,lit_4
         MOVE    #7,D1
         ANDI    #7,D2
         MOVE    #$FF00,D3
         ASR     D2,D3
         OR.B    D3,(A1)
         SUB     D2,D1
         BRA     lit_2
lit_6    ANDI    #$3F,D2
         ADDQ    #7,D2
         SUB     D1,D2
         SUBQ    #1,D2
         ADDQ    #1,A1
         MOVE    D2,D3
         ASR     #3,D3
         ADDA.W  D3,A1
         MOVE    #7,D1
         ANDI    #7,D2
         SUB     D2,D1
         BRA     lit_2
lit_7    ANDI    #$7F,D2
         MOVE    D1,D3
         ADDQ    #2,D3
         LSL     D3,D2
         OR.B    D2,1(A1)
         LSR     #8,D2
         OR.B    D2,(A1)
         SUBQ    #7,D1
         BGE.S   lit_8
         ADDQ    #8,D1
         ADDQ    #1,A1
lit_8    BRA     lit_2
lit_9    MOVEM.L (A7)+,D2-D5/A2
         UNLK    A6
         POP.L   A0
         ADDA.W  #12,A7
         JMP     (A0)

         QUAL    proc205 ; b# =401  s#3  =proc205

param2    VEQU  8
param1    VEQU  12
         VEND    

;-refs -  1/proc103    1/proc105    1/proc108   
;-        5/proc259    5/proc272   

proc205  LINK    A6,#0
         MOVEM.L D0-D4/A2-A3,-(A7)
         MOVEA.L param2(A6),A0
         MOVEA.L param1(A6),A2
         MOVE    (A0)+,D0
         MOVEA.L A0,A1
         ADDQ.L  #8,A1
         MOVEA.L A1,A3
         ADDA.W  D0,A3
liu_1    MOVE.B  (A1)+,D4
         BLT     liu_3
         BTST    #6,D4
         BEQ     liu_7
         BTST    #5,D4
         BNE     liu_5
         MOVE.B  (A1)+,D1
         ANDI    #$1F,D4
liu_2    MOVE.B  D1,(A2)+
         DBRA    D4,liu_2
         BRA     liu_9
liu_3    MOVE.B  D4,D3
         ANDI    #7,D3
         MOVE.B  0(A0,D3.W),D1
         ROR.B   #3,D4
         ANDI    #$F,D4
liu_4    MOVE.B  D1,(A2)+
         DBRA    D4,liu_4
         BRA     liu_9
liu_5    MOVE.B  D4,D3
         ROR.B   #2,D3
         ANDI    #7,D3
         MOVE.B  0(A0,D3.W),D1
         ANDI    #3,D4
         ROL     #8,D4
         OR.B    (A1)+,D4
liu_6    MOVE.B  D1,(A2)+
         DBRA    D4,liu_6
         BRA     liu_9
liu_7    EXT     D4
liu_8    MOVE.B  (A1)+,(A2)+
         DBRA    D4,liu_8
         BRA     liu_9
liu_9    CMPA.L  A1,A3
         BGT     liu_1
         MOVEM.L (A7)+,D0-D4/A2-A3
         UNLK    A6
         POP.L   A0
         ADDQ    #8,A7
         JMP     (A0)

         QUAL    proc206 ; b# =402  s#3  =proc206

;-refs -  2/proc124   

proc206  MOVEM.L D2-D6,-(A7)
         MOVE    D0,D2
         ADD     10(A1),D2
         MOVE    D1,D3
         ADD     12(A1),D3
liv_1    MOVEA.L (A0),A0
         CMPA.W  #0,A0
         BEQ.S   liv_6
         MOVE    8(A0),D4
         BEQ     liv_1
         MOVE    12(A0),D5
         MOVE    16(A0),D6
         BLT.S   liv_2
         CMP.W   D4,D2
         BLT     liv_1
         ADD     D6,D4
         CMP.W   D4,D0
         BGT     liv_1
         BRA.S   liv_3
liv_2    CMP.W   D4,D0
         BGT     liv_1
         ADD     D6,D4
         CMP.W   D4,D2
         BLT     liv_1
liv_3    MOVE    20(A0),D6
         BLT.S   liv_4
         CMP.W   D5,D3
         BLT     liv_1
         ADD     20(A0),D5
         CMP.W   D5,D1
         BGT     liv_1
         BRA.S   liv_5
liv_4    CMP.W   D5,D1
         BGT     liv_1
         ADD     20(A0),D5
         CMP.W   D5,D3
         BLT     liv_1
liv_5    MOVE    16(A0),D0
         MOVE    20(A0),D1
         BRA.S   liv_7
liv_6    SUBA.L  A0,A0
liv_7    CMPA.W  #0,A0
         MOVEM.L (A7)+,D2-D6
         RTS     

         QUAL    proc207 ; b# =403  s#3  =proc207

;-refs -  3/proc179   

proc207  CLR     glob207(A5)
         RTS     

         QUAL    proc208 ; b# =404  s#3  =proc208

;-refs -  3/proc168   14/proc360   

proc208  MOVEM.L D1/A1,-(A7)
         MOVE.L  A0,D1
         OR.L    D7,D1
         MOVEA.L D1,A0
         MOVEA.L glob208(A5),A1
         MOVE    glob207(A5),D1
         MOVE    #0,CCR
         BRA.S   lix_2
lix_1    TST.L   (A1)+
lix_2    DBEQ    D1,lix_1
         TST     D1
         BGE.S   lix_3
         ADDQ    #1,glob207(A5)
         MOVE.L  A0,(A1)
         BRA.S   lix_4
lix_3    MOVE.L  A0,-(A1)
lix_4    MOVEM.L (A7)+,D1/A1
         RTS     


data161  DC.W    $48E7,$C040,$226D,$FF0C,$302D,$FF0A,$2208,$281
         DC.W    $FF,$FFFF,$2041,$2219,$281,$FF,$FFFF,$B1C1
         DC.W    $57C8,$FFF4,$4A40,$6D02,$42A1,$4CDF,$203,$4E75

         QUAL    proc209 ; b# =406  s#3  =proc209

;-refs -  2/proc124   

proc209  MOVEM.L D2-D6/A2-A3,-(A7)
         MOVEA.L glob208(A5),A2
         MOVE    glob207(A5),D6
         MOVE    D0,D2
         ADD     10(A1),D2
         MOVE    D1,D3
         ADD     12(A1),D3
         BRA.S   liy_3
liy_1    MOVEA.L (A2)+,A3
         CMPA.W  #0,A3
         BEQ.S   liy_3
         MOVE    (A3),D4
         MOVE    2(A3),D5
         CMP.W   D0,D4
         BLT.S   liy_2
         CMP.W   D1,D5
         BLT.S   liy_2
         CMP.W   D2,D4
         BGT.S   liy_2
         CMP.W   D3,D5
         BGT.S   liy_2
         SUB     $80(A2),D4
         MOVE    D4,D0
         SUB     $82(A2),D5
         MOVE    D5,D1
         MOVE.L  A3,D2
         ANDI.L  #-$1000000,D2
         MOVEA.L D2,A0
         MOVE    #0,CCR
         BRA.S   liy_4
liy_2    MOVE.L  (A3),$80(A2)
liy_3    DBRA    D6,liy_1
         MOVE    #4,CCR
liy_4    MOVEM.L (A7)+,D2-D6/A2-A3
         RTS     

         QUAL    proc210 ; b# =407  s#3  =proc210

;-refs -  2/proc124    6/proc305   

proc210  MOVEM.L D2-D4,-(A7)
         MOVE    D0,D2
         ADD     10(A1),D2
         MOVE    D1,D3
         ADD     12(A1),D3
liz_1    MOVEA.L (A0),A0
         CMPA.W  #0,A0
         BEQ     liz_2
         MOVE    8(A0),D4
         CMP.W   D2,D4
         BGT     liz_1
         ADD     18(A0),D4
         CMP.W   D0,D4
         BLT     liz_1
         MOVE    10(A0),D4
         CMP.W   D3,D4
         BGT     liz_1
         ADD     20(A0),D4
         CMP.W   D1,D4
         BLT     liz_1
liz_2    MOVEM.L (A7)+,D2-D4
         RTS     

         QUAL    proc211 ; b# =408  s#3  =proc211


proc211  MOVEM.L D3-D5,-(A7)
         CLR     D3
         MOVE    D1,D5
         ASR     D2,D5
lja_1    MOVE    0(A2,D3.W),D7
         BEQ.S   lja_6
         ASR     D2,D7
         CMP.W   D5,D7
         BGE.S   lja_3
lja_2    ADDQ    #4,D3
         BRA     lja_1
lja_3    BGT     lja_7
         MOVE    2(A2,D3.W),D4
lja_4    CMP.W   2(A2,D4.W),D0
         BGT.S   lja_5
         CMP.W   0(A2,D4.W),D0
         BLT     lja_2
         CMPI    #$200,4(A2,D4.W)
         BGE.S   lja_5
         MOVE    0(A2,D3.W),D1
         MOVE    D4,D7
         SWAP    D7
         MOVE    D3,D7
         BRA     lja_8
lja_5    ADDI    #18,D4
         TST     0(A2,D4.W)
         BEQ     lja_2
         BRA     lja_4
lja_6    MOVE    #$FFFF,D7
         BRA.S   lja_8
lja_7    CLR     D7
lja_8    TST     D7
         MOVEM.L (A7)+,D3-D5
         RTS     

         QUAL    proc212 ; b# =409  s#3  =proc212

;-refs -  3/proc179   

proc212  MOVEQ   #10,D0
         _NewPtr ,CLEAR; (D0/byteCount:Size):A0\Ptr 
         LEA     data162,A1
         MOVE.L  A1,4(A0)
         CLR     8(A0)
         MOVE.L  glob204(A5),(A0)
         MOVE.L  A0,glob204(A5)
         MOVE    #2,glob199(A5)
         CMPI.L  #$7FFFFFFF,glob196(A5)
         BNE.S   ljb_1
         MOVEA.L glob197(A5),A0
         MOVEA.L (A0),A0
         MOVE.L  44(A0),glob196(A5)
ljb_1    RTS     

;-refs -  3/proc212   

data162  DC.W    $4A56,$6F10,$5356,$660C,$3F00,$303C,8,$4EAD
         DC.W    $42,$301F,$6100,4,$4E75,$4A6D,$FEF2,$6700
         DC.W    $54,$C6D,1,$FEF2,$6700,$46,$202D,$FEF4
         DC.W    $B0AD,$FEDE,$6D36,$526D,$FEF8,$206D,$FEE2,$2050
         DC.W    $D0FC,$30,$43ED,$FEDE,$5889,$23C,7,$7203
         DC.W    $C308,$51C9,$FFFC,$B0AD,$FEDE,$6CDA,$3CBC,$D
         DC.W    $3F00,$303C,8,$4EAD,$42,$301F,$4EBA,$42
         DC.W    $4EAD,$1AA,$4E75

         QUAL    proc213 ; b# =411  s#3  =proc213

;-refs -  3/proc214    3/proc216   

proc213  MOVEA   #scratch8,A0
         CLR.L   (A0)+
         LEA     glob200(A5),A1
         ADDQ.L  #4,A1
         MOVE    D0,-2(A0)
         ANDI.B  #7,CCR
         MOVEQ   #3,D1
ljc_1    ABCD    -(A0),-(A1)
         DBRA    D1,ljc_1
         MOVE    #2,glob199(A5)
         RTS     

         QUAL    proc214 ; b# =412  s#3  =proc214

;-refs -  8/proc321    8/proc325   14/proc359   
;-       15/proc362   

proc214  MOVEM.L D1/A0-A1,-(A7)
         MOVEA.L glob197(A5),A0
         MOVEA.L (A0),A0
         MOVE    0(A0,D0.W),D0
         BSR     proc213
         MOVEM.L (A7)+,D1/A0-A1
         RTS     

         QUAL    proc215 ; b# =413  s#3  =proc215

;-refs -  5/proc298   

proc215  MOVE.L  glob200(A5),D0
         LEA     glob198(A5),A0
         MOVE.L  #$ACACACA,(A0)+
         MOVE.L  #$CACACACA,(A0)+
         MOVE    #$CACA,(A0)+
         MOVE.B  #48,(A0)+
         MOVE    #3,D2
         MOVE.L  D0,D1
lje_1    LSR.L   #4,D0
         ANDI    #$F,D1
         ADDI    #48,D1
         MOVE.B  D1,-(A0)
         MOVE.L  D0,D1
         BEQ.S   lje_2
         SUBQ    #1,D2
         BGT     lje_1
         MOVE    #3,D2
         MOVE.B  #44,-(A0)
         BRA     lje_1
lje_2    RTS     

         QUAL    proc216 ; b# =414  s#3  =proc216

;-refs -  2/com_34     8/proc330    9/proc336   
;-       10/proc341   11/proc351   12/proc355   
;-       18/proc386   20/proc394   21/proc396   
;-       22/proc397   

proc216  MOVEA.L glob197(A5),A0
         MOVEA.L (A0),A0
         MOVEM.L D0/A0,-(A7)
         MOVE    0(A0,D0.W),D0
         JSR     proc213
         MOVEM.L (A7)+,D0/A0
         MOVE    2(A0,D0.W),D0
         MOVE    glob214(A5),D1
         ASR     #8,D1
         MULU    D1,D0

;-refs -  3/proc218   

proc217  CMPI.L  #$9FFFF,D0
         BLE.S   ljf_1
         MOVE.L  #$9FFFF,D0
ljf_1    MOVEQ   #0,D2
         MOVEQ   #0,D1
ljf_2    DIVU    #10,D0
         SWAP    D0
         MOVEQ   #0,D3
         MOVE    D0,D3
         LSL.L   D1,D3
         OR.L    D3,D2
         ADDQ    #4,D1
         CLR     D0
         SWAP    D0
         BNE     ljf_2
         MOVEA   #scratch8,A0
         MOVE.L  D2,(A0)+
         LEA     glob200(A5),A1
         ADDQ.L  #4,A1
         ANDI.B  #7,CCR
         MOVEQ   #3,D1
ljf_3    ABCD    -(A0),-(A1)
         DBRA    D1,ljf_3
         BRA     ljf_4

ljf_4    EQU     *+12

         QUAL    proc218 ; b# =416  s#3  =proc218

;-refs -  5/proc296    5/proc298   

proc218  POP.L   A0
         POP.L   D0
         PUSH.L  A0
         PUSH.L  D3
         BSR     proc217
         POP.L   D3
         RTS     

         QUAL    proc219 ; b# =417  s#3  =proc219

;-refs -  3/proc164    3/proc175    3/proc199   
;-        7/proc308    8/proc329    8/proc330   
;-        9/proc333   13/proc357   15/proc369   

proc219  TST     glob168(A5)
         BEQ.S   ljh_1
         MOVE    glob163(A5),D0
         ADDQ    #2,glob163(A5)
         ANDI    #$E,glob163(A5)
         MOVE    data163(D0.W),D0
         NOT     D0
         EORI    #$ABCD,D0   ; Myst_BCD
         RTS     
ljh_1    MOVEM.L D1-D2/A0-A2,-(A7)
         CLR     -(A7)
         _Random ; :INTEGER 
         ADDQ    #2,A7
         MOVEM.L (A7)+,D1-D2/A0-A2
         RTS     

;-refs -  3/proc219   

data163  DC.W    $8510,$4058,$8D0,$476,$C121,$4195,$B717,$3991

         QUAL    proc220 ; b# =419  s#3  =proc220

;-refs -  1/proc113   

proc220  LEA     data164,A0
         MOVE.L  A0,DeskHook
         RTS     

         QUAL    proc221 ; b# =420  s#3  =proc221

;-refs -  1/proc113   

proc221  CLR.L   DeskHook
         RTS     

;-refs -  3/proc220   

data164  DC.W    $4A40,$6600,$E,$48E7,$E0E0,$4EAD,$13A,$4CDF
         DC.W    $707,$4E75

         QUAL    proc222 ; b# =422  s#3  =proc222

;-refs -  1/proc106   

proc222  POP.L   D1
         POP     D0
         PUSH.L  D1
         MOVE    D0,D1
         SUBI    #$64,D1
         ASL     #2,D1
         LEA     glob1(A5),A0
         ADDA.W  D1,A0
         PUSH.L  A0
         PUSH    D0
         JSR     proc103(A5)
         RTS     

         QUAL    proc223 ; b# =423  s#3  =proc223

;-refs -  1/proc107   

proc223  POP.L   D1
         POP     D0
         PUSH.L  D1
         MOVE    D0,D1
         SUBI    #$64,D1
         ASL     #2,D1
         LEA     glob1(A5),A0
         ADDA.W  D1,A0
         PUSH.L  A0
         JSR     proc104(A5)
         RTS     

         QUAL    proc224 ; b# =424  s#3  =proc224

;-refs -  1/proc106   

proc224  POP.L   D1
         POP     D0
         PUSH.L  D1
         MOVE    D0,D1
         SUBI    #$7D0,D1
         ASL     #2,D1
         LEA     glob68(A5),A0
         ADDA.W  D1,A0
         PUSH.L  A0
         PUSH    D0
         JSR     proc108(A5)
         RTS     

         QUAL    proc225 ; b# =425  s#3  =proc225

;-refs -  1/proc107   

proc225  POP.L   D1
         POP     D0
         PUSH.L  D1
         MOVE    D0,D1
         SUBI    #$7D0,D1
         ASL     #2,D1
         LEA     glob68(A5),A0
         ADDA.W  D1,A0
         PUSH.L  A0
         JSR     proc104(A5)
         RTS     

         QUAL    proc226 ; b# =426  s#3  =proc226

;-refs -  3/proc179   

proc226  MOVEQ   #12,D0
         _NewPtr ; (D0/byteCount:Size):A0\Ptr 
         LEA     data165,A1
         MOVE.L  A1,4(A0)
         MOVE.L  #$FFFF,8(A0)
         CLR     10(A0)
         MOVE.L  glob204(A5),(A0)
         MOVE.L  A0,glob204(A5)
         MOVE    #$6400,glob214(A5)
         RTS     

;-refs -  3/proc226   

data165  DC.W    $4A6D,$FF22,$672C,$5D6D,$FF22,$C6D,$F00,$FF22
         DC.W    $6E00,$20,$536D,$F9F8,$6E18,$102D,$FF22,$4880
         DC.W    $5640,$3B40,$F9F8,$3F00,$303C,$18,$4EAD,$42
         DC.W    $301F,$536E,2,$6E3E,$426E,2,$102D,$FF22
         DC.W    $4880,$B016,$6700,$8C,$1C80,$3D7C,2,2
         DC.W    $4A40,$6C02,$4240,$41FA,$62,$3228,2,$D240
         DC.W    $3141,6,$41FA,$4C,$3228,6,$440,$64
         DC.W    $D240,$3141,2,$C6E,2,2,$6F06,$3D7C
         DC.W    1,2,$41ED,$FFEA,$B1ED,$FFA0,$6606,$486D
         DC.W    $FFC6,$6004,$486D,$FFB8,$A875,$487A,$16,$487A
         DC.W    $2A,$A8A5,$487A,$14,$487A,$18,$A8A5,$6000
         DC.W    $22,$14A,0,$151,$150,$14A,$EC,$151
         DC.W    0,$55AA,$55AA,$55AA,$55AA,0,0,0
         DC.W    0,$4E75

         QUAL    proc227 ; b# =428  s#3  =proc227

;-refs -  3/proc179   

proc227  MOVEA.L A0,A3
         MOVEA.L A1,A4
         MOVEQ   #24,D0
         _NewPtr ; (D0/byteCount:Size):A0\Ptr 
         LEA     data166,A1
         MOVE.L  A1,4(A0)
         MOVE.L  A3,8(A0)
         MOVE.L  A4,16(A0)
         MOVE    #$7FFF,12(A0)
         CLR     14(A0)
         MOVE.L  glob204(A5),(A0)
         MOVE.L  A0,glob204(A5)
         RTS     

;-refs -  3/proc227   

data166  DC.W    $2056,$3010,$536E,6,$6E48,$426E,6,$B06E
         DC.W    4,$6700,$7E,$3D40,4,$6C02,$4240,$C40
         DC.W    $63,$6F04,$303C,$63,$3D7C,2,6,$41EE
         DC.W    $C,$30FC,$2CA,$10FC,$30,$4840,$4240,$4840
         DC.W    $80FC,$A,$4840,$640,$30,$1100,$4240,$4840
         DC.W    $66EE,$C6E,2,6,$6F06,$3D7C,1,6
         DC.W    $41ED,$FFEA,$B1ED,$FFA0,$6606,$486D,$FFC6,$6004
         DC.W    $486D,$FFB8,$A875,$286E,8,$486C,2,$A8A2
         DC.W    $3F2C,4,$3F2C,2,$5E57,$A893,$486E,$C
         DC.W    $A884,$4E75
