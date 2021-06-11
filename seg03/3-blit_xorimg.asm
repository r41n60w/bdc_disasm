   642:                                 QUAL    proc145 ; b# =297  s#3  =proc145

                                 ;-refs - 13/proc352   

   642: 48E7 FC38      'H..8'  proc145  MOVEM.L D0-D5/A2-A4,-(A7)
   646: 45E9 000E      'E...'           LEA     14(A1),A2
   64A: C4E9 0008      '....'           MULU    8(A1),D2
   64E: D5C2           '..'             ADDA.L  D2,A2
   650: E640           '.@'             ASR     #3,D0
   652: 0240 FFFE      '.@..'           ANDI    #$FFFE,D0
   656: 48C0           'H.'             EXT.L   D0
   658: 2868 0002      '(h..'           MOVEA.L 2(A0),A4
   65C: 3801           '8.'             MOVE    D1,D4
   65E: C8D0           '..'             MULU    (A0),D4
   660: D9C4           '..'             ADDA.L  D4,A4
   662: D9C0           '..'             ADDA.L  D0,A4
   664: 3229 0004      '2)..'           MOVE    4(A1),D1
   668: E241           '.A'             ASR     #1,D1
   66A: 5341           'SA'             SUBQ    #1,D1
   66C: 48C1           'H.'             EXT.L   D1
   66E: 3429 0006      '4)..'           MOVE    6(A1),D2
   672: 5342           'SB'             SUBQ    #1,D2
   674: 48C2           'H.'             EXT.L   D2
   676: 3A10           ':.'             MOVE    (A0),D5
   678: E541           '.A'             ASL     #2,D1
   67A: 9A41           '.A'             SUB     D1,D5
   67C: 5945           'YE'             SUBQ    #4,D5
   67E: 48C5           'H.'             EXT.L   D5
   680: E441           '.A'             ASR     #2,D1
   682: 2601           '&.'    lgt_1    MOVE.L  D1,D3
   684: 201A           ' .'    lgt_2    MOVE.L  (A2)+,D0
   686: B19C           '..'             EOR.L   D0,(A4)+
   688: 51CB FFFA      3000684          DBRA    D3,lgt_2
   68C: D9C5           '..'             ADDA.L  D5,A4
   68E: 51CA FFF2      3000682          DBRA    D2,lgt_1
   692: 4CDF 1C3F      'L..?'           MOVEM.L (A7)+,D0-D5/A2-A4
   696: 4E75           'Nu'             RTS     
