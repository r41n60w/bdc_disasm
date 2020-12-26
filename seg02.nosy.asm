; vi: syntax=asm68k

  12D8:                                 Segment  2

     0:                                 QUAL    proc116 ; b# =186  s#2  =proc116

                                 ;-refs -  2/com_27     2/com_28     2/data112   
                                 ;-        6/proc303    6/proc305   

     0: 4EBA 20CC      20020CE proc116  JSR     proc139
     4: 266E 0030      '&n.0'           MOVEA.L 48(A6),A3
     8: 161B           '..'             MOVE.B  (A3)+,D3
     A: 4883           'H.'             EXT     D3
     C: D043           '.C'             ADD     D3,D0
     E: 161B           '..'             MOVE.B  (A3)+,D3
    10: 4883           'H.'             EXT     D3
    12: D243           '.C'             ADD     D3,D1
    14: 161B           '..'             MOVE.B  (A3)+,D3
    16: 4883           'H.'             EXT     D3
    18: 6C08           2000022          BGE.S   leo_1
    1A: 4443           'DC'             NEG     D3
    1C: 4EBA 0502      2000520          JSR     proc122
    20: 6008           200002A          BRA.S   leo_2
    22: 286E 0016      '(n..'  leo_1    MOVEA.L 22(A6),A4
    26: 2274 305C      '"t0\'           MOVEA.L 92(A4,D3.W),A1
    2A: 141B           '..'    leo_2    MOVE.B  (A3)+,D2
    2C: 4882           'H.'             EXT     D2
    2E: 6C22           2000052          BGE.S   leo_4
    30: 0C42 FFFE      '.B..'           CMPI    #-2,D2
    34: 6612           2000048          BNE.S   leo_3
    36: 3D40 000C      '=@..'           MOVE    D0,12(A6)
    3A: 3D41 000E      '=A..'           MOVE    D1,14(A6)
    3E: 47FA 00B5      20000F5          LEA     data69,A3   ; len= 250
    42: 2D4B 0030      '-K.0'           MOVE.L  A3,48(A6)
    46: 60B8           2000000          BRA     proc116
    48: 3A04           ':.'    leo_3    MOVE    D4,D5
    4A: 4EBA 09B0      20009FC          JSR     proc125
    4E: 4EFA 2DF6      2002E46          JMP     proc142
    52: 206D FFA0         -$60 leo_4    MOVEA.L glob253(A5),A0
    56: 2449           '$I'             MOVEA.L A1,A2
    58: 4EAD 02E2      3000000          JSR     proc146(A5)
    5C: 141B           '..'             MOVE.B  (A3)+,D2
    5E: 0C02 00D6      '....'           CMPI.B  #$D6,D2
    62: 6610           2000074          BNE.S   leo_5
    64: 3F00           '?.'             PUSH    D0
    66: 303C 0002      '0<..'           MOVE    #2,D0
    6A: 4EAD 0042      10000BE          JSR     proc9(A5)
    6E: 301F           '0.'             POP     D0
    70: 4202           'B.'             CLR.B   D2
    72: 6018           200008C          BRA.S   leo_7
    74: 0C02 00D5      '....'  leo_5    CMPI.B  #$D5,D2
    78: 660E           2000088          BNE.S   leo_6
    7A: 3F00           '?.'             PUSH    D0
    7C: 303C 0003      '0<..'           MOVE    #3,D0
    80: 4EAD 0042      10000BE          JSR     proc9(A5)
    84: 301F           '0.'             POP     D0
    86: 601C           20000A4          BRA.S   leo_8
    88: 4A02           'J.'    leo_6    TST.B   D2
    8A: 6D18           20000A4          BLT.S   leo_8
    8C: 4882           'H.'    leo_7    EXT     D2
    8E: 302E 000C      '0...'           MOVE    12(A6),D0
    92: 322E 000E      '2...'           MOVE    14(A6),D1
    96: 226C 006C      '"l.l'           MOVEA.L $6C(A4),A1
    9A: 0441 000A      '.A..'           SUBI    #10,D1
    9E: 5040           'P@'             ADDQ    #8,D0
    A0: 4EAD 02E2      3000000          JSR     proc146(A5)
    A4: 2D4B 0030      '-K.0'  leo_8    MOVE.L  A3,48(A6)
    A8: 224A           '"J'             MOVEA.L A2,A1
    AA: 302E 000C      '0...'           MOVE    12(A6),D0
    AE: 322E 000E      '2...'           MOVE    14(A6),D1
    B2: 2456           '$V'             MOVEA.L (A6),A2
    B4: 4EFA 0540      20005F6          JMP     proc124


    B8: 4E75                   data66   DC.B    'Nu'

    BA:                                 QUAL    proc117 ; b# =188  s#2  =proc117

                                 ;-refs -  8/proc315   

    BA: 47FA 0016      20000D2 proc117  LEA     data68,A3   ; len= 35
    BE: 4E75           'Nu'             RTS     


    C0: 'G..3Nu'               data67   DC.W    $47FA,$33,$4E75

    C6:                                 QUAL    proc118 ; b# =190  s#2  =proc118

                                 ;-refs -  6/proc305   

    C6: 47FA 0127      20001EF proc118  LEA     data70,A3   ; len= 20
    CA: 4E75           'Nu'             RTS     

    CC:                                 QUAL    proc119 ; b# =191  s#2  =proc119

                                 ;-refs -  6/proc305   

    CC: 47FA 0135      2000203 proc119  LEA     data71,A3   ; len= 20
    D0: 4E75           'Nu'             RTS     

                                 ;-refs -  2/proc117    2/com_28    

    D2: '........'             data68   DC.B    0,$10,4,0,$FF,0,$F,4
    DA: '........'                      DC.B    1,$FF,0,$F,4,1,$FF,0
    E2: '........'                      DC.B    $F,4,1,$FF,0,$10,4,0
    EA: '........'                      DC.B    $FF,0,$FF,0,1,$FF,0,$F9
    F2: '...'                           DC.B    0,1,$FF

                                 ;-refs -  2/proc116   

    F5: '................'     data69   DC.W    $400,$1400,$D604,$14,1,0,$C01,$200
   105: '................'              DC.W    $C,$103,$400,$1400,$403,$14,$105,$300
   115: '................'              DC.W    $1401,$F8,$14,$201,$F800,$1402,$2F9,$14
   125: '................'              DC.W    $303,$F900,$1403,$4FD,$14,$405,$FD00,$1404
   135: '................'              DC.W    $D600,$14,$501,0,$1405,$200,$18,3
   145: '................'              DC.W    0,$1800,$404,$14,5,$400,$1400,0
   155: '................'              DC.W    $C,$101,0,$C01,$204,$14,3,$400
   165: '................'              DC.W    $1400,$402,$18,$105,$200,$1801,$D605,$18
   175: '................'              DC.W    $201,$500,$1802,$207,$18,$303,$700,$1803
   185: '................'              DC.W    $40C,$18,$405,$C00,$1804,5,$18,$501
   195: '................'              DC.W    $500,$1805,$203,$14,$103,$300,$1401,$400
   1A5: '................'              DC.W    $C,$105,0,$C01,$FF00,$C,$D5,0
   1B5: '................'              DC.W    $C02,$FF00,$C,$1FF,0,$C00,$FF00,$C
   1C5: '................'              DC.W    $2FF,0,$C01,$FF00,$C,$FF,0,$C02
   1D5: '................'              DC.W    $FF00,$C,$1FF,0,$C01,$FF00,$C,$1FF
   1E5: '..........'                    DC.W    0,$C01,$FF00,0,$FFFF

                                 ;-refs -  2/proc118    2/proc127   

   1EF: '................'     data70   DC.W    $FE,$FF03,$FF08,$F9FF,$4FF,$12FE,$FF05,$FF12
   1FF: '....'                          DC.W    0,$FEFF

                                 ;-refs -  2/proc119    2/proc128   

   203: '................'     data71   DC.W    $FE,$FF00,$FFF8,$F9FF,$1FF,$EEFE,$FF02,$FFEE
   213: '....'                          DC.W    0,$FEFF

                                 ;-refs -  2/com_11     2/com_27    

   217: '................'     data72   DC.W    8,$FB03,$FF04,$2FC,$3FF,$402,$FC02,$FF12
   227: '....'                          DC.W    0,$FEFF

                                 ;-refs -  2/com_11     2/com_27    

   22B: '........'             data73   DC.B    0,8,$FA,3,$FF,$FF,2,$FC
   233: '........'                      DC.B    1,$FF,$FF,2,$FC,0,$FF,$EE
   23B: '........'                      DC.B    0,0,$FE,$FF,$1E,$FA,$FE,0
   243: '........'                      DC.B    $FF,$13,$F9,$FE,1,$FF,0,5
   24B: '........'                      DC.B    $FE,2,$FF,0,0,0,$FE,$FF
   253: '........'                      DC.B    $E2,$FA,$FD,0,$FF,$ED,$F9,$FD
   25B: '........'                      DC.B    1,$FF,0,5,$FD,2,$FF,0
   263: '.....'                         DC.B    0,0,$FE,$FF,0

   268:                                 QUAL    com_6 ; b# =198  s#2  =com_6

                                 ;-refs -  2/proc124   

   268: 3D72 400C 0006 '=r@... com_6    MOVE    12(A2,D4.W),6(A6)
   26E: 3832 4008      '82@.'           MOVE    8(A2,D4.W),D4
   272: 3D44 0004      '=D..'           MOVE    D4,4(A6)
   276: 4A6E 001E      'Jn..'           TST     30(A6)
   27A: 6D12           200028E          BLT.S   les_2
   27C: 4A6E 0034      'Jn.4'           TST     52(A6)
   280: 6D06           2000288          BLT.S   les_1
   282: 47FA 00FA      200037E          LEA     data78,A3   ; len= 100
   286: 6016           200029E          BRA.S   les_4
   288: 47FA 00D0      200035A les_1    LEA     data75,A3   ; len= 12
   28C: 6010           200029E          BRA.S   les_4
   28E: 4A6E 0034      'Jn.4'  les_2    TST     52(A6)
   292: 6E06           200029A          BGT.S   les_3
   294: 47FA 00DC      2000372          LEA     data77,A3   ; len= 12
   298: 6004           200029E          BRA.S   les_4
   29A: 47FA 00CA      2000366 les_3    LEA     data76,A3   ; len= 12
   29E: 3D7C 0021 0012 '=|.!.. les_4    MOVE    #33,18(A6)
   2A4: 2D4B 0030      '-K.0'           MOVE.L  A3,48(A6)
   2A8: 4E75           'Nu'             RTS     


   2AA: '&n.0..H..C..H..C'     data74   DC.W    $266E,$30,$161B,$4883,$D043,$161B,$4883,$D243
   2BA: '..H.(n.."t0\..H.'              DC.W    $161B,$4883,$286E,$16,$2274,$305C,$141B,$4882
   2CA: 'l.Jn.4n.G...`.G.'              DC.W    $6C16,$4A6E,$34,$6E06,$47FA,$B6,$6004,$47FA
   2DA: '..-K.0`.=@..=A..'              DC.W    $C4,$2D4B,$30,$60C8,$3D40,$C,$3D41,$E
   2EA: '6...<20..F...FmR'              DC.W    $362E,6,$3C32,$3000,$646,9,$B246,$6D52
   2FA: '2..A..=A..Jn..m.'              DC.W    $3206,$441,9,$3D41,$E,$4A6E,$1E,$6D18
   30A: 'Jn.4m.G...X@` G.'              DC.W    $4A6E,$34,$6D08,$47FA,$AC,$5840,$6020,$47FA
   31A: '...@..`.Jn.4m.G.'              DC.W    $B0,$440,$18,$6016,$4A6E,$34,$6D08,$47FA
   32A: '..X@`.G....@..?.'              DC.W    $AC,$5840,$6008,$47FA,$80,$440,$18,$3F00
   33A: '0<.NN..B0.=@..N.'              DC.W    $303C,$4E,$4EAD,$42,$301F,$3D40,$C,$4EFA
   34A: '.. m..-K.0N...Nu'              DC.W    $98,$206D,$FFA0,$2D4B,$30,$4EAD,$2E2,$4E75

                                 ;-refs -  2/com_6     

   35A: '..4...4.....'         data75   DC.W    $A,$3400,4,$3401,0,$FF

                                 ;-refs -  2/com_6     

   366: '..4...4.....'         data76   DC.W    $A,$3404,4,$3405,0,$FF

                                 ;-refs -  2/com_6     

   372: '......4.....'         data77   DC.W    $FF,$1C00,$A08,$3403,0,$FF

                                 ;-refs -  2/com_6     

   37E: '.. ...4.......0.'     data78   DC.W    $FF,$2000,$F608,$3407,0,$FF,$F705,$3000
   38E: '..0...0...0.....'              DC.W    $F705,$3001,$F705,$3002,$F705,$3003,0,$FF
   39E: '..0...0...0...0.'              DC.W    $905,$3004,$905,$3005,$905,$3006,$905,$3007
   3AE: '................'              DC.W    0,$FF,$FAFE,$1C02,0,$FF,$FAFE,$1C03
   3BE: '.. ....... ...4.'              DC.W    $6FE,$2002,0,$FF,$6FE,$2003,$FC0A,$3402
   3CE: '......8...4.....'              DC.W    0,$FF,$F81F,$3800,$40A,$3406,0,$FF
   3DE: '..8.'                          DC.W    $81F,$3801

   3E2:                                 QUAL    proc120 ; b# =204  s#2  =proc120

                                 ;-refs -  2/com_29     6/proc303    6/proc305   

   3E2: 3D7C 000D 0012 '=|.... proc120  MOVE    #13,18(A6)
   3E8: 2D4B 0030      '-K.0'           MOVE.L  A3,48(A6)
   3EC: 3D7C FFFF 0034 '=|...4'         MOVE    #$FFFF,52(A6)
   3F2: 3A2E 0006      ':...'           MOVE    6(A6),D5
   3F6: 3232 5000      '22P.'           MOVE    0(A2,D5.W),D1
   3FA: 3D41 000E      '=A..'           MOVE    D1,14(A6)
   3FE: 4EBA 1CCE      20020CE let_1    JSR     proc139
   402: 266E 0030      '&n.0'           MOVEA.L 48(A6),A3
   406: 161B           '..'             MOVE.B  (A3)+,D3
   408: 4883           'H.'             EXT     D3
   40A: D043           '.C'             ADD     D3,D0
   40C: 161B           '..'             MOVE.B  (A3)+,D3
   40E: 4883           'H.'             EXT     D3
   410: D243           '.C'             ADD     D3,D1
   412: 161B           '..'             MOVE.B  (A3)+,D3
   414: 4883           'H.'             EXT     D3
   416: 6C08           2000420          BGE.S   let_2
   418: 4443           'DC'             NEG     D3
   41A: 4EBA 0104      2000520          JSR     proc122
   41E: 6008           2000428          BRA.S   let_3
   420: 286E 0016      '(n..'  let_2    MOVEA.L 22(A6),A4
   424: 2274 305C      '"t0\'           MOVEA.L 92(A4,D3.W),A1
   428: 141B           '..'    let_3    MOVE.B  (A3)+,D2
   42A: 4882           'H.'             EXT     D2
   42C: 6C12           2000440          BGE.S   let_4
   42E: 0C42 FFFE      '.B..'           CMPI    #-2,D2
   432: 670C           2000440          BEQ.S   let_4
   434: 3D7C 0028 0034 '=|.(.4'         MOVE    #40,52(A6)
   43A: 2D4B 0030      '-K.0'           MOVE.L  A3,48(A6)
   43E: 60BE           20003FE          BRA     let_1
   440: 206D FFA0         -$60 let_4    MOVEA.L glob253(A5),A0
   444: 536E 0034      'Sn.4'           SUBQ    #1,52(A6)
   448: 6700 00B2      20004FC          BEQ     proc121
   44C: 6E04           2000452          BGT.S   let_5
   44E: 2D4B 0030      '-K.0'           MOVE.L  A3,48(A6)
   452: 0C42 FFFE      '.B..'  let_5    CMPI    #-2,D2
   456: 6736           200048E          BEQ.S   let_9
   458: 362E 0004      '6...'           MOVE    4(A6),D3
   45C: 0C72 002D 3004 '.r.-0.'         CMPI    #45,4(A2,D3.W) ; '-'
   462: 661A           200047E          BNE.S   let_7
   464: 4A72 3006      'Jr0.'           TST     6(A2,D3.W)
   468: 6E0A           2000474          BGT.S   let_6
   46A: B072 3008      '.r0.'           CMP.W   8(A2,D3.W),D0
   46E: 6E0E           200047E          BGT.S   let_7
   470: 4EFA 0CEC      200115E          JMP     com_10
   474: B072 3008      '.r0.'  let_6    CMP.W   8(A2,D3.W),D0
   478: 6D04           200047E          BLT.S   let_7
   47A: 4EFA 0CE2      200115E          JMP     com_10
   47E: B072 3000      '.r0.'  let_7    CMP.W   0(A2,D3.W),D0
   482: 6D18           200049C          BLT.S   let_11
   484: B072 3002      '.r0.'           CMP.W   2(A2,D3.W),D0
   488: 6E42           20004CC          BGT.S   let_14
   48A: 4EAD 02E2      3000000 let_8    JSR     proc146(A5)
   48E: 4E75           'Nu'    let_9    RTS     
   490: 3D40 000C      '=@..'  let_10   MOVE    D0,12(A6)
   494: 4EBA 182A      2001CC0          JSR     proc137
   498: 4EFA 18A8      2001D42          JMP     com_27
   49C: B072 3002      '.r0.'  let_11   CMP.W   2(A2,D3.W),D0
   4A0: 6EEE           2000490          BGT     let_10
   4A2: B072 3000      '.r0.'           CMP.W   0(A2,D3.W),D0
   4A6: 6D06           20004AE          BLT.S   let_12
   4A8: 3D43 0004      '=C..'           MOVE    D3,4(A6)
   4AC: 60DC           200048A          BRA     let_8
   4AE: 0443 0012      '.C..'  let_12   SUBI    #18,D3
   4B2: 0C72 001B 3004 '.r..0.'         CMPI    #27,4(A2,D3.W)
   4B8: 660A           20004C4          BNE.S   let_13
   4BA: 3032 3002      '020.'           MOVE    2(A2,D3.W),D0
   4BE: 0640 0014      '.@..'           ADDI    #20,D0
   4C2: 60CC           2000490          BRA     let_10
   4C4: 4A72 3000      'Jr0.'  let_13   TST     0(A2,D3.W)
   4C8: 67C6           2000490          BEQ     let_10
   4CA: 60D0           200049C          BRA     let_11
   4CC: B072 3002      '.r0.'  let_14   CMP.W   2(A2,D3.W),D0
   4D0: 6E0C           20004DE          BGT.S   let_15
   4D2: B072 3000      '.r0.'           CMP.W   0(A2,D3.W),D0
   4D6: 6DB8           2000490          BLT     let_10
   4D8: 3D43 0004      '=C..'           MOVE    D3,4(A6)
   4DC: 60AC           200048A          BRA     let_8
   4DE: 0643 0012      '.C..'  let_15   ADDI    #18,D3
   4E2: 0C72 001B 3004 '.r..0.'         CMPI    #27,4(A2,D3.W)
   4E8: 660A           20004F4          BNE.S   let_16
   4EA: 3032 3000      '020.'           MOVE    0(A2,D3.W),D0
   4EE: 0440 0014      '.@..'           SUBI    #20,D0
   4F2: 609C           2000490          BRA     let_10
   4F4: 4A72 3000      'Jr0.'  let_16   TST     0(A2,D3.W)
   4F8: 6796           2000490          BEQ     let_10
   4FA: 60D0           20004CC          BRA     let_14

   4FC:                                 QUAL    proc121 ; b# =205  s#2  =proc121

                                 ;-refs -  2/proc120    2/proc131    2/com_28    
                                 ;-        7/proc310    8/proc316    8/proc319   

   4FC: 536D FEF8        -$108 proc121  SUBQ    #1,glob201(A5)
   500: 50ED FEFD        -$103          ST      glob203(A5)
   504: 4A6D FEF8        -$108          TST     glob201(A5)
   508: 6D14           200051E          BLT.S   leu_1
   50A: 3B6D FEA8 FEA6   -$15A          MOVE    glob173(A5),glob172(A5)
   510: 0C2D 0010 FF34    -$CC          CMPI.B  #16,glob221(A5)
   516: 6206           200051E          BHI.S   leu_1
   518: 1B7C 0010 FF34    -$CC          MOVE.B  #16,glob221(A5)
   51E: 4E75           'Nu'    leu_1    RTS     

   520:                                 QUAL    proc122 ; b# =206  s#2  =proc122

                                 ;-refs -  2/proc116    2/proc120   

   520: 5343           'SC'    proc122  SUBQ    #1,D3
   522: E743           '.C'             ASL     #3,D3
   524: 4EFB 3004      200052A          JMP     data80(D3.W)


   528: '..'                   data79   DC.W    0

                                 ;-refs -  2/proc122   

   52A: '"m..Nu.."m..Nu..'     data80   DC.W    $226D,$F4F4,$4E75,0,$226D,$F500,$4E75,0
   53A: '"m..Nu.."m.|Nu..'              DC.W    $226D,$F504,$4E75,0,$226D,$F57C,$4E75,0
   54A: '"m.<Nu.."m.@Nu'                DC.W    $226D,$F43C,$4E75,0,$226D,$F440,$4E75

   558:                                 QUAL    proc123 ; b# =209  s#2  =proc123

                                 ;-refs -  6/proc303    6/proc305   

   558: 47FA 008C      20005E6 proc123  LEA     data89,A3   ; len= 16
   55C: 4E75           'Nu'             RTS     

                                 ;-refs -  2/com_29    

   55E: '................'     data81   DC.W    $10,$400,$F,$401,$F,$401,$F,$401
   56E: '............'                  DC.W    $10,$400,3,1,$F6,1

                                 ;-refs -  2/proc124   

   57A: '................'     data82   DC.W    8,$402,$F,$403,$F,$403,0,$FF
   58A: '....'                          DC.W    $F,$403

                                 ;-refs -  2/proc124   

   58E: '........'             data83   DC.W    $ECFE,$1C00,$E8FE,$1C01

                                 ;-refs -  2/proc124   

   596: '................'     data84   DC.W    $E8FE,$1C02,$E8FE,$1C02,0,$FF,$E8FE,$1C03

                                 ;-refs -  2/proc124   

   5A6: '.. ... .'             data85   DC.W    $4FE,$2000,$6FE,$2001

                                 ;-refs -  2/proc124   

   5AE: '.. ... ....... .'     data86   DC.W    $6FE,$2002,$6FE,$2002,0,$FF,$6FE,$2003

                                 ;-refs -  2/proc124   

   5BE: '..4...4...4.....'     data87   DC.W    $EE02,$3400,$DF05,$3401,$CA0B,$3402,0,$FF
   5CE: '..8.'                          DC.W    $BC1F,$3800

                                 ;-refs -  2/proc124   

   5D2: '..4.!.4.6.4.....'     data88   DC.W    $1202,$3404,$2105,$3405,$360B,$3406,0,$FF
   5E2: 'D.8.'                          DC.W    $441F,$3801

                                 ;-refs -  2/proc123   

   5E6: '................'     data89   DC.W    $FE,$FF06,8,$402,0,$FF,$F,$403

   5F6:                                 QUAL    proc124 ; b# =219  s#2  =proc124

                                 ;-refs -  2/proc116    2/com_15     2/com_16    
                                 ;-        2/com_18     2/com_19     2/com_23    
                                 ;-        2/proc133    2/com_30     2/com_32    
                                 ;-        6/proc305    6/proc306    7/proc311   
                                 ;-        8/proc315    8/proc318    8/proc321   
                                 ;-        8/proc322    8/proc323    8/proc324   
                                 ;-        9/proc335   11/   98 11/proc345   
                                 ;-       12/proc353   13/proc356   15/proc362   
                                 ;-       15/proc363   

   5F6: 422D F9FA        -$606 proc124  CLR.B   glob77(A5)
   5FA: 4A6E 002A      'Jn.*'           TST     42(A6)
   5FE: 6F04           2000604          BLE.S   lex_1
   600: 536E 002A      'Sn.*'           SUBQ    #1,42(A6)
   604: 41ED FA0C        -$5F4 lex_1    LEA     glob88(A5),A0
   608: 4EAD 046A      3003F2C          JSR     proc210(A5)
   60C: B0FC 0000      '....'           CMPA.W  #0,A0
   610: 6700 007E      2000690          BEQ     lex_6
   614: 317C 0001 0016 '1|....'         MOVE    #1,22(A0)
   61A: 3028 000E      '0(..'           MOVE    14(A0),D0
   61E: 3228 0010      '2(..'           MOVE    16(A0),D1
   622: 3E28 000C      '>(..'           MOVE    12(A0),D7
   626: 0C47 0005      '.G..'           CMPI    #5,D7
   62A: 6636           2000662          BNE.S   lex_2
   62C: 342E 000C      '4...'           MOVE    12(A6),D2
   630: 0C42 0138      '.B.8'           CMPI    #$138,D2
   634: 6D00 016E      20007A4          BLT     lex_18
   638: 0C42 0177      '.B.w'           CMPI    #$177,D2
   63C: 6E00 0166      20007A4          BGT     lex_18
   640: 342E 000E      '4...'           MOVE    14(A6),D2
   644: 0C42 00F0      '.B..'           CMPI    #$F0,D2
   648: 6E00 015A      20007A4          BGT     lex_18
   64C: 426E 0030      'Bn.0'           CLR     48(A6)
   650: 2D48 0032      '-H.2'           MOVE.L  A0,50(A6)
   654: 3D7C 003D 0012 '=|.=..'         MOVE    #61,18(A6)
   65A: 426D FF22         -$DE          CLR     glob214(A5)
   65E: 6000 039A      20009FA          BRA     lex_39
   662: 0C47 0006      '.G..'  lex_2    CMPI    #6,D7
   666: 6610           2000678          BNE.S   lex_3
   668: 046D 0800 FF22    -$DE          SUBI    #$800,glob214(A5)
   66E: 1B7C 00FF F9FA   -$606          MOVE.B  #$FF,glob77(A5)
   674: 6000 006E      20006E4          BRA     lex_10
   678: 0C47 0003      '.G..'  lex_3    CMPI    #3,D7
   67C: 6604           2000682          BNE.S   lex_4
   67E: 4EFA 08CA      2000F4A          JMP     proc129
   682: 0C47 0009      '.G..'  lex_4    CMPI    #9,D7
   686: 6604           200068C          BNE.S   lex_5
   688: 4EFA 08C0      2000F4A          JMP     proc129
   68C: 6000 0116      20007A4 lex_5    BRA     lex_18
   690: 4EAD 0462      3003EC6 lex_6    JSR     proc209(A5)
   694: 674E           20006E4          BEQ.S   lex_10
   696: B1FC 0400 0000 '......'         CMPA.L  #$4000000,A0
   69C: 6604           20006A2          BNE.S   lex_7
   69E: 4EFA 087A      2000F1A          JMP     com_7
   6A2: B1FC 0500 0000 '...... lex_7    CMPA.L  #$5000000,A0
   6A8: 6636           20006E0          BNE.S   lex_9
   6AA: 4A6E 002A      'Jn.*'           TST     42(A6)
   6AE: 6E34           20006E4          BGT.S   lex_10
   6B0: 4A6D FF24         -$DC          TST     glob215(A5)
   6B4: 6F1A           20006D0          BLE.S   lex_8
   6B6: 3F00           '?.'             PUSH    D0
   6B8: 303C 000C      '0<..'           MOVE    #12,D0
   6BC: 4EAD 0042      10000BE          JSR     proc9(A5)
   6C0: 301F           '0.'             POP     D0
   6C2: 536D FF24         -$DC          SUBQ    #1,glob215(A5)
   6C6: 3D7C 0014 002A '=|...*'         MOVE    #20,42(A6)
   6CC: 6000 0016      20006E4          BRA     lex_10
   6D0: 046D 0800 FF22    -$DE lex_8    SUBI    #$800,glob214(A5)
   6D6: 1B7C 00FF F9FA   -$606          MOVE.B  #$FF,glob77(A5)
   6DC: 6000 0006      20006E4          BRA     lex_10
   6E0: 6000 00C2      20007A4 lex_9    BRA     lex_18
   6E4: 41ED FF14         -$EC lex_10   LEA     glob210(A5),A0
   6E8: 4EAD 0452      3003DEA          JSR     proc206(A5)
   6EC: 6742           2000730          BEQ.S   lex_13
   6EE: 42A8 0008      'B...'           CLR.L   8(A0)
   6F2: 0C6D 000B FEA8   -$158          CMPI    #11,glob173(A5)
   6F8: 6628           2000722          BNE.S   lex_12
   6FA: 226D F7F8        -$808          MOVEA.L glob59(A5),A1
   6FE: B3E8 0018      '....'           CMPA.L  24(A0),A1
   702: 661E           2000722          BNE.S   lex_12
   704: 046D 1E00 FF22    -$DE          SUBI    #$1E00,glob214(A5)
   70A: 6E08           2000714          BGT.S   lex_11
   70C: 426D FF22         -$DE          CLR     glob214(A5)
   710: 6000 0092      20007A4          BRA     lex_18
   714: 3F00           '?.'    lex_11   PUSH    D0
   716: 303C 0017      '0<..'           MOVE    #23,D0
   71A: 4EAD 0042      10000BE          JSR     proc9(A5)
   71E: 301F           '0.'             POP     D0
   720: 600E           2000730          BRA.S   lex_13
   722: 0C6D 0001 FEA8   -$158 lex_12   CMPI    #1,glob173(A5)
   728: 6600 007A      20007A4          BNE     lex_18
   72C: 4EFA 07EC      2000F1A          JMP     com_7
   730: 0C6D 0001 FEDA   -$126 lex_13   CMPI    #1,glob194(A5)
   736: 6D00 003A      2000772          BLT     lex_15
   73A: 4A6E 002A      'Jn.*'           TST     42(A6)
   73E: 6E00 0032      2000772          BGT     lex_15
   742: 4A6D FF24         -$DC          TST     glob215(A5)
   746: 6F1A           2000762          BLE.S   lex_14
   748: 3F00           '?.'             PUSH    D0
   74A: 303C 000C      '0<..'           MOVE    #12,D0
   74E: 4EAD 0042      10000BE          JSR     proc9(A5)
   752: 301F           '0.'             POP     D0
   754: 536D FF24         -$DC          SUBQ    #1,glob215(A5)
   758: 3D7C 0014 002A '=|...*'         MOVE    #20,42(A6)
   75E: 6000 029A      20009FA          BRA     lex_39
   762: 046D 0800 FF22    -$DE lex_14   SUBI    #$800,glob214(A5)
   768: 1B7C 00FF F9FA   -$606          MOVE.B  #$FF,glob77(A5)
   76E: 6000 0002      2000772          BRA     lex_15
   772: 4A2D F9FA        -$606 lex_15   TST.B   glob77(A5)
   776: 671A           2000792          BEQ.S   lex_16
   778: 532D F9FB        -$605          SUBQ.B  #1,glob78(A5)
   77C: 6E18           2000796          BGT.S   lex_17
   77E: 3F00           '?.'             PUSH    D0
   780: 303C 0017      '0<..'           MOVE    #23,D0
   784: 4EAD 0042      10000BE          JSR     proc9(A5)
   788: 301F           '0.'             POP     D0
   78A: 1B7C 000A F9FB   -$605          MOVE.B  #10,glob78(A5)
   790: 6004           2000796          BRA.S   lex_17
   792: 422D F9FB        -$605 lex_16   CLR.B   glob78(A5)
   796: 4A6D FF22         -$DE lex_17   TST     glob214(A5)
   79A: 6E00 025E      20009FA          BGT     lex_39
   79E: 4240           'B@'             CLR     D0
   7A0: 6000 0002      20007A4          BRA     lex_18
   7A4: 3F00           '?.'    lex_18   PUSH    D0
   7A6: 303C 000A      '0<..'           MOVE    #10,D0
   7AA: 4EAD 0042      10000BE          JSR     proc9(A5)
   7AE: 301F           '0.'             POP     D0
   7B0: 426D FF22         -$DE          CLR     glob214(A5)
   7B4: 3E2E 0012      '>...'           MOVE    18(A6),D7
   7B8: E547           '.G'             ASL     #2,D7
   7BA: 4EFB 7002      20007BE          JMP     data90(D7.W)
   7BE:                                 JBIAS  0
                                 ;-refs -  2/proc124   

   7BE: 4EFA 011E      20008DE data90   JMP     lex_19
   7C2: 4EFA 01FA      20009BE          JMP     lex_34
   7C6: 4EFA 0116      20008DE          JMP     lex_19
   7CA: 4EFA 0112      20008DE          JMP     lex_19
   7CE: 4EFA 020C      20009DC          JMP     lex_36
   7D2: 4EFA 01F8      20009CC          JMP     lex_35
   7D6: 4EFA 0106      20008DE          JMP     lex_19
   7DA: 4EFA 0182      200095E          JMP     lex_29
   7DE: 4EFA 00FE      20008DE          JMP     lex_19
   7E2: 4EFA 01E8      20009CC          JMP     lex_35
   7E6: 4EFA 01E4      20009CC          JMP     lex_35
   7EA: 4EFA 01E0      20009CC          JMP     lex_35
   7EE: 4EFA 00F8      20008E8          JMP     lex_20
   7F2: 4EFA 00EA      20008DE          JMP     lex_19
   7F6: 4EFA 00E6      20008DE          JMP     lex_19
   7FA: 4EFA 00E2      20008DE          JMP     lex_19
   7FE: 4EFA 00DE      20008DE          JMP     lex_19
   802: 4EFA 00DA      20008DE          JMP     lex_19
   806: 4EFA 01C4      20009CC          JMP     lex_35
   80A: 4EFA 01C0      20009CC          JMP     lex_35
   80E: 4EFA 00CE      20008DE          JMP     lex_19
   812: 4EFA 00CA      20008DE          JMP     lex_19
   816: 4EFA 00C6      20008DE          JMP     lex_19
   81A: 4EFA 00C2      20008DE          JMP     lex_19
   81E: 4EFA 00BE      20008DE          JMP     lex_19
   822: 4EFA 00BA      20008DE          JMP     lex_19
   826: 4EFA 00B6      20008DE          JMP     lex_19
   82A: 4EFA 00B2      20008DE          JMP     lex_19
   82E: 4EFA 00AE      20008DE          JMP     lex_19
   832: 4EFA 00AA      20008DE          JMP     lex_19
   836: 4EFA 00A6      20008DE          JMP     lex_19
   83A: 4EFA 00A2      20008DE          JMP     lex_19
   83E: 4EFA 009E      20008DE          JMP     lex_19
   842: 4EFA 009A      20008DE          JMP     lex_19
   846: 4EFA 0096      20008DE          JMP     lex_19
   84A: 4EFA 0092      20008DE          JMP     lex_19
   84E: 4EFA 008E      20008DE          JMP     lex_19
   852: 4EFA 008A      20008DE          JMP     lex_19
   856: 4EFA 0086      20008DE          JMP     lex_19
   85A: 4EFA 0082      20008DE          JMP     lex_19
   85E: 4EFA 007E      20008DE          JMP     lex_19
   862: 4EFA 007A      20008DE          JMP     lex_19
   866: 4EFA 0076      20008DE          JMP     lex_19
   86A: 4EFA 0072      20008DE          JMP     lex_19
   86E: 4EFA 006E      20008DE          JMP     lex_19
   872: 4EFA 006A      20008DE          JMP     lex_19
   876: 4EFA 0154      20009CC          JMP     lex_35
   87A: 4EFA 0150      20009CC          JMP     lex_35
   87E: 4EFA 005E      20008DE          JMP     lex_19
   882: 4EFA 005A      20008DE          JMP     lex_19
   886: 4EFA 0172      20009FA          JMP     lex_39
   88A: 4EFA 0052      20008DE          JMP     lex_19
   88E: 4EFA 004E      20008DE          JMP     lex_19
   892: 4EFA 004A      20008DE          JMP     lex_19
   896: 4EFA 00CA      2000962          JMP     lex_30
   89A: 4EFA 0042      20008DE          JMP     lex_19
   89E: 4EFA 0110      20009B0          JMP     lex_33
   8A2: 4EFA 003A      20008DE          JMP     lex_19
   8A6: 4EFA 0036      20008DE          JMP     lex_19
   8AA: 4EFA 0032      20008DE          JMP     lex_19
   8AE: 4EFA 002E      20008DE          JMP     lex_19
   8B2: 4EFA 0146      20009FA          JMP     lex_39
   8B6: 4EFA 0114      20009CC          JMP     lex_35
   8BA: 4EFA 0022      20008DE          JMP     lex_19
   8BE: 4EFA 010C      20009CC          JMP     lex_35
   8C2: 4EFA 0108      20009CC          JMP     lex_35
   8C6: 4EFA 0016      20008DE          JMP     lex_19
   8CA: 4EFA 0012      20008DE          JMP     lex_19
   8CE: 4EFA 000E      20008DE          JMP     lex_19
   8D2: 4EFA 004C      2000920          JMP     lex_25
   8D6: 4EFA 0006      20008DE          JMP     lex_19
   8DA: 4EFA 011E      20009FA          JMP     lex_39

   8DE: 3E2E 0006      '>...'  lex_19   MOVE    6(A6),D7
   8E2: 3D72 7000 000E '=rp...'         MOVE    0(A2,D7.W),14(A6)
   8E8: 3D7C 000D 0012 '=|.... lex_20   MOVE    #13,18(A6)
   8EE: 3D7C FFFF 0034 '=|...4'         MOVE    #$FFFF,52(A6)
   8F4: 4A6E 001E      'Jn..'           TST     30(A6)
   8F8: 6D10           200090A          BLT.S   lex_22
   8FA: 4A40           'J@'             TST     D0
   8FC: 6D06           2000904          BLT.S   lex_21
   8FE: 47FA FCA6      20005A6          LEA     data85,A3   ; len= 8
   902: 6014           2000918          BRA.S   lex_24
   904: 47FA FCB8      20005BE lex_21   LEA     data87,A3   ; len= 20
   908: 600E           2000918          BRA.S   lex_24
   90A: 4A40           'J@'    lex_22   TST     D0
   90C: 6E06           2000914          BGT.S   lex_23
   90E: 47FA FC7E      200058E          LEA     data83,A3   ; len= 8
   912: 6004           2000918          BRA.S   lex_24
   914: 47FA FCBC      20005D2 lex_23   LEA     data88,A3   ; len= 20
   918: 2D4B 0030      '-K.0'  lex_24   MOVE.L  A3,48(A6)
   91C: 6000 00DC      20009FA          BRA     lex_39
   920: 046E 0011 000E '.n.... lex_25   SUBI    #17,14(A6)
   926: 3D7C 000D 0012 '=|....'         MOVE    #13,18(A6)
   92C: 3D7C FFFF 0034 '=|...4'         MOVE    #$FFFF,52(A6)
   932: 0C6E 0010 0030 '.n...0'         CMPI    #16,48(A6)
   938: 660C           2000946          BNE.S   lex_26
   93A: 066E 0011 000E '.n....'         ADDI    #17,14(A6)
   940: 47FA FC38      200057A          LEA     data82,A3   ; len= 20
   944: 6010           2000956          BRA.S   lex_28
   946: 4A6E 001E      'Jn..'  lex_26   TST     30(A6)
   94A: 6D06           2000952          BLT.S   lex_27
   94C: 47FA FC60      20005AE          LEA     data86,A3   ; len= 16
   950: 6004           2000956          BRA.S   lex_28
   952: 47FA FC42      2000596 lex_27   LEA     data84,A3   ; len= 16
   956: 2D4B 0030      '-K.0'  lex_28   MOVE.L  A3,48(A6)
   95A: 6000 009E      20009FA          BRA     lex_39
   95E: 4EFA F908      2000268 lex_29   JMP     com_6
   962: 0C6E 0014 0034 '.n...4 lex_30   CMPI    #20,52(A6)
   968: 6700 FF74      20008DE          BEQ     lex_19
   96C: 0C6E 0000 0034 '.n...4'         CMPI    #0,52(A6)
   972: 6700 FF6A      20008DE          BEQ     lex_19
   976: 48E7 E040      'H..@'           MOVEM.L D0-D2/A1,-(A7)
   97A: 302E 000C      '0...'           MOVE    12(A6),D0
   97E: 322E 000E      '2...'           MOVE    14(A6),D1
   982: 5541           'UA'             SUBQ    #2,D1
   984: 7A30           'z0'             MOVEQ   #48,D5
   986: 4EAD 05C2      600090C          JSR     proc305(A5)
   98A: 4A6E 001E      'Jn..'           TST     30(A6)
   98E: 6E0A           200099A          BGT.S   lex_31
   990: 0640 001E      '.@..'           ADDI    #30,D0
   994: 343C 0002      '4<..'           MOVE    #2,D2
   998: 6006           20009A0          BRA.S   lex_32
   99A: 0440 001E      '.@..'  lex_31   SUBI    #30,D0
   99E: 4242           'BB'             CLR     D2
   9A0: 0641 0019      '.A..'  lex_32   ADDI    #25,D1
   9A4: 4EAD 05DA      6000F86          JSR     proc307(A5)
   9A8: 4CDF 0207      'L...'           MOVEM.L (A7)+,D0-D2/A1
   9AC: 6000 FF30      20008DE          BRA     lex_19
   9B0: 3D7C 0028 0030 '=|.(.0 lex_33   MOVE    #40,48(A6)
   9B6: 426E 0032      'Bn.2'           CLR     50(A6)
   9BA: 6000 003E      20009FA          BRA     lex_39
   9BE: 362E 0004      '6...'  lex_34   MOVE    4(A6),D3
   9C2: 3D72 300C 0006 '=r0...'         MOVE    12(A2,D3.W),6(A6)
   9C8: 6000 0002      20009CC          BRA     lex_35
   9CC: 302E 000C      '0...'  lex_35   MOVE    12(A6),D0
   9D0: 322E 000E      '2...'           MOVE    14(A6),D1
   9D4: 4EBA 1A00      20023D6          JSR     proc140
   9D8: 4EFA 12E6      2001CC0          JMP     proc137
   9DC: 302E 000C      '0...'  lex_36   MOVE    12(A6),D0
   9E0: 322E 000E      '2...'           MOVE    14(A6),D1
   9E4: 362E 0006      '6...'           MOVE    6(A6),D3
   9E8: B272 3000      '.r0.'  lex_37   CMP.W   0(A2,D3.W),D1
   9EC: 6F04           20009F2          BLE.S   lex_38
   9EE: 5843           'XC'             ADDQ    #4,D3
   9F0: 60F6           20009E8          BRA     lex_37
   9F2: 3D43 0006      '=C..'  lex_38   MOVE    D3,6(A6)
   9F6: 4EFA 12C8      2001CC0          JMP     proc137
   9FA: 4E75           'Nu'    lex_39   RTS     

   9FC:                                 QUAL    proc125 ; b# =221  s#2  =proc125

                                 ;-refs -  2/proc116    2/proc127    2/proc128   
                                 ;-        2/proc133    2/com_28     2/com_29    
                                 ;-        2/proc143    8/proc322   15/proc363   

   9FC: 3E32 5004      '>2P.'  proc125  MOVE    4(A2,D5.W),D7
   A00: 0247 00FF      '.G..'           ANDI    #$FF,D7
   A04: 5347           'SG'             SUBQ    #1,D7
   A06: E747           '.G'             ASL     #3,D7
   A08: 3D45 0004      '=E..'           MOVE    D5,4(A6)
   A0C: 4EFB 7006      2000A14          JMP     data92(D7.W)


   A10: 4E75 0000              data91   ZSTR    'Nu'

                                 ;-refs -  2/proc125   

   A14: 'Bn..Nu..`.......'     data92   DC.W    $426E,$12,$4E75,0,$6000,$21A,0,0
   A24: '`.......`.......'              DC.W    $6000,$212,0,0,$6000,$20A,0,0
   A34: '`.......Bn..Nu..'              DC.W    $6000,$3EE,0,0,$426E,$12,$4E75,0
   A44: 'Bn..Nu..Bn..Nu..'              DC.W    $426E,$12,$4E75,0,$426E,$12,$4E75,0
   A54: '=|....Nu=|....Nu'              DC.W    $3D7C,8,$12,$4E75,$3D7C,8,$12,$4E75
   A64: '=|....NuBn..Nu..'              DC.W    $3D7C,8,$12,$4E75,$426E,$12,$4E75,0
   A74: '=|....Nu=|....Nu'              DC.W    $3D7C,$12,$12,$4E75,$3D7C,$10,$12,$4E75
   A84: 'Nu......=|....Nu'              DC.W    $4E75,0,0,0,$3D7C,$14,$12,$4E75
   A94: '=|....Nu=|....Nu'              DC.W    $3D7C,$16,$12,$4E75,$3D7C,$17,$12,$4E75
   AA4: '=|.?..NuNu......'              DC.W    $3D7C,$3F,$12,$4E75,$4E75,0,0,0
   AB4: 'Nu......J.`.....'              DC.W    $4E75,0,0,0,$4A9F,$6000,$12E,0
   AC4: '`..Z....`.......'              DC.W    $6000,$15A,0,0,$6000,$1AE,0,0
   AD4: '`..f....`.......'              DC.W    $6000,$266,0,0,$6000,$1C8,0,0
   AE4: '`..z....=|.&..Nu'              DC.W    $6000,$27A,0,0,$3D7C,$26,$12,$4E75
   AF4: '=|.(..NuNq......'              DC.W    $3D7C,$28,$12,$4E75,$4E71,0,0,0
   B04: '`.......`.......'              DC.W    $6000,$1A0,0,0,$6000,$198,0,0
   B14: '=|....Nu=|....Nu'              DC.W    $3D7C,$2E,$12,$4E75,$3D7C,$2E,$12,$4E75
   B24: 'Bn.0`...=|.1..Nu'              DC.W    $426E,$30,$6000,$F6,$3D7C,$31,$12,$4E75
   B34: '`.......`.......'              DC.W    $6000,$EA,0,0,$6000,$106,0,0
   B44: '`.......Bn..Nu..'              DC.W    $6000,$11A,0,0,$426E,$12,$4E75,0
   B54: '`.......`.......'              DC.W    $6000,$1F2,0,0,$6000,$1F6,0,0
   B64: 'Bn..Nu..`..0....'              DC.W    $426E,$12,$4E75,0,$6000,$230,0,0
   B74: '=|.7..Nu`..Z....'              DC.W    $3D7C,$37,$12,$4E75,$6000,$15A,0,0
   B84: '=|.9..Nu=|.:..`P'              DC.W    $3D7C,$39,$12,$4E75,$3D7C,$3A,$12,$6050
   B94: '=|.;..`H=|.<..Nu'              DC.W    $3D7C,$3B,$12,$6048,$3D7C,$3C,$12,$4E75
   BA4: '`.......`.......'              DC.W    $6000,$82,0,0,$6000,$DA,0,0
   BB4: 'N.......`..*....'              DC.W    $4EED,$6BA,0,0,$6000,$12A,0,0
   BC4: '=|.D..`.=|.E..`.'              DC.W    $3D7C,$44,$12,$6018,$3D7C,$45,$12,$6010
   BD4: '=|.F..`.=|.G..Nq'              DC.W    $3D7C,$46,$12,$6008,$3D7C,$47,$12,$4E71
   BE4: 'Bn.0Bn.2Nu=|.8..'              DC.W    $426E,$30,$426E,$32,$4E75,$3D7C,$38,$12
   BF4: '.m....f.=|. .0Bn'              DC.W    $C6D,$C,$FEA8,$660C,$3D7C,$20,$30,$426E
   C04: '.2Nu=|.$.0Bn.2?.'              DC.W    $32,$4E75,$3D7C,$24,$30,$426E,$32,$3F00
   C14: '0<.VN..B0.Nu=|.0'              DC.W    $303C,$56,$4EAD,$42,$301F,$4E75,$3D7C,$30
   C24: '..NuBn.0Bn..=|.>'              DC.W    $12,$4E75,$426E,$30,$426E,$10,$3D7C,$3E
   C34: '..`.Bn.2=|....Nu'              DC.W    $12,$60AC,$426E,$32,$3D7C,2,$12,$4E75
   C44: 'Jn..g..E..`...=|'              DC.W    $4A6E,$A,$6708,$645,$12,$6000,$1D4,$3D7C
   C54: '....=|...2NuJn..'              DC.W    2,$12,$3D7C,8,$32,$4E75,$4A6E,$A
   C64: 'g..E..`...=|....'              DC.W    $6708,$645,$12,$6000,$1B8,$3D7C,2,$12
   C74: '=|...2Nu=|.#..Bn'              DC.W    $3D7C,$FFF8,$32,$4E75,$3D7C,$23,$12,$426E
   C84: '.0Nu=|.?..J-..g.'              DC.W    $30,$4E75,$3D7C,$3F,$12,$4A2D,$FEB5,$670C
   C94: '=|...0Q...`.Bn.0'              DC.W    $3D7C,8,$30,$51ED,$FEB5,$6004,$426E,$30
   CA4: 'NuJ-..g.=|.)..Nu'              DC.W    $4E75,$4A2D,$FEB5,$6708,$3D7C,$29,$12,$4E75
   CB4: 'Bn..02P.=@..22P.'              DC.W    $426E,$12,$3032,$5006,$3D40,$C,$3232,$5008
   CC4: '=A..=rP...82P.=D'              DC.W    $3D41,$E,$3D72,$500C,6,$3832,$500A,$3D44
   CD4: '..NuBn.0=|.8..Bn'              DC.W    4,$4E75,$426E,$30,$3D7C,$38,$12,$426E
   CE4: '.6Nu?.0<.`N..B0.'              DC.W    $36,$4E75,$3F00,$303C,$60,$4EAD,$42,$301F
   CF4: 'Bn.<=|...0=rP..8'              DC.W    $426E,$3C,$3D7C,$C,$30,$3D72,$5008,$38
   D04: '=rP...m..n...8=|'              DC.W    $3D72,$5006,$1E,$6D06,$66E,$12,$38,$3D7C
   D14: '.8..Bn.6Bn.:22P.'              DC.W    $38,$12,$426E,$36,$426E,$3A,$3232,$500A
   D24: '=A..6....r0.n.YC'              DC.W    $3D41,$E,$362E,6,$B272,$30FC,$6E04,$5943
   D34: '`.=C..Nu=|.$..Bn'              DC.W    $60F6,$3D43,6,$4E75,$3D7C,$24,$12,$426E
   D44: '.0Nu=|.5..Bn.4Nu'              DC.W    $30,$4E75,$3D7C,$35,$12,$426E,$34,$4E75
   D54: '=|.6..Bn.4Nu>2P.'              DC.W    $3D7C,$36,$12,$426E,$34,$4E75,$3E32,$5000
   D64: 'SG.rP.g..E..02P.'              DC.W    $5347,$BE72,$50F0,$6710,$645,$12,$3032,$5000
   D74: '=@..`...>2P.RG.r'              DC.W    $3D40,$C,$6000,$FC82,$3E32,$5002,$5247,$BE72
   D84: 'P.g..E..02P.=@..'              DC.W    $5012,$6710,$445,$12,$3032,$5002,$3D40,$C
   D94: '`..fBn..Nu?.0<..'              DC.W    $6000,$FC66,$426E,$12,$4E75,$3F00,$303C,$15
   DA4: 'N..B0.62P.=C..=r'              DC.W    $4EAD,$42,$301F,$3632,$5006,$3D43,6,$3D72
   DB4: '0...820.Jn.0n.G.'              DC.W    $3000,$E,$3832,$3002,$4A6E,$30,$6E1A,$47FA
   DC4: '.{.@..<..8g$.Fl '              DC.W    $F47B,$440,$1E,$3C2E,$38,$6724,$B046,$6C20
   DD4: '0..8X@`.G..u.@..'              DC.W    $302E,$38,$5840,$6018,$47FA,$F475,$640,$1E
   DE4: '<..8g..Fo.0..8Y@'              DC.W    $3C2E,$38,$670A,$B046,$6F06,$302E,$38,$5940
   DF4: '.D...r@.n.=D..=@'              DC.W    $644,$12,$B072,$4002,$6EF6,$3D44,4,$3D40
   E04: '..=|....-K.0.m..'              DC.W    $C,$3D7C,$C,$12,$2D4B,$30,$46D,$F00
   E14: '."?.0<..N..B0.Nu'              DC.W    $FF22,$3F00,$303C,$15,$4EAD,$42,$301F,$4E75

   E24:                                 QUAL    proc126 ; b# =224  s#2  =proc126

                                 ;-refs -  2/com_16     6/proc305   14/proc359   

   E24: 426E 0012      'Bn..'  proc126  CLR     18(A6)
   E28: 1B72 500B FA05   -$5FB          MOVE.B  11(A2,D5.W),glob84(A5)
   E2E: 3B72 5006 FEA6   -$15A          MOVE    6(A2,D5.W),glob172(A5)
   E34: 3B72 5008 FEA4   -$15C          MOVE    8(A2,D5.W),glob171(A5)
   E3A: 50ED FEFD        -$103          ST      glob203(A5)
   E3E: 4E75           'Nu'             RTS     

   E40:                                 QUAL    proc127 ; b# =225  s#2  =proc127

                                 ;-refs -  2/com_14     6/proc306   

   E40: 3A04           ':.'    proc127  MOVE    D4,D5
   E42: 0445 0012      '.E..'           SUBI    #18,D5
   E46: 3C32 5002      '<2P.'           MOVE    2(A2,D5.W),D6
   E4A: 5246           'RF'             ADDQ    #1,D6
   E4C: BC72 4000      '.r@.'           CMP.W   0(A2,D4.W),D6
   E50: 6700 0006      2000E58          BEQ     lfa_1
   E54: 4EFA 10D0      2001F26          JMP     proc138
   E58: 0C72 0006 5004 '.r..P. lfa_1    CMPI    #6,4(A2,D5.W)
   E5E: 660E           2000E6E          BNE.S   lfa_3
   E60: 3032 4000      '02@.'           MOVE    0(A2,D4.W),D0
   E64: 3D40 000C      '=@..'  lfa_2    MOVE    D0,12(A6)
   E68: 426E 0008      'Bn..'           CLR     8(A6)
   E6C: 4E75           'Nu'             RTS     
   E6E: 0C72 001B 5004 '.r..P. lfa_3    CMPI    #27,4(A2,D5.W)
   E74: 6628           2000E9E          BNE.S   lfa_4
   E76: 47FA F377      20001EF          LEA     data70,A3   ; len= 20
   E7A: 3D7C 000C 0012 '=|....'         MOVE    #12,18(A6)
   E80: 2D4B 0030      '-K.0'           MOVE.L  A3,48(A6)
   E84: 046D 0F00 FF22    -$DE          SUBI    #$F00,glob214(A5)
   E8A: 3032 4000      '02@.'           MOVE    0(A2,D4.W),D0
   E8E: 5740           'W@'             SUBQ    #3,D0
   E90: 0C72 0029 4004 '.r.)@.'         CMPI    #41,4(A2,D4.W) ; ')'
   E96: 66CC           2000E64          BNE     lfa_2
   E98: 486D 05B2      6000810          PEA     proc303(A5)
   E9C: 60C6           2000E64          BRA     lfa_2
   E9E: 6000 FB5C      20009FC lfa_4    BRA     proc125

   EA2:                                 QUAL    proc128 ; b# =226  s#2  =proc128

                                 ;-refs -  2/com_14     6/proc306   

   EA2: 3A04           ':.'    proc128  MOVE    D4,D5
   EA4: 0645 0012      '.E..'           ADDI    #18,D5
   EA8: 3C32 5000      '<2P.'           MOVE    0(A2,D5.W),D6
   EAC: 5346           'SF'             SUBQ    #1,D6
   EAE: BC72 4002      '.r@.'           CMP.W   2(A2,D4.W),D6
   EB2: 6700 0006      2000EBA          BEQ     lfb_1
   EB6: 4EFA 106E      2001F26          JMP     proc138
   EBA: 0C72 0006 5004 '.r..P. lfb_1    CMPI    #6,4(A2,D5.W)
   EC0: 660E           2000ED0          BNE.S   lfb_3
   EC2: 3032 4002      '02@.'           MOVE    2(A2,D4.W),D0
   EC6: 3D40 000C      '=@..'  lfb_2    MOVE    D0,12(A6)
   ECA: 426E 0008      'Bn..'           CLR     8(A6)
   ECE: 4E75           'Nu'             RTS     
   ED0: 0C72 001B 5004 '.r..P. lfb_3    CMPI    #27,4(A2,D5.W)
   ED6: 6628           2000F00          BNE.S   lfb_4
   ED8: 47FA F329      2000203          LEA     data71,A3   ; len= 20
   EDC: 3D7C 000C 0012 '=|....'         MOVE    #12,18(A6)
   EE2: 2D4B 0030      '-K.0'           MOVE.L  A3,48(A6)
   EE6: 046D 0F00 FF22    -$DE          SUBI    #$F00,glob214(A5)
   EEC: 3032 4002      '02@.'           MOVE    2(A2,D4.W),D0
   EF0: 5D40           ']@'             SUBQ    #6,D0
   EF2: 0C72 0029 4004 '.r.)@.'         CMPI    #41,4(A2,D4.W) ; ')'
   EF8: 66CC           2000EC6          BNE     lfb_2
   EFA: 486D 05B2      6000810          PEA     proc303(A5)
   EFE: 60C6           2000EC6          BRA     lfb_2
   F00: 6000 FAFA      20009FC lfb_4    BRA     proc125


   F04: '=|....=A.0=|...2'     data93   DC.W    $3D7C,5,$12,$3D41,$30,$3D7C,$A,$32
   F14: 'Bn.4Nu'                        DC.W    $426E,$34,$4E75

   F1A:                                 QUAL    com_7 ; b# =228  s#2  =com_7

                                 ;-refs -  2/proc124   

   F1A: 47FA 009E      2000FBA com_7    LEA     data96,A3   ; len= 248
   F1E: 2D4B 0030      '-K.0'           MOVE.L  A3,48(A6)

   F22:                                 QUAL    com_8 ; b# =229  s#2  =com_8

                                 ;-refs -  2/proc129   

   F22: 3F00           '?.'    com_8    PUSH    D0
   F24: 303C 0053      '0<.S'           MOVE    #83,D0
   F28: 4EAD 0042      10000BE          JSR     proc9(A5)
   F2C: 301F           '0.'             POP     D0
   F2E: 3D7C 002C 0012 '=|.,..'         MOVE    #44,18(A6)
   F34: 3D7C FFFF 0034 '=|...4'         MOVE    #$FFFF,52(A6)
   F3A: 426D FF22         -$DE          CLR     glob214(A5)
   F3E: 322E 000E      '2...'           MOVE    14(A6),D1
   F42: 2456           '$V'             MOVEA.L (A6),A2
   F44: 4EBA 1490      20023D6          JSR     proc140
   F48: 4E75           'Nu'             RTS     

   F4A:                                 QUAL    proc129 ; b# =230  s#2  =proc129

                                 ;-refs -  2/proc124   

   F4A: 47FA 005E      2000FAA proc129  LEA     data95,A3   ; len= 16
   F4E: 2D4B 0030      '-K.0'           MOVE.L  A3,48(A6)
   F52: 60CE           2000F22          BRA     com_8


   F54: '&n.0..H..C..H..C'     data94   DC.W    $266E,$30,$161B,$4883,$D043,$161B,$4883,$D243
   F64: '..H.C..L.."Q..H.'              DC.W    $161B,$4883,$43ED,$F44C,$D2C3,$2251,$141B,$4882
   F74: 'l..B..g.=|.(.4-K'              DC.W    $6C1A,$C42,$FFFE,$670C,$3D7C,$28,$34,$2D4B
   F84: '.0`.2...N..L m..'              DC.W    $30,$60CC,$322E,$E,$4EFA,$4C,$206D,$FFA0
   F94: 'Sn.4f.N..`n.-K.0'              DC.W    $536E,$34,$6604,$4EFA,$F560,$6E04,$2D4B,$30
   FA4: 'N...Nu'                        DC.W    $4EAD,$2E2,$4E75

                                 ;-refs -  2/proc129   

   FAA: '..D...D...D...D.'     data95   DC.W    $FBFA,$4400,$FBFA,$4401,$FBFA,$4400,$FBFA,$4401

                                 ;-refs -  2/com_7     

   FBA: '..D...D...D.....'     data96   DC.W    $FBFA,$4400,$FBFA,$4402,$FBFE,$4403,0,$FE
   FCA: '..H...H.......H.'              DC.W    $FB0A,$4800,$FB0A,$4801,0,$FF,$FB0A,$4802
   FDA: '=|.-..=|...2.n.2'              DC.W    $3D7C,$2D,$12,$3D7C,8,$32,$D26E,$32
   FEA: '\n.26...>20..A`.'              DC.W    $5C6E,$32,$362E,6,$3E32,$3000,$BE41,$6004
   FFA: 'XC`.n..z820..D..'              DC.W    $5843,$60F4,$6E00,$7A,$3832,$3002,$644,$12
  100A: '.r@.n:.r@.m..r..'              DC.W    $B072,$4002,$6E3A,$B072,$4000,$6DE4,$C72,$200
  101A: '@.l..r..@.g.>..G'              DC.W    $4004,$6CDC,$C72,$E,$4004,$67D4,$3E00,$647
  102A: '...r@.o..D..J.@.'              DC.W    $1E,$BE72,$4002,$6F12,$644,$12,$4AB2,$4000
  103A: 'g..r@.m.`.220.`.'              DC.W    $67BE,$BE72,$4000,$6DB8,$60E8,$3232,$3000,$600C
  104A: '.D..Jr@.g.`.=A..'              DC.W    $644,$12,$4A72,$4000,$67A6,$60B4,$3D41,$E
  105A: '=D..=C..G..f-K.0'              DC.W    $3D44,4,$3D43,6,$47FA,$FF66,$2D4B,$30
  106A: '=|.,..=|...4N...'              DC.W    $3D7C,$2C,$12,$3D7C,$FFFF,$34,$4EFA,$FEDC
  107A: '=C..=A..]A[@ m..'              DC.W    $3D43,6,$3D41,$E,$5D41,$5B40,$206D,$FFA0
  108A: '"m..4<..N...Nu=|'              DC.W    $226D,$F490,$343C,3,$4EAD,$2E2,$4E75,$3D7C
  109A: '.3..Bn.:=|...2-I'              DC.W    $33,$12,$426E,$3A,$3D7C,$A,$32,$2D49
  10AA: '.4=B.8` '                      DC.W    $34,$3D42,$38,$6020

  10B2:                                 QUAL    proc130 ; b# =234  s#2  =proc130


  10B2: 377C 0033 001A '7|.3.. proc130  MOVE    #51,26(A3)
  10B8: 377C 000A 003A '7|...:'         MOVE    #10,58(A3)
  10BE: 276D F4C8 003C   -$B38          MOVE.L  glob4(A5),60(A3)
  10C4: 426B 0040      'Bk.@'           CLR     64(A3)
  10C8: 377C 0001 0042 '7|...B'         MOVE    #1,66(A3)
  10CE: 6000 008C      200115C          BRA     com_9


  10D2: '.n.2Pn.26...>20.'     data97   DC.W    $D26E,$32,$506E,$32,$362E,6,$3E32,$3000
  10E2: '.A`.XC`.n..R820.'              DC.W    $BE41,$6004,$5843,$60F4,$6E00,$52,$3832,$3002
  10F2: '.D...r@.n".r@.m.'              DC.W    $644,$12,$B072,$4002,$6E22,$B072,$4000,$6DE4
  1102: '.r..@.l.Jn.:g..r'              DC.W    $C72,$200,$4004,$6C14,$4A6E,$3A,$6708,$C72
  1112: '..@.f.220.`..D..'              DC.W    $1D,$4004,$6606,$3232,$3000,$600C,$644,$12
  1122: 'Jr@.g.`.=A..=D..'              DC.W    $4A72,$4000,$67BE,$60CC,$3D41,$E,$3D44,4
  1132: '=C..:.N...Nu=D..'              DC.W    $3D43,6,$3A04,$4EBA,$F8C2,$4E75,$3D44,4
  1142: '=C..=A..]A m.."n'              DC.W    $3D43,6,$3D41,$E,$5D41,$206D,$FFA0,$226E
  1152: '.44..8N...'                    DC.W    $34,$342E,$38,$4EAD,$2E2

  115C:                                 QUAL    com_9 ; b# =236  s#2  =com_9

                                 ;-refs -  2/proc130   

  115C: 4E75           'Nu'    com_9    RTS     

  115E:                                 QUAL    com_10 ; b# =237  s#2  =com_10

                                 ;-refs -  2/proc120   

  115E: 266E 0030      '&n.0'  com_10   MOVEA.L 48(A6),A3
  1162: 1C2B 0002      '.+..'           MOVE.B  2(A3),D6
  1166: 4886           'H.'             EXT     D6
  1168: 1E2B 0003      '.+..'           MOVE.B  3(A3),D7
  116C: 4887           'H.'             EXT     D7
  116E: 0C46 001C      '.F..'           CMPI    #28,D6
  1172: 6608           200117C          BNE.S   lfh_1
  1174: 4242           'BB'             CLR     D2
  1176: 426E 003A      'Bn.:'           CLR     58(A6)
  117A: 6062           20011DE          BRA.S   lfh_7
  117C: 0C46 0020      '.F. '  lfh_1    CMPI    #32,D6
  1180: 660C           200118E          BNE.S   lfh_2
  1182: 343C 0004      '4<..'           MOVE    #4,D2
  1186: 3D7C 0001 003A '=|...:'         MOVE    #1,58(A6)
  118C: 6050           20011DE          BRA.S   lfh_7
  118E: 0C46 0038      '.F.8'  lfh_2    CMPI    #56,D6 ; '8'
  1192: 661C           20011B0          BNE.S   lfh_4
  1194: 0C47 0002      '.G..'           CMPI    #2,D7
  1198: 6E0A           20011A4          BGT.S   lfh_3
  119A: 343C 0001      '4<..'           MOVE    #1,D2
  119E: 426E 003A      'Bn.:'           CLR     58(A6)
  11A2: 603A           20011DE          BRA.S   lfh_7
  11A4: 343C 0003      '4<..'  lfh_3    MOVE    #3,D2
  11A8: 3D7C 0001 003A '=|...:'         MOVE    #1,58(A6)
  11AE: 602E           20011DE          BRA.S   lfh_7
  11B0: 0C46 0034      '.F.4'  lfh_4    CMPI    #52,D6 ; '4'
  11B4: 661C           20011D2          BNE.S   lfh_6
  11B6: 0C47 0000      '.G..'           CMPI    #0,D7
  11BA: 660A           20011C6          BNE.S   lfh_5
  11BC: 343C 0001      '4<..'           MOVE    #1,D2
  11C0: 426E 003A      'Bn.:'           CLR     58(A6)
  11C4: 6018           20011DE          BRA.S   lfh_7
  11C6: 343C 0003      '4<..'  lfh_5    MOVE    #3,D2
  11CA: 3D7C 0001 003A '=|...:'         MOVE    #1,58(A6)
  11D0: 600C           20011DE          BRA.S   lfh_7
  11D2: 343C 0002      '4<..'  lfh_6    MOVE    #2,D2
  11D6: 3D7C 0002 003A '=|...:'         MOVE    #2,58(A6)
  11DC: 4E71           'Nq'             NOP     
  11DE: 3D72 4006 0032 '=r@..2 lfh_7    MOVE    6(A2,D4.W),50(A6)
  11E4: 3D42 0010      '=B..'           MOVE    D2,16(A6)
  11E8: 3032 4008      '02@.'           MOVE    8(A2,D4.W),D0
  11EC: 3D40 000C      '=@..'           MOVE    D0,12(A6)
  11F0: 3D7C 0041 0012 '=|.A..'         MOVE    #65,18(A6)
  11F6: 3D7C 0001 0030 '=|...0'         MOVE    #1,48(A6)
  11FC: 6000 0004      2001202          BRA     lfh_8

  1200: 4E75                   data98   DC.B    'Nu'

  1202: 206D FFA0         -$60 lfh_8    MOVEA.L glob253(A5),A0
  1206: 302E 000C      '0...'           MOVE    12(A6),D0
  120A: 322E 000E      '2...'           MOVE    14(A6),D1
  120E: 4A6E 0032      'Jn.2'           TST     50(A6)
  1212: 6D06           200121A          BLT.S   lfh_9
  1214: 226D F55C        -$AA4          MOVEA.L glob15(A5),A1
  1218: 6004           200121E          BRA.S   lfh_10
  121A: 226D F560        -$AA0 lfh_9    MOVEA.L glob16(A5),A1
  121E: 342E 0010      '4...'  lfh_10   MOVE    16(A6),D2
  1222: 0641 001F      '.A..'           ADDI    #31,D1
  1226: 4EAD 02E2      3000000          JSR     proc146(A5)
  122A: 536E 0030      'Sn.0'           SUBQ    #1,48(A6)
  122E: 6E4A           200127A          BGT.S   lfh_13
  1230: 4A6E 0032      'Jn.2'           TST     50(A6)
  1234: 6D0A           2001240          BLT.S   lfh_11
  1236: 226D F564        -$A9C          MOVEA.L glob17(A5),A1
  123A: 0640 0016      '.@..'           ADDI    #22,D0
  123E: 6008           2001248          BRA.S   lfh_12
  1240: 226D F568        -$A98 lfh_11   MOVEA.L glob18(A5),A1
  1244: 0640 FFFD      '.@..'           ADDI    #-3,D0
  1248: 3D40 000C      '=@..'  lfh_12   MOVE    D0,12(A6)
  124C: 0641 0013      '.A..'           ADDI    #19,D1
  1250: 3D41 000E      '=A..'           MOVE    D1,14(A6)
  1254: 2D49 0036      '-I.6'           MOVE.L  A1,54(A6)
  1258: 3D7C FF38 0030 '=|.8.0'         MOVE    #$FF38,48(A6)
  125E: 3D7C 0005 0012 '=|....'         MOVE    #5,18(A6)
  1264: 3D6E 003A 0010 '=n.:..'         MOVE    58(A6),16(A6)
  126A: 3D7C 0001 0034 '=|...4'         MOVE    #1,52(A6)
  1270: 3D7C 000A 0032 '=|...2'         MOVE    #10,50(A6)
  1276: 586E 0006      'Xn..'           ADDQ    #4,6(A6)
  127A: 4E75           'Nu'    lfh_13   RTS     

  127C:                                 QUAL    proc131 ; b# =239  s#2  =proc131

                                 ;-refs -  2/com_35     7/proc310   

  127C: 536E 0030      'Sn.0'  proc131  SUBQ    #1,48(A6)
  1280: 6E0A           200128C          BGT.S   lfi_1
  1282: 536E 0032      'Sn.2'           SUBQ    #1,50(A6)
  1286: 6E14           200129C          BGT.S   lfi_2
  1288: 4EFA F272      20004FC          JMP     proc121
  128C: 206D FFA0         -$60 lfi_1    MOVEA.L glob253(A5),A0
  1290: 226E 001A      '"n..'           MOVEA.L 26(A6),A1
  1294: 342E 0010      '4...'           MOVE    16(A6),D2
  1298: 4EAD 02E2      3000000          JSR     proc146(A5)
  129C: 4E75           'Nu'    lfi_2    RTS     


  129E: 'Sn.0n"Sn.2n,E...'     data99   DC.W    $536E,$30,$6E22,$536E,$32,$6E2C,$45FA,8
  12AE: 'BEN..r..........'              DC.W    $4245,$4EFA,$FB72,1,2,5,0,0
  12BE: '........ m.."m..'              DC.W    0,0,0,0,$206D,$FFA0,$226D,$F408
  12CE: '4<..N...Nu'                    DC.W    $343C,1,$4EAD,$2E2,$4E75

  12D8:                                 QUAL    proc132 ; b# =241  s#2  =proc132

                                 ;-refs -  2/com_17     2/com_24     2/proc139   
                                 ;-        2/data112    6/proc302    6/proc304   
                                 ;-        6/proc306    7/proc310    8/proc320   
                                 ;-        8/proc325    8/proc326    9/proc335   
                                 ;-       11/proc345   13/proc356   15/proc362   

  12D8: 082E 0002 0014 '...... proc132  BTST    #2,20(A6)
  12DE: 6714           20012F4          BEQ.S   lfj_2
  12E0: 082E 0004 0015 '......'         BTST    #4,21(A6)
  12E6: 6708           20012F0          BEQ.S   lfj_1
  12E8: 08AE 0003 0014 '......'         BCLR    #3,20(A6)
  12EE: 6004           20012F4          BRA.S   lfj_2
  12F0: 4EBA 1118      200240A lfj_1    JSR     proc141
  12F4: 082E 0004 0015 '...... lfj_2    BTST    #4,21(A6)
  12FA: 6760           200135C          BEQ.S   com_11
  12FC: 082E 0003 0014 '......'         BTST    #3,20(A6)
  1302: 6700 00E4      20013E8          BEQ     com_12
  1306: 343C 0001      '4<..'           MOVE    #1,D2
  130A: 082E 0001 0014 '......'         BTST    #1,20(A6)
  1310: 6700 00E8      20013FA          BEQ     com_13
  1314: 4A6D FF28         -$D8          TST     glob217(A5)
  1318: 6700 00E0      20013FA          BEQ     com_13
  131C: 4A2D FF27         -$D9          TST.B   glob216(A5)
  1320: 6600 00D8      20013FA          BNE     com_13
  1324: 536D FF28         -$D8          SUBQ    #1,glob217(A5)
  1328: 08AE 0001 0014 '......'         BCLR    #1,20(A6)
  132E: 48A7 C800      'H...'           MOVEM   D0-D1/D4,-(A7)
  1332: 204A           ' J'             MOVEA.L A2,A0
  1334: D0C4           '..'             ADDA.W  D4,A0
  1336: 4A6E 001E      'Jn..'           TST     30(A6)
  133A: 6C06           2001342          BGE.S   lfj_3
  133C: 0440 000A      '.@..'           SUBI    #10,D0
  1340: 6004           2001346          BRA.S   lfj_4
  1342: 0640 000A      '.@..'  lfj_3    ADDI    #10,D0
  1346: 3404           '4.'    lfj_4    MOVE    D4,D2
  1348: 362E 0006      '6...'           MOVE    6(A6),D3
  134C: 4EAD 040A      3002FEE          JSR     proc196(A5)
  1350: 4C9F 0013      'L...'           MOVEM   (A7)+,D0-D1/D4
  1354: 343C 0002      '4<..'           MOVE    #2,D2
  1358: 6000 00A0      20013FA          BRA     com_13

  135C:                                 QUAL    com_11 ; b# =242  s#2  =com_11

                                 ;-refs -  2/proc132   

  135C: 082E 0003 0014 '...... com_11   BTST    #3,20(A6)
  1362: 6700 00B6      200141A          BEQ     com_14
  1366: 08EE 0004 0015 '......'         BSET    #4,21(A6)
  136C: 4242           'BB'             CLR     D2
  136E: 5041           'PA'             ADDQ    #8,D1
  1370: 066E 0011 000E '.n....'         ADDI    #17,14(A6)
  1376: 4A6E 001E      'Jn..'           TST     30(A6)
  137A: 6E44           20013C0          BGT.S   lfk_2
  137C: 3A04           ':.'             MOVE    D4,D5
  137E: 0445 0012      '.E..'           SUBI    #18,D5
  1382: 0C72 001B 5004 '.r..P.'         CMPI    #27,4(A2,D5.W)
  1388: 6670           20013FA          BNE.S   com_13
  138A: 3C00           '<.'             MOVE    D0,D6
  138C: 5946           'YF'             SUBQ    #4,D6
  138E: BC72 5002      '.rP.'           CMP.W   2(A2,D5.W),D6
  1392: 6E66           20013FA          BGT.S   com_13
  1394: 47FA EE81      2000217          LEA     data72,A3   ; len= 20
  1398: 3032 4000      '02@.'           MOVE    0(A2,D4.W),D0
  139C: 5640           'V@'             ADDQ    #3,D0
  139E: 3D7C 000C 0012 '=|.... lfk_1    MOVE    #12,18(A6)
  13A4: 3D40 000C      '=@..'           MOVE    D0,12(A6)
  13A8: 2D4B 0030      '-K.0'           MOVE.L  A3,48(A6)
  13AC: 046D 0F00 FF22    -$DE          SUBI    #$F00,glob214(A5)
  13B2: 046E 0011 000E '.n....'         SUBI    #17,14(A6)
  13B8: 08AE 0004 0015 '......'         BCLR    #4,21(A6)
  13BE: 603A           20013FA          BRA.S   com_13
  13C0: 3A04           ':.'    lfk_2    MOVE    D4,D5
  13C2: 0645 0012      '.E..'           ADDI    #18,D5
  13C6: 0C72 001B 5004 '.r..P.'         CMPI    #27,4(A2,D5.W)
  13CC: 662C           20013FA          BNE.S   com_13
  13CE: 3C00           '<.'             MOVE    D0,D6
  13D0: 0646 000A      '.F..'           ADDI    #10,D6
  13D4: BC72 5000      '.rP.'           CMP.W   0(A2,D5.W),D6
  13D8: 6D20           20013FA          BLT.S   com_13
  13DA: 47FA EE4F      200022B          LEA     data73,A3   ; len= 61
  13DE: 3032 4002      '02@.'           MOVE    2(A2,D4.W),D0
  13E2: 0440 000C      '.@..'           SUBI    #12,D0
  13E6: 60B6           200139E          BRA     lfk_1

  13E8:                                 QUAL    com_12 ; b# =243  s#2  =com_12

                                 ;-refs -  2/proc132   

  13E8: 4242           'BB'    com_12   CLR     D2
  13EA: 08AE 0004 0015 '......'         BCLR    #4,21(A6)
  13F0: 0441 0009      '.A..'           SUBI    #9,D1
  13F4: 046E 0011 000E '.n....'         SUBI    #17,14(A6)

  13FA:                                 QUAL    com_13 ; b# =244  s#2  =com_13

                                 ;-refs -  2/proc132    2/com_11    

  13FA: 206D FFA0         -$60 com_13   MOVEA.L glob253(A5),A0
  13FE: 286E 0016      '(n..'           MOVEA.L 22(A6),A4
  1402: 4A6E 001E      'Jn..'           TST     30(A6)
  1406: 6D06           200140E          BLT.S   lfm_1
  1408: 226C 0050      '"l.P'           MOVEA.L 80(A4),A1
  140C: 6004           2001412          BRA.S   lfm_2
  140E: 226C 004C      '"l.L'  lfm_1    MOVEA.L 76(A4),A1
  1412: 4EAD 02E2      3000000 lfm_2    JSR     proc146(A5)
  1416: 6000 00D0      20014E8          BRA     com_15

  141A:                                 QUAL    com_14 ; b# =245  s#2  =com_14

                                 ;-refs -  2/com_11    

  141A: 082E 0000 0014 '...... com_14   BTST    #0,20(A6)
  1420: 670A           200142C          BEQ.S   lfn_1
  1422: 3D7C 0003 0012 '=|....'         MOVE    #3,18(A6)
  1428: 6000 0064      200148E          BRA     lfn_6
  142C: D06E 0008      '.n..'  lfn_1    ADD     8(A6),D0
  1430: 0C6E 0004 0010 '.n....'         CMPI    #4,16(A6)
  1436: 6604           200143C          BNE.S   lfn_2
  1438: D06E 0008      '.n..'           ADD     8(A6),D0
  143C: B072 4000      '.r@.'  lfn_2    CMP.W   0(A2,D4.W),D0
  1440: 6C08           200144A          BGE.S   lfn_3
  1442: 4EBA F9FC      2000E40          JSR     proc127
  1446: 4EFA 19FE      2002E46          JMP     proc142
  144A: B072 4002      '.r@.'  lfn_3    CMP.W   2(A2,D4.W),D0
  144E: 6F08           2001458          BLE.S   lfn_4
  1450: 4EBA FA50      2000EA2          JSR     proc128
  1454: 4EFA 19F0      2002E46          JMP     proc142
  1458: 3D40 000C      '=@..'  lfn_4    MOVE    D0,12(A6)
  145C: 342E 0010      '4...'           MOVE    16(A6),D2
  1460: 286E 0016      '(n..'           MOVEA.L 22(A6),A4
  1464: 4A6E 0008      'Jn..'           TST     8(A6)
  1468: 6724           200148E          BEQ.S   lfn_6
  146A: 6E10           200147C          BGT.S   lfn_5
  146C: 2254           '"T'             MOVEA.L (A4),A1
  146E: 2D49 001A      '-I..'           MOVE.L  A1,26(A6)
  1472: 3D7C FFFF 001E '=|....'         MOVE    #$FFFF,30(A6)
  1478: 5242           'RB'             ADDQ    #1,D2
  147A: 6042           20014BE          BRA.S   lfn_8
  147C: 226C 0004      '"l..'  lfn_5    MOVEA.L 4(A4),A1
  1480: 2D49 001A      '-I..'           MOVE.L  A1,26(A6)
  1484: 3D7C 0001 001E '=|....'         MOVE    #1,30(A6)
  148A: 5242           'RB'             ADDQ    #1,D2
  148C: 6030           20014BE          BRA.S   lfn_8
  148E: 206D FFA0         -$60 lfn_6    MOVEA.L glob253(A5),A0
  1492: 286E 0016      '(n..'           MOVEA.L 22(A6),A4
  1496: 226C 0018      '"l..'           MOVEA.L 24(A4),A1
  149A: 426E 0010      'Bn..'           CLR     16(A6)
  149E: 4A6E 001E      'Jn..'           TST     30(A6)
  14A2: 6D0E           20014B2          BLT.S   lfn_7
  14A4: 343C 0003      '4<..'           MOVE    #3,D2
  14A8: 4EAD 02E2      3000000          JSR     proc146(A5)
  14AC: 4EBA 2004      20034B2          JSR     proc145
  14B0: 6036           20014E8          BRA.S   com_15
  14B2: 4242           'BB'    lfn_7    CLR     D2
  14B4: 4EBA 1FFC      20034B2          JSR     proc145
  14B8: 4EAD 02E2      3000000          JSR     proc146(A5)
  14BC: 602A           20014E8          BRA.S   com_15
  14BE: B469 0002      '.i..'  lfn_8    CMP.W   2(A1),D2
  14C2: 6D02           20014C6          BLT.S   lfn_9
  14C4: 4242           'BB'             CLR     D2
  14C6: 3D42 0010      '=B..'  lfn_9    MOVE    D2,16(A6)
  14CA: 206D FFA0         -$60          MOVEA.L glob253(A5),A0
  14CE: 0C42 0000      '.B..'           CMPI    #0,D2
  14D2: 6706           20014DA          BEQ.S   lfn_10
  14D4: 0C42 0003      '.B..'           CMPI    #3,D2
  14D8: 660A           20014E4          BNE.S   lfn_11
  14DA: 3F00           '?.'    lfn_10   PUSH    D0
  14DC: 4240           'B@'             CLR     D0
  14DE: 4EAD 0042      10000BE          JSR     proc9(A5)
  14E2: 301F           '0.'             POP     D0
  14E4: 4EAD 02E2      3000000 lfn_11   JSR     proc146(A5)

  14E8:                                 QUAL    com_15 ; b# =246  s#2  =com_15

                                 ;-refs -  2/com_13     2/com_14    

  14E8: 4EFA F10C      20005F6 com_15   JMP     proc124

  14EC:                                 QUAL    com_16 ; b# =247  s#2  =com_16

                                 ;-refs -  2/com_16     2/com_17    

  14EC: 342E 0010      '4...'  com_16   MOVE    16(A6),D2
  14F0: 3A2E 0030      ':..0'           MOVE    48(A6),D5
  14F4: 286E 0016      '(n..'           MOVEA.L 22(A6),A4
  14F8: 226C 0008      '"l..'           MOVEA.L 8(A4),A1
  14FC: 4A6E 000A      'Jn..'           TST     10(A6)
  1500: 663A           200153C          BNE.S   lfp_3
  1502: 4A6E 0032      'Jn.2'           TST     50(A6)
  1506: 6614           200151C          BNE.S   lfp_1
  1508: 3F00           '?.'             PUSH    D0
  150A: 303C 000E      '0<..'           MOVE    #14,D0
  150E: 4EAD 004A      10000FA          JSR     proc10(A5)
  1512: 301F           '0.'             POP     D0
  1514: 426E 0034      'Bn.4'           CLR     52(A6)
  1518: 6000 00E4      20015FE          BRA     lfp_11
  151C: 536E 0034      'Sn.4'  lfp_1    SUBQ    #1,52(A6)
  1520: 6E12           2001534          BGT.S   lfp_2
  1522: 3F00           '?.'             PUSH    D0
  1524: 303C 000E      '0<..'           MOVE    #14,D0
  1528: 4EAD 0042      10000BE          JSR     proc9(A5)
  152C: 301F           '0.'             POP     D0
  152E: 3D7C 0008 0034 '=|...4'         MOVE    #8,52(A6)
  1534: 4A6E 0032      'Jn.2'  lfp_2    TST     50(A6)
  1538: 6D6E           20015A8          BLT.S   lfp_8
  153A: 6E22           200155E          BGT.S   lfp_5
  153C: 426E 0032      'Bn.2'  lfp_3    CLR     50(A6)
  1540: 536E 0034      'Sn.4'           SUBQ    #1,52(A6)
  1544: 6E12           2001558          BGT.S   lfp_4
  1546: 3F00           '?.'             PUSH    D0
  1548: 303C 000E      '0<..'           MOVE    #14,D0
  154C: 4EAD 0042      10000BE          JSR     proc9(A5)
  1550: 301F           '0.'             POP     D0
  1552: 3D7C 0008 0034 '=|...4'         MOVE    #8,52(A6)
  1558: 4A6E 000A      'Jn..'  lfp_4    TST     10(A6)
  155C: 6D4A           20015A8          BLT.S   lfp_8
  155E: 0641 000A      '.A..'  lfp_5    ADDI    #10,D1
  1562: 3632 400C      '62@.'           MOVE    12(A2,D4.W),D3
  1566: B272 3000      '.r0.'           CMP.W   0(A2,D3.W),D1
  156A: 6D30           200159C          BLT.S   lfp_7
  156C: 3232 3000      '220.'           MOVE    0(A2,D3.W),D1
  1570: 3D41 000E      '=A..'           MOVE    D1,14(A6)
  1574: 0C72 0027 5004 '.r.'P.'         CMPI    #39,4(A2,D5.W) ; '''
  157A: 6718           2001594          BEQ.S   lfp_6
  157C: 3D7C 0002 0012 '=|....'         MOVE    #2,18(A6)
  1582: 3D45 0004      '=E..'           MOVE    D5,4(A6)
  1586: 3805           '8.'             MOVE    D5,D4
  1588: 3D43 0006      '=C..'           MOVE    D3,6(A6)
  158C: 426E 0032      'Bn.2'           CLR     50(A6)
  1590: 6000 0080      2001612          BRA     com_17
  1594: 0645 0012      '.E..'  lfp_6    ADDI    #18,D5
  1598: 4EFA F88A      2000E24          JMP     proc126
  159C: 5242           'RB'    lfp_7    ADDQ    #1,D2
  159E: B469 0002      '.i..'           CMP.W   2(A1),D2
  15A2: 6D5A           20015FE          BLT.S   lfp_11
  15A4: 4242           'BB'             CLR     D2
  15A6: 6056           20015FE          BRA.S   lfp_11
  15A8: 0441 000A      '.A..'  lfp_8    SUBI    #10,D1
  15AC: 3632 500A      '62P.'           MOVE    10(A2,D5.W),D3
  15B0: 3C32 3000      '<20.'           MOVE    0(A2,D3.W),D6
  15B4: 0646 0028      '.F.('           ADDI    #40,D6
  15B8: B246           '.F'             CMP.W   D6,D1
  15BA: 6E36           20015F2          BGT.S   lfp_10
  15BC: 0C72 0026 4004 '.r.&@.'         CMPI    #38,4(A2,D4.W) ; '&'
  15C2: 6724           20015E8          BEQ.S   lfp_9
  15C4: 3D7C 000F 0012 '=|....'         MOVE    #15,18(A6)
  15CA: 426E 0010      'Bn..'           CLR     16(A6)
  15CE: 0641 000A      '.A..'           ADDI    #10,D1
  15D2: 3206           '2.'             MOVE    D6,D1
  15D4: 3D41 000E      '=A..'           MOVE    D1,14(A6)
  15D8: 3D44 0004      '=D..'           MOVE    D4,4(A6)
  15DC: 3D43 0006      '=C..'           MOVE    D3,6(A6)
  15E0: 426E 0032      'Bn.2'           CLR     50(A6)
  15E4: 6000 00E0      20016C6          BRA     com_18
  15E8: 3A04           ':.'    lfp_9    MOVE    D4,D5
  15EA: 0645 0012      '.E..'           ADDI    #18,D5
  15EE: 4EFA F834      2000E24          JMP     proc126
  15F2: 5342           'SB'    lfp_10   SUBQ    #1,D2
  15F4: 6C08           20015FE          BGE.S   lfp_11
  15F6: 3429 0002      '4)..'           MOVE    2(A1),D2
  15FA: 5342           'SB'             SUBQ    #1,D2
  15FC: 4E71           'Nq'             NOP     
  15FE: 206D FFA0         -$60 lfp_11   MOVEA.L glob253(A5),A0
  1602: 3D42 0010      '=B..'           MOVE    D2,16(A6)
  1606: 3D41 000E      '=A..'           MOVE    D1,14(A6)
  160A: 4EAD 02E2      3000000          JSR     proc146(A5)
  160E: 4EFA EFE6      20005F6          JMP     proc124

  1612:                                 QUAL    com_17 ; b# =248  s#2  =com_17

                                 ;-refs -  2/com_16     2/com_17     2/com_34    

  1612: 0C72 002F 4004 '.r./@. com_17   CMPI    #47,4(A2,D4.W) ; '/'
  1618: 660E           2001628          BNE.S   lfq_1
  161A: 3D7C 0039 0012 '=|.9..'         MOVE    #57,18(A6)
  1620: 426E 0030      'Bn.0'           CLR     48(A6)
  1624: 4EFA 0EDC      2002502          JMP     com_34
  1628: 4A6E 0032      'Jn.2'  lfq_1    TST     50(A6)
  162C: 6612           2001640          BNE.S   lfq_3
  162E: 082E 0004 0015 '......'         BTST    #4,21(A6)
  1634: 6606           200163C          BNE.S   lfq_2
  1636: 4A6E 000A      'Jn..'           TST     10(A6)
  163A: 6604           2001640          BNE.S   lfq_3
  163C: 4EFA FC9A      20012D8 lfq_2    JMP     proc132
  1640: 6A44           2001686 lfq_3    BPL.S   lfq_6
  1642: 363C 0002      '6<..'           MOVE    #2,D3
  1646: B672 4004      '.r@.'           CMP.W   4(A2,D4.W),D3
  164A: 6604           2001650          BNE.S   lfq_4
  164C: 4EFA FC8A      20012D8          JMP     proc132
  1650: 0C72 0027 4004 '.r.'@. lfq_4    CMPI    #39,4(A2,D4.W) ; '''
  1656: 6704           200165C          BEQ.S   lfq_5
  1658: 426E 0032      'Bn.2'           CLR     50(A6)
  165C: 3D7C 0001 0012 '=|.... lfq_5    MOVE    #1,18(A6)
  1662: 3D44 0030      '=D.0'           MOVE    D4,48(A6)
  1666: 3032 4000      '02@.'           MOVE    0(A2,D4.W),D0
  166A: 3832 4006      '82@.'           MOVE    6(A2,D4.W),D4
  166E: 3D44 0004      '=D..'           MOVE    D4,4(A6)
  1672: 3D40 000C      '=@..'           MOVE    D0,12(A6)
  1676: 526E 000C      'Rn..'           ADDQ    #1,12(A6)
  167A: 426E 0010      'Bn..'           CLR     16(A6)
  167E: 426E 0034      'Bn.4'           CLR     52(A6)
  1682: 6000 FE68      20014EC          BRA     com_16
  1686: 363C 0003      '6<..'  lfq_6    MOVE    #3,D3
  168A: B672 4004      '.r@.'           CMP.W   4(A2,D4.W),D3
  168E: 6604           2001694          BNE.S   lfq_7
  1690: 4EFA FC46      20012D8          JMP     proc132
  1694: 0C72 0026 4004 '.r.&@. lfq_7    CMPI    #38,4(A2,D4.W) ; '&'
  169A: 6704           20016A0          BEQ.S   lfq_8
  169C: 426E 0032      'Bn.2'           CLR     50(A6)
  16A0: 3D7C 000E 0012 '=|.... lfq_8    MOVE    #14,18(A6)
  16A6: 3D44 0004      '=D..'           MOVE    D4,4(A6)
  16AA: 3D72 4008 0030 '=r@..0'         MOVE    8(A2,D4.W),48(A6)
  16B0: 3032 4000      '02@.'           MOVE    0(A2,D4.W),D0
  16B4: 3D40 000C      '=@..'           MOVE    D0,12(A6)
  16B8: 526E 000C      'Rn..'           ADDQ    #1,12(A6)
  16BC: 3D7C 0003 0010 '=|....'         MOVE    #3,16(A6)
  16C2: 6000 003E      2001702          BRA     com_19

  16C6:                                 QUAL    com_18 ; b# =249  s#2  =com_18

                                 ;-refs -  2/com_16     2/com_18    

  16C6: 342E 0010      '4...'  com_18   MOVE    16(A6),D2
  16CA: 206D FFA0         -$60          MOVEA.L glob253(A5),A0
  16CE: 286E 0016      '(n..'           MOVEA.L 22(A6),A4
  16D2: 226C 000C      '"l..'           MOVEA.L 12(A4),A1
  16D6: 0441 000A      '.A..'           SUBI    #10,D1
  16DA: 4EAD 02E2      3000000          JSR     proc146(A5)
  16DE: 5242           'RB'             ADDQ    #1,D2
  16E0: B469 0002      '.i..'           CMP.W   2(A1),D2
  16E4: 6D10           20016F6          BLT.S   lfr_1
  16E6: 4242           'BB'             CLR     D2
  16E8: 3D7C 0002 0012 '=|....'         MOVE    #2,18(A6)
  16EE: 362E 0006      '6...'           MOVE    6(A6),D3
  16F2: 3232 3000      '220.'           MOVE    0(A2,D3.W),D1
  16F6: 3D42 0010      '=B..'  lfr_1    MOVE    D2,16(A6)
  16FA: 3D41 000E      '=A..'           MOVE    D1,14(A6)
  16FE: 4EFA EEF6      20005F6          JMP     proc124

  1702:                                 QUAL    com_19 ; b# =250  s#2  =com_19

                                 ;-refs -  2/com_17     2/com_19    

  1702: 342E 0010      '4...'  com_19   MOVE    16(A6),D2
  1706: 206D FFA0         -$60          MOVEA.L glob253(A5),A0
  170A: 286E 0016      '(n..'           MOVEA.L 22(A6),A4
  170E: 226C 000C      '"l..'           MOVEA.L 12(A4),A1
  1712: 4EAD 02E2      3000000          JSR     proc146(A5)
  1716: 5342           'SB'             SUBQ    #1,D2
  1718: 6C12           200172C          BGE.S   lfs_1
  171A: 4242           'BB'             CLR     D2
  171C: 3D7C 0001 0012 '=|....'         MOVE    #1,18(A6)
  1722: 426E 0034      'Bn.4'           CLR     52(A6)
  1726: 046E 000A 000E '.n....'         SUBI    #10,14(A6)
  172C: 3D42 0010      '=B..'  lfs_1    MOVE    D2,16(A6)
  1730: 066E 000A 000E '.n....'         ADDI    #10,14(A6)
  1736: 4EFA EEBE      20005F6          JMP     proc124

  173A:                                 QUAL    com_20 ; b# =251  s#2  =com_20

                                 ;-refs -  2/com_20     2/com_24    

  173A: 342E 0010      '4...'  com_20   MOVE    16(A6),D2
  173E: 3A2E 0030      ':..0'           MOVE    48(A6),D5
  1742: 286E 0016      '(n..'           MOVEA.L 22(A6),A4
  1746: 4A6E 000A      'Jn..'           TST     10(A6)
  174A: 6700 00F0      200183C          BEQ     com_22
  174E: 6D7C           20017CC          BLT.S   com_21
  1750: 4A6E 0034      'Jn.4'           TST     52(A6)
  1754: 6D10           2001766          BLT.S   lft_1
  1756: 3D7C 0001 001E '=|....'         MOVE    #1,30(A6)
  175C: 3E3C 0012      '><..'           MOVE    #18,D7
  1760: 226C 0020      '"l. '           MOVEA.L 32(A4),A1
  1764: 600E           2001774          BRA.S   lft_2
  1766: 3D7C FFFF 001E '=|.... lft_1    MOVE    #$FFFF,30(A6)
  176C: 3E3C FFEE      '><..'           MOVE    #$FFEE,D7
  1770: 226C 0028      '"l.('           MOVEA.L 40(A4),A1
  1774: 3632 400C      '62@.'  lft_2    MOVE    12(A2,D4.W),D3
  1778: 3C32 3000      '<20.'           MOVE    0(A2,D3.W),D6
  177C: 0446 0009      '.F..'           SUBI    #9,D6
  1780: B246           '.F'             CMP.W   D6,D1
  1782: 6D1C           20017A0          BLT.S   lft_3
  1784: 3D7C 0008 0012 '=|....'         MOVE    #8,18(A6)
  178A: 3232 3000      '220.'           MOVE    0(A2,D3.W),D1
  178E: 3D41 000E      '=A..'           MOVE    D1,14(A6)
  1792: 3D45 0004      '=E..'           MOVE    D5,4(A6)
  1796: 3805           '8.'             MOVE    D5,D4
  1798: 3D43 0006      '=C..'           MOVE    D3,6(A6)
  179C: 6000 00C0      200185E          BRA     com_24
  17A0: 5242           'RB'    lft_3    ADDQ    #1,D2
  17A2: 0C42 0000      '.B..'           CMPI    #0,D2
  17A6: 6706           20017AE          BEQ.S   lft_4
  17A8: 0C42 0003      '.B..'           CMPI    #3,D2
  17AC: 660A           20017B8          BNE.S   lft_5
  17AE: 3F00           '?.'    lft_4    PUSH    D0
  17B0: 4240           'B@'             CLR     D0
  17B2: 4EAD 0042      10000BE          JSR     proc9(A5)
  17B6: 301F           '0.'             POP     D0
  17B8: B469 0002      '.i..'  lft_5    CMP.W   2(A1),D2
  17BC: 6D00 0082      2001840          BLT     com_23
  17C0: D047           '.G'             ADD     D7,D0
  17C2: 0641 000A      '.A..'           ADDI    #10,D1
  17C6: 4242           'BB'             CLR     D2
  17C8: 6000 0076      2001840          BRA     com_23

  17CC:                                 QUAL    com_21 ; b# =252  s#2  =com_21

                                 ;-refs -  2/com_20    

  17CC: 4A6E 0034      'Jn.4'  com_21   TST     52(A6)
  17D0: 6D10           20017E2          BLT.S   lfu_1
  17D2: 3D7C FFFF 001E '=|....'         MOVE    #$FFFF,30(A6)
  17D8: 3E3C FFEE      '><..'           MOVE    #$FFEE,D7
  17DC: 226C 0024      '"l.$'           MOVEA.L 36(A4),A1
  17E0: 600E           20017F0          BRA.S   lfu_2
  17E2: 3D7C 0001 001E '=|.... lfu_1    MOVE    #1,30(A6)
  17E8: 3E3C 0012      '><..'           MOVE    #18,D7
  17EC: 226C 001C      '"l..'           MOVEA.L 28(A4),A1
  17F0: 3632 500A      '62P.'  lfu_2    MOVE    10(A2,D5.W),D3
  17F4: B272 3000      '.r0.'           CMP.W   0(A2,D3.W),D1
  17F8: 6E1A           2001814          BGT.S   lfu_3
  17FA: 3D7C 0008 0012 '=|....'         MOVE    #8,18(A6)
  1800: 3232 3000      '220.'           MOVE    0(A2,D3.W),D1
  1804: 3D41 000E      '=A..'           MOVE    D1,14(A6)
  1808: 3D44 0004      '=D..'           MOVE    D4,4(A6)
  180C: 3D43 0006      '=C..'           MOVE    D3,6(A6)
  1810: 6000 004C      200185E          BRA     com_24
  1814: 5242           'RB'    lfu_3    ADDQ    #1,D2
  1816: 0C42 0000      '.B..'           CMPI    #0,D2
  181A: 6706           2001822          BEQ.S   lfu_4
  181C: 0C42 0003      '.B..'           CMPI    #3,D2
  1820: 660A           200182C          BNE.S   lfu_5
  1822: 3F00           '?.'    lfu_4    PUSH    D0
  1824: 4240           'B@'             CLR     D0
  1826: 4EAD 0042      10000BE          JSR     proc9(A5)
  182A: 301F           '0.'             POP     D0
  182C: B469 0002      '.i..'  lfu_5    CMP.W   2(A1),D2
  1830: 6D0E           2001840          BLT.S   com_23
  1832: 4242           'BB'             CLR     D2
  1834: D047           '.G'             ADD     D7,D0
  1836: 0441 000A      '.A..'           SUBI    #10,D1
  183A: 6004           2001840          BRA.S   com_23

  183C:                                 QUAL    com_22 ; b# =253  s#2  =com_22

                                 ;-refs -  2/com_20    

  183C: 226E 001A      '"n..'  com_22   MOVEA.L 26(A6),A1

  1840:                                 QUAL    com_23 ; b# =254  s#2  =com_23

                                 ;-refs -  2/com_20     2/com_21    

  1840: 206D FFA0         -$60 com_23   MOVEA.L glob253(A5),A0
  1844: 3D42 0010      '=B..'           MOVE    D2,16(A6)
  1848: 3D40 000C      '=@..'           MOVE    D0,12(A6)
  184C: 3D41 000E      '=A..'           MOVE    D1,14(A6)
  1850: 2D49 001A      '-I..'           MOVE.L  A1,26(A6)
  1854: 5341           'SA'             SUBQ    #1,D1
  1856: 4EAD 02E2      3000000          JSR     proc146(A5)
  185A: 4EFA ED9A      20005F6          JMP     proc124

  185E:                                 QUAL    com_24 ; b# =255  s#2  =com_24

                                 ;-refs -  2/com_20     2/com_21     2/com_24    

  185E: 082E 0004 0015 '...... com_24   BTST    #4,21(A6)
  1864: 6606           200186C          BNE.S   lfx_1
  1866: 4A6E 000A      'Jn..'           TST     10(A6)
  186A: 6604           2001870          BNE.S   lfx_2
  186C: 4EFA FA6A      20012D8 lfx_1    JMP     proc132
  1870: 6A3E           20018B0 lfx_2    BPL.S   lfx_4
  1872: 363C 0009      '6<..'           MOVE    #9,D3
  1876: B672 4004      '.r@.'           CMP.W   4(A2,D4.W),D3
  187A: 6604           2001880          BNE.S   lfx_3
  187C: 4EFA FA5A      20012D8          JMP     proc132
  1880: 3D7C 0007 0012 '=|.... lfx_3    MOVE    #7,18(A6)
  1886: 3D44 0030      '=D.0'           MOVE    D4,48(A6)
  188A: 3D72 4006 0004 '=r@...'         MOVE    6(A2,D4.W),4(A6)
  1890: 426E 0010      'Bn..'           CLR     16(A6)
  1894: 3D72 400E 0034 '=r@..4'         MOVE    14(A2,D4.W),52(A6)
  189A: 3032 4010      '02@.'           MOVE    16(A2,D4.W),D0
  189E: 3D40 000C      '=@..'           MOVE    D0,12(A6)
  18A2: 5F41           '_A'             SUBQ    #7,D1
  18A4: 3D41 000E      '=A..'           MOVE    D1,14(A6)
  18A8: 382E 0004      '8...'           MOVE    4(A6),D4
  18AC: 6000 FE8C      200173A          BRA     com_20
  18B0: 363C 000A      '6<..'  lfx_4    MOVE    #10,D3
  18B4: B672 4004      '.r@.'           CMP.W   4(A2,D4.W),D3
  18B8: 6604           20018BE          BNE.S   lfx_5
  18BA: 4EFA FA1C      20012D8          JMP     proc132
  18BE: 3D7C 0007 0012 '=|.... lfx_5    MOVE    #7,18(A6)
  18C4: 3D44 0004      '=D..'           MOVE    D4,4(A6)
  18C8: 3D72 4008 0030 '=r@..0'         MOVE    8(A2,D4.W),48(A6)
  18CE: 426E 0010      'Bn..'           CLR     16(A6)
  18D2: 3D72 400E 0034 '=r@..4'         MOVE    14(A2,D4.W),52(A6)
  18D8: 3032 4010      '02@.'           MOVE    16(A2,D4.W),D0
  18DC: 3D40 000C      '=@..'           MOVE    D0,12(A6)
  18E0: 5541           'UA'             SUBQ    #2,D1
  18E2: 3D41 000E      '=A..'           MOVE    D1,14(A6)
  18E6: 6000 FE52      200173A          BRA     com_20

  18EA:                                 QUAL    com_25 ; b# =256  s#2  =com_25

                                 ;-refs -  2/com_25    

  18EA: 08AE 0000 0014 '...... com_25   BCLR    #0,20(A6)
  18F0: 3D6E 0008 0030 '=n...0'         MOVE    8(A6),48(A6)
  18F6: 670C           2001904          BEQ.S   lfy_1
  18F8: 1D7C 0001 0036 '.|...6'         MOVE.B  #1,54(A6)
  18FE: 47FA 02D0      2001BD0          LEA     data101,A3  ; len= 64
  1902: 6022           2001926          BRA.S   lfy_4
  1904: 422E 0036      'B..6'  lfy_1    CLR.B   54(A6)
  1908: 3D6E 001E 0030 '=n...0'         MOVE    30(A6),48(A6)
  190E: 6606           2001916          BNE.S   lfy_2
  1910: 3D7C 0008 0030 '=|...0'         MOVE    #8,48(A6)
  1916: 4A6E 000A      'Jn..'  lfy_2    TST     10(A6)
  191A: 6E06           2001922          BGT.S   lfy_3
  191C: 47FA 02F8      2001C16          LEA     data102,A3  ; len= 80
  1920: 6004           2001926          BRA.S   lfy_4
  1922: 47FA 0342      2001C66 lfy_3    LEA     data103,A3  ; len= 72
  1926: 3D6E 0030 001E '=n.0.. lfy_4    MOVE    48(A6),30(A6)
  192C: 2D4B 0032      '-K.2'           MOVE.L  A3,50(A6)
  1930: 3D7C 0004 0012 '=|....'         MOVE    #4,18(A6)
  1936: 596E 0006      'Yn..'           SUBQ    #4,6(A6)
  193A: 1D7C 00FF 0037 '.|...7'         MOVE.B  #$FF,55(A6)
  1940: 3A04           ':.'             MOVE    D4,D5
  1942: 4A6E 0030      'Jn.0'           TST     48(A6)
  1946: 6E20           2001968          BGT.S   lfy_7
  1948: 0445 0012      '.E..'  lfy_5    SUBI    #18,D5
  194C: 0C72 001B 5004 '.r..P.'         CMPI    #27,4(A2,D5.W)
  1952: 6708           200195C          BEQ.S   lfy_6
  1954: 4AB2 5000      'J.P.'           TST.L   0(A2,D5.W)
  1958: 66EE           2001948          BNE     lfy_5
  195A: 602C           2001988          BRA.S   lfy_9
  195C: 3E32 5002      '>2P.'  lfy_6    MOVE    2(A2,D5.W),D7
  1960: 5247           'RG'             ADDQ    #1,D7
  1962: 3D47 0038      '=G.8'           MOVE    D7,56(A6)
  1966: 6024           200198C          BRA.S   lfy_10
  1968: 0645 0012      '.E..'  lfy_7    ADDI    #18,D5
  196C: 0C72 001B 5004 '.r..P.'         CMPI    #27,4(A2,D5.W)
  1972: 6708           200197C          BEQ.S   lfy_8
  1974: 4AB2 5000      'J.P.'           TST.L   0(A2,D5.W)
  1978: 66EE           2001968          BNE     lfy_7
  197A: 600C           2001988          BRA.S   lfy_9
  197C: 3E32 5000      '>2P.'  lfy_8    MOVE    0(A2,D5.W),D7
  1980: 5347           'SG'             SUBQ    #1,D7
  1982: 3D47 0038      '=G.8'           MOVE    D7,56(A6)
  1986: 6004           200198C          BRA.S   lfy_10
  1988: 426E 0038      'Bn.8'  lfy_9    CLR     56(A6)
  198C: 4E71           'Nq'    lfy_10   NOP     

  198E:                                 QUAL    proc133 ; b# =257  s#2  =proc133

                                 ;-refs -  2/data112   11/   FC 12/proc353   

  198E: 266E 0032      '&n.2'  proc133  MOVEA.L 50(A6),A3
  1992: 50AE 0032      'P..2'           ADDQ.L  #8,50(A6)
  1996: 4A53           'JS'             TST     (A3)
  1998: 6C0C           20019A6          BGE.S   lfz_2
  199A: 0441 000A      '.A..'  lfz_1    SUBI    #10,D1
  199E: 3D41 000E      '=A..'           MOVE    D1,14(A6)
  19A2: 4EFA 030A      2001CAE          JMP     proc136
  19A6: 286E 0016      '(n..'  lfz_2    MOVEA.L 22(A6),A4
  19AA: 3C00           '<.'             MOVE    D0,D6
  19AC: 4A6E 0030      'Jn.0'           TST     48(A6)
  19B0: 6D00 008A      2001A3C          BLT     lfz_9
  19B4: D05B           '.['             ADD     (A3)+,D0
  19B6: 4A6E 0038      'Jn.8'           TST     56(A6)
  19BA: 674C           2001A08          BEQ.S   lfz_5
  19BC: B06E 0038      '.n.8'           CMP.W   56(A6),D0
  19C0: 6D46           2001A08          BLT.S   lfz_5
  19C2: 3D7C 0001 0010 '=|....'         MOVE    #1,16(A6)
  19C8: 302E 0038      '0..8'           MOVE    56(A6),D0
  19CC: 4A2E 0037      'J..7'  lfz_3    TST.B   55(A6)
  19D0: 6A00 0006      20019D8          BPL     lfz_4
  19D4: 586E 0006      'Xn..'           ADDQ    #4,6(A6)
  19D8: 3D41 0030      '=A.0'  lfz_4    MOVE    D1,48(A6)
  19DC: 3D40 000C      '=@..'           MOVE    D0,12(A6)
  19E0: 3F00           '?.'             PUSH    D0
  19E2: 303C 0001      '0<..'           MOVE    #1,D0
  19E6: 4EAD 0042      10000BE          JSR     proc9(A5)
  19EA: 301F           '0.'             POP     D0
  19EC: 3D7C 0005 0012 '=|....'         MOVE    #5,18(A6)
  19F2: 3D7C 0002 0034 '=|...4'         MOVE    #2,52(A6)
  19F8: 3D7C 000A 0032 '=|...2'         MOVE    #10,50(A6)
  19FE: 2D6D F578 0036   -$A88          MOVE.L  glob20(A5),54(A6)
  1A04: 4EFA 033C      2001D42          JMP     com_27
  1A08: B06D FF36         -$CA lfz_5    CMP.W   glob222(A5),D0
  1A0C: 6D1C           2001A2A          BLT.S   lfz_7
  1A0E: 302D FF36         -$CA          MOVE    glob222(A5),D0
  1A12: 0440 000A      '.@..'           SUBI    #10,D0
  1A16: 3D40 000C      '=@..'  lfz_6    MOVE    D0,12(A6)
  1A1A: 4A2E 0037      'J..7'           TST.B   55(A6)
  1A1E: 6A00 FF7A      200199A          BPL     lfz_1
  1A22: 586E 0006      'Xn..'           ADDQ    #4,6(A6)
  1A26: 6000 FF72      200199A          BRA     lfz_1
  1A2A: 4A2E 0036      'J..6'  lfz_7    TST.B   54(A6)
  1A2E: 6706           2001A36          BEQ.S   lfz_8
  1A30: 226C 0014      '"l..'           MOVEA.L 20(A4),A1
  1A34: 6044           2001A7A          BRA.S   lfz_13
  1A36: 226C 0048      '"l.H'  lfz_8    MOVEA.L 72(A4),A1
  1A3A: 603E           2001A7A          BRA.S   lfz_13
  1A3C: 905B           '.['    lfz_9    SUB     (A3)+,D0
  1A3E: 4A6E 0038      'Jn.8'           TST     56(A6)
  1A42: 6714           2001A58          BEQ.S   lfz_10
  1A44: B06E 0038      '.n.8'           CMP.W   56(A6),D0
  1A48: 6E0E           2001A58          BGT.S   lfz_10
  1A4A: 426E 0010      'Bn..'           CLR     16(A6)
  1A4E: 302E 0038      '0..8'           MOVE    56(A6),D0
  1A52: 5E40           '^@'             ADDQ    #7,D0
  1A54: 6000 FF76      20019CC          BRA     lfz_3
  1A58: B06D FF38         -$C8 lfz_10   CMP.W   glob223(A5),D0
  1A5C: 6E0A           2001A68          BGT.S   lfz_11
  1A5E: 302D FF38         -$C8          MOVE    glob223(A5),D0
  1A62: 0640 000A      '.@..'           ADDI    #10,D0
  1A66: 60AE           2001A16          BRA     lfz_6
  1A68: 4A2E 0036      'J..6'  lfz_11   TST.B   54(A6)
  1A6C: 6706           2001A74          BEQ.S   lfz_12
  1A6E: 226C 0010      '"l..'           MOVEA.L 16(A4),A1
  1A72: 6006           2001A7A          BRA.S   lfz_13
  1A74: 226C 0044      '"l.D'  lfz_12   MOVEA.L 68(A4),A1
  1A78: 4E71           'Nq'             NOP     
  1A7A: 3E1B           '>.'    lfz_13   MOVE    (A3)+,D7
  1A7C: D247           '.G'             ADD     D7,D1
  1A7E: 4A47           'JG'             TST     D7
  1A80: 6E5C           2001ADE          BGT.S   lfz_20
  1A82: 362E 0006      '6...'           MOVE    6(A6),D3
  1A86: 3E32 3000      '>20.'  lfz_14   MOVE    0(A2,D3.W),D7
  1A8A: 6700 00C0      2001B4C          BEQ     proc134
  1A8E: BE41           '.A'             CMP.W   D1,D7
  1A90: 6004           2001A96          BRA.S   lfz_16
  1A92: 5943           'YC'    lfz_15   SUBQ    #4,D3
  1A94: 60F0           2001A86          BRA     lfz_14
  1A96: 6D00 00B4      2001B4C lfz_16   BLT     proc134
  1A9A: 3832 3002      '820.'           MOVE    2(A2,D3.W),D4
  1A9E: 0644 0012      '.D..'           ADDI    #18,D4
  1AA2: B072 4002      '.r@.'  lfz_17   CMP.W   2(A2,D4.W),D0
  1AA6: 6E2A           2001AD2          BGT.S   lfz_19
  1AA8: B072 4000      '.r@.'           CMP.W   0(A2,D4.W),D0
  1AAC: 6DE4           2001A92          BLT     lfz_15
  1AAE: 3232 3000      '220.'           MOVE    0(A2,D3.W),D1
  1AB2: 3F00           '?.'             PUSH    D0
  1AB4: 303C 0004      '0<..'           MOVE    #4,D0
  1AB8: 4EAD 0042      10000BE          JSR     proc9(A5)
  1ABC: 301F           '0.'             POP     D0
  1ABE: 6100 008C      2001B4C          BSR     proc134
  1AC2: 0C6E 0004 0012 '.n....'         CMPI    #4,18(A6)
  1AC8: 6606           2001AD0          BNE.S   lfz_18
  1ACA: 3A04           ':.'             MOVE    D4,D5
  1ACC: 4EBA EF2E      20009FC          JSR     proc125
  1AD0: 4E75           'Nu'    lfz_18   RTS     
  1AD2: 0644 0012      '.D..'  lfz_19   ADDI    #18,D4
  1AD6: 4A72 4000      'Jr@.'           TST     0(A2,D4.W)
  1ADA: 67B6           2001A92          BEQ     lfz_15
  1ADC: 60C4           2001AA2          BRA     lfz_17
  1ADE: 362E 0006      '6...'  lfz_20   MOVE    6(A6),D3
  1AE2: 4A2E 0037      'J..7'           TST.B   55(A6)
  1AE6: 6A08           2001AF0          BPL.S   lfz_21
  1AE8: 5843           'XC'             ADDQ    #4,D3
  1AEA: 1D7C 0001 0037 '.|...7'         MOVE.B  #1,55(A6)
  1AF0: 3E32 3000      '>20.'  lfz_21   MOVE    0(A2,D3.W),D7
  1AF4: BE41           '.A'             CMP.W   D1,D7
  1AF6: 6004           2001AFC          BRA.S   lfz_23
  1AF8: 5843           'XC'    lfz_22   ADDQ    #4,D3
  1AFA: 60F4           2001AF0          BRA     lfz_21
  1AFC: 6E00 004E      2001B4C lfz_23   BGT     proc134
  1B00: 3832 3002      '820.'           MOVE    2(A2,D3.W),D4
  1B04: 67F2           2001AF8          BEQ     lfz_22
  1B06: 0644 0012      '.D..'           ADDI    #18,D4
  1B0A: B072 4002      '.r@.'  lfz_24   CMP.W   2(A2,D4.W),D0
  1B0E: 6E30           2001B40          BGT.S   lfz_26
  1B10: B072 4000      '.r@.'           CMP.W   0(A2,D4.W),D0
  1B14: 6DE2           2001AF8          BLT     lfz_22
  1B16: 0C72 0400 4004 '.r..@.'         CMPI    #$400,4(A2,D4.W)
  1B1C: 6CDA           2001AF8          BGE     lfz_22
  1B1E: 3232 3000      '220.'           MOVE    0(A2,D3.W),D1
  1B22: 3F00           '?.'             PUSH    D0
  1B24: 303C 0004      '0<..'           MOVE    #4,D0
  1B28: 4EAD 0042      10000BE          JSR     proc9(A5)
  1B2C: 301F           '0.'             POP     D0
  1B2E: 611C           2001B4C          BSR.S   proc134
  1B30: 0C6E 0004 0012 '.n....'         CMPI    #4,18(A6)
  1B36: 6606           2001B3E          BNE.S   lfz_25
  1B38: 3A04           ':.'             MOVE    D4,D5
  1B3A: 4EBA EEC0      20009FC          JSR     proc125
  1B3E: 4E75           'Nu'    lfz_25   RTS     
  1B40: 0644 0012      '.D..'  lfz_26   ADDI    #18,D4
  1B44: 4A72 4000      'Jr@.'           TST     0(A2,D4.W)
  1B48: 67AE           2001AF8          BEQ     lfz_22
  1B4A: 60BE           2001B0A          BRA     lfz_24

                                 ;-refs -  2/proc133   

  1B4C: 3D44 0004      '=D..'  proc134  MOVE    D4,4(A6)
  1B50: 3D43 0006      '=C..'           MOVE    D3,6(A6)
  1B54: 3D40 000C      '=@..'           MOVE    D0,12(A6)
  1B58: 3D41 000E      '=A..'           MOVE    D1,14(A6)
  1B5C: 206D FFA0         -$60          MOVEA.L glob253(A5),A0
  1B60: 4A6D FEBE        -$142          TST     glob184(A5)
  1B64: 6D58           2001BBE          BLT.S   lfz_32
  1B66: B26D FEC0        -$140          CMP.W   glob185(A5),D1
  1B6A: 6D1A           2001B86          BLT.S   lfz_28
  1B6C: B26D FEC2        -$13E          CMP.W   glob186(A5),D1
  1B70: 6E14           2001B86          BGT.S   lfz_28
  1B72: 3A2D FEC4        -$13C          MOVE    glob187(A5),D5
  1B76: B045           '.E'             CMP.W   D5,D0
  1B78: 6D06           2001B80          BLT.S   lfz_27
  1B7A: BC45           '.E'             CMP.W   D5,D6
  1B7C: 6E08           2001B86          BGT.S   lfz_28
  1B7E: 6024           2001BA4          BRA.S   lfz_30
  1B80: BC45           '.E'    lfz_27   CMP.W   D5,D6
  1B82: 6D02           2001B86          BLT.S   lfz_28
  1B84: 601E           2001BA4          BRA.S   lfz_30
  1B86: B26D FEB8        -$148 lfz_28   CMP.W   glob181(A5),D1
  1B8A: 6D32           2001BBE          BLT.S   lfz_32
  1B8C: B26D FEBA        -$146          CMP.W   glob182(A5),D1
  1B90: 6E2C           2001BBE          BGT.S   lfz_32
  1B92: 3A2D FEBC        -$144          MOVE    glob183(A5),D5
  1B96: B045           '.E'             CMP.W   D5,D0
  1B98: 6D06           2001BA0          BLT.S   lfz_29
  1B9A: BC45           '.E'             CMP.W   D5,D6
  1B9C: 6E20           2001BBE          BGT.S   lfz_32
  1B9E: 6004           2001BA4          BRA.S   lfz_30
  1BA0: BC45           '.E'    lfz_29   CMP.W   D5,D6
  1BA2: 6D1A           2001BBE          BLT.S   lfz_32
  1BA4: 4A2E 0037      'J..7'  lfz_30   TST.B   55(A6)
  1BA8: 6A00 0006      2001BB0          BPL     lfz_31
  1BAC: 586E 0006      'Xn..'           ADDQ    #4,6(A6)
  1BB0: 9A6E 0030      '.n.0'  lfz_31   SUB     48(A6),D5
  1BB4: 3D45 000C      '=E..'           MOVE    D5,12(A6)
  1BB8: 3005           '0.'             MOVE    D5,D0
  1BBA: 4EFA 0138      2001CF4          JMP     com_26
  1BBE: 341B           '4.'    lfz_32   MOVE    (A3)+,D2
  1BC0: D25B           '.['             ADD     (A3)+,D1
  1BC2: 3D42 0010      '=B..'           MOVE    D2,16(A6)
  1BC6: 4EAD 02E2      3000000          JSR     proc146(A5)
  1BCA: 4EFA EA2A      20005F6          JMP     proc124


  1BCE: 4E75                   data100  DC.B    'Nu'

                                 ;-refs -  2/com_25    

  1BD0: '................'     data101  DC.W    8,$FFFF,0,$FFFC,8,$FFF8,1,$FFFC
  1BE0: '. ..............'              DC.W    $20,$FFF2,2,$FFFC,$17,2,3,$FFFC
  1BF0: '................'              DC.W    $1F,$B,4,$FFFC,8,$E,5,$FFFC
  1C00: '................'              DC.W    0,6,5,$FFFC,$FFFF,0,0,0

  1C10:                                 QUAL    proc135 ; b# =260  s#2  =proc135

                                 ;-refs - 11/   D6 12/proc353   

  1C10: 47FA 0004      2001C16 proc135  LEA     data102,A3  ; len= 80
  1C14: 4E75           'Nu'             RTS     

                                 ;-refs -  2/com_25     2/proc135   

  1C16: '................'     data102  DC.W    2,$FFFF,0,$FFF8,4,$FFF6,1,$FFF7
  1C26: '................'              DC.W    9,$FFFB,2,$FFF7,$10,$FFE7,3,$FFF7
  1C36: '................'              DC.W    $10,$FFFD,4,$FFF7,1,$C,5,$FFF7
  1C46: '................'              DC.W    $A,$C,6,$FFF7,8,$13,0,$FFF7
  1C56: '................'              DC.W    0,6,0,$FFF7,$FFFF,0,0,0

                                 ;-refs -  2/com_25    

  1C66: '................'     data103  DC.W    2,$FFFF,0,$FFF8,4,$FFF6,1,$FFF7
  1C76: '................'              DC.W    $10,$FFFE,3,$FFF7,$10,$FFFF,4,$FFF7
  1C86: '................'              DC.W    1,$C,5,$FFF7,$A,$C,6,$FFF7
  1C96: '................'              DC.W    8,$13,0,$FFF7,8,6,0,$FFF7
  1CA6: '........'                      DC.W    $FFFF,0,0,0

  1CAE:                                 QUAL    proc136 ; b# =263  s#2  =proc136

                                 ;-refs -  2/proc133    2/com_32    15/proc363   

  1CAE: 3D41 0030      '=A.0'  proc136  MOVE    D1,48(A6)
  1CB2: 3F00           '?.'             PUSH    D0
  1CB4: 303C 0001      '0<..'           MOVE    #1,D0
  1CB8: 4EAD 0042      10000BE          JSR     proc9(A5)
  1CBC: 301F           '0.'             POP     D0
  1CBE: 604C           2001D0C          BRA.S   lgb_4

                                 ;-refs -  2/proc120    2/proc124   12/proc353   

  1CC0: 3D7C FF38 0030 '=|.8.0 proc137  MOVE    #$FF38,48(A6)
  1CC6: 3D7C 0005 0012 '=|....'         MOVE    #5,18(A6)
  1CCC: 426E 0034      'Bn.4'           CLR     52(A6)
  1CD0: 3D7C 000A 0032 '=|...2'         MOVE    #10,50(A6)
  1CD6: B06D FF38         -$C8          CMP.W   glob223(A5),D0
  1CDA: 6C06           2001CE2          BGE.S   lgb_1
  1CDC: 302D FF38         -$C8          MOVE    glob223(A5),D0
  1CE0: 600A           2001CEC          BRA.S   lgb_2
  1CE2: B06D FF36         -$CA lgb_1    CMP.W   glob222(A5),D0
  1CE6: 6F08           2001CF0          BLE.S   lgb_3
  1CE8: 302D FF36         -$CA          MOVE    glob222(A5),D0
  1CEC: 3D40 000C      '=@..'  lgb_2    MOVE    D0,12(A6)
  1CF0: 6000 0232      2001F24 lgb_3    BRA     com_31

                                 ;-refs -  2/proc133   

  1CF4: 3D41 0030      '=A.0'  com_26   MOVE    D1,48(A6)
  1CF8: 046E 001F 0030 '.n...0'         SUBI    #31,48(A6)
  1CFE: 3F00           '?.'             PUSH    D0
  1D00: 303C 0001      '0<..'           MOVE    #1,D0
  1D04: 4EAD 0042      10000BE          JSR     proc9(A5)
  1D08: 301F           '0.'             POP     D0
  1D0A: 4E71           'Nq'             NOP     
  1D0C: 3D7C 0005 0012 '=|.... lgb_4    MOVE    #5,18(A6)
  1D12: 426E 0034      'Bn.4'           CLR     52(A6)
  1D16: 3D7C 000A 0032 '=|...2'         MOVE    #10,50(A6)
  1D1C: B06D FF38         -$C8          CMP.W   glob223(A5),D0
  1D20: 6C0E           2001D30          BGE.S   lgb_5
  1D22: 302D FF38         -$C8          MOVE    glob223(A5),D0
  1D26: 0640 000A      '.@..'           ADDI    #10,D0
  1D2A: 3D40 000C      '=@..'           MOVE    D0,12(A6)
  1D2E: 6012           2001D42          BRA.S   com_27
  1D30: B06D FF36         -$CA lgb_5    CMP.W   glob222(A5),D0
  1D34: 6F0C           2001D42          BLE.S   com_27
  1D36: 302D FF36         -$CA          MOVE    glob222(A5),D0
  1D3A: 0440 000A      '.@..'           SUBI    #10,D0
  1D3E: 3D40 000C      '=@..'           MOVE    D0,12(A6)

                                 ;-refs -  2/proc120    2/proc133    2/com_26    
                                 ;-        2/data112   

  1D42: D26E 0032      '.n.2'  com_27   ADD     50(A6),D1
  1D46: 506E 0032      'Pn.2'           ADDQ    #8,50(A6)
  1D4A: 4242           'BB'             CLR     D2
  1D4C: 362E 0006      '6...'           MOVE    6(A6),D3
  1D50: 3E32 3000      '>20.'  lgb_6    MOVE    0(A2,D3.W),D7
  1D54: BE41           '.A'             CMP.W   D1,D7
  1D56: 6004           2001D5C          BRA.S   lgb_8
  1D58: 5843           'XC'    lgb_7    ADDQ    #4,D3
  1D5A: 60F4           2001D50          BRA     lgb_6
  1D5C: 6E00 018C      2001EEA lgb_8    BGT     com_30
  1D60: 3832 3002      '820.'           MOVE    2(A2,D3.W),D4
  1D64: 67F2           2001D58          BEQ     lgb_7
  1D66: 0644 0012      '.D..'           ADDI    #18,D4
  1D6A: B072 4002      '.r@.'  lgb_9    CMP.W   2(A2,D4.W),D0
  1D6E: 6E14           2001D84          BGT.S   lgb_10
  1D70: B072 4000      '.r@.'           CMP.W   0(A2,D4.W),D0
  1D74: 6DE2           2001D58          BLT     lgb_7
  1D76: 0C72 0200 4004 '.r..@.'         CMPI    #$200,4(A2,D4.W)
  1D7C: 6C06           2001D84          BGE.S   lgb_10
  1D7E: 3232 3000      '220.'           MOVE    0(A2,D3.W),D1
  1D82: 600C           2001D90          BRA.S   lgb_11
  1D84: 0644 0012      '.D..'  lgb_10   ADDI    #18,D4
  1D88: 4A72 4000      'Jr@.'           TST     0(A2,D4.W)
  1D8C: 67CA           2001D58          BEQ     lgb_7
  1D8E: 60DA           2001D6A          BRA     lgb_9
  1D90: 3D41 000E      '=A..'  lgb_11   MOVE    D1,14(A6)
  1D94: 3D44 0004      '=D..'           MOVE    D4,4(A6)
  1D98: 3D43 0006      '=C..'           MOVE    D3,6(A6)
  1D9C: 0C72 0029 4004 '.r.)@.'         CMPI    #41,4(A2,D4.W) ; ')'
  1DA2: 6630           2001DD4          BNE.S   lgb_14
  1DA4: 3E2E 0030      '>..0'           MOVE    48(A6),D7
  1DA8: 4447           'DG'             NEG     D7
  1DAA: DE41           '.A'             ADD     D1,D7
  1DAC: 0C47 0050      '.G.P'           CMPI    #80,D7 ; 'P'
  1DB0: 6E00 010A      2001EBC          BGT     com_29
  1DB4: 4A6E 001E      'Jn..'           TST     30(A6)
  1DB8: 6E06           2001DC0          BGT.S   lgb_12
  1DBA: 47FA E45B      2000217          LEA     data72,A3   ; len= 20
  1DBE: 6008           2001DC8          BRA.S   lgb_13
  1DC0: 47FA E469      200022B lgb_12   LEA     data73,A3   ; len= 61
  1DC4: 0440 000C      '.@..'           SUBI    #12,D0
  1DC8: 3D40 000C      '=@..'  lgb_13   MOVE    D0,12(A6)
  1DCC: 2D4B 0030      '-K.0'           MOVE.L  A3,48(A6)
  1DD0: 4EED 05B2      6000810          JMP     proc303(A5)
  1DD4: 0C6E 0002 0034 '.n...4 lgb_14   CMPI    #2,52(A6)
  1DDA: 6666           2001E42          BNE.S   com_28
  1DDC: 3E2E 0030      '>..0'           MOVE    48(A6),D7
  1DE0: 4447           'DG'             NEG     D7
  1DE2: DE41           '.A'             ADD     D1,D7
  1DE4: 0C47 0050      '.G.P'           CMPI    #80,D7 ; 'P'
  1DE8: 6E00 00D2      2001EBC          BGT     com_29
  1DEC: 4A6E 001E      'Jn..'           TST     30(A6)
  1DF0: 6E06           2001DF8          BGT.S   lgb_15
  1DF2: 47FA E423      2000217          LEA     data72,A3   ; len= 20
  1DF6: 6008           2001E00          BRA.S   lgb_16
  1DF8: 47FA E431      200022B lgb_15   LEA     data73,A3   ; len= 61
  1DFC: 0440 000C      '.@..'           SUBI    #12,D0
  1E00: 0C72 0005 4004 '.r..@. lgb_16   CMPI    #5,4(A2,D4.W)
  1E06: 6622           2001E2A          BNE.S   lgb_18
  1E08: 0C72 001B 4016 '.r..@.'         CMPI    #27,22(A2,D4.W)
  1E0E: 660A           2001E1A          BNE.S   lgb_17
  1E10: 0444 0012      '.D..'           SUBI    #18,D4
  1E14: 3D44 0004      '=D..'           MOVE    D4,4(A6)
  1E18: 6010           2001E2A          BRA.S   lgb_18
  1E1A: 0C72 001B 40F2 '.r..@. lgb_17   CMPI    #27,-14(A2,D4.W)
  1E20: 6608           2001E2A          BNE.S   lgb_18
  1E22: 0644 0012      '.D..'           ADDI    #18,D4
  1E26: 3D44 0004      '=D..'           MOVE    D4,4(A6)
  1E2A: 3D40 000C      '=@..'  lgb_18   MOVE    D0,12(A6)
  1E2E: 3D7C 000C 0012 '=|....'         MOVE    #12,18(A6)
  1E34: 2D4B 0030      '-K.0'           MOVE.L  A3,48(A6)
  1E38: 046D 0F00 FF22    -$DE          SUBI    #$F00,glob214(A5)
  1E3E: 4EFA E1C0      2000000          JMP     proc116

  1E42:                                 QUAL    com_28 ; b# =267  s#2  =com_28

                                 ;-refs -  2/com_27    

  1E42: 0C72 0016 4004 '.r..@. com_28   CMPI    #22,4(A2,D4.W)
  1E48: 6612           2001E5C          BNE.S   lgd_1
  1E4A: 426D FF22         -$DE          CLR     glob214(A5)
  1E4E: 3A04           ':.'             MOVE    D4,D5
  1E50: 4EBA EBAA      20009FC          JSR     proc125
  1E54: 0641 000A      '.A..'           ADDI    #10,D1
  1E58: 6000 0090      2001EEA          BRA     com_30
  1E5C: 0C72 001D 4004 '.r..@. lgd_1    CMPI    #29,4(A2,D4.W)
  1E62: 662A           2001E8E          BNE.S   lgd_4
  1E64: 0C6E FF38 0030 '.n.8.0'         CMPI    #$FF38,48(A6)
  1E6A: 6710           2001E7C          BEQ.S   lgd_3
  1E6C: 3D7C 0028 0012 '=|.(.. lgd_2    MOVE    #40,18(A6)
  1E72: 3D7C 0004 0030 '=|...0'         MOVE    #4,48(A6)
  1E78: 4EFA 057A      20023F4          JMP     com_33
  1E7C: 4EBA E67E      20004FC lgd_3    JSR     proc121
  1E80: 4A6D FEF8        -$108          TST     glob201(A5)
  1E84: 6D00 009E      2001F24          BLT     com_31
  1E88: 51ED FEFD        -$103          SF      glob203(A5)
  1E8C: 60DE           2001E6C          BRA     lgd_2
  1E8E: 3E2E 0030      '>..0'  lgd_4    MOVE    48(A6),D7
  1E92: 4447           'DG'             NEG     D7
  1E94: DE41           '.A'             ADD     D1,D7
  1E96: 6F3C           2001ED4          BLE.S   lgd_5
  1E98: 0C47 001E      '.G..'           CMPI    #30,D7
  1E9C: 6D36           2001ED4          BLT.S   lgd_5
  1E9E: 0C47 0050      '.G.P'           CMPI    #80,D7 ; 'P'
  1EA2: 6E18           2001EBC          BGT.S   com_29
  1EA4: 3D7C 000C 0012 '=|....'         MOVE    #12,18(A6)
  1EAA: 47FA E226      20000D2          LEA     data68,A3   ; len= 35
  1EAE: 2D4B 0030      '-K.0'           MOVE.L  A3,48(A6)
  1EB2: 046D 0F00 FF22    -$DE          SUBI    #$F00,glob214(A5)
  1EB8: 4EFA E146      2000000          JMP     proc116

                                 ;-refs -  2/com_27     2/com_28    

  1EBC: 3F00           '?.'    com_29   PUSH    D0
  1EBE: 303C 0006      '0<..'           MOVE    #6,D0
  1EC2: 4EAD 0042      10000BE          JSR     proc9(A5)
  1EC6: 301F           '0.'             POP     D0
  1EC8: 47FA E694      200055E          LEA     data81,A3   ; len= 28
  1ECC: 426D FF22         -$DE          CLR     glob214(A5)
  1ED0: 4EFA E510      20003E2          JMP     proc120
  1ED4: 3F00           '?.'    lgd_5    PUSH    D0
  1ED6: 303C 0004      '0<..'           MOVE    #4,D0
  1EDA: 4EAD 0042      10000BE          JSR     proc9(A5)
  1EDE: 301F           '0.'             POP     D0
  1EE0: 3A04           ':.'             MOVE    D4,D5
  1EE2: 4EBA EB18      20009FC          JSR     proc125
  1EE6: 4EFA 0F5E      2002E46          JMP     proc142

  1EEA:                                 QUAL    com_30 ; b# =269  s#2  =com_30

                                 ;-refs -  2/com_27     2/com_28    

  1EEA: 3D44 0004      '=D..'  com_30   MOVE    D4,4(A6)
  1EEE: 3D43 0006      '=C..'           MOVE    D3,6(A6)
  1EF2: 3D41 000E      '=A..'           MOVE    D1,14(A6)
  1EF6: 5141           'QA'             SUBQ    #8,D1
  1EF8: 206D FFA0         -$60          MOVEA.L glob253(A5),A0
  1EFC: 286E 0016      '(n..'           MOVEA.L 22(A6),A4
  1F00: 4A6E 0034      'Jn.4'           TST     52(A6)
  1F04: 6606           2001F0C          BNE.S   lge_1
  1F06: 226C 005C      '"l.\'           MOVEA.L 92(A4),A1
  1F0A: 6008           2001F14          BRA.S   lge_2
  1F0C: 342E 0010      '4...'  lge_1    MOVE    16(A6),D2
  1F10: 226E 0036      '"n.6'           MOVEA.L 54(A6),A1
  1F14: 4EAD 02E2      3000000 lge_2    JSR     proc146(A5)
  1F18: 0C6E FF38 0030 '.n.8.0'         CMPI    #$FF38,48(A6)
  1F1E: 6704           2001F24          BEQ.S   com_31
  1F20: 4EFA E6D4      20005F6          JMP     proc124

  1F24:                                 QUAL    com_31 ; b# =270  s#2  =com_31

                                 ;-refs -  2/proc137    2/com_28     2/com_30    

  1F24: 4E75           'Nu'    com_31   RTS     

  1F26:                                 QUAL    proc138 ; b# =271  s#2  =proc138

                                 ;-refs -  2/proc127    2/proc128    2/proc139   
                                 ;-        6/proc305   

  1F26: 4A6E 0008      'Jn..'  proc138  TST     8(A6)
  1F2A: 6606           2001F32          BNE.S   lgg_1
  1F2C: 47FA 0090      2001FBE          LEA     data106,A3  ; len= 272
  1F30: 6010           2001F42          BRA.S   lgg_3
  1F32: 4A6E 0008      'Jn..'  lgg_1    TST     8(A6)
  1F36: 6E06           2001F3E          BGT.S   lgg_2
  1F38: 47FA 007C      2001FB6          LEA     data105,A3  ; len= 8
  1F3C: 6004           2001F42          BRA.S   lgg_3
  1F3E: 47FA 0058      2001F98 lgg_2    LEA     data104,A3  ; len= 30
  1F42: 2D4B 0030      '-K.0'  lgg_3    MOVE.L  A3,48(A6)
  1F46: 3D7C 0006 0012 '=|....'         MOVE    #6,18(A6)
  1F4C: 6000 0048      2001F96          BRA     lgg_6

                                 ;-refs -  2/com_32     2/proc139   

  1F50: 286E 0016      '(n..'  com_32   MOVEA.L 22(A6),A4
  1F54: 226C 0064      '"l.d'           MOVEA.L $64(A4),A1
  1F58: 266E 0030      '&n.0'           MOVEA.L 48(A6),A3
  1F5C: 161B           '..'             MOVE.B  (A3)+,D3
  1F5E: 4883           'H.'             EXT     D3
  1F60: D043           '.C'             ADD     D3,D0
  1F62: 141B           '..'             MOVE.B  (A3)+,D2
  1F64: 4882           'H.'             EXT     D2
  1F66: 6C04           2001F6C          BGE.S   lgg_4
  1F68: 4EFA FD44      2001CAE          JMP     proc136
  1F6C: 0C42 002A      '.B.*'  lgg_4    CMPI    #42,D2 ; '*'
  1F70: 6610           2001F82          BNE.S   lgg_5
  1F72: 3F00           '?.'             PUSH    D0
  1F74: 303C 0005      '0<..'           MOVE    #5,D0
  1F78: 4EAD 0042      10000BE          JSR     proc9(A5)
  1F7C: 301F           '0.'             POP     D0
  1F7E: 343C 0002      '4<..'           MOVE    #2,D2
  1F82: 206D FFA0         -$60 lgg_5    MOVEA.L glob253(A5),A0
  1F86: 3D40 000C      '=@..'           MOVE    D0,12(A6)
  1F8A: 2D4B 0030      '-K.0'           MOVE.L  A3,48(A6)
  1F8E: 4EAD 02E2      3000000          JSR     proc146(A5)
  1F92: 4EFA E662      20005F6          JMP     proc124
  1F96: 4E75           'Nu'    lgg_6    RTS     

                                 ;-refs -  2/proc138   

  1F98: '...............*'     data104  DC.W    $600,$600,$600,$A02,2,2,2,$2A
  1FA8: '..............'                DC.W    3,3,3,2,2,2,$FF

                                 ;-refs -  2/proc138   

  1FB6: '........'             data105  DC.W    $FA01,$FA01,$FA01,$F602

                                 ;-refs -  2/proc138   

  1FBE: '.......*........'     data106  DC.W    2,2,2,$2A,3,3,3,2
  1FCE: '......=|....=r@.'              DC.W    2,2,$FF,$3D7C,$15,$12,$3D72,$4006
  1FDE: '..42@.=B...m..."'              DC.W    4,$3432,$400A,$3D42,6,$46D,$F00,$FF22
  1FEE: 'G...-K.0(n..Jn..'              DC.W    $47FA,$92,$2D4B,$30,$286E,$16,$4A6E,$1E
  1FFE: 'n.-l.x.4.@..`.-l'              DC.W    $6E0C,$2D6C,$78,$34,$440,$A,$6006,$2D6C
  200E: '.|.4Nq&n.0..H.Jn'              DC.W    $7C,$34,$4E71,$266E,$30,$161B,$4883,$4A6E
  201E: '..n.DC.C..H..C..'              DC.W    $1E,$6E02,$4443,$D043,$161B,$4883,$D243,$141B
  202E: 'H.l.=|....G...-K'              DC.W    $4882,$6C12,$3D7C,$C,$12,$47FA,$E0BB,$2D4B
  203E: '.0N....B.df.4...'              DC.W    $30,$4EFA,$DFBE,$C42,$64,$661E,$342E,6
  204E: '22 .=A...C4<..?.'              DC.W    $3232,$2000,$3D41,$E,$D243,$343C,2,$3F00
  205E: '0<.NN..B0."n.4 m'              DC.W    $303C,$4E,$4EAD,$42,$301F,$226E,$34,$206D
  206E: '..=@..-K.0N...N.'              DC.W    $FFA0,$3D40,$C,$2D4B,$30,$4EAD,$2E2,$4EFA
  207E: '.xNu...........d'              DC.W    $E578,$4E75,$4FE,8,$F901,$10F5,$218,$FC64
  208E: '................'              DC.W    $4FE,$300,$FE03,$FE,$300,$FE03,$FE,$300
  209E: '................'              DC.W    $FE03,$FE,$300,$FE03,$FE,$300,$FE03,$FE
  20AE: '................'              DC.W    $300,$FE04,$FE,$400,$FE04,$FE,$500,$FE05
  20BE: '................'              DC.W    $FE,$500,$FE06,$FE,$600,$FE06,0,$FF00

  20CE:                                 QUAL    proc139 ; b# =276  s#2  =proc139

                                 ;-refs -  2/proc116    2/proc120    2/proc141   

  20CE: 0C72 000E 4004 '.r..@. proc139  CMPI    #14,4(A2,D4.W)
  20D4: 6604           20020DA          BNE.S   lgi_1
  20D6: 4EFA 0014      20020EC          JMP     lgi_3
  20DA: 0C72 002D 4004 '.r.-@. lgi_1    CMPI    #45,4(A2,D4.W) ; '-'
  20E0: 6604           20020E6          BNE.S   lgi_2
  20E2: 4EFA 0012      20020F6          JMP     lgi_4
  20E6: 4E75           'Nu'    lgi_2    RTS     
  20E8: 487A F1EE      20012D8          PEA     proc132
  20EC: D072 400C      '.r@.'  lgi_3    ADD     12(A2,D4.W),D0
  20F0: 3D40 000C      '=@..'           MOVE    D0,12(A6)
  20F4: 4E75           'Nu'             RTS     
  20F6: D072 4006      '.r@.'  lgi_4    ADD     6(A2,D4.W),D0
  20FA: 3D40 000C      '=@..'           MOVE    D0,12(A6)
  20FE: B072 4000      '.r@.'           CMP.W   0(A2,D4.W),D0
  2102: 6D08           200210C          BLT.S   lgi_5
  2104: B072 4002      '.r@.'           CMP.W   2(A2,D4.W),D0
  2108: 6E02           200210C          BGT.S   lgi_5
  210A: 4E75           'Nu'             RTS     
  210C: 0C6E 000D 0012 '.n.... lgi_5    CMPI    #13,18(A6)
  2112: 6602           2002116          BNE.S   lgi_6
  2114: 4E75           'Nu'             RTS     
  2116: 4A9F           'J.'    lgi_6    TST.L   (A7)+
  2118: 0C6E 0025 0012 '.n.%..'         CMPI    #37,18(A6) ; '%'
  211E: 660C           200212C          BNE.S   lgi_7
  2120: 3F00           '?.'             PUSH    D0
  2122: 303C 0063      '0<.c'           MOVE    #99,D0
  2126: 4EAD 004A      10000FA          JSR     proc10(A5)
  212A: 301F           '0.'             POP     D0
  212C: 4EBA FDF8      2001F26 lgi_7    JSR     proc138
  2130: 4EFA FE1E      2001F50          JMP     com_32


  2134: 'Jn.0m.Jr@.l.N..l'     data107  DC.W    $4A6E,$30,$6D0A,$4A72,$4006,$6C0E,$4EFA,$FB6C
  2144: 'Jr@.l.N..bBn..02'              DC.W    $4A72,$4008,$6C04,$4EFA,$FB62,$426E,$10,$3032
  2154: '@.=@..=|./..=n.0'              DC.W    $4000,$3D40,$C,$3D7C,$2F,$12,$3D6E,$30
  2164: '..Dn..Bn.2.r@.l.'              DC.W    $1E,$446E,$1E,$426E,$32,$B272,$400E,$6C04
  2174: '22@..r@.o.22@.4.'              DC.W    $3232,$400E,$B272,$4010,$6F04,$3232,$4010,$342E
  2184: '.. m...r."@.f.=|'              DC.W    $10,$206D,$FFA0,$C72,$222,$4004,$660C,$3D7C
  2194: '....SB`...>...g.'              DC.W    $A,$A,$5342,$6000,$1A0,$3E2E,8,$6700
  21A4: '.0m.Jr@.l.`..$Jr'              DC.W    $30,$6D0A,$4A72,$4008,$6C0E,$6000,$24,$4A72
  21B4: '@.l.`....n..f.JG'              DC.W    $4006,$6C04,$6000,$1A,$BE6E,$1E,$660A,$4A47
  21C4: 'm...n..6=G..Bn..'              DC.W    $6D00,$2E,$6E00,$36,$3D47,$1E,$426E,8
  21D4: 'Jn..m...n..^?.0<'              DC.W    $4A6E,$A,$6D00,$106,$6E00,$15E,$3F00,$303C
  21E4: '..N..J0.Bn.2`...'              DC.W    $E,$4EAD,$4A,$301F,$426E,$32,$6000,$1BC
  21F4: ':2@.g...`..`:2@.'              DC.W    $3A32,$4006,$6700,$12,$6000,$60,$3A32,$4008
  2204: 'g...`..TQA=A..a.'              DC.W    $6700,6,$6000,$54,$5141,$3D41,$E,$6100
  2214: '..Jn..l.02@.S@`.'              DC.W    $1C2,$4A6E,$1E,$6C08,$3032,$4000,$5340,$6006
  2224: '02@.R@=@..=n...0'              DC.W    $3032,$4002,$5240,$3D40,$C,$3D6E,$1E,$30
  2234: 'B..6G......(-K.2'              DC.W    $422E,$36,$47FA,$F9DC,$D6FC,$28,$2D4B,$32
  2244: '=|....=|.....|..'              DC.W    $3D7C,$FFFF,$10,$3D7C,4,$12,$1D7C,1
  2254: '.7Bn.8N..2.E..f,'              DC.W    $37,$426E,$38,$4EFA,$F732,$C45,1,$662C
  2264: 'N...a..lJn..n..@'              DC.W    $4EBA,$EC9E,$6100,$16C,$4A6E,$1E,$6E10,$440
  2274: '..=@...n....`..@'              DC.W    $1D,$3D40,$C,$66E,$E,$C,$600A,$640
  2284: '..=@..W@`..$.rP.'              DC.W    $15,$3D40,$C,$5740,$6000,$24,$B272,$500E
  2294: 'm..v.rP.n..n02P.'              DC.W    $6D00,$FF76,$B272,$5010,$6E00,$FF6E,$3032,$5000
  22A4: '=@..8.=D..Bn..(n'              DC.W    $3D40,$C,$3805,$3D44,4,$426E,8,$286E
  22B4: '.."l.@=B..Jn..n.'              DC.W    $16,$226C,$40,$3D42,$10,$4A6E,$1E,$6E08
  22C4: '.@..BB`.Y@4<..UA'              DC.W    $640,$16,$4242,$6006,$5940,$343C,1,$5541
  22D4: 'N...Dn..`....n..'              DC.W    $4EAD,$2E2,$446E,$1E,$6000,$F2,$D26E,$A
  22E4: '.r@.l,:2@.o.Jn..'              DC.W    $B272,$400E,$6C2C,$3A32,$400A,$6F1E,$4A6E,$1E
  22F4: 'm.JrP.l.`.JrP.l.'              DC.W    $6D08,$4A72,$5008,$6C0A,$6010,$4A72,$5006,$6C02
  2304: '`.8.=D..`.22@.`.'              DC.W    $6008,$3805,$3D44,4,$60D6,$3232,$400E,$6000
  2314: '..Sn.2l.?.0<..N.'              DC.W    $9A,$536E,$32,$6C12,$3F00,$303C,$E,$4EAD
  2324: '.B0.=|...2SBl..|'              DC.W    $42,$301F,$3D7C,8,$32,$5342,$6C00,$7C
  2334: '4<..`..t.n...r@.'              DC.W    $343C,2,$6000,$74,$D26E,$A,$B272,$4010
  2344: 'oD:2@.g(m.Jn..m.'              DC.W    $6F44,$3A32,$400C,$6728,$6D1E,$4A6E,$1E,$6D08
  2354: 'JrP.l.`.JrP.l.`.'              DC.W    $4A72,$5008,$6C0A,$6010,$4A72,$5006,$6C02,$6008
  2364: '8.=D..`.2...`..<'              DC.W    $3805,$3D44,4,$601E,$322E,$E,$6000,$3C
  2374: '22@.=A..a..XX@=@'              DC.W    $3232,$4010,$3D41,$E,$6100,$58,$5840,$3D40
  2384: '..N..&Sn.2l.?.0<'              DC.W    $C,$4EFA,$F926,$536E,$32,$6C12,$3F00,$303C
  2394: '..N..B0.=|...2RB'              DC.W    $E,$4EAD,$42,$301F,$3D7C,8,$32,$5242
  23A4: '.B..m...BB(n..Jn'              DC.W    $C42,3,$6D00,4,$4242,$286E,$16,$4A6E
  23B4: '..m."l.<`."l.8Z@'              DC.W    $1E,$6D06,$226C,$3C,$6006,$226C,$38,$5A40
  23C4: '=B..=A..N...N..$'              DC.W    $3D42,$10,$3D41,$E,$4EAD,$2E2,$4EFA,$E224
  23D4: 'Nu'                            DC.W    $4E75

  23D6:                                 QUAL    proc140 ; b# =278  s#2  =proc140

                                 ;-refs -  2/proc124    2/com_8     12/proc353   

  23D6: 3C2E 0006      '<...'  proc140  MOVE    6(A6),D6
  23DA: B272 6000      '.r`.'  lgj_1    CMP.W   0(A2,D6.W),D1
  23DE: 6C04           20023E4          BGE.S   lgj_2
  23E0: 5946           'YF'             SUBQ    #4,D6
  23E2: 60F6           20023DA          BRA     lgj_1
  23E4: B272 6000      '.r`.'  lgj_2    CMP.W   0(A2,D6.W),D1
  23E8: 6F04           20023EE          BLE.S   lgj_3
  23EA: 5846           'XF'             ADDQ    #4,D6
  23EC: 60F6           20023E4          BRA     lgj_2
  23EE: 3D46 0006      '=F..'  lgj_3    MOVE    D6,6(A6)
  23F2: 4E75           'Nu'             RTS     

  23F4:                                 QUAL    com_33 ; b# =279  s#2  =com_33

                                 ;-refs -  2/com_28    

  23F4: 536E 0030      'Sn.0'  com_33   SUBQ    #1,48(A6)
  23F8: 6E0E           2002408          BGT.S   lgk_1
  23FA: 3B7C 0003 FEA6   -$15A          MOVE    #3,glob172(A5)
  2400: 426D FEA4        -$15C          CLR     glob171(A5)
  2404: 50ED FEFD        -$103          ST      glob203(A5)
  2408: 4E75           'Nu'    lgk_1    RTS     

  240A:                                 QUAL    proc141 ; b# =280  s#2  =proc141

                                 ;-refs -  2/proc132   

  240A: 082E 0001 0015 '...... proc141  BTST    #1,21(A6)
  2410: 6722           2002434          BEQ.S   lgl_1
  2412: 3F00           '?.'             PUSH    D0
  2414: 303C 0063      '0<.c'           MOVE    #99,D0
  2418: 4EAD 0042      10000BE          JSR     proc9(A5)
  241C: 301F           '0.'             POP     D0
  241E: 3D7C 001E 002E '=|....'         MOVE    #30,46(A6)
  2424: 3D6E 0012 002C '=n...,'         MOVE    18(A6),44(A6)
  242A: 3D7C 0025 0012 '=|.%..'         MOVE    #37,18(A6)
  2430: 4A9F           'J.'             TST.L   (A7)+
  2432: 6002           2002436          BRA.S   lgl_2
  2434: 4E75           'Nu'    lgl_1    RTS     
  2436: 4EBA FC96      20020CE lgl_2    JSR     proc139
  243A: 206D FFA0         -$60          MOVEA.L glob253(A5),A0
  243E: 286E 0016      '(n..'           MOVEA.L 22(A6),A4
  2442: 4A6E 001E      'Jn..'           TST     30(A6)
  2446: 6E06           200244E          BGT.S   lgl_3
  2448: 226C 00B0      '"l..'           MOVEA.L $B0(A4),A1
  244C: 6004           2002452          BRA.S   lgl_4
  244E: 226C 00B4      '"l..'  lgl_3    MOVEA.L $B4(A4),A1
  2452: 342E 002E      '4...'  lgl_4    MOVE    46(A6),D2
  2456: 0242 0001      '.B..'           ANDI    #1,D2
  245A: 5741           'WA'             SUBQ    #3,D1
  245C: 5D40           ']@'             SUBQ    #6,D0
  245E: 4EAD 02E2      3000000          JSR     proc146(A5)
  2462: 536E 002E      'Sn..'           SUBQ    #1,46(A6)
  2466: 6E1E           2002486          BGT.S   lgl_6
  2468: 3D6E 002C 0012 '=n.,.. lgl_5    MOVE    44(A6),18(A6)
  246E: 426E 002C      'Bn.,'           CLR     44(A6)
  2472: 08AE 0002 0014 '......'         BCLR    #2,20(A6)
  2478: 3F00           '?.'             PUSH    D0
  247A: 303C 0063      '0<.c'           MOVE    #99,D0
  247E: 4EAD 004A      10000FA          JSR     proc10(A5)
  2482: 301F           '0.'             POP     D0
  2484: 6008           200248E          BRA.S   lgl_7
  2486: 082E 0002 0014 '...... lgl_6    BTST    #2,20(A6)
  248C: 67DA           2002468          BEQ     lgl_5
  248E: 4E75           'Nu'    lgl_7    RTS     


  2490: 'Jr@.n"m.......f.'     data108  DC.W    $4A72,$4006,$6E22,$6D1C,$82E,4,$15,$6614
  24A0: '......g.5...@...'              DC.W    $82E,2,$14,$670C,$35BC,1,$4006,$8AE
  24B0: '....N.."42@.m.SB'              DC.W    2,$14,$4EFA,$EE22,$3432,$4006,$6DF6,$5342
  24C0: '.; 6H. m..(n.._A'              DC.W    $143B,$2036,$4882,$206D,$FFA0,$286E,$16,$5F41
  24D0: '.@..n.02@.Q@"l..'              DC.W    $C40,$C8,$6E0C,$3032,$4000,$5140,$226C,$B8
  24E0: '`.02@..@.."l..N.'              DC.W    $600C,$3032,$4002,$440,$C,$226C,$DC,$4EAD
  24F0: '..N...Nu........'              DC.W    $2E2,$4EFA,$E102,$4E75,0,$102,$304,$403
  2500: '..'                            DC.W    $300

  2502:                                 QUAL    com_34 ; b# =282  s#2  =com_34

                                 ;-refs -  2/com_17    

  2502: 206D FFA0         -$60 com_34   MOVEA.L glob253(A5),A0
  2506: 362E 0030      '6..0'           MOVE    48(A6),D3
  250A: 566E 0030      'Vn.0'           ADDQ    #3,48(A6)
  250E: 49FA 017A      200268A          LEA     data110,A4  ; len= 216
  2512: D8C3           '..'             ADDA.W  D3,A4
  2514: 161C           '..'             MOVE.B  (A4)+,D3
  2516: 6C00 0084      200259C          BGE     com_35
  251A: 3F00           '?.'             PUSH    D0
  251C: 303C 000B      '0<..'           MOVE    #11,D0
  2520: 4EAD 0042      10000BE          JSR     proc9(A5)
  2524: 301F           '0.'             POP     D0
  2526: 1C32 400F      '.2@.'           MOVE.B  15(A2,D4.W),D6
  252A: 0DAD FEAE        -$152          BCLR    D6,glob176(A5)
  252E: 48E7 F0C0      'H...'           MOVEM.L D0-D3/A0-A1,-(A7)
  2532: 303C 0002      '0<..'           MOVE    #2,D0
  2536: 4EAD 03EA      3002CF6          JSR     proc184(A5)
  253A: 3E2D FEA8        -$158          MOVE    glob173(A5),D7
  253E: 0C47 0001      '.G..'           CMPI    #1,D7
  2542: 6606           200254A          BNE.S   lgm_1
  2544: 303C 0034      '0<.4'           MOVE    #52,D0
  2548: 602E           2002578          BRA.S   lgm_5
  254A: 0C47 0009      '.G..'  lgm_1    CMPI    #9,D7
  254E: 6606           2002556          BNE.S   lgm_2
  2550: 303C 0054      '0<.T'           MOVE    #84,D0
  2554: 6022           2002578          BRA.S   lgm_5
  2556: 0C47 0006      '.G..'  lgm_2    CMPI    #6,D7
  255A: 6606           2002562          BNE.S   lgm_3
  255C: 303C 0048      '0<.H'           MOVE    #72,D0
  2560: 6016           2002578          BRA.S   lgm_5
  2562: 0C47 000D      '.G..'  lgm_3    CMPI    #13,D7
  2566: 6606           200256E          BNE.S   lgm_4
  2568: 303C 0060      '0<.`'           MOVE    #96,D0
  256C: 600A           2002578          BRA.S   lgm_5
  256E: 0C47 000C      '.G..'  lgm_4    CMPI    #12,D7
  2572: 6608           200257C          BNE.S   lgm_6
  2574: 303C 0064      '0<.d'           MOVE    #$64,D0
  2578: 4EAD 0492      30040F4 lgm_5    JSR     proc216(A5)
  257C: 4CDF 030F      'L...'  lgm_6    MOVEM.L (A7)+,D0-D3/A0-A1
  2580: 35BC 0002 4004 '5...@.'         MOVE    #2,4(A2,D4.W)
  2586: 426E 0032      'Bn.2'           CLR     50(A6)
  258A: 3D7C 0002 0012 '=|....'         MOVE    #2,18(A6)
  2590: 302E 000C      '0...'           MOVE    12(A6),D0
  2594: 322E 000E      '2...'           MOVE    14(A6),D1
  2598: 4EFA F078      2001612          JMP     com_17

  259C:                                 QUAL    com_35 ; b# =283  s#2  =com_35

                                 ;-refs -  2/com_34    

  259C: 43ED F520        -$AE0 com_35   LEA     glob11(A5),A1
  25A0: 4883           'H.'             EXT     D3
  25A2: D2C3           '..'             ADDA.W  D3,A1
  25A4: 2251           '"Q'             MOVEA.L (A1),A1
  25A6: E243           '.C'             ASR     #1,D3
  25A8: 47FA 00DA      2002684          LEA     data109,A3  ; len= 6
  25AC: D273 3000      '.s0.'           ADD     0(A3,D3.W),D1
  25B0: 5340           'S@'             SUBQ    #1,D0
  25B2: 141C           '..'             MOVE.B  (A4)+,D2
  25B4: 4882           'H.'             EXT     D2
  25B6: 0C42 0006      '.B..'           CMPI    #6,D2
  25BA: 6644           2002600          BNE.S   lgn_1
  25BC: 082D 0002 FF3A    -$C6          BTST    #2,glob224(A5)
  25C2: 673C           2002600          BEQ.S   lgn_1
  25C4: 48E7 E8C0      'H...'           MOVEM.L D0-D2/D4/A0-A1,-(A7)
  25C8: 3404           '4.'             MOVE    D4,D2
  25CA: 362E 0006      '6...'           MOVE    6(A6),D3
  25CE: 0641 0011      '.A..'           ADDI    #17,D1
  25D2: 4EAD 0402      3003028          JSR     proc197(A5)
  25D6: 4CDF 0317      'L...'           MOVEM.L (A7)+,D0-D2/D4/A0-A1
  25DA: 426D FF22         -$DE          CLR     glob214(A5)
  25DE: 3D7C 0042 0012 '=|.B..'         MOVE    #66,18(A6)
  25E4: 2D49 001A      '-I..'           MOVE.L  A1,26(A6)
  25E8: 3D41 000E      '=A..'           MOVE    D1,14(A6)
  25EC: 3D42 0010      '=B..'           MOVE    D2,16(A6)
  25F0: 3D7C 0005 0030 '=|...0'         MOVE    #5,48(A6)
  25F6: 3D7C 000F 0032 '=|...2'         MOVE    #15,50(A6)
  25FC: 4EFA EC7E      200127C          JMP     proc131
  2600: 48E7 E040      'H..@'  lgn_1    MOVEM.L D0-D2/A1,-(A7)
  2604: 1E1C           '..'             MOVE.B  (A4)+,D7
  2606: 4887           'H.'             EXT     D7
  2608: 6D38           2002642          BLT.S   lgn_3
  260A: 0C47 0040      '.G.@'           CMPI    #64,D7 ; '@'
  260E: 6D10           2002620          BLT.S   lgn_2
  2610: 0447 0040      '.G.@'           SUBI    #64,D7
  2614: 3F00           '?.'             PUSH    D0
  2616: 303C 003B      '0<.;'           MOVE    #59,D0
  261A: 4EAD 0042      10000BE          JSR     proc9(A5)
  261E: 301F           '0.'             POP     D0
  2620: 3407           '4.'    lgn_2    MOVE    D7,D2
  2622: 226D F608        -$9F8          MOVEA.L glob31(A5),A1
  2626: 302E 000C      '0...'           MOVE    12(A6),D0
  262A: 322E 000E      '2...'           MOVE    14(A6),D1
  262E: 0440 000A      '.@..'           SUBI    #10,D0
  2632: 0441 0011      '.A..'           SUBI    #17,D1
  2636: 9068 0012      '.h..'           SUB     18(A0),D0
  263A: 9268 0014      '.h..'           SUB     20(A0),D1
  263E: 4EAD 02FA      3000426          JSR     proc150(A5)
  2642: 4CDF 0207      'L...'  lgn_3    MOVEM.L (A7)+,D0-D2/A1
  2646: 4EAD 02E2      3000000          JSR     proc146(A5)
  264A: 4A47           'JG'             TST     D7
  264C: 6D12           2002660          BLT.S   lgn_4
  264E: 226D F610        -$9F0          MOVEA.L glob33(A5),A1
  2652: 3407           '4.'             MOVE    D7,D2
  2654: 5E40           '^@'             ADDQ    #7,D0
  2656: 5241           'RA'             ADDQ    #1,D1
  2658: 4EAD 02E2      3000000          JSR     proc146(A5)
  265C: 6000 0104      2002762          BRA     com_36
  2660: 0C47 FFFE      '.G..'  lgn_4    CMPI    #-2,D7
  2664: 6600 00FC      2002762          BNE     com_36
  2668: 206D F9F0        -$610          MOVEA.L glob75(A5),A0
  266C: 5048           'PH'             ADDQ    #8,A0
  266E: 42A8 FFFC      'B...'           CLR.L   -4(A0)
  2672: 206D F9F4        -$60C          MOVEA.L glob76(A5),A0
  2676: B0FC 0000      '....'           CMPA.W  #0,A0
  267A: 6700 00E6      2002762          BEQ     com_36
  267E: 4E90           'N.'             JSR     (A0)
  2680: 6000 00E0      2002762          BRA     com_36

                                 ;-refs -  2/com_35    

  2684: '......'               data109  DC.W    2,$FFEF,$FFF3

                                 ;-refs -  2/com_34    

  268A: '................'     data110  DC.W    0,$FF00,$FF,1,$FE00,$1FF,$800,$FF08
  269A: '................'              DC.W    $FF,$400,$FF04,$FF,$401,$FF04,$1FF,$402
  26AA: '................'              DC.W    $FF04,$2FF,$403,$FF04,$3FF,$404,$FF04,$4FF
  26BA: '.....A..........'              DC.W    $405,4,$541,$405,$204,$503,$405,$404
  26CA: '................'              DC.W    $505,$405,$504,$505,$405,$404,$503,$405
  26DA: '............A...'              DC.W    $204,$501,$405,4,$500,$405,$4104,$502
  26EA: '................'              DC.W    $405,$304,$504,$405,$504,$505,$405,$504
  26FA: '................'              DC.W    $504,$405,$304,$502,$405,$104,$500,$405
  270A: '...A............'              DC.W    4,$541,$405,$204,$503,$405,$404,$505
  271A: '................'              DC.W    $405,$504,$505,$405,$404,$503,$405,$204
  272A: '................'              DC.W    $501,$405,8,$1FF,$802,$FF08,$3FF,$804
  273A: '................'              DC.W    $FF00,$2FF,2,$FF00,$3FF,3,$FF00,$4FF
  274A: '................'              DC.W    4,$FF00,$5FF,5,$FF00,$6FF,6,$FF00
  275A: '........'                      DC.W    $7FF,7,$FFFF,0

  2762:                                 QUAL    com_36 ; b# =286  s#2  =com_36

                                 ;-refs -  2/com_35    

  2762: 4E75           'Nu'    com_36   RTS     


  2764: ' m..6..0N.0.N...'     data111  DC.W    $206D,$FFA0,$362E,$30,$4EFB,$3002,$4EFA,6
  2774: 'N..0......f"....'              DC.W    $4EFA,$30,$82E,4,$15,$6622,$82E,2
  2784: '..g.......g.....'              DC.W    $14,$671A,$82E,2,$15,$6712,$8AE,2
  2794: '..=|...0Bn.2`.N.'              DC.W    $14,$3D7C,4,$30,$426E,$32,$6004,$4EFA
  27A4: '.46..2Vn.2I.....'              DC.W    $EB34,$362E,$32,$566E,$32,$49FA,$B2,$D8C3
  27B4: '..l0<2@.....0<..'              DC.W    $161C,$6C30,$3C32,$400A,$DED,$FEAC,$303C,2
  27C4: 'N....-....f...P.'              DC.W    $4EAD,$3E2,$C2D,$1F,$FEAC,$6600,$A,$50ED
  27D4: '..P...5...@.Bn..'              DC.W    $FA08,$50ED,$FA09,$35BC,1,$4004,$426E,$12
  27E4: 'N...C..,H..."Q.C'              DC.W    $4EFA,$EAF2,$43ED,$F52C,$4883,$D2C3,$2251,$E243
  27F4: '.{0f02@...H.N...'              DC.W    $D27B,$3066,$3032,$4006,$141C,$4882,$4EAD,$2E2
  2804: '..H.m(.G.@m..G.@'              DC.W    $1E1C,$4887,$6D28,$C47,$40,$6D10,$447,$40
  2814: '?.0<.;N..B0."m..'              DC.W    $3F00,$303C,$3B,$4EAD,$42,$301F,$226D,$F610
  2824: '4.^@RAN...`....G'              DC.W    $3407,$5E40,$5241,$4EAD,$2E2,$6000,$D2,$C47
  2834: '..f...02@.22@.BB'              DC.W    $FFFE,$6600,$CA,$3032,$4006,$3232,$4008,$4242
  2844: '"m..N...?.0<.PN.'              DC.W    $226D,$F60C,$4EAD,$3D2,$3F00,$303C,$50,$4EAD
  2854: '.B0.`...........'              DC.W    $42,$301F,$6000,$A8,0,$FFEF,$FFF9,0
  2864: '................'              DC.W    $FF00,$FF,1,$FF00,$1FF,0,$FF00,$FF
  2874: '................'              DC.W    2,$FF00,$2FF,2,$FF00,$2FF,3,$FF00
  2884: '................'              DC.W    $3FF,$800,$FF08,$FF,$801,$FF08,$1FF,$400
  2894: '................'              DC.W    $FF04,$FF,$401,$FF04,$1FF,$402,$FF04,$2FF
  28A4: '........A.......'              DC.W    $403,$FF04,$300,$403,$4104,$302,$403,$304
  28B4: '................'              DC.W    $304,$403,$504,$304,$403,$304,$302,$403
  28C4: '......A.........'              DC.W    $104,$300,$403,$4104,$302,$403,$304,$304
  28D4: '................'              DC.W    $403,$504,$304,$403,$304,$302,$403,$104
  28E4: '................'              DC.W    $300,$802,$FF08,$2FE,4,$FF00,$4FF,5
  28F4: '..............Nu'              DC.W    $FF00,$5FF,6,$FF00,$6FF,$FF00,0,$4E75
  2904: 'Jn.0n ......f..V'              DC.W    $4A6E,$30,$6E20,$82E,4,$15,$6600,$256
  2914: '......g..L......'              DC.W    $82E,2,$14,$6700,$24C,$8AE,2,$14
  2924: '=|...0Sn.0 m...r'              DC.W    $3D7C,3,$30,$536E,$30,$206D,$FFA0,$C72
  2934: '..@.m."m.pBB02@.'              DC.W    $1C,$4008,$6D12,$226D,$F470,$4242,$3032,$4000
  2944: 'P@.A..`."m..Jn..'              DC.W    $5040,$441,$B,$601E,$226D,$F4B4,$4A6E,$1E
  2954: 'm.02@.BB`.02@.4<'              DC.W    $6D08,$3032,$4002,$4242,$6008,$3032,$4000,$343C
  2964: '...A..N...Jn.0n.'              DC.W    1,$641,$E,$4EAD,$2E2,$4A6E,$30,$6E00
  2974: '..62@.N.0.`..&`.'              DC.W    $1F0,$3632,$4008,$4EFB,$3002,$6000,$26,$6000
  2984: '.n`...`...`...`.'              DC.W    $6E,$6000,$9E,$6000,$CE,$6000,$100,$6000
  2994: '.*`..N`..x`...`.'              DC.W    $12A,$6000,$14E,$6000,$178,$6000,$18C,$6000
  29A4: '...-...4b0?.0<..'              DC.W    $1A4,$C2D,$7F,$FF34,$6230,$3F00,$303C,$B
  29B4: 'N..B0.;|....?..<'              DC.W    $4EAD,$42,$301F,$3B7C,2,$FF2E,$3F06,$1C3C
  29C4: '...-.4.<.....G.4'              DC.W    $10,$1E2D,$FF34,$23C,7,$CF06,$1B47,$FF34
  29D4: '<.5...@.`.?.0<..'              DC.W    $3C1F,$35BC,1,$4004,$600C,$3F00,$303C,$D
  29E4: 'N..B0.Bn..`..t.m'              DC.W    $4EAD,$42,$301F,$426E,$12,$6000,$174,$C6D
  29F4: '.Z.$l.?.0<..N..B'              DC.W    $5A,$FF24,$6C18,$3F00,$303C,$B,$4EAD,$42
  2A04: '0.Rm.$5...@.`.?.'              DC.W    $301F,$526D,$FF24,$35BC,1,$4004,$600C,$3F00
  2A14: '0<..N..B0.Bn..`.'              DC.W    $303C,$D,$4EAD,$42,$301F,$426E,$12,$6000
  2A24: '.@.m.Z.(l.?.0<..'              DC.W    $140,$C6D,$5A,$FF28,$6C18,$3F00,$303C,$B
  2A34: 'N..B0.Rm.(5...@.'              DC.W    $4EAD,$42,$301F,$526D,$FF28,$35BC,1,$4004
  2A44: '`.?.0<..N..B0.Bn'              DC.W    $600C,$3F00,$303C,$D,$4EAD,$42,$301F,$426E
  2A54: '..`....m.Z.*l.?.'              DC.W    $12,$6000,$10C,$C6D,$5A,$FF2A,$6C1A,$3F00
  2A64: '0<..N..B0..m...*'              DC.W    $303C,$B,$4EAD,$42,$301F,$66D,$A,$FF2A
  2A74: '5...@.`.?.0<..N.'              DC.W    $35BC,1,$4004,$600C,$3F00,$303C,$D,$4EAD
  2A84: '.B0.Bn..`...?.0<'              DC.W    $42,$301F,$426E,$12,$6000,$D6,$3F00,$303C
  2A94: '..N..B0..m2..".m'              DC.W    $B,$4EAD,$42,$301F,$66D,$3200,$FF22,$C6D
  2AA4: 'd.."c.;|d.."Bn..'              DC.W    $6400,$FF22,$6306,$3B7C,$6400,$FF22,$426E,$12
  2AB4: '5...@.`...?.0<..'              DC.W    $35BC,1,$4004,$6000,$A8,$3F00,$303C,$10
  2AC4: 'N..B0.5...@.=|.C'              DC.W    $4EAD,$42,$301F,$35BC,1,$4004,$3D7C,$43
  2AD4: '..=|...0=|...2`.'              DC.W    $12,$3D7C,7,$30,$3D7C,$A,$32,$6000
  2AE4: '..?.0<..N..B0..m'              DC.W    $80,$3F00,$303C,$12,$4EAD,$42,$301F,$46D
  2AF4: '..."n.Bm."=|....'              DC.W    $1E00,$FF22,$6E04,$426D,$FF22,$3D7C,$C,$12
  2B04: 'G...-K.05...@.`P'              DC.W    $47FA,$D5EF,$2D4B,$30,$35BC,1,$4004,$6050
  2B14: '?.0<..N..B0.Bn..'              DC.W    $3F00,$303C,$B,$4EAD,$42,$301F,$426E,$12
  2B24: '5...@.`8?.0<.IN.'              DC.W    $35BC,1,$4004,$6038,$3F00,$303C,$49,$4EAD
  2B34: '.B0.Rm. Bn..5...'              DC.W    $42,$301F,$526D,$FF20,$426E,$12,$35BC,1
  2B44: '@.`.?.0<.IN..B0.'              DC.W    $4004,$601C,$3F00,$303C,$49,$4EAD,$42,$301F
  2B54: 'Zm. Bn..5...@.Nq'              DC.W    $5A6D,$FF20,$426E,$12,$35BC,1,$4004,$4E71
  2B64: 'N...N..nNuJr@.n('              DC.W    $4EFA,$DA90,$4EFA,$E76E,$4E75,$4A72,$4006,$6E28
  2B74: 'm"......f.......'              DC.W    $6D22,$82E,4,$15,$661A,$82E,2,$14
  2B84: 'g.5...@.......Bn'              DC.W    $6712,$35BC,1,$4006,$8AE,2,$14,$426E
  2B94: '.0`.N..>6..0.;06'              DC.W    $30,$6004,$4EFA,$E73E,$362E,$30,$143B,$3036
  2BA4: 'H.m.Rn.0 m.._AJr'              DC.W    $4882,$6DF0,$526E,$30,$206D,$FFA0,$5F41,$4A72
  2BB4: '@.n.02@.Q@"m..`.'              DC.W    $400E,$6E0C,$3032,$4000,$5140,$226D,$F4A8,$600C
  2BC4: '02@..@.."m..N...'              DC.W    $3032,$4002,$440,$C,$226D,$F4CC,$4EAD,$2E2
  2BD4: 'N.. ..........Nu'              DC.W    $4EFA,$DA20,0,$102,$304,$403,$3FF,$4E75
  2BE4: '>..0N.p.N...N...'              DC.W    $3E2E,$30,$4EFB,$7002,$4EFA,$A,$4EFA,$EA
  2BF4: 'N.........f.....'              DC.W    $4EFA,$B0,$82E,4,$15,$6600,$A2,$82E
  2C04: '....g.........>2'              DC.W    2,$14,$6700,$98,$8AE,2,$14,$3E32
  2C14: '@.N.p.`.` `6Jm. '              DC.W    $400C,$4EFB,$7002,$6004,$6020,$6036,$4A6D,$FF20
  2C24: 'n.G...-K.4`DG..v'              DC.W    $6E0A,$47FA,$1C6,$2D4B,$34,$6044,$47FA,$176
  2C34: '-K.4Sm. `6.m....'              DC.W    $2D4B,$34,$536D,$FF20,$6036,$C6D,0,$FEA8
  2C44: 'f.G...`.G...-K.4'              DC.W    $6606,$47FA,$1E6,$6004,$47FA,$1C4,$2D4B,$34
  2C54: '`.Jm. n.G...-K.4'              DC.W    $601E,$4A6D,$FF20,$6E0A,$47FA,$190,$2D4B,$34
  2C64: '`.Sm. G..^-K.4Nq'              DC.W    $600E,$536D,$FF20,$47FA,$15E,$2D4B,$34,$4E71
  2C74: '=|...2Bn.8=|...0'              DC.W    $3D7C,$FFFD,$32,$426E,$38,$3D7C,4,$30
  2C84: '02@..m....f..@..'              DC.W    $3032,$400E,$C6D,0,$FEA8,$6606,$640,$14
  2C94: '`..@.$=@..`..<N.'              DC.W    $6004,$640,$24,$3D40,$C,$6000,$3C,$4EFA
  2CA4: '.4.m....f.G...`.'              DC.W    $E634,$C6D,0,$FEA8,$6606,$47FA,$18A,$6004
  2CB4: 'G..l-K.4=|...2Bn'              DC.W    $47FA,$16C,$2D4B,$34,$3D7C,$FFFD,$32,$426E
  2CC4: '.8=|...002@..@..'              DC.W    $38,$3D7C,4,$30,$3032,$400E,$640,$C
  2CD4: '=@..`...6..2(n.4'              DC.W    $3D40,$C,$6000,2,$362E,$32,$286E,$34
  2CE4: 'Sn.8n^VCJ40.l8.4'              DC.W    $536E,$38,$6E5E,$5643,$4A34,$3000,$6C38,$C34
  2CF4: '..0.f.:.N..&6..2'              DC.W    $FF,$3000,$660C,$3A04,$4EBA,$E126,$362E,$32
  2D04: '`B.4..0.f.?.0<.<'              DC.W    $6042,$C34,$FD,$3000,$6614,$3F00,$303C,$3C
  2D14: 'N..B0.Bn.0`...Bn'              DC.W    $4EAD,$42,$301F,$426E,$30,$6000,$FED8,$426E
  2D24: '..N...=C.2.40.H.'              DC.W    $12,$4EFA,$E5B0,$3D43,$32,$1A34,$3002,$4885
  2D34: 'l.DE?.0<.IN..B0.'              DC.W    $6C0E,$4445,$3F00,$303C,$49,$4EAD,$42,$301F
  2D44: '=E.8 m...40.H.m.'              DC.W    $3D45,$38,$206D,$FFA0,$1434,$3001,$4882,$6D1E
  2D54: '02@.22@..m....f.'              DC.W    $3032,$400E,$3232,$4010,$C6D,0,$FEA8,$6606
  2D64: '"m..`."m..N...0.'              DC.W    $226D,$F8BC,$6004,$226D,$F6DC,$4EAD,$2E2,$302E
  2D74: '..2...RA.40.H..B'              DC.W    $C,$322E,$E,$5241,$1434,$3000,$4882,$C42
  2D84: '.@l."m..`."m...B'              DC.W    $40,$6C06,$226D,$F7CC,$600A,$226D,$F408,$442
  2D94: '.@R@N...J40.l...'              DC.W    $40,$5240,$4EAD,$2E2,$4A34,$3001,$6C00,$A2
  2DA4: 'N..PA...........'              DC.W    $4EFA,$D850,$41FF,$200,$FF03,$1FF,$300,$FF03
  2DB4: '................'              DC.W    $2FF,$403,$FF03,$4FF,$FE04,3,$401,$304
  2DC4: '......A.........'              DC.W    $203,$FF00,0,$41FF,$200,$FF03,$1FF,$300
  2DD4: '...........@..B.'              DC.W    $FF03,$2FF,$403,$FF03,$4FF,$FB40,$FF02,$42FF
  2DE4: '....B.....A.....'              DC.W    $407,$FF05,$42FF,$4FE,0,$41FF,$200,$FF03
  2DF4: '...............@'              DC.W    $1FF,$300,$FF03,$5FF,$306,$FF03,$5FF,$340
  2E04: '..B.....B.....A.'              DC.W    $FF02,$42FF,$407,$FF05,$42FF,$4FE,0,$41FF
  2E14: '..............B.'              DC.W    $FE04,3,$401,$304,$203,$FF00,0,$4202
  2E24: '.B..B.....A.....'              DC.W    $342,$103,$4200,$3FD,0,$41FF,$FE04,4
  2E34: '......B..B......'              DC.W    $401,$4FF,0,$4201,$442,4,$FD00,0
  2E44: 'Nu'                            DC.W    $4E75

  2E46:                                 QUAL    proc142 ; b# =288  s#2  =proc142

                                 ;-refs -  2/proc116    2/com_14     2/com_29    
                                 ;-        2/proc143    6/proc306   

  2E46: 382E 0004      '8...'  proc142  MOVE    4(A6),D4
  2E4A: 2456           '$V'             MOVEA.L (A6),A2
  2E4C: 302E 000C      '0...'           MOVE    12(A6),D0
  2E50: 322E 000E      '2...'           MOVE    14(A6),D1
  2E54: 362E 0012      '6...'           MOVE    18(A6),D3
  2E58: E543           '.C'             ASL     #2,D3
  2E5A: 4EFB 3002      2002E5E          JMP     data112(D3.W)

  2E5E:                                 JBIAS  0
                                 ;-refs -  2/proc142   

  2E5E: 4EFA E478      20012D8 data112  JMP     proc132
  2E62: 4EFA E688      20014EC          JMP     com_16
  2E66: 4EFA E7AA      2001612          JMP     com_17
  2E6A: 4EFA EA7E      20018EA          JMP     com_25
  2E6E: 4EFA EB1E      200198E          JMP     proc133
  2E72: 4EFA EECE      2001D42          JMP     com_27
  2E76: 4EFA F0D8      2001F50          JMP     com_32
  2E7A: 4EFA E8BE      200173A          JMP     com_20
  2E7E: 4EFA E9DE      200185E          JMP     com_24
  2E82: 4EFA E454      20012D8          JMP     proc132
  2E86: 4EFA E450      20012D8          JMP     proc132
  2E8A: 4EFA E44C      20012D8          JMP     proc132
  2E8E: 4EFA D170      2000000          JMP     proc116
  2E92: 4EFA D56A      20003FE          JMP     lgp_1
  2E96: 4EFA E86A      2001702          JMP     com_19
  2E9A: 4EFA E82A      20016C6          JMP     com_18
  2E9E: 4EFA F248      20020E8          JMP     lgp_2
  2EA2: 4EFA E434      20012D8          JMP     proc132


  2EA6: 'N...N...N..$N..`'     data113  DC.W    $4EED,$692,$4EED,$69A,$4EFA,$F124,$4EFA,$F160
  2EB6: 'N..*N..JN.."N..B'              DC.W    $4EED,$62A,$4EED,$64A,$4EED,$622,$4EED,$642
  2EC6: 'N..RN..2N..:N...'              DC.W    $4EED,$652,$4EED,$632,$4EED,$63A,$4EED,$61A
  2ED6: 'N...N...N...N...'              DC.W    $4EFA,$E400,$4EFA,$E3FC,$4EFA,$E3F8,$4EFA,$D3C6
  2EE6: 'N...N...N...N..B'              DC.W    $4EFA,$E3F0,$4EED,$6E2,$4EED,$6F2,$4EFA,$F542
  2EF6: 'N..ZN...N...N...'              DC.W    $4EED,$65A,$4EFA,$E3DC,$4EFA,$F4F4,$4EED,$60A
  2F06: 'N...N...N..DN...'              DC.W    $4EFA,$E3D0,$4EFA,$E3CC,$4EFA,$E044,$4EFA,$E0D2
  2F16: 'N...N..fN...N..l'              DC.W    $4EFA,$F21C,$4EFA,$F266,$4EED,$6A2,$4EFA,$F56C
  2F26: 'N..jN...N...N...'              DC.W    $4EED,$66A,$4EFA,$E1A6,$4EFA,$E3A8,$4EED,$5BA
  2F36: 'N...N...N...N...'              DC.W    $4EED,$5CA,$4EED,$5D2,$4EED,$5FA,$4EFA,$F5BE
  2F46: 'N...N...N...N...'              DC.W    $4EFA,$F81C,$4EFA,$F9B8,$4EFA,$FC1E,$4EED,$612
  2F56: 'N...N...N...N...'              DC.W    $4EED,$6FA,$4EFA,$FC88,$4EED,$6B2,$4EFA,$E29E
  2F66: 'N...N..2N...N...'              DC.W    $4EFA,$E314,$4EFA,$E332,$4EED,$682,$4EED,$6CA
  2F76: 'N..rN...Nu'                    DC.W    $4EED,$672,$4EED,$70A,$4E75

                                 ;-refs -  2/proc143   

  2F80: '&m.<PKA..@0<...1'     data114  DC.W    $266D,$FF3C,$504B,$41ED,$FF40,$303C,$1E,$A031
  2F90: 'J@f..$0-.@.@..g.'              DC.W    $4A40,$6600,$24,$302D,$FF40,$C40,3,$671C
  2FA0: '.@..g....@..g...'              DC.W    $C40,4,$6700,$DE,$C40,1,$6700,$2CA
  2FB0: '.@..g...`...<-.N'              DC.W    $C40,2,$6700,$2CC,$6000,$2D2,$3C2D,$FF4E
  2FC0: '....f..d.-.EH..@'              DC.W    $806,8,$6600,$164,$102D,$FF45,$4880,$C40
  2FD0: '.am..@.zn..@.  m'              DC.W    $61,$6D0A,$C40,$7A,$6E04,$440,$20,$206D
  2FE0: '.P P.Pf.7|....`.'              DC.W    $FF50,$2050,$B050,$660A,$377C,$FFF8,$A,$6000
  2FF0: '...h..f.7|....`.'              DC.W    $29C,$B068,2,$660A,$377C,8,$A,$6000
  3000: '...h..f.7|......'              DC.W    $28C,$B068,4,$6618,$377C,$FFF8,8,$806
  3010: '..g..x......`..n'              DC.W    9,$6700,$278,$8EB,0,$14,$6000,$26E
  3020: '.h..f.7|........'              DC.W    $B068,6,$6618,$377C,8,8,$806,9
  3030: 'g..Z......`..P.h'              DC.W    $6700,$25A,$8EB,0,$14,$6000,$250,$B068
  3040: '..f.......`..@.h'              DC.W    $A,$660A,$8EB,2,$14,$6000,$240,$B068
  3050: '..f.......`..0.h'              DC.W    8,$660A,$8EB,0,$14,$6000,$230,$B068
  3060: '..f.......`.. .h'              DC.W    $C,$660A,$8EB,3,$14,$6000,$220,$B068
  3070: '..f.Jm..f...`..B'              DC.W    $E,$660C,$4A6D,$FEC6,$6600,$212,$6000,$242
  3080: '`....-.EH..@.am.'              DC.W    $6000,$20A,$102D,$FF45,$4880,$C40,$61,$6D0A
  3090: '.@.zn..@.  m.P P'              DC.W    $C40,$7A,$6E04,$440,$20,$206D,$FF50,$2050
  30A0: '.Pf.Jk..l...Bk..'              DC.W    $B050,$6610,$4A6B,$A,$6C00,$1E2,$426B,$A
  30B0: '`....h..f.Jk..o.'              DC.W    $6000,$1DA,$B068,2,$6610,$4A6B,$A,$6F00
  30C0: '..Bk..`....h..f.'              DC.W    $1CC,$426B,$A,$6000,$1C4,$B068,4,$6610
  30D0: 'Jk..l...Bk..`...'              DC.W    $4A6B,8,$6C00,$1B6,$426B,8,$6000,$1AE
  30E0: '.h..f.Jk..o...Bk'              DC.W    $B068,6,$6610,$4A6B,8,$6F00,$1A0,$426B
  30F0: '..`....h..f.....'              DC.W    8,$6000,$198,$B068,$A,$660A,$8AB,2
  3100: '..`....h..f.....'              DC.W    $14,$6000,$188,$B068,8,$660A,$8AB,0
  3110: '..`..x.h..f.....'              DC.W    $14,$6000,$178,$B068,$C,$660A,$8AB,3
  3120: '..`..h`..d.-.EH.'              DC.W    $14,$6000,$168,$6000,$164,$102D,$FF45,$4880
  3130: '.@.am..@.zn..@. '              DC.W    $C40,$61,$6D0A,$C40,$7A,$6E04,$440,$20
  3140: ' m.P P.h..f.P...'              DC.W    $206D,$FF50,$2050,$B068,$10,$6608,$50ED,$FEFD
  3150: 'Bm..J-..g....@.L'              DC.W    $426D,$FEF8,$4A2D,$FE9F,$6700,$112,$C40,$4C
  3160: 'f..m.1..n...Rm..'              DC.W    $6612,$C6D,$31,$FEF8,$6E00,$10A,$526D,$FEF8
  3170: '`....@.Ef..m.-.$'              DC.W    $6000,$FE,$C40,$45,$6612,$C6D,$2D,$FF24
  3180: 'n...Zm.$`....@.R'              DC.W    $6E00,$F2,$5A6D,$FF24,$6000,$E6,$C40,$52
  3190: 'f*.-...4b...;|..'              DC.W    $662A,$C2D,$7F,$FF34,$6200,$DA,$3B7C,2
  31A0: '..?..<...-.4.<..'              DC.W    $FF2E,$3F06,$1C3C,$10,$1E2D,$FF34,$23C,7
  31B0: '...G.4<.`....@.G'              DC.W    $CF06,$1B47,$FF34,$3C1F,$6000,$B6,$C40,$47
  31C0: 'f..m.Z.*l....m..'              DC.W    $6614,$C6D,$5A,$FF2A,$6C00,$AA,$66D,$A
  31D0: '.*`....@.Kf..m.-'              DC.W    $FF2A,$6000,$9C,$C40,$4B,$6612,$C6D,$2D
  31E0: '. n...Zm. `....@'              DC.W    $FF20,$6E00,$90,$5A6D,$FF20,$6000,$84,$C40
  31F0: '.Hf..m...".md.."'              DC.W    $48,$661A,$66D,$1900,$FF22,$C6D,$6400,$FF22
  3200: 'o..n;|d.."`..d.@'              DC.W    $6F00,$6E,$3B7C,$6400,$FF22,$6000,$64,$C40
  3210: '.Bf..m.-.(n..XZm'              DC.W    $42,$6612,$C6D,$2D,$FF28,$6E00,$58,$5A6D
  3220: '.(`..L.@.Sf..+..'              DC.W    $FF28,$6000,$4C,$C40,$53,$661C,$82B,1
  3230: '..f..@/.,K0<..N.'              DC.W    $15,$6600,$40,$2F0E,$2C4B,$303C,1,$4EAD
  3240: '..,_`..*.@.Ff..+'              DC.W    $3EA,$2C5F,$6000,$2A,$C40,$46,$661A,$82B
  3250: '....f.../.,KB@N.'              DC.W    0,$15,$6600,$1E,$2F0E,$2C4B,$4240,$4EAD
  3260: '..,_`...`.."`...'              DC.W    $3EA,$2C5F,$6000,$A,$6000,$22,$6000,$1E
  3270: '`...`.........`.'              DC.W    $6000,$1A,$6000,$16,$8EB,1,$14,$6000
  3280: '........`... m.P'              DC.W    $C,$8AB,1,$14,$6000,2,$206D,$FF50
  3290: ' PJh..f.08.2....'              DC.W    $2050,$4A68,$12,$660A,$3038,$832,$C0ED,$FCAA
  32A0: '`.08.0......j.B@'              DC.W    $6008,$3038,$830,$C0ED,$FCA8,$E080,$6A02,$4240
  32B0: '.@..m.0<..7@. Nu'              DC.W    $C40,$200,$6D04,$303C,$1FF,$3740,$20,$4E75
  32C0: 'N..2A..@0<...0J@'              DC.W    $4EAD,$32,$41ED,$FF40,$303C,$A,$A030,$4A40
  32D0: 'f.N..:`...'                    DC.W    $66F2,$4EAD,$3A,$6000,$FCAE

  32DA:                                 QUAL    proc143 ; b# =292  s#2  =proc143

                                 ;-refs -  8/proc330    9/proc336   10/proc341   
                                 ;-       11/proc351   12/proc355   14/proc361   
                                 ;-       15/proc370   16/proc376   18/proc386   
                                 ;-       20/proc394   21/proc396   22/proc397   
                                 ;-       23/proc398   24/proc399   25/proc402   

  32DA: 3400           '4.'    proc143  MOVE    D0,D2
  32DC: 3A01           ':.'             MOVE    D1,D5
  32DE: 7048           'pH'             MOVEQ   #72,D0
  32E0: A31E           '..'             _NewPtr ,CLEAR; (D0/byteCount:Size):A0\Ptr 
  32E2: 2B48 FF3C         -$C4          MOVE.L  A0,glob225(A5)
  32E6: 43FA FB5E      2002E46          LEA     proc142,A1
  32EA: 2149 0004      '!I..'           MOVE.L  A1,4(A0)
  32EE: 214A 0008      '!J..'           MOVE.L  A2,8(A0)
  32F2: 3145 000C      '1E..'           MOVE    D5,12(A0)
  32F6: 3142 000E      '1B..'           MOVE    D2,14(A0)
  32FA: 4268 0010      'Bh..'           CLR     16(A0)
  32FE: 4268 0012      'Bh..'           CLR     18(A0)
  3302: 3172 5000 0014 '1rP...'         MOVE    0(A2,D5.W),20(A0)
  3308: 3172 2000 0016 '1r ...'         MOVE    0(A2,D2.W),22(A0)
  330E: 4268 0018      'Bh..'           CLR     24(A0)
  3312: 4268 001A      'Bh..'           CLR     26(A0)
  3316: 4228 001C      'B(..'           CLR.B   28(A0)
  331A: 116D FF3A 001D    -$C6          MOVE.B  glob224(A5),29(A0)
  3320: 43ED F3F0        -$C10          LEA     glob1(A5),A1
  3324: 2149 001E      '!I..'           MOVE.L  A1,30(A0)
  3328: 2151 0022      '!Q."'           MOVE.L  (A1),34(A0)
  332C: 4268 0028      'Bh.('           CLR     40(A0)
  3330: 4268 002A      'Bh.*'           CLR     42(A0)
  3334: 4268 002C      'Bh.,'           CLR     44(A0)
  3338: 4268 0030      'Bh.0'           CLR     48(A0)
  333C: 4268 0032      'Bh.2'           CLR     50(A0)
  3340: 20AD FEFE        -$102          MOVE.L  glob204(A5),(A0)
  3344: 2B48 FEFE        -$102          MOVE.L  A0,glob204(A5)
  3348: 2C48           ',H'             MOVEA.L A0,A6
  334A: 504E           'PN'             ADDQ    #8,A6
  334C: 0C72 003A 5004 '.r.:P.'         CMPI    #58,4(A2,D5.W) ; ':'
  3352: 6606           200335A          BNE.S   lgq_1
  3354: 426E 0012      'Bn..'           CLR     18(A6)
  3358: 6004           200335E          BRA.S   lgq_2
  335A: 4EBA D6A0      20009FC lgq_1    JSR     proc125
  335E: 1B72 500B FA04   -$5FC lgq_2    MOVE.B  11(A2,D5.W),glob83(A5)
  3364: 1B7C 00FF FA05   -$5FB          MOVE.B  #$FF,glob84(A5)
  336A: 3E2D FE9C        -$164          MOVE    glob168(A5),D7
  336E: E547           '.G'             ASL     #2,D7
  3370: 4EFB 7002      2003374          JMP     data115(D7.W)
  3374:                                 JBIAS  0
                                 ;-refs -  2/proc143   

  3374: 4EFA 000A      2003380 data115  JMP     lgq_3
  3378: 4EFA 0012      200338C          JMP     lgq_4
  337C: 4EFA 000E      200338C          JMP     lgq_4

  3380: 7008           'p.'    lgq_3    MOVEQ   #8,D0
  3382: A31E           '..'             _NewPtr ,CLEAR; (D0/byteCount:Size):A0\Ptr 
  3384: 43FA FBFA      2002F80          LEA     data114,A1  ; len= 858
  3388: 6000 000E      2003398          BRA     lgq_5
  338C: 700A           'p.'    lgq_4    MOVEQ   #10,D0
  338E: A31E           '..'             _NewPtr ,CLEAR; (D0/byteCount:Size):A0\Ptr 
  3390: 43ED 071A    $11000386          LEA     proc377(A5),A1
  3394: 6000 0002      2003398          BRA     lgq_5
  3398: 2149 0004      '!I..'  lgq_5    MOVE.L  A1,4(A0)
  339C: 20AD FEFE        -$102          MOVE.L  glob204(A5),(A0)
  33A0: 2B48 FEFE        -$102          MOVE.L  A0,glob204(A5)
  33A4: 42AD FF1C         -$E4          CLR.L   glob212(A5)
  33A8: 42AD FF18         -$E8          CLR.L   glob211(A5)
  33AC: 51ED FEB5        -$14B          SF      glob179(A5)
  33B0: 4E75           'Nu'             RTS     

  33B2:                                 QUAL    proc144 ; b# =294  s#2  =proc144

                                 ;-refs -  2/proc145   

  33B2: 48E7 84B0      'H...'  proc144  MOVEM.L D0/D5/A0/A2-A3,-(A7)
  33B6: 3A00           ':.'             MOVE    D0,D5
  33B8: 2448           '$H'             MOVEA.L A0,A2
  33BA: 702A           'p*'             MOVEQ   #42,D0
  33BC: A31E           '..'             _NewPtr ,CLEAR; (D0/byteCount:Size):A0\Ptr 
  33BE: 47FA 0068      2003428          LEA     data116,A3  ; len= 138
  33C2: 214B 0004      '!K..'           MOVE.L  A3,4(A0)
  33C6: 4845           'HE'             SWAP    D5
  33C8: 4245           'BE'             CLR     D5
  33CA: 2145 0010      '!E..'           MOVE.L  D5,16(A0)
  33CE: 4841           'HA'             SWAP    D1
  33D0: 4241           'BA'             CLR     D1
  33D2: 2141 0014      '!A..'           MOVE.L  D1,20(A0)
  33D6: 2142 0018      '!B..'           MOVE.L  D2,24(A0)
  33DA: 2143 001C      '!C..'           MOVE.L  D3,28(A0)
  33DE: 95A8 0010      '....'           SUB.L   D2,16(A0)
  33E2: 97A8 0014      '....'           SUB.L   D3,20(A0)
  33E6: 214A 0020      '!J. '           MOVE.L  A2,32(A0)
  33EA: 4268 0024      'Bh.$'           CLR     36(A0)
  33EE: 2144 0026      '!D.&'           MOVE.L  D4,38(A0)
  33F2: B2FC 0000      '....'           CMPA.W  #0,A1
  33F6: 671A           2003412          BEQ.S   lgr_1
  33F8: 2651           '&Q'             MOVEA.L (A1),A3
  33FA: 214B 0008      '!K..'           MOVE.L  A3,8(A0)
  33FE: 2149 000C      '!I..'           MOVE.L  A1,12(A0)
  3402: 2288           '".'             MOVE.L  A0,(A1)
  3404: 5091           'P.'             ADDQ.L  #8,(A1)
  3406: B6FC 0000      '....'           CMPA.W  #0,A3
  340A: 670E           200341A          BEQ.S   lgr_2
  340C: 2751 0004      ''Q..'           MOVE.L  (A1),4(A3)
  3410: 6008           200341A          BRA.S   lgr_2
  3412: 42A8 0008      'B...'  lgr_1    CLR.L   8(A0)
  3416: 42A8 000C      'B...'           CLR.L   12(A0)
  341A: 20AE FFF8      ' ...'  lgr_2    MOVE.L  -8(A6),(A0)
  341E: 2D48 FFF8      '-H..'           MOVE.L  A0,-8(A6)
  3422: 4CDF 0D21      'L..!'           MOVEM.L (A7)+,D0/D5/A0/A2-A3
  3426: 4E75           'Nu'             RTS     

                                 ;-refs -  2/proc144   

  3428: ' ...gl"...&.....'     data116  DC.W    $202E,8,$676C,$222E,$C,$262E,$1E,$D7AE
  3438: '.......... m..(.'              DC.W    $14,$D0AE,$10,$D2AE,$14,$206D,$FFA0,$2800
  3448: '*.HD.h..HE.h...D'              DC.W    $2A01,$4844,$9868,$12,$4845,$9A68,$14,$C44
  3458: '..o>.D..l8.E..o2'              DC.W    4,$6F3E,$C44,$1F8,$6C38,$C45,4,$6F32
  3468: '.E.Nl,"n..4...RB'              DC.W    $C45,$14E,$6C2C,$226E,$18,$342E,$1C,$5242
  3478: '.i..m.BB-@..-A..'              DC.W    $B469,2,$6D02,$4242,$2D40,8,$2D41,$C
  3488: '=B..H@HAY@YAN...'              DC.W    $3D42,$1C,$4840,$4841,$5940,$5941,$4EAD,$2E2
  3498: 'Nu&n......g.(V&.'              DC.W    $4E75,$266E,4,$B6FC,0,$6708,$2856,$268C
  34A8: ')K..B...`.'                    DC.W    $294B,4,$42AE,$FFFC,$60E6

  34B2:                                 QUAL    proc145 ; b# =296  s#2  =proc145

                                 ;-refs -  2/com_14     7/proc311   

  34B2: 48E7 FFF8      'H...'  proc145  MOVEM.L D0-D7/A0-A4,-(A7)
  34B6: 206D FFA0         -$60          MOVEA.L glob253(A5),A0
  34BA: 286E 0016      '(n..'           MOVEA.L 22(A6),A4
  34BE: 4247           'BG'             CLR     D7
  34C0: 342E 0024      '4..$'           MOVE    36(A6),D2
  34C4: E542           '.B'             ASL     #2,D2
  34C6: 4EFB 2002      20034CA          JMP     data117(D2.W)
  34CA:                                 JBIAS  0
                                 ;-refs -  2/proc145   

  34CA: 4EFA 0034      2003500 data117  JMP     lgs_3
  34CE: 4EFA 000A      20034DA          JMP     lgs_1
  34D2: 4EFA 0094      2003568          JMP     lgs_6
  34D6: 4EFA 0096      200356E          JMP     lgs_7

  34DA: 342E 0020      '4.. '  lgs_1    MOVE    32(A6),D2
  34DE: B46E 0022      '.n."'           CMP.W   34(A6),D2
  34E2: 6610           20034F4          BNE.S   lgs_2
  34E4: 082E 0001 0014 '......'         BTST    #1,20(A6)
  34EA: 6608           20034F4          BNE.S   lgs_2
  34EC: 343C 0007      '4<..'           MOVE    #7,D2
  34F0: 6000 0170      2003662          BRA     lgs_17
  34F4: 3D7C 0019 0026 '=|...& lgs_2    MOVE    #25,38(A6)
  34FA: 426E 0024      'Bn.$'           CLR     36(A6)
  34FE: 4E71           'Nq'             NOP     
  3500: 342E 0020      '4.. '  lgs_3    MOVE    32(A6),D2
  3504: B46E 0022      '.n."'           CMP.W   34(A6),D2
  3508: 670A           2003514          BEQ.S   lgs_4
  350A: 3D7C 0019 0026 '=|...&'         MOVE    #25,38(A6)
  3510: 3D42 0022      '=B."'           MOVE    D2,34(A6)
  3514: 536E 0028      'Sn.('  lgs_4    SUBQ    #1,40(A6)
  3518: 6C3A           2003554          BGE.S   lgs_5
  351A: 426E 0028      'Bn.('           CLR     40(A6)
  351E: 082E 0001 0014 '......'         BTST    #1,20(A6)
  3524: 672E           2003554          BEQ.S   lgs_5
  3526: 3D7C 0019 0026 '=|...&'         MOVE    #25,38(A6)
  352C: 3D7C 0004 0028 '=|...('         MOVE    #4,40(A6)
  3532: 343C 0008      '4<..'           MOVE    #8,D2
  3536: 3E3C 0010      '><..'           MOVE    #16,D7
  353A: 3D7C 0002 0024 '=|...$'         MOVE    #2,36(A6)
  3540: 0C6E 00C0 0020 '.n... '         CMPI    #$C0,32(A6)
  3546: 6E00 011A      2003662          BGT     lgs_17
  354A: 3D7C 0003 0024 '=|...$'         MOVE    #3,36(A6)
  3550: 6000 0110      2003662          BRA     lgs_17
  3554: EC42           '.B'    lgs_5    ASR     #6,D2
  3556: 536E 0026      'Sn.&'           SUBQ    #1,38(A6)
  355A: 6E00 0106      2003662          BGT     lgs_17
  355E: 3D7C 0001 0024 '=|...$'         MOVE    #1,36(A6)
  3564: 6000 00FC      2003662          BRA     lgs_17
  3568: 343C 0009      '4<..'  lgs_6    MOVE    #9,D2
  356C: 6004           2003572          BRA.S   lgs_8
  356E: 343C 000A      '4<..'  lgs_7    MOVE    #10,D2
  3572: 426E 0024      'Bn.$'  lgs_8    CLR     36(A6)
  3576: 4A6E 001E      'Jn..'           TST     30(A6)
  357A: 6D12           200358E          BLT.S   lgs_9
  357C: 226C 0030      '"l.0'           MOVEA.L 48(A4),A1
  3580: 45FA 0108      200368A          LEA     data118,A2  ; len= 18
  3584: 5D41           ']A'             SUBQ    #6,D1
  3586: 5840           'X@'             ADDQ    #4,D0
  3588: 0440 0010      '.@..'           SUBI    #16,D0
  358C: 6012           20035A0          BRA.S   lgs_10
  358E: 226C 002C      '"l.,'  lgs_9    MOVEA.L 44(A4),A1
  3592: 45FA 0108      200369C          LEA     data119,A2  ; len= 16
  3596: 5D41           ']A'             SUBQ    #6,D1
  3598: 0440 000E      '.@..'           SUBI    #14,D0
  359C: 0640 0010      '.@..'           ADDI    #16,D0
  35A0: 4EAD 02E2      3000000 lgs_10   JSR     proc146(A5)
  35A4: 082E 0000 0015 '......'         BTST    #0,21(A6)
  35AA: 6618           20035C4          BNE.S   lgs_11
  35AC: 206C 0034      ' l.4'           MOVEA.L 52(A4),A0
  35B0: 4A2D FF34         -$CC          TST.B   glob221(A5)
  35B4: 6724           20035DA          BEQ.S   lgs_12
  35B6: 3F00           '?.'             PUSH    D0
  35B8: 303C 0007      '0<..'           MOVE    #7,D0
  35BC: 4EAD 0042      10000BE          JSR     proc9(A5)
  35C0: 301F           '0.'             POP     D0
  35C2: 6016           20035DA          BRA.S   lgs_12
  35C4: 206C 0098      ' l..'  lgs_11   MOVEA.L $98(A4),A0
  35C8: 4A2D FF34         -$CC          TST.B   glob221(A5)
  35CC: 670C           20035DA          BEQ.S   lgs_12
  35CE: 3F00           '?.'             PUSH    D0
  35D0: 303C 0009      '0<..'           MOVE    #9,D0
  35D4: 4EAD 0042      10000BE          JSR     proc9(A5)
  35D8: 301F           '0.'             POP     D0
  35DA: 43ED FF1C         -$E4 lgs_12   LEA     glob212(A5),A1
  35DE: 342E 0020      '4.. '           MOVE    32(A6),D2
  35E2: EC42           '.B'             ASR     #6,D2
  35E4: E342           '.B'             ASL     #1,D2
  35E6: D4C2           '..'             ADDA.W  D2,A2
  35E8: 141A           '..'             MOVE.B  (A2)+,D2
  35EA: 4882           'H.'             EXT     D2
  35EC: D042           '.B'             ADD     D2,D0
  35EE: 1612           '..'             MOVE.B  (A2),D3
  35F0: 4883           'H.'             EXT     D3
  35F2: D243           '.C'             ADD     D3,D1
  35F4: 362E 0020      '6.. '           MOVE    32(A6),D3
  35F8: 343C 012C      '4<.,'           MOVE    #$12C,D2
  35FC: 0443 012C      '.C.,'           SUBI    #$12C,D3
  3600: 6B04           2003606          BMI.S   lgs_13
  3602: 9443           '.C'             SUB     D3,D2
  3604: 6002           2003608          BRA.S   lgs_14
  3606: D443           '.C'    lgs_13   ADD     D3,D2
  3608: 48C2           'H.'    lgs_14   EXT.L   D2
  360A: 48C3           'H.'             EXT.L   D3
  360C: 7A0D           'z.'             MOVEQ   #13,D5
  360E: EBA2           '..'             ASL.L   D5,D2
  3610: EBA3           '..'             ASL.L   D5,D3
  3612: 4A6E 001E      'Jn..'           TST     30(A6)
  3616: 6C02           200361A          BGE.S   lgs_15
  3618: 4482           'D.'             NEG.L   D2
  361A: 0C6E 0038 0012 '.n.8.. lgs_15   CMPI    #56,18(A6) ; '8'
  3620: 6614           2003636          BNE.S   lgs_16
  3622: 0C6E 000C 0030 '.n...0'         CMPI    #12,48(A6)
  3628: 660C           2003636          BNE.S   lgs_16
  362A: 382E 0034      '8..4'           MOVE    52(A6),D4
  362E: D044           '.D'             ADD     D4,D0
  3630: 4844           'HD'             SWAP    D4
  3632: 4244           'BD'             CLR     D4
  3634: D484           '..'             ADD.L   D4,D2
  3636: 283C 0000 D555 '(<...U lgs_16   MOVE.L  #$D555,D4
  363C: 4A2D FF34         -$CC          TST.B   glob221(A5)
  3640: 6742           2003684          BEQ.S   lgs_20
  3642: 1E2D FF34         -$CC          MOVE.B  glob221(A5),D7
  3646: 1C3C 0001      '.<..'           MOVE.B  #1,D6
  364A: 023C 0007      '.<..'           ANDI.B  #7,CCR
  364E: 8F06           '..'             SBCD    D6,D7
  3650: 1B47 FF34         -$CC          MOVE.B  D7,glob221(A5)
  3654: 3B7C 0002 FF2E    -$D2          MOVE    #2,glob219(A5)
  365A: 4EBA FD56      20033B2          JSR     proc144
  365E: 6000 0024      2003684          BRA     lgs_20
  3662: 4A6E 001E      'Jn..'  lgs_17   TST     30(A6)
  3666: 6D0C           2003674          BLT.S   lgs_18
  3668: 226C 0030      '"l.0'           MOVEA.L 48(A4),A1
  366C: 5D41           ']A'             SUBQ    #6,D1
  366E: 5840           'X@'             ADDQ    #4,D0
  3670: 9047           '.G'             SUB     D7,D0
  3672: 600C           2003680          BRA.S   lgs_19
  3674: 226C 002C      '"l.,'  lgs_18   MOVEA.L 44(A4),A1
  3678: 5D41           ']A'             SUBQ    #6,D1
  367A: 0440 000E      '.@..'           SUBI    #14,D0
  367E: D047           '.G'             ADD     D7,D0
  3680: 4EAD 02E2      3000000 lgs_19   JSR     proc146(A5)
  3684: 4CDF 1FFF      'L...'  lgs_20   MOVEM.L (A7)+,D0-D7/A0-A4
  3688: 4E75           'Nu'             RTS     

                                 ;-refs -  2/proc145   

  368A: '................'     data118  DC.W    $1003,$1003,$1003,$1003,$1313,$1313,$1313,$1313
  369A: '..'                            DC.W    $1313

                                 ;-refs -  2/proc145   

  369C: '................'     data119  DC.W    $B04,$B04,$B04,$B04,$C13,$C13,$C13,$C13
