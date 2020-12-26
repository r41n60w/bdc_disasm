; vi: syntax=asm68k

   994:                                 Segment  5

     0:                                 QUAL    proc248 ; b# =463  s#5  =proc248


     0: 48E7 FF5E      'H..^'  proc248  MOVEM.L D0-D7/A1/A3-A6,-(A7)
     4: 3E00           '>.'             MOVE    D0,D7
     6: 0240 000F      '.@..'           ANDI    #$F,D0
     A: 0440 0010      '.@..'           SUBI    #16,D0
     E: 4440           'D@'             NEG     D0
    10: E647           '.G'             ASR     #3,D7
    12: 0247 FFFE      '.G..'           ANDI    #$FFFE,D7
    16: 3629 0004      '6)..'           MOVE    4(A1),D3
    1A: 3829 0006      '8)..'           MOVE    6(A1),D4
    1E: E342           '.B'             ASL     #1,D2
    20: C4E9 0008      '....'           MULU    8(A1),D2
    24: 0642 000E      '.B..'           ADDI    #14,D2
    28: D2C2           '..'             ADDA.W  D2,A1
    2A: 3C7C 0040      '<|.@'           MOVEA   #$40,A6
    2E: 2668 0002      '&h..'           MOVEA.L 2(A0),A3
    32: 2868 0006      '(h..'           MOVEA.L 6(A0),A4
    36: ED41           '.A'             ASL     #6,D1
    38: 4A47           'JG'             TST     D7
    3A: 6D00 0074      50000B0          BLT     lkk_3
    3E: 3A03           ':.'             MOVE    D3,D5
    40: E345           '.E'             ASL     #1,D5
    42: DA47           '.G'             ADD     D7,D5
    44: 0445 003E      '.E.>'           SUBI    #62,D5
    48: 6E00 00DE      5000128          BGT     lkk_7
    4C: D247           '.G'             ADD     D7,D1
    4E: D6C1           '..'             ADDA.W  D1,A3
    50: D8C1           '..'             ADDA.W  D1,A4
    52: 2A68 000A      '*h..'           MOVEA.L 10(A0),A5
    56: 3AC3           ':.'             MOVE    D3,(A5)+
    58: 3A84           ':.'             MOVE    D4,(A5)
    5A: 535D           'S]'             SUBQ    #1,(A5)+
    5C: 48C1           'H.'             EXT.L   D1
    5E: 2AC1           '*.'             MOVE.L  D1,(A5)+
    60: E343           '.C'             ASL     #1,D3
    62: 9CC3           '..'             SUBA.W  D3,A6
    64: E243           '.C'             ASR     #1,D3
    66: 554E           'UN'             SUBQ    #2,A6
    68: 2ACE           '*.'             MOVE.L  A6,(A5)+
    6A: 5343           'SC'             SUBQ    #1,D3
    6C: 5344           'SD'             SUBQ    #1,D4
    6E: 3403           '4.'    lkk_1    MOVE    D3,D2
    70: 3E1B           '>.'             MOVE    (A3)+,D7
    72: 3AC7           ':.'             MOVE    D7,(A5)+
    74: 321C           '2.'             MOVE    (A4)+,D1
    76: 4847           'HG'             SWAP    D7
    78: 4841           'HA'             SWAP    D1
    7A: 3E1B           '>.'    lkk_2    MOVE    (A3)+,D7
    7C: 3AC7           ':.'             MOVE    D7,(A5)+
    7E: 321C           '2.'             MOVE    (A4)+,D1
    80: 7C00           '|.'             MOVEQ   #0,D6
    82: 3C19           '<.'             MOVE    (A1)+,D6
    84: E1BE           '..'             ROL.L   D0,D6
    86: CC81           '..'             AND.L   D1,D6
    88: BD87           '..'             EOR.L   D6,D7
    8A: 4847           'HG'             SWAP    D7
    8C: 3747 FFFC      '7G..'           MOVE    D7,-4(A3)
    90: 4841           'HA'             SWAP    D1
    92: 51CA FFE6      500007A          DBRA    D2,lkk_2
    96: 4847           'HG'             SWAP    D7
    98: 3747 FFFE      '7G..'           MOVE    D7,-2(A3)
    9C: D6CE           '..'             ADDA.W  A6,A3
    9E: D8CE           '..'             ADDA.W  A6,A4
    A0: 51CC FFCC      500006E          DBRA    D4,lkk_1
    A4: 2AE8 000A      '*...'           MOVE.L  10(A0),(A5)+
    A8: 214D 000A      '!M..'           MOVE.L  A5,10(A0)
    AC: 6000 00E8      5000196          BRA     lkk_11
    B0: 3A07           ':.'    lkk_3    MOVE    D7,D5
    B2: E245           '.E'             ASR     #1,D5
    B4: 4445           'DE'             NEG     D5
    B6: B645           '.E'             CMP.W   D5,D3
    B8: 6D00 00DC      5000196          BLT     lkk_11
    BC: 9A43           '.C'             SUB     D3,D5
    BE: 4445           'DE'             NEG     D5
    C0: D247           '.G'             ADD     D7,D1
    C2: D6C1           '..'             ADDA.W  D1,A3
    C4: D8C1           '..'             ADDA.W  D1,A4
    C6: 2A68 000A      '*h..'           MOVEA.L 10(A0),A5
    CA: 3AC3           ':.'             MOVE    D3,(A5)+
    CC: 3A84           ':.'             MOVE    D4,(A5)
    CE: 535D           'S]'             SUBQ    #1,(A5)+
    D0: 48C1           'H.'             EXT.L   D1
    D2: 2AC1           '*.'             MOVE.L  D1,(A5)+
    D4: E343           '.C'             ASL     #1,D3
    D6: 9CC3           '..'             SUBA.W  D3,A6
    D8: E243           '.C'             ASR     #1,D3
    DA: 554E           'UN'             SUBQ    #2,A6
    DC: 2ACE           '*.'             MOVE.L  A6,(A5)+
    DE: 5343           'SC'             SUBQ    #1,D3
    E0: 5344           'SD'             SUBQ    #1,D4
    E2: 3403           '4.'    lkk_4    MOVE    D3,D2
    E4: 3E1B           '>.'             MOVE    (A3)+,D7
    E6: 3AC7           ':.'             MOVE    D7,(A5)+
    E8: 321C           '2.'             MOVE    (A4)+,D1
    EA: 4847           'HG'             SWAP    D7
    EC: 4841           'HA'             SWAP    D1
    EE: 3E1B           '>.'    lkk_5    MOVE    (A3)+,D7
    F0: 3AC7           ':.'             MOVE    D7,(A5)+
    F2: 321C           '2.'             MOVE    (A4)+,D1
    F4: 7C00           '|.'             MOVEQ   #0,D6
    F6: 3C19           '<.'             MOVE    (A1)+,D6
    F8: E1BE           '..'             ROL.L   D0,D6
    FA: CC81           '..'             AND.L   D1,D6
    FC: BD87           '..'             EOR.L   D6,D7
    FE: 4847           'HG'             SWAP    D7
   100: B445           '.E'             CMP.W   D5,D2
   102: 6C04           5000108          BGE.S   lkk_6
   104: 3747 FFFC      '7G..'           MOVE    D7,-4(A3)
   108: 4841           'HA'    lkk_6    SWAP    D1
   10A: 51CA FFE2      50000EE          DBRA    D2,lkk_5
   10E: 4847           'HG'             SWAP    D7
   110: 3747 FFFE      '7G..'           MOVE    D7,-2(A3)
   114: D6CE           '..'             ADDA.W  A6,A3
   116: D8CE           '..'             ADDA.W  A6,A4
   118: 51CC FFC8      50000E2          DBRA    D4,lkk_4
   11C: 2AE8 000A      '*...'           MOVE.L  10(A0),(A5)+
   120: 214D 000A      '!M..'           MOVE.L  A5,10(A0)
   124: 6000 0070      5000196          BRA     lkk_11
   128: E245           '.E'    lkk_7    ASR     #1,D5
   12A: B645           '.E'             CMP.W   D5,D3
   12C: 6D00 0068      5000196          BLT     lkk_11
   130: D247           '.G'             ADD     D7,D1
   132: D6C1           '..'             ADDA.W  D1,A3
   134: D8C1           '..'             ADDA.W  D1,A4
   136: 2A68 000A      '*h..'           MOVEA.L 10(A0),A5
   13A: 3AC3           ':.'             MOVE    D3,(A5)+
   13C: 3A84           ':.'             MOVE    D4,(A5)
   13E: 535D           'S]'             SUBQ    #1,(A5)+
   140: 48C1           'H.'             EXT.L   D1
   142: 2AC1           '*.'             MOVE.L  D1,(A5)+
   144: E343           '.C'             ASL     #1,D3
   146: 9CC3           '..'             SUBA.W  D3,A6
   148: E243           '.C'             ASR     #1,D3
   14A: 554E           'UN'             SUBQ    #2,A6
   14C: 2ACE           '*.'             MOVE.L  A6,(A5)+
   14E: 5343           'SC'             SUBQ    #1,D3
   150: 5344           'SD'             SUBQ    #1,D4
   152: 5345           'SE'             SUBQ    #1,D5
   154: 3403           '4.'    lkk_8    MOVE    D3,D2
   156: 3E1B           '>.'             MOVE    (A3)+,D7
   158: 3AC7           ':.'             MOVE    D7,(A5)+
   15A: 321C           '2.'             MOVE    (A4)+,D1
   15C: 4847           'HG'             SWAP    D7
   15E: 4841           'HA'             SWAP    D1
   160: 3E1B           '>.'    lkk_9    MOVE    (A3)+,D7
   162: 3AC7           ':.'             MOVE    D7,(A5)+
   164: 321C           '2.'             MOVE    (A4)+,D1
   166: 7C00           '|.'             MOVEQ   #0,D6
   168: 3C19           '<.'             MOVE    (A1)+,D6
   16A: E1BE           '..'             ROL.L   D0,D6
   16C: CC81           '..'             AND.L   D1,D6
   16E: BD87           '..'             EOR.L   D6,D7
   170: 4847           'HG'             SWAP    D7
   172: BA42           '.B'             CMP.W   D2,D5
   174: 6E04           500017A          BGT.S   lkk_10
   176: 3747 FFFC      '7G..'           MOVE    D7,-4(A3)
   17A: 4841           'HA'    lkk_10   SWAP    D1
   17C: 51CA FFE2      5000160          DBRA    D2,lkk_9
   180: 4847           'HG'             SWAP    D7
   182: D6CE           '..'             ADDA.W  A6,A3
   184: D8CE           '..'             ADDA.W  A6,A4
   186: 51CC FFCC      5000154          DBRA    D4,lkk_8
   18A: 2AE8 000A      '*...'           MOVE.L  10(A0),(A5)+
   18E: 214D 000A      '!M..'           MOVE.L  A5,10(A0)
   192: 6000 0002      5000196          BRA     lkk_11
   196: 4CDF 7AFF      'L.z.'  lkk_11   MOVEM.L (A7)+,D0-D7/A1/A3-A6
   19A: 4E75           'Nu'             RTS     

   19C:                                 QUAL    proc249 ; b# =464  s#5  =proc249

                               vkl_1     VEQU  -512
                               vkl_2     VEQU  -256
                               param2    VEQU  8
                               param1    VEQU  10
   19C:                                 VEND    

                                 ;-refs -  5/proc258    5/proc292    5/proc294   
                                 ;-        5/proc299   

   19C: 4E56 FE00      'NV..'  proc249  LINK    A6,#-$200
   1A0: 2F0C           '/.'             PUSH.L  A4
   1A2: 286E 000A      200000A          MOVEA.L param1(A6),A4
   1A6: 426C 0004      'Bl..'           CLR     4(A4)
   1AA: 422C 0006      'B,..'           CLR.B   6(A4)
   1AE: 426C 0008      'Bl..'           CLR     8(A4)
   1B2: 426C 000A      'Bl..'           CLR     10(A4)
   1B6: 426C 000C      'Bl..'           CLR     12(A4)
   1BA: 42A7           'B.'             CLR.L   -(A7)
   1BC: 2F3A 005A      5000218          PUSH.L  data181     ; 'ALST'
   1C0: 3F2E 0008      2000008          PUSH    param2(A6)
   1C4: A9A0           '..'             _GetResource ; (theType:ResType; ID:INTEGER):Handle 
   1C6: 289F           '(.'             POP.L   (A4)
   1C8: 57C0           'W.'             SEQ     D0
   1CA: 4A00           'J.'             TST.B   D0
   1CC: 660A           50001D8          BNE.S   lkl_1
   1CE: 2054           ' T'             MOVEA.L (A4),A0
   1D0: 4A90           'J.'             TST.L   (A0)
   1D2: 57C1           'W.'             SEQ     D1
   1D4: 8001           '..'             OR.B    D1,D0
   1D6: 6724           50001FC          BEQ.S   lkl_2
   1D8: 487A 0038      5000212 lkl_1    PEA     data180     ; 'ALNF:'
   1DC: 486E FE00      200FE00          PEA     vkl_1(A6)
   1E0: 3F2E 0008      2000008          PUSH    param2(A6)
   1E4: 4EAD 0192      1001994          JSR     proc96(A5)
   1E8: 486E FF00      200FF00          PEA     vkl_2(A6)
   1EC: 3F3C 0002      '?<..'           PUSH    #2
   1F0: 4EAD 011A      100129E          JSR     proc76(A5)
   1F4: 486E FF00      200FF00          PEA     vkl_2(A6)
   1F8: 4EAD 0172      1001832          JSR     proc92(A5)
   1FC: 2F14           '/.'    lkl_2    PUSH.L  (A4)
   1FE: 4EAD 0072      1000B26          JSR     proc31(A5)
   202: 2F14           '/.'             PUSH.L  (A4)
   204: 4EAD 00A2      1000DAA          JSR     HLock(A5)
   208: 285F           '(_'             POP.L   A4
   20A: 4E5E           'N^'             UNLK    A6
   20C: 205F           ' _'             POP.L   A0
   20E: 5C4F           '\O'             ADDQ    #6,A7
   210: 4ED0           'N.'             JMP     (A0)

                                 ;-refs -  5/proc249   

   212: 0541 4C4E 463A         data180  STR     'ALNF:'

                                 ;-refs -  5/proc249   

   218: 414C                   data181  DC.B    'ALST'

   21C:                                 QUAL    proc250 ; b# =467  s#5  =proc250

                               param1    VEQU  8
   21C:                                 VEND    

                                 ;-refs -  5/proc258    5/proc293    5/proc294   
                                 ;-        5/proc299   

   21C: 4E56 0000      'NV..'  proc250  LINK    A6,#0
   220: 206E 0008      2000008          MOVEA.L param1(A6),A0
   224: 2F10           '/.'             PUSH.L  (A0)
   226: 4EAD 00AA      1000DB4          JSR     HUnLock(A5)
   22A: 4E5E           'N^'             UNLK    A6
   22C: 2E9F           '..'             POP.L   (A7)
   22E: 4E75           'Nu'             RTS     

   230:                                 QUAL    proc251 ; b# =468  s#5  =proc251

                               param1    VEQU  12
                               funRslt   VEQU  14
   230:                                 VEND    

                                 ;-refs -  5/proc252   

   230: 4E56 FFFC      'NV..'  proc251  LINK    A6,#-4
   234: 48E7 0108      'H...'           MOVEM.L D7/A4,-(A7)
   238: 3E2E 000C      200000C          MOVE    param1(A6),D7
   23C: 3007           '0.'             MOVE    D7,D0
   23E: 6B7C           50002BC          BMI.S   lkn_6
   240: 0440 0027      '.@.''           SUBI    #39,D0
   244: 6F22           5000268          BLE.S   lkn_1
   246: 5340           'S@'             SUBQ    #1,D0
   248: 6B72           50002BC          BMI.S   lkn_6
   24A: 5940           'Y@'             SUBQ    #4,D0
   24C: 6F2A           5000278          BLE.S   lkn_2
   24E: 5340           'S@'             SUBQ    #1,D0
   250: 6B6A           50002BC          BMI.S   lkn_6
   252: 5F40           '_@'             SUBQ    #7,D0
   254: 6F36           500028C          BLE.S   lkn_3
   256: 0440 000C      '.@..'           SUBI    #12,D0
   25A: 6B60           50002BC          BMI.S   lkn_6
   25C: 5740           'W@'             SUBQ    #3,D0
   25E: 6F40           50002A0          BLE.S   lkn_4
   260: 0440 003C      '.@.<'           SUBI    #60,D0
   264: 674E           50002B4          BEQ.S   lkn_5
   266: 6054           50002BC          BRA.S   lkn_6
   268: 49ED F70C        -$8F4 lkn_1    LEA     glob50(A5),A4
   26C: 3007           '0.'             MOVE    D7,D0
   26E: E540           '.@'             ASL     #2,D0
   270: 2D74 0000 000E 200000E          MOVE.L  0(A4,D0.W),funRslt(A6)
   276: 604C           50002C4          BRA.S   lkn_7
   278: 49ED F840        -$7C0 lkn_2    LEA     glob62(A5),A4
   27C: 3007           '0.'             MOVE    D7,D0
   27E: 907C 0028      '.|.('           SUB     #40,D0
   282: E540           '.@'             ASL     #2,D0
   284: 2D74 0000 000E 200000E          MOVE.L  0(A4,D0.W),funRslt(A6)
   28A: 6038           50002C4          BRA.S   lkn_7
   28C: 49ED F870        -$790 lkn_3    LEA     glob64(A5),A4
   290: 3007           '0.'             MOVE    D7,D0
   292: 907C 002D      '.|.-'           SUB     #45,D0
   296: E540           '.@'             ASL     #2,D0
   298: 2D74 0000 000E 200000E          MOVE.L  0(A4,D0.W),funRslt(A6)
   29E: 6024           50002C4          BRA.S   lkn_7
   2A0: 49ED F890        -$770 lkn_4    LEA     glob65(A5),A4
   2A4: 3007           '0.'             MOVE    D7,D0
   2A6: 907C 0040      '.|.@'           SUB     #64,D0
   2AA: E540           '.@'             ASL     #2,D0
   2AC: 2D74 0000 000E 200000E          MOVE.L  0(A4,D0.W),funRslt(A6)
   2B2: 6010           50002C4          BRA.S   lkn_7
   2B4: 2D6D F408 000E 200000E lkn_5    MOVE.L  glob2(A5),funRslt(A6)
   2BA: 6008           50002C4          BRA.S   lkn_7
   2BC: 487A 0012      50002D0 lkn_6    PEA     data182     ; 'ANIM:imag #'
   2C0: 4EAD 0172      1001832          JSR     proc92(A5)
   2C4: 4CDF 1080      'L...'  lkn_7    MOVEM.L (A7)+,D7/A4
   2C8: 4E5E           'N^'             UNLK    A6
   2CA: 205F           ' _'             POP.L   A0
   2CC: 5C4F           '\O'             ADDQ    #6,A7
   2CE: 4ED0           'N.'             JMP     (A0)

                                 ;-refs -  5/proc251   

   2D0: 0B41 4E49 4D3A 696D    data182  STR     'ANIM:imag #'

   2DC:                                 QUAL    proc252 ; b# =470  s#5  =proc252

                               param1    VEQU  8
   2DC:                                 VEND    

                                 ;-refs -  5/proc252    5/proc258    5/proc271   
                                 ;-        5/proc294    5/proc299   

   2DC: 4E56 FFFE      'NV..'  proc252  LINK    A6,#-2
   2E0: 48E7 0018      'H...'           MOVEM.L A3-A4,-(A7)
   2E4: 286E 0008      2000008          MOVEA.L param1(A6),A4
   2E8: 2054           ' T'             MOVEA.L (A4),A0
   2EA: 2050           ' P'             MOVEA.L (A0),A0
   2EC: 302C 0004      '0,..'           MOVE    4(A4),D0
   2F0: E540           '.@'             ASL     #2,D0
   2F2: 47F0 0000      'G...'           LEA     0(A0,D0.W),A3
   2F6: 3013           '0.'             MOVE    (A3),D0
   2F8: E040           '.@'             ASR     #8,D0
   2FA: E240           '.@'             ASR     #1,D0
   2FC: 4A40           'J@'             TST     D0
   2FE: 6D56           5000356          BLT.S   lko_3
   300: 3013           '0.'             MOVE    (A3),D0
   302: 0240 01FF      '.@..'           ANDI    #$1FF,D0
   306: 3F00           '?.'             PUSH    D0
   308: 302B 0002      '0+..'           MOVE    2(A3),D0
   30C: 0240 01FF      '.@..'           ANDI    #$1FF,D0
   310: 3F00           '?.'             PUSH    D0
   312: 3013           '0.'             MOVE    (A3),D0
   314: E040           '.@'             ASR     #8,D0
   316: E240           '.@'             ASR     #1,D0
   318: 3F00           '?.'             PUSH    D0
   31A: 2F2D FFA0         -$60          PUSH.L  glob253(A5)
   31E: 42A7           'B.'             CLR.L   -(A7)
   320: 102B 0002      '.+..'           MOVE.B  2(A3),D0
   324: E248           '.H'             LSR     #1,D0
   326: 0240 007F      '.@..'           ANDI    #$7F,D0
   32A: 3F00           '?.'             PUSH    D0
   32C: 2F0E           '/.'             PUSH.L  A6
   32E: 4EBA FF00      5000230          JSR     proc251
   332: 4EAD 033A      30008E0          JSR     proc160(A5)
   336: 4A6C 0008      'Jl..'           TST     8(A4)
   33A: 6F0C           5000348          BLE.S   lko_1
   33C: 302C 0008      '0,..'           MOVE    8(A4),D0
   340: 5340           'S@'             SUBQ    #1,D0
   342: 3940 0008      '9@..'           MOVE    D0,8(A4)
   346: 600A           5000352          BRA.S   lko_2
   348: 302C 0004      '0,..'  lko_1    MOVE    4(A4),D0
   34C: 5240           'R@'             ADDQ    #1,D0
   34E: 3940 0004      '9@..'           MOVE    D0,4(A4)
   352: 6000 00F6      500044A lko_2    BRA     lko_15
   356: 3013           '0.'    lko_3    MOVE    (A3),D0
   358: E040           '.@'             ASR     #8,D0
   35A: E240           '.@'             ASR     #1,D0
   35C: 6A02           5000360          BPL.S   lko_4
   35E: 4440           'D@'             NEG     D0
   360: 5340           'S@'    lko_4    SUBQ    #1,D0
   362: 6B00 00E6      500044A          BMI     lko_15
   366: 0C40 0007      '.@..'           CMPI    #7,D0
   36A: 6E00 00DE      500044A          BGT     lko_15
   36E: D040           '.@'             ADD     D0,D0
   370: 303B 0006      5000378          MOVE    data183(D0.W),D0
   374: 4EFB 0000      5000378          JMP     data183-2(D0.W)
   378:                                 JBIAS  2
                                 ;-refs -  5/proc252   

   378: 0012              $388 data183  JUMP    lko_5
   37A: 0016              $38C          JUMP    lko_6
   37C: 0036              $3AC          JUMP    lko_9
   37E: 00D4              $44A          JUMP    lko_15
   380: 0046              $3BC          JUMP    lko_10
   382: 0066              $3DC          JUMP    lko_11
   384: 008C              $402          JUMP    lko_12
   386: 00B6              $42C          JUMP    lko_14

   388: 6000 00C0      500044A lko_5    BRA     lko_15
   38C: 4A6C 0008      'Jl..'  lko_6    TST     8(A4)
   390: 6F0C           500039E          BLE.S   lko_7
   392: 302C 0008      '0,..'           MOVE    8(A4),D0
   396: 5340           'S@'             SUBQ    #1,D0
   398: 3940 0008      '9@..'           MOVE    D0,8(A4)
   39C: 600A           50003A8          BRA.S   lko_8
   39E: 302C 0004      '0,..'  lko_7    MOVE    4(A4),D0
   3A2: 5240           'R@'             ADDQ    #1,D0
   3A4: 3940 0004      '9@..'           MOVE    D0,4(A4)
   3A8: 6000 00A0      500044A lko_8    BRA     lko_15
   3AC: 426C 0004      'Bl..'  lko_9    CLR     4(A4)
   3B0: 2F2E 0008      2000008          PUSH.L  param1(A6)
   3B4: 4EBA FF26      50002DC          JSR     proc252
   3B8: 6000 0090      500044A          BRA     lko_15
   3BC: 3013           '0.'    lko_10   MOVE    (A3),D0
   3BE: 0240 01FF      '.@..'           ANDI    #$1FF,D0
   3C2: 5340           'S@'             SUBQ    #1,D0
   3C4: 3940 0008      '9@..'           MOVE    D0,8(A4)
   3C8: 302C 0004      '0,..'           MOVE    4(A4),D0
   3CC: 5240           'R@'             ADDQ    #1,D0
   3CE: 3940 0004      '9@..'           MOVE    D0,4(A4)
   3D2: 2F2E 0008      2000008          PUSH.L  param1(A6)
   3D6: 4EBA FF04      50002DC          JSR     proc252
   3DA: 606E           500044A          BRA.S   lko_15
   3DC: 3013           '0.'    lko_11   MOVE    (A3),D0
   3DE: 0240 01FF      '.@..'           ANDI    #$1FF,D0
   3E2: 5340           'S@'             SUBQ    #1,D0
   3E4: 3940 000A      '9@..'           MOVE    D0,10(A4)
   3E8: 396C 0004 000C '9l....'         MOVE    4(A4),12(A4)
   3EE: 302C 0004      '0,..'           MOVE    4(A4),D0
   3F2: 5240           'R@'             ADDQ    #1,D0
   3F4: 3940 0004      '9@..'           MOVE    D0,4(A4)
   3F8: 2F2E 0008      2000008          PUSH.L  param1(A6)
   3FC: 4EBA FEDE      50002DC          JSR     proc252
   400: 6048           500044A          BRA.S   lko_15
   402: 4A6C 000A      'Jl..'  lko_12   TST     10(A4)
   406: 6F10           5000418          BLE.S   lko_13
   408: 396C 000C 0004 '9l....'         MOVE    12(A4),4(A4)
   40E: 302C 000A      '0,..'           MOVE    10(A4),D0
   412: 5340           'S@'             SUBQ    #1,D0
   414: 3940 000A      '9@..'           MOVE    D0,10(A4)
   418: 302C 0004      '0,..'  lko_13   MOVE    4(A4),D0
   41C: 5240           'R@'             ADDQ    #1,D0
   41E: 3940 0004      '9@..'           MOVE    D0,4(A4)
   422: 2F2E 0008      2000008          PUSH.L  param1(A6)
   426: 4EBA FEB4      50002DC          JSR     proc252
   42A: 601E           500044A          BRA.S   lko_15
   42C: 3013           '0.'    lko_14   MOVE    (A3),D0
   42E: 0240 01FF      '.@..'           ANDI    #$1FF,D0
   432: 3F00           '?.'             PUSH    D0
   434: 4EAD 002A      100001E          JSR     proc2(A5)
   438: 302C 0004      '0,..'           MOVE    4(A4),D0
   43C: 5240           'R@'             ADDQ    #1,D0
   43E: 3940 0004      '9@..'           MOVE    D0,4(A4)
   442: 2F2E 0008      2000008          PUSH.L  param1(A6)
   446: 4EBA FE94      50002DC          JSR     proc252
   44A: 4CDF 1800      'L...'  lko_15   MOVEM.L (A7)+,A3-A4
   44E: 4E5E           'N^'             UNLK    A6
   450: 2E9F           '..'             POP.L   (A7)
   452: 4E75           'Nu'             RTS     

   454:                                 QUAL    proc253 ; b# =472  s#5  =proc253

                               param1    VEQU  8
   454:                                 VEND    

                                 ;-refs -  1/proc114    5/proc268   

   454: 4E56 0000      'NV..'  proc253  LINK    A6,#0
   458: 41ED FCFA        -$306          LEA     glob140(A5),A0
   45C: 43ED FFEA         -$16          LEA     glob269(A5),A1
   460: 7004           'p.'             MOVEQ   #4,D0
   462: 20D9           ' .'    lkp_1    MOVE.L  (A1)+,(A0)+
   464: 51C8 FFFC      5000462          DBRA    D0,lkp_1
   468: 3091           '0.'             MOVE    (A1),(A0)
   46A: 42A7           'B.'             CLR.L   -(A7)
   46C: 2F2E 0008      2000008          PUSH.L  param1(A6)
   470: 4EAD 007A      1000D3C          JSR     NewPtr(A5)
   474: 2B5F FCE0        -$320          POP.L   glob138(A5)
   478: 6608           5000482          BNE.S   lkp_2
   47A: 487A 0078      50004F4          PEA     data184     ; 'UMEM'
   47E: 4EAD 0172      1001832          JSR     proc92(A5)
   482: 206D FCE0        -$320 lkp_2    MOVEA.L glob138(A5),A0
   486: 7000           'p.'             MOVEQ   #0,D0
   488: 2080           ' .'             MOVE.L  D0,(A0)
   48A: 202D FCE0        -$320          MOVE.L  glob138(A5),D0
   48E: 5880           'X.'             ADDQ.L  #4,D0
   490: 2B40 FFF4          -$C          MOVE.L  D0,glob272(A5)
   494: 202E 0008      2000008          MOVE.L  param1(A6),D0
   498: D0AD FCE0        -$320          ADD.L   glob138(A5),D0
   49C: 2B40 FFF8           -8          MOVE.L  D0,glob273(A5)
   4A0: 102D FFA5         -$5B          MOVE.B  glob254(A5),D0
   4A4: 6748           50004EE          BEQ.S   lkp_5
   4A6: 41ED FCE4        -$31C          LEA     glob139(A5),A0
   4AA: 43ED FFD4         -$2C          LEA     glob262(A5),A1
   4AE: 7004           'p.'             MOVEQ   #4,D0
   4B0: 20D9           ' .'    lkp_3    MOVE.L  (A1)+,(A0)+
   4B2: 51C8 FFFC      50004B0          DBRA    D0,lkp_3
   4B6: 3091           '0.'             MOVE    (A1),(A0)
   4B8: 42A7           'B.'             CLR.L   -(A7)
   4BA: 2F2E 0008      2000008          PUSH.L  param1(A6)
   4BE: 4EAD 007A      1000D3C          JSR     NewPtr(A5)
   4C2: 2B5F FCDC        -$324          POP.L   glob137(A5)
   4C6: 6608           50004D0          BNE.S   lkp_4
   4C8: 487A 002A      50004F4          PEA     data184     ; 'UMEM'
   4CC: 4EAD 0172      1001832          JSR     proc92(A5)
   4D0: 206D FCDC        -$324 lkp_4    MOVEA.L glob137(A5),A0
   4D4: 7000           'p.'             MOVEQ   #0,D0
   4D6: 2080           ' .'             MOVE.L  D0,(A0)
   4D8: 202D FCDC        -$324          MOVE.L  glob137(A5),D0
   4DC: 5880           'X.'             ADDQ.L  #4,D0
   4DE: 2B40 FFDE         -$22          MOVE.L  D0,glob265(A5)
   4E2: 202E 0008      2000008          MOVE.L  param1(A6),D0
   4E6: D0AD FCDC        -$324          ADD.L   glob137(A5),D0
   4EA: 2B40 FFE2         -$1E          MOVE.L  D0,glob266(A5)
   4EE: 4E5E           'N^'    lkp_5    UNLK    A6
   4F0: 2E9F           '..'             POP.L   (A7)
   4F2: 4E75           'Nu'             RTS     

                                 ;-refs -  5/proc253   

   4F4: 0455 4D45 4D00         data184  STR     'UMEM'

   4FA:                                 QUAL    proc254 ; b# =474  s#5  =proc254

                                 ;-refs -  1/proc114    5/proc268    5/proc294   
                                 ;-        5/proc299   

   4FA: 4E56 0000      'NV..'  proc254  LINK    A6,#0
   4FE: 41ED FFEA         -$16          LEA     glob269(A5),A0
   502: 43ED FCFA        -$306          LEA     glob140(A5),A1
   506: 7004           'p.'             MOVEQ   #4,D0
   508: 20D9           ' .'    lkq_1    MOVE.L  (A1)+,(A0)+
   50A: 51C8 FFFC      5000508          DBRA    D0,lkq_1
   50E: 3091           '0.'             MOVE    (A1),(A0)
   510: 2F2D FCE0        -$320          PUSH.L  glob138(A5)
   514: 4EAD 0082      1000D48          JSR     DisposPtr(A5)
   518: 102D FFA5         -$5B          MOVE.B  glob254(A5),D0
   51C: 671A           5000538          BEQ.S   lkq_3
   51E: 2F2D FCDC        -$324          PUSH.L  glob137(A5)
   522: 4EAD 0082      1000D48          JSR     DisposPtr(A5)
   526: 41ED FFD4         -$2C          LEA     glob262(A5),A0
   52A: 43ED FCE4        -$31C          LEA     glob139(A5),A1
   52E: 7004           'p.'             MOVEQ   #4,D0
   530: 20D9           ' .'    lkq_2    MOVE.L  (A1)+,(A0)+
   532: 51C8 FFFC      5000530          DBRA    D0,lkq_2
   536: 3091           '0.'             MOVE    (A1),(A0)
   538: 4E5E           'N^'    lkq_3    UNLK    A6
   53A: 4E75           'Nu'             RTS     

   53C:                                 QUAL    proc255 ; b# =475  s#5  =proc255

                                 ;-refs -  1/proc113   

   53C: 4E56 0000      'NV..'  proc255  LINK    A6,#0
   540: 4AAD FEE2        -$11E          TST.L   glob197(A5)
   544: 6710           5000556          BEQ.S   lkr_1
   546: 2F2D FEE2        -$11E          PUSH.L  glob197(A5)
   54A: 4EAD 00B2      1000DBE          JSR     HPurge(A5)
   54E: 2F2D FEE2        -$11E          PUSH.L  glob197(A5)
   552: 4EAD 00AA      1000DB4          JSR     HUnLock(A5)
   556: 7002           'p.'    lkr_1    MOVEQ   #2,D0
   558: B06D FEA2        -$15E          CMP.W   glob170(A5),D0
   55C: 6D12           5000570          BLT.S   lkr_2
   55E: 42A7           'B.'             CLR.L   -(A7)
   560: 2F3A 002C      500058E          PUSH.L  data185     ; 'Stbl'
   564: 3F2D FEA2        -$15E          PUSH    glob170(A5)
   568: A9A0           '..'             _GetResource ; (theType:ResType; ID:INTEGER):Handle 
   56A: 2B5F FEE2        -$11E          POP.L   glob197(A5)
   56E: 6010           5000580          BRA.S   lkr_3
   570: 42A7           'B.'    lkr_2    CLR.L   -(A7)
   572: 2F3A 001A      500058E          PUSH.L  data185     ; 'Stbl'
   576: 3F3C 0002      '?<..'           PUSH    #2
   57A: A9A0           '..'             _GetResource ; (theType:ResType; ID:INTEGER):Handle 
   57C: 2B5F FEE2        -$11E          POP.L   glob197(A5)
   580: 2F2D FEE2        -$11E lkr_3    PUSH.L  glob197(A5)
   584: 4EAD 00BA      1000DC8          JSR     HNoPurge(A5)
   588: 4E5E           'N^'             UNLK    A6
   58A: 2E9F           '..'             POP.L   (A7)
   58C: 4E75           'Nu'             RTS     

                                 ;-refs -  5/proc255   

   58E: 5374                   data185  DC.B    'Stbl'

   592:                                 QUAL    proc256 ; b# =477  s#5  =proc256

                                 ;-refs -  1/proc113   

   592: 4E56 0000      'NV..'  proc256  LINK    A6,#0
   596: 4AAD FEE2        -$11E          TST.L   glob197(A5)
   59A: 6716           50005B2          BEQ.S   lks_1
   59C: 2F2D FEE2        -$11E          PUSH.L  glob197(A5)
   5A0: 4EAD 00B2      1000DBE          JSR     HPurge(A5)
   5A4: 2F2D FEE2        -$11E          PUSH.L  glob197(A5)
   5A8: 4EAD 00AA      1000DB4          JSR     HUnLock(A5)
   5AC: 7000           'p.'             MOVEQ   #0,D0
   5AE: 2B40 FEE2        -$11E          MOVE.L  D0,glob197(A5)
   5B2: 4E5E           'N^'    lks_1    UNLK    A6
   5B4: 2E9F           '..'             POP.L   (A7)
   5B6: 4E75           'Nu'             RTS     

   5B8:                                 QUAL    proc257 ; b# =478  s#5  =proc257

                               param1    VEQU  8
   5B8:                                 VEND    

                                 ;-refs -  1/proc113   

   5B8: 4E56 0000      'NV..'  proc257  LINK    A6,#0
   5BC: 102D FEDD        -$123          MOVE.B  glob195(A5),D0
   5C0: 6706           50005C8          BEQ.S   lkt_1
   5C2: 526D FEA2        -$15E          ADDQ    #1,glob170(A5)
   5C6: 601E           50005E6          BRA.S   lkt_2
   5C8: 206E 0008      2000008 lkt_1    MOVEA.L param1(A6),A0
   5CC: 3B68 0008 FEA2   -$15E          MOVE    8(A0),glob170(A5)
   5D2: 7000           'p.'             MOVEQ   #0,D0
   5D4: 2B40 FEF4        -$10C          MOVE.L  D0,glob200(A5)
   5D8: 2B7C 7FFF FFFF   -$122          MOVE.L  #$7FFFFFFF,glob196(A5)
   5E0: 3B7C 0005 FEF8   -$108          MOVE    #5,glob201(A5)
   5E6: 3B7C 6000 FF34    -$CC lkt_2    MOVE    #$6000,glob221(A5)
   5EC: 4A6D FE9C        -$164          TST     glob168(A5)
   5F0: 6614           5000606          BNE.S   lkt_3
   5F2: 426D FF24         -$DC          CLR     glob215(A5)
   5F6: 426D FF28         -$D8          CLR     glob217(A5)
   5FA: 7000           'p.'             MOVEQ   #0,D0
   5FC: 2B40 FF2A         -$D6          MOVE.L  D0,glob218(A5)
   600: 426D FF20         -$E0          CLR     glob213(A5)
   604: 6016           500061C          BRA.S   lkt_4
   606: 3B7C 000A FF24    -$DC lkt_3    MOVE    #10,glob215(A5)
   60C: 3B7C 000A FF28    -$D8          MOVE    #10,glob217(A5)
   612: 701E           'p.'             MOVEQ   #30,D0
   614: 2B40 FF2A         -$D6          MOVE.L  D0,glob218(A5)
   618: 426D FF20         -$E0          CLR     glob213(A5)
   61C: 2B7C 0236 3020    -$D0 lkt_4    MOVE.L  #$2363020,glob220(A5)
   624: 426D FF54         -$AC          CLR     glob228(A5)
   628: 3B7C 1F00 FEAE   -$152          MOVE    #$1F00,glob176(A5)
   62E: 426D FEAC        -$154          CLR     glob175(A5)
   632: 206E 0008      2000008          MOVEA.L param1(A6),A0
   636: 3028 0008      '0(..'           MOVE    8(A0),D0
   63A: 670E           500064A          BEQ.S   lkt_5
   63C: 5340           'S@'             SUBQ    #1,D0
   63E: 6712           5000652          BEQ.S   lkt_6
   640: 5340           'S@'             SUBQ    #1,D0
   642: 6716           500065A          BEQ.S   lkt_7
   644: 5340           'S@'             SUBQ    #1,D0
   646: 6712           500065A          BEQ.S   lkt_7
   648: 6014           500065E          BRA.S   lkt_8
   64A: 3B7C 012A FEAA   -$156 lkt_5    MOVE    #$12A,glob174(A5)
   650: 600C           500065E          BRA.S   lkt_8
   652: 3B7C 0112 FEAA   -$156 lkt_6    MOVE    #$112,glob174(A5)
   658: 6004           500065E          BRA.S   lkt_8
   65A: 426D FEAA        -$156 lkt_7    CLR     glob174(A5)
   65E: 486D FD26        -$2DA lkt_8    PEA     glob148(A5)
   662: 2F3C 012A 00DE '/<.*..'         PUSH.L  #$12A00DE
   668: 2F3C 0133 011D '/<.3..'         PUSH.L  #$133011D
   66E: A8A7           '..'             _SetRect ; (VAR r:Rect; left,top,right,bottom:INTEGER) 
   670: 486D FD1E        -$2E2          PEA     glob147(A5)
   674: 2F3C 013A 00ED '/<.:..'         PUSH.L  #$13A00ED
   67A: 2F3C 0143 00FB '/<.C..'         PUSH.L  #$14300FB
   680: A8A7           '..'             _SetRect ; (VAR r:Rect; left,top,right,bottom:INTEGER) 
   682: 426D FF3A         -$C6          CLR     glob224(A5)
   686: 102D FE9F        -$161          MOVE.B  glob169(A5),D0
   68A: 6604           5000690          BNE.S   lkt_9
   68C: 426D FEA6        -$15A          CLR     glob172(A5)
   690: 426D FEA4        -$15C lkt_9    CLR     glob171(A5)
   694: 422D FEDD        -$123          CLR.B   glob195(A5)
   698: 4E5E           'N^'             UNLK    A6
   69A: 2E9F           '..'             POP.L   (A7)
   69C: 4E75           'Nu'             RTS     

   69E:                                 QUAL    proc258 ; b# =479  s#5  =proc258

                               vku_1     VEQU  -14
                               param1    VEQU  8
   69E:                                 VEND    

                                 ;-refs -  1/proc113   

   69E: 4E56 FFF0      'NV..'  proc258  LINK    A6,#-$10
   6A2: 2F07           '/.'             PUSH.L  D7
   6A4: 486E FFF2      200FFF2          PEA     vku_1(A6)
   6A8: 3F3C 0009      '?<..'           PUSH    #9
   6AC: 4EBA FAEE      500019C          JSR     proc249
   6B0: 3F3C 3A99      '?<:.'           PUSH    #$3A99
   6B4: 4EAD 01D2      1002226          JSR     proc106(A5)
   6B8: 4EAD 0142      1001440          JSR     proc82(A5)
   6BC: 487A 0118      50007D6          PEA     data186     ; 'BDC Data B'
   6C0: 486D FD16        -$2EA          PEA     glob144(A5)
   6C4: 4EAD 01A2      1001BF8          JSR     proc100(A5)
   6C8: 3F3C 0001      '?<..'           PUSH    #1
   6CC: 2F2E 0008      2000008          PUSH.L  param1(A6)
   6D0: 4EAD 0202      10025DE          JSR     proc112(A5)
   6D4: 3F3C 3A9B      '?<:.'           PUSH    #$3A9B
   6D8: 4EAD 01D2      1002226          JSR     proc106(A5)
   6DC: 3F3C 03E8      '?<..'           PUSH    #$3E8
   6E0: 4EAD 01CA      10020A6          JSR     proc105(A5)
   6E4: 3F3C 0017      '?<..'           PUSH    #23
   6E8: 4EAD 0052      1000124          JSR     proc11(A5)
   6EC: 2F3C 0004 00BC '/<....'         PUSH.L  #$400BC
   6F2: 4267           'Bg'             CLR     -(A7)
   6F4: 2F2D FFA0         -$60          PUSH.L  glob253(A5)
   6F8: 2F2D F650        -$9B0          PUSH.L  glob36(A5)
   6FC: 4EAD 033A      30008E0          JSR     proc160(A5)
   700: 2F3C 0004 00F4 '/<....'         PUSH.L  #$400F4
   706: 4267           'Bg'             CLR     -(A7)
   708: 2F2D FFA0         -$60          PUSH.L  glob253(A5)
   70C: 2F2D F660        -$9A0          PUSH.L  glob37(A5)
   710: 4EAD 033A      30008E0          JSR     proc160(A5)
   714: 2F3C 007D 00E8 '/<.}..'         PUSH.L  #$7D00E8
   71A: 4267           'Bg'             CLR     -(A7)
   71C: 2F2D FFA0         -$60          PUSH.L  glob253(A5)
   720: 2F2D F648        -$9B8          PUSH.L  glob35(A5)
   724: 4EAD 033A      30008E0          JSR     proc160(A5)
   728: 4EAD 017A      1001884          JSR     proc93(A5)
   72C: 2F3C 0123 0000 '/<.#..'         PUSH.L  #$1230000
   732: 4267           'Bg'             CLR     -(A7)
   734: 2F2D FFA0         -$60          PUSH.L  glob253(A5)
   738: 2F2D F788        -$878          PUSH.L  glob53(A5)
   73C: 4EAD 033A      30008E0          JSR     proc160(A5)
   740: 4EAD 017A      1001884          JSR     proc93(A5)
   744: 7000           'p.'             MOVEQ   #0,D0
   746: 2B40 FF8E         -$72          MOVE.L  D0,glob248(A5)
   74A: 422D FF93         -$6D          CLR.B   glob249(A5)
   74E: 422D FF8B         -$75          CLR.B   glob246(A5)
   752: 4EAD 0152      1001664          JSR     proc86(A5)
   756: 486D FDA8        -$258          PEA     glob156(A5)
   75A: A86D           '.m'             _InitPort ; (port:GrafPtr) 
   75C: 486D FFAA         -$56          PEA     glob256(A5)
   760: A875           '.u'             _SetPBits ; (bm:BitMap) 
   762: 486D FFB0         -$50          PEA     glob257(A5)
   766: A8A2           '..'             _PaintRect ; (r:Rect) 
   768: 486E FFF2      200FFF2          PEA     vku_1(A6)
   76C: 4EBA FB6E      50002DC          JSR     proc252
   770: 4EAD 014A      100153E          JSR     proc85(A5)
   774: 2F2D FFA0         -$60          PUSH.L  glob253(A5)
   778: 4EAD 0342      3000900          JSR     proc161(A5)
   77C: 4247           'BG'             CLR     D7
   77E: 600E           500078E          BRA.S   lku_2
   780: 486E FFF2      200FFF2 lku_1    PEA     vku_1(A6)
   784: 4EBA FB56      50002DC          JSR     proc252
   788: 4EAD 0332      3000826          JSR     proc158(A5)
   78C: 5247           'RG'             ADDQ    #1,D7
   78E: 702D           'p-'    lku_2    MOVEQ   #45,D0
   790: B047           '.G'             CMP.W   D7,D0
   792: 6CEC           5000780          BGE     lku_1
   794: 102D FFA5         -$5B          MOVE.B  glob254(A5),D0
   798: 6714           50007AE          BEQ.S   lku_3
   79A: 486E FFF2      200FFF2          PEA     vku_1(A6)
   79E: 4EBA FB3C      50002DC          JSR     proc252
   7A2: 41ED FFEA         -$16          LEA     glob269(A5),A0
   7A6: 2B48 FFA0         -$60          MOVE.L  A0,glob253(A5)
   7AA: 4EAD 0352      3000920          JSR     proc163(A5)
   7AE: 4EAD 015A      10016A0 lku_3    JSR     proc87(A5)
   7B2: 4EAD 005A      1000404          JSR     proc12(A5)
   7B6: 486E FFF2      200FFF2          PEA     vku_1(A6)
   7BA: 4EBA FA60      500021C          JSR     proc250
   7BE: 3F3C 3A9B      '?<:.'           PUSH    #$3A9B
   7C2: 4EAD 01DA      1002304          JSR     proc107(A5)
   7C6: 3F3C 3A99      '?<:.'           PUSH    #$3A99
   7CA: 4EAD 01DA      1002304          JSR     proc107(A5)
   7CE: 2E1F           '..'             POP.L   D7
   7D0: 4E5E           'N^'             UNLK    A6
   7D2: 2E9F           '..'             POP.L   (A7)
   7D4: 4E75           'Nu'             RTS     

                                 ;-refs -  5/proc258   

   7D6: 0A42 4443 2044 6174    data186  STR     'BDC Data B'

   7E2:                                 QUAL    proc259 ; b# =481  s#5  =proc259

                               vkv_1     VEQU  -18
                               param1    VEQU  8
   7E2:                                 VEND    

                                 ;-refs -  5/proc268   

   7E2: 4E56 FFEE      'NV..'  proc259  LINK    A6,#-$12
   7E6: 48E7 0018      'H...'           MOVEM.L A3-A4,-(A7)
   7EA: 286E 0008      2000008          MOVEA.L param1(A6),A4
   7EE: 397C 00B9 FFD4 '9|....'         MOVE    #$B9,-44(A4)
   7F4: 422C FFD3      'B,..'           CLR.B   -45(A4)
   7F8: 397C 0005 FFCE '9|....'         MOVE    #5,-50(A4)
   7FE: 486D FDA8        -$258          PEA     glob156(A5)
   802: A86D           '.m'             _InitPort ; (port:GrafPtr) 
   804: 42A7           'B.'             CLR.L   -(A7)
   806: 2F3C 0000 5580 '/<..U.'         PUSH.L  #$5580
   80C: 4EAD 007A      1000D3C          JSR     NewPtr(A5)
   810: 295F FFCA      ')_..'           POP.L   -54(A4)
   814: 6608           500081E          BNE.S   lkv_1
   816: 487A 0068      5000880          PEA     data189     ; 'MMEM'
   81A: 4EAD 0172      1001832          JSR     proc92(A5)
   81E: 41EE FFEE      200FFEE lkv_1    LEA     vkv_1(A6),A0
   822: 43ED FFC6         -$3A          LEA     glob260(A5),A1
   826: 20D9           ' .'             MOVE.L  (A1)+,(A0)+
   828: 20D9           ' .'             MOVE.L  (A1)+,(A0)+
   82A: 20D9           ' .'             MOVE.L  (A1)+,(A0)+
   82C: 3091           '0.'             MOVE    (A1),(A0)
   82E: 2D6C FFCA FFEE 200FFEE          MOVE.L  -54(A4),vkv_1(A6)
   834: 486E FFEE      200FFEE          PEA     vkv_1(A6)
   838: A875           '.u'             _SetPBits ; (bm:BitMap) 
   83A: 42A7           'B.'             CLR.L   -(A7)
   83C: 2F3A 003E      500087C          PUSH.L  data188     ; 'PSCR'
   840: 3F3C 32CC      '?<2.'           PUSH    #$32CC
   844: A9A0           '..'             _GetResource ; (theType:ResType; ID:INTEGER):Handle 
   846: 265F           '&_'             POP.L   A3
   848: 200B           ' .'             MOVE.L  A3,D0
   84A: 660A           5000856          BNE.S   lkv_2
   84C: 487A 0028      5000876          PEA     data187     ; 'MSNF'
   850: 4EAD 0172      1001832          JSR     proc92(A5)
   854: 600A           5000860          BRA.S   lkv_3
   856: 2F2E FFEE      200FFEE lkv_2    PUSH.L  vkv_1(A6)
   85A: 2F13           '/.'             PUSH.L  (A3)
   85C: 4EAD 044A      3003D56          JSR     proc205(A5)
   860: 2F0B           '/.'    lkv_3    PUSH.L  A3
   862: 4EAD 00AA      1000DB4          JSR     HUnLock(A5)
   866: 2F0B           '/.'             PUSH.L  A3
   868: 4EAD 00B2      1000DBE          JSR     HPurge(A5)
   86C: 4CDF 1800      'L...'           MOVEM.L (A7)+,A3-A4
   870: 4E5E           'N^'             UNLK    A6
   872: 2E9F           '..'             POP.L   (A7)
   874: 4E75           'Nu'             RTS     

                                 ;-refs -  5/proc259   

   876: 044D 534E 4600         data187  STR     'MSNF'

                                 ;-refs -  5/proc259   

   87C: 5053                   data188  DC.B    'PSCR'

                                 ;-refs -  5/proc259   

   880: 044D 4D45 4D00         data189  STR     'MMEM'

   886:                                 QUAL    proc260 ; b# =485  s#5  =proc260

                               param1    VEQU  8
   886:                                 VEND    

                                 ;-refs -  5/proc262   

   886: 4E56 0000      'NV..'  proc260  LINK    A6,#0
   88A: 2F0C           '/.'             PUSH.L  A4
   88C: 286E 0008      2000008          MOVEA.L param1(A6),A4
   890: 286C 0008      '(l..'           MOVEA.L 8(A4),A4
   894: 536C FFCE      'Sl..'           SUBQ    #1,-50(A4)
   898: 4A6C FFCE      'Jl..'           TST     -50(A4)
   89C: 6E50           50008EE          BGT.S   lkw_6
   89E: 196C FFD3 FFD2 '.l....'         MOVE.B  -45(A4),-46(A4)
   8A4: 4267           'Bg'             CLR     -(A7)
   8A6: A861           '.a'             _Random ; :INTEGER 
   8A8: 301F           '0.'             POP     D0
   8AA: 48C0           'H.'             EXT.L   D0
   8AC: 81FC 0002      '....'           DIVS    #2,D0
   8B0: 4840           'H@'             SWAP    D0
   8B2: 4A40           'J@'             TST     D0
   8B4: 6A02           50008B8          BPL.S   lkw_1
   8B6: 4440           'D@'             NEG     D0
   8B8: 6706           50008C0 lkw_1    BEQ.S   lkw_2
   8BA: 5340           'S@'             SUBQ    #1,D0
   8BC: 670A           50008C8          BEQ.S   lkw_3
   8BE: 600E           50008CE          BRA.S   lkw_4
   8C0: 197C 0002 FFD3 '.|.... lkw_2    MOVE.B  #2,-45(A4)
   8C6: 6006           50008CE          BRA.S   lkw_4
   8C8: 197C 0003 FFD3 '.|.... lkw_3    MOVE.B  #3,-45(A4)
   8CE: 426C FFD0      'Bl..'  lkw_4    CLR     -48(A4)
   8D2: 4267           'Bg'             CLR     -(A7)
   8D4: A861           '.a'             _Random ; :INTEGER 
   8D6: 301F           '0.'             POP     D0
   8D8: 48C0           'H.'             EXT.L   D0
   8DA: 81FC 003C      '...<'           DIVS    #60,D0
   8DE: 4840           'H@'             SWAP    D0
   8E0: 4A40           'J@'             TST     D0
   8E2: 6A02           50008E6          BPL.S   lkw_5
   8E4: 4440           'D@'             NEG     D0
   8E6: D07C 0014      '.|..'  lkw_5    ADD     #20,D0
   8EA: 3940 FFCE      '9@..'           MOVE    D0,-50(A4)
   8EE: 285F           '(_'    lkw_6    POP.L   A4
   8F0: 4E5E           'N^'             UNLK    A6
   8F2: 2E9F           '..'             POP.L   (A7)
   8F4: 4E75           'Nu'             RTS     

   8F6:                                 QUAL    proc261 ; b# =486  s#5  =proc261

                               param1    VEQU  8
   8F6:                                 VEND    

                                 ;-refs -  5/proc262   

   8F6: 4E56 0000      'NV..'  proc261  LINK    A6,#0
   8FA: 2F0C           '/.'             PUSH.L  A4
   8FC: 286E 0008      2000008          MOVEA.L param1(A6),A4
   900: 286C 0008      '(l..'           MOVEA.L 8(A4),A4
   904: 536C FFCE      'Sl..'           SUBQ    #1,-50(A4)
   908: 4A6C FFCE      'Jl..'           TST     -50(A4)
   90C: 6E68           5000976          BGT.S   lkx_8
   90E: 196C FFD3 FFD2 '.l....'         MOVE.B  -45(A4),-46(A4)
   914: 4267           'Bg'             CLR     -(A7)
   916: A861           '.a'             _Random ; :INTEGER 
   918: 301F           '0.'             POP     D0
   91A: 48C0           'H.'             EXT.L   D0
   91C: 81FC 0003      '....'           DIVS    #3,D0
   920: 4840           'H@'             SWAP    D0
   922: 4A40           'J@'             TST     D0
   924: 6A02           5000928          BPL.S   lkx_1
   926: 4440           'D@'             NEG     D0
   928: 670A           5000934 lkx_1    BEQ.S   lkx_2
   92A: 5340           'S@'             SUBQ    #1,D0
   92C: 670E           500093C          BEQ.S   lkx_3
   92E: 5340           'S@'             SUBQ    #1,D0
   930: 6710           5000942          BEQ.S   lkx_4
   932: 6022           5000956          BRA.S   lkx_6
   934: 197C 0005 FFD3 '.|.... lkx_2    MOVE.B  #5,-45(A4)
   93A: 601A           5000956          BRA.S   lkx_6
   93C: 422C FFD3      'B,..'  lkx_3    CLR.B   -45(A4)
   940: 6014           5000956          BRA.S   lkx_6
   942: 0C6C 0082 FFD4 '.l.... lkx_4    CMPI    #$82,-44(A4)
   948: 6C08           5000952          BGE.S   lkx_5
   94A: 197C 0004 FFD3 '.|....'         MOVE.B  #4,-45(A4)
   950: 6004           5000956          BRA.S   lkx_6
   952: 422C FFD3      'B,..'  lkx_5    CLR.B   -45(A4)
   956: 426C FFD0      'Bl..'  lkx_6    CLR     -48(A4)
   95A: 4267           'Bg'             CLR     -(A7)
   95C: A861           '.a'             _Random ; :INTEGER 
   95E: 301F           '0.'             POP     D0
   960: 48C0           'H.'             EXT.L   D0
   962: 81FC 003C      '...<'           DIVS    #60,D0
   966: 4840           'H@'             SWAP    D0
   968: 4A40           'J@'             TST     D0
   96A: 6A02           500096E          BPL.S   lkx_7
   96C: 4440           'D@'             NEG     D0
   96E: D07C 0014      '.|..'  lkx_7    ADD     #20,D0
   972: 3940 FFCE      '9@..'           MOVE    D0,-50(A4)
   976: 285F           '(_'    lkx_8    POP.L   A4
   978: 4E5E           'N^'             UNLK    A6
   97A: 2E9F           '..'             POP.L   (A7)
   97C: 4E75           'Nu'             RTS     

   97E:                                 QUAL    proc262 ; b# =487  s#5  =proc262

                               param1    VEQU  8
   97E:                                 VEND    

                                 ;-refs -  5/proc268   

   97E: 4E56 FFF6      'NV..'  proc262  LINK    A6,#-$A
   982: 48E7 0318      'H...'           MOVEM.L D6-D7/A3-A4,-(A7)
   986: 286E 0008      2000008          MOVEA.L param1(A6),A4
   98A: 102C FFD3      '.,..'           MOVE.B  -45(A4),D0
   98E: 4880           'H.'             EXT     D0
   990: 6B00 012C      5000ABE          BMI     lky_16
   994: 0C40 0005      '.@..'           CMPI    #5,D0
   998: 6E00 0124      5000ABE          BGT     lky_16
   99C: D040           '.@'             ADD     D0,D0
   99E: 303B 0006      50009A6          MOVE    data190(D0.W),D0
   9A2: 4EFB 0000      50009A6          JMP     data190-2(D0.W)
   9A6:                                 JBIAS  2
                                 ;-refs -  5/proc262   

   9A6: 000E              $9B2 data190  JUMP    lky_1
   9A8: 0034              $9D8          JUMP    lky_4
   9AA: 006C              $A10          JUMP    lky_8
   9AC: 00A0              $A44          JUMP    lky_10
   9AE: 00F8              $A9C          JUMP    lky_14
   9B0: 00D4              $A78          JUMP    lky_12

   9B2: 536C FFD4      'Sl..'  lky_1    SUBQ    #1,-44(A4)
   9B6: 266D F6F0        -$910          MOVEA.L glob44(A5),A3
   9BA: 7E08           '~.'             MOVEQ   #8,D7
   9BC: 4A6C FFD4      'Jl..'           TST     -44(A4)
   9C0: 6E0C           50009CE          BGT.S   lky_2
   9C2: 197C 0004 FFD3 '.|....'         MOVE.B  #4,-45(A4)
   9C8: 426C FFD0      'Bl..'           CLR     -48(A4)
   9CC: 6006           50009D4          BRA.S   lky_3
   9CE: 2F0E           '/.'    lky_2    PUSH.L  A6
   9D0: 4EBA FF24      50008F6          JSR     proc261
   9D4: 6000 00E8      5000ABE lky_3    BRA     lky_16
   9D8: 526C FFD4      'Rl..'  lky_4    ADDQ    #1,-44(A4)
   9DC: 266D F6F0        -$910          MOVEA.L glob44(A5),A3
   9E0: 4247           'BG'             CLR     D7
   9E2: 700E           'p.'             MOVEQ   #14,D0
   9E4: B06C FFD4      '.l..'           CMP.W   -44(A4),D0
   9E8: 6F0E           50009F8          BLE.S   lky_5
   9EA: 302C FFD4      '0,..'           MOVE    -44(A4),D0
   9EE: 48C0           'H.'             EXT.L   D0
   9F0: 81FC 0005      '....'           DIVS    #5,D0
   9F4: 3E00           '>.'             MOVE    D0,D7
   9F6: 5247           'RG'             ADDQ    #1,D7
   9F8: 0C6C 00B9 FFD4 '.l.... lky_5    CMPI    #$B9,-44(A4)
   9FE: 6F06           5000A06          BLE.S   lky_6
   A00: 422C FFD3      'B,..'           CLR.B   -45(A4)
   A04: 6006           5000A0C          BRA.S   lky_7
   A06: 2F0E           '/.'    lky_6    PUSH.L  A6
   A08: 4EBA FE7C      5000886          JSR     proc260
   A0C: 6000 00B0      5000ABE lky_7    BRA     lky_16
   A10: 526C FFD4      'Rl..'  lky_8    ADDQ    #1,-44(A4)
   A14: 302C FFD0      '0,..'           MOVE    -48(A4),D0
   A18: 48C0           'H.'             EXT.L   D0
   A1A: 81FC 0003      '....'           DIVS    #3,D0
   A1E: 48C0           'H.'             EXT.L   D0
   A20: 81FC 0002      '....'           DIVS    #2,D0
   A24: 4840           'H@'             SWAP    D0
   A26: 4A40           'J@'             TST     D0
   A28: 3E00           '>.'             MOVE    D0,D7
   A2A: 5847           'XG'             ADDQ    #4,D7
   A2C: 266D F6F0        -$910          MOVEA.L glob44(A5),A3
   A30: 7008           'p.'             MOVEQ   #8,D0
   A32: B06C FFD0      '.l..'           CMP.W   -48(A4),D0
   A36: 6606           5000A3E          BNE.S   lky_9
   A38: 196C FFD2 FFD3 '.l....'         MOVE.B  -46(A4),-45(A4)
   A3E: 526C FFD0      'Rl..'  lky_9    ADDQ    #1,-48(A4)
   A42: 607A           5000ABE          BRA.S   lky_16
   A44: 526C FFD4      'Rl..'  lky_10   ADDQ    #1,-44(A4)
   A48: 302C FFD0      '0,..'           MOVE    -48(A4),D0
   A4C: 48C0           'H.'             EXT.L   D0
   A4E: 81FC 0003      '....'           DIVS    #3,D0
   A52: 48C0           'H.'             EXT.L   D0
   A54: 81FC 0002      '....'           DIVS    #2,D0
   A58: 4840           'H@'             SWAP    D0
   A5A: 4A40           'J@'             TST     D0
   A5C: 3E00           '>.'             MOVE    D0,D7
   A5E: 5C47           '\G'             ADDQ    #6,D7
   A60: 266D F6F0        -$910          MOVEA.L glob44(A5),A3
   A64: 7008           'p.'             MOVEQ   #8,D0
   A66: B06C FFD0      '.l..'           CMP.W   -48(A4),D0
   A6A: 6606           5000A72          BNE.S   lky_11
   A6C: 196C FFD2 FFD3 '.l....'         MOVE.B  -46(A4),-45(A4)
   A72: 526C FFD0      'Rl..'  lky_11   ADDQ    #1,-48(A4)
   A76: 6046           5000ABE          BRA.S   lky_16
   A78: 536C FFD4      'Sl..'  lky_12   SUBQ    #1,-44(A4)
   A7C: 266D F6F0        -$910          MOVEA.L glob44(A5),A3
   A80: 7E09           '~.'             MOVEQ   #9,D7
   A82: 4A6C FFD4      'Jl..'           TST     -44(A4)
   A86: 6E0C           5000A94          BGT.S   lky_13
   A88: 197C 0004 FFD3 '.|....'         MOVE.B  #4,-45(A4)
   A8E: 426C FFD0      'Bl..'           CLR     -48(A4)
   A92: 602A           5000ABE          BRA.S   lky_16
   A94: 2F0E           '/.'    lky_13   PUSH.L  A6
   A96: 4EBA FE5E      50008F6          JSR     proc261
   A9A: 6022           5000ABE          BRA.S   lky_16
   A9C: 266D F6F4        -$90C lky_14   MOVEA.L glob45(A5),A3
   AA0: 302C FFD0      '0,..'           MOVE    -48(A4),D0
   AA4: 48C0           'H.'             EXT.L   D0
   AA6: 81FC 0003      '....'           DIVS    #3,D0
   AAA: 3E00           '>.'             MOVE    D0,D7
   AAC: 7008           'p.'             MOVEQ   #8,D0
   AAE: B06C FFD0      '.l..'           CMP.W   -48(A4),D0
   AB2: 6606           5000ABA          BNE.S   lky_15
   AB4: 197C 0001 FFD3 '.|....'         MOVE.B  #1,-45(A4)
   ABA: 526C FFD0      'Rl..'  lky_15   ADDQ    #1,-48(A4)
   ABE: 206D FFA0         -$60 lky_16   MOVEA.L glob253(A5),A0
   AC2: 2C28 0006      ',(..'           MOVE.L  6(A0),D6
   AC6: 206D FFA0         -$60          MOVEA.L glob253(A5),A0
   ACA: 216C FFCA 0006 '!l....'         MOVE.L  -54(A4),6(A0)
   AD0: 703B           'p;'             MOVEQ   #59,D0
   AD2: C1EC FFD4      '....'           MULS    -44(A4),D0
   AD6: 48C0           'H.'             EXT.L   D0
   AD8: 81FC 003C      '...<'           DIVS    #60,D0
   ADC: D07C 0086      '.|..'           ADD     #$86,D0
   AE0: 3F00           '?.'             PUSH    D0
   AE2: 70F3           'p.'             MOVEQ   #-13,D0
   AE4: C1EC FFD4      '....'           MULS    -44(A4),D0
   AE8: 48C0           'H.'             EXT.L   D0
   AEA: 81FC 003C      '...<'           DIVS    #60,D0
   AEE: D07C 010E      '.|..'           ADD     #$10E,D0
   AF2: 3F00           '?.'             PUSH    D0
   AF4: 3F07           '?.'             PUSH    D7
   AF6: 2F2D FFA0         -$60          PUSH.L  glob253(A5)
   AFA: 2F0B           '/.'             PUSH.L  A3
   AFC: 4EAD 033A      30008E0          JSR     proc160(A5)
   B00: 206D FFA0         -$60          MOVEA.L glob253(A5),A0
   B04: 2146 0006      '!F..'           MOVE.L  D6,6(A0)
   B08: 4CDF 18C0      'L...'           MOVEM.L (A7)+,D6-D7/A3-A4
   B0C: 4E5E           'N^'             UNLK    A6
   B0E: 2E9F           '..'             POP.L   (A7)
   B10: 4E75           'Nu'             RTS     

   B12:                                 QUAL    proc263 ; b# =489  s#5  =proc263

                               funRslt   VEQU  12
   B12:                                 VEND    

                                 ;-refs -  5/proc264    5/proc265   

   B12: 4E56 0000      'NV..'  proc263  LINK    A6,#0
   B16: 4267           'Bg'             CLR     -(A7)
   B18: A861           '.a'             _Random ; :INTEGER 
   B1A: 301F           '0.'             POP     D0
   B1C: 48C0           'H.'             EXT.L   D0
   B1E: 81FC 0004      '....'           DIVS    #4,D0
   B22: 4840           'H@'             SWAP    D0
   B24: 4A40           'J@'             TST     D0
   B26: 6A02           5000B2A          BPL.S   lkz_1
   B28: 4440           'D@'             NEG     D0
   B2A: 670E           5000B3A lkz_1    BEQ.S   lkz_2
   B2C: 5340           'S@'             SUBQ    #1,D0
   B2E: 6712           5000B42          BEQ.S   lkz_3
   B30: 5340           'S@'             SUBQ    #1,D0
   B32: 6716           5000B4A          BEQ.S   lkz_4
   B34: 5340           'S@'             SUBQ    #1,D0
   B36: 671A           5000B52          BEQ.S   lkz_5
   B38: 601E           5000B58          BRA.S   lkz_6
   B3A: 2D6D F6F8 000C 200000C lkz_2    MOVE.L  glob46(A5),funRslt(A6)
   B40: 6016           5000B58          BRA.S   lkz_6
   B42: 2D6D F6FC 000C 200000C lkz_3    MOVE.L  glob47(A5),funRslt(A6)
   B48: 600E           5000B58          BRA.S   lkz_6
   B4A: 2D6D F700 000C 200000C lkz_4    MOVE.L  glob48(A5),funRslt(A6)
   B50: 6006           5000B58          BRA.S   lkz_6
   B52: 2D6D F704 000C 200000C lkz_5    MOVE.L  glob49(A5),funRslt(A6)
   B58: 4E5E           'N^'    lkz_6    UNLK    A6
   B5A: 2E9F           '..'             POP.L   (A7)
   B5C: 4E75           'Nu'             RTS     

   B5E:                                 QUAL    proc264 ; b# =490  s#5  =proc264

                               param2    VEQU  8
                               param1    VEQU  12
   B5E:                                 VEND    

                                 ;-refs -  5/proc268   

   B5E: 4E56 0000      'NV..'  proc264  LINK    A6,#0
   B62: 2F0C           '/.'             PUSH.L  A4
   B64: 286E 000C      200000C          MOVEA.L param1(A6),A4
   B68: 302C 0004      '0,..'           MOVE    4(A4),D0
   B6C: D054           '.T'             ADD     (A4),D0
   B6E: 3880           '8.'             MOVE    D0,(A4)
   B70: B06C 0006      '.l..'           CMP.W   6(A4),D0
   B74: 6C24           5000B9A          BGE.S   lla_1
   B76: 38AC 0008      '8...'           MOVE    8(A4),(A4)
   B7A: 42A7           'B.'             CLR.L   -(A7)
   B7C: 2F2E 0008      2000008          PUSH.L  param2(A6)
   B80: 4EBA FF90      5000B12          JSR     proc263
   B84: 295F 000A      ')_..'           POP.L   10(A4)
   B88: 206C 000A      ' l..'           MOVEA.L 10(A4),A0
   B8C: 3028 0004      '0(..'           MOVE    4(A0),D0
   B90: E940           '.@'             ASL     #4,D0
   B92: 7200           'r.'             MOVEQ   #0,D1
   B94: 9240           '.@'             SUB     D0,D1
   B96: 3941 0006      '9A..'           MOVE    D1,6(A4)
   B9A: 3F14           '?.'    lla_1    PUSH    (A4)
   B9C: 3F2C 0002      '?,..'           PUSH    2(A4)
   BA0: 4267           'Bg'             CLR     -(A7)
   BA2: 2F2D FFA0         -$60          PUSH.L  glob253(A5)
   BA6: 2F2C 000A      '/,..'           PUSH.L  10(A4)
   BAA: 4EAD 033A      30008E0          JSR     proc160(A5)
   BAE: 285F           '(_'             POP.L   A4
   BB0: 4E5E           'N^'             UNLK    A6
   BB2: 205F           ' _'             POP.L   A0
   BB4: 504F           'PO'             ADDQ    #8,A7
   BB6: 4ED0           'N.'             JMP     (A0)

   BB8:                                 QUAL    proc265 ; b# =491  s#5  =proc265

                               param1    VEQU  8
   BB8:                                 VEND    

                                 ;-refs -  5/proc268   

   BB8: 4E56 0000      'NV..'  proc265  LINK    A6,#0
   BBC: 48E7 0018      'H...'           MOVEM.L A3-A4,-(A7)
   BC0: 266E 0008      2000008          MOVEA.L param1(A6),A3
   BC4: 49EB FFD6      'I...'           LEA     -42(A3),A4
   BC8: 42A7           'B.'             CLR.L   -(A7)
   BCA: 2F2E 0008      2000008          PUSH.L  param1(A6)
   BCE: 4EBA FF42      5000B12          JSR     proc263
   BD2: 295F 000A      ')_..'           POP.L   10(A4)
   BD6: 38BC 0200      '8...'           MOVE    #$200,(A4)
   BDA: 426C 0002      'Bl..'           CLR     2(A4)
   BDE: 206C 000A      ' l..'           MOVEA.L 10(A4),A0
   BE2: 3028 0004      '0(..'           MOVE    4(A0),D0
   BE6: E940           '.@'             ASL     #4,D0
   BE8: 7200           'r.'             MOVEQ   #0,D1
   BEA: 9240           '.@'             SUB     D0,D1
   BEC: 3941 0006      '9A..'           MOVE    D1,6(A4)
   BF0: 397C 0200 0008 '9|....'         MOVE    #$200,8(A4)
   BF6: 397C FFFD 0004 '9|....'         MOVE    #$FFFD,4(A4)
   BFC: 49EB FFE4      'I...'           LEA     -28(A3),A4
   C00: 42A7           'B.'             CLR.L   -(A7)
   C02: 2F2E 0008      2000008          PUSH.L  param1(A6)
   C06: 4EBA FF0A      5000B12          JSR     proc263
   C0A: 295F 000A      ')_..'           POP.L   10(A4)
   C0E: 38BC 0128      '8..('           MOVE    #$128,(A4)
   C12: 397C 0066 0002 '9|.f..'         MOVE    #$66,2(A4)
   C18: 206C 000A      ' l..'           MOVEA.L 10(A4),A0
   C1C: 3028 0004      '0(..'           MOVE    4(A0),D0
   C20: E940           '.@'             ASL     #4,D0
   C22: 7200           'r.'             MOVEQ   #0,D1
   C24: 9240           '.@'             SUB     D0,D1
   C26: 3941 0006      '9A..'           MOVE    D1,6(A4)
   C2A: 397C 0128 0008 '9|.(..'         MOVE    #$128,8(A4)
   C30: 397C FFFE 0004 '9|....'         MOVE    #$FFFE,4(A4)
   C36: 49EB FFF2      'I...'           LEA     -14(A3),A4
   C3A: 42A7           'B.'             CLR.L   -(A7)
   C3C: 2F2E 0008      2000008          PUSH.L  param1(A6)
   C40: 4EBA FED0      5000B12          JSR     proc263
   C44: 295F 000A      ')_..'           POP.L   10(A4)
   C48: 38BC 0139      '8..9'           MOVE    #$139,(A4)
   C4C: 397C 00C9 0002 '9|....'         MOVE    #$C9,2(A4)
   C52: 206C 000A      ' l..'           MOVEA.L 10(A4),A0
   C56: 3028 0004      '0(..'           MOVE    4(A0),D0
   C5A: E940           '.@'             ASL     #4,D0
   C5C: 7200           'r.'             MOVEQ   #0,D1
   C5E: 9240           '.@'             SUB     D0,D1
   C60: 3941 0006      '9A..'           MOVE    D1,6(A4)
   C64: 397C 0139 0008 '9|.9..'         MOVE    #$139,8(A4)
   C6A: 397C FFFF 0004 '9|....'         MOVE    #$FFFF,4(A4)
   C70: 4CDF 1800      'L...'           MOVEM.L (A7)+,A3-A4
   C74: 4E5E           'N^'             UNLK    A6
   C76: 2E9F           '..'             POP.L   (A7)
   C78: 4E75           'Nu'             RTS     

   C7A:                                 QUAL    proc266 ; b# =492  s#5  =proc266

                               param1    VEQU  8
   C7A:                                 VEND    

                                 ;-refs -  5/proc268   

   C7A: 4E56 0000      'NV..'  proc266  LINK    A6,#0
   C7E: 2F0C           '/.'             PUSH.L  A4
   C80: 286E 0008      2000008          MOVEA.L param1(A6),A4
   C84: 4267           'Bg'             CLR     -(A7)
   C86: A861           '.a'             _Random ; :INTEGER 
   C88: 301F           '0.'             POP     D0
   C8A: 6A02           5000C8E          BPL.S   llc_1
   C8C: 4440           'D@'             NEG     D0
   C8E: 48C0           'H.'    llc_1    EXT.L   D0
   C90: 81FC 001E      '....'           DIVS    #30,D0
   C94: 4840           'H@'             SWAP    D0
   C96: 4A40           'J@'             TST     D0
   C98: D07C 0014      '.|..'           ADD     #20,D0
   C9C: 3940 FFC8      '9@..'           MOVE    D0,-56(A4)
   CA0: 397C 0002 FFC6 '9|....'         MOVE    #2,-58(A4)
   CA6: 4267           'Bg'             CLR     -(A7)
   CA8: A861           '.a'             _Random ; :INTEGER 
   CAA: 301F           '0.'             POP     D0
   CAC: 6A02           5000CB0          BPL.S   llc_2
   CAE: 4440           'D@'             NEG     D0
   CB0: 48C0           'H.'    llc_2    EXT.L   D0
   CB2: 81FC 0050      '...P'           DIVS    #80,D0
   CB6: 4840           'H@'             SWAP    D0
   CB8: 4A40           'J@'             TST     D0
   CBA: D07C 004B      '.|.K'           ADD     #75,D0
   CBE: 3940 FFC4      '9@..'           MOVE    D0,-60(A4)
   CC2: 285F           '(_'             POP.L   A4
   CC4: 4E5E           'N^'             UNLK    A6
   CC6: 2E9F           '..'             POP.L   (A7)
   CC8: 4E75           'Nu'             RTS     

   CCA:                                 QUAL    proc267 ; b# =493  s#5  =proc267

                               param1    VEQU  8
   CCA:                                 VEND    

                                 ;-refs -  5/proc268   

   CCA: 4E56 0000      'NV..'  proc267  LINK    A6,#0
   CCE: 2F0C           '/.'             PUSH.L  A4
   CD0: 286E 0008      2000008          MOVEA.L param1(A6),A4
   CD4: 4A6C FFC8      'Jl..'           TST     -56(A4)
   CD8: 6F06           5000CE0          BLE.S   lld_1
   CDA: 536C FFC8      'Sl..'           SUBQ    #1,-56(A4)
   CDE: 6024           5000D04          BRA.S   lld_3
   CE0: 3F3C 005E      '?<.^'  lld_1    PUSH    #94
   CE4: 4EAD 002A      100001E          JSR     proc2(A5)
   CE8: 4267           'Bg'             CLR     -(A7)
   CEA: A861           '.a'             _Random ; :INTEGER 
   CEC: 301F           '0.'             POP     D0
   CEE: 6A02           5000CF2          BPL.S   lld_2
   CF0: 4440           'D@'             NEG     D0
   CF2: 48C0           'H.'    lld_2    EXT.L   D0
   CF4: 81FC 001E      '....'           DIVS    #30,D0
   CF8: 4840           'H@'             SWAP    D0
   CFA: 4A40           'J@'             TST     D0
   CFC: D07C 0064      '.|.d'           ADD     #$64,D0
   D00: 3940 FFC8      '9@..'           MOVE    D0,-56(A4)
   D04: 4A6C FFC6      'Jl..'  lld_3    TST     -58(A4)
   D08: 6F06           5000D10          BLE.S   lld_4
   D0A: 536C FFC6      'Sl..'           SUBQ    #1,-58(A4)
   D0E: 6024           5000D34          BRA.S   lld_6
   D10: 3F3C 005D      '?<.]'  lld_4    PUSH    #93
   D14: 4EAD 002A      100001E          JSR     proc2(A5)
   D18: 4267           'Bg'             CLR     -(A7)
   D1A: A861           '.a'             _Random ; :INTEGER 
   D1C: 301F           '0.'             POP     D0
   D1E: 6A02           5000D22          BPL.S   lld_5
   D20: 4440           'D@'             NEG     D0
   D22: 48C0           'H.'    lld_5    EXT.L   D0
   D24: 81FC 001E      '....'           DIVS    #30,D0
   D28: 4840           'H@'             SWAP    D0
   D2A: 4A40           'J@'             TST     D0
   D2C: D07C 0032      '.|.2'           ADD     #50,D0
   D30: 3940 FFC6      '9@..'           MOVE    D0,-58(A4)
   D34: 4A6C FFC4      'Jl..'  lld_6    TST     -60(A4)
   D38: 6F06           5000D40          BLE.S   lld_7
   D3A: 536C FFC4      'Sl..'           SUBQ    #1,-60(A4)
   D3E: 6024           5000D64          BRA.S   lld_9
   D40: 3F3C 005C      '?<.\'  lld_7    PUSH    #92
   D44: 4EAD 002A      100001E          JSR     proc2(A5)
   D48: 4267           'Bg'             CLR     -(A7)
   D4A: A861           '.a'             _Random ; :INTEGER 
   D4C: 301F           '0.'             POP     D0
   D4E: 6A02           5000D52          BPL.S   lld_8
   D50: 4440           'D@'             NEG     D0
   D52: 48C0           'H.'    lld_8    EXT.L   D0
   D54: 81FC 0050      '...P'           DIVS    #80,D0
   D58: 4840           'H@'             SWAP    D0
   D5A: 4A40           'J@'             TST     D0
   D5C: D07C 004B      '.|.K'           ADD     #75,D0
   D60: 3940 FFC4      '9@..'           MOVE    D0,-60(A4)
   D64: 285F           '(_'    lld_9    POP.L   A4
   D66: 4E5E           'N^'             UNLK    A6
   D68: 2E9F           '..'             POP.L   (A7)
   D6A: 4E75           'Nu'             RTS     

   D6C:                                 QUAL    proc268 ; b# =494  s#5  =proc268

                               vle_1     VEQU  -54
                               vle_2     VEQU  -42
                               vle_3     VEQU  -28
                               vle_4     VEQU  -14
                               param1    VEQU  8
   D6C:                                 VEND    

                                 ;-refs -  1/proc113    1/proc114    1/code      
                                 ;-       17/proc381   

   D6C: 4E56 FFC4      'NV..'  proc268  LINK    A6,#-$3C
   D70: 3F3C 32C8      '?<2.'           PUSH    #$32C8
   D74: 4EAD 01CA      10020A6          JSR     proc105(A5)
   D78: 4EAD 014A      100153E          JSR     proc85(A5)
   D7C: 3F3C 32C8      '?<2.'           PUSH    #$32C8
   D80: 4EAD 01D2      1002226          JSR     proc106(A5)
   D84: 2F3C 0000 2EE0 '/<....'         PUSH.L  #$2EE0
   D8A: 4EBA F6C8      5000454          JSR     proc253
   D8E: 3F3C 0014      '?<..'           PUSH    #20
   D92: 4EAD 0052      1000124          JSR     proc11(A5)
   D96: 7000           'p.'             MOVEQ   #0,D0
   D98: 2B40 FF8E         -$72          MOVE.L  D0,glob248(A5)
   D9C: 426D FF8C         -$74          CLR     glob247(A5)
   DA0: 422D FF93         -$6D          CLR.B   glob249(A5)
   DA4: 422D FF8B         -$75          CLR.B   glob246(A5)
   DA8: 4EAD 0152      1001664          JSR     proc86(A5)
   DAC: 2F0E           '/.'             PUSH.L  A6
   DAE: 4EBA FE08      5000BB8          JSR     proc265
   DB2: 2F0E           '/.'             PUSH.L  A6
   DB4: 4EBA FA2C      50007E2          JSR     proc259
   DB8: 2F0E           '/.'             PUSH.L  A6
   DBA: 4EBA FEBE      5000C7A          JSR     proc266
   DBE: 486E FFD6      200FFD6 lle_1    PEA     vle_2(A6)
   DC2: 2F0E           '/.'             PUSH.L  A6
   DC4: 4EBA FD98      5000B5E          JSR     proc264
   DC8: 486E FFE4      200FFE4          PEA     vle_3(A6)
   DCC: 2F0E           '/.'             PUSH.L  A6
   DCE: 4EBA FD8E      5000B5E          JSR     proc264
   DD2: 486E FFF2      200FFF2          PEA     vle_4(A6)
   DD6: 2F0E           '/.'             PUSH.L  A6
   DD8: 4EBA FD84      5000B5E          JSR     proc264
   DDC: 2F0E           '/.'             PUSH.L  A6
   DDE: 4EBA FB9E      500097E          JSR     proc262
   DE2: 2F0E           '/.'             PUSH.L  A6
   DE4: 4EBA FEE4      5000CCA          JSR     proc267
   DE8: 4EAD 0332      3000826          JSR     proc158(A5)
   DEC: 536E 0008      2000008          SUBQ    #1,param1(A6)
   DF0: 2F3C 000A 0000 '/<....'         PUSH.L  #$A0000
   DF6: 486D FF40         -$C0          PEA     glob226(A5)
   DFA: A970           '.p'             _GetNextEvent ; (mask:EventMask; VAR theEvent:EventRecord):BOOLEAN 
   DFC: 101F           '..'             POP.B   D0
   DFE: 660E           5000E0E          BNE.S   lle_2
   E00: 4A6E 0008      2000008          TST     param1(A6)
   E04: 57C1           'W.'             SEQ     D1
   E06: 8001           '..'             OR.B    D1,D0
   E08: 0240 0001      '.@..'           ANDI    #1,D0
   E0C: 67B0           5000DBE          BEQ     lle_1
   E0E: 4A6E 0008      2000008 lle_2    TST     param1(A6)
   E12: 5EC0           '^.'             SGT     D0
   E14: 4400           'D.'             NEG.B   D0
   E16: 1B40 FE93        -$16D          MOVE.B  D0,glob164(A5)
   E1A: 4EBA F6DE      50004FA          JSR     proc254
   E1E: 3F3C 32C8      '?<2.'           PUSH    #$32C8
   E22: 4EAD 01DA      1002304          JSR     proc107(A5)
   E26: 2F2E FFCA      200FFCA          PUSH.L  vle_1(A6)
   E2A: 4EAD 0082      1000D48          JSR     DisposPtr(A5)
   E2E: 4EAD 005A      1000404          JSR     proc12(A5)
   E32: 4EAD 015A      10016A0          JSR     proc87(A5)
   E36: 4EAD 0142      1001440          JSR     proc82(A5)
   E3A: 4E5E           'N^'             UNLK    A6
   E3C: 205F           ' _'             POP.L   A0
   E3E: 544F           'TO'             ADDQ    #2,A7
   E40: 4ED0           'N.'             JMP     (A0)

   E42:                                 QUAL    proc269 ; b# =495  s#5  =proc269

                               param2    VEQU  8
                               param1    VEQU  12
                               funRslt   VEQU  20
   E42:                                 VEND    

                                 ;-refs -  1/proc114   

   E42: 4E56 0000      'NV..'  proc269  LINK    A6,#0
   E46: 48E7 1008      'H...'           MOVEM.L D3/A4,-(A7)
   E4A: 286E 000C      200000C          MOVEA.L param1(A6),A4
   E4E: 7003           'p.'             MOVEQ   #3,D0
   E50: B054           '.T'             CMP.W   (A4),D0
   E52: 57C0           'W.'             SEQ     D0
   E54: 4A00           'J.'             TST.B   D0
   E56: 6752           5000EAA          BEQ.S   llf_2
   E58: 2F00           '/.'             PUSH.L  D0
   E5A: 42A7           'B.'             CLR.L   -(A7)
   E5C: 2F3C 0000 00FF '/<....'         PUSH.L  #$FF
   E62: 2F2C 0002      '/,..'           PUSH.L  2(A4)
   E66: A858           '.X'             _BitAnd ; (long1,long2:HLongInt):HLongInt 
   E68: 221F           '".'             POP.L   D1
   E6A: 201F           ' .'             POP.L   D0
   E6C: 740D           't.'             MOVEQ   #13,D2
   E6E: B481           '..'             CMP.L   D1,D2
   E70: 57C1           'W.'             SEQ     D1
   E72: 4A01           'J.'             TST.B   D1
   E74: 6624           5000E9A          BNE.S   llf_1
   E76: 48E7 C000      'H...'           MOVEM.L D0-D1,-(A7)
   E7A: 42A7           'B.'             CLR.L   -(A7)
   E7C: 2F2C 0002      '/,..'           PUSH.L  2(A4)
   E80: 2F3C 0000 00FF '/<....'         PUSH.L  #$FF
   E86: A858           '.X'             _BitAnd ; (long1,long2:HLongInt):HLongInt 
   E88: 241F           '$.'             POP.L   D2
   E8A: 4CDF 0003      'L...'           MOVEM.L (A7)+,D0-D1
   E8E: 7603           'v.'             MOVEQ   #3,D3
   E90: B682           '..'             CMP.L   D2,D3
   E92: 57C2           'W.'             SEQ     D2
   E94: 8202           '..'             OR.B    D2,D1
   E96: C001           '..'             AND.B   D1,D0
   E98: 6710           5000EAA          BEQ.S   llf_2
   E9A: 206E 0008      2000008 llf_1    MOVEA.L param2(A6),A0
   E9E: 30BC 0001      '0...'           MOVE    #1,(A0)
   EA2: 1D7C 0001 0014 2000014          MOVE.B  #1,funRslt(A6)
   EA8: 6004           5000EAE          BRA.S   llf_3
   EAA: 422E 0014      2000014 llf_2    CLR.B   funRslt(A6)
   EAE: 42A7           'B.'    llf_3    CLR.L   -(A7)
   EB0: 2F3C 0000 0800 '/<....'         PUSH.L  #$800
   EB6: 302C 000E      '0,..'           MOVE    14(A4),D0
   EBA: 48C0           'H.'             EXT.L   D0
   EBC: 2F00           '/.'             PUSH.L  D0
   EBE: A858           '.X'             _BitAnd ; (long1,long2:HLongInt):HLongInt 
   EC0: 4A9F           'J.'             TST.L   (A7)+
   EC2: 56C0           'V.'             SNE     D0
   EC4: 4400           'D.'             NEG.B   D0
   EC6: 1B40 FD37        -$2C9          MOVE.B  D0,glob151(A5)
   ECA: 4CDF 1008      'L...'           MOVEM.L (A7)+,D3/A4
   ECE: 4E5E           'N^'             UNLK    A6
   ED0: 205F           ' _'             POP.L   A0
   ED2: DEFC 000C      '....'           ADDA.W  #12,A7
   ED6: 4ED0           'N.'             JMP     (A0)

   ED8:                                 QUAL    proc270 ; b# =496  s#5  =proc270

                               param2    VEQU  8
                               param1    VEQU  12
                               funRslt   VEQU  20
   ED8:                                 VEND    

                                 ;-refs -  5/proc288   

   ED8: 4E56 FFFE      'NV..'  proc270  LINK    A6,#-2
   EDC: 48E7 0108      'H...'           MOVEM.L D7/A4,-(A7)
   EE0: 286E 000C      200000C          MOVEA.L param1(A6),A4
   EE4: 42A7           'B.'             CLR.L   -(A7)
   EE6: 2F3C 0000 00FF '/<....'         PUSH.L  #$FF
   EEC: 2F2C 0002      '/,..'           PUSH.L  2(A4)
   EF0: A858           '.X'             _BitAnd ; (long1,long2:HLongInt):HLongInt 
   EF2: 201F           ' .'             POP.L   D0
   EF4: 3E00           '>.'             MOVE    D0,D7
   EF6: 7003           'p.'             MOVEQ   #3,D0
   EF8: B054           '.T'             CMP.W   (A4),D0
   EFA: 57C0           'W.'             SEQ     D0
   EFC: 4A00           'J.'             TST.B   D0
   EFE: 660A           5000F0A          BNE.S   llg_1
   F00: 7205           'r.'             MOVEQ   #5,D1
   F02: B254           '.T'             CMP.W   (A4),D1
   F04: 57C1           'W.'             SEQ     D1
   F06: 8001           '..'             OR.B    D1,D0
   F08: 6740           5000F4A          BEQ.S   llg_5
   F0A: 3007           '0.'    llg_1    MOVE    D7,D0
   F0C: 5740           'W@'             SUBQ    #3,D0
   F0E: 6724           5000F34          BEQ.S   llg_3
   F10: 0440 000A      '.@..'           SUBI    #10,D0
   F14: 671E           5000F34          BEQ.S   llg_3
   F16: 0440 000F      '.@..'           SUBI    #15,D0
   F1A: 6B28           5000F44          BMI.S   llg_4
   F1C: 5740           'W@'             SUBQ    #3,D0
   F1E: 6F02           5000F22          BLE.S   llg_2
   F20: 6022           5000F44          BRA.S   llg_4
   F22: 3007           '0.'    llg_2    MOVE    D7,D0
   F24: D07C 00E0      '.|..'           ADD     #$E0,D0
   F28: 48C0           'H.'             EXT.L   D0
   F2A: 2940 0002      ')@..'           MOVE.L  D0,2(A4)
   F2E: 422E 0014      2000014          CLR.B   funRslt(A6)
   F32: 601A           5000F4E          BRA.S   llg_6
   F34: 206E 0008      2000008 llg_3    MOVEA.L param2(A6),A0
   F38: 30BC 0001      '0...'           MOVE    #1,(A0)
   F3C: 1D7C 0001 0014 2000014          MOVE.B  #1,funRslt(A6)
   F42: 600A           5000F4E          BRA.S   llg_6
   F44: 422E 0014      2000014 llg_4    CLR.B   funRslt(A6)
   F48: 6004           5000F4E          BRA.S   llg_6
   F4A: 422E 0014      2000014 llg_5    CLR.B   funRslt(A6)
   F4E: 4CDF 1080      'L...'  llg_6    MOVEM.L (A7)+,D7/A4
   F52: 4E5E           'N^'             UNLK    A6
   F54: 205F           ' _'             POP.L   A0
   F56: DEFC 000C      '....'           ADDA.W  #12,A7
   F5A: 4ED0           'N.'             JMP     (A0)

   F5C:                                 QUAL    proc271 ; b# =497  s#5  =proc271

                               vlh_1     VEQU  -12
                               vlh_2     VEQU  -10
                               vlh_3     VEQU  -8
                               vlh_4     VEQU  -6
                               vlh_5     VEQU  -4
                               vlh_6     VEQU  -2
   F5C:                                 VEND    

                                 ;-refs -  5/proc292   

   F5C: 4E56 FFF4      'NV..'  proc271  LINK    A6,#-$C
   F60: 2F0D           '/.'             PUSH.L  A5
   F62: 2A78 0904         $904          MOVEA.L CurrentA5,A5
   F66: 3D7C 0108 FFFA 200FFFA          MOVE    #$108,vlh_4(A6)
   F6C: 3D7C 01E8 FFFE 200FFFE          MOVE    #$1E8,vlh_6(A6)
   F72: 3D7C 0050 FFF8 200FFF8          MOVE    #80,vlh_3(A6)
   F78: 3D7C 0111 FFFC 200FFFC          MOVE    #$111,vlh_5(A6)
   F7E: 426E FFF6      200FFF6          CLR     vlh_2(A6)
   F82: 426E FFF4      200FFF4          CLR     vlh_1(A6)
   F86: 486E FFF8      200FFF8          PEA     vlh_3(A6)
   F8A: 2F2E FFF4      200FFF4          PUSH.L  vlh_1(A6)
   F8E: A855           '.U'             _ShieldCursor ; (shieldRect:Rect; offsetPt:Point) 
   F90: 2F2D FFA0         -$60          PUSH.L  glob253(A5)
   F94: 4EAD 0342      3000900          JSR     proc161(A5)
   F98: 102D FEDD        -$123          MOVE.B  glob195(A5),D0
   F9C: 6608           5000FA6          BNE.S   llh_1
   F9E: 486D FCAE        -$352          PEA     glob133(A5)
   FA2: 4EBA F338      50002DC          JSR     proc252
   FA6: 486D FCCA        -$336 llh_1    PEA     glob135(A5)
   FAA: 4EBA F330      50002DC          JSR     proc252
   FAE: 486D FCBC        -$344          PEA     glob134(A5)
   FB2: 4EBA F328      50002DC          JSR     proc252
   FB6: 206D FCD8        -$328          MOVEA.L glob136(A5),A0
   FBA: 317C 0005 000A '1|....'         MOVE    #5,10(A0)
   FC0: A853           '.S'             _ShowCursor  
   FC2: 2A5F           '*_'             POP.L   A5
   FC4: 4E5E           'N^'             UNLK    A6
   FC6: 4E75           'Nu'             RTS     

   FC8:                                 QUAL    proc272 ; b# =498  s#5  =proc272

                               vli_1     VEQU  -546
                               vli_2     VEQU  -290
                               vli_3     VEQU  -34
                               vli_4     VEQU  -30
                               vli_5     VEQU  -26
                               vli_6     VEQU  -18
                               vli_7     VEQU  -14
                               vli_8     VEQU  -12
   FC8:                                 VEND    

                                 ;-refs -  1/proc114    5/proc273   

   FC8: 4E56 FDDE      'NV..'  proc272  LINK    A6,#-$222
   FCC: 48E7 0118      'H...'           MOVEM.L D7/A3-A4,-(A7)
   FD0: A852           '.R'             _HideCursor  
   FD2: 42A7           'B.'             CLR.L   -(A7)
   FD4: 2F3A 01A6      500117C          PUSH.L  data193     ; 'PSCR'
   FD8: 3F3C 3A98      '?<:.'           PUSH    #$3A98
   FDC: A9A0           '..'             _GetResource ; (theType:ResType; ID:INTEGER):Handle 
   FDE: 2E1F           '..'             POP.L   D7
   FE0: 6650           5001032          BNE.S   lli_2
   FE2: 486D FDA8        -$258          PEA     glob156(A5)
   FE6: A86D           '.m'             _InitPort ; (port:GrafPtr) 
   FE8: 486D FFC6         -$3A          PEA     glob260(A5)
   FEC: A875           '.u'             _SetPBits ; (bm:BitMap) 
   FEE: 42A7           'B.'             CLR.L   -(A7)
   FF0: 2F3A 0186      5001178          PUSH.L  data192     ; 'PICT'
   FF4: 3F3C 3A98      '?<:.'           PUSH    #$3A98
   FF8: A9A0           '..'             _GetResource ; (theType:ResType; ID:INTEGER):Handle 
   FFA: 2E1F           '..'             POP.L   D7
   FFC: 6624           5001022          BNE.S   lli_1
   FFE: 487A 0172      5001172          PEA     data191     ; 'NHSP/'
  1002: 486E FDDE      200FDDE          PEA     vli_1(A6)
  1006: 4267           'Bg'             CLR     -(A7)
  1008: A9AF           '..'             _ResError ; :OSErr 
  100A: 4EAD 0192      1001994          JSR     proc96(A5)
  100E: 486E FEDE      200FEDE          PEA     vli_2(A6)
  1012: 3F3C 0002      '?<..'           PUSH    #2
  1016: 4EAD 011A      100129E          JSR     proc76(A5)
  101A: 486E FEDE      200FEDE          PEA     vli_2(A6)
  101E: 4EAD 0172      1001832          JSR     proc92(A5)
  1022: 2F07           '/.'    lli_1    PUSH.L  D7
  1024: 4EAD 00A2      1000DAA          JSR     HLock(A5)
  1028: 2F07           '/.'             PUSH.L  D7
  102A: 486D FFCC         -$34          PEA     glob261(A5)
  102E: A8F6           '..'             _DrawPicture ; (myPicture:PicHandle; dstRect:Rect) 
  1030: 600C           500103E          BRA.S   lli_3
  1032: 2F2D FFC6         -$3A lli_2    PUSH.L  glob260(A5)
  1036: 2047           ' G'             MOVEA.L D7,A0
  1038: 2F10           '/.'             PUSH.L  (A0)
  103A: 4EAD 044A      3003D56          JSR     proc205(A5)
  103E: 102D FEDD        -$123 lli_3    MOVE.B  glob195(A5),D0
  1042: 6768           50010AC          BEQ.S   lli_4
  1044: 286D F77C        -$884          MOVEA.L glob51(A5),A4
  1048: 47EE FFF4      200FFF4          LEA     vli_8(A6),A3
  104C: 41EC 000E      'A...'           LEA     14(A4),A0
  1050: 2D48 FFEE      200FFEE          MOVE.L  A0,vli_6(A6)
  1054: 302C 0004      '0,..'           MOVE    4(A4),D0
  1058: E340           '.@'             ASL     #1,D0
  105A: 3D40 FFF2      200FFF2          MOVE    D0,vli_7(A6)
  105E: 426B 0002      'Bk..'           CLR     2(A3)
  1062: 4253           'BS'             CLR     (A3)
  1064: 302C 0006      '0,..'           MOVE    6(A4),D0
  1068: E340           '.@'             ASL     #1,D0
  106A: 3740 0004      '7@..'           MOVE    D0,4(A3)
  106E: 302C 0004      '0,..'           MOVE    4(A4),D0
  1072: E940           '.@'             ASL     #4,D0
  1074: 3740 0006      '7@..'           MOVE    D0,6(A3)
  1078: 41EE FFDE      200FFDE          LEA     vli_3(A6),A0
  107C: 43EE FFF4      200FFF4          LEA     vli_8(A6),A1
  1080: 20D9           ' .'             MOVE.L  (A1)+,(A0)+
  1082: 20D9           ' .'             MOVE.L  (A1)+,(A0)+
  1084: 302E FFE2      200FFE2          MOVE    vli_4(A6),D0
  1088: 48C0           'H.'             EXT.L   D0
  108A: 81FC 0002      '....'           DIVS    #2,D0
  108E: 3D40 FFE2      200FFE2          MOVE    D0,vli_4(A6)
  1092: 41EE FFE6      200FFE6          LEA     vli_5(A6),A0
  1096: 43EE FFDE      200FFDE          LEA     vli_3(A6),A1
  109A: 20D9           ' .'             MOVE.L  (A1)+,(A0)+
  109C: 20D9           ' .'             MOVE.L  (A1)+,(A0)+
  109E: 486E FFE6      200FFE6          PEA     vli_5(A6)
  10A2: 2F3C 0000 00F9 '/<....'         PUSH.L  #$F9
  10A8: A8A8           '..'             _OffSetRect ; (VAR r:Rect; dh,dv:INTEGER) 
  10AA: 6066           5001112          BRA.S   lli_5
  10AC: 286D F784        -$87C lli_4    MOVEA.L glob52(A5),A4
  10B0: 47EE FFF4      200FFF4          LEA     vli_8(A6),A3
  10B4: 41EC 000E      'A...'           LEA     14(A4),A0
  10B8: 2D48 FFEE      200FFEE          MOVE.L  A0,vli_6(A6)
  10BC: 302C 0004      '0,..'           MOVE    4(A4),D0
  10C0: E340           '.@'             ASL     #1,D0
  10C2: 3D40 FFF2      200FFF2          MOVE    D0,vli_7(A6)
  10C6: 426B 0002      'Bk..'           CLR     2(A3)
  10CA: 4253           'BS'             CLR     (A3)
  10CC: 302C 0006      '0,..'           MOVE    6(A4),D0
  10D0: E340           '.@'             ASL     #1,D0
  10D2: 3740 0004      '7@..'           MOVE    D0,4(A3)
  10D6: 302C 0004      '0,..'           MOVE    4(A4),D0
  10DA: E940           '.@'             ASL     #4,D0
  10DC: 3740 0006      '7@..'           MOVE    D0,6(A3)
  10E0: 41EE FFDE      200FFDE          LEA     vli_3(A6),A0
  10E4: 43EE FFF4      200FFF4          LEA     vli_8(A6),A1
  10E8: 20D9           ' .'             MOVE.L  (A1)+,(A0)+
  10EA: 20D9           ' .'             MOVE.L  (A1)+,(A0)+
  10EC: 302E FFE2      200FFE2          MOVE    vli_4(A6),D0
  10F0: 48C0           'H.'             EXT.L   D0
  10F2: 81FC 0002      '....'           DIVS    #2,D0
  10F6: 3D40 FFE2      200FFE2          MOVE    D0,vli_4(A6)
  10FA: 41EE FFE6      200FFE6          LEA     vli_5(A6),A0
  10FE: 43EE FFDE      200FFDE          LEA     vli_3(A6),A1
  1102: 20D9           ' .'             MOVE.L  (A1)+,(A0)+
  1104: 20D9           ' .'             MOVE.L  (A1)+,(A0)+
  1106: 486E FFE6      200FFE6          PEA     vli_5(A6)
  110A: 2F3C 0010 00F9 '/<....'         PUSH.L  #$1000F9
  1110: A8A8           '..'             _OffSetRect ; (VAR r:Rect; dh,dv:INTEGER) 
  1112: 486E FFEE      200FFEE lli_5    PEA     vli_6(A6)
  1116: 486D FFC6         -$3A          PEA     glob260(A5)
  111A: 486E FFDE      200FFDE          PEA     vli_3(A6)
  111E: 486E FFE6      200FFE6          PEA     vli_5(A6)
  1122: 3F3C 0001      '?<..'           PUSH    #1
  1126: 42A7           'B.'             CLR.L   -(A7)
  1128: A8EC           '..'             _CopyBits ; (srcBits,dstBits:BitMap; srcRect,dstRect:Rect; mode:INTEGER{|XferMode}; maskRgn:RgnHandle) 
  112A: A853           '.S'             _ShowCursor  
  112C: 486D FDA8        -$258          PEA     glob156(A5)
  1130: A86D           '.m'             _InitPort ; (port:GrafPtr) 
  1132: 486D FFAA         -$56          PEA     glob256(A5)
  1136: A875           '.u'             _SetPBits ; (bm:BitMap) 
  1138: 486D FFB0         -$50          PEA     glob257(A5)
  113C: A8A2           '..'             _PaintRect ; (r:Rect) 
  113E: 426D FFFC           -4          CLR     glob274(A5)
  1142: 426D FFFE           -2          CLR     glob275(A5)
  1146: 102D FFA5         -$5B          MOVE.B  glob254(A5),D0
  114A: 6708           5001154          BEQ.S   lli_6
  114C: 426D FFE6         -$1A          CLR     glob267(A5)
  1150: 426D FFE8         -$18          CLR     glob268(A5)
  1154: 2F07           '/.'    lli_6    PUSH.L  D7
  1156: 4EAD 00AA      1000DB4          JSR     HUnLock(A5)
  115A: 102D FCA7        -$359          MOVE.B  glob129(A5),D0
  115E: 6708           5001168          BEQ.S   lli_7
  1160: 486D FFC6         -$3A          PEA     glob260(A5)
  1164: 4EAD 01F2      1002586          JSR     proc110(A5)
  1168: 4CDF 1880      'L...'  lli_7    MOVEM.L (A7)+,D7/A3-A4
  116C: 4E5E           'N^'             UNLK    A6
  116E: 2E9F           '..'             POP.L   (A7)
  1170: 4E75           'Nu'             RTS     

                                 ;-refs -  5/proc272   

  1172: 054E 4853 502F         data191  STR     'NHSP/'

                                 ;-refs -  5/proc272   

  1178: 5049                   data192  DC.B    'PICT'

                                 ;-refs -  5/proc272   

  117C: 5053                   data193  DC.B    'PSCR'

  1180:                                 QUAL    proc273 ; b# =502  s#5  =proc273

                               param1    VEQU  8
  1180:                                 VEND    

                                 ;-refs -  5/proc281    5/proc288    5/proc290   
                                 ;-        5/proc298   

  1180: 4E56 0000      'NV..'  proc273  LINK    A6,#0
  1184: 102D FCA7        -$359          MOVE.B  glob129(A5),D0
  1188: 670A           5001194          BEQ.S   llj_1
  118A: 486D FFC6         -$3A          PEA     glob260(A5)
  118E: 4EAD 01F2      1002586          JSR     proc110(A5)
  1192: 6026           50011BA          BRA.S   llj_3
  1194: 102D FFA5         -$5B llj_1    MOVE.B  glob254(A5),D0
  1198: 6718           50011B2          BEQ.S   llj_2
  119A: 486D FFB8         -$48          PEA     glob258(A5)
  119E: 486D FFC6         -$3A          PEA     glob260(A5)
  11A2: 486D FFCC         -$34          PEA     glob261(A5)
  11A6: 486D FFCC         -$34          PEA     glob261(A5)
  11AA: 4267           'Bg'             CLR     -(A7)
  11AC: 42A7           'B.'             CLR.L   -(A7)
  11AE: A8EC           '..'             _CopyBits ; (srcBits,dstBits:BitMap; srcRect,dstRect:Rect; mode:INTEGER{|XferMode}; maskRgn:RgnHandle) 
  11B0: 6008           50011BA          BRA.S   llj_3
  11B2: 2F2E 0008      2000008 llj_2    PUSH.L  param1(A6)
  11B6: 4EBA FE10      5000FC8          JSR     proc272
  11BA: 4E5E           'N^'    llj_3    UNLK    A6
  11BC: 2E9F           '..'             POP.L   (A7)
  11BE: 4E75           'Nu'             RTS     

  11C0:                                 QUAL    proc274 ; b# =503  s#5  =proc274

                               vlk_1     VEQU  -270
                               vlk_2     VEQU  -266
                               vlk_3     VEQU  -258
                               vlk_4     VEQU  -256
                               param3    VEQU  8
                               param2    VEQU  12
                               param1    VEQU  16
  11C0:                                 VEND    

                                 ;-refs -  5/proc275   

  11C0: 4E56 FEF2      'NV..'  proc274  LINK    A6,#-$10E
  11C4: 206E 000C      200000C          MOVEA.L param2(A6),A0
  11C8: 43EE FF00      200FF00          LEA     vlk_4(A6),A1
  11CC: 703F           'p?'             MOVEQ   #63,D0
  11CE: 22D8           '".'    llk_1    MOVE.L  (A0)+,(A1)+
  11D0: 51C8 FFFC      50011CE          DBRA    D0,llk_1
  11D4: 206E 0008      2000008          MOVEA.L param3(A6),A0
  11D8: 2F28 FFFC      '/(..'           PUSH.L  -4(A0)
  11DC: 3F2E 0010      2000010          PUSH    param1(A6)
  11E0: 486E FEFE      200FEFE          PEA     vlk_3(A6)
  11E4: 486E FEF2      200FEF2          PEA     vlk_1(A6)
  11E8: 486E FEF6      200FEF6          PEA     vlk_2(A6)
  11EC: A98D           '..'             _GetDItem ; (dlg:DialogPtr; itemNo:INTEGER; VAR kind:INTEGER; VAR item:Handle; VAR box:Rect) 
  11EE: 2F2E FEF2      200FEF2          PUSH.L  vlk_1(A6)
  11F2: 486E FF00      200FF00          PEA     vlk_4(A6)
  11F6: A98F           '..'             _SetIText ; (item:Handle; text:Str255) 
  11F8: 4E5E           'N^'             UNLK    A6
  11FA: 205F           ' _'             POP.L   A0
  11FC: DEFC 000A      '....'           ADDA.W  #10,A7
  1200: 4ED0           'N.'             JMP     (A0)

  1202:                                 QUAL    proc275 ; b# =504  s#5  =proc275

                               param1    VEQU  8
  1202:                                 VEND    

                                 ;-refs -  1/proc114    5/proc281    5/proc288   

  1202: 4E56 FFFE      'NV..'  proc275  LINK    A6,#-2
  1206: 2F07           '/.'             PUSH.L  D7
  1208: 7E01           '~.'             MOVEQ   #1,D7
  120A: 6044           5001250          BRA.S   lll_2
  120C: 3007           '0.'    lll_1    MOVE    D7,D0
  120E: D07C 0010      '.|..'           ADD     #16,D0
  1212: 5340           'S@'             SUBQ    #1,D0
  1214: 3F00           '?.'             PUSH    D0
  1216: 206D FD1A        -$2E6          MOVEA.L glob146(A5),A0
  121A: 2050           ' P'             MOVEA.L (A0),A0
  121C: 3007           '0.'             MOVE    D7,D0
  121E: C1FC 0036      '...6'           MULS    #54,D0
  1222: 4870 00F4      'Hp..'           PEA     -12(A0,D0.W)
  1226: 2F2E 0008      2000008          PUSH.L  param1(A6)
  122A: 4EBA FF94      50011C0          JSR     proc274
  122E: 3007           '0.'             MOVE    D7,D0
  1230: 5C40           '\@'             ADDQ    #6,D0
  1232: 5340           'S@'             SUBQ    #1,D0
  1234: 3F00           '?.'             PUSH    D0
  1236: 206D FD1A        -$2E6          MOVEA.L glob146(A5),A0
  123A: 2050           ' P'             MOVEA.L (A0),A0
  123C: 3007           '0.'             MOVE    D7,D0
  123E: C1FC 0036      '...6'           MULS    #54,D0
  1242: 4870 00CA      'Hp..'           PEA     -54(A0,D0.W)
  1246: 2F2E 0008      2000008          PUSH.L  param1(A6)
  124A: 4EBA FF74      50011C0          JSR     proc274
  124E: 5247           'RG'             ADDQ    #1,D7
  1250: 700A           'p.'    lll_2    MOVEQ   #10,D0
  1252: B047           '.G'             CMP.W   D7,D0
  1254: 6CB6           500120C          BGE     lll_1
  1256: 2E1F           '..'             POP.L   D7
  1258: 4E5E           'N^'             UNLK    A6
  125A: 2E9F           '..'             POP.L   (A7)
  125C: 4E75           'Nu'             RTS     

  125E:                                 QUAL    proc276 ; b# =505  s#5  =proc276

                                 ;-refs -  1/proc114   

  125E: 4E56 FFFC      'NV..'  proc276  LINK    A6,#-4
  1262: 48E7 0300      'H...'           MOVEM.L D6-D7,-(A7)
  1266: 42A7           'B.'             CLR.L   -(A7)
  1268: 2F3A 009A      5001304          PUSH.L  data196     ; 'HISC'
  126C: 4267           'Bg'             CLR     -(A7)
  126E: A9A0           '..'             _GetResource ; (theType:ResType; ID:INTEGER):Handle 
  1270: 2B5F FD1A        -$2E6          POP.L   glob146(A5)
  1274: 6670           50012E6          BNE.S   llm_3
  1276: 42A7           'B.'             CLR.L   -(A7)
  1278: 2F3C 0000 021C '/<....'         PUSH.L  #$21C
  127E: 4EAD 008A      1000D52          JSR     NewHandle(A5)
  1282: 2B5F FD1A        -$2E6          POP.L   glob146(A5)
  1286: 2F2D FD1A        -$2E6          PUSH.L  glob146(A5)
  128A: 4EAD 00BA      1000DC8          JSR     HNoPurge(A5)
  128E: 4267           'Bg'             CLR     -(A7)
  1290: A994           '..'             _CurResFile ; :RefNum 
  1292: 3C1F           '<.'             POP     D6
  1294: 3F2D FD18        -$2E8          PUSH    glob145(A5)
  1298: A998           '..'             _UseResFile ; (frefNum:RefNum) 
  129A: 2F2D FD1A        -$2E6          PUSH.L  glob146(A5)
  129E: 2F3A 0064      5001304          PUSH.L  data196     ; 'HISC'
  12A2: 4267           'Bg'             CLR     -(A7)
  12A4: 487A 005C      5001302          PEA     data195     ; len= 2
  12A8: A9AB           '..'             _AddResource ; (theResource:Handle; theType:ResType; theID:INTEGER; name:Str255) 
  12AA: 3F06           '?.'             PUSH    D6
  12AC: A998           '..'             _UseResFile ; (frefNum:RefNum) 
  12AE: 7E01           '~.'             MOVEQ   #1,D7
  12B0: 602C           50012DE          BRA.S   llm_2
  12B2: 206D FD1A        -$2E6 llm_1    MOVEA.L glob146(A5),A0
  12B6: 2050           ' P'             MOVEA.L (A0),A0
  12B8: 3007           '0.'             MOVE    D7,D0
  12BA: C1FC 0036      '...6'           MULS    #54,D0
  12BE: 4230 00CA      'B0..'           CLR.B   -54(A0,D0.W)
  12C2: 206D FD1A        -$2E6          MOVEA.L glob146(A5),A0
  12C6: 2050           ' P'             MOVEA.L (A0),A0
  12C8: 3007           '0.'             MOVE    D7,D0
  12CA: C1FC 0036      '...6'           MULS    #54,D0
  12CE: 41F0 00F4      'A...'           LEA     -12(A0,D0.W),A0
  12D2: 43FA 0024      50012F8          LEA     data194,A1  ; '        '
  12D6: 20D9           ' .'             MOVE.L  (A1)+,(A0)+
  12D8: 20D9           ' .'             MOVE.L  (A1)+,(A0)+
  12DA: 3091           '0.'             MOVE    (A1),(A0)
  12DC: 5247           'RG'             ADDQ    #1,D7
  12DE: 700A           'p.'    llm_2    MOVEQ   #10,D0
  12E0: B047           '.G'             CMP.W   D7,D0
  12E2: 6CCE           50012B2          BGE     llm_1
  12E4: 6008           50012EE          BRA.S   llm_4
  12E6: 2F2D FD1A        -$2E6 llm_3    PUSH.L  glob146(A5)
  12EA: 4EAD 00BA      1000DC8          JSR     HNoPurge(A5)
  12EE: 4CDF 00C0      'L...'  llm_4    MOVEM.L (A7)+,D6-D7
  12F2: 4E5E           'N^'             UNLK    A6
  12F4: 2E9F           '..'             POP.L   (A7)
  12F6: 4E75           'Nu'             RTS     

                                 ;-refs -  5/proc276   

  12F8: 0820 2020 2020 2020    data194  STR     '        '

                                 ;-refs -  5/proc276   

  1302: '..'                   data195  DC.W    0

                                 ;-refs -  5/proc276   

  1304: 4849                   data196  DC.B    'HISC'

  1308:                                 QUAL    proc277 ; b# =509  s#5  =proc277

                                 ;-refs -  1/proc114   

  1308: 4E56 0000      'NV..'  proc277  LINK    A6,#0
  130C: 2F2D FD1A        -$2E6          PUSH.L  glob146(A5)
  1310: 4EAD 00B2      1000DBE          JSR     HPurge(A5)
  1314: 4E5E           'N^'             UNLK    A6
  1316: 2E9F           '..'             POP.L   (A7)
  1318: 4E75           'Nu'             RTS     

  131A:                                 QUAL    proc278 ; b# =510  s#5  =proc278

                               vlo_1     VEQU  -4
                               param1    VEQU  12
  131A:                                 VEND    

                                 ;-refs -  5/proc279    5/proc280   

  131A: 4E56 FFFC      'NV..'  proc278  LINK    A6,#-4
  131E: 48E7 0108      'H...'           MOVEM.L D7/A4,-(A7)
  1322: 286E 000C      200000C          MOVEA.L param1(A6),A4
  1326: 4240           'B@'             CLR     D0
  1328: 1014           '..'             MOVE.B  (A4),D0
  132A: 3D40 FFFC      200FFFC          MOVE    D0,vlo_1(A6)
  132E: 7E01           '~.'             MOVEQ   #1,D7
  1330: 6034           5001366          BRA.S   llo_3
  1332: 4240           'B@'    llo_1    CLR     D0
  1334: 1034 7000      '.4p.'           MOVE.B  0(A4,D7.W),D0
  1338: 0C40 00CA      '.@..'           CMPI    #$CA,D0
  133C: 57C0           'W.'             SEQ     D0
  133E: 4241           'BA'             CLR     D1
  1340: 1234 7000      '.4p.'           MOVE.B  0(A4,D7.W),D1
  1344: 7420           't '             MOVEQ   #32,D2
  1346: B441           '.A'             CMP.W   D1,D2
  1348: 57C1           'W.'             SEQ     D1
  134A: 8001           '..'             OR.B    D1,D0
  134C: 4241           'BA'             CLR     D1
  134E: 1234 7000      '.4p.'           MOVE.B  0(A4,D7.W),D1
  1352: 742C           't,'             MOVEQ   #44,D2
  1354: B441           '.A'             CMP.W   D1,D2
  1356: 57C1           'W.'             SEQ     D1
  1358: 8001           '..'             OR.B    D1,D0
  135A: 6706           5001362          BEQ.S   llo_2
  135C: 19BC 0030 7000 '...0p.'         MOVE.B  #48,0(A4,D7.W)
  1362: 5247           'RG'    llo_2    ADDQ    #1,D7
  1364: 6906           500136C          BVS.S   llo_4
  1366: BE6E FFFC      200FFFC llo_3    CMP.W   vlo_1(A6),D7
  136A: 6FC6           5001332          BLE     llo_1
  136C: 4CDF 1080      'L...'  llo_4    MOVEM.L (A7)+,D7/A4
  1370: 4E5E           'N^'             UNLK    A6
  1372: 205F           ' _'             POP.L   A0
  1374: 504F           'PO'             ADDQ    #8,A7
  1376: 4ED0           'N.'             JMP     (A0)

  1378:                                 QUAL    proc279 ; b# =511  s#5  =proc279

                               vlp_1     VEQU  -512
                               vlp_2     VEQU  -256
                               param3    VEQU  8
                               param2    VEQU  12
                               param1    VEQU  16
                               funRslt   VEQU  20
  1378:                                 VEND    

                                 ;-refs -  5/proc280   

  1378: 4E56 FE00      'NV..'  proc279  LINK    A6,#-$200
  137C: 206E 0010      2000010          MOVEA.L param1(A6),A0
  1380: 43EE FF00      200FF00          LEA     vlp_2(A6),A1
  1384: 703F           'p?'             MOVEQ   #63,D0
  1386: 22D8           '".'    llp_1    MOVE.L  (A0)+,(A1)+
  1388: 51C8 FFFC      5001386          DBRA    D0,llp_1
  138C: 206E 000C      200000C          MOVEA.L param2(A6),A0
  1390: 43EE FE00      200FE00          LEA     vlp_1(A6),A1
  1394: 703F           'p?'             MOVEQ   #63,D0
  1396: 22D8           '".'    llp_2    MOVE.L  (A0)+,(A1)+
  1398: 51C8 FFFC      5001396          DBRA    D0,llp_2
  139C: 486E FF00      200FF00          PEA     vlp_2(A6)
  13A0: 2F2E 0008      2000008          PUSH.L  param3(A6)
  13A4: 4EBA FF74      500131A          JSR     proc278
  13A8: 486E FE00      200FE00          PEA     vlp_1(A6)
  13AC: 2F2E 0008      2000008          PUSH.L  param3(A6)
  13B0: 4EBA FF68      500131A          JSR     proc278
  13B4: 486E FF00      200FF00          PEA     vlp_2(A6)
  13B8: 486E FE00      200FE00          PEA     vlp_1(A6)
  13BC: 4EAD 0132      1001366          JSR     proc79(A5)
  13C0: 1D5F 0014      2000014          POP.B   funRslt(A6)
  13C4: 4E5E           'N^'             UNLK    A6
  13C6: 205F           ' _'             POP.L   A0
  13C8: DEFC 000C      '....'           ADDA.W  #12,A7
  13CC: 4ED0           'N.'             JMP     (A0)

  13CE:                                 QUAL    proc280 ; b# =512  s#5  =proc280

                               vlq_1     VEQU  -258
                               funRslt   VEQU  12
  13CE:                                 VEND    

                                 ;-refs -  5/proc281   

  13CE: 4E56 FEFE      'NV..'  proc280  LINK    A6,#-$102
  13D2: 2F07           '/.'             PUSH.L  D7
  13D4: 41EE FEFE      200FEFE          LEA     vlq_1(A6),A0
  13D8: 43ED FEE6        -$11A          LEA     glob198(A5),A1
  13DC: 20D9           ' .'             MOVE.L  (A1)+,(A0)+
  13DE: 20D9           ' .'             MOVE.L  (A1)+,(A0)+
  13E0: 20D9           ' .'             MOVE.L  (A1)+,(A0)+
  13E2: 486E FEFE      200FEFE          PEA     vlq_1(A6)
  13E6: 2F0E           '/.'             PUSH.L  A6
  13E8: 4EBA FF30      500131A          JSR     proc278
  13EC: 7E0B           '~.'             MOVEQ   #11,D7
  13EE: 486E FEFE      200FEFE          PEA     vlq_1(A6)
  13F2: 487A 007E      5001472          PEA     data197     ; '0000000000'
  13F6: 4EAD 012A      100132E          JSR     proc78(A5)
  13FA: 101F           '..'             POP.B   D0
  13FC: 6768           5001466          BEQ.S   llq_4
  13FE: 7001           'p.'    llq_1    MOVEQ   #1,D0
  1400: B047           '.G'             CMP.W   D7,D0
  1402: 5DC0           '].'             SLT     D0
  1404: 4A00           'J.'             TST.B   D0
  1406: 675E           5001466          BEQ.S   llq_4
  1408: 2F00           '/.'             PUSH.L  D0
  140A: 4267           'Bg'             CLR     -(A7)
  140C: 486D FEE6        -$11A          PEA     glob198(A5)
  1410: 206D FD1A        -$2E6          MOVEA.L glob146(A5),A0
  1414: 2050           ' P'             MOVEA.L (A0),A0
  1416: 3207           '2.'             MOVE    D7,D1
  1418: 5341           'SA'             SUBQ    #1,D1
  141A: C3FC 0036      '...6'           MULS    #54,D1
  141E: 4870 10F4      'Hp..'           PEA     -12(A0,D1.W)
  1422: 2F0E           '/.'             PUSH.L  A6
  1424: 4EBA FF52      5001378          JSR     proc279
  1428: 121F           '..'             POP.B   D1
  142A: 201F           ' .'             POP.L   D0
  142C: C001           '..'             AND.B   D1,D0
  142E: 6736           5001466          BEQ.S   llq_4
  1430: 700A           'p.'             MOVEQ   #10,D0
  1432: B047           '.G'             CMP.W   D7,D0
  1434: 6D2C           5001462          BLT.S   llq_3
  1436: 206D FD1A        -$2E6          MOVEA.L glob146(A5),A0
  143A: 2050           ' P'             MOVEA.L (A0),A0
  143C: 3007           '0.'             MOVE    D7,D0
  143E: 5340           'S@'             SUBQ    #1,D0
  1440: C1FC 0036      '...6'           MULS    #54,D0
  1444: 226D FD1A        -$2E6          MOVEA.L glob146(A5),A1
  1448: 2251           '"Q'             MOVEA.L (A1),A1
  144A: 3207           '2.'             MOVE    D7,D1
  144C: C3FC 0036      '...6'           MULS    #54,D1
  1450: 43F1 10CA      'C...'           LEA     -54(A1,D1.W),A1
  1454: 41F0 00CA      'A...'           LEA     -54(A0,D0.W),A0
  1458: 700C           'p.'             MOVEQ   #12,D0
  145A: 22D8           '".'    llq_2    MOVE.L  (A0)+,(A1)+
  145C: 51C8 FFFC      500145A          DBRA    D0,llq_2
  1460: 3290           '2.'             MOVE    (A0),(A1)
  1462: 5347           'SG'    llq_3    SUBQ    #1,D7
  1464: 6098           50013FE          BRA     llq_1
  1466: 3D47 000C      200000C llq_4    MOVE    D7,funRslt(A6)
  146A: 2E1F           '..'             POP.L   D7
  146C: 4E5E           'N^'             UNLK    A6
  146E: 2E9F           '..'             POP.L   (A7)
  1470: 4E75           'Nu'             RTS     

                                 ;-refs -  5/proc280   

  1472: 0A30 3030 3030 3030    data197  STR     '0000000000'

  147E:                                 QUAL    proc281 ; b# =514  s#5  =proc281

                               vlr_1     VEQU  -282
                               vlr_2     VEQU  -281
                               vlr_3     VEQU  -26
                               vlr_4     VEQU  -22
                               vlr_5     VEQU  -14
                               vlr_6     VEQU  -12
                               param1    VEQU  8
  147E:                                 VEND    

                                 ;-refs -  1/proc114   

  147E: 4E56 FEE6      'NV..'  proc281  LINK    A6,#-$11A
  1482: 48E7 0118      'H...'           MOVEM.L D7/A3-A4,-(A7)
  1486: 4267           'Bg'             CLR     -(A7)
  1488: 2F0E           '/.'             PUSH.L  A6
  148A: 4EBA FF42      50013CE          JSR     proc280
  148E: 3E1F           '>.'             POP     D7
  1490: 700A           'p.'             MOVEQ   #10,D0
  1492: B047           '.G'             CMP.W   D7,D0
  1494: 6D00 013E      50015D4          BLT     llr_7
  1498: 7001           'p.'             MOVEQ   #1,D0
  149A: B047           '.G'             CMP.W   D7,D0
  149C: 6610           50014AE          BNE.S   llr_1
  149E: 42A7           'B.'             CLR.L   -(A7)
  14A0: 3F3C 00AD      '?<..'           PUSH    #$AD
  14A4: 42A7           'B.'             CLR.L   -(A7)
  14A6: 42A7           'B.'             CLR.L   -(A7)
  14A8: A97C           '.|'             _GetNewDialog ; (DlgID:INTEGER; wStorage:Ptr; behind:WindowPtr):DialogPtr 
  14AA: 265F           '&_'             POP.L   A3
  14AC: 600E           50014BC          BRA.S   llr_2
  14AE: 42A7           'B.'    llr_1    CLR.L   -(A7)
  14B0: 3F3C 00AB      '?<..'           PUSH    #$AB
  14B4: 42A7           'B.'             CLR.L   -(A7)
  14B6: 42A7           'B.'             CLR.L   -(A7)
  14B8: A97C           '.|'             _GetNewDialog ; (DlgID:INTEGER; wStorage:Ptr; behind:WindowPtr):DialogPtr 
  14BA: 265F           '&_'             POP.L   A3
  14BC: 41EE FEE6      200FEE6 llr_2    LEA     vlr_1(A6),A0
  14C0: 43ED FEE6        -$11A          LEA     glob198(A5),A1
  14C4: 20D9           ' .'             MOVE.L  (A1)+,(A0)+
  14C6: 20D9           ' .'             MOVE.L  (A1)+,(A0)+
  14C8: 20D9           ' .'             MOVE.L  (A1)+,(A0)+
  14CA: 4240           'B@'    llr_3    CLR     D0
  14CC: 102E FEE7      200FEE7          MOVE.B  vlr_2(A6),D0
  14D0: 0C40 00CA      '.@..'           CMPI    #$CA,D0
  14D4: 6610           50014E6          BNE.S   llr_4
  14D6: 486E FEE6      200FEE6          PEA     vlr_1(A6)
  14DA: 2F3C 0001 0001 '/<....'         PUSH.L  #$10001
  14E0: 4EAD 0122      10012F8          JSR     proc77(A5)
  14E4: 60E4           50014CA          BRA     llr_3
  14E6: 486E FEE6      200FEE6 llr_4    PEA     vlr_1(A6)
  14EA: 487A 00F2      50015DE          PEA     data198     ; len= 2
  14EE: 487A 00EE      50015DE          PEA     data198     ; len= 2
  14F2: 487A 00EA      50015DE          PEA     data198     ; len= 2
  14F6: A98B           '..'             _ParamText ; (cite0,cite1,cite2,cite3:Str255) 
  14F8: 102D FCA7        -$359          MOVE.B  glob129(A5),D0
  14FC: 6724           5001522          BEQ.S   llr_5
  14FE: 206D FCA2        -$35E          MOVEA.L glob128(A5),A0
  1502: 49E8 0008      'I...'           LEA     8(A0),A4
  1506: 2F0B           '/.'             PUSH.L  A3
  1508: 302C 0002      '0,..'           MOVE    2(A4),D0
  150C: 4440           'D@'             NEG     D0
  150E: 906B 000A      '.k..'           SUB     10(A3),D0
  1512: 3F00           '?.'             PUSH    D0
  1514: 3014           '0.'             MOVE    (A4),D0
  1516: 4440           'D@'             NEG     D0
  1518: 906B 0008      '.k..'           SUB     8(A3),D0
  151C: 3F00           '?.'             PUSH    D0
  151E: 4267           'Bg'             CLR     -(A7)
  1520: A91B           '..'             _MoveWindow ; (theWindow:WindowPtr; h,v:INTEGER; BringToFront:BOOLEAN) 
  1522: 2F0B           '/.'    llr_5    PUSH.L  A3
  1524: A915           '..'             _ShowWindow ; (theWindow:WindowPtr) 
  1526: 2F0B           '/.'             PUSH.L  A3
  1528: A91F           '..'             _SelectWindow ; (theWindow:WindowPtr) 
  152A: 42A7           'B.'             CLR.L   -(A7)
  152C: 486E FFF4      200FFF4          PEA     vlr_6(A6)
  1530: A991           '..'             _ModalDialog ; (filterProc:ProcPtr; VAR itemHit:INTEGER) 
  1532: 2F0B           '/.'             PUSH.L  A3
  1534: 3F3C 0002      '?<..'           PUSH    #2
  1538: 486E FFF2      200FFF2          PEA     vlr_5(A6)
  153C: 486E FFE6      200FFE6          PEA     vlr_3(A6)
  1540: 486E FFEA      200FFEA          PEA     vlr_4(A6)
  1544: A98D           '..'             _GetDItem ; (dlg:DialogPtr; itemNo:INTEGER; VAR kind:INTEGER; VAR item:Handle; VAR box:Rect) 
  1546: 2F2E FFE6      200FFE6          PUSH.L  vlr_3(A6)
  154A: 486E FEE6      200FEE6          PEA     vlr_1(A6)
  154E: A990           '..'             _GetIText ; (item:Handle; VAR text:Str255) 
  1550: 486E FEE6      200FEE6          PEA     vlr_1(A6)
  1554: 3F3C 0028      '?<.('           PUSH    #40
  1558: 4240           'B@'             CLR     D0
  155A: 102E FEE6      200FEE6          MOVE.B  vlr_1(A6),D0
  155E: 907C 0028      '.|.('           SUB     #40,D0
  1562: 3F00           '?.'             PUSH    D0
  1564: 4EAD 0122      10012F8          JSR     proc77(A5)
  1568: 206D FD1A        -$2E6          MOVEA.L glob146(A5),A0
  156C: 2050           ' P'             MOVEA.L (A0),A0
  156E: 3007           '0.'             MOVE    D7,D0
  1570: C1FC 0036      '...6'           MULS    #54,D0
  1574: 41F0 00CA      'A...'           LEA     -54(A0,D0.W),A0
  1578: 43EE FEE6      200FEE6          LEA     vlr_1(A6),A1
  157C: 7009           'p.'             MOVEQ   #9,D0
  157E: 20D9           ' .'    llr_6    MOVE.L  (A1)+,(A0)+
  1580: 51C8 FFFC      500157E          DBRA    D0,llr_6
  1584: 3091           '0.'             MOVE    (A1),(A0)
  1586: 206D FD1A        -$2E6          MOVEA.L glob146(A5),A0
  158A: 2050           ' P'             MOVEA.L (A0),A0
  158C: 3007           '0.'             MOVE    D7,D0
  158E: C1FC 0036      '...6'           MULS    #54,D0
  1592: 41F0 00F4      'A...'           LEA     -12(A0,D0.W),A0
  1596: 43ED FEE6        -$11A          LEA     glob198(A5),A1
  159A: 20D9           ' .'             MOVE.L  (A1)+,(A0)+
  159C: 20D9           ' .'             MOVE.L  (A1)+,(A0)+
  159E: 20D9           ' .'             MOVE.L  (A1)+,(A0)+
  15A0: 2F2D FD1A        -$2E6          PUSH.L  glob146(A5)
  15A4: A9AA           '..'             _ChangedResource ; (theResource:Handle) 
  15A6: 3F2D FD18        -$2E8          PUSH    glob145(A5)
  15AA: A999           '..'             _UpdateResFile ; (frefNum:RefNum) 
  15AC: 2F0B           '/.'             PUSH.L  A3
  15AE: A983           '..'             _DisposDialog ; (dlg:DialogPtr) 
  15B0: 206E 0008      2000008          MOVEA.L param1(A6),A0
  15B4: 2F28 FFFC      '/(..'           PUSH.L  -4(A0)
  15B8: A91F           '..'             _SelectWindow ; (theWindow:WindowPtr) 
  15BA: 2F2E 0008      2000008          PUSH.L  param1(A6)
  15BE: 4EBA FBC0      5001180          JSR     proc273
  15C2: 206E 0008      2000008          MOVEA.L param1(A6),A0
  15C6: 2F28 FFFC      '/(..'           PUSH.L  -4(A0)
  15CA: A981           '..'             _DrawDialog ; (dlg:DialogPtr) 
  15CC: 2F2E 0008      2000008          PUSH.L  param1(A6)
  15D0: 4EBA FC30      5001202          JSR     proc275
  15D4: 4CDF 1880      'L...'  llr_7    MOVEM.L (A7)+,D7/A3-A4
  15D8: 4E5E           'N^'             UNLK    A6
  15DA: 2E9F           '..'             POP.L   (A7)
  15DC: 4E75           'Nu'             RTS     

                                 ;-refs -  5/proc281   

  15DE: '..'                   data198  DC.W    0

  15E0:                                 QUAL    proc282 ; b# =516  s#5  =proc282

                               vls_1     VEQU  -270
                               vls_2     VEQU  -269
                               vls_3     VEQU  -14
                               vls_4     VEQU  -10
                               vls_5     VEQU  -2
                               param3    VEQU  8
                               param2    VEQU  12
                               param1    VEQU  14
  15E0:                                 VEND    

                                 ;-refs -  5/proc283    5/proc288   

  15E0: 4E56 FEF2      'NV..'  proc282  LINK    A6,#-$10E
  15E4: 2F07           '/.'             PUSH.L  D7
  15E6: 3E2E 000C      200000C          MOVE    param2(A6),D7
  15EA: 3D7C 0120 FEF2 200FEF2          MOVE    #$120,vls_1(A6)
  15F0: 7020           'p '             MOVEQ   #32,D0
  15F2: B047           '.G'             CMP.W   D7,D0
  15F4: 6604           50015FA          BNE.S   lls_1
  15F6: 3E3C 00B0      '><..'           MOVE    #$B0,D7
  15FA: 701C           'p.'    lls_1    MOVEQ   #28,D0
  15FC: B047           '.G'             CMP.W   D7,D0
  15FE: 5FC0           '_.'             SLE     D0
  1600: 4A00           'J.'             TST.B   D0
  1602: 670E           5001612          BEQ.S   lls_2
  1604: 721F           'r.'             MOVEQ   #31,D1
  1606: B247           '.G'             CMP.W   D7,D1
  1608: 5CC1           '\.'             SGE     D1
  160A: C001           '..'             AND.B   D1,D0
  160C: 6704           5001612          BEQ.S   lls_2
  160E: DE7C 00E0      '.|..'           ADD     #$E0,D7
  1612: 1D47 FEF3      200FEF3 lls_2    MOVE.B  D7,vls_2(A6)
  1616: 206E 0008      2000008          MOVEA.L param3(A6),A0
  161A: 2F28 FFFC      '/(..'           PUSH.L  -4(A0)
  161E: 302E 000E      200000E          MOVE    param1(A6),D0
  1622: 5640           'V@'             ADDQ    #3,D0
  1624: 3F00           '?.'             PUSH    D0
  1626: 486E FFFE      200FFFE          PEA     vls_5(A6)
  162A: 486E FFF2      200FFF2          PEA     vls_3(A6)
  162E: 486E FFF6      200FFF6          PEA     vls_4(A6)
  1632: A98D           '..'             _GetDItem ; (dlg:DialogPtr; itemNo:INTEGER; VAR kind:INTEGER; VAR item:Handle; VAR box:Rect) 
  1634: 2F2E FFF2      200FFF2          PUSH.L  vls_3(A6)
  1638: 486E FEF2      200FEF2          PEA     vls_1(A6)
  163C: A98F           '..'             _SetIText ; (item:Handle; text:Str255) 
  163E: 2E1F           '..'             POP.L   D7
  1640: 4E5E           'N^'             UNLK    A6
  1642: 205F           ' _'             POP.L   A0
  1644: 504F           'PO'             ADDQ    #8,A7
  1646: 4ED0           'N.'             JMP     (A0)

  1648:                                 QUAL    proc283 ; b# =517  s#5  =proc283

                               param1    VEQU  8
  1648:                                 VEND    

                                 ;-refs -  5/proc288   

  1648: 4E56 0000      'NV..'  proc283  LINK    A6,#0
  164C: 2F0C           '/.'             PUSH.L  A4
  164E: 206D FF50         -$B0          MOVEA.L glob227(A5),A0
  1652: 2850           '(P'             MOVEA.L (A0),A4
  1654: 3F3C 0001      '?<..'           PUSH    #1
  1658: 3F14           '?.'             PUSH    (A4)
  165A: 2F2E 0008      2000008          PUSH.L  param1(A6)
  165E: 4EBA FF80      50015E0          JSR     proc282
  1662: 3F3C 0002      '?<..'           PUSH    #2
  1666: 3F2C 0002      '?,..'           PUSH    2(A4)
  166A: 2F2E 0008      2000008          PUSH.L  param1(A6)
  166E: 4EBA FF70      50015E0          JSR     proc282
  1672: 3F3C 0003      '?<..'           PUSH    #3
  1676: 3F2C 0004      '?,..'           PUSH    4(A4)
  167A: 2F2E 0008      2000008          PUSH.L  param1(A6)
  167E: 4EBA FF60      50015E0          JSR     proc282
  1682: 3F3C 0004      '?<..'           PUSH    #4
  1686: 3F2C 0006      '?,..'           PUSH    6(A4)
  168A: 2F2E 0008      2000008          PUSH.L  param1(A6)
  168E: 4EBA FF50      50015E0          JSR     proc282
  1692: 3F3C 0005      '?<..'           PUSH    #5
  1696: 3F2C 0008      '?,..'           PUSH    8(A4)
  169A: 2F2E 0008      2000008          PUSH.L  param1(A6)
  169E: 4EBA FF40      50015E0          JSR     proc282
  16A2: 3F3C 0006      '?<..'           PUSH    #6
  16A6: 3F2C 000A      '?,..'           PUSH    10(A4)
  16AA: 2F2E 0008      2000008          PUSH.L  param1(A6)
  16AE: 4EBA FF30      50015E0          JSR     proc282
  16B2: 3F3C 0007      '?<..'           PUSH    #7
  16B6: 3F2C 000C      '?,..'           PUSH    12(A4)
  16BA: 2F2E 0008      2000008          PUSH.L  param1(A6)
  16BE: 4EBA FF20      50015E0          JSR     proc282
  16C2: 285F           '(_'             POP.L   A4
  16C4: 4E5E           'N^'             UNLK    A6
  16C6: 2E9F           '..'             POP.L   (A7)
  16C8: 4E75           'Nu'             RTS     

  16CA:                                 QUAL    proc284 ; b# =518  s#5  =proc284

                               vlu_1     VEQU  -270
                               vlu_2     VEQU  -269
                               vlu_3     VEQU  -14
                               vlu_4     VEQU  -10
                               vlu_5     VEQU  -2
                               param3    VEQU  8
                               param2    VEQU  12
                               param1    VEQU  16
  16CA:                                 VEND    

                                 ;-refs -  5/proc285    5/proc288   

  16CA: 4E56 FEF2      'NV..'  proc284  LINK    A6,#-$10E
  16CE: 2F0C           '/.'             PUSH.L  A4
  16D0: 286E 000C      200000C          MOVEA.L param2(A6),A4
  16D4: 3D7C 0120 FEF2 200FEF2          MOVE    #$120,vlu_1(A6)
  16DA: 206E 0008      2000008          MOVEA.L param3(A6),A0
  16DE: 2F28 FFFC      '/(..'           PUSH.L  -4(A0)
  16E2: 302E 0010      2000010          MOVE    param1(A6),D0
  16E6: 5640           'V@'             ADDQ    #3,D0
  16E8: 3F00           '?.'             PUSH    D0
  16EA: 486E FFFE      200FFFE          PEA     vlu_5(A6)
  16EE: 486E FFF2      200FFF2          PEA     vlu_3(A6)
  16F2: 486E FFF6      200FFF6          PEA     vlu_4(A6)
  16F6: A98D           '..'             _GetDItem ; (dlg:DialogPtr; itemNo:INTEGER; VAR kind:INTEGER; VAR item:Handle; VAR box:Rect) 
  16F8: 2F2E FFF2      200FFF2          PUSH.L  vlu_3(A6)
  16FC: 486E FEF2      200FEF2          PEA     vlu_1(A6)
  1700: A990           '..'             _GetIText ; (item:Handle; VAR text:Str255) 
  1702: 4240           'B@'             CLR     D0
  1704: 102E FEF3      200FEF3          MOVE.B  vlu_2(A6),D0
  1708: 3880           '8.'             MOVE    D0,(A4)
  170A: 7061           'pa'             MOVEQ   #97,D0
  170C: B054           '.T'             CMP.W   (A4),D0
  170E: 5FC0           '_.'             SLE     D0
  1710: 727A           'rz'             MOVEQ   #$7A,D1
  1712: B254           '.T'             CMP.W   (A4),D1
  1714: 5CC1           '\.'             SGE     D1
  1716: C001           '..'             AND.B   D1,D0
  1718: 6706           5001720          BEQ.S   llu_1
  171A: 0654 FFE0      '.T..'           ADDI    #-32,(A4)
  171E: 6024           5001744          BRA.S   llu_3
  1720: 0C54 00B0      '.T..'  llu_1    CMPI    #$B0,(A4)
  1724: 6606           500172C          BNE.S   llu_2
  1726: 38BC 0020      '8.. '           MOVE    #32,(A4)
  172A: 6018           5001744          BRA.S   llu_3
  172C: 0C54 00FC      '.T..'  llu_2    CMPI    #$FC,(A4)
  1730: 5CC0           '\.'             SGE     D0
  1732: 4A00           'J.'             TST.B   D0
  1734: 670E           5001744          BEQ.S   llu_3
  1736: 0C54 00FF      '.T..'           CMPI    #$FF,(A4)
  173A: 5FC1           '_.'             SLE     D1
  173C: C001           '..'             AND.B   D1,D0
  173E: 6704           5001744          BEQ.S   llu_3
  1740: 0454 00E0      '.T..'           SUBI    #$E0,(A4)
  1744: 285F           '(_'    llu_3    POP.L   A4
  1746: 4E5E           'N^'             UNLK    A6
  1748: 205F           ' _'             POP.L   A0
  174A: DEFC 000A      '....'           ADDA.W  #10,A7
  174E: 4ED0           'N.'             JMP     (A0)

  1750:                                 QUAL    proc285 ; b# =519  s#5  =proc285

                               param1    VEQU  8
  1750:                                 VEND    

                                 ;-refs -  5/proc288   

  1750: 4E56 0000      'NV..'  proc285  LINK    A6,#0
  1754: 2F0C           '/.'             PUSH.L  A4
  1756: 206D FF50         -$B0          MOVEA.L glob227(A5),A0
  175A: 2850           '(P'             MOVEA.L (A0),A4
  175C: 3F3C 0001      '?<..'           PUSH    #1
  1760: 2F0C           '/.'             PUSH.L  A4
  1762: 2F2E 0008      2000008          PUSH.L  param1(A6)
  1766: 4EBA FF62      50016CA          JSR     proc284
  176A: 3F3C 0002      '?<..'           PUSH    #2
  176E: 486C 0002      'Hl..'           PEA     2(A4)
  1772: 2F2E 0008      2000008          PUSH.L  param1(A6)
  1776: 4EBA FF52      50016CA          JSR     proc284
  177A: 3F3C 0003      '?<..'           PUSH    #3
  177E: 486C 0004      'Hl..'           PEA     4(A4)
  1782: 2F2E 0008      2000008          PUSH.L  param1(A6)
  1786: 4EBA FF42      50016CA          JSR     proc284
  178A: 3F3C 0004      '?<..'           PUSH    #4
  178E: 486C 0006      'Hl..'           PEA     6(A4)
  1792: 2F2E 0008      2000008          PUSH.L  param1(A6)
  1796: 4EBA FF32      50016CA          JSR     proc284
  179A: 3F3C 0005      '?<..'           PUSH    #5
  179E: 486C 0008      'Hl..'           PEA     8(A4)
  17A2: 2F2E 0008      2000008          PUSH.L  param1(A6)
  17A6: 4EBA FF22      50016CA          JSR     proc284
  17AA: 3F3C 0006      '?<..'           PUSH    #6
  17AE: 486C 000A      'Hl..'           PEA     10(A4)
  17B2: 2F2E 0008      2000008          PUSH.L  param1(A6)
  17B6: 4EBA FF12      50016CA          JSR     proc284
  17BA: 3F3C 0007      '?<..'           PUSH    #7
  17BE: 486C 000C      'Hl..'           PEA     12(A4)
  17C2: 2F2E 0008      2000008          PUSH.L  param1(A6)
  17C6: 4EBA FF02      50016CA          JSR     proc284
  17CA: 285F           '(_'             POP.L   A4
  17CC: 4E5E           'N^'             UNLK    A6
  17CE: 2E9F           '..'             POP.L   (A7)
  17D0: 4E75           'Nu'             RTS     

  17D2:                                 QUAL    proc286 ; b# =520  s#5  =proc286

                               vlw_1     VEQU  -16
                               vlw_2     VEQU  -8
                               vlw_3     VEQU  -4
                               param1    VEQU  8
  17D2:                                 VEND    

                                 ;-refs -  5/proc288   

  17D2: 4E56 FFEE      'NV..'  proc286  LINK    A6,#-$12
  17D6: 48E7 0108      'H...'           MOVEM.L D7/A4,-(A7)
  17DA: 286E 0008      2000008          MOVEA.L param1(A6),A4
  17DE: 206D FF50         -$B0          MOVEA.L glob227(A5),A0
  17E2: 2050           ' P'             MOVEA.L (A0),A0
  17E4: 3E28 0012      '>(..'           MOVE    18(A0),D7
  17E8: 2F2C FFFC      '/,..'           PUSH.L  -4(A4)
  17EC: 3F3C 001F      '?<..'           PUSH    #31
  17F0: 486E FFFC      200FFFC          PEA     vlw_3(A6)
  17F4: 486E FFF8      200FFF8          PEA     vlw_2(A6)
  17F8: 486E FFF0      200FFF0          PEA     vlw_1(A6)
  17FC: A98D           '..'             _GetDItem ; (dlg:DialogPtr; itemNo:INTEGER; VAR kind:INTEGER; VAR item:Handle; VAR box:Rect) 
  17FE: 2F2E FFF8      200FFF8          PUSH.L  vlw_2(A6)
  1802: 3F07           '?.'             PUSH    D7
  1804: A963           '.c'             _SetCtlValue ; (Ctl:CtlHdl; theValue:INTEGER) 
  1806: 7001           'p.'             MOVEQ   #1,D0
  1808: B047           '.G'             CMP.W   D7,D0
  180A: 6604           5001810          BNE.S   llw_1
  180C: 4247           'BG'             CLR     D7
  180E: 6002           5001812          BRA.S   llw_2
  1810: 7E01           '~.'    llw_1    MOVEQ   #1,D7
  1812: 2F2C FFFC      '/,..'  llw_2    PUSH.L  -4(A4)
  1816: 3F3C 0020      '?<. '           PUSH    #32
  181A: 486E FFFC      200FFFC          PEA     vlw_3(A6)
  181E: 486E FFF8      200FFF8          PEA     vlw_2(A6)
  1822: 486E FFF0      200FFF0          PEA     vlw_1(A6)
  1826: A98D           '..'             _GetDItem ; (dlg:DialogPtr; itemNo:INTEGER; VAR kind:INTEGER; VAR item:Handle; VAR box:Rect) 
  1828: 2F2E FFF8      200FFF8          PUSH.L  vlw_2(A6)
  182C: 3F07           '?.'             PUSH    D7
  182E: A963           '.c'             _SetCtlValue ; (Ctl:CtlHdl; theValue:INTEGER) 
  1830: 4CDF 1080      'L...'           MOVEM.L (A7)+,D7/A4
  1834: 4E5E           'N^'             UNLK    A6
  1836: 2E9F           '..'             POP.L   (A7)
  1838: 4E75           'Nu'             RTS     

  183A:                                 QUAL    proc287 ; b# =521  s#5  =proc287

                               vlx_1     VEQU  -18
                               vlx_2     VEQU  -10
                               vlx_3     VEQU  -6
                               vlx_4     VEQU  -2
                               param1    VEQU  8
  183A:                                 VEND    

                                 ;-refs -  5/proc288   

  183A: 4E56 FFEC      'NV..'  proc287  LINK    A6,#-$14
  183E: 48E7 0300      'H...'           MOVEM.L D6-D7,-(A7)
  1842: 486E FFFE      200FFFE          PEA     vlx_4(A6)
  1846: 4EAD 00F2      1000FA6          JSR     GetSoundVol(A5)
  184A: 4247           'BG'             CLR     D7
  184C: 6034           5001882          BRA.S   llx_4
  184E: 206E 0008      2000008 llx_1    MOVEA.L param1(A6),A0
  1852: 2F28 FFFC      '/(..'           PUSH.L  -4(A0)
  1856: 3007           '0.'             MOVE    D7,D0
  1858: D07C 000B      '.|..'           ADD     #11,D0
  185C: 3F00           '?.'             PUSH    D0
  185E: 486E FFFA      200FFFA          PEA     vlx_3(A6)
  1862: 486E FFF6      200FFF6          PEA     vlx_2(A6)
  1866: 486E FFEE      200FFEE          PEA     vlx_1(A6)
  186A: A98D           '..'             _GetDItem ; (dlg:DialogPtr; itemNo:INTEGER; VAR kind:INTEGER; VAR item:Handle; VAR box:Rect) 
  186C: BE6E FFFE      200FFFE          CMP.W   vlx_4(A6),D7
  1870: 6604           5001876          BNE.S   llx_2
  1872: 7C01           '|.'             MOVEQ   #1,D6
  1874: 6002           5001878          BRA.S   llx_3
  1876: 4246           'BF'    llx_2    CLR     D6
  1878: 2F2E FFF6      200FFF6 llx_3    PUSH.L  vlx_2(A6)
  187C: 3F06           '?.'             PUSH    D6
  187E: A963           '.c'             _SetCtlValue ; (Ctl:CtlHdl; theValue:INTEGER) 
  1880: 5247           'RG'             ADDQ    #1,D7
  1882: 7007           'p.'    llx_4    MOVEQ   #7,D0
  1884: B047           '.G'             CMP.W   D7,D0
  1886: 6CC6           500184E          BGE     llx_1
  1888: 4CDF 00C0      'L...'           MOVEM.L (A7)+,D6-D7
  188C: 4E5E           'N^'             UNLK    A6
  188E: 2E9F           '..'             POP.L   (A7)
  1890: 4E75           'Nu'             RTS     

  1892:                                 QUAL    proc288 ; b# =522  s#5  =proc288

                               vly_1     VEQU  -6
                               vly_2     VEQU  -4
                               param1    VEQU  8
  1892:                                 VEND    

                                 ;-refs -  1/proc114   

  1892: 4E56 FFF4      'NV..'  proc288  LINK    A6,#-$C
  1896: 48E7 0318      'H...'           MOVEM.L D6-D7/A3-A4,-(A7)
  189A: 266E 0008      2000008          MOVEA.L param1(A6),A3
  189E: 42A7           'B.'             CLR.L   -(A7)
  18A0: 3F3C 00AC      '?<..'           PUSH    #$AC
  18A4: 42A7           'B.'             CLR.L   -(A7)
  18A6: 42A7           'B.'             CLR.L   -(A7)
  18A8: A97C           '.|'             _GetNewDialog ; (DlgID:INTEGER; wStorage:Ptr; behind:WindowPtr):DialogPtr 
  18AA: 2D5F FFFC      200FFFC          POP.L   vly_2(A6)
  18AE: 2F0E           '/.'             PUSH.L  A6
  18B0: 4EBA FD96      5001648          JSR     proc283
  18B4: 2F0E           '/.'             PUSH.L  A6
  18B6: 4EBA FF82      500183A          JSR     proc287
  18BA: 2F0E           '/.'             PUSH.L  A6
  18BC: 4EBA FF14      50017D2          JSR     proc286
  18C0: 102D FCA7        -$359          MOVE.B  glob129(A5),D0
  18C4: 672E           50018F4          BEQ.S   lly_1
  18C6: 206D FCA2        -$35E          MOVEA.L glob128(A5),A0
  18CA: 49E8 0008      'I...'           LEA     8(A0),A4
  18CE: 2F2E FFFC      200FFFC          PUSH.L  vly_2(A6)
  18D2: 302C 0002      '0,..'           MOVE    2(A4),D0
  18D6: 4440           'D@'             NEG     D0
  18D8: 206E FFFC      200FFFC          MOVEA.L vly_2(A6),A0
  18DC: 9068 000A      '.h..'           SUB     10(A0),D0
  18E0: 3F00           '?.'             PUSH    D0
  18E2: 3014           '0.'             MOVE    (A4),D0
  18E4: 4440           'D@'             NEG     D0
  18E6: 206E FFFC      200FFFC          MOVEA.L vly_2(A6),A0
  18EA: 9068 0008      '.h..'           SUB     8(A0),D0
  18EE: 3F00           '?.'             PUSH    D0
  18F0: 4267           'Bg'             CLR     -(A7)
  18F2: A91B           '..'             _MoveWindow ; (theWindow:WindowPtr; h,v:INTEGER; BringToFront:BOOLEAN) 
  18F4: 2F2E FFFC      200FFFC lly_1    PUSH.L  vly_2(A6)
  18F8: A915           '..'             _ShowWindow ; (theWindow:WindowPtr) 
  18FA: 2F2E FFFC      200FFFC          PUSH.L  vly_2(A6)
  18FE: A91F           '..'             _SelectWindow ; (theWindow:WindowPtr) 
  1900: 2F2E FFFC      200FFFC          PUSH.L  vly_2(A6)
  1904: 2F3C 0000 0004 '/<....'         PUSH.L  #4
  190A: 3F3C 7FFF      '?<..'           PUSH    #$7FFF
  190E: A97E           '.~'             _SelIText ; (dlg:DialogPtr; itemNo:INTEGER; startSel,endSel:INTEGER) 
  1910: 487A F5C6      5000ED8 lly_2    PEA     proc270
  1914: 486E FFFA      200FFFA          PEA     vly_1(A6)
  1918: A991           '..'             _ModalDialog ; (filterProc:ProcPtr; VAR itemHit:INTEGER) 
  191A: 302E FFFA      200FFFA          MOVE    vly_1(A6),D0
  191E: 5540           'U@'             SUBQ    #2,D0
  1920: 6716           5001938          BEQ.S   lly_3
  1922: 5340           'S@'             SUBQ    #1,D0
  1924: 6754           500197A          BEQ.S   lly_6
  1926: 0440 001C      '.@..'           SUBI    #28,D0
  192A: 6700 0098      50019C4          BEQ     lly_8
  192E: 5340           'S@'             SUBQ    #1,D0
  1930: 6700 00A6      50019D8          BEQ     lly_9
  1934: 6000 00B2      50019E8          BRA     lly_10
  1938: 7E01           '~.'    lly_3    MOVEQ   #1,D7
  193A: 6022           500195E          BRA.S   lly_5
  193C: 206D FD1A        -$2E6 lly_4    MOVEA.L glob146(A5),A0
  1940: 2050           ' P'             MOVEA.L (A0),A0
  1942: 3007           '0.'             MOVE    D7,D0
  1944: C1FC 0036      '...6'           MULS    #54,D0
  1948: 4230 00CA      'B0..'           CLR.B   -54(A0,D0.W)
  194C: 206D FD1A        -$2E6          MOVEA.L glob146(A5),A0
  1950: 2050           ' P'             MOVEA.L (A0),A0
  1952: 3007           '0.'             MOVE    D7,D0
  1954: C1FC 0036      '...6'           MULS    #54,D0
  1958: 4230 00F4      'B0..'           CLR.B   -12(A0,D0.W)
  195C: 5247           'RG'             ADDQ    #1,D7
  195E: 700A           'p.'    lly_5    MOVEQ   #10,D0
  1960: B047           '.G'             CMP.W   D7,D0
  1962: 6CD8           500193C          BGE     lly_4
  1964: 2F2D FD1A        -$2E6          PUSH.L  glob146(A5)
  1968: A9AA           '..'             _ChangedResource ; (theResource:Handle) 
  196A: 2F2E 0008      2000008          PUSH.L  param1(A6)
  196E: 4EBA F892      5001202          JSR     proc275
  1972: 2F2B FFFC      '/+..'           PUSH.L  -4(A3)
  1976: A981           '..'             _DrawDialog ; (dlg:DialogPtr) 
  1978: 606E           50019E8          BRA.S   lly_10
  197A: 42A7           'B.'    lly_6    CLR.L   -(A7)
  197C: 2F3A 020A      5001B88          PUSH.L  data200     ; 'KDEF'
  1980: 3F3C 0001      '?<..'           PUSH    #1
  1984: A9A0           '..'             _GetResource ; (theType:ResType; ID:INTEGER):Handle 
  1986: 2C1F           ',.'             POP.L   D6
  1988: 2046           ' F'             MOVEA.L D6,A0
  198A: 2050           ' P'             MOVEA.L (A0),A0
  198C: 226D FF50         -$B0          MOVEA.L glob227(A5),A1
  1990: 2251           '"Q'             MOVEA.L (A1),A1
  1992: 7004           'p.'             MOVEQ   #4,D0
  1994: 22D8           '".'    lly_7    MOVE.L  (A0)+,(A1)+
  1996: 51C8 FFFC      5001994          DBRA    D0,lly_7
  199A: 3290           '2.'             MOVE    (A0),(A1)
  199C: 206D FF50         -$B0          MOVEA.L glob227(A5),A0
  19A0: 2050           ' P'             MOVEA.L (A0),A0
  19A2: 3F28 0014      '?(..'           PUSH    20(A0)
  19A6: 4EAD 00EA      1000F2A          JSR     proc63(A5)
  19AA: 2F0E           '/.'             PUSH.L  A6
  19AC: 4EBA FC9A      5001648          JSR     proc283
  19B0: 2F0E           '/.'             PUSH.L  A6
  19B2: 4EBA FE1E      50017D2          JSR     proc286
  19B6: 2F0E           '/.'             PUSH.L  A6
  19B8: 4EBA FE80      500183A          JSR     proc287
  19BC: 2F2E FFFC      200FFFC          PUSH.L  vly_2(A6)
  19C0: A981           '..'             _DrawDialog ; (dlg:DialogPtr) 
  19C2: 6024           50019E8          BRA.S   lly_10
  19C4: 206D FF50         -$B0 lly_8    MOVEA.L glob227(A5),A0
  19C8: 2050           ' P'             MOVEA.L (A0),A0
  19CA: 317C 0001 0012 '1|....'         MOVE    #1,18(A0)
  19D0: 2F0E           '/.'             PUSH.L  A6
  19D2: 4EBA FDFE      50017D2          JSR     proc286
  19D6: 6010           50019E8          BRA.S   lly_10
  19D8: 206D FF50         -$B0 lly_9    MOVEA.L glob227(A5),A0
  19DC: 2050           ' P'             MOVEA.L (A0),A0
  19DE: 4268 0012      'Bh..'           CLR     18(A0)
  19E2: 2F0E           '/.'             PUSH.L  A6
  19E4: 4EBA FDEC      50017D2          JSR     proc286
  19E8: 7004           'p.'    lly_10   MOVEQ   #4,D0
  19EA: B06E FFFA      200FFFA          CMP.W   vly_1(A6),D0
  19EE: 5FC0           '_.'             SLE     D0
  19F0: 720B           'r.'             MOVEQ   #11,D1
  19F2: B26E FFFA      200FFFA          CMP.W   vly_1(A6),D1
  19F6: 5EC1           '^.'             SGT     D1
  19F8: C001           '..'             AND.B   D1,D0
  19FA: 6700 0112      5001B0E          BEQ     lly_19
  19FE: 206D FF50         -$B0          MOVEA.L glob227(A5),A0
  1A02: 2850           '(P'             MOVEA.L (A0),A4
  1A04: 302E FFFA      200FFFA          MOVE    vly_1(A6),D0
  1A08: 5940           'Y@'             SUBQ    #4,D0
  1A0A: 6B00 00F2      5001AFE          BMI     lly_18
  1A0E: 0C40 0006      '.@..'           CMPI    #6,D0
  1A12: 6E00 00EA      5001AFE          BGT     lly_18
  1A16: D040           '.@'             ADD     D0,D0
  1A18: 303B 0006      5001A20          MOVE    data199(D0.W),D0
  1A1C: 4EFB 0000      5001A20          JMP     data199-2(D0.W)
  1A20:                                 JBIAS  2
                                 ;-refs -  5/proc288   

  1A20: 0010             $1A2E data199  JUMP    lly_11
  1A22: 002C             $1A4A          JUMP    lly_12
  1A24: 004C             $1A6A          JUMP    lly_13
  1A26: 006A             $1A88          JUMP    lly_14
  1A28: 0088             $1AA6          JUMP    lly_15
  1A2A: 00A6             $1AC4          JUMP    lly_16
  1A2C: 00C4             $1AE2          JUMP    lly_17

  1A2E: 3F3C 0001      '?<..'  lly_11   PUSH    #1
  1A32: 2F0C           '/.'             PUSH.L  A4
  1A34: 2F0E           '/.'             PUSH.L  A6
  1A36: 4EBA FC92      50016CA          JSR     proc284
  1A3A: 3F3C 0001      '?<..'           PUSH    #1
  1A3E: 3F14           '?.'             PUSH    (A4)
  1A40: 2F0E           '/.'             PUSH.L  A6
  1A42: 4EBA FB9C      50015E0          JSR     proc282
  1A46: 6000 00B6      5001AFE          BRA     lly_18
  1A4A: 3F3C 0002      '?<..'  lly_12   PUSH    #2
  1A4E: 486C 0002      'Hl..'           PEA     2(A4)
  1A52: 2F0E           '/.'             PUSH.L  A6
  1A54: 4EBA FC74      50016CA          JSR     proc284
  1A58: 3F3C 0002      '?<..'           PUSH    #2
  1A5C: 3F2C 0002      '?,..'           PUSH    2(A4)
  1A60: 2F0E           '/.'             PUSH.L  A6
  1A62: 4EBA FB7C      50015E0          JSR     proc282
  1A66: 6000 0096      5001AFE          BRA     lly_18
  1A6A: 3F3C 0003      '?<..'  lly_13   PUSH    #3
  1A6E: 486C 0004      'Hl..'           PEA     4(A4)
  1A72: 2F0E           '/.'             PUSH.L  A6
  1A74: 4EBA FC54      50016CA          JSR     proc284
  1A78: 3F3C 0003      '?<..'           PUSH    #3
  1A7C: 3F2C 0004      '?,..'           PUSH    4(A4)
  1A80: 2F0E           '/.'             PUSH.L  A6
  1A82: 4EBA FB5C      50015E0          JSR     proc282
  1A86: 6076           5001AFE          BRA.S   lly_18
  1A88: 3F3C 0004      '?<..'  lly_14   PUSH    #4
  1A8C: 486C 0006      'Hl..'           PEA     6(A4)
  1A90: 2F0E           '/.'             PUSH.L  A6
  1A92: 4EBA FC36      50016CA          JSR     proc284
  1A96: 3F3C 0004      '?<..'           PUSH    #4
  1A9A: 3F2C 0006      '?,..'           PUSH    6(A4)
  1A9E: 2F0E           '/.'             PUSH.L  A6
  1AA0: 4EBA FB3E      50015E0          JSR     proc282
  1AA4: 6058           5001AFE          BRA.S   lly_18
  1AA6: 3F3C 0005      '?<..'  lly_15   PUSH    #5
  1AAA: 486C 0008      'Hl..'           PEA     8(A4)
  1AAE: 2F0E           '/.'             PUSH.L  A6
  1AB0: 4EBA FC18      50016CA          JSR     proc284
  1AB4: 3F3C 0005      '?<..'           PUSH    #5
  1AB8: 3F2C 0008      '?,..'           PUSH    8(A4)
  1ABC: 2F0E           '/.'             PUSH.L  A6
  1ABE: 4EBA FB20      50015E0          JSR     proc282
  1AC2: 603A           5001AFE          BRA.S   lly_18
  1AC4: 3F3C 0006      '?<..'  lly_16   PUSH    #6
  1AC8: 486C 000A      'Hl..'           PEA     10(A4)
  1ACC: 2F0E           '/.'             PUSH.L  A6
  1ACE: 4EBA FBFA      50016CA          JSR     proc284
  1AD2: 3F3C 0006      '?<..'           PUSH    #6
  1AD6: 3F2C 000A      '?,..'           PUSH    10(A4)
  1ADA: 2F0E           '/.'             PUSH.L  A6
  1ADC: 4EBA FB02      50015E0          JSR     proc282
  1AE0: 601C           5001AFE          BRA.S   lly_18
  1AE2: 3F3C 0007      '?<..'  lly_17   PUSH    #7
  1AE6: 486C 000C      'Hl..'           PEA     12(A4)
  1AEA: 2F0E           '/.'             PUSH.L  A6
  1AEC: 4EBA FBDC      50016CA          JSR     proc284
  1AF0: 3F3C 0007      '?<..'           PUSH    #7
  1AF4: 3F2C 000C      '?,..'           PUSH    12(A4)
  1AF8: 2F0E           '/.'             PUSH.L  A6
  1AFA: 4EBA FAE4      50015E0          JSR     proc282
  1AFE: 2F2E FFFC      200FFFC lly_18   PUSH.L  vly_2(A6)
  1B02: 3F2E FFFA      200FFFA          PUSH    vly_1(A6)
  1B06: 2F3C 7FFF 0000 '/<....'         PUSH.L  #$7FFF0000
  1B0C: A97E           '.~'             _SelIText ; (dlg:DialogPtr; itemNo:INTEGER; startSel,endSel:INTEGER) 
  1B0E: 700B           'p.'    lly_19   MOVEQ   #11,D0
  1B10: B06E FFFA      200FFFA          CMP.W   vly_1(A6),D0
  1B14: 5FC0           '_.'             SLE     D0
  1B16: 7213           'r.'             MOVEQ   #19,D1
  1B18: B26E FFFA      200FFFA          CMP.W   vly_1(A6),D1
  1B1C: 5EC1           '^.'             SGT     D1
  1B1E: C001           '..'             AND.B   D1,D0
  1B20: 6726           5001B48          BEQ.S   lly_20
  1B22: 302E FFFA      200FFFA          MOVE    vly_1(A6),D0
  1B26: 907C 000B      '.|..'           SUB     #11,D0
  1B2A: 206D FF50         -$B0          MOVEA.L glob227(A5),A0
  1B2E: 2050           ' P'             MOVEA.L (A0),A0
  1B30: 3140 0014      '1@..'           MOVE    D0,20(A0)
  1B34: 206D FF50         -$B0          MOVEA.L glob227(A5),A0
  1B38: 2050           ' P'             MOVEA.L (A0),A0
  1B3A: 3F28 0014      '?(..'           PUSH    20(A0)
  1B3E: 4EAD 00EA      1000F2A          JSR     proc63(A5)
  1B42: 2F0E           '/.'             PUSH.L  A6
  1B44: 4EBA FCF4      500183A          JSR     proc287
  1B48: 7001           'p.'    lly_20   MOVEQ   #1,D0
  1B4A: B06E FFFA      200FFFA          CMP.W   vly_1(A6),D0
  1B4E: 6600 FDC0      5001910          BNE     lly_2
  1B52: 2F0E           '/.'             PUSH.L  A6
  1B54: 4EBA FBFA      5001750          JSR     proc285
  1B58: 2F2D FF50         -$B0          PUSH.L  glob227(A5)
  1B5C: A9AA           '..'             _ChangedResource ; (theResource:Handle) 
  1B5E: 3F2D FD18        -$2E8          PUSH    glob145(A5)
  1B62: A999           '..'             _UpdateResFile ; (frefNum:RefNum) 
  1B64: 2F2E FFFC      200FFFC          PUSH.L  vly_2(A6)
  1B68: A983           '..'             _DisposDialog ; (dlg:DialogPtr) 
  1B6A: 2F2B FFFC      '/+..'           PUSH.L  -4(A3)
  1B6E: A91F           '..'             _SelectWindow ; (theWindow:WindowPtr) 
  1B70: 2F2E 0008      2000008          PUSH.L  param1(A6)
  1B74: 4EBA F60A      5001180          JSR     proc273
  1B78: 2F2B FFFC      '/+..'           PUSH.L  -4(A3)
  1B7C: A981           '..'             _DrawDialog ; (dlg:DialogPtr) 
  1B7E: 4CDF 18C0      'L...'           MOVEM.L (A7)+,D6-D7/A3-A4
  1B82: 4E5E           'N^'             UNLK    A6
  1B84: 2E9F           '..'             POP.L   (A7)
  1B86: 4E75           'Nu'             RTS     

                                 ;-refs -  5/proc288   

  1B88: 4B44                   data200  DC.B    'KDEF'

  1B8C:                                 QUAL    proc289 ; b# =525  s#5  =proc289

                               vlz_1     VEQU  -14
                               vlz_2     VEQU  -12
                               vlz_3     VEQU  -10
                               funRslt   VEQU  12
  1B8C:                                 VEND    

                                 ;-refs -  1/proc114   

  1B8C: 4E56 FFF2      'NV..'  proc289  LINK    A6,#-$E
  1B90: 486E FFF2      200FFF2          PEA     vlz_1(A6)
  1B94: 4EAD 00E2      1000E2E          JSR     GetTime(A5)
  1B98: 700C           'p.'             MOVEQ   #12,D0
  1B9A: B06E FFF4      200FFF4          CMP.W   vlz_2(A6),D0
  1B9E: 57C0           'W.'             SEQ     D0
  1BA0: 7214           'r.'             MOVEQ   #20,D1
  1BA2: B26E FFF6      200FFF6          CMP.W   vlz_3(A6),D1
  1BA6: 5FC1           '_.'             SLE     D1
  1BA8: C001           '..'             AND.B   D1,D0
  1BAA: 7219           'r.'             MOVEQ   #25,D1
  1BAC: B26E FFF6      200FFF6          CMP.W   vlz_3(A6),D1
  1BB0: 5CC1           '\.'             SGE     D1
  1BB2: C001           '..'             AND.B   D1,D0
  1BB4: 4400           'D.'             NEG.B   D0
  1BB6: 1D40 000C      200000C          MOVE.B  D0,funRslt(A6)
  1BBA: 4E5E           'N^'             UNLK    A6
  1BBC: 2E9F           '..'             POP.L   (A7)
  1BBE: 4E75           'Nu'             RTS     

  1BC0:                                 QUAL    proc290 ; b# =526  s#5  =proc290

                               vma_1     VEQU  -8
                               param1    VEQU  8
  1BC0:                                 VEND    

                                 ;-refs -  1/proc114   

  1BC0: 4E56 FFF2      'NV..'  proc290  LINK    A6,#-$E
  1BC4: 48E7 0318      'H...'           MOVEM.L D6-D7/A3-A4,-(A7)
  1BC8: 3E3C 4E20      '><N '           MOVE    #$4E20,D7
  1BCC: A937           '.7'             _DrawMenuBar  
  1BCE: 42A7           'B.'    lma_1    CLR.L   -(A7)
  1BD0: 2F3A 00EA      5001CBC          PUSH.L  data201     ; 'DLOG'
  1BD4: 3F07           '?.'             PUSH    D7
  1BD6: A9A0           '..'             _GetResource ; (theType:ResType; ID:INTEGER):Handle 
  1BD8: 2C1F           ',.'             POP.L   D6
  1BDA: 6700 008E      5001C6A          BEQ     lma_5
  1BDE: 42A7           'B.'             CLR.L   -(A7)
  1BE0: 3F07           '?.'             PUSH    D7
  1BE2: 42A7           'B.'             CLR.L   -(A7)
  1BE4: 70FF           'p.'             MOVEQ   #-1,D0
  1BE6: 2F00           '/.'             PUSH.L  D0
  1BE8: A97C           '.|'             _GetNewDialog ; (DlgID:INTEGER; wStorage:Ptr; behind:WindowPtr):DialogPtr 
  1BEA: 265F           '&_'             POP.L   A3
  1BEC: 102D FCA7        -$359          MOVE.B  glob129(A5),D0
  1BF0: 6724           5001C16          BEQ.S   lma_2
  1BF2: 206D FCA2        -$35E          MOVEA.L glob128(A5),A0
  1BF6: 49E8 0008      'I...'           LEA     8(A0),A4
  1BFA: 2F0B           '/.'             PUSH.L  A3
  1BFC: 302C 0002      '0,..'           MOVE    2(A4),D0
  1C00: 4440           'D@'             NEG     D0
  1C02: 906B 000A      '.k..'           SUB     10(A3),D0
  1C06: 3F00           '?.'             PUSH    D0
  1C08: 3014           '0.'             MOVE    (A4),D0
  1C0A: 4440           'D@'             NEG     D0
  1C0C: 906B 0008      '.k..'           SUB     8(A3),D0
  1C10: 3F00           '?.'             PUSH    D0
  1C12: 4267           'Bg'             CLR     -(A7)
  1C14: A91B           '..'             _MoveWindow ; (theWindow:WindowPtr; h,v:INTEGER; BringToFront:BOOLEAN) 
  1C16: 2F0B           '/.'    lma_2    PUSH.L  A3
  1C18: A915           '..'             _ShowWindow ; (theWindow:WindowPtr) 
  1C1A: 2F0B           '/.'             PUSH.L  A3
  1C1C: A91F           '..'             _SelectWindow ; (theWindow:WindowPtr) 
  1C1E: 42A7           'B.'             CLR.L   -(A7)
  1C20: 486E FFF8      200FFF8          PEA     vma_1(A6)
  1C24: A991           '..'             _ModalDialog ; (filterProc:ProcPtr; VAR itemHit:INTEGER) 
  1C26: 0C47 4E21      '.GN!'           CMPI    #$4E21,D7
  1C2A: 57C0           'W.'             SEQ     D0
  1C2C: 4A00           'J.'             TST.B   D0
  1C2E: 672A           5001C5A          BEQ.S   lma_3
  1C30: 7203           'r.'             MOVEQ   #3,D1
  1C32: B26E FFF8      200FFF8          CMP.W   vma_1(A6),D1
  1C36: 5FC1           '_.'             SLE     D1
  1C38: C001           '..'             AND.B   D1,D0
  1C3A: 671E           5001C5A          BEQ.S   lma_3
  1C3C: 720E           'r.'             MOVEQ   #14,D1
  1C3E: B26E FFF8      200FFF8          CMP.W   vma_1(A6),D1
  1C42: 56C1           'V.'             SNE     D1
  1C44: C001           '..'             AND.B   D1,D0
  1C46: 6712           5001C5A          BEQ.S   lma_3
  1C48: 1B7C 0001 FE9F   -$161          MOVE.B  #1,glob169(A5)
  1C4E: 302E FFF8      200FFF8          MOVE    vma_1(A6),D0
  1C52: 5740           'W@'             SUBQ    #3,D0
  1C54: 3B40 FEA6        -$15A          MOVE    D0,glob172(A5)
  1C58: 600A           5001C64          BRA.S   lma_4
  1C5A: 7003           'p.'    lma_3    MOVEQ   #3,D0
  1C5C: B06E FFF8      200FFF8          CMP.W   vma_1(A6),D0
  1C60: 6602           5001C64          BNE.S   lma_4
  1C62: 5547           'UG'             SUBQ    #2,D7
  1C64: 2F0B           '/.'    lma_4    PUSH.L  A3
  1C66: A983           '..'             _DisposDialog ; (dlg:DialogPtr) 
  1C68: 5247           'RG'             ADDQ    #1,D7
  1C6A: 7002           'p.'    lma_5    MOVEQ   #2,D0
  1C6C: B06E FFF8      200FFF8          CMP.W   vma_1(A6),D0
  1C70: 57C0           'W.'             SEQ     D0
  1C72: 4A00           'J.'             TST.B   D0
  1C74: 6614           5001C8A          BNE.S   lma_6
  1C76: 4A86           'J.'             TST.L   D6
  1C78: 57C1           'W.'             SEQ     D1
  1C7A: 8001           '..'             OR.B    D1,D0
  1C7C: 660C           5001C8A          BNE.S   lma_6
  1C7E: 802D FE9F        -$161          OR.B    glob169(A5),D0
  1C82: 0240 0001      '.@..'           ANDI    #1,D0
  1C86: 6700 FF46      5001BCE          BEQ     lma_1
  1C8A: 102D FE9F        -$161 lma_6    MOVE.B  glob169(A5),D0
  1C8E: 6706           5001C96          BEQ.S   lma_7
  1C90: 4EAD 0142      1001440          JSR     proc82(A5)
  1C94: 601C           5001CB2          BRA.S   lma_8
  1C96: 206E 0008      2000008 lma_7    MOVEA.L param1(A6),A0
  1C9A: 2F28 FFFC      '/(..'           PUSH.L  -4(A0)
  1C9E: A91F           '..'             _SelectWindow ; (theWindow:WindowPtr) 
  1CA0: 2F2E 0008      2000008          PUSH.L  param1(A6)
  1CA4: 4EBA F4DA      5001180          JSR     proc273
  1CA8: 206E 0008      2000008          MOVEA.L param1(A6),A0
  1CAC: 2F28 FFFC      '/(..'           PUSH.L  -4(A0)
  1CB0: A981           '..'             _DrawDialog ; (dlg:DialogPtr) 
  1CB2: 4CDF 18C0      'L...'  lma_8    MOVEM.L (A7)+,D6-D7/A3-A4
  1CB6: 4E5E           'N^'             UNLK    A6
  1CB8: 2E9F           '..'             POP.L   (A7)
  1CBA: 4E75           'Nu'             RTS     

                                 ;-refs -  5/proc290   

  1CBC: 444C                   data201  DC.B    'DLOG'

  1CC0:                                 QUAL    proc291 ; b# =528  s#5  =proc291

                               vmb_1     VEQU  -16
                               vmb_2     VEQU  -8
                               vmb_3     VEQU  -4
                               param1    VEQU  8
  1CC0:                                 VEND    

                                 ;-refs -  1/proc114   

  1CC0: 4E56 FFEE      'NV..'  proc291  LINK    A6,#-$12
  1CC4: 48E7 0308      'H...'           MOVEM.L D6-D7/A4,-(A7)
  1CC8: 286E 0008      2000008          MOVEA.L param1(A6),A4
  1CCC: 4247           'BG'             CLR     D7
  1CCE: 6030           5001D00          BRA.S   lmb_4
  1CD0: 2F2C FFFC      '/,..'  lmb_1    PUSH.L  -4(A4)
  1CD4: 3007           '0.'             MOVE    D7,D0
  1CD6: D07C 001A      '.|..'           ADD     #26,D0
  1CDA: 3F00           '?.'             PUSH    D0
  1CDC: 486E FFFC      200FFFC          PEA     vmb_3(A6)
  1CE0: 486E FFF8      200FFF8          PEA     vmb_2(A6)
  1CE4: 486E FFF0      200FFF0          PEA     vmb_1(A6)
  1CE8: A98D           '..'             _GetDItem ; (dlg:DialogPtr; itemNo:INTEGER; VAR kind:INTEGER; VAR item:Handle; VAR box:Rect) 
  1CEA: BE6C FFE2      '.l..'           CMP.W   -30(A4),D7
  1CEE: 6604           5001CF4          BNE.S   lmb_2
  1CF0: 7C01           '|.'             MOVEQ   #1,D6
  1CF2: 6002           5001CF6          BRA.S   lmb_3
  1CF4: 4246           'BF'    lmb_2    CLR     D6
  1CF6: 2F2E FFF8      200FFF8 lmb_3    PUSH.L  vmb_2(A6)
  1CFA: 3F06           '?.'             PUSH    D6
  1CFC: A963           '.c'             _SetCtlValue ; (Ctl:CtlHdl; theValue:INTEGER) 
  1CFE: 5247           'RG'             ADDQ    #1,D7
  1D00: 7002           'p.'    lmb_4    MOVEQ   #2,D0
  1D02: B047           '.G'             CMP.W   D7,D0
  1D04: 6CCA           5001CD0          BGE     lmb_1
  1D06: 4CDF 10C0      'L...'           MOVEM.L (A7)+,D6-D7/A4
  1D0A: 4E5E           'N^'             UNLK    A6
  1D0C: 2E9F           '..'             POP.L   (A7)
  1D0E: 4E75           'Nu'             RTS     

  1D10:                                 QUAL    proc292 ; b# =529  s#5  =proc292

                                 ;-refs -  1/proc114   

  1D10: 4E56 0000      'NV..'  proc292  LINK    A6,#0
  1D14: 2F0C           '/.'             PUSH.L  A4
  1D16: 102D FCA7        -$359          MOVE.B  glob129(A5),D0
  1D1A: 6662           5001D7E          BNE.S   lmc_1
  1D1C: 486D FCAE        -$352          PEA     glob133(A5)
  1D20: 4267           'Bg'             CLR     -(A7)
  1D22: 4EBA E478      500019C          JSR     proc249
  1D26: 486D FCCA        -$336          PEA     glob135(A5)
  1D2A: 3F3C 0001      '?<..'           PUSH    #1
  1D2E: 4EBA E46C      500019C          JSR     proc249
  1D32: 486D FCBC        -$344          PEA     glob134(A5)
  1D36: 3F3C 0002      '?<..'           PUSH    #2
  1D3A: 4EBA E460      500019C          JSR     proc249
  1D3E: 42A7           'B.'             CLR.L   -(A7)
  1D40: 700E           'p.'             MOVEQ   #14,D0
  1D42: 2F00           '/.'             PUSH.L  D0
  1D44: 4EAD 007A      1000D3C          JSR     NewPtr(A5)
  1D48: 2B5F FCD8        -$328          POP.L   glob136(A5)
  1D4C: 286D FCD8        -$328          MOVEA.L glob136(A5),A4
  1D50: 397C 0001 0004 '9|....'         MOVE    #1,4(A4)
  1D56: 41FA F204      5000F5C          LEA     proc271,A0
  1D5A: 2948 0006      ')H..'           MOVE.L  A0,6(A4)
  1D5E: 397C 0005 000A '9|....'         MOVE    #5,10(A4)
  1D64: 426C 000C      'Bl..'           CLR     12(A4)
  1D68: 4267           'Bg'             CLR     -(A7)
  1D6A: 2F2D FCD8        -$328          PUSH.L  glob136(A5)
  1D6E: 4EAD 00CA      1000DE8          JSR     proc50(A5)
  1D72: 4A5F           'J_'             TST     (A7)+
  1D74: 6708           5001D7E          BEQ.S   lmc_1
  1D76: 487A 000E      5001D86          PEA     data202     ; 'FLER'
  1D7A: 4EAD 0172      1001832          JSR     proc92(A5)
  1D7E: 285F           '(_'    lmc_1    POP.L   A4
  1D80: 4E5E           'N^'             UNLK    A6
  1D82: 2E9F           '..'             POP.L   (A7)
  1D84: 4E75           'Nu'             RTS     

                                 ;-refs -  5/proc292   

  1D86: 0446 4C45 5200         data202  STR     'FLER'

  1D8C:                                 QUAL    proc293 ; b# =531  s#5  =proc293

                                 ;-refs -  1/proc114    5/proc294    5/proc299   

  1D8C: 4E56 0000      'NV..'  proc293  LINK    A6,#0
  1D90: 102D FCA7        -$359          MOVE.B  glob129(A5),D0
  1D94: 6636           5001DCC          BNE.S   lmd_2
  1D96: 4267           'Bg'             CLR     -(A7)
  1D98: 2F2D FCD8        -$328          PUSH.L  glob136(A5)
  1D9C: 4EAD 00D2      1000DF2          JSR     proc51(A5)
  1DA0: 4A5F           'J_'             TST     (A7)+
  1DA2: 6708           5001DAC          BEQ.S   lmd_1
  1DA4: 487A 002C      5001DD2          PEA     data203     ; 'FLER'
  1DA8: 4EAD 0172      1001832          JSR     proc92(A5)
  1DAC: 2F2D FCD8        -$328 lmd_1    PUSH.L  glob136(A5)
  1DB0: 4EAD 0082      1000D48          JSR     DisposPtr(A5)
  1DB4: 486D FCAE        -$352          PEA     glob133(A5)
  1DB8: 4EBA E462      500021C          JSR     proc250
  1DBC: 486D FCCA        -$336          PEA     glob135(A5)
  1DC0: 4EBA E45A      500021C          JSR     proc250
  1DC4: 486D FCBC        -$344          PEA     glob134(A5)
  1DC8: 4EBA E452      500021C          JSR     proc250
  1DCC: 4E5E           'N^'    lmd_2    UNLK    A6
  1DCE: 2E9F           '..'             POP.L   (A7)
  1DD0: 4E75           'Nu'             RTS     

                                 ;-refs -  5/proc293   

  1DD2: 0446 4C45 5200         data203  STR     'FLER'

  1DD8:                                 QUAL    proc294 ; b# =533  s#5  =proc294

                               vme_1     VEQU  -126
                               vme_2     VEQU  -112
                               vme_3     VEQU  -98
                               vme_4     VEQU  -84
                               vme_5     VEQU  -70
                               vme_6     VEQU  -56
                               vme_7     VEQU  -42
                               vme_8     VEQU  -28
                               vme_9     VEQU  -14
                               param1    VEQU  8
  1DD8:                                 VEND    

                                 ;-refs -  1/proc114   

  1DD8: 4E56 FF80      'NV..'  proc294  LINK    A6,#-$80
  1DDC: 2F07           '/.'             PUSH.L  D7
  1DDE: 102D FD37        -$2C9          MOVE.B  glob151(A5),D0
  1DE2: 670C           5001DF0          BEQ.S   lme_1
  1DE4: 2F2E 0008      2000008          PUSH.L  param1(A6)
  1DE8: 4EBA FFA2      5001D8C          JSR     proc293
  1DEC: 6000 0170      5001F5E          BRA     lme_9
  1DF0: 7000           'p.'    lme_1    MOVEQ   #0,D0
  1DF2: 2B40 FF8E         -$72          MOVE.L  D0,glob248(A5)
  1DF6: 422D FF93         -$6D          CLR.B   glob249(A5)
  1DFA: 422D FF8B         -$75          CLR.B   glob246(A5)
  1DFE: 486E FFF2      200FFF2          PEA     vme_9(A6)
  1E02: 3F3C 0008      '?<..'           PUSH    #8
  1E06: 4EBA E394      500019C          JSR     proc249
  1E0A: 486E FFE4      200FFE4          PEA     vme_8(A6)
  1E0E: 3F3C 0006      '?<..'           PUSH    #6
  1E12: 4EBA E388      500019C          JSR     proc249
  1E16: 486E FFD6      200FFD6          PEA     vme_7(A6)
  1E1A: 3F3C 0007      '?<..'           PUSH    #7
  1E1E: 4EBA E37C      500019C          JSR     proc249
  1E22: 486E FFC8      200FFC8          PEA     vme_6(A6)
  1E26: 3F3C 0003      '?<..'           PUSH    #3
  1E2A: 4EBA E370      500019C          JSR     proc249
  1E2E: 486E FFBA      200FFBA          PEA     vme_5(A6)
  1E32: 3F3C 0004      '?<..'           PUSH    #4
  1E36: 4EBA E364      500019C          JSR     proc249
  1E3A: 486E FFAC      200FFAC          PEA     vme_4(A6)
  1E3E: 3F3C 0005      '?<..'           PUSH    #5
  1E42: 4EBA E358      500019C          JSR     proc249
  1E46: 102D FCAD        -$353          MOVE.B  glob132(A5),D0
  1E4A: 6724           5001E70          BEQ.S   lme_2
  1E4C: 486E FF9E      200FF9E          PEA     vme_3(A6)
  1E50: 3F3C 07D0      '?<..'           PUSH    #$7D0
  1E54: 4EBA E346      500019C          JSR     proc249
  1E58: 486E FF90      200FF90          PEA     vme_2(A6)
  1E5C: 3F3C 07D1      '?<..'           PUSH    #$7D1
  1E60: 4EBA E33A      500019C          JSR     proc249
  1E64: 486E FF82      200FF82          PEA     vme_1(A6)
  1E68: 3F3C 07D2      '?<..'           PUSH    #$7D2
  1E6C: 4EBA E32E      500019C          JSR     proc249
  1E70: 2F2E 0008      2000008 lme_2    PUSH.L  param1(A6)
  1E74: 4EBA FF16      5001D8C          JSR     proc293
  1E78: 2F2D FFA0         -$60          PUSH.L  glob253(A5)
  1E7C: 4EAD 0342      3000900          JSR     proc161(A5)
  1E80: 102D FCA7        -$359          MOVE.B  glob129(A5),D0
  1E84: 6708           5001E8E          BEQ.S   lme_3
  1E86: 486D FFC6         -$3A          PEA     glob260(A5)
  1E8A: 4EAD 01FA      10025B2          JSR     proc111(A5)
  1E8E: 102D FFA5         -$5B lme_3    MOVE.B  glob254(A5),D0
  1E92: 6716           5001EAA          BEQ.S   lme_4
  1E94: 486D FFC6         -$3A          PEA     glob260(A5)
  1E98: 486D FFB8         -$48          PEA     glob258(A5)
  1E9C: 486D FA72        -$58E          PEA     glob94(A5)
  1EA0: 486D FA72        -$58E          PEA     glob94(A5)
  1EA4: 4267           'Bg'             CLR     -(A7)
  1EA6: 42A7           'B.'             CLR.L   -(A7)
  1EA8: A8EC           '..'             _CopyBits ; (srcBits,dstBits:BitMap; srcRect,dstRect:Rect; mode:INTEGER{|XferMode}; maskRgn:RgnHandle) 
  1EAA: 4EAD 0152      1001664 lme_4    JSR     proc86(A5)
  1EAE: 4247           'BG'             CLR     D7
  1EB0: 6054           5001F06          BRA.S   lme_7
  1EB2: 486E FFAC      200FFAC lme_5    PEA     vme_4(A6)
  1EB6: 4EBA E424      50002DC          JSR     proc252
  1EBA: 486E FFF2      200FFF2          PEA     vme_9(A6)
  1EBE: 4EBA E41C      50002DC          JSR     proc252
  1EC2: 102D FCAD        -$353          MOVE.B  glob132(A5),D0
  1EC6: 6718           5001EE0          BEQ.S   lme_6
  1EC8: 486E FF9E      200FF9E          PEA     vme_3(A6)
  1ECC: 4EBA E40E      50002DC          JSR     proc252
  1ED0: 486E FF90      200FF90          PEA     vme_2(A6)
  1ED4: 4EBA E406      50002DC          JSR     proc252
  1ED8: 486E FF82      200FF82          PEA     vme_1(A6)
  1EDC: 4EBA E3FE      50002DC          JSR     proc252
  1EE0: 486E FFE4      200FFE4 lme_6    PEA     vme_8(A6)
  1EE4: 4EBA E3F6      50002DC          JSR     proc252
  1EE8: 486E FFD6      200FFD6          PEA     vme_7(A6)
  1EEC: 4EBA E3EE      50002DC          JSR     proc252
  1EF0: 486E FFBA      200FFBA          PEA     vme_5(A6)
  1EF4: 4EBA E3E6      50002DC          JSR     proc252
  1EF8: 486E FFC8      200FFC8          PEA     vme_6(A6)
  1EFC: 4EBA E3DE      50002DC          JSR     proc252
  1F00: 4EAD 0332      3000826          JSR     proc158(A5)
  1F04: 5247           'RG'             ADDQ    #1,D7
  1F06: 7049           'pI'    lme_7    MOVEQ   #73,D0
  1F08: B047           '.G'             CMP.W   D7,D0
  1F0A: 6CA6           5001EB2          BGE     lme_5
  1F0C: 486E FFF2      200FFF2          PEA     vme_9(A6)
  1F10: 4EBA E30A      500021C          JSR     proc250
  1F14: 486E FFE4      200FFE4          PEA     vme_8(A6)
  1F18: 4EBA E302      500021C          JSR     proc250
  1F1C: 486E FFD6      200FFD6          PEA     vme_7(A6)
  1F20: 4EBA E2FA      500021C          JSR     proc250
  1F24: 486E FFC8      200FFC8          PEA     vme_6(A6)
  1F28: 4EBA E2F2      500021C          JSR     proc250
  1F2C: 486E FFBA      200FFBA          PEA     vme_5(A6)
  1F30: 4EBA E2EA      500021C          JSR     proc250
  1F34: 486E FFAC      200FFAC          PEA     vme_4(A6)
  1F38: 4EBA E2E2      500021C          JSR     proc250
  1F3C: 102D FCAD        -$353          MOVE.B  glob132(A5),D0
  1F40: 6718           5001F5A          BEQ.S   lme_8
  1F42: 486E FF9E      200FF9E          PEA     vme_3(A6)
  1F46: 4EBA E2D4      500021C          JSR     proc250
  1F4A: 486E FF90      200FF90          PEA     vme_2(A6)
  1F4E: 4EBA E2CC      500021C          JSR     proc250
  1F52: 486E FF82      200FF82          PEA     vme_1(A6)
  1F56: 4EBA E2C4      500021C          JSR     proc250
  1F5A: 4EAD 015A      10016A0 lme_8    JSR     proc87(A5)
  1F5E: 4EAD 005A      1000404 lme_9    JSR     proc12(A5)
  1F62: 4EBA E596      50004FA          JSR     proc254
  1F66: 3F3C 4268      '?<Bh'           PUSH    #$4268
  1F6A: 4EAD 01DA      1002304          JSR     proc107(A5)
  1F6E: 2E1F           '..'             POP.L   D7
  1F70: 4E5E           'N^'             UNLK    A6
  1F72: 2E9F           '..'             POP.L   (A7)
  1F74: 4E75           'Nu'             RTS     

  1F76:                                 QUAL    proc295 ; b# =534  s#5  =proc295

                               vmf_1     VEQU  -70
                               vmf_2     VEQU  -36
                               vmf_3     VEQU  -35
                               vmf_4     VEQU  -32
                               vmf_5     VEQU  -31
                               param3    VEQU  12
                               param2    VEQU  14
                               param1    VEQU  16
  1F76:                                 VEND    

                                 ;-refs -  5/proc296    5/proc297   

  1F76: 4E56 FFBA      'NV..'  proc295  LINK    A6,#-$46
  1F7A: 2F07           '/.'             PUSH.L  D7
  1F7C: 3E2E 000C      200000C          MOVE    param3(A6),D7
  1F80: 3D7C 0120 FFDC 200FFDC          MOVE    #$120,vmf_2(A6)
  1F86: 3D7C 0120 FFE0 200FFE0          MOVE    #$120,vmf_4(A6)
  1F8C: 3007           '0.'             MOVE    D7,D0
  1F8E: 48C0           'H.'             EXT.L   D0
  1F90: 81FC 000A      '....'           DIVS    #10,D0
  1F94: 4840           'H@'             SWAP    D0
  1F96: 4A40           'J@'             TST     D0
  1F98: D07C 0030      '.|.0'           ADD     #48,D0
  1F9C: 1D40 FFE1      200FFE1          MOVE.B  D0,vmf_5(A6)
  1FA0: 3007           '0.'             MOVE    D7,D0
  1FA2: 48C0           'H.'             EXT.L   D0
  1FA4: 81FC 000A      '....'           DIVS    #10,D0
  1FA8: 3E00           '>.'             MOVE    D0,D7
  1FAA: 4A47           'JG'    lmf_1    TST     D7
  1FAC: 6F44           5001FF2          BLE.S   lmf_3
  1FAE: 3007           '0.'             MOVE    D7,D0
  1FB0: 48C0           'H.'             EXT.L   D0
  1FB2: 81FC 000A      '....'           DIVS    #10,D0
  1FB6: 4840           'H@'             SWAP    D0
  1FB8: 4A40           'J@'             TST     D0
  1FBA: D07C 0030      '.|.0'           ADD     #48,D0
  1FBE: 1D40 FFDD      200FFDD          MOVE.B  D0,vmf_3(A6)
  1FC2: 486E FFDC      200FFDC          PEA     vmf_2(A6)
  1FC6: 486E FFE0      200FFE0          PEA     vmf_4(A6)
  1FCA: 486E FFBA      200FFBA          PEA     vmf_1(A6)
  1FCE: 3F3C 0002      '?<..'           PUSH    #2
  1FD2: 4EAD 011A      100129E          JSR     proc76(A5)
  1FD6: 41EE FFE0      200FFE0          LEA     vmf_4(A6),A0
  1FDA: 43EE FFBA      200FFBA          LEA     vmf_1(A6),A1
  1FDE: 7007           'p.'             MOVEQ   #7,D0
  1FE0: 20D9           ' .'    lmf_2    MOVE.L  (A1)+,(A0)+
  1FE2: 51C8 FFFC      5001FE0          DBRA    D0,lmf_2
  1FE6: 3007           '0.'             MOVE    D7,D0
  1FE8: 48C0           'H.'             EXT.L   D0
  1FEA: 81FC 000A      '....'           DIVS    #10,D0
  1FEE: 3E00           '>.'             MOVE    D0,D7
  1FF0: 60B8           5001FAA          BRA     lmf_1
  1FF2: 4267           'Bg'    lmf_3    CLR     -(A7)
  1FF4: 486E FFE0      200FFE0          PEA     vmf_4(A6)
  1FF8: A88C           '..'             _StringWidth ; (s:Str255):INTEGER 
  1FFA: 302E 0010      2000010          MOVE    param1(A6),D0
  1FFE: 905F           '._'             SUB     (A7)+,D0
  2000: 3F00           '?.'             PUSH    D0
  2002: 3F2E 000E      200000E          PUSH    param2(A6)
  2006: A893           '..'             _MoveTo ; (h,v:INTEGER) 
  2008: 486E FFE0      200FFE0          PEA     vmf_4(A6)
  200C: A884           '..'             _DrawString ; (s:Str255) 
  200E: 2E1F           '..'             POP.L   D7
  2010: 4E5E           'N^'             UNLK    A6
  2012: 205F           ' _'             POP.L   A0
  2014: DEFC 000A      '....'           ADDA.W  #10,A7
  2018: 4ED0           'N.'             JMP     (A0)

  201A:                                 QUAL    proc296 ; b# =535  s#5  =proc296

                               param3    VEQU  8
                               param2    VEQU  12
                               param1    VEQU  14
  201A:                                 VEND    

                                 ;-refs -  5/proc297   

  201A: 4E56 0000      'NV..'  proc296  LINK    A6,#0
  201E: 302E 000C      200000C          MOVE    param2(A6),D0
  2022: 48C0           'H.'             EXT.L   D0
  2024: 2F00           '/.'             PUSH.L  D0
  2026: 4EAD 048A      300415A          JSR     proc218(A5)
  202A: 2F2E 000E      200000E          PUSH.L  param1(A6)
  202E: 3F2E 000C      200000C          PUSH    param2(A6)
  2032: 2F2E 0008      2000008          PUSH.L  param3(A6)
  2036: 4EBA FF3E      5001F76          JSR     proc295
  203A: 4E5E           'N^'             UNLK    A6
  203C: 205F           ' _'             POP.L   A0
  203E: DEFC 000A      '....'           ADDA.W  #10,A7
  2042: 4ED0           'N.'             JMP     (A0)

  2044:                                 QUAL    proc297 ; b# =536  s#5  =proc297

                               vmh_1     VEQU  -6
                               param1    VEQU  8
  2044:                                 VEND    

                                 ;-refs -  5/proc298   

  2044: 4E56 FFFA      'NV..'  proc297  LINK    A6,#-6
  2048: 48E7 0108      'H...'           MOVEM.L D7/A4,-(A7)
  204C: 3F3C 0003      '?<..'           PUSH    #3
  2050: A887           '..'             _TextFont ; (font:FontCode) 
  2052: 3F3A 0184      50021D8          PUSH    data204
  2056: A888           '..'             _TextFace ; (face:Style) 
  2058: 3F3C 0009      '?<..'           PUSH    #9
  205C: A88A           '..'             _TextSize ; (size:INTEGER) 
  205E: 49EE FFFA      200FFFA          LEA     vmh_1(A6),A4
  2062: 4254           'BT'             CLR     (A4)
  2064: 396D FF34 0002    -$CC          MOVE    glob221(A5),2(A4)
  206A: 42A7           'B.'             CLR.L   -(A7)
  206C: 2F2E FFFA      200FFFA          PUSH.L  vmh_1(A6)
  2070: 2F3C 0000 0100 '/<....'         PUSH.L  #$100
  2076: 4EAD 0112      10011EA          JSR     %I_DIV4(A5)
  207A: 700F           'p.'             MOVEQ   #15,D0
  207C: 2F00           '/.'             PUSH.L  D0
  207E: A858           '.X'             _BitAnd ; (long1,long2:HLongInt):HLongInt 
  2080: 42A7           'B.'             CLR.L   -(A7)
  2082: 2F2E FFFA      200FFFA          PUSH.L  vmh_1(A6)
  2086: 2F3C 0000 1000 '/<....'         PUSH.L  #$1000
  208C: 4EAD 0112      10011EA          JSR     %I_DIV4(A5)
  2090: 700F           'p.'             MOVEQ   #15,D0
  2092: 2F00           '/.'             PUSH.L  D0
  2094: A858           '.X'             _BitAnd ; (long1,long2:HLongInt):HLongInt 
  2096: 700A           'p.'             MOVEQ   #10,D0
  2098: 2F00           '/.'             PUSH.L  D0
  209A: 4EAD 010A      10011B6          JSR     proc72(A5)
  209E: 201F           ' .'             POP.L   D0
  20A0: D09F           '..'             ADD.L   (A7)+,D0
  20A2: 3E00           '>.'             MOVE    D0,D7
  20A4: 2F3C 0046 0060 '/<.F.`'         PUSH.L  #$460060
  20AA: 3F07           '?.'             PUSH    D7
  20AC: 2F2E 0008      2000008          PUSH.L  param1(A6)
  20B0: 4EBA FEC4      5001F76          JSR     proc295
  20B4: 2F3C 0055 0060 '/<.U.`'         PUSH.L  #$550060
  20BA: 3F2D FF24         -$DC          PUSH    glob215(A5)
  20BE: 2F2E 0008      2000008          PUSH.L  param1(A6)
  20C2: 4EBA FEB2      5001F76          JSR     proc295
  20C6: 2F3C 0064 0060 '/<.d.`'         PUSH.L  #$640060
  20CC: 3F2D FF20         -$E0          PUSH    glob213(A5)
  20D0: 2F2E 0008      2000008          PUSH.L  param1(A6)
  20D4: 4EBA FEA0      5001F76          JSR     proc295
  20D8: 2F3C 0075 0060 '/<.u.`'         PUSH.L  #$750060
  20DE: 3F2D FF28         -$D8          PUSH    glob217(A5)
  20E2: 2F2E 0008      2000008          PUSH.L  param1(A6)
  20E6: 4EBA FE8E      5001F76          JSR     proc295
  20EA: 2F3C 0087 0060 '/<...`'         PUSH.L  #$870060
  20F0: 4267           'Bg'             CLR     -(A7)
  20F2: 2F2D FF2A         -$D6          PUSH.L  glob218(A5)
  20F6: A86A           '.j'             _HiWord ; (x:HLongInt):INTEGER 
  20F8: 2F2E 0008      2000008          PUSH.L  param1(A6)
  20FC: 4EBA FE78      5001F76          JSR     proc295
  2100: 2F3C 0046 0099 '/<.F..'         PUSH.L  #$460099
  2106: 3F3C 000A      '?<..'           PUSH    #10
  210A: 2F2E 0008      2000008          PUSH.L  param1(A6)
  210E: 4EBA FE66      5001F76          JSR     proc295
  2112: 2F3C 0055 0099 '/<.U..'         PUSH.L  #$550099
  2118: 3F3C 0014      '?<..'           PUSH    #20
  211C: 2F2E 0008      2000008          PUSH.L  param1(A6)
  2120: 4EBA FE54      5001F76          JSR     proc295
  2124: 2F3C 0064 0099 '/<.d..'         PUSH.L  #$640099
  212A: 3F3C 0032      '?<.2'           PUSH    #50
  212E: 2F2E 0008      2000008          PUSH.L  param1(A6)
  2132: 4EBA FE42      5001F76          JSR     proc295
  2136: 2F3C 0075 0099 '/<.u..'         PUSH.L  #$750099
  213C: 3F3C 0032      '?<.2'           PUSH    #50
  2140: 2F2E 0008      2000008          PUSH.L  param1(A6)
  2144: 4EBA FE30      5001F76          JSR     proc295
  2148: 2F3C 0087 0099 '/<....'         PUSH.L  #$870099
  214E: 3F3C 0014      '?<..'           PUSH    #20
  2152: 2F2E 0008      2000008          PUSH.L  param1(A6)
  2156: 4EBA FE1E      5001F76          JSR     proc295
  215A: 2F3C 0046 00DE '/<.F..'         PUSH.L  #$4600DE
  2160: 3007           '0.'             MOVE    D7,D0
  2162: C1FC 000A      '....'           MULS    #10,D0
  2166: 3F00           '?.'             PUSH    D0
  2168: 2F2E 0008      2000008          PUSH.L  param1(A6)
  216C: 4EBA FEAC      500201A          JSR     proc296
  2170: 2F3C 0055 00DE '/<.U..'         PUSH.L  #$5500DE
  2176: 7014           'p.'             MOVEQ   #20,D0
  2178: C1ED FF24         -$DC          MULS    glob215(A5),D0
  217C: 3F00           '?.'             PUSH    D0
  217E: 2F2E 0008      2000008          PUSH.L  param1(A6)
  2182: 4EBA FE96      500201A          JSR     proc296
  2186: 2F3C 0064 00DE '/<.d..'         PUSH.L  #$6400DE
  218C: 7032           'p2'             MOVEQ   #50,D0
  218E: C1ED FF20         -$E0          MULS    glob213(A5),D0
  2192: 3F00           '?.'             PUSH    D0
  2194: 2F2E 0008      2000008          PUSH.L  param1(A6)
  2198: 4EBA FE80      500201A          JSR     proc296
  219C: 2F3C 0075 00DE '/<.u..'         PUSH.L  #$7500DE
  21A2: 7032           'p2'             MOVEQ   #50,D0
  21A4: C1ED FF28         -$D8          MULS    glob217(A5),D0
  21A8: 3F00           '?.'             PUSH    D0
  21AA: 2F2E 0008      2000008          PUSH.L  param1(A6)
  21AE: 4EBA FE6A      500201A          JSR     proc296
  21B2: 2F3C 0087 00DE '/<....'         PUSH.L  #$8700DE
  21B8: 4267           'Bg'             CLR     -(A7)
  21BA: 2F2D FF2A         -$D6          PUSH.L  glob218(A5)
  21BE: A86A           '.j'             _HiWord ; (x:HLongInt):INTEGER 
  21C0: 7014           'p.'             MOVEQ   #20,D0
  21C2: C1DF           '..'             MULS    (A7)+,D0
  21C4: 3F00           '?.'             PUSH    D0
  21C6: 2F2E 0008      2000008          PUSH.L  param1(A6)
  21CA: 4EBA FE4E      500201A          JSR     proc296
  21CE: 4CDF 1080      'L...'           MOVEM.L (A7)+,D7/A4
  21D2: 4E5E           'N^'             UNLK    A6
  21D4: 2E9F           '..'             POP.L   (A7)
  21D6: 4E75           'Nu'             RTS     

                                 ;-refs -  5/proc297   

  21D8: '..'                   data204  DC.W    0

  21DA:                                 QUAL    proc298 ; b# =538  s#5  =proc298

                               vmi_1     VEQU  -10
                               vmi_2     VEQU  -6
                               param1    VEQU  8
  21DA:                                 VEND    

                                 ;-refs -  5/proc299   

  21DA: 4E56 FFF6      'NV..'  proc298  LINK    A6,#-$A
  21DE: 48E7 0018      'H...'           MOVEM.L A3-A4,-(A7)
  21E2: 286E 0008      2000008          MOVEA.L param1(A6),A4
  21E6: 286C 0008      '(l..'           MOVEA.L 8(A4),A4
  21EA: 7002           'p.'             MOVEQ   #2,D0
  21EC: B06D FEA2        -$15E          CMP.W   glob170(A5),D0
  21F0: 6F10           5002202          BLE.S   lmi_1
  21F2: 42A7           'B.'             CLR.L   -(A7)
  21F4: 3F3C 00AE      '?<..'           PUSH    #$AE
  21F8: 42A7           'B.'             CLR.L   -(A7)
  21FA: 42A7           'B.'             CLR.L   -(A7)
  21FC: A97C           '.|'             _GetNewDialog ; (DlgID:INTEGER; wStorage:Ptr; behind:WindowPtr):DialogPtr 
  21FE: 265F           '&_'             POP.L   A3
  2200: 600E           5002210          BRA.S   lmi_2
  2202: 42A7           'B.'    lmi_1    CLR.L   -(A7)
  2204: 3F3C 00AF      '?<..'           PUSH    #$AF
  2208: 42A7           'B.'             CLR.L   -(A7)
  220A: 42A7           'B.'             CLR.L   -(A7)
  220C: A97C           '.|'             _GetNewDialog ; (DlgID:INTEGER; wStorage:Ptr; behind:WindowPtr):DialogPtr 
  220E: 265F           '&_'             POP.L   A3
  2210: 102D FCA7        -$359 lmi_2    MOVE.B  glob129(A5),D0
  2214: 672E           5002244          BEQ.S   lmi_3
  2216: 206D FCA2        -$35E          MOVEA.L glob128(A5),A0
  221A: 5088           'P.'             ADDQ.L  #8,A0
  221C: 2D48 FFF6      200FFF6          MOVE.L  A0,vmi_1(A6)
  2220: 2F0B           '/.'             PUSH.L  A3
  2222: 206E FFF6      200FFF6          MOVEA.L vmi_1(A6),A0
  2226: 3028 0002      '0(..'           MOVE    2(A0),D0
  222A: 4440           'D@'             NEG     D0
  222C: 906B 000A      '.k..'           SUB     10(A3),D0
  2230: 3F00           '?.'             PUSH    D0
  2232: 206E FFF6      200FFF6          MOVEA.L vmi_1(A6),A0
  2236: 3010           '0.'             MOVE    (A0),D0
  2238: 4440           'D@'             NEG     D0
  223A: 906B 0008      '.k..'           SUB     8(A3),D0
  223E: 3F00           '?.'             PUSH    D0
  2240: 4267           'Bg'             CLR     -(A7)
  2242: A91B           '..'             _MoveWindow ; (theWindow:WindowPtr; h,v:INTEGER; BringToFront:BOOLEAN) 
  2244: 2F0B           '/.'    lmi_3    PUSH.L  A3
  2246: A915           '..'             _ShowWindow ; (theWindow:WindowPtr) 
  2248: 2F0B           '/.'             PUSH.L  A3
  224A: A91F           '..'             _SelectWindow ; (theWindow:WindowPtr) 
  224C: 2F0B           '/.'             PUSH.L  A3
  224E: A981           '..'             _DrawDialog ; (dlg:DialogPtr) 
  2250: 2F0B           '/.'             PUSH.L  A3
  2252: A873           '.s'             _SetPort ; (port:GrafPtr) 
  2254: 2F0E           '/.'             PUSH.L  A6
  2256: 4EBA FDEC      5002044          JSR     proc297
  225A: A853           '.S'             _ShowCursor  
  225C: 42A7           'B.'             CLR.L   -(A7)
  225E: 486E FFFA      200FFFA          PEA     vmi_2(A6)
  2262: A991           '..'             _ModalDialog ; (filterProc:ProcPtr; VAR itemHit:INTEGER) 
  2264: A852           '.R'             _HideCursor  
  2266: 2F0B           '/.'             PUSH.L  A3
  2268: A983           '..'             _DisposDialog ; (dlg:DialogPtr) 
  226A: 2F2C FFFC      '/,..'           PUSH.L  -4(A4)
  226E: A91F           '..'             _SelectWindow ; (theWindow:WindowPtr) 
  2270: 206E 0008      2000008          MOVEA.L param1(A6),A0
  2274: 2F28 0008      '/(..'           PUSH.L  8(A0)
  2278: 4EBA EF06      5001180          JSR     proc273
  227C: 2F2C FFFC      '/,..'           PUSH.L  -4(A4)
  2280: A981           '..'             _DrawDialog ; (dlg:DialogPtr) 
  2282: 7002           'p.'             MOVEQ   #2,D0
  2284: B06D FEA2        -$15E          CMP.W   glob170(A5),D0
  2288: 6E14           500229E          BGT.S   lmi_4
  228A: 2F3C 0007 A120 '/<... '         PUSH.L  #$7A120
  2290: 4EAD 048A      300415A          JSR     proc218(A5)
  2294: 2F3C 0007 A120 '/<... '         PUSH.L  #$7A120
  229A: 4EAD 048A      300415A          JSR     proc218(A5)
  229E: 4EAD 0482      30040B2 lmi_4    JSR     proc215(A5)
  22A2: 4CDF 1800      'L...'           MOVEM.L (A7)+,A3-A4
  22A6: 4E5E           'N^'             UNLK    A6
  22A8: 2E9F           '..'             POP.L   (A7)
  22AA: 4E75           'Nu'             RTS     

  22AC:                                 QUAL    proc299 ; b# =539  s#5  =proc299

                               vmj_1     VEQU  -210
                               vmj_2     VEQU  -196
                               vmj_3     VEQU  -182
                               vmj_4     VEQU  -168
                               vmj_5     VEQU  -154
                               vmj_6     VEQU  -140
                               vmj_7     VEQU  -126
                               vmj_8     VEQU  -112
                               vmj_9     VEQU  -98
                               vmj_10    VEQU  -84
                               vmj_11    VEQU  -70
                               vmj_12    VEQU  -56
                               vmj_13    VEQU  -42
                               vmj_14    VEQU  -28
                               vmj_15    VEQU  -14
                               param1    VEQU  8
  22AC:                                 VEND    

                                 ;-refs -  1/proc114   

  22AC: 4E56 FF2C      'NV.,'  proc299  LINK    A6,#-$D4
  22B0: 2F07           '/.'             PUSH.L  D7
  22B2: 7000           'p.'             MOVEQ   #0,D0
  22B4: 2B40 FF8E         -$72          MOVE.L  D0,glob248(A5)
  22B8: 422D FF93         -$6D          CLR.B   glob249(A5)
  22BC: 422D FF8B         -$75          CLR.B   glob246(A5)
  22C0: 7002           'p.'             MOVEQ   #2,D0
  22C2: B06D FEA2        -$15E          CMP.W   glob170(A5),D0
  22C6: 6F08           50022D0          BLE.S   lmj_1
  22C8: 3F3C 00AE      '?<..'           PUSH    #$AE
  22CC: A979           '.y'             _CouldDialog ; (DlgID:INTEGER) 
  22CE: 6006           50022D6          BRA.S   lmj_2
  22D0: 3F3C 00AF      '?<..'  lmj_1    PUSH    #$AF
  22D4: A979           '.y'             _CouldDialog ; (DlgID:INTEGER) 
  22D6: 486E FFF2      200FFF2 lmj_2    PEA     vmj_15(A6)
  22DA: 3F3C 006C      '?<.l'           PUSH    #$6C
  22DE: 4EBA DEBC      500019C          JSR     proc249
  22E2: 486E FFE4      200FFE4          PEA     vmj_14(A6)
  22E6: 3F3C 006A      '?<.j'           PUSH    #$6A
  22EA: 4EBA DEB0      500019C          JSR     proc249
  22EE: 486E FFD6      200FFD6          PEA     vmj_13(A6)
  22F2: 3F3C 006B      '?<.k'           PUSH    #$6B
  22F6: 4EBA DEA4      500019C          JSR     proc249
  22FA: 486E FFC8      200FFC8          PEA     vmj_12(A6)
  22FE: 3F3C 0067      '?<.g'           PUSH    #$67
  2302: 4EBA DE98      500019C          JSR     proc249
  2306: 486E FFBA      200FFBA          PEA     vmj_11(A6)
  230A: 3F3C 0068      '?<.h'           PUSH    #$68
  230E: 4EBA DE8C      500019C          JSR     proc249
  2312: 486E FFAC      200FFAC          PEA     vmj_10(A6)
  2316: 3F3C 0069      '?<.i'           PUSH    #$69
  231A: 4EBA DE80      500019C          JSR     proc249
  231E: 102D FCAD        -$353          MOVE.B  glob132(A5),D0
  2322: 670C           5002330          BEQ.S   lmj_3
  2324: 486E FF9E      200FF9E          PEA     vmj_9(A6)
  2328: 3F3C 07D3      '?<..'           PUSH    #$7D3
  232C: 4EBA DE6E      500019C          JSR     proc249
  2330: 7002           'p.'    lmj_3    MOVEQ   #2,D0
  2332: B06D FEA2        -$15E          CMP.W   glob170(A5),D0
  2336: 6E60           5002398          BGT.S   lmj_4
  2338: 486E FF90      200FF90          PEA     vmj_8(A6)
  233C: 3F3C 00D0      '?<..'           PUSH    #$D0
  2340: 4EBA DE5A      500019C          JSR     proc249
  2344: 486E FF82      200FF82          PEA     vmj_7(A6)
  2348: 3F3C 00CE      '?<..'           PUSH    #$CE
  234C: 4EBA DE4E      500019C          JSR     proc249
  2350: 486E FF74      200FF74          PEA     vmj_6(A6)
  2354: 3F3C 00CF      '?<..'           PUSH    #$CF
  2358: 4EBA DE42      500019C          JSR     proc249
  235C: 486E FF66      200FF66          PEA     vmj_5(A6)
  2360: 3F3C 00CB      '?<..'           PUSH    #$CB
  2364: 4EBA DE36      500019C          JSR     proc249
  2368: 486E FF58      200FF58          PEA     vmj_4(A6)
  236C: 3F3C 00CC      '?<..'           PUSH    #$CC
  2370: 4EBA DE2A      500019C          JSR     proc249
  2374: 486E FF4A      200FF4A          PEA     vmj_3(A6)
  2378: 3F3C 00CD      '?<..'           PUSH    #$CD
  237C: 4EBA DE1E      500019C          JSR     proc249
  2380: 486E FF3C      200FF3C          PEA     vmj_2(A6)
  2384: 3F3C 00C8      '?<..'           PUSH    #$C8
  2388: 4EBA DE12      500019C          JSR     proc249
  238C: 486E FF2E      200FF2E          PEA     vmj_1(A6)
  2390: 3F3C 00C9      '?<..'           PUSH    #$C9
  2394: 4EBA DE06      500019C          JSR     proc249
  2398: 2F2E 0008      2000008 lmj_4    PUSH.L  param1(A6)
  239C: 4EBA F9EE      5001D8C          JSR     proc293
  23A0: 2F2D FFA0         -$60          PUSH.L  glob253(A5)
  23A4: 4EAD 0342      3000900          JSR     proc161(A5)
  23A8: 102D FCA7        -$359          MOVE.B  glob129(A5),D0
  23AC: 6708           50023B6          BEQ.S   lmj_5
  23AE: 486D FFC6         -$3A          PEA     glob260(A5)
  23B2: 4EAD 01FA      10025B2          JSR     proc111(A5)
  23B6: 102D FFA5         -$5B lmj_5    MOVE.B  glob254(A5),D0
  23BA: 6716           50023D2          BEQ.S   lmj_6
  23BC: 486D FFC6         -$3A          PEA     glob260(A5)
  23C0: 486D FFB8         -$48          PEA     glob258(A5)
  23C4: 486D FA72        -$58E          PEA     glob94(A5)
  23C8: 486D FA72        -$58E          PEA     glob94(A5)
  23CC: 4267           'Bg'             CLR     -(A7)
  23CE: 42A7           'B.'             CLR.L   -(A7)
  23D0: A8EC           '..'             _CopyBits ; (srcBits,dstBits:BitMap; srcRect,dstRect:Rect; mode:INTEGER{|XferMode}; maskRgn:RgnHandle) 
  23D2: 4EAD 0152      1001664 lmj_6    JSR     proc86(A5)
  23D6: 4247           'BG'             CLR     D7
  23D8: 604A           5002424          BRA.S   lmj_10
  23DA: 486E FFAC      200FFAC lmj_7    PEA     vmj_10(A6)
  23DE: 4EBA DEFC      50002DC          JSR     proc252
  23E2: 486E FFF2      200FFF2          PEA     vmj_15(A6)
  23E6: 4EBA DEF4      50002DC          JSR     proc252
  23EA: 486E FFE4      200FFE4          PEA     vmj_14(A6)
  23EE: 4EBA DEEC      50002DC          JSR     proc252
  23F2: 486E FFD6      200FFD6          PEA     vmj_13(A6)
  23F6: 4EBA DEE4      50002DC          JSR     proc252
  23FA: 486E FFBA      200FFBA          PEA     vmj_11(A6)
  23FE: 4EBA DEDC      50002DC          JSR     proc252
  2402: 486E FFC8      200FFC8          PEA     vmj_12(A6)
  2406: 4EBA DED4      50002DC          JSR     proc252
  240A: 102D FCAD        -$353          MOVE.B  glob132(A5),D0
  240E: 6708           5002418          BEQ.S   lmj_8
  2410: 486E FF9E      200FF9E          PEA     vmj_9(A6)
  2414: 4EBA DEC6      50002DC          JSR     proc252
  2418: 703B           'p;'    lmj_8    MOVEQ   #59,D0
  241A: B047           '.G'             CMP.W   D7,D0
  241C: 6F04           5002422          BLE.S   lmj_9
  241E: 4EAD 0332      3000826          JSR     proc158(A5)
  2422: 5247           'RG'    lmj_9    ADDQ    #1,D7
  2424: 703B           'p;'    lmj_10   MOVEQ   #59,D0
  2426: B047           '.G'             CMP.W   D7,D0
  2428: 6CB0           50023DA          BGE     lmj_7
  242A: 4EAD 034A      300090C          JSR     proc162(A5)
  242E: 2F0E           '/.'             PUSH.L  A6
  2430: 4EBA FDA8      50021DA          JSR     proc298
  2434: 41ED FFEA         -$16          LEA     glob269(A5),A0
  2438: B1ED FFA0         -$60          CMPA.L  glob253(A5),A0
  243C: 57C0           'W.'             SEQ     D0
  243E: C02D FFA5         -$5B          AND.B   glob254(A5),D0
  2442: 6704           5002448          BEQ.S   lmj_11
  2444: 4EAD 0352      3000920          JSR     proc163(A5)
  2448: 4EAD 0332      3000826 lmj_11   JSR     proc158(A5)
  244C: 7002           'p.'             MOVEQ   #2,D0
  244E: B06D FEA2        -$15E          CMP.W   glob170(A5),D0
  2452: 6E56           50024AA          BGT.S   lmj_14
  2454: 422D FEDD        -$123          CLR.B   glob195(A5)
  2458: 7E01           '~.'             MOVEQ   #1,D7
  245A: 6046           50024A2          BRA.S   lmj_13
  245C: 486E FF4A      200FF4A lmj_12   PEA     vmj_3(A6)
  2460: 4EBA DE7A      50002DC          JSR     proc252
  2464: 486E FF3C      200FF3C          PEA     vmj_2(A6)
  2468: 4EBA DE72      50002DC          JSR     proc252
  246C: 486E FF90      200FF90          PEA     vmj_8(A6)
  2470: 4EBA DE6A      50002DC          JSR     proc252
  2474: 486E FF82      200FF82          PEA     vmj_7(A6)
  2478: 4EBA DE62      50002DC          JSR     proc252
  247C: 486E FF74      200FF74          PEA     vmj_6(A6)
  2480: 4EBA DE5A      50002DC          JSR     proc252
  2484: 486E FF58      200FF58          PEA     vmj_4(A6)
  2488: 4EBA DE52      50002DC          JSR     proc252
  248C: 486E FF66      200FF66          PEA     vmj_5(A6)
  2490: 4EBA DE4A      50002DC          JSR     proc252
  2494: 486E FF2E      200FF2E          PEA     vmj_1(A6)
  2498: 4EBA DE42      50002DC          JSR     proc252
  249C: 4EAD 0332      3000826          JSR     proc158(A5)
  24A0: 5247           'RG'             ADDQ    #1,D7
  24A2: 0C47 009D      '.G..'  lmj_13   CMPI    #$9D,D7
  24A6: 6FB4           500245C          BLE     lmj_12
  24A8: 604E           50024F8          BRA.S   lmj_18
  24AA: 7E3C           '~<'    lmj_14   MOVEQ   #60,D7
  24AC: 6044           50024F2          BRA.S   lmj_17
  24AE: 486E FFAC      200FFAC lmj_15   PEA     vmj_10(A6)
  24B2: 4EBA DE28      50002DC          JSR     proc252
  24B6: 486E FFF2      200FFF2          PEA     vmj_15(A6)
  24BA: 4EBA DE20      50002DC          JSR     proc252
  24BE: 486E FFE4      200FFE4          PEA     vmj_14(A6)
  24C2: 4EBA DE18      50002DC          JSR     proc252
  24C6: 486E FFD6      200FFD6          PEA     vmj_13(A6)
  24CA: 4EBA DE10      50002DC          JSR     proc252
  24CE: 486E FFBA      200FFBA          PEA     vmj_11(A6)
  24D2: 4EBA DE08      50002DC          JSR     proc252
  24D6: 486E FFC8      200FFC8          PEA     vmj_12(A6)
  24DA: 4EBA DE00      50002DC          JSR     proc252
  24DE: 102D FCAD        -$353          MOVE.B  glob132(A5),D0
  24E2: 6708           50024EC          BEQ.S   lmj_16
  24E4: 486E FF9E      200FF9E          PEA     vmj_9(A6)
  24E8: 4EBA DDF2      50002DC          JSR     proc252
  24EC: 4EAD 0332      3000826 lmj_16   JSR     proc158(A5)
  24F0: 5247           'RG'             ADDQ    #1,D7
  24F2: 7074           'pt'    lmj_17   MOVEQ   #$74,D0
  24F4: B047           '.G'             CMP.W   D7,D0
  24F6: 6CB6           50024AE          BGE     lmj_15
  24F8: 486E FFF2      200FFF2 lmj_18   PEA     vmj_15(A6)
  24FC: 4EBA DD1E      500021C          JSR     proc250
  2500: 486E FFE4      200FFE4          PEA     vmj_14(A6)
  2504: 4EBA DD16      500021C          JSR     proc250
  2508: 486E FFD6      200FFD6          PEA     vmj_13(A6)
  250C: 4EBA DD0E      500021C          JSR     proc250
  2510: 486E FFC8      200FFC8          PEA     vmj_12(A6)
  2514: 4EBA DD06      500021C          JSR     proc250
  2518: 486E FFBA      200FFBA          PEA     vmj_11(A6)
  251C: 4EBA DCFE      500021C          JSR     proc250
  2520: 486E FFAC      200FFAC          PEA     vmj_10(A6)
  2524: 4EBA DCF6      500021C          JSR     proc250
  2528: 102D FCAD        -$353          MOVE.B  glob132(A5),D0
  252C: 6708           5002536          BEQ.S   lmj_19
  252E: 486E FF9E      200FF9E          PEA     vmj_9(A6)
  2532: 4EBA DCE8      500021C          JSR     proc250
  2536: 7002           'p.'    lmj_19   MOVEQ   #2,D0
  2538: B06D FEA2        -$15E          CMP.W   glob170(A5),D0
  253C: 6E40           500257E          BGT.S   lmj_20
  253E: 486E FF90      200FF90          PEA     vmj_8(A6)
  2542: 4EBA DCD8      500021C          JSR     proc250
  2546: 486E FF82      200FF82          PEA     vmj_7(A6)
  254A: 4EBA DCD0      500021C          JSR     proc250
  254E: 486E FF74      200FF74          PEA     vmj_6(A6)
  2552: 4EBA DCC8      500021C          JSR     proc250
  2556: 486E FF66      200FF66          PEA     vmj_5(A6)
  255A: 4EBA DCC0      500021C          JSR     proc250
  255E: 486E FF58      200FF58          PEA     vmj_4(A6)
  2562: 4EBA DCB8      500021C          JSR     proc250
  2566: 486E FF4A      200FF4A          PEA     vmj_3(A6)
  256A: 4EBA DCB0      500021C          JSR     proc250
  256E: 486E FF3C      200FF3C          PEA     vmj_2(A6)
  2572: 4EBA DCA8      500021C          JSR     proc250
  2576: 486E FF2E      200FF2E          PEA     vmj_1(A6)
  257A: 4EBA DCA0      500021C          JSR     proc250
  257E: 7002           'p.'    lmj_20   MOVEQ   #2,D0
  2580: B06D FEA2        -$15E          CMP.W   glob170(A5),D0
  2584: 6F08           500258E          BLE.S   lmj_21
  2586: 3F3C 00AE      '?<..'           PUSH    #$AE
  258A: A97A           '.z'             _FreeDialog ; (DlgID:INTEGER) 
  258C: 6006           5002594          BRA.S   lmj_22
  258E: 3F3C 00AF      '?<..'  lmj_21   PUSH    #$AF
  2592: A97A           '.z'             _FreeDialog ; (DlgID:INTEGER) 
  2594: 4EAD 015A      10016A0 lmj_22   JSR     proc87(A5)
  2598: 4EAD 005A      1000404          JSR     proc12(A5)
  259C: 4EBA DF5C      50004FA          JSR     proc254
  25A0: 7002           'p.'             MOVEQ   #2,D0
  25A2: B06D FEA2        -$15E          CMP.W   glob170(A5),D0
  25A6: 6F0A           50025B2          BLE.S   lmj_23
  25A8: 3F3C 4269      '?<Bi'           PUSH    #$4269
  25AC: 4EAD 01DA      1002304          JSR     proc107(A5)
  25B0: 6008           50025BA          BRA.S   lmj_24
  25B2: 3F3C 426A      '?<Bj'  lmj_23   PUSH    #$426A
  25B6: 4EAD 01DA      1002304          JSR     proc107(A5)
  25BA: 2E1F           '..'    lmj_24   POP.L   D7
  25BC: 4E5E           'N^'             UNLK    A6
  25BE: 2E9F           '..'             POP.L   (A7)
  25C0: 4E75           'Nu'             RTS     
