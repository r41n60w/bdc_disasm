   826:                                 QUAL    proc151 ; b# =303  s#3  =proc151

                                 ;-refs -  3/proc169    5/proc250    5/proc260   
                                 ;-        5/proc286    5/proc291   

   826: 50ED FF93         -$6D proc151  ST      glob242(A5)
   82A: 4A2D FCA7        -$359          TST.B   glob122(A5)
   82E: 661A           300084A          BNE.S   lgz_3
   830: 426D FEFA        -$106          CLR     glob195(A5)
   834: 526D FEFA        -$106 lgz_1    ADDQ    #1,glob195(A5)
   838: 303C 0005      '0<..'           MOVE    #5,D0
   83C: 4E71           'Nq'    lgz_2    NOP     
   83E: 51C8 FFFC      300083C          DBRA    D0,lgz_2
   842: 4A2D FF93         -$6D          TST.B   glob242(A5)
   846: 66EC           3000834          BNE     lgz_1
   848: 6054           300089E          BRA.S   lgz_9
   84A: 426D FEFA        -$106 lgz_3    CLR     glob195(A5)
   84E: 526D FEFA        -$106 lgz_4    ADDQ    #1,glob195(A5)
   852: 303C 0005      '0<..'           MOVE    #5,D0
   856: 4E71           'Nq'    lgz_5    NOP     
   858: 51C8 FFFC      3000856          DBRA    D0,lgz_5
   85C: 226D FF94         -$6C          MOVEA.L glob243(A5),A1
   860: B2FC 0000      '....'           CMPA.W  #0,A1
   864: 67E8           300084E          BEQ     lgz_4
   866: 202D FFA0         -$60          MOVE.L  glob246(A5),D0
   86A: 43ED FFEA         -$16          LEA     glob262(A5),A1
   86E: B3C0           '..'             CMPA.L  D0,A1
   870: 660A           300087C          BNE.S   lgz_6
   872: 486D FFC6         -$3A          PEA     glob253(A5)
   876: 4EAD 01E2      1002336          JSR     proc103(A5)
   87A: 6008           3000884          BRA.S   lgz_7
   87C: 486D FFB8         -$48 lgz_6    PEA     glob251(A5)
   880: 4EAD 01E2      1002336          JSR     proc103(A5)
   884: 226D FF94         -$6C lgz_7    MOVEA.L glob243(A5),A1
   888: 202D FF8E         -$72          MOVE.L  glob241(A5),D0
   88C: 6704           3000892          BEQ.S   lgz_8
   88E: 2040           ' @'             MOVEA.L D0,A0
   890: 4E90           'N.'             JSR     (A0)
   892: 4EBA FE04      3000698 lgz_8    JSR     proc146
   896: 42AD FF94         -$6C          CLR.L   glob243(A5)
   89A: 51ED FF93         -$6D          SF      glob242(A5)
   89E: 4E75           'Nu'    lgz_9    RTS     
