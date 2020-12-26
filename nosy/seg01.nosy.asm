; vi: syntax=asm68k

         Segment  1

         QUAL    proc1 ; b# =1  s#1  =proc1

;-refs -  1/proc86    

proc1    MOVEA.L ApplScratch,A1
         LEA     18(A1),A0
         MOVEQ   #1,D0
         MOVE    D0,4(A0)
         LEA     proc13,A1
         MOVE.L  A1,6(A0)
         MOVE    D0,10(A0)
         _VInstall ; (A0/VBLTaskPtr:QElemPtr):D0\OSErr 
         RTS     

         QUAL    proc2 ; b# =2  s#1  =proc2

;-refs -  5/proc252    5/proc267   

proc2    JSR     proc230(A5)
         POP.L   A0
         POP     D0
         PUSH.L  A0
         JMP     proc9

         QUAL    proc3 ; b# =3  s#1  =proc3


proc3    PUSH.L  A0
         MOVEA.L ApplScratch,A0
         MOVE    SR,-(A7)
         ORI     #$300,SR
         MOVE.L  (A0),4(A0)
         CLR.L   (A0)
         MOVE    (A7)+,SR
         POP.L   A0
         RTS     

         QUAL    proc4 ; b# =4  s#1  =proc4


proc4    PUSH.L  A0
         MOVEA.L ApplScratch,A0
         MOVE.L  4(A0),(A0)
         POP.L   A0
         RTS     

         QUAL    proc5 ; b# =5  s#1  =proc5

param4    VEQU  8
param3    VEQU  12
param2    VEQU  16
param1    VEQU  20
         VEND    

;-refs -  1/proc11    

proc5    LINK    A6,#0
         MOVEM.L D3/A2,-(A7)
         MOVEA.L param1(A6),A0
         MOVEA.L param2(A6),A1
         MOVE.L  param3(A6),D0
         MOVEA.L param4(A6),A2
         MOVE    #$80,D3
         SUBQ.L  #1,D0
laf_1    MOVE.B  (A0)+,D1
         MOVE.B  D1,D2
         LSR.B   #4,D1
         ANDI    #$F,D1
         ADD.B   0(A2,D1.W),D3
         MOVE.B  D3,(A1)+
         ANDI    #$F,D2
         ADD.B   0(A2,D2.W),D3
         MOVE.B  D3,(A1)+
         DBRA    D0,laf_1
         MOVEM.L (A7)+,D3/A2
         UNLK    A6
         POP.L   A0
         ADDA.W  #16,A7
         JMP     (A0)

         QUAL    proc6 ; b# =6  s#1  =proc6

;-refs -  1/proc7     

proc6    MOVEA.L VIA,A0
         BTST    #7,(A0)
         BNE.S   lag_1
         BSET    #7,(A0)
lag_1    RTS     

         QUAL    proc7 ; b# =7  s#1  =proc7

;-refs -  1/proc89     1/proc90    

proc7    JSR     proc6
         RTS     

         QUAL    proc8 ; b# =8  s#1  =proc8

;-refs -  1/proc87    

proc8    MOVEA.L ApplScratch,A1
         LEA     18(A1),A0
         _VRemove ; (A0/VBLTaskPtr:QElemPtr):D0\OSErr 
         RTS     

         QUAL    proc9 ; b# =9  s#1  =proc9

;-refs -  1/proc2      2/proc116    2/proc124   
;-        2/com_8      2/com_14     2/com_16    
;-        2/com_20     2/com_21     2/proc133   
;-        2/proc136    2/com_26     2/com_29    
;-        2/com_32     2/proc141    2/com_34    
;-        2/com_35     2/proc145    6/proc302   
;-        6/proc303    6/proc304    6/proc305   
;-        7/proc310    7/proc311    8/proc315   
;-        8/proc316    8/proc317    8/proc319   
;-        8/proc324    9/proc335   11/proc345   
;-       12/proc353   13/proc356   14/proc359   
;-       15/proc362   15/proc363   

proc9    TST     D0
         BLT.S   laj_2
         MOVEM.L D1-D2/A0-A1,-(A7)
         MOVEA.L ApplScratch,A1
         LEA     $220(A1),A0
         MOVE.B  0(A0,D0.W),D1
         EXT     D1
         BLT.S   laj_1
         MOVE    D1,D2
         LSL     #4,D2
         LEA     32(A1),A0
         ADDA.W  D2,A0
         MOVE.L  12(A0),(A0)
         BEQ.S   laj_1
         MOVE    SR,-(A7)
         ORI     #$300,SR
         MOVE.L  (A1),D2
         BSET    D1,D2
         MOVE.L  D2,(A1)
         MOVE    (A7)+,SR
laj_1    MOVEM.L (A7)+,D1-D2/A0-A1
laj_2    RTS     

         QUAL    proc10 ; b# =10  s#1  =proc10

;-refs -  2/com_16     2/proc139    2/proc141   
;-        7/proc310    7/proc311   

proc10   TST     D0
         BLT.S   lak_2
         MOVEM.L D1-D2/A0-A1,-(A7)
         MOVEA.L ApplScratch,A1
         LEA     $220(A1),A0
         MOVE.B  0(A0,D0.W),D1
         BLT.S   lak_1
         MOVE    SR,-(A7)
         ORI     #$300,SR
         MOVE.L  (A1),D2
         BCLR    D1,D2
         MOVE.L  D2,(A1)
         MOVE    (A7)+,SR
lak_1    MOVEM.L (A7)+,D1-D2/A0-A1
lak_2    RTS     

         QUAL    proc11 ; b# =11  s#1  =proc11

val_1     VEQU  -962
val_2     VEQU  -958
val_3     VEQU  -956
val_4     VEQU  -954
val_5     VEQU  -698
val_6     VEQU  -442
val_7     VEQU  -186
val_8     VEQU  -58
val_9     VEQU  -52
val_10    VEQU  -48
val_11    VEQU  -44
val_12    VEQU  -40
val_13    VEQU  -36
val_14    VEQU  -32
val_15    VEQU  -28
val_16    VEQU  -14
val_17    VEQU  -12
val_18    VEQU  -10
val_19    VEQU  -6
val_20    VEQU  -1
param1    VEQU  8
         VEND    

;-refs -  1/proc114    3/proc179    5/proc258   
;-        5/proc268   

proc11   LINK    A6,#-$3C2
         MOVEM.L D4-D7/A3-A4,-(A7)
         CLR.L   -(A7)
         PUSH.L  #$BB8
         JSR     NewPtr
         POP.L   val_8(A6)
         MOVE.L  #$A78,val_10(A6)
         MOVEA.L val_10(A6),A0
         MOVE.L  (A0),val_9(A6)
         CLR     D7
         BRA.S   lal_2
lal_1    MOVE    D7,D0
         ASL     #2,D0
         LEA     val_7(A6),A0
         MOVEQ   #0,D1
         MOVE.L  D1,0(A0,D0.W)
         ADDQ    #1,D7
lal_2    MOVEQ   #31,D0
         CMP.W   D7,D0
         BGE     lal_1
         CLR.L   -(A7)
         PUSH.L  data4
         PUSH    param1(A6)
         _GetResource ; (theType:ResType; ID:INTEGER):Handle 
         POP.L   val_19(A6)
         BNE.S   lal_3
         PEA     data3
         PEA     val_5(A6)
         PUSH    param1(A6)
         JSR     proc96
         PEA     data2
         PEA     val_4(A6)
         CLR     -(A7)
         _ResError ; :OSErr 
         JSR     proc96
         PEA     val_6(A6)
         PUSH    #4
         JSR     proc76
         PEA     val_6(A6)
         JSR     proc92
lal_3    PUSH.L  val_19(A6)
         JSR     HNoPurge
         MOVEA.L val_19(A6),A0
         MOVEA.L (A0),A0
         MOVE    (A0),val_17(A6)
         TST     val_17(A6)
         BLE     lal_23
         MOVEA.L val_9(A6),A4
         MOVE    val_17(A6),D0
         SUBQ    #1,D0
         MOVE    D0,val_3(A6)
         CLR     val_16(A6)
         BRA     lal_18
lal_4    MOVEQ   #1,D5
         MOVE    #31,D4
         SUB     val_16(A6),D4
         MOVEA.L val_19(A6),A0
         MOVEA.L (A0),A0
         MOVE    val_16(A6),D0
         ADD     D0,D0
         MOVE    2(A0,D0.W),val_18(A6)
         MOVE    val_18(A6),D0
         ASL     #2,D0
         LEA     $284(A4),A0
         MOVEA.L 0(A0,D0.W),A3
         MOVE.L  A3,D0
         BNE.S   lal_5
         CLR.B   val_20(A6)
         BRA.S   lal_7
lal_5    TST.L   (A3)
         BNE.S   lal_6
         MOVE.B  #1,val_20(A6)
         BRA.S   lal_7
lal_6    MOVE.B  #2,val_20(A6)
lal_7    MOVEQ   #2,D0
         CMP.B   val_20(A6),D0
         BNE.S   lal_8
         CLR.L   -(A7)
         PUSH.L  A3
         JSR     proc39
         POP.L   val_15(A6)
         PUSH.L  A3
         JSR     HNoPurge
         BRA     lal_15
lal_8    CLR.L   -(A7)
         PUSH.L  data1
         PUSH    val_18(A6)
         _GetResource ; (theType:ResType; ID:INTEGER):Handle 
         POP.L   D6
         BNE.S   lal_9
         CLR.B   D5
lal_9    MOVE.B  D5,D0
         BEQ     lal_15
         PUSH.L  D6
         _DetachResource ; (theResource:Handle) 
         PUSH.L  D6
         JSR     HNoPurge
         CLR.L   -(A7)
         PUSH.L  D6
         JSR     proc39
         POP.L   D0
         MOVEQ   #22,D1
         SUB.L   D1,D0
         MOVE.L  D0,val_14(A6)
         ASL.L   #1,D0
         MOVE.L  D0,val_15(A6)
         PUSH.L  val_15(A6)
         JSR     ResrvMem
         TST.B   val_20(A6)
         BNE.S   lal_10
         CLR.L   -(A7)
         PUSH.L  val_15(A6)
         JSR     NewHandle
         POP.L   A3
         BRA.S   lal_11
lal_10   PUSH.L  A3
         PUSH.L  val_15(A6)
         JSR     ReAllocHandle
lal_11   MOVE.L  A3,D0
         SEQ     D0
         PUSH.L  D0
         CLR     -(A7)
         MOVE    MemErr,(A7)
         POP     D1
         POP.L   D0
         TST     D1
         SNE     D1
         OR.B    D1,D0
         BEQ.S   lal_12
         CLR.B   D5
         BRA.S   lal_13
lal_12   TST.L   (A3)
         BNE.S   lal_13
         CLR.B   D5
lal_13   MOVE.B  D5,D0
         BEQ.S   lal_14
         PUSH.L  A3
         JSR     HNoPurge
         MOVEA.L D6,A0
         MOVE.L  (A0),D0
         MOVEQ   #22,D1
         ADD.L   D1,D0
         MOVE.L  D0,val_12(A6)
         MOVEA.L D6,A0
         MOVE.L  (A0),D0
         ADDQ.L  #6,D0
         MOVE.L  D0,val_13(A6)
         PUSH.L  val_12(A6)
         PUSH.L  (A3)
         PUSH.L  val_14(A6)
         PUSH.L  val_13(A6)
         JSR     proc5
lal_14   PUSH.L  D6
         JSR     DisposHandle
lal_15   MOVE.B  D5,D0
         BEQ.S   lal_17
         MOVE    val_18(A6),D0
         ASL     #2,D0
         LEA     $284(A4),A0
         MOVE.L  A3,0(A0,D0.W)
         MOVE    D4,D0
         ASL     #2,D0
         LEA     val_7(A6),A0
         MOVE.L  A3,0(A0,D0.W)
         MOVEQ   #95,D0
         CMP.W   val_18(A6),D0
         SLE     D0
         MOVEQ   #99,D1
         CMP.W   val_18(A6),D1
         SGE     D1
         AND.B   D1,D0
         BEQ.S   lal_16
         MOVE.L  8(A4),D0
         MOVE    D4,D1
         BSET    D1,D0
         MOVE.L  D0,8(A4)
lal_16   MOVE    val_18(A6),D0
         LEA     $220(A4),A0
         MOVE.B  D4,0(A0,D0.W)
lal_17   ADDQ    #1,val_16(A6)
         BVS.S   lal_19
lal_18   MOVE    val_16(A6),D0
         CMP.W   val_3(A6),D0
         BLE     lal_4
lal_19   MOVE    val_17(A6),D0
         SUBQ    #1,D0
         MOVE    D0,val_2(A6)
         CLR     D7
         BRA.S   lal_22
lal_20   MOVE    #31,D4
         SUB     D7,D4
         MOVE    D4,D0
         ASL     #2,D0
         LEA     val_7(A6),A0
         MOVEA.L 0(A0,D0.W),A3
         MOVE.L  A3,D0
         BEQ.S   lal_21
         PUSH.L  A3
         JSR     HLock
         MOVE.L  (A3),val_11(A6)
         MOVEA.L val_9(A6),A0
         MOVE    D4,D0
         ASL     #4,D0
         LEA     32(A0,D0.W),A0
         MOVE.L  A0,val_1(A6)
         MOVE.L  val_11(A6),8(A0)
         MOVEA.L val_1(A6),A0
         MOVE.L  val_11(A6),12(A0)
         MOVEA.L val_1(A6),A0
         PUSH.L  A0
         CLR.L   -(A7)
         PUSH.L  A3
         JSR     proc39
         POP.L   D0
         POP.L   A0
         ADD.L   val_11(A6),D0
         SUBQ.L  #4,D0
         MOVE.L  D0,4(A0)
lal_21   ADDQ    #1,D7
         BVS.S   lal_23
lal_22   CMP.W   val_2(A6),D7
         BLE     lal_20
lal_23   PUSH.L  val_19(A6)
         JSR     HPurge
         PUSH.L  val_8(A6)
         JSR     DisposPtr
         JSR     proc15
         MOVEA.L val_9(A6),A0
         MOVE    #1,$414(A0)
         MOVEM.L (A7)+,D4-D7/A3-A4
         UNLK    A6
         POP.L   A0
         ADDQ    #2,A7
         JMP     (A0)

;-refs -  1/proc11    

data1    DC.B    'SOUN'

;-refs -  1/proc11    

data2    DC.W    $12F

;-refs -  1/proc11    

data3    STR     'SFTR:'

;-refs -  1/proc11    

data4    DC.B    'SFTR'

         QUAL    proc12 ; b# =16  s#1  =proc12

vam_1     VEQU  -6
         VEND    

;-refs -  1/proc114    3/proc176    5/proc258   
;-        5/proc268    5/proc294    5/proc299   

proc12   LINK    A6,#-$12
         MOVEM.L D5-D7/A3-A4,-(A7)
         MOVE.L  #$A78,D5
         MOVEA.L D5,A0
         MOVE.L  (A0),D6
         MOVEA.L D6,A4
         MOVEQ   #0,D0
         MOVE.L  D0,(A4)
         MOVEQ   #0,D0
         MOVE.L  D0,8(A4)
         MOVEQ   #2,D0
         PUSH.L  D0
         PEA     vam_1(A6)
         JSR     Delay
         CLR     D7
         BRA.S   lam_3
lam_1    MOVE    D7,D0
         ASL     #2,D0
         LEA     $284(A4),A0
         MOVEA.L 0(A0,D0.W),A3
         MOVE.L  A3,D0
         BEQ.S   lam_2
         TST.L   (A3)
         BEQ.S   lam_2
         PUSH.L  A3
         JSR     HUnLock
         MOVEQ   #-1,D0
         CMP.W   D7,D0
         SLT     D0
         MOVEQ   #99,D1
         CMP.W   D7,D1
         SGT     D1
         AND.B   D1,D0
         BEQ.S   lam_2
         PUSH.L  A3
         JSR     HPurge
lam_2    LEA     $220(A4),A0
         MOVE.B  #$FF,0(A0,D7.W)
         ADDQ    #1,D7
lam_3    MOVEQ   #99,D0
         CMP.W   D7,D0
         BGE     lam_1
         CLR     D7
         BRA.S   lam_5
lam_4    MOVEA.L D6,A0
         MOVE    D7,D0
         ASL     #4,D0
         LEA     32(A0,D0.W),A4
         MOVEQ   #0,D0
         MOVE.L  D0,(A4)
         MOVEQ   #0,D0
         MOVE.L  D0,12(A4)
         ADDQ    #1,D7
lam_5    MOVEQ   #31,D0
         CMP.W   D7,D0
         BGE     lam_4
         MOVEA.L D6,A0
         CLR     $414(A0)
         MOVEM.L (A7)+,D5-D7/A3-A4
         UNLK    A6
         RTS     

         QUAL    proc13 ; b# =17  s#1  =proc13

;-refs -  1/proc1     

proc13   MOVEM.L D4/A5,-(A7)
         MOVEA.L ApplScratch,A5
         TST     $414(A5)
         BEQ     lan_10
         MOVEQ   #7,D4
         MOVEQ   #31,D0
         MOVE.L  (A5),D1
         MOVE.L  8(A5),D2
         MOVEA.L A5,A0
         ADDA.W  #$210,A0
lan_1    BTST    D0,D1
         BNE.S   lan_2
         SUBA.W  #16,A0
         DBRA    D0,lan_1
         LEA     data5,A3
         BRA.S   lan_8
lan_2    MOVEA.L (A0),A1
         BSR     proc14
         BRA.S   lan_4
lan_3    BTST    D0,D1
         BNE.S   lan_5
lan_4    SUBA.W  #16,A0
         DBRA    D0,lan_3
         LEA     data6,A3
         MOVE.L  D1,(A5)
         BRA.S   lan_8
lan_5    MOVEA.L (A0),A2
         BSR.S   proc14
         BRA.S   lan_7
lan_6    BTST    D0,D1
         BEQ.S   lan_7
         BSR.S   proc14
lan_7    SUBA.W  #16,A0
         DBRA    D0,lan_6
         LEA     data7,A3
         MOVE.L  D1,(A5)
lan_8    MOVE.B  16(A5),D3
         MOVE.B  SdVolume,D0
         ANDI    #7,D0
         BNE.S   lan_9
         LEA     data5,A3
lan_9    MOVEA.L SoundBase,A0
         ADDA.W  14(A5),A0
         MOVE    #$172,D0
         SUB     12(A5),D0
         LSR     #1,D0
         SUBQ    #1,D0
         JSR     (A3)
         MOVEA.L SoundBase,A0
         MOVE    12(A5),D0
         LSR     #1,D0
         SUBQ    #1,D0
         JSR     (A3)
         MOVE.B  D3,16(A5)
lan_10   MOVE    #1,28(A5)
         MOVEM.L (A7)+,D4/A5
         RTS     

         QUAL    proc14 ; b# =18  s#1  =proc14

;-refs -  1/proc13    

proc14   MOVEA.L (A0),A3
         ADDA.W  #$B9,A3
         CMPA.L  4(A0),A3
         BLT.S   lao_2
         BTST    D0,D2
         BNE.S   lao_1
         BCLR    D0,D1
         BRA.S   lao_3
