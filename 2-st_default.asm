; vi: syntax=asm68k

         QUAL    proc132 ; b# =241  s#2  =proc132

;-refs -  2/com_17     2/com_24     2/proc139   
;-        2/data112    6/proc302    6/proc304   
;-        6/proc306    7/proc310    8/proc320   
;-        8/proc325    8/proc326    9/proc335   
;-       11/proc345   13/proc356   15/proc362   

proc132  BTST    #2,20(A6)
         BEQ.S   lfj_2
         BTST    #4,21(A6)
         BEQ.S   lfj_1
         BCLR    #3,20(A6)
         BRA.S   lfj_2
lfj_1    JSR     proc141
lfj_2    BTST    #4,21(A6)
         BEQ.S   com_11
         BTST    #3,20(A6)
         BEQ     com_12
         MOVE    #1,D2
         BTST    #1,20(A6)
         BEQ     com_13
         TST     glob217(A5)
         BEQ     com_13
         TST.B   glob216(A5)
         BNE     com_13
         SUBQ    #1,glob217(A5)
         BCLR    #1,20(A6)
         MOVEM   D0-D1/D4,-(A7)
         MOVEA.L A2,A0
         ADDA.W  D4,A0
         TST     30(A6)
         BGE.S   lfj_3
         SUBI    #10,D0
         BRA.S   lfj_4
lfj_3    ADDI    #10,D0
lfj_4    MOVE    D4,D2
         MOVE    6(A6),D3
         JSR     proc196(A5)
         MOVEM   (A7)+,D0-D1/D4
         MOVE    #2,D2
         BRA     com_13