lao_1    MOVE.L  8(A0),(A0)
         BRA.S   lao_3
lao_2    MOVE.L  A3,(A0)
lao_3    RTS     

;-refs -  1/proc13    

data5    DC.W    $123C,$80,$1081,$1141,2,$5888,$51C8,$FFF6
         DC.W    $1601,$4E75

;-refs -  1/proc13    

data6    DC.W    $1219,$941,$E201,$1401,$E201,$D202,$941,$1141
         DC.W    2,$D601,$E213,$1083,$5888,$1601,$51C8,$FFE2
         DC.W    $4E75

;-refs -  1/proc13    

data7    DC.W    $1219,$D21A,$E211,$1141,2,$D601,$E213,$1083
         DC.W    $5888,$1601,$51C8,$FFEA,$4E75

         QUAL    proc15 ; b# =22  s#1  =proc15

;-refs -  1/proc11    

proc15   CMPI    #$7FFF,Rom85
         BNE.S   lap_3
         MOVEA.L SonyVars,A0
         TST.B   Active(A0)
         BEQ.S   lap_2
lap_1    TST.B   DiskUnitPtr(A0)
         BNE     lap_1
         MOVEA   #$1E,A0
         _Delay  ; (A0/numTicks:LongInt; D0\finalTicks:LongInt) 
lap_2    MOVEA   #$1E,A0
         _Delay  ; (A0/numTicks:LongInt; D0\finalTicks:LongInt) 
lap_3    JSR     proc230(A5)
         RTS     

         QUAL    __CplusInit ; b# =23  s#1  =proc16

vaq_1     VEQU  -20
vaq_2     VEQU  -4
         VEND    

;-refs -  1/_RTInit   

__CplusInit
         LINK    A6,#-4
         MOVEM.L D6-D7/A3-A4,-(A7)
         TST.L   glob103(A5)
         BNE     laq_5
         SUBQ.L  #4,A7
         PUSH.L  #'CODE'
         PEA     glob101(A5)
         _GetNamedResource ; (theType:ResType; name:Str255):Handle 
         POP.L   A4
         MOVE.L  A4,D0
         BEQ.S   laq_5
         SUBQ.L  #2,A7
         _CurResFile ; :RefNum 
         SUBQ.L  #2,A7
         PUSH.L  A4
         _HomeResFile ; (theResource:Handle):RefNum 
         POP     D0
         EXT.L   D0
         POP     D1
         EXT.L   D1
         CMP.L   D1,D0
         BNE.S   laq_5
         LEA     dtors__Fv(A5),A0
         MOVEA.L glob109(A5),A1
         MOVE.L  A0,12(A1)
         MOVE.L  A4,vaq_2(A6)
         SUBQ.L  #4,A7
         PUSH.L  A4
         JSR     proc39
         POP.L   D0
         SUBQ.L  #4,D0
         MOVEQ   #4,D1
         JSR     proc21
         MOVE.L  D0,D6
         MOVEQ   #0,D0
         MOVEA.L D0,A3
         BRA.S   laq_3
laq_1    PUSH.L  A4
         _LoadResource ; (theResource:Handle) 
         MOVEA.L vaq_2(A6),A0
         MOVEA.L (A0),A0
         MOVE.L  glob103(A5),D0
         ASL.L   #2,D0
         MOVE    4(A0,D0.L),D0
         EXT.L   D0
         MOVE.L  D0,D7
         BEQ.S   laq_2
         MOVE.L  A5,D0
         MOVEA.L D0,A3
         ADDA.L  D7,A3
         JSR     (A3)
laq_2    MOVE.L  glob103(A5),D0
         ADDQ.L  #1,glob103(A5)
laq_3    CMP.L   glob103(A5),D6
         BGT     laq_1
         MOVE.L  A3,D0
         BEQ.S   laq_4
         PUSH.L  A3
         _UnLoadSeg ; (Proc:ProcPtr) 
laq_4    PUSH.L  A4
         _ReleaseResource ; (theResource:Handle) 
laq_5    MOVEM.L vaq_1(A6),D6-D7/A3-A4
         UNLK    A6
         RTS     


data8    DNAME   __CplusInit,0,0

         QUAL    dtors__Fv ; b# =25  s#1  =proc17

var_1     VEQU  -16
var_2     VEQU  -4
         VEND    

;-refs -  1/__CplusInit  

dtors__Fv
         LINK    A6,#-4
         MOVEM.L D7/A3-A4,-(A7)
         TST.L   glob103(A5)
         BEQ.S   lar_3
         SUBQ.L  #4,A7
         PUSH.L  #'CODE'
         PEA     glob102(A5)
         _GetNamedResource ; (theType:ResType; name:Str255):Handle 
         POP.L   A4
         MOVE.L  A4,D0
         BEQ.S   lar_3
         SUBQ.L  #2,A7
         _CurResFile ; :RefNum 
         SUBQ.L  #2,A7
         PUSH.L  A4
         _HomeResFile ; (theResource:Handle):RefNum 
         POP     D0
         EXT.L   D0
         POP     D1
         EXT.L   D1
         CMP.L   D1,D0
         BNE.S   lar_3
         MOVE.L  A4,var_2(A6)
         BRA.S   lar_2
lar_1    PUSH.L  A4
         _LoadResource ; (theResource:Handle) 
         MOVEA.L var_2(A6),A0
         MOVEA.L (A0),A0
         SUBQ.L  #1,glob103(A5)
         MOVE.L  glob103(A5),D0
         ASL.L   #2,D0
         MOVE    6(A0,D0.L),D0
         EXT.L   D0
         MOVE.L  D0,D7
         MOVE.L  A5,D0
         MOVEA.L D0,A3
         ADDA.L  D7,A3
         TST.L   D7
         BEQ.S   lar_2
         JSR     (A3)
lar_2    TST.L   glob103(A5)
         BGT     lar_1
         PUSH.L  A4
         _ReleaseResource ; (theResource:Handle) 
lar_3    MOVEM.L var_1(A6),D7/A3-A4
         UNLK    A6
         RTS     


data9    DNAME   dtors__Fv,0,0

         QUAL    _RTInit ; b# =27  s#1  =proc18

vas_1     VEQU  -24
param5    VEQU  8
param4    VEQU  12
param3    VEQU  16
param2    VEQU  20
param1    VEQU  24
         VEND    

;-refs -  1/proc68    

_RTInit  LINK    A6,#0
         MOVEM.L D2-D3/D6-D7/A3-A4,-(A7)
         MOVE.L  param1(A6),D6
         JSR     proc233(A5)
         MOVEA.L glob109(A5),A0
         MOVE.L  param5(A6),(A0)
         MOVEQ   #1,D0
         TST.L   MPWVars
         BEQ.S   las_1
         MOVEQ   #1,D1
         AND.L   MPWVars,D1
         BNE.S   las_1
         MOVEA.L MPWVars,A0
         CMPI.L  #'MPGM',(A0)
         BNE.S   las_1
         MOVEA.L MPWVars,A0
         TST.L   4(A0)
         BEQ.S   las_1
         MOVEA.L MPWVars,A0
         MOVEA.L 4(A0),A0
         MOVE    (A0),D1
         EXT.L   D1
         BEQ.S   las_1
         MOVEQ   #0,D0
las_1    MOVE.L  D0,glob104(A5)
         BEQ.S   las_7
         LEA     glob112(A5),A0
         LEA     CurApName,A1
         MOVEQ   #7,D0
las_2    MOVE.L  (A1)+,(A0)+
         DBRA    D0,las_2
         MOVE    (A1)+,(A0)+
         LEA     glob112(A5),A0
         MOVEA.L glob107(A5),A1
         MOVE.L  A0,(A1)
         TST.L   D6
         BNE.S   las_3
         MOVEA.L glob107(A5),A0
         PUSH.L  (A0)
         JSR     p2cstr
         ADDQ.L  #4,A7
las_3    TST.L   param4(A6)
         BEQ.S   las_4
         MOVEA.L param4(A6),A0
         MOVEQ   #1,D0
         MOVE.L  D0,(A0)
las_4    TST.L   param3(A6)
         BEQ.S   las_5
         MOVEA.L param3(A6),A0
         MOVE.L  glob107(A5),(A0)
las_5    TST.L   param2(A6)
         BEQ.S   las_6
         MOVEA.L param2(A6),A0
         MOVE.L  glob108(A5),(A0)
las_6    JSR     __CplusInit
         MOVEQ   #1,D0
         MOVE.L  D0,glob104(A5)
         BRA     las_21
las_7    MOVEA.L MPWVars,A0
         MOVEA.L 4(A0),A0
         MOVE    (A0),D0
         EXT.L   D0
         MOVE    glob105(A5),D1
         EXT.L   D1
         CMP.L   D1,D0
         BEQ.S   las_8
         PUSH.L  #-$80000000
         JSR     _RTExit
         ADDQ.L  #4,A7
las_8    LEA     glob105(A5),A0
         MOVEA.L MPWVars,A1
         MOVEA.L 4(A1),A1
         MOVE.L  A0,36(A1)
         MOVEA.L MPWVars,A0
         MOVE.L  4(A0),glob111(A5)
         MOVEA.L MPWVars,A0
         MOVEA.L 4(A0),A0
         MOVE.L  2(A0),glob106(A5)
         MOVEA.L MPWVars,A0
         MOVEA.L 4(A0),A0
         MOVE.L  6(A0),glob107(A5)
         MOVEA.L MPWVars,A0
         MOVEA.L 4(A0),A0
         MOVE.L  10(A0),glob108(A5)
         TST.L   D6
         BEQ.S   las_13
         MOVEA.L glob107(A5),A3
         BRA.S   las_10
las_9    PUSH.L  (A3)
         JSR     proc26
         ADDQ.L  #4,A7
         ADDA.W  #4,A3
las_10   TST.L   (A3)
         BNE     las_9
         MOVEA.L glob108(A5),A3
         BRA.S   las_12
las_11   PUSH.L  (A3)
         JSR     proc26
         ADDQ.L  #4,A7
         ADDA.W  #4,A3
las_12   TST.L   (A3)
         BNE     las_11
las_13   TST.L   param4(A6)
         BEQ.S   las_14
         MOVEA.L param4(A6),A0
         MOVE.L  glob106(A5),(A0)
las_14   TST.L   param3(A6)
         BEQ.S   las_15
         MOVEA.L param3(A6),A0
         MOVE.L  glob107(A5),(A0)
las_15   TST.L   param2(A6)
         BEQ.S   las_16
         MOVEA.L param2(A6),A0
         MOVE.L  glob108(A5),(A0)
las_16   MOVEA.L MPWVars,A0
         MOVEA.L 4(A0),A0
         TST.L   32(A0)
         BEQ.S   las_20
         SUBQ.L  #4,A7
         MOVEQ   #$78,D0
         PUSH.L  D0
         JSR     NewPtr
         POP.L   glob110(A5)
         BNE.S   las_17
         PUSH.L  #$85000000
         JSR     _RTExit
         ADDQ.L  #4,A7
las_17   MOVEA.L MPWVars,A0
         MOVEA.L 4(A0),A0
         MOVEA.L 32(A0),A4
         MOVEQ   #0,D7
         MOVEQ   #5,D3
las_18   MOVE.L  D7,D0
         MOVE.L  D0,D1
         MULU    #24,D0
         SWAP    D1
         MULU    #24,D1
         SWAP    D1
         CLR     D1
         ADD.L   D1,D0
         MOVEA.L glob110(A5),A0
         MOVE.L  D7,D1
         MOVE.L  D1,D2
         MULU    #24,D1
         SWAP    D2
         MULU    #24,D2
         SWAP    D2
         CLR     D2
         ADD.L   D2,D1
         LEA     0(A0,D1.L),A0
         LEA     0(A4,D0.L),A1
         MOVEQ   #5,D0
las_19   MOVE.L  (A1)+,(A0)+
         DBRA    D0,las_19
         ADDQ.L  #1,D7
         CMP.L   D7,D3
         BGT     las_18
las_20   JSR     __CplusInit
         MOVEQ   #0,D0
         MOVE.L  D0,glob104(A5)
las_21   MOVEM.L vas_1(A6),D2-D3/D6-D7/A3-A4
         UNLK    A6
         RTS     


data10   DNAME   _RTInit,0,0

         QUAL    exit ; b# =29  s#1  =proc19

param1    VEQU  8
         VEND    

;-refs -  1/%INITHEAP   1/proc70    

exit     LINK    A6,#0
         MOVE.L  #$FFFFFF,D0
         AND.L   param1(A6),D0
         PUSH.L  D0
         JSR     _RTExit
         UNLK    A6
         RTS     


data11   DNAME   exit,0,0

         QUAL    _RTExit ; b# =31  s#1  =proc20

vau_1     VEQU  -4
param1    VEQU  8
         VEND    

;-refs -  1/_RTInit    1/exit      

_RTExit  LINK    A6,#0
         PUSH.L  A3
         MOVEA.L glob109(A5),A0
         LEA     $8C(A0),A3
         BRA.S   lau_3
lau_1    TST.L   (A3)
         BEQ.S   lau_2
         MOVEA.L (A3),A0
         JSR     (A0)
lau_2    ADDA.W  #-4,A3
lau_3    MOVEA.L glob109(A5),A0
         CMPA.L  A3,A0
         BLO     lau_1
         TST.L   glob111(A5)
         BEQ.S   lau_4
         MOVEA.L glob111(A5),A0
         MOVE.L  param1(A6),14(A0)
lau_4    TST.L   glob114(A5)
         BNE.S   lau_5
         MOVEA.L glob109(A5),A0
         MOVEA.L (A0),A0
         JSR     (A0)
         BRA.S   lau_6
lau_5    MOVEQ   #1,D0
         PUSH.L  D0
         PEA     glob113(A5)
         JSR     proc25
         ADDQ.L  #8,A7
lau_6    MOVEA.L vau_1(A6),A3
         UNLK    A6
         RTS     


data12   DNAME   _RTExit,0,0


data13   DC.W    $222F,4,$202F,8

         QUAL    proc21 ; b# =34  s#1  =proc21

;-refs -  1/__CplusInit  

proc21   JSR     proc22
         MOVE.L  D1,D0
         RTS     


data14   DC.W    $222F,4,$202F,8

         QUAL    proc22 ; b# =36  s#1  =proc22

;-refs -  1/proc21    

proc22   MOVEM.L D5-D6,-(A7)
         MOVE.L  D0,D5
         BPL.S   law_1
         NEG.L   D0
law_1    MOVE.L  D1,D6
         BPL.S   law_2
         NEG.L   D1
law_2    JSR     proc23
         TST.L   D5
         BPL.S   law_3
         NEG.L   D0
law_3    EOR.L   D5,D6
         BPL.S   law_4
         NEG.L   D1
law_4    MOVEM.L (A7)+,D5-D6
         RTS     


data15   DC.W    $222F,4,$202F,8

         QUAL    proc23 ; b# =38  s#1  =proc23

;-refs -  1/proc22    

proc23   MOVEM.L D2-D4,-(A7)
         MOVE.L  D1,D2
         SWAP    D2
         TST     D2
         BNE.S   lax_2
         MOVE    D0,D3
         CLR     D0
         SWAP    D0
         BEQ.S   lax_1
         DIVU    D1,D0
         MOVE    D0,D2
lax_1    SWAP    D2
         MOVE    D3,D0
         DIVU    D1,D0
         MOVE    D0,D2
         MOVE.L  D2,D1
         CLR     D0
         SWAP    D0
         BRA.S   lax_5
lax_2    MOVE.L  D0,D2
         CLR     D0
         SWAP    D0
         SWAP    D2
         CLR     D2
         MOVE.L  D1,D3
         MOVEQ   #0,D1
         MOVEQ   #15,D4
lax_3    ADD.L   D2,D2
         ADDX.L  D0,D0
         ADD.L   D1,D1
         CMP.L   D3,D0
         BLO.S   lax_4
         SUB.L   D3,D0
         ADDQ.B  #1,D1
lax_4    DBRA    D4,lax_3
lax_5    MOVEM.L (A7)+,D2-D4
         RTS     

         QUAL    proc24 ; b# =39  s#1  =proc24

;-refs -  1/proc68    

proc24   POP.L   A1
         MOVEA.L (A7),A0
         MOVEM.L D2-D7/A1-A4/A6-A7,(A0)
         MOVEQ   #0,D0
         JMP     (A1)

         QUAL    proc25 ; b# =40  s#1  =proc25

;-refs -  1/_RTExit   

proc25   MOVE.L  8(A7),D0
         BNE.S   laz_1
         MOVEQ   #1,D0
laz_1    MOVEA.L 4(A7),A0
         MOVEM.L (A0),D2-D7/A1-A4/A6-A7
         JMP     (A1)

         QUAL    proc26 ; b# =41  s#1  =proc26

;-refs -  1/_RTInit   

proc26   MOVE.L  4(A7),D0
         BEQ.S   lba_4
         MOVEA.L D0,A0
         MOVEA.L A0,A1
         MOVE.B  (A1)+,D0
         BEQ.S   lba_3
lba_1    MOVE.B  (A1),D1
         MOVE.B  D0,(A1)+
         MOVE.B  D1,D0
         BNE     lba_1
         SUBA.L  A0,A1
         MOVE.L  A1,D0
         SUBQ    #1,D0
         CMPI.L  #$FF,D0
         BLE.S   lba_2
         MOVE.L  #$FF,D0
lba_2    MOVE.B  D0,(A0)
lba_3    MOVE.L  4(A7),D0
lba_4    RTS     

         QUAL    p2cstr ; b# =42  s#1  =proc27

;-refs -  1/_RTInit   

p2cstr   MOVE.L  4(A7),D0
         BEQ.S   lbb_3
         MOVEA.L D0,A0
         MOVEQ   #0,D0
         MOVE.B  (A0),D0
         BRA.S   lbb_2
lbb_1    MOVE.B  1(A0),(A0)+
lbb_2    DBRA    D0,lbb_1
         CLR.B   (A0)
lbb_3    MOVE.L  4(A7),D0
         RTS     


data16   DC.W    $225F,$201F,$A04C,$2E80,$4E71

         QUAL    com_1 ; b# =44  s#1  =com_1

;-refs -  1/proc39     1/RecoverHandle  

com_1    MOVEQ   #0,D0

;-refs -  1/ResrvMem   1/NewPtr     1/DisposPtr  
;-        1/NewHandle   1/DisposHandle  
;-        1/proc39     1/SetHandleSize  
;-        1/EmptyHandle   1/ReAllocHandle  
;-        1/HLock      1/HUnLock    1/HPurge    
;-        1/HNoPurge   1/BlockMove  

com_2    PUSH.L  A1

         QUAL    com_3 ; b# =46  s#1  =com_3

;-refs -  1/com_4      1/MoreMasters  

com_3    MOVE    D0,MemErr
         RTS     

         QUAL    com_4 ; b# =47  s#1  =com_4

;-refs -  1/FreeMem   

com_4    MOVEQ   #0,D0
         BRA     com_3

         QUAL    FreeMem ; b# =48  s#1  =proc28

;-refs -  4/proc247   

FreeMem  _FreeMem ; :D0\Size 
         MOVE.L  D0,4(A7)
         JMP     com_4

         QUAL    ResrvMem ; b# =49  s#1  =proc29

;-refs -  1/proc11    

ResrvMem POP.L   A1
         POP.L   D0
         _ResrvMem ; (D0/cbNeeded:Size) 
         JMP     com_2

         QUAL    proc30 ; b# =50  s#1  =proc30

;-refs -  1/code      

proc30   TST     Rom85
         BPL.S   lbh_2
         MOVEA.L ApplLimit,A0
         LEA     HeapEnd,A1
         MOVE.L  A0,D0
         SUB.L   (A1),D0
         MOVEQ   #12,D2
         CMP.L   D2,D0
         BLO.S   lbh_1
         MOVEA.L (A1),A1
         MOVE.L  A0,HeapEnd
         MOVE.L  D0,(A1)
         CLR.B   (A1)
         MOVEA.L ApplZone,A1
         MOVE.L  A0,BkLim(A1)
         MOVE.L  D2,(A0)
         ADD.L   D0,ZCBFree(A1)
lbh_1    RTS     
lbh_2    _MaxApplZone ; :D0\OSErr 
         RTS     

         QUAL    com_5 ; b# =51  s#1  =com_5

;-refs -  1/proc31    

com_5    POP.L   A1
         POP.L   A0
         _MoveHHi ; (A0/h:Handle) 
         JMP     (A1)

         QUAL    proc31 ; b# =52  s#1  =proc31

;-refs -  1/proc103    1/proc108    5/proc249   
;-       17/proc378   17/proc380   26/proc407   
;-       26/proc414   

proc31   TST     Rom85
         BPL     com_5
         MOVEA.L 4(A7),A1
         MOVEM.L D3-D7/A2-A6,-(A7)
         MOVE.L  A1,D0
         AND.L   Lo3Bytes,D0
         BEQ.S   lbj_1
         MOVEA.L D0,A1
         MOVE.L  (A1),D0
         AND.L   Lo3Bytes,D0
         MOVEA.L D0,A0
         BNE.S   lbj_3
lbj_1    MOVEQ   #-$6D,D0
lbj_2    BRA     lbj_16
lbj_3    MOVEA.L A1,A4
         TST.B   (A4)
         BPL.S   lbj_4
         MOVEQ   #-$75,D0
         BRA     lbj_2
lbj_4    MOVEA.L A1,A6
         MOVE.L  -4(A0),D0
         AND.L   Lo3Bytes,D0
         SUBA.L  D0,A6
         MOVEA.L (A6),A3
         SUBQ.L  #8,A0
         MOVE.L  (A0),D1
         AND.L   Lo3Bytes,D1
         MOVE.L  D1,D7
         SUBQ.L  #8,D7
         MOVEQ   #0,D0
         ADDA.L  D1,A0
         CMPA.L  A3,A0
         BHS     lbj_16
         TST.B   (A0)
         BEQ.S   lbj_5
         BPL     lbj_16
         MOVEA.L 4(A0),A0
         ADDA.L  A6,A0
         TST.B   (A0)
         BMI     lbj_16
lbj_5    MOVE.L  A7,D1
         AND.L   Lo3Bytes,D1
         MOVEA.L ApplZone,A0
         SUB.L   BkLim(A0),D1
         MOVE.L  #$400,D2
         MOVE.L  D2,D0
         ADD.L   D7,D0
         CMP.L   D0,D1
         BLT.S   lbj_6
         MOVE.L  D0,D1
lbj_6    MOVEQ   #-1,D0
         CMP.L   D2,D1
         BLT     lbj_16
         SUBI.L  #$80,D2
         SUB.L   D2,D1
         SUBA.L  D1,A7
         SUBA.W  #22,A7
         MOVEA.L A7,A5
         MOVE.L  D1,8(A5)
         MOVE.L  TheZone,18(A5)
         MOVE.L  A6,TheZone
         MOVEA.L (A4),A0
         SUBQ    #8,A0
         MOVE.L  (A0),(A5)
         MOVE.L  (A4),D0
         AND.L   Lo3Bytes,D0
         MOVE.L  D0,12(A5)
         MOVE.B  (A4),16(A5)
         BSR     proc32
         TST.B   (A2)
         BNE.S   lbj_9
         MOVE.L  (A2),D1
         MOVE.L  D1,D0
         SUBQ.L  #8,D0
         CMP.L   D0,D7
         BHI.S   lbj_9
         SUB.L   D7,D0
         BEQ.S   lbj_7
         MOVEQ   #12,D2
         CMP.L   D2,D0
         BLO.S   lbj_9
lbj_7    MOVEA.L (A4),A0
         MOVEA.L A2,A1
         ADDA.L  D1,A1
lbj_8    MOVE.L  D7,D0
         SUBA.L  D0,A1
         SUB.L   D0,12(A6)
         _BlockMove ; (A0/srcPtr,A1/destPtr:Ptr; D0/byteCount:Size) 
         MOVEA.L A4,A0
         _EmptyHandle ; (A0/h:Handle) 
         BRA.S   lbj_14
lbj_9    MOVEQ   #0,D6
         BSR     proc33
         BSR     proc34
         BSR     proc32
lbj_10   MOVE.L  (A2),D1
         MOVE.L  4(A5),D0
         LEA     22(A5),A0
         MOVEA.L A2,A1
         ADDA.L  D1,A1
         SUBA.L  D0,A1
         ADD.L   D0,D6
         SUB.L   D0,12(A6)
         _BlockMove ; (A0/srcPtr,A1/destPtr:Ptr; D0/byteCount:Size) 
         TST.L   D7
         BEQ.S   lbj_14
         MOVE.L  A1,D0
         SUB.L   A2,D0
         BEQ.S   lbj_13
         MOVE.L  D0,D1
         SUBQ.L  #8,D1
         SUB.L   D7,D1
         BLO.S   lbj_12
         BEQ.S   lbj_11
         MOVEQ   #12,D2
         CMP.L   D1,D2
         BLO.S   lbj_12
lbj_11   MOVEA.L (A4),A0
         BRA     lbj_8
lbj_12   MOVE.L  D0,(A2)
lbj_13   MOVEM.L (A1),D4-D5
         MOVE.L  A6,4(A1)
         MOVE.L  D6,(A1)
         MOVE.B  #64,(A1)
         PUSH.L  A1
         BSR     proc33
         BSR     proc34
         BSR.S   proc32
         POP.L   A1
         MOVEM.L D4-D5,(A1)
         BRA     lbj_10
lbj_14   SUBQ.L  #8,A1
         SUBQ.L  #8,12(A6)
         MOVE.L  A1,D0
         SUB.L   A2,D0
         BEQ.S   lbj_15
         MOVE.L  D0,(A2)
lbj_15   MOVEA.L A1,A2
         MOVE.L  (A5),(A2)+
         MOVEA.L A4,A0
         SUBA.L  A6,A0
         MOVE.L  A0,(A2)+
         MOVE.L  A2,(A4)
         MOVE.B  16(A5),(A4)
         MOVE.L  18(A5),TheZone
         MOVEQ   #0,D0
         ADDA.L  8(A5),A7
         ADDA.W  #22,A7
lbj_16   MOVEM.L (A7)+,D3-D7/A2-A6
         POP.L   (A7)
         MOVE    D0,MemErr
         RTS     

         QUAL    proc32 ; b# =53  s#1  =proc32

;-refs -  1/proc31    

proc32   MOVE.L  (A4),D0
         BEQ.S   lbk_1
         AND.L   Lo3Bytes,D0
         MOVEA.L D0,A0
         SUBQ    #8,A0
         BRA.S   lbk_2
lbk_1    LEA     52(A6),A0
lbk_2    MOVE.L  (A0),D1
         AND.L   Lo3Bytes,D1
         TST.B   (A0)
         BEQ.S   lbk_3
         BPL.S   lbk_4
         MOVEA.L 4(A0),A1
         ADDA.L  A6,A1
         TST.B   (A1)
         BMI.S   lbk_4
lbk_3    MOVEA.L A0,A2
         ADDA.L  D1,A0
         CMPA.L  A3,A0
         BLO     lbk_2
         BRA.S   lbk_5
lbk_4    CMPA.L  12(A5),A0
         BLS     lbk_3
lbk_5    RTS     

         QUAL    proc33 ; b# =54  s#1  =proc33

;-refs -  1/proc31    

proc33   MOVE.L  8(A5),D0
         CMP.L   D7,D0
         BLT.S   lbl_1
         MOVE.L  D7,D0
lbl_1    LEA     22(A5),A1
         MOVEA.L (A4),A0
         ADDA.L  D7,A0
         SUBA.L  D0,A0
         SUB.L   D0,D7
         MOVE.L  D0,4(A5)
         MOVE.L  D0,D1
         _BlockMove ; (A0/srcPtr,A1/destPtr:Ptr; D0/byteCount:Size) 
         MOVEA.L A4,A0
         MOVE.L  D7,D0
         BNE.S   lbl_2
         _EmptyHandle ; (A0/h:Handle) 
         RTS     
lbl_2    MOVEA.L (A0),A0
         SUBQ    #8,A0
         MOVE.B  (A0),D2
         ADDQ.L  #8,D0
         MOVE.L  D0,(A0)
         MOVE.B  D2,(A0)
         ADDA.L  D0,A0
         MOVE.L  D1,(A0)
         ADD.L   D1,12(A6)
         RTS     

         QUAL    proc34 ; b# =55  s#1  =proc34

;-refs -  1/proc31    

proc34   MOVE.L  #$800000,D0
         _CompactMem ; (D0/cbNeeded:Size):D0\Size 
         RTS     

         QUAL    NewPtr ; b# =56  s#1  =proc35

;-refs -  1/proc11     1/_RTInit    4/proc244   
;-        5/proc253    5/proc259    5/proc292   
;-       26/proc403   26/proc414   

NewPtr   POP.L   A1
         POP.L   D0
         _NewPtr ; (D0/byteCount:Size):A0\Ptr 
         MOVE.L  A0,(A7)
         JMP     com_2

         QUAL    DisposPtr ; b# =57  s#1  =proc36

;-refs -  1/proc11     1/proc92     5/proc254   
;-        5/proc268    5/proc293   26/proc406   
;-       26/proc414   26/proc415   

DisposPtr
         POP.L   A1
         POP.L   A0
         _DisposPtr ; (A0/p:Ptr) 
         JMP     com_2

         QUAL    NewHandle ; b# =58  s#1  =proc37

;-refs -  1/proc11     1/proc103    1/proc108   
;-        1/proc114    5/proc276   26/proc410   

NewHandle
         POP.L   A1
         POP.L   D0
         _NewHandle ; (D0/byteCount:Size):A0\Handle 
         MOVE.L  A0,(A7)
         JMP     com_2

         QUAL    DisposHandle ; b# =59  s#1  =proc38

;-refs -  1/proc11     1/proc114   26/proc412   
;-       26/proc415   

DisposHandle
         POP.L   A1
         POP.L   A0
         _DisposHandle ; (A0/h:Handle) 
         JMP     com_2

         QUAL    proc39 ; b# =60  s#1  =proc39

;-refs -  1/proc11     1/__CplusInit  

proc39   POP.L   A1
         POP.L   A0
         _GetHandleSize ; (A0/h:Handle):D0\Size 
         MOVE.L  D0,(A7)
         BPL.S   lbr_1
         CLR.L   (A7)
         JMP     com_2
lbr_1    JMP     com_1

         QUAL    SetHandleSize ; b# =61  s#1  =proc40

;-refs - 26/proc410   26/proc412   

SetHandleSize
         POP.L   A1
         POP.L   D0
         POP.L   A0
         _SetHandleSize ; (A0/h:Handle; D0/newSize:Size) 
         JMP     com_2

         QUAL    RecoverHandle ; b# =62  s#1  =proc41

;-refs -  1/proc104   

RecoverHandle
         POP.L   A1
         POP.L   A0
         _RecoverHandle ; (A0/p:Ptr):A0\Handle 
         MOVE.L  A0,(A7)
         JMP     com_1

         QUAL    EmptyHandle ; b# =63  s#1  =proc42

;-refs -  1/proc103    1/proc112   

EmptyHandle
         POP.L   A1
         POP.L   A0
         _EmptyHandle ; (A0/h:Handle) 
         JMP     com_2

         QUAL    ReAllocHandle ; b# =64  s#1  =proc43

;-refs -  1/proc11     1/proc103    1/proc108   

ReAllocHandle
         POP.L   A1
         POP.L   D0
         POP.L   A0
         _ReAllocHandle ; (A0/h:Handle; D0/byteCount:Size) 
         JMP     com_2

         QUAL    HLock ; b# =65  s#1  =proc44

;-refs -  1/proc11     1/proc103    1/proc105   
;-        1/proc108    1/proc109    4/proc236   
;-        5/proc249    5/proc272   17/proc378   
;-       17/proc380   26/proc407   26/proc412   
;-       26/proc414   

HLock    POP.L   A1
         POP.L   A0
         _HLock  ; (A0/h:Handle) 
         JMP     com_2

         QUAL    HUnLock ; b# =66  s#1  =proc45

;-refs -  1/proc12     1/proc103    1/proc104   
;-        1/proc105    1/proc109    5/proc250   
;-        5/proc255    5/proc256    5/proc259   
;-        5/proc272   17/proc379   17/proc381   
;-       26/proc407   26/proc412   

HUnLock  POP.L   A1
         POP.L   A0
         _HUnLock ; (A0/h:Handle) 
         JMP     com_2

         QUAL    HPurge ; b# =67  s#1  =proc46

;-refs -  1/proc11     1/proc12     1/proc103   
;-        1/proc104    1/proc105    1/proc107   
;-        1/proc108    1/proc109    5/proc255   
;-        5/proc256    5/proc259    5/proc277   
;-       10/proc343   17/proc379   17/proc381   

HPurge   POP.L   A1
         POP.L   A0
         _HPurge ; (A0/h:Handle) 
         JMP     com_2

         QUAL    HNoPurge ; b# =68  s#1  =proc47

;-refs -  1/proc11     1/proc103    1/proc106   
;-        1/proc108    5/proc255    5/proc276   
;-       10/proc342   26/proc410   

HNoPurge POP.L   A1
         POP.L   A0
         _HNoPurge ; (A0/h:Handle) 
         JMP     com_2

         QUAL    MoreMasters ; b# =69  s#1  =proc48

;-refs -  1/code      

MoreMasters
         _MoreMasters  
         JMP     com_3

         QUAL    BlockMove ; b# =70  s#1  =proc49

;-refs -  1/proc85    26/proc412   

BlockMove
         POP.L   D1
         POP.L   D0
         POP.L   A1
         POP.L   A0
         _BlockMove ; (A0/srcPtr,A1/destPtr:Ptr; D0/byteCount:Size) 
         MOVEA.L D1,A1
         JMP     com_2

         QUAL    proc50 ; b# =71  s#1  =proc50

;-refs -  1/proc86     5/proc292   

proc50   POP.L   A1
         POP.L   A0
         _VInstall ; (A0/VBLTaskPtr:QElemPtr):D0\OSErr 
         MOVE    D0,(A7)
         JMP     (A1)

         QUAL    proc51 ; b# =72  s#1  =proc51

;-refs -  1/proc87     5/proc293   

proc51   POP.L   A1
         POP.L   A0
         _VRemove ; (A0/VBLTaskPtr:QElemPtr):D0\OSErr 
         MOVE    D0,(A7)
         JMP     (A1)

         QUAL    DiskEject ; b# =73  s#1  =proc52

vce_1     VEQU  -50
param1    VEQU  8
funRslt   VEQU  10
         VEND    

;-refs -  1/proc98    

DiskEject
         LINK    A6,#-$32
         LEA     vce_1(A6),A0
         MOVE    #$FFFB,ioCRefNum(A0)
         MOVE    #7,CSCode(A0)
         MOVE    param1(A6),ioVRefNum(A0)
         _Control ; (A0|IOPB:ParamBlockRec):D0\OSErr 
         MOVE    D0,funRslt(A6)
         UNLK    A6
         POP.L   A1
         ADDQ    #2,A7
         JMP     (A1)

         QUAL    GetDateTime ; b# =74  s#1  =proc53

;-refs -  4/proc237   

GetDateTime
         POP.L   A1
         POP.L   A0
         MOVE.L  Time,(A0)
         JMP     (A1)

         QUAL    GetTime ; b# =75  s#1  =proc54

;-refs -  5/proc289   

GetTime  MOVEQ   #0,D0
         MOVEA.L 4(A7),A0
         MOVE.L  Time,D0
         _Secs2Date ; (D0/s:LongInt; VAR A0/d:DateTimeRec) 
         POP.L   (A7)
         RTS     

         QUAL    Delay ; b# =76  s#1  =proc55

;-refs -  1/proc12    

Delay    POP.L   D0
         POP.L   A1
         POP.L   A0
         PUSH.L  D0
         _Delay  ; (A0/numTicks:LongInt; D0\finalTicks:LongInt) 
         MOVE.L  D0,(A1)
         RTS     

         QUAL    proc56 ; b# =77  s#1  =proc56

param4    VEQU  8
param3    VEQU  10
param2    VEQU  12
param1    VEQU  16
funRslt   VEQU  20
         VEND    

;-refs -  1/proc98    

proc56   LINK    A6,#0
         MOVEA.L param1(A6),A0
         MOVEA.L param2(A6),A1
         MOVEQ   #0,D0
         MOVE.B  (A0)+,D0
         SWAP    D0
         MOVE.B  (A1)+,D0
         TST.B   param4(A6)
         BEQ.S   lci_2
         TST.B   param3(A6)
         BEQ.S   lci_1
         _CmpString ,CASE ; (str1,str2:Str255):BOOLEAN 
         BRA.S   lci_4
lci_1    _CmpString ; (str1,str2:Str255):BOOLEAN 
         BRA.S   lci_4
lci_2    TST.B   param3(A6)
         BEQ.S   lci_3
         _CmpString ,MK&CS; (str1,str2:Str255):BOOLEAN 
         BRA.S   lci_4
lci_3    _CmpString ,MARKS; (str1,str2:Str255):BOOLEAN 
lci_4    EORI.B  #1,D0
         MOVE.B  D0,funRslt(A6)
         UNLK    A6
         POP.L   A0
         ADDA.W  #12,A7
         JMP     (A0)

         QUAL    Restart ; b# =78  s#1  =proc57

;-refs -  1/proc89    

Restart  MOVEA.L RomBase,A0
         ADDA.W  #10,A0
         JMP     (A0)

         QUAL    PBGetVInfo ; b# =79  s#1  =proc58

;-refs -  1/proc89     1/proc98    

PBGetVInfo
         POP.L   A1
         POP.B   D0
         POP.L   A0
         BNE.S   lck_1
         _GetVolInfo ; (A0|IOPB:ParamBlockRec):D0\OSErr 
         BRA.S   lck_2
lck_1    _GetVolInfo ,Async; (A0|IOPB:ParamBlockRec):D0\OSErr 
lck_2    MOVE    D0,(A7)
         JMP     (A1)

         QUAL    PBUnMountVol ; b# =80  s#1  =proc59

;-refs -  1/proc89    

PBUnMountVol
         POP.L   A1
         POP.L   A0
         _UnMountVol ; (A0|IOPB:ParamBlockRec):D0\OSErr 
         MOVE    D0,(A7)
         JMP     (A1)

         QUAL    PBEject ; b# =81  s#1  =proc60

;-refs -  1/proc89    

PBEject  POP.L   A1
         POP.L   A0
         _Eject  ; (A0|IOPB:ParamBlockRec):D0\OSErr 
         MOVE    D0,(A7)
         JMP     (A1)

         QUAL    proc61 ; b# =82  s#1  =proc61

vcn_1     VEQU  -122
param4    VEQU  8
param3    VEQU  12
param2    VEQU  16
param1    VEQU  20
funRslt   VEQU  22
         VEND    

;-refs -  1/proc98    

proc61   LINK    A6,#-$7A
         LEA     vcn_1(A6),A0
         MOVE.L  param2(A6),ioNamePtr(A0)
         MOVE    param1(A6),ioVRefNum(A0)
         CLR     ioVolIndex(A0)
         _GetVolInfo ,HFS  ; (A0|IOPB:HParamBlockRec):D0\OSErr 
         MOVE    D0,funRslt(A6)
         MOVEA.L param3(A6),A1
         MOVE    ioVRefNum(A0),(A1)
         MOVE.L  ioVAlBlkSiz(A0),D0
         ASR.L   #8,D0
         ASR.L   #1,D0
         MULU    62(A0),D0
         ASL.L   #1,D0
         ASL.L   #8,D0
         MOVEA.L param4(A6),A1
         MOVE.L  D0,(A1)
         UNLK    A6
         POP.L   A1
         ADDA.W  #14,A7
         JMP     (A1)

         QUAL    Eject ; b# =83  s#1  =proc62

vco_1     VEQU  -64
param2    VEQU  8
param1    VEQU  10
funRslt   VEQU  14
         VEND    

;-refs -  1/proc98    

Eject    LINK    A6,#-$40
         LEA     vco_1(A6),A0
         MOVE    param2(A6),ioVRefNum(A0)
         MOVE.L  param1(A6),ioNamePtr(A0)
         _Eject  ; (A0|IOPB:ParamBlockRec):D0\OSErr 
         MOVE    D0,funRslt(A6)
         UNLK    A6
         POP.L   A1
         ADDQ.L  #6,A7
         JMP     (A1)

         QUAL    proc63 ; b# =84  s#1  =proc63

vcp_1     VEQU  -32
         VEND    

;-refs -  1/proc89     1/proc90     4/proc237   
;-        4/proc247    5/proc288   

proc63   TST     Rom85
         BMI.S   lcp_1
         POP.L   A0
         POP     D0
         PUSH.L  A0
         LINK    A6,#-$20
         LEA     vcp_1(A6),A0
         MOVE    #$FFFC,ioCRefNum(A0)
         MOVE    #2,CSCode(A0)
         MOVE    D0,CSParam(A0)
         _Control ,HFS  ; (A0|IOPB:ParamBlockRec):D0\OSErr 
         UNLK    A6
         RTS     
lcp_1    POP.L   A0
         POP     D0
         PUSH.L  A0
         CMPI.B  #$FF,$400009
         BEQ.S   lcp_2
         MOVE    SR,-(A7)
         ORI     #$300,SR
         MOVE.B  ViaBufA,D1
         ANDI    #$F8,D1
         ANDI    #7,D0
         MOVE.B  D0,SdVolume
         OR      D0,D1
         MOVE.B  D1,ViaBufA
         MOVE    (A7)+,SR
         RTS     
lcp_2    ANDI    #7,D0
         MOVE.B  D0,SdVolume
         LSL     #1,D0
         MOVE.B  PhaseRead+7553,D1
         ANDI.B  #$F1,D1
         OR.B    D0,D1
         MOVE.B  D1,PhaseRead+7553
         RTS     

         QUAL    GetSoundVol ; b# =85  s#1  =proc64

;-refs -  4/proc247    5/proc287   

GetSoundVol
         POP.L   A0
         POP.L   A1
         CLR.B   (A1)+
         MOVE.B  SdVolume,(A1)
         JMP     (A0)

         QUAL    proc65 ; b# =86  s#1  =proc65

;-refs -  1/proc91     1/proc98     4/proc247   

proc65   POP.L   A0
         POP     DlgFont
         JMP     (A0)

         QUAL    proc66 ; b# =87  s#1  =proc66

;-refs -  4/proc241   

proc66   TST     Rom85
         BMI.S   lcs_1
         MOVE    #$90,D0     ; SysEnvirons
         _GetTrapAddress newOS; (D0/trapNum:Word):A0\ProcPtr 
         MOVEA.L A0,A1
         MOVE    #$9F,D0     ; UnimplTrap
         _GetTrapAddress newTool; (D0/trapNum:Word):A0\ProcPtr 
         CMPA.L  A0,A1
         BEQ.S   lcs_1
         POP.L   A1
         POP.L   A0
         POP     D0
         PUSH.L  A1
         _SysEnvirons ; (D0/verRequested:INTEGER; VAR A0|theWorld:SysEnvRec):D0\OSErr 
         MOVE    D0,4(A7)
         RTS     
lcs_1    MOVEA.L 4(A7),A0
         MOVE    #1,D0
         MOVEA.L A0,A1
         BRA.S   lcs_2

data17   DC.B    3,$13,$B,2,1

;-refs -  1/proc66    

data18   DC.W    $30

lcs_2    MOVE    #16,D0
         ASR     #1,D0
         SUBQ    #1,D0
lcs_3    CLR     (A0)+
         DBRA    D0,lcs_3
         MOVE    #1,(A1)
         MOVEA.L RomBase,A0
         MOVE    #$FFFE,2(A1)
         CMPI.B  #$FF,9(A0)
         BEQ.S   lcs_6
         TST.B   8(A0)
         BGT.S   lcs_4
         MOVE    #$FFFF,2(A1)
         TST     Rom85
         BMI.S   lcs_6
         MOVE    #1,2(A1)
         TST     HWCfgFlags
         BPL.S   lcs_6
         MOVE    #2,2(A1)
         BRA.S   lcs_6
lcs_4    CLR     2(A1)
         CMPI.B  #2,8(A0)
         BGT.S   lcs_6
         BEQ.S   lcs_5
         MOVE    #4,2(A1)
         BRA.S   lcs_6
lcs_5    MOVE    #3,2(A1)
lcs_6    CLR     4(A1)
         CMPI.B  #2,CPUFlag
         BGT.S   lcs_7
         MOVE.B  CPUFlag,D0
         ADDQ    #1,D0
         MOVE.B  D0,7(A1)
lcs_7    TST     Rom85
         BMI.S   lcs_8
         BTST    #4,HWCfgFlags
         BEQ.S   lcs_8
         MOVE.B  #1,8(A1)
lcs_8    CMPI    #$3FFF,Rom85
         BHI.S   lcs_9
         MOVE.B  #1,9(A1)
lcs_9    MOVE.B  KybdType,D0
         LEA     data18,A0
         MOVE    #4,D1
lcs_10   CMP.B   -(A0),D0
         DBEQ    D1,lcs_10
         ADDQ    #1,D1
         MOVE    D1,10(A1)
         TST.B   PortbUse
         BMI.S   lcs_11
         MOVE.B  SpConfig,D1
         ANDI.B  #$F,D1
         CMPI.B  #1,D1
         BNE.S   lcs_11
         MOVEA.L ABusDCE,A0
         MOVE.B  DCtlQHdr+QFlags+1(A0),13(A1)
lcs_11   MOVE    BootDrive,14(A1)
         TST     FsFcbLen
         BLT.S   lcs_14
         CLR     14(A1)
         MOVE    #60,D1
lcs_12   CLR     -(A7)
         DBRA    D1,lcs_12
         MOVEA.L A7,A0
         MOVE    SysMap,ioRefNum(A0)
         MOVEQ   #8,D0       ;Trap = GetFcbInfo
         _HFsDispatch ,HFS  ; (A0|IOPB:FCBPBRec):D0\OSErr 
         BNE.S   lcs_13
         MOVE    ioFCBVRefNum(A0),ioVRefNum(A0)
         _GetVolInfo ,HFS  ; (A0|IOPB:HParamBlockRec):D0\OSErr 
         BNE.S   lcs_13
         MOVE.L  ioVFndrInfo(A0),ioVAlBlkSiz(A0)
         MOVE.L  #'ERIK',ioVolIndex(A0)
         MOVEQ   #1,D0       ;Trap = OpenWD
         _HFsDispatch ,HFS  ; (A0|IOPB:WDPBRec):D0\OSErr 
         BNE.S   lcs_13
         MOVE    ioVRefNum(A0),14(A1)
lcs_13   ADDA.W  #$7A,A7
lcs_14   MOVEA.L A1,A0
         POP.L   A1
         ADDQ    #6,A7
         MOVE    #$EA84,(A7)
         JMP     (A1)

         QUAL    proc67 ; b# =90  s#1  =proc67

;-refs -  1/code      

proc67   RTS     

         QUAL    proc68 ; b# =91  s#1  =proc68

;-refs -  1/code      

proc68   MOVEA.L 4(A7),A1
         PEA     1
         PEA     glob117(A5)
         PEA     glob116(A5)
         PEA     glob115(A5)
         PUSH.L  A1
         JSR     _RTInit
         LEA     20(A7),A7
         PEA     glob113(A5)
         JSR     proc24
         ADDQ    #4,A7
         TST.L   D0
         BNE.S   lcu_1
         JSR     proc71
         RTS     
lcu_1    ADDQ    #4,A7
         RTS     

         QUAL    %INITHEAP ; b# =92  s#1  =proc69

;-refs -  1/code      

%INITHEAP
         CLR.L   -(A7)
         JSR     exit

;-refs -  1/code      

proc70   CLR.L   -(A7)
         JSR     exit

;-refs -  1/proc68    

proc71   LINK    A6,#0
         MOVE.L  #$1388,glob127(A5)
         CLR.B   glob125(A5)
         CLR.B   glob124(A5)
         MOVEQ   #0,D0
         MOVE.L  D0,glob123(A5)
         MOVEQ   #0,D0
         MOVE.L  D0,glob122(A5)
         MOVEQ   #0,D0
         MOVE.L  D0,glob121(A5)
         MOVEQ   #0,D0
         MOVE.L  D0,glob120(A5)
         MOVE.B  #1,glob119(A5)
         MOVEQ   #0,D0
         MOVE.L  D0,glob126(A5)
         MOVEQ   #0,D0
         MOVE.L  D0,glob118(A5)
         UNLK    A6
         RTS     


data19   DNAME   %INITHEAP,0,0

         QUAL    proc72 ; b# =96  s#1  =proc72

;-refs -  4/proc246    5/proc297   

proc72   PUSH.L  D0
         PUSH.L  D1
         MOVE    16(A7),D0
         MULS    14(A7),D0
         MOVE    12(A7),D1
         MULS    18(A7),D1
         ADD     D1,D0
         SWAP    D0
         CLR     D0
         MOVE    18(A7),D1
         MULU    14(A7),D1
         ADD.L   D1,D0
         MOVE.L  D0,16(A7)
         POP.L   D1
         POP.L   D0
         MOVE.L  (A7),4(A7)
         ADDQ.L  #4,A7
         RTS     

         QUAL    %I_DIV4 ; b# =97  s#1  =proc73

;-refs -  1/proc95     4/proc246    5/proc297   

%I_DIV4  LINK    A6,#0
         PUSH.L  D0
         PUSH.L  D1
         MOVE.L  20(A7),D0
         MOVE.L  16(A7),D1
         JSR     proc75
         MOVE.L  D1,20(A7)
         POP.L   D1
         POP.L   D0
         UNLK    A6
         MOVE.L  (A7),4(A7)
         ADDQ.L  #4,A7
         RTS     

         QUAL    %I_MOD4 ; b# =98  s#1  =proc74

;-refs -  1/proc95    

%I_MOD4  LINK    A6,#0
         PUSH.L  D0
         PUSH.L  D1
         MOVE.L  20(A7),D0
         MOVE.L  16(A7),D1
         JSR     proc75
         MOVE.L  D0,20(A7)
         POP.L   D1
         POP.L   D0
         UNLK    A6
         MOVE.L  (A7),4(A7)
         ADDQ.L  #4,A7
         RTS     

         QUAL    proc75 ; b# =99  s#1  =proc75

;-refs -  1/%I_DIV4    1/%I_MOD4   

proc75   MOVEM.L D2-D6,-(A7)
         MOVE.L  D0,D5
         BPL.S   lcz_1
         NEG.L   D0
lcz_1    MOVE.L  D1,D6
         BPL.S   lcz_2
         NEG.L   D1
lcz_2    MOVE.L  D1,D2
         SWAP    D2
         TST     D2
         BNE.S   lcz_4
         MOVE    D0,D3
         CLR     D0
         SWAP    D0
         BEQ.S   lcz_3
         DIVU    D1,D0
         MOVE    D0,D2
lcz_3    SWAP    D2
         MOVE    D3,D0
         DIVU    D1,D0
         MOVE    D0,D2
         MOVE.L  D2,D1
         CLR     D0
         SWAP    D0
         BRA.S   lcz_7
lcz_4    MOVE.L  D0,D2
         CLR     D0
         SWAP    D0
         SWAP    D2
         CLR     D2
         MOVE.L  D1,D3
         MOVEQ   #0,D1
         MOVEQ   #15,D4
lcz_5    ADD.L   D2,D2
         ADDX.L  D0,D0
         ADD.L   D1,D1
         CMP.L   D3,D0
         BLT.S   lcz_6
         SUB.L   D3,D0
         ADDQ.B  #1,D1
lcz_6    DBRA    D4,lcz_5
lcz_7    TST.L   D5
         BPL.S   lcz_8
         NEG.L   D0
lcz_8    EOR.L   D5,D6
         BPL.S   lcz_9
         NEG.L   D1
lcz_9    MOVEM.L (A7)+,D2-D6
         RTS     

         QUAL    proc76 ; b# =100  s#1  =proc76

;-refs -  1/proc11     1/proc95     1/proc98    
;-        1/proc99     1/proc100    1/proc103   
;-        1/proc105    1/proc106    1/proc107   
;-        1/proc108    1/proc109    4/proc236   
;-        4/proc238    5/proc249    5/proc272   
;-        5/proc295   26/proc407   26/proc411   
;-       26/proc414   

proc76   MOVEM.L D0-D2/A0-A2,-(A7)
         LEA     28(A7),A1
         MOVE    (A1)+,D0
         MOVEA.L (A1)+,A0
         MOVE    D0,D2
         ADD     D2,D2
         ADD     D2,D2
         ADDA.W  D2,A1
         CLR     D1
         ADDQ    #1,A0
         BRA.S   lda_4
lda_1    MOVEA.L -(A1),A2
         CLR     D2
         MOVE.B  (A2)+,D2
         ADD     D2,D1
         CMPI    #$FF,D1
         BLE.S   lda_3
         SUBI    #$FF,D1
         SUB     D1,D2
         MOVE    #$FF,D1
         BRA.S   lda_3
lda_2    MOVE.B  (A2)+,(A0)+
lda_3    DBRA    D2,lda_2
lda_4    DBRA    D0,lda_1
         MOVEA.L -(A1),A0
         MOVE.B  D1,(A0)
         MOVE    -(A1),D0
         MOVEA.L A1,A0
         ADD     D0,D0
         ADD     D0,D0
         ADDA.W  D0,A0
         ADDQ    #2,A0
         MOVE.L  -(A1),(A0)
         MOVE.L  A0,(A1)
         MOVEM.L (A7)+,D0-D2/A0-A2
         POP.L   A7
         RTS     

         QUAL    proc77 ; b# =101  s#1  =proc77

;-refs -  5/proc281   

proc77   POP.L   A1
         POP     D0
         POP     D1
         POP.L   A0
         BLE.S   ldb_1
         TST     D0
         BLE.S   ldb_1
         CLR     D2
         MOVE.B  (A0),D2
         CMP.W   D1,D2
         BGE.S   ldb_2
ldb_1    JMP     (A1)
ldb_2    SUB     D1,D2
         SUB     D0,D2
         BGE.S   ldb_3
         SUBQ    #1,D1
         MOVE.B  D1,(A0)
         JMP     (A1)
ldb_3    PUSH.L  A1
         SUB.B   D0,(A0)
         ADDA.W  D1,A0
         MOVEA.L A0,A1
         ADDA.W  D0,A1
ldb_4    MOVE.B  (A1)+,(A0)+
         DBRA    D2,ldb_4
         RTS     

         QUAL    proc78 ; b# =102  s#1  =proc78

;-refs -  5/proc280   

proc78   MOVEM.L D0-D1/A0-A1,-(A7)
         MOVEQ   #1,D1
         BRA.S   ldc_1

data20   DC.W    $48E7,$C0C0,$4241

ldc_1    MOVEA.L 24(A7),A0
         MOVEA.L 20(A7),A1
         CLR     D0
         MOVE.B  (A0),D0
ldc_2    CMPM.B  (A0)+,(A1)+
         DBNE    D0,ldc_2
         BNE.S   ldc_3
         EORI    #1,D1
ldc_3    MOVE.B  D1,26(A7)
         MOVE.L  16(A7),22(A7)
         MOVEM.L (A7)+,D0-D1/A0-A1
         ADDQ    #6,A7
         RTS     

         QUAL    proc79 ; b# =104  s#1  =proc79

;-refs -  5/proc279   

proc79   MOVEM.L D0-D3/A0-A1,-(A7)
         MOVEA.L 32(A7),A1
         MOVEA.L 28(A7),A0
         MOVEQ   #1,D3
         JMP     ldd_1

data21   DC.W    $48E7,$F0C0,$206F,$20,$226F,$1C,$4243

ldd_1    CLR     D0
         MOVE.B  (A0)+,D0
         CLR     D1
         MOVE.B  (A1)+,D1
         CMP.W   D0,D1
         BLT.S   ldd_2
         MOVE    D0,D2
         BEQ.S   ldd_5
         BRA.S   ldd_3
ldd_2    MOVE    D1,D2
         BEQ.S   ldd_5
ldd_3    SUBQ    #1,D2
ldd_4    CMPM.B  (A0)+,(A1)+
         DBNE    D2,ldd_4
         BEQ.S   ldd_5
         BLS.S   ldd_6
         BRA.S   ldd_7
ldd_5    CMP.W   D0,D1
         BGT.S   ldd_7
ldd_6    EORI    #1,D3
ldd_7    MOVE.B  D3,34(A7)
         MOVEM.L (A7)+,D0-D3/A0-A1
         MOVE.L  (A7),6(A7)
         ADDQ    #6,A7
         RTS     

         QUAL    proc80 ; b# =106  s#1  =proc80


proc80   LINK    A6,#0
         PEA     glob258(A5)
         PEA     glob93(A5)
         PEA     glob259(A5)
         PEA     glob94(A5)
         CLR     -(A7)
         CLR.L   -(A7)
         _CopyBits ; (srcBits,dstBits:BitMap; srcRect,dstRect:Rect; mode:INTEGER{|XferMode}; maskRgn:RgnHandle) 
         UNLK    A6
         RTS     

         QUAL    proc81 ; b# =107  s#1  =proc81

vdf_1     VEQU  -14
param1    VEQU  8
         VEND    

;-refs -  1/proc82    

proc81   LINK    A6,#-$E
         MOVEM.L D7/A4,-(A7)
         MOVEA.L param1(A6),A4
         MOVEQ   #1,D7
         BRA.S   ldf_4
ldf_1    CLR.L   -(A7)
         _TickCount ; :LongInt 
         POP.L   -8(A4)
         PEA     vdf_1(A6)
         CLR     -(A7)
         MOVE    D7,D0
         SUBQ    #1,D0
         MULS    #57,D0
         PUSH    D0
         PUSH    #$200
         MOVE    D7,D0
         MULS    #57,D0
         PUSH    D0
         _SetRect ; (VAR r:Rect; left,top,right,bottom:INTEGER) 
         PEA     vdf_1(A6)
         _PaintRect ; (r:Rect) 
ldf_2    CLR.L   -(A7)
         _TickCount ; :LongInt 
         POP.L   D0
         SUB.L   -8(A4),D0
         MOVEQ   #1,D1
         CMP.L   D0,D1
         BLE.S   ldf_3
         BRA     ldf_2
ldf_3    ADDQ    #1,D7
ldf_4    MOVEQ   #7,D0
         CMP.W   D7,D0
         BGE     ldf_1
         MOVEM.L (A7)+,D7/A4
         UNLK    A6
         POP.L   (A7)
         RTS     

         QUAL    proc82 ; b# =108  s#1  =proc82

vdg_1     VEQU  -4
         VEND    

;-refs -  1/proc105    1/proc113    1/proc114   
;-        4/proc247    5/proc258    5/proc268   
;-        5/proc290   17/proc382   

proc82   LINK    A6,#-8
         PEA     vdg_1(A6)
         _GetPort ; (VAR port:GrafPtr) 
         MOVE.B  glob129(A5),D0
         BEQ.S   ldg_1
         PUSH.L  glob128(A5)
         _SetPort ; (port:GrafPtr) 
         PEA     glob99(A5)
         _PenPat ; (pat:Pattern) 
         PUSH.L  A6
         JSR     proc81
         PEA     glob98(A5)
         _PenPat ; (pat:Pattern) 
         LEA     glob269(A5),A0
         MOVE.L  A0,glob253(A5)
         BRA.S   ldg_5
ldg_1    PEA     glob155(A5)
         _SetPort ; (port:GrafPtr) 
         MOVE.B  glob254(A5),D0
         BEQ.S   ldg_4
         LEA     glob269(A5),A0
         CMPA.L  glob253(A5),A0
         BNE.S   ldg_2
         PEA     glob258(A5)
         _SetPBits ; (bm:BitMap) 
         PUSH.L  A6
         JSR     proc81
         PEA     glob260(A5)
         _SetPBits ; (bm:BitMap) 
         PEA     glob94(A5)
         _PaintRect ; (r:Rect) 
         BRA.S   ldg_3
ldg_2    PEA     glob260(A5)
         _SetPBits ; (bm:BitMap) 
         PUSH.L  A6
         JSR     proc81
         PEA     glob258(A5)
         _SetPBits ; (bm:BitMap) 
         PEA     glob94(A5)
         _PaintRect ; (r:Rect) 
ldg_3    JSR     proc163(A5)
         LEA     glob269(A5),A0
         MOVE.L  A0,glob253(A5)
         BRA.S   ldg_5
ldg_4    PEA     glob260(A5)
         _SetPBits ; (bm:BitMap) 
         PEA     glob94(A5)
         _PaintRect ; (r:Rect) 
ldg_5    PUSH.L  vdg_1(A6)
         _SetPort ; (port:GrafPtr) 
         UNLK    A6
         RTS     

         QUAL    proc83 ; b# =109  s#1  =proc83

vdh_1     VEQU  -4
         VEND    

;-refs -  1/proc114   

proc83   LINK    A6,#-4
         MOVE.B  glob254(A5),D0
         BEQ.S   ldh_3
         CLR.L   -(A7)
         _TickCount ; :LongInt 
         POP.L   vdh_1(A6)
ldh_1    CLR.L   -(A7)
         _TickCount ; :LongInt 
         POP.L   D0
         SUBQ.L  #1,D0
         CMP.L   vdh_1(A6),D0
         BGT.S   ldh_2
         BRA     ldh_1
ldh_2    JSR     proc162(A5)
ldh_3    UNLK    A6
         RTS     

         QUAL    proc84 ; b# =110  s#1  =proc84

;-refs -  1/proc85    

proc84   LINK    A6,#-$C
         MOVEM.L D7/A3-A4,-(A7)
         MOVE.L  glob160(A5),D7
         SUB.L   glob159(A5),D7
         MOVEA.L glob265(A5),A4
ldi_1    MOVE.L  A4,D0
         BEQ.S   ldi_3
         MOVEA.L A4,A3
         SUBA.L  #4,A3
         TST.L   (A3)
         BEQ.S   ldi_2
         MOVE.L  D7,D0
         ADD.L   D0,(A3)
ldi_2    MOVEA.L (A3),A4
         BRA     ldi_1
ldi_3    MOVEM.L (A7)+,D7/A3-A4
         UNLK    A6
         POP.L   (A7)
         RTS     

         QUAL    proc85 ; b# =111  s#1  =proc85

vdj_1     VEQU  -14
         VEND    

;-refs -  1/proc114    5/proc258    5/proc268   

proc85   LINK    A6,#-$12
         MOVEM.L D4-D7/A4,-(A7)
         MOVE.B  glob254(A5),D0
         BEQ     ldj_8
         MOVE.B  glob245(A5),D0
         BNE     ldj_7
         CLR.L   -(A7)
         _NewRgn ; :RgnHandle 
         POP.L   A4
         MOVEQ   #16,D7
         BRA     ldj_5
ldj_1    CLR.L   -(A7)
         _TickCount ; :LongInt 
         POP.L   vdj_1(A6)
         MOVE    #$200,D0
         EXT.L   D0
         DIVS    D7,D0
         MOVE    D0,D6
         MOVE    #$156,D0
         EXT.L   D0
         DIVS    D7,D0
         MOVE    D0,D5
         PUSH.L  A4
         MOVE    #$100,D0
         SUB     D6,D0
         PUSH    D0
         MOVE    #$AB,D0
         SUB     D5,D0
         PUSH    D0
         MOVE    D6,D0
         ADD     #$100,D0
         PUSH    D0
         MOVE    D5,D0
         ADD     #$AB,D0
         PUSH    D0
         _SetRecRgn ; (rgn:RgnHandle; left,top,right,bottom:INTEGER) 
         MOVE.B  glob129(A5),D0
         BEQ.S   ldj_2
         PEA     glob260(A5)
         MOVEA.L glob128(A5),A0
         PEA     2(A0)
         PEA     glob261(A5)
         PEA     glob259(A5)
         CLR     -(A7)
         PUSH.L  A4
         _CopyBits ; (srcBits,dstBits:BitMap; srcRect,dstRect:Rect; mode:INTEGER{|XferMode}; maskRgn:RgnHandle) 
         BRA.S   ldj_3
ldj_2    PEA     glob260(A5)
         PEA     glob258(A5)
         PEA     glob261(A5)
         PEA     glob259(A5)
         CLR     -(A7)
         PUSH.L  A4
         _CopyBits ; (srcBits,dstBits:BitMap; srcRect,dstRect:Rect; mode:INTEGER{|XferMode}; maskRgn:RgnHandle) 
ldj_3    CLR.L   -(A7)
         _TickCount ; :LongInt 
         POP.L   D0
         SUB.L   vdj_1(A6),D0
         MOVEQ   #1,D1
         CMP.L   D0,D1
         BLE.S   ldj_4
         BRA     ldj_3
ldj_4    SUBQ    #1,D7
ldj_5    MOVEQ   #2,D0
         CMP.W   D7,D0
         BLE     ldj_1
         MOVE.B  glob129(A5),D0
         BEQ.S   ldj_6
         PEA     glob260(A5)
         PEA     glob258(A5)
         PEA     glob261(A5)
         PEA     glob259(A5)
         CLR     -(A7)
         CLR.L   -(A7)
         _CopyBits ; (srcBits,dstBits:BitMap; srcRect,dstRect:Rect; mode:INTEGER{|XferMode}; maskRgn:RgnHandle) 
ldj_6    PUSH.L  A4
         _DisposRgn ; (rgn:RgnHandle) 
ldj_7    MOVE.L  glob272(A5),D4
         SUB.L   glob159(A5),D4
         PUSH.L  glob159(A5)
         PUSH.L  glob160(A5)
         PUSH.L  D4
         JSR     BlockMove
         MOVE.L  D4,D0
         ADD.L   glob160(A5),D0
         MOVE.L  D0,glob265(A5)
         PUSH.L  A6
         JSR     proc84
         MOVE.B  glob245(A5),D0
         BEQ.S   ldj_8
         JSR     proc162(A5)
         PEA     glob260(A5)
         PEA     glob258(A5)
         PEA     glob261(A5)
         PEA     glob259(A5)
         CLR     -(A7)
         CLR.L   -(A7)
         _CopyBits ; (srcBits,dstBits:BitMap; srcRect,dstRect:Rect; mode:INTEGER{|XferMode}; maskRgn:RgnHandle) 
ldj_8    MOVEM.L (A7)+,D4-D7/A4
         UNLK    A6
         RTS     

         QUAL    proc86 ; b# =112  s#1  =proc86

vdk_1     VEQU  -2
         VEND    

;-refs -  3/proc176    5/proc258    5/proc268   
;-        5/proc294    5/proc299   

proc86   LINK    A6,#-2
         CLR.B   glob246(A5)
         CLR     -(A7)
         PUSH.L  glob252(A5)
         JSR     proc50
         POP     vdk_1(A6)
         JSR     proc1
         MOVE.B  glob129(A5),D0
         BNE.S   ldk_1
         CLR     -(A7)
         PUSH.L  glob251(A5)
         JSR     proc50
         POP     vdk_1(A6)
ldk_1    CLR.B   glob249(A5)
         MOVEQ   #0,D0
         MOVE.L  D0,glob250(A5)
         UNLK    A6
         RTS     

         QUAL    proc87 ; b# =113  s#1  =proc87

vdl_1     VEQU  -2
         VEND    

;-refs -  3/proc176    5/proc258    5/proc268   
;-        5/proc294    5/proc299   

proc87   LINK    A6,#-2
         CLR     -(A7)
         PUSH.L  glob252(A5)
         JSR     proc51
         POP     vdl_1(A6)
         JSR     proc8
         MOVE.B  glob129(A5),D0
         BNE.S   ldl_1
         CLR     -(A7)
         PUSH.L  glob251(A5)
         JSR     proc51
         POP     vdl_1(A6)
ldl_1    UNLK    A6
         RTS     

         QUAL    proc88 ; b# =114  s#1  =proc88

;-refs -  3/proc176   

proc88   LINK    A6,#0
         PEA     glob158(A5)
         _SetPort ; (port:GrafPtr) 
         UNLK    A6
         RTS     

         QUAL    proc89 ; b# =115  s#1  =proc89

vdn_1     VEQU  -154
vdn_2     VEQU  -88
vdn_3     VEQU  -76
vdn_4     VEQU  -70
vdn_5     VEQU  -66
vdn_6     VEQU  -60
         VEND    

;-refs -  1/proc91     1/code      

proc89   LINK    A6,#-$9A
         MOVEM.L D4-D7,-(A7)
         MOVE.B  glob141(A5),D0
         BEQ.S   ldn_1
         JSR     proc7
         PUSH    glob152(A5)
         JSR     proc63
ldn_1    MOVE.B  glob142(A5),D0
         BEQ.S   ldn_2
         JSR     proc229(A5)
ldn_2    CLR     D7
         CLR.B   D5
ldn_3    ADDQ    #1,D7
         MOVEQ   #0,D0
         MOVE.L  D0,vdn_3(A6)
         MOVEQ   #0,D0
         MOVE.L  D0,vdn_4(A6)
         CLR     vdn_5(A6)
         MOVE    D7,vdn_6(A6)
         CLR     -(A7)
         PEA     vdn_2(A6)
         CLR     -(A7)
         JSR     PBGetVInfo
         TST     (A7)+
         SNE     D5
         NEG.B   D5
         MOVE    D7,D0
         ADD     D0,D0
         LEA     vdn_1(A6),A0
         MOVE    vdn_5(A6),0(A0,D0.W)
         MOVE.B  D5,D0
         BEQ     ldn_3
         MOVE    D7,D0
         SUBQ    #1,D0
         MOVE    D0,vdn_1(A6)
         MOVEQ   #1,D6
         BRA.S   ldn_5
ldn_4    MOVEQ   #0,D0
         MOVE.L  D0,vdn_3(A6)
         MOVEQ   #0,D0
         MOVE.L  D0,vdn_4(A6)
         MOVE    D6,D0
         ADD     D0,D0
         LEA     vdn_1(A6),A0
         MOVE    0(A0,D0.W),vdn_5(A6)
         CLR     vdn_6(A6)
         CLR     -(A7)
         PEA     vdn_2(A6)
         JSR     PBEject
         POP     D4
         CLR     -(A7)
         PEA     vdn_2(A6)
         JSR     PBUnMountVol
         POP     D4
         ADDQ    #1,D6
         BVS.S   ldn_6
ldn_5    CMP.W   vdn_1(A6),D6
         BLE     ldn_4
ldn_6    JSR     Restart
         MOVEM.L (A7)+,D4-D7
         UNLK    A6
         RTS     

         QUAL    proc90 ; b# =116  s#1  =proc90

;-refs -  1/proc91     1/code      

proc90   LINK    A6,#0
         MOVE.B  glob141(A5),D0
         BEQ.S   ldo_1
         JSR     proc7
         PUSH    glob152(A5)
         JSR     proc63
ldo_1    MOVE.B  glob142(A5),D0
         BEQ.S   ldo_2
         JSR     proc229(A5)
ldo_2    JSR     proc162(A5)
         _ExitToShell  


data22   DC.B    'N^Nu'

         QUAL    proc91 ; b# =118  s#1  =proc91

vdp_1     VEQU  -20
vdp_2     VEQU  -12
vdp_3     VEQU  -8
vdp_4     VEQU  -6
param1    VEQU  8
         VEND    

;-refs -  1/proc92     4/proc238    4/proc240   
;-        4/proc241   

proc91   LINK    A6,#-$14
         PUSH.L  A4
         CLR     -(A7)
         JSR     proc65
         CLR.L   -(A7)
         PUSH    param1(A6)
         CLR.L   -(A7)
         CLR.L   -(A7)
         _GetNewDialog ; (DlgID:INTEGER; wStorage:Ptr; behind:WindowPtr):DialogPtr 
         POP.L   A4
         MOVE.B  glob153(A5),D0
         BEQ.S   ldp_1
         PUSH.L  A4
         PUSH    #2
         PEA     vdp_3(A6)
         PEA     vdp_2(A6)
         PEA     vdp_1(A6)
         _GetDItem ; (dlg:DialogPtr; itemNo:INTEGER; VAR kind:INTEGER; VAR item:Handle; VAR box:Rect) 
         PUSH.L  vdp_2(A6)
         PUSH.L  #$1900000
         _MoveControl ; (Ctl:CtlHdl; h,v:INTEGER) 
ldp_1    PUSH.L  A4
         _ShowWindow ; (theWindow:WindowPtr) 
         PUSH.L  A4
         _SelectWindow ; (theWindow:WindowPtr) 
         CLR.L   -(A7)
         PEA     vdp_4(A6)
         _ModalDialog ; (filterProc:ProcPtr; VAR itemHit:INTEGER) 
         MOVE    vdp_4(A6),D0
         SUBQ    #1,D0
         BEQ.S   ldp_2
         SUBQ    #1,D0
         BEQ.S   ldp_3
         BRA.S   ldp_4
ldp_2    JSR     proc90
         BRA.S   ldp_4
ldp_3    JSR     proc89
ldp_4    POP.L   A4
         UNLK    A6
         POP.L   A0
         ADDQ    #2,A7
         JMP     (A0)

         QUAL    proc92 ; b# =119  s#1  =proc92

vdq_1     VEQU  -256
param1    VEQU  8
         VEND    

;-refs -  1/proc11     1/proc99     1/proc100   
;-        1/proc103    1/proc105    1/proc106   
;-        1/proc107    1/proc108    1/proc109   
;-        4/proc236    4/proc244    5/proc249   
;-        5/proc251    5/proc253    5/proc259   
;-        5/proc272    5/proc292    5/proc293   
;-       26/proc407   26/proc411   26/proc412   
;-       26/proc414   

proc92   LINK    A6,#-$100
         MOVEA.L param1(A6),A0
         LEA     vdq_1(A6),A1
         MOVEQ   #63,D0
ldq_1    MOVE.L  (A0)+,(A1)+
         DBRA    D0,ldq_1
         _ShowCursor  
         _ShowCursor  
         _ShowCursor  
         JSR     proc162(A5)
         CLR.B   glob246(A5)
         TST.L   glob255(A5)
         BEQ.S   ldq_2
         PUSH.L  glob255(A5)
         JSR     DisposPtr
ldq_2    PEA     vdq_1(A6)
         PEA     data23
         PEA     data23
         PEA     data23
         _ParamText ; (cite0,cite1,cite2,cite3:Str255) 
         PUSH    #$7E4
         JSR     proc91
         UNLK    A6
         POP.L   (A7)
         RTS     

;-refs -  1/proc92    

data23   DC.W    0

         QUAL    proc93 ; b# =121  s#1  =proc93

;-refs -  1/proc105    5/proc258   

proc93   LINK    A6,#0
         MOVEA.L glob159(A5),A0
         MOVEQ   #0,D0
         MOVE.L  D0,(A0)
         MOVE.L  glob159(A5),D0
         ADDQ.L  #4,D0
         MOVE.L  D0,glob272(A5)
         MOVE.B  glob254(A5),D0
         BEQ.S   ldr_1
         MOVEA.L glob160(A5),A0
         MOVEQ   #0,D0
         MOVE.L  D0,(A0)
         MOVE.L  glob160(A5),D0
         ADDQ.L  #4,D0
         MOVE.L  D0,glob265(A5)
ldr_1    UNLK    A6
         RTS     

         QUAL    proc94 ; b# =122  s#1  =proc94


proc94   LINK    A6,#0
         LEA     glob269(A5),A0
         CMPA.L  glob253(A5),A0
         BNE.S   lds_1
         MOVEA.L glob159(A5),A0
         MOVEQ   #0,D0
         MOVE.L  D0,(A0)
         MOVE.L  glob159(A5),D0
         ADDQ.L  #4,D0
         MOVE.L  D0,glob272(A5)
         BRA.S   lds_2
lds_1    MOVEA.L glob160(A5),A0
         MOVEQ   #0,D0
         MOVE.L  D0,(A0)
         MOVE.L  glob160(A5),D0
         ADDQ.L  #4,D0
         MOVE.L  D0,glob265(A5)
lds_2    UNLK    A6
         RTS     

         QUAL    proc95 ; b# =123  s#1  =proc95

vdt_1     VEQU  -32
vdt_2     VEQU  -14
vdt_3     VEQU  -13
vdt_4     VEQU  -12
param1    VEQU  8
funRslt   VEQU  12
         VEND    

;-refs -  1/proc96     4/proc238   

proc95   LINK    A6,#-$20
         MOVEM.L D6-D7,-(A7)
         MOVE.L  param1(A6),D7
         MOVE.L  D7,D6
         MOVE.L  D7,D0
         BPL.S   ldt_1
         NEG.L   D0
ldt_1    MOVE.L  D0,D7
         CLR.B   vdt_4(A6)
         MOVE    #$120,vdt_2(A6)
ldt_2    PUSH.L  D7
         MOVEQ   #10,D0
         PUSH.L  D0
         JSR     %I_MOD4
         POP.L   D0
         MOVEQ   #48,D1
         ADD.L   D1,D0
         MOVE.B  D0,vdt_3(A6)
         PUSH.L  D7
         MOVEQ   #10,D0
         PUSH.L  D0
         JSR     %I_DIV4
         POP.L   D7
         PEA     vdt_2(A6)
         PEA     vdt_4(A6)
         PEA     vdt_1(A6)
         PUSH    #2
         JSR     proc76
         LEA     vdt_4(A6),A0
         LEA     vdt_1(A6),A1
         MOVE.L  (A1)+,(A0)+
         MOVE.L  (A1)+,(A0)+
         MOVE.L  (A1)+,(A0)+
         TST.L   D7
         BNE     ldt_2
         TST.L   D6
         BGE.S   ldt_3
         PEA     data24
         PEA     vdt_4(A6)
         PEA     vdt_1(A6)
         PUSH    #2
         JSR     proc76
         LEA     vdt_4(A6),A0
         LEA     vdt_1(A6),A1
         MOVE.L  (A1)+,(A0)+
         MOVE.L  (A1)+,(A0)+
         MOVE.L  (A1)+,(A0)+
ldt_3    MOVEA.L funRslt(A6),A0
         LEA     vdt_4(A6),A1
         MOVE.L  (A1)+,(A0)+
         MOVE.L  (A1)+,(A0)+
         MOVE.L  (A1)+,(A0)+
         MOVEM.L (A7)+,D6-D7
         UNLK    A6
         POP.L   (A7)
         RTS     

;-refs -  1/proc95    

data24   DC.W    $12D

         QUAL    proc96 ; b# =125  s#1  =proc96

vdu_1     VEQU  -256
param1    VEQU  8
funRslt   VEQU  10
         VEND    

;-refs -  1/proc11     1/proc103    1/proc105   
;-        1/proc106    1/proc107    1/proc108   
;-        1/proc109    4/proc236    5/proc249   
;-        5/proc272   26/proc407   26/proc411   
;-       26/proc414   

proc96   LINK    A6,#-$100
         MOVEA.L funRslt(A6),A0
         PUSH.L  A0
         PEA     vdu_1(A6)
         MOVE    param1(A6),D0
         EXT.L   D0
         PUSH.L  D0
         JSR     proc95
         POP.L   D0
         POP.L   A0
         MOVEA.L D0,A1
         MOVEQ   #63,D0
ldu_1    MOVE.L  (A1)+,(A0)+
         DBRA    D0,ldu_1
         UNLK    A6
         POP.L   A0
         ADDQ    #2,A7
         JMP     (A0)

         QUAL    proc97 ; b# =126  s#1  =proc97

vdv_1     VEQU  -16
vdv_2     VEQU  -14
param1    VEQU  8
funRslt   VEQU  20
         VEND    

;-refs -  1/proc98    

proc97   LINK    A6,#-$10
         PUSH.L  #$800000
         PEA     vdv_1(A6)
         _GetNextEvent ; (mask:EventMask; VAR theEvent:EventRecord):BOOLEAN 
         POP.B   D0
         BEQ.S   ldv_1
         MOVEA.L param1(A6),A0
         PUSH.L  A0
         CLR.L   -(A7)
         PUSH.L  vdv_2(A6)
         PUSH.L  #$FFFF
         _BitAnd ; (long1,long2:HLongInt):HLongInt 
         POP.L   D0
         POP.L   A0
         MOVE    D0,(A0)
         MOVE.B  #1,funRslt(A6)
         BRA.S   ldv_2
ldv_1    CLR.B   funRslt(A6)
ldv_2    UNLK    A6
         POP.L   A0
         ADDA.W  #12,A7
         JMP     (A0)

         QUAL    proc98 ; b# =127  s#1  =proc98

vdw_1     VEQU  -1120
vdw_2     VEQU  -864
vdw_3     VEQU  -608
vdw_4     VEQU  -596
vdw_5     VEQU  -592
vdw_6     VEQU  -590
vdw_7     VEQU  -586
vdw_8     VEQU  -580
vdw_9     VEQU  -524
vdw_10    VEQU  -520
vdw_11    VEQU  -518
vdw_12    VEQU  -262
vdw_13    VEQU  -256
param1    VEQU  8
         VEND    

;-refs -  1/proc100   

proc98   LINK    A6,#-$460
         MOVEM.L D6-D7/A3-A4,-(A7)
         MOVEA.L param1(A6),A0
         LEA     vdw_13(A6),A1
         MOVEQ   #63,D0
ldw_1    MOVE.L  (A0)+,(A1)+
         DBRA    D0,ldw_1
         PEA     vdw_13(A6)
         PEA     data26
         PEA     vdw_1(A6)
         PUSH    #2
         JSR     proc76
         LEA     vdw_2(A6),A0
         LEA     vdw_1(A6),A1
         MOVEQ   #63,D0
ldw_2    MOVE.L  (A1)+,(A0)+
         DBRA    D0,ldw_2
         MOVEQ   #0,D0
         MOVE.L  D0,vdw_4(A6)
         LEA     vdw_2(A6),A0
         MOVE.L  A0,vdw_6(A6)
         MOVE    #$7FFF,vdw_7(A6)
         MOVE    #$FFFF,vdw_8(A6)
         CLR     -(A7)
         PEA     vdw_3(A6)
         CLR     -(A7)
         JSR     PBGetVInfo
         TST     (A7)+
         SEQ     D0
         TST.B   D0
         BEQ.S   ldw_3
         TST     vdw_5(A6)
         SEQ     D1
         AND.B   D1,D0
         BEQ.S   ldw_3
         BRA     ldw_7
ldw_3    JSR     proc162(A5)
         MOVE.B  glob246(A5),D6
         CLR.B   glob246(A5)
         CLR     -(A7)
         JSR     proc65
         CLR.L   -(A7)
         PUSH    #$7D0
         CLR.L   -(A7)
         CLR.L   -(A7)
         _GetNewDialog ; (DlgID:INTEGER; wStorage:Ptr; behind:WindowPtr):DialogPtr 
         POP.L   A3
         PEA     vdw_13(A6)
         PEA     data25
         PEA     data25
         PEA     data25
         _ParamText ; (cite0,cite1,cite2,cite3:Str255) 
         MOVE.B  glob129(A5),D0
         BEQ.S   ldw_4
         MOVEA.L glob128(A5),A0
         LEA     8(A0),A4
         PUSH.L  A3
         MOVE    2(A4),D0
         NEG     D0
         SUB     10(A3),D0
         PUSH    D0
         MOVE    (A4),D0
         NEG     D0
         SUB     8(A3),D0
         PUSH    D0
         CLR     -(A7)
         _MoveWindow ; (theWindow:WindowPtr; h,v:INTEGER; BringToFront:BOOLEAN) 
ldw_4    PUSH.L  A3
         _ShowWindow ; (theWindow:WindowPtr) 
         PUSH.L  A3
         _SelectWindow ; (theWindow:WindowPtr) 
         PUSH.L  A3
         _DrawDialog ; (dlg:DialogPtr) 
         MOVE    #1,vdw_12(A6)
         CLR     -(A7)
         PUSH    vdw_12(A6)
         PEA     vdw_11(A6)
         PEA     vdw_10(A6)
         PEA     vdw_9(A6)
         JSR     proc61
         POP     D7
ldw_5    CLR     -(A7)
         CLR.L   -(A7)
         PUSH    vdw_10(A6)
         JSR     Eject
         POP     D7
ldw_6    CLR     -(A7)
         PUSH    vdw_12(A6)
         JSR     DiskEject
         POP     D7
         PEA     proc97
         PEA     vdw_12(A6)
         _ModalDialog ; (filterProc:ProcPtr; VAR itemHit:INTEGER) 
         CLR     -(A7)
         PUSH    vdw_12(A6)
         PEA     vdw_11(A6)
         PEA     vdw_10(A6)
         PEA     vdw_9(A6)
         JSR     proc61
         TST     (A7)+
         BNE     ldw_6
         CLR     -(A7)
         PEA     vdw_11(A6)
         PEA     vdw_13(A6)
         CLR.L   -(A7)
         JSR     proc56
         POP.B   D0
         BEQ     ldw_5
         PUSH.L  A3
         _DisposDialog ; (dlg:DialogPtr) 
         MOVE.B  D6,glob246(A5)
         PUSH    #$E6
         JSR     proc65
ldw_7    MOVEM.L (A7)+,D6-D7/A3-A4
         UNLK    A6
         POP.L   (A7)
         RTS     

;-refs -  1/proc98    

data25   DC.W    0

;-refs -  1/proc98    

data26   DC.W    $13A

         QUAL    proc99 ; b# =130  s#1  =proc99

vdx_1     VEQU  -528
vdx_2     VEQU  -272
vdx_3     VEQU  -256
param2    VEQU  8
param1    VEQU  12
         VEND    

;-refs -  4/proc247   

proc99   LINK    A6,#-$210
         MOVEA.L param1(A6),A0
         LEA     vdx_3(A6),A1
         MOVEQ   #63,D0
ldx_1    MOVE.L  (A0)+,(A1)+
         DBRA    D0,ldx_1
ldx_2    PUSH.L  #$800000
         PEA     vdx_2(A6)
         _GetNextEvent ; (mask:EventMask; VAR theEvent:EventRecord):BOOLEAN 
         POP.B   D0
         BEQ.S   ldx_3
         BRA     ldx_2
ldx_3    MOVEA.L param2(A6),A0
         TST     (A0)
         BGT.S   ldx_4
         MOVEA.L param2(A6),A0
         PUSH.L  A0
         CLR     -(A7)
         PEA     vdx_3(A6)
         _OpenResFile ; (fileName:Str255):RefNum 
         POP     D0
         POP.L   A0
         MOVE    D0,(A0)
         MOVEA.L param2(A6),A0
         TST     (A0)
         BGE.S   ldx_4
         PEA     data28
         PEA     vdx_3(A6)
         PEA     data27
         PEA     vdx_1(A6)
         PUSH    #3
         JSR     proc76
         PEA     vdx_1(A6)
         JSR     proc92
ldx_4    UNLK    A6
         POP.L   A0
         ADDQ    #8,A7
         JMP     (A0)

;-refs -  1/proc99    

data27   STR     '' not found.'

;-refs -  1/proc99    

data28   DC.W    $127

         QUAL    proc100 ; b# =133  s#1  =proc100

vdy_1     VEQU  -528
vdy_2     VEQU  -272
vdy_3     VEQU  -256
param2    VEQU  8
param1    VEQU  12
         VEND    

;-refs -  1/proc113    5/proc258   

proc100  LINK    A6,#-$210
         PUSH.L  A4
         MOVEA.L param1(A6),A0
         LEA     vdy_3(A6),A1
         MOVEQ   #63,D0
ldy_1    MOVE.L  (A0)+,(A1)+
         DBRA    D0,ldy_1
         MOVEA.L param2(A6),A4
ldy_2    PUSH.L  #$800000
         PEA     vdy_2(A6)
         _GetNextEvent ; (mask:EventMask; VAR theEvent:EventRecord):BOOLEAN 
         POP.B   D0
         BEQ.S   ldy_3
         BRA     ldy_2
ldy_3    TST     (A4)
         BGT     ldy_5
         CLR     -(A7)
         PEA     vdy_3(A6)
         _OpenResFile ; (fileName:Str255):RefNum 
         POP     (A4)
         TST     (A4)
         BGE.S   ldy_4
         CLR     -(A7)
         PEA     data32
         PEA     data31
         PEA     vdy_3(A6)
         PEA     vdy_1(A6)
         PUSH    #3
         JSR     proc76
         PEA     vdy_1(A6)
         _OpenResFile ; (fileName:Str255):RefNum 
         POP     (A4)
ldy_4    TST     (A4)
         BGE.S   ldy_5
         PEA     data32
         JSR     proc98
         CLR     -(A7)
         PEA     data32
         PEA     data31
         PEA     vdy_3(A6)
         PEA     vdy_1(A6)
         PUSH    #3
         JSR     proc76
         PEA     vdy_1(A6)
         _OpenResFile ; (fileName:Str255):RefNum 
         POP     (A4)
         TST     (A4)
         BGE.S   ldy_5
         PEA     data30
         PEA     vdy_3(A6)
         PEA     data29
         PEA     vdy_1(A6)
         PUSH    #3
         JSR     proc76
         PEA     vdy_1(A6)
         JSR     proc92
ldy_5    POP.L   A4
         UNLK    A6
         POP.L   A0
         ADDQ    #8,A7
         JMP     (A0)

;-refs -  1/proc100   

data29   STR     '' not found.'

;-refs -  1/proc100   

data30   DC.W    $127

;-refs -  1/proc100   

data31   DC.W    $13A

;-refs -  1/proc100   

data32   STR     'BDC 2'

         QUAL    proc101 ; b# =138  s#1  =proc101


proc101  LINK    A6,#0
         LEA     glob269(A5),A0
         CMPA.L  glob253(A5),A0
         BNE.S   ldz_1
         PEA     glob260(A5)
         _SetPBits ; (bm:BitMap) 
         BRA.S   ldz_2
ldz_1    PEA     glob258(A5)
         _SetPBits ; (bm:BitMap) 
ldz_2    PEA     glob148(A5)
         _PaintRect ; (r:Rect) 
         PUSH.L  #$13100D7
         _MoveTo ; (h,v:INTEGER) 
         PEA     glob198(A5)
         _DrawString ; (s:Str255) 
         SUBQ    #1,glob199(A5)
         UNLK    A6
         RTS     

         QUAL    proc102 ; b# =139  s#1  =proc102


proc102  LINK    A6,#0
         LEA     glob269(A5),A0
         CMPA.L  glob253(A5),A0
         BNE.S   lea_1
         PEA     glob260(A5)
         _SetPBits ; (bm:BitMap) 
         BRA.S   lea_2
lea_1    PEA     glob258(A5)
         _SetPBits ; (bm:BitMap) 
lea_2    PEA     glob147(A5)
         _PaintRect ; (r:Rect) 
         PUSH.L  #$14100ED
         _MoveTo ; (h,v:INTEGER) 
         PEA     glob220(A5)
         _DrawString ; (s:Str255) 
         SUBQ    #1,glob219(A5)
         UNLK    A6
         RTS     

         QUAL    proc103 ; b# =140  s#1  =proc103

veb_1     VEQU  -816
veb_2     VEQU  -560
veb_3     VEQU  -304
veb_4     VEQU  -300
veb_5     VEQU  -39
veb_6     VEQU  -18
veb_7     VEQU  -14
veb_8     VEQU  -12
param2    VEQU  8
param1    VEQU  10
         VEND    

;-refs -  3/proc222   

proc103  LINK    A6,#-$330
         MOVEM.L D4-D7/A3-A4,-(A7)
         MOVEA.L param1(A6),A3
         MOVEA.L (A3),A4
         MOVE.L  A4,D0
         SNE     D0
         TST.B   D0
         BEQ.S   leb_1
         TST.L   (A4)
         SNE     D1
         AND.B   D1,D0
         BEQ.S   leb_1
         PUSH.L  A4
         JSR     proc31
         PUSH.L  A4
         JSR     HLock
         MOVE.L  (A4),(A3)
         BRA     leb_21
leb_1    CLR.L   -(A7)
         PUSH.L  data42
         PUSH    param2(A6)
         _GetResource ; (theType:ResType; ID:INTEGER):Handle 
         POP.L   D7
         SNE     D0
         NEG.B   D0
         MOVE.B  D0,veb_5(A6)
         BNE.S   leb_2
         CLR.L   -(A7)
         PUSH.L  data41
         PUSH    param2(A6)
         _GetResource ; (theType:ResType; ID:INTEGER):Handle 
         POP.L   D7
leb_2    TST.L   D7
         BEQ     leb_20
         PUSH.L  D7
         JSR     HNoPurge
         MOVEA.L D7,A0
         MOVEA.L (A0),A0
         MOVE.L  A0,veb_3(A6)
         MOVE    (A0),D0
         EXT.L   D0
         DIVS    #$3E8,D0
         SWAP    D0
         TST     D0
         BMI.S   leb_5
         CMPI    #9,D0
         BGT.S   leb_5
         ADD     D0,D0
         MOVE    data33(D0.W),D0
         JMP     data33-2(D0.W)
         JBIAS  2
;-refs -  1/proc103   

data33   JUMP    leb_3
         JUMP    leb_4
         JUMP    leb_4
         JUMP    leb_3
         JUMP    leb_4
         JUMP    leb_4
         JUMP    leb_4
         JUMP    leb_4
         JUMP    leb_4
         JUMP    leb_3

leb_3    MOVEA.L veb_3(A6),A0
         MOVEA.L veb_3(A6),A1
         MOVE    2(A1),D0
         MULS    8(A0),D0
         ASL     #1,D0
         MOVE    D0,D5
         ADD     #14,D5
         BRA.S   leb_5
leb_4    MOVEA.L veb_3(A6),A0
         MOVEA.L veb_3(A6),A1
         MOVE    2(A1),D0
         MULS    8(A0),D0
         MOVE    D0,D5
         ADD     #14,D5
leb_5    MOVE.L  A4,D0
         BNE.S   leb_6
         CLR.L   -(A7)
         MOVE    D5,D0
         ADDQ    #2,D0
         EXT.L   D0
         PUSH.L  D0
         JSR     NewHandle
         POP.L   A4
         BRA.S   leb_7
leb_6    PUSH.L  A4
         MOVE    D5,D0
         ADDQ    #2,D0
         EXT.L   D0
         PUSH.L  D0
         JSR     ReAllocHandle
leb_7    MOVE.L  A4,D0
         SEQ     D0
         TST.B   D0
         BNE.S   leb_8
         TST.L   (A4)
         SEQ     D1
         OR.B    D1,D0
         BEQ.S   leb_9
leb_8    PEA     data40
         PEA     veb_2(A6)
         PUSH    param2(A6)
         JSR     proc96
         PEA     veb_4(A6)
         PUSH    #2
         JSR     proc76
         PEA     veb_4(A6)
         JSR     proc92
leb_9    PUSH.L  A4
         JSR     proc31
         PUSH.L  A4
         JSR     HLock
         MOVE.L  (A4),(A3)
         MOVEA.L D7,A0
         MOVEA.L (A0),A0
         MOVEA.L (A3),A1
         MOVE.L  (A0)+,(A1)+
         MOVE.L  (A0)+,(A1)+
         MOVE.L  (A0)+,(A1)+
         MOVE.L  (A0)+,(A1)+
         MOVEA.L (A3),A0
         LEA     14(A0),A0
         MOVE.L  A0,veb_6(A6)
         MOVEA.L (A3),A0
         MOVE    4(A0),D0
         ASL     #1,D0
         MOVE    D0,veb_7(A6)
         MOVEA.L (A3),A0
         MOVE    (A0),D0
         EXT.L   D0
         DIVS    #$3E8,D0
         SWAP    D0
         TST     D0
         BMI.S   leb_12
         CMPI    #9,D0
         BGT.S   leb_12
         ADD     D0,D0
         MOVE    data34(D0.W),D0
         JMP     data34-2(D0.W)
         JBIAS  2
;-refs -  1/proc103   

data34   JUMP    leb_10
         JUMP    leb_11
         JUMP    leb_11
         JUMP    leb_10
         JUMP    leb_11
         JUMP    leb_11
         JUMP    leb_11
         JUMP    leb_11
         JUMP    leb_11
         JUMP    leb_10

leb_10   PEA     veb_8(A6)
         CLR.L   -(A7)
         MOVEA.L (A3),A0
         MOVE    4(A0),D0
         ASL     #4,D0
         PUSH    D0
         MOVEA.L (A3),A0
         MOVEA.L (A3),A1
         MOVE    2(A1),D0
         MULS    6(A0),D0
         ASL     #1,D0
         PUSH    D0
         _SetRect ; (VAR r:Rect; left,top,right,bottom:INTEGER) 
         BRA.S   leb_12
leb_11   PEA     veb_8(A6)
         CLR.L   -(A7)
         MOVEA.L (A3),A0
         MOVE    4(A0),D0
         ASL     #4,D0
         PUSH    D0
         MOVEA.L (A3),A0
         MOVEA.L (A3),A1
         MOVE    2(A1),D0
         MULS    6(A0),D0
         PUSH    D0
         _SetRect ; (VAR r:Rect; left,top,right,bottom:INTEGER) 
leb_12   MOVE.B  veb_5(A6),D0
         BEQ.S   leb_15
         MOVEA.L (A3),A0
         MOVEQ   #5,D0
         CMP.W   (A0),D0
         SEQ     D0
         MOVEA.L (A3),A0
         CMPI    #$3E8,(A0)
         SGE     D1
         OR.B    D1,D0
         BEQ.S   leb_13
         PUSH.L  veb_6(A6)
         MOVEA.L D7,A0
         MOVEA.L (A0),A0
         PEA     14(A0)
         JSR     proc205(A5)
         BRA.S   leb_14
leb_13   MOVEA.L D7,A0
         MOVEA.L (A0),A0
         PEA     14(A0)
         PUSH.L  veb_6(A6)
         CLR.L   -(A7)
         PUSH.L  D7
         _SizeRsrc ; (theResource:Handle):HLongInt 
         POP.L   D0
         MOVEQ   #14,D1
         SUB.L   D1,D0
         PUSH    D0
         MOVE    D5,D0
         SUB     #14,D0
         PUSH    D0
         JSR     proc204(A5)
leb_14   BRA     leb_19
leb_15   MOVEA.L D7,A0
         MOVEA.L (A0),A0
         MOVE    14(A0),D4
         PEA     glob156(A5)
         _InitPort ; (port:GrafPtr) 
         PEA     veb_6(A6)
         _SetPBits ; (bm:BitMap) 
         PUSH.L  glob157(A5)
         PEA     veb_8(A6)
         _RectRgn ; (rgn:RgnHandle; r:Rect) 
         CLR.L   -(A7)
         PUSH.L  data39
         PUSH    D4
         _GetResource ; (theType:ResType; ID:INTEGER):Handle 
         POP.L   D6
         BNE.S   leb_17
         CLR.L   -(A7)
         PUSH.L  data38
         PUSH    D4
         _GetResource ; (theType:ResType; ID:INTEGER):Handle 
         POP.L   D6
         BNE.S   leb_16
         PEA     data37
         PEA     veb_2(A6)
         PUSH    D4
         JSR     proc96
         PEA     data35
         PEA     veb_1(A6)
         CLR     -(A7)
         _ResError ; :OSErr 
         JSR     proc96
         PEA     veb_4(A6)
         PUSH    #4
         JSR     proc76
         PEA     veb_4(A6)
         JSR     proc92
         BRA.S   leb_18
leb_16   PUSH.L  veb_6(A6)
         MOVEA.L D6,A0
         PUSH.L  (A0)
         JSR     proc205(A5)
         BRA.S   leb_18
leb_17   PUSH.L  D6
         JSR     HLock
         PEA     veb_8(A6)
         _EraseRect ; (r:Rect) 
         PUSH.L  D6
         PEA     veb_8(A6)
         _DrawPicture ; (myPicture:PicHandle; dstRect:Rect) 
leb_18   PUSH.L  D6
         JSR     HUnLock
         PUSH.L  D6
         JSR     HPurge
         PUSH.L  D6
         JSR     EmptyHandle
leb_19   PUSH.L  D7
         JSR     HPurge
         PUSH.L  D7
         JSR     EmptyHandle
         BRA.S   leb_21
leb_20   PEA     data36
         PEA     veb_2(A6)
         PUSH    param2(A6)
         JSR     proc96
         PEA     data35
         PEA     veb_1(A6)
         CLR     -(A7)
         _ResError ; :OSErr 
         JSR     proc96
         PEA     veb_4(A6)
         PUSH    #4
         JSR     proc76
         PEA     veb_4(A6)
         JSR     proc92
         MOVEQ   #0,D0
         MOVE.L  D0,(A3)
leb_21   MOVEM.L (A7)+,D4-D7/A3-A4
         UNLK    A6
         POP.L   A0
         ADDQ    #6,A7
         JMP     (A0)

;-refs -  1/proc103   

data35   DC.W    $12F

;-refs -  1/proc103   

data36   STR     'INFD:'

;-refs -  1/proc103   

data37   STR     'PNFD:'

;-refs -  1/proc103   

data38   DC.B    'PSCR'

;-refs -  1/proc103   

data39   DC.B    'PICT'

;-refs -  1/proc103   

data40   STR     'IMEM:'

;-refs -  1/proc103   

data41   DC.B    'IMAG'

;-refs -  1/proc103   

data42   DC.B    'PPCT'

         QUAL    proc104 ; b# =151  s#1  =proc104

param1    VEQU  8
         VEND    

;-refs -  3/proc223    3/proc225   

proc104  LINK    A6,#0
         PUSH.L  A4
         MOVEA.L param1(A6),A4
         TST.L   (A4)
         BEQ.S   lec_1
         CLR.L   -(A7)
         PUSH.L  (A4)
         JSR     RecoverHandle
         POP.L   (A4)
         PUSH.L  (A4)
         JSR     HUnLock
         PUSH.L  (A4)
         JSR     HPurge
lec_1    POP.L   A4
         UNLK    A6
         POP.L   (A7)
         RTS     

         QUAL    proc105 ; b# =152  s#1  =proc105

ved_1     VEQU  -806
ved_2     VEQU  -550
ved_3     VEQU  -294
ved_4     VEQU  -38
param1    VEQU  8
         VEND    

;-refs -  5/proc258    5/proc268    8/proc330   
;-        9/proc336   10/proc341   11/proc351   
;-       12/proc355   14/proc361   15/proc370   
;-       16/proc376   18/proc386   20/proc394   
;-       21/proc396   22/proc397   23/proc398   
;-       24/proc399   25/proc402   

proc105  LINK    A6,#-$326
         MOVEM.L D6-D7/A3-A4,-(A7)
         MOVE    param1(A6),D6
         PEA     glob156(A5)
         _InitPort ; (port:GrafPtr) 
         MOVE.B  glob245(A5),D0
         BNE.S   led_1
         JSR     proc82
led_1    JSR     proc93
         PEA     glob260(A5)
         _SetPBits ; (bm:BitMap) 
         CLR.L   -(A7)
         PUSH.L  data44
         PUSH    D6
         _GetResource ; (theType:ResType; ID:INTEGER):Handle 
         POP.L   A3
         MOVE.L  A3,D0
         BNE.S   led_3
         CLR.L   -(A7)
         PUSH.L  data43
         PUSH    D6
         _GetResource ; (theType:ResType; ID:INTEGER):Handle 
         POP.L   A3
         MOVE.L  A3,D0
         BNE.S   led_2
         PEA     data47
         PEA     ved_2(A6)
         PUSH    D6
         JSR     proc96
         PEA     data46
         PEA     ved_1(A6)
         CLR     -(A7)
         _ResError ; :OSErr 
         JSR     proc96
         PEA     ved_3(A6)
         PUSH    #4
         JSR     proc76
         PEA     ved_3(A6)
         JSR     proc92
led_2    PUSH.L  A3
         JSR     HLock
         PUSH.L  A3
         PEA     glob261(A5)
         _DrawPicture ; (myPicture:PicHandle; dstRect:Rect) 
         BRA.S   led_4
led_3    PUSH.L  glob260(A5)
         PUSH.L  (A3)
         JSR     proc205(A5)
led_4    PUSH.L  A3
         JSR     HPurge
         PUSH.L  A3
         JSR     HUnLock
         CMPI    #$2710,D6
         BGT.S   led_6
         CLR.L   -(A7)
         PUSH.L  data43
         PUSH    #$3E80
         _GetResource ; (theType:ResType; ID:INTEGER):Handle 
         POP.L   D7
         BNE.S   led_5
         PEA     data45
         JSR     proc92
led_5    PUSH.L  D7
         JSR     HLock
         PEA     ved_4(A6)
         PUSH.L  #$1250000
         PUSH.L  #$1560200
         _SetRect ; (VAR r:Rect; left,top,right,bottom:INTEGER) 
         PUSH.L  D7
         PEA     ved_4(A6)
         _DrawPicture ; (myPicture:PicHandle; dstRect:Rect) 
         PUSH.L  D7
         JSR     HUnLock
led_6    PEA     glob256(A5)
         _SetPBits ; (bm:BitMap) 
         CLR.L   -(A7)
         PUSH.L  data44
         MOVE    D6,D0
         ADDQ    #2,D0
         PUSH    D0
         _GetResource ; (theType:ResType; ID:INTEGER):Handle 
         POP.L   A4
         MOVE.L  A4,D0
         BNE.S   led_8
         CLR.L   -(A7)
         PUSH.L  data43
         MOVE    D6,D0
         ADDQ    #2,D0
         PUSH    D0
         _GetResource ; (theType:ResType; ID:INTEGER):Handle 
         POP.L   A4
         MOVE.L  A4,D0
         BNE.S   led_7
         PEA     glob257(A5)
         _PaintRect ; (r:Rect) 
         BRA.S   led_9
led_7    PUSH.L  A4
         JSR     HLock
         PUSH.L  A4
         PEA     glob257(A5)
         _DrawPicture ; (myPicture:PicHandle; dstRect:Rect) 
         BRA.S   led_9
led_8    PUSH.L  glob256(A5)
         PUSH.L  (A4)
         JSR     proc205(A5)
led_9    MOVE.L  A4,D0
         BEQ.S   led_10
         PUSH.L  A4
         JSR     HUnLock
         PUSH.L  A4
         JSR     HPurge
led_10   PEA     ved_4(A6)
         _EraseRect ; (r:Rect) 
         CLR     glob274(A5)
         CLR     glob275(A5)
         MOVE.B  glob254(A5),D0
         BEQ.S   led_11
         CLR     glob267(A5)
         CLR     glob268(A5)
led_11   MOVEM.L (A7)+,D6-D7/A3-A4
         UNLK    A6
         POP.L   A0
         ADDQ    #2,A7
         JMP     (A0)

;-refs -  1/proc105   

data43   DC.B    'PICT'

;-refs -  1/proc105   

data44   DC.B    'PSCR'

;-refs -  1/proc105   

data45   STR     'STNF'

;-refs -  1/proc105   

data46   DC.W    $12F

;-refs -  1/proc105   

data47   STR     'SNFD:'

         QUAL    proc106 ; b# =158  s#1  =proc106

vee_1     VEQU  -778
vee_2     VEQU  -776
vee_3     VEQU  -520
vee_4     VEQU  -264
param1    VEQU  8
         VEND    

;-refs -  1/proc113    1/proc114    5/proc258   
;-        5/proc268    8/proc330    9/proc336   
;-       10/proc341   11/proc351   12/proc355   
;-       14/proc361   15/proc370   16/proc376   
;-       18/proc386   20/proc394   21/proc396   
;-       22/proc397   23/proc398   24/proc399   
;-       25/proc402   

proc106  LINK    A6,#-$30A
         MOVEM.L D6-D7/A4,-(A7)
         CLR.L   -(A7)
         PUSH.L  data51
         PUSH    param1(A6)
         _GetResource ; (theType:ResType; ID:INTEGER):Handle 
         POP.L   A4
         MOVE.L  A4,D0
         BNE.S   lee_1
         PEA     data50
         PEA     vee_3(A6)
         PUSH    param1(A6)
         JSR     proc96
         PEA     data49
         PEA     vee_2(A6)
         CLR     -(A7)
         _ResError ; :OSErr 
         JSR     proc96
         PEA     vee_4(A6)
         PUSH    #4
         JSR     proc76
         PEA     vee_4(A6)
         JSR     proc92
lee_1    PUSH.L  A4
         JSR     HNoPurge
         MOVEA.L (A4),A0
         MOVE    (A0),vee_1(A6)
         MOVEQ   #1,D6
         BRA.S   lee_7
lee_2    MOVEA.L (A4),A0
         MOVE    D6,D0
         ADD     D0,D0
         MOVE    0(A0,D0.W),D7
         MOVE    D7,D0
         SUBI    #$64,D0
         BMI.S   lee_5
         SUBI    #$383,D0
         BLE.S   lee_3
         SUBI    #$3E9,D0
         BMI.S   lee_5
         SUBI    #$3E7,D0
         BLE.S   lee_4
         BRA.S   lee_5
lee_3    PUSH    D7
         JSR     proc222(A5)
         BRA.S   lee_6
lee_4    PUSH    D7
         JSR     proc224(A5)
         BRA.S   lee_6
lee_5    PEA     data48
         PEA     vee_3(A6)
         PUSH    D7
         JSR     proc96
         PEA     vee_4(A6)
         PUSH    #2
         JSR     proc76
         PEA     vee_4(A6)
         JSR     proc92
lee_6    ADDQ    #1,D6
         BVS.S   lee_8
lee_7    CMP.W   vee_1(A6),D6
         BLE     lee_2
lee_8    MOVEM.L (A7)+,D6-D7/A4
         UNLK    A6
         POP.L   A0
         ADDQ    #2,A7
         JMP     (A0)

;-refs -  1/proc106   

data48   STR     'IDOR:'

;-refs -  1/proc106   

data49   DC.W    $12F

;-refs -  1/proc106   

data50   STR     'ILNF:'

;-refs -  1/proc106   

data51   DC.B    'ILST'

         QUAL    proc107 ; b# =163  s#1  =proc107

vef_1     VEQU  -778
vef_2     VEQU  -776
vef_3     VEQU  -520
vef_4     VEQU  -264
param1    VEQU  8
         VEND    

;-refs -  1/proc113    1/proc114    5/proc258   
;-        5/proc268    5/proc294    5/proc299   
;-        8/proc330    9/proc336   10/proc341   
;-       11/proc351   12/proc355   14/proc361   
;-       15/proc370   16/proc376   18/proc386   
;-       20/proc394   21/proc396   22/proc397   
;-       23/proc398   24/proc399   25/proc402   

proc107  LINK    A6,#-$30A
         MOVEM.L D6-D7/A4,-(A7)
         CLR.L   -(A7)
         PUSH.L  data55
         PUSH    param1(A6)
         _GetResource ; (theType:ResType; ID:INTEGER):Handle 
         POP.L   A4
         MOVE.L  A4,D0
         BNE.S   lef_1
         PEA     data54
         PEA     vef_3(A6)
         PUSH    param1(A6)
         JSR     proc96
         PEA     data53
         PEA     vef_2(A6)
         CLR     -(A7)
         _ResError ; :OSErr 
         JSR     proc96
         PEA     vef_4(A6)
         PUSH    #4
         JSR     proc76
         PEA     vef_4(A6)
         JSR     proc92
lef_1    MOVEA.L (A4),A0
         MOVE    (A0),vef_1(A6)
         MOVEQ   #1,D6
         BRA.S   lef_7
lef_2    MOVEA.L (A4),A0
         MOVE    D6,D0
         ADD     D0,D0
         MOVE    0(A0,D0.W),D7
         MOVE    D7,D0
         SUBI    #$64,D0
         BMI.S   lef_5
         SUBI    #$383,D0
         BLE.S   lef_3
         SUBI    #$3E9,D0
         BMI.S   lef_5
         SUBI    #$3E7,D0
         BLE.S   lef_4
         BRA.S   lef_5
lef_3    PUSH    D7
         JSR     proc223(A5)
         BRA.S   lef_6
lef_4    PUSH    D7
         JSR     proc225(A5)
         BRA.S   lef_6
lef_5    PEA     data52
         PEA     vef_3(A6)
         PUSH    D7
         JSR     proc96
         PEA     vef_4(A6)
         PUSH    #2
         JSR     proc76
         PEA     vef_4(A6)
         JSR     proc92
lef_6    ADDQ    #1,D6
         BVS.S   lef_8
lef_7    CMP.W   vef_1(A6),D6
         BLE     lef_2
lef_8    PUSH.L  A4
         JSR     HPurge
         MOVEM.L (A7)+,D6-D7/A4
         UNLK    A6
         POP.L   A0
         ADDQ    #2,A7
         JMP     (A0)

;-refs -  1/proc107   

data52   STR     'IDOR:'

;-refs -  1/proc107   

data53   DC.W    $12F

;-refs -  1/proc107   

data54   STR     'ILNF:'

;-refs -  1/proc107   

data55   DC.B    'ILST'

         QUAL    proc108 ; b# =168  s#1  =proc108

veg_1     VEQU  -520
veg_2     VEQU  -264
param2    VEQU  8
param1    VEQU  10
         VEND    

;-refs -  3/proc224   

proc108  LINK    A6,#-$208
         MOVEM.L D6-D7/A3-A4,-(A7)
         MOVE.L  param1(A6),D7
         MOVE    param2(A6),D6
         MOVEA.L D7,A0
         MOVEA.L (A0),A4
         MOVE.L  A4,D0
         SNE     D0
         TST.B   D0
         BEQ.S   leg_1
         TST.L   (A4)
         SNE     D1
         AND.B   D1,D0
         BEQ.S   leg_1
         PUSH.L  A4
         JSR     proc31
         PUSH.L  A4
         JSR     HLock
         MOVEA.L D7,A0
         MOVE.L  (A4),(A0)
         BRA     leg_7
leg_1    CLR.L   -(A7)
         PUSH.L  data58
         PUSH    D6
         _GetResource ; (theType:ResType; ID:INTEGER):Handle 
         POP.L   A3
         MOVE.L  A3,D0
         BNE.S   leg_2
         PEA     data57
         PEA     veg_1(A6)
         PUSH    D6
         JSR     proc96
         PEA     veg_2(A6)
         PUSH    #2
         JSR     proc76
         PEA     veg_2(A6)
         JSR     proc92
leg_2    PUSH.L  A3
         JSR     HNoPurge
         MOVE.L  A4,D0
         BNE.S   leg_3
         CLR.L   -(A7)
         PUSH.L  #$780
         JSR     NewHandle
         POP.L   A4
         BRA.S   leg_4
leg_3    PUSH.L  A4
         PUSH.L  #$780
         JSR     ReAllocHandle
leg_4    MOVE.L  A4,D0
         SEQ     D0
         TST.B   D0
         BNE.S   leg_5
         TST.L   (A4)
         SEQ     D1
         OR.B    D1,D0
         BEQ.S   leg_6
leg_5    PEA     data56
         PEA     veg_1(A6)
         PUSH    D6
         JSR     proc96
         PEA     veg_2(A6)
         PUSH    #2
         JSR     proc76
         PEA     veg_2(A6)
         JSR     proc92
leg_6    PUSH.L  A4
         JSR     proc31
         PUSH.L  A4
         JSR     HLock
         MOVEA.L D7,A0
         MOVE.L  (A4),(A0)
         PUSH.L  (A4)
         PUSH.L  (A3)
         JSR     proc205(A5)
         PUSH.L  A3
         JSR     HPurge
leg_7    MOVEM.L (A7)+,D6-D7/A3-A4
         UNLK    A6
         POP.L   A0
         ADDQ    #6,A7
         JMP     (A0)

;-refs -  1/proc108   

data56   STR     'BMEM:'

;-refs -  1/proc108   

data57   STR     'BKNF:'

;-refs -  1/proc108   

data58   DC.B    'PBLK'

         QUAL    proc109 ; b# =172  s#1  =proc109

veh_1     VEQU  -780
veh_2     VEQU  -524
veh_3     VEQU  -268
veh_4     VEQU  -12
veh_5     VEQU  -10
param3    VEQU  8
param2    VEQU  10
param1    VEQU  12
         VEND    

;-refs - 11/proc351   15/proc370   18/proc386   

proc109  LINK    A6,#-$30C
         PUSH.L  A4
         PEA     glob260(A5)
         _SetPBits ; (bm:BitMap) 
         CLR.L   -(A7)
         PUSH.L  data61
         PUSH    param1(A6)
         _GetResource ; (theType:ResType; ID:INTEGER):Handle 
         POP.L   A4
         MOVE.L  A4,D0
         BNE.S   leh_1
         PEA     data60
         PEA     veh_2(A6)
         PUSH    param1(A6)
         JSR     proc96
         PEA     data59
         PEA     veh_1(A6)
         CLR     -(A7)
         _ResError ; :OSErr 
         JSR     proc96
         PEA     veh_3(A6)
         PUSH    #4
         JSR     proc76
         PEA     veh_3(A6)
         JSR     proc92
leh_1    PUSH.L  A4
         JSR     HLock
         MOVEA.L (A4),A0
         LEA     veh_4(A6),A1
         ADDQ.L  #2,A0
         MOVE.L  (A0)+,(A1)+
         MOVE.L  (A0)+,(A1)+
         PEA     veh_4(A6)
         MOVE    param2(A6),D0
         SUB     veh_5(A6),D0
         PUSH    D0
         MOVE    param3(A6),D0
         SUB     veh_4(A6),D0
         PUSH    D0
         _OffSetRect ; (VAR r:Rect; dh,dv:INTEGER) 
         PUSH.L  A4
         PEA     veh_4(A6)
         _DrawPicture ; (myPicture:PicHandle; dstRect:Rect) 
         PUSH.L  A4
         JSR     HPurge
         PUSH.L  A4
         JSR     HUnLock
         POP.L   A4
         UNLK    A6
         POP.L   A0
         ADDQ    #6,A7
         JMP     (A0)

;-refs -  1/proc109   

data59   DC.W    $12F

;-refs -  1/proc109   

data60   STR     'PNFD:'

;-refs -  1/proc109   

data61   DC.B    'PICT'

         QUAL    proc110 ; b# =176  s#1  =proc110

param1    VEQU  8
         VEND    

;-refs -  3/proc158    5/proc272    5/proc273   

proc110  LINK    A6,#0
         PUSH.L  param1(A6)
         MOVEA.L glob128(A5),A0
         PEA     2(A0)
         MOVEA.L param1(A6),A0
         PEA     6(A0)
         MOVEA.L param1(A6),A0
         PEA     6(A0)
         CLR     -(A7)
         CLR.L   -(A7)
         _CopyBits ; (srcBits,dstBits:BitMap; srcRect,dstRect:Rect; mode:INTEGER{|XferMode}; maskRgn:RgnHandle) 
         UNLK    A6
         POP.L   (A7)
         RTS     

         QUAL    proc111 ; b# =177  s#1  =proc111

param1    VEQU  8
         VEND    

;-refs -  5/proc294    5/proc299   

proc111  LINK    A6,#0
         MOVEA.L glob128(A5),A0
         PEA     2(A0)
         PUSH.L  param1(A6)
         MOVEA.L param1(A6),A0
         PEA     6(A0)
         MOVEA.L param1(A6),A0
         PEA     6(A0)
         CLR     -(A7)
         CLR.L   -(A7)
         _CopyBits ; (srcBits,dstBits:BitMap; srcRect,dstRect:Rect; mode:INTEGER{|XferMode}; maskRgn:RgnHandle) 
         UNLK    A6
         POP.L   (A7)
         RTS     

         QUAL    proc112 ; b# =178  s#1  =proc112

param1    VEQU  12
         VEND    

;-refs -  1/proc113    5/proc258   

proc112  LINK    A6,#-4
         PUSH.L  A4
         CLR     -(A7)
         _SetResLoad ; (AutoLoad:BOOLEAN) 
         CLR.L   -(A7)
         PUSH.L  data62
         PUSH    param1(A6)
         _GetResource ; (theType:ResType; ID:INTEGER):Handle 
         POP.L   A4
         MOVE.L  A4,D0
         BEQ.S   lek_1
         PUSH.L  A4
         JSR     EmptyHandle
lek_1    PUSH.B  #1
         _SetResLoad ; (AutoLoad:BOOLEAN) 
         CLR.L   -(A7)
         PUSH.L  data62
         PUSH    param1(A6)
         _GetResource ; (theType:ResType; ID:INTEGER):Handle 
         POP.L   A4
         POP.L   A4
         UNLK    A6
         POP.L   A0
         ADDQ    #6,A7
         JMP     (A0)

;-refs -  1/proc112   

data62   DC.B    'GDSK'

         QUAL    proc113 ; b# =180  s#1  =proc113

;-refs -  1/proc114   17/proc379   17/proc381   

proc113  LINK    A6,#0
         MOVE.B  glob254(A5),D0
         BEQ.S   lel_1
         JSR     proc220(A5)
lel_1    PEA     proc268(A5)
         _UnLoadSeg ; (Proc:ProcPtr) 
         CLR     -(A7)
         JSR     proc106
         MOVE.B  glob129(A5),D0
         BEQ.S   lel_2
         PUSH.L  glob128(A5)
         _SelectWindow ; (theWindow:WindowPtr) 
lel_2    MOVE.B  glob151(A5),D0
         BEQ.S   lel_3
         JSR     proc82
         PEA     data63
         PEA     glob144(A5)
         JSR     proc100
         PUSH    #1
         PUSH.L  A6
         JSR     proc112
         BRA.S   lel_4
lel_3    PUSH.L  A6
         JSR     proc258(A5)
lel_4    MOVE.B  glob151(A5),D0
         EORI.B  #1,D0
         MOVE.B  D0,glob245(A5)
         PUSH.L  A6
         JSR     proc257(A5)
         PUSH.L  A6
         JSR     proc255(A5)
         PEA     proc268(A5)
         _UnLoadSeg ; (Proc:ProcPtr) 
         MOVE    #$124,glob244(A5)
         JSR     proc177(A5)
         MOVE    #$155,glob244(A5)
         JSR     proc82
         CLR     -(A7)
         PUSH.L  A6
         JSR     proc112
         PUSH.L  A6
         JSR     proc256(A5)
         CLR     -(A7)
         JSR     proc107
         MOVE.B  glob254(A5),D0
         BEQ.S   lel_5
         JSR     proc221(A5)
lel_5    PUSH.L  #$FFFF
         POP.L   D0
         _FlushEvents ; (whichMask,stopMask:EventMask) 
         UNLK    A6
         POP.L   A0
         ADDQ    #2,A7
         JMP     (A0)

;-refs -  1/proc113   

data63   STR     'BDC Data B'

         QUAL    proc114 ; b# =182  s#1  =proc114

vem_1     VEQU  -30
vem_2     VEQU  -6
vem_3     VEQU  -4
         VEND    

;-refs -  1/code      

proc114  LINK    A6,#-$22
         MOVEM.L D7/A3-A4,-(A7)
         CLR     vem_1(A6)
         CLR.B   D7
         CLR.B   glob195(A5)
         CLR.B   glob169(A5)
lem_1    CLR.L   -(A7)
         PUSH    #$AA
         CLR.L   -(A7)
         CLR.L   -(A7)
         _GetNewDialog ; (DlgID:INTEGER; wStorage:Ptr; behind:WindowPtr):DialogPtr 
         POP.L   vem_3(A6)
         PUSH.L  A6
         JSR     proc291(A5)
         PUSH.L  A6
         JSR     proc276(A5)
         PUSH.L  A6
         JSR     proc275(A5)
         CLR     -(A7)
         PUSH.L  A6
         JSR     proc289(A5)
         POP.B   glob132(A5)
         MOVE.B  glob195(A5),D0
         BEQ.S   lem_3
         MOVEQ   #2,D0
         CMP.W   glob170(A5),D0
         BLE.S   lem_2
         PUSH    #$4269
         JSR     proc106
         BRA.S   lem_4
lem_2    PUSH    #$426A
         JSR     proc106
         BRA.S   lem_4
lem_3    PUSH    #$4268
         JSR     proc106
lem_4    MOVE.B  glob129(A5),D0
         BEQ.S   lem_5
         MOVEA.L glob128(A5),A0
         LEA     8(A0),A4
         PUSH.L  vem_3(A6)
         MOVE    2(A4),D0
         NEG     D0
         MOVEA.L vem_3(A6),A0
         SUB     10(A0),D0
         PUSH    D0
         MOVE    (A4),D0
         NEG     D0
         MOVEA.L vem_3(A6),A0
         SUB     8(A0),D0
         PUSH    D0
         CLR     -(A7)
         _MoveWindow ; (theWindow:WindowPtr; h,v:INTEGER; BringToFront:BOOLEAN) 
lem_5    PUSH.L  vem_3(A6)
         _ShowWindow ; (theWindow:WindowPtr) 
         PUSH.L  vem_3(A6)
         _SelectWindow ; (theWindow:WindowPtr) 
         PUSH.L  A6
         JSR     proc272(A5)
         LEA     glob269(A5),A0
         MOVE.L  A0,glob253(A5)
         JSR     proc85
         PUSH.L  #$4074
         JSR     proc253(A5)
         PUSH.L  A6
         JSR     proc292(A5)
         JSR     proc83
         PUSH.L  vem_3(A6)
         _DrawDialog ; (dlg:DialogPtr) 
         CLR.L   -(A7)
         PUSH.L  #$4E20
         JSR     NewHandle
         POP.L   A3
         MOVE.B  glob195(A5),D0
         BEQ.S   lem_6
         PUSH    #22
         JSR     proc11
         BRA.S   lem_7
lem_6    PUSH    #21
         JSR     proc11
lem_7    PUSH.L  A3
         JSR     DisposHandle
         MOVE.B  glob195(A5),D0
         BEQ.S   lem_10
         PUSH.L  A6
         JSR     proc277(A5)
         PUSH.L  A6
         JSR     proc299(A5)
         MOVE.B  glob195(A5),D0
         BEQ.S   lem_8
         JSR     proc82
         PUSH.L  vem_3(A6)
         _HideWindow ; (theWindow:WindowPtr) 
         PUSH.L  vem_3(A6)
         _DisposDialog ; (dlg:DialogPtr) 
         CLR     glob168(A5)
         PUSH    glob170(A5)
         JSR     proc113
         BRA.S   lem_9
lem_8    JSR     proc82
         PUSH.L  vem_3(A6)
         _HideWindow ; (theWindow:WindowPtr) 
         PUSH.L  vem_3(A6)
         _DisposDialog ; (dlg:DialogPtr) 
lem_9    MOVEQ   #1,D7
         BRA     lem_25
lem_10   _ShowCursor  
         MOVE.B  D7,D0
         BEQ.S   lem_11
         PUSH.L  A6
         JSR     proc293(A5)
         PUSH.L  A6
         JSR     proc281(A5)
         CLR.B   D7
         PUSH.L  A6
         JSR     proc292(A5)
lem_11   PEA     proc269(A5)
         PEA     vem_2(A6)
         _ModalDialog ; (filterProc:ProcPtr; VAR itemHit:INTEGER) 
         MOVE    vem_2(A6),D0
         SUBQ    #4,D0
         BEQ.S   lem_15
         SUBQ    #1,D0
         BEQ.S   lem_17
         SUBI    #21,D0
         BEQ.S   lem_12
         SUBQ    #1,D0
         BEQ.S   lem_13
         SUBQ    #1,D0
         BEQ.S   lem_14
         BRA.S   lem_18
lem_12   CLR     vem_1(A6)
         PUSH.L  A6
         JSR     proc291(A5)
         BRA.S   lem_18
lem_13   MOVE    #1,vem_1(A6)
         PUSH.L  A6
         JSR     proc291(A5)
         BRA.S   lem_18
lem_14   MOVE    #2,vem_1(A6)
         PUSH.L  A6
         JSR     proc291(A5)
         BRA.S   lem_18
lem_15   PUSH.L  A6
         JSR     proc293(A5)
         PUSH.L  A6
         JSR     proc290(A5)
         MOVE.B  glob169(A5),D0
         BNE.S   lem_16
         PUSH.L  A6
         JSR     proc292(A5)
lem_16   BRA.S   lem_18
lem_17   PUSH.L  A6
         JSR     proc293(A5)
         PUSH.L  A6
         JSR     proc288(A5)
         PUSH.L  A6
         JSR     proc292(A5)
lem_18   MOVE    vem_2(A6),D0
         BMI.S   lem_19
         CMP.W   #7,D0
         BGT.S   lem_19
         LEA     code,A0
         MOVE    D0,D1
         LSR     #3,D1
         NEG     D1
         BTST    D0,-1(A0,D1.W)
         EORI.B  #4,CCR
lem_19   SEQ     D0
         OR.B    glob169(A5),D0
         ANDI    #1,D0
         BEQ     lem_11
         _HideCursor  
         PUSH.L  A6
         JSR     proc277(A5)
         MOVE    vem_2(A6),D0
         SUBQ    #1,D0
         BEQ.S   lem_20
         SUBQ    #1,D0
         BEQ.S   lem_22
         SUBQ    #1,D0
         BEQ.S   lem_23
         BRA.S   lem_24
lem_20   PUSH.L  A6
         JSR     proc294(A5)
         MOVE.B  glob151(A5),D0
         BEQ.S   lem_21
         JSR     proc82
lem_21   PUSH.L  vem_3(A6)
         _HideWindow ; (theWindow:WindowPtr) 
         PUSH.L  vem_3(A6)
         _DisposDialog ; (dlg:DialogPtr) 
         CLR     glob168(A5)
         PUSH    vem_1(A6)
         JSR     proc113
         MOVEQ   #1,D7
         BRA.S   lem_24
lem_22   MOVE.B  #1,glob154(A5)
         BRA.S   lem_24
lem_23   PUSH.L  A6
         JSR     proc294(A5)
         PEA     proc268(A5)
         _UnLoadSeg ; (Proc:ProcPtr) 
         PUSH.L  A6
         JSR     proc382(A5)
         JSR     proc82
         PEA     proc382(A5)
         _UnLoadSeg ; (Proc:ProcPtr) 
         CLR.B   D7
lem_24   MOVE.B  glob169(A5),D0
         BEQ.S   lem_25
         JSR     proc12
         JSR     proc254(A5)
         PUSH    #$4268
         JSR     proc107
         MOVE.B  #1,glob151(A5)
         PUSH.L  vem_3(A6)
         _HideWindow ; (theWindow:WindowPtr) 
         PUSH.L  vem_3(A6)
         _DisposDialog ; (dlg:DialogPtr) 
         CLR     glob168(A5)
         PUSH    vem_1(A6)
         JSR     proc113
         CLR.B   D7
         CLR.B   glob169(A5)
lem_25   MOVE.B  glob154(A5),D0
         BEQ     lem_1
         PUSH.L  A6
         JSR     proc293(A5)
         JSR     proc254(A5)
         JSR     proc12
         PUSH    #$4268
         JSR     proc107
         JSR     proc162(A5)
         MOVEM.L (A7)+,D7/A3-A4
         UNLK    A6
         RTS     


data64   DC.W    $E

         QUAL    code ; b# =184  s#1  =proc115

;-refs -  1/proc114   

code     JSR     proc67
         LINK    A6,#0
         POP.L   A6
         JSR     proc68
         PEA     proc247(A5)
         _UnLoadSeg ; (Proc:ProcPtr) 
         JSR     proc30
         JSR     MoreMasters
         JSR     MoreMasters
         JSR     MoreMasters
         JSR     MoreMasters
         JSR     MoreMasters
         JSR     MoreMasters
         JSR     MoreMasters
         JSR     MoreMasters
         JSR     MoreMasters
         JSR     MoreMasters
         JSR     MoreMasters
         JSR     MoreMasters
         JSR     proc247(A5)
         PEA     proc247(A5)
         _UnLoadSeg ; (Proc:ProcPtr) 
         PUSH    #$FFFF
         JSR     proc268(A5)
         CLR.B   glob154(A5)
         JSR     proc114
         MOVE.B  glob153(A5),D0
         BEQ.S   len_1
         JSR     proc90
         BRA.S   len_2
len_1    JSR     proc89
len_2    JSR     %INITHEAP
         JSR     proc70
         RTS     


data65   DC.B    'N^Nu'
