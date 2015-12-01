ori $16 $0 1916
ori $17 $0 571
ori $18 $0 764
ori $19 $0 1396
ori $20 $0 4096
ori $21 $0 3697
ori $22 $0 2911
ori $23 $0 2796

            j entrance0
            nop
        entrance0:
            jal block0
            ori $1 $0 1
            subu $1 $1 $1
            beq $1 $0 exit0
        block0:
            addu $1 $16 $17
sw $1 0($0)
addu $1 $17 $18
sw $1 4($0)
addu $1 $18 $19
sw $1 8($0)
addu $1 $19 $20
sw $1 12($0)
addu $1 $20 $21
sw $1 16($0)
addu $1 $21 $22
sw $1 20($0)
addu $1 $22 $23
sw $1 24($0)

            jr $ra
        exit0:
        
            j entrance1
            nop
        entrance1:
            jal block1
            ori $1 $0 1
            subu $1 $1 $1
            beq $1 $0 exit1
        block1:
            subu $1 $16 $17
sw $1 28($0)
subu $1 $17 $18
sw $1 32($0)
subu $1 $18 $19
sw $1 36($0)
subu $1 $19 $20
sw $1 40($0)
subu $1 $20 $21
sw $1 44($0)
subu $1 $21 $22
sw $1 48($0)
subu $1 $22 $23
sw $1 52($0)

            jr $ra
        exit1:
        
            j entrance2
            nop
        entrance2:
            jal block2
            ori $1 $0 1
            subu $1 $1 $1
            beq $1 $0 exit2
        block2:
            ori $1 $16 1514
sw $1 56($0)
ori $1 $17 1655
sw $1 60($0)
ori $1 $18 1385
sw $1 64($0)
ori $1 $19 911
sw $1 68($0)
ori $1 $20 1558
sw $1 72($0)
ori $1 $21 2419
sw $1 76($0)
ori $1 $22 178
sw $1 80($0)

            jr $ra
        exit2:
        
            j entrance3
            nop
        entrance3:
            jal block3
            ori $1 $0 1
            subu $1 $1 $1
            beq $1 $0 exit3
        block3:
            lui $1 4465
sw $1 84($0)
lui $1 1335
sw $1 88($0)
lui $1 2604
sw $1 92($0)
lui $1 1326
sw $1 96($0)
lui $1 3551
sw $1 100($0)
lui $1 3028
sw $1 104($0)
lui $1 4098
sw $1 108($0)

            jr $ra
        exit3:
        
            j entrance4
            nop
        entrance4:
            jal block4
            ori $1 $0 1
            subu $1 $1 $1
            beq $1 $0 exit4
        block4:
            lw $1 108($0)
sw $1 112($0)
lw $1 112($0)
sw $1 116($0)
lw $1 116($0)
sw $1 120($0)
lw $1 120($0)
sw $1 124($0)
lw $1 124($0)
sw $1 128($0)
lw $1 128($0)
sw $1 132($0)
lw $1 132($0)
sw $1 136($0)

            jr $ra
        exit4:
        
             j entrance5
             nop
         entrance5:
             jal block5
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit5
         block5:
             addu $1 $17 $20
addu $1 $1 $1
sw $1 140($0)
InP0_block5:
nop
InN0_block5:
addu $1 $17 $17
nop
addu $1 $1 $1
sw $1 144($0)
InP1_block5:
nop
InN1_block5:
addu $1 $19 $22
nop
nop
addu $1 $1 $1
sw $1 148($0)
InP2_block5:
nop
InN2_block5:

             jr $ra
             nop
         exit5:
         
             j entrance6
             nop
         entrance6:
             jal block6
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit6
         block6:
             addu $1 $17 $23
subu $1 $1 $1
sw $1 152($0)
InP0_block6:
nop
InN0_block6:
addu $1 $16 $18
nop
subu $1 $1 $1
sw $1 156($0)
InP1_block6:
nop
InN1_block6:
addu $1 $21 $22
nop
nop
subu $1 $1 $1
sw $1 160($0)
InP2_block6:
nop
InN2_block6:

             jr $ra
             nop
         exit6:
         
             j entrance7
             nop
         entrance7:
             jal block7
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit7
         block7:
             addu $1 $23 $20
ori $23 $1 2421
sw $23 164($0)
InP0_block7:
nop
InN0_block7:
addu $1 $23 $18
nop
ori $19 $1 2151
sw $19 168($0)
InP1_block7:
nop
InN1_block7:
addu $1 $23 $19
nop
nop
ori $21 $1 3456
sw $21 172($0)
InP2_block7:
nop
InN2_block7:

             jr $ra
             nop
         exit7:
         
             j entrance8
             nop
         entrance8:
             jal block8
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit8
         block8:
             addu $1 $21 $20
beq $1 $1 InN0_block8
InP0_block8:
nop
InN0_block8:
addu $1 $18 $21
nop
beq $1 $1 InN1_block8
InP1_block8:
nop
InN1_block8:
addu $1 $22 $18
nop
nop
beq $1 $1 InN2_block8
InP2_block8:
nop
InN2_block8:

             jr $ra
             nop
         exit8:
         
             j entrance9
             nop
         entrance9:
             jal block9
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit9
         block9:
             addu $1 $16 $23
lw $20 172($0)
sw $20 176($0)
InP0_block9:
nop
InN0_block9:
addu $1 $23 $20
nop
lw $16 176($0)
sw $16 180($0)
InP1_block9:
nop
InN1_block9:
addu $1 $16 $19
nop
nop
lw $18 180($0)
sw $18 184($0)
InP2_block9:
nop
InN2_block9:

             jr $ra
             nop
         exit9:
         
             j entrance10
             nop
         entrance10:
             jal block10
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit10
         block10:
             addu $1 $19 $22
sw $1 184($0)
InP0_block10:
nop
InN0_block10:
addu $1 $20 $21
nop
sw $1 184($0)
InP1_block10:
nop
InN1_block10:
addu $1 $21 $18
nop
nop
sw $1 184($0)
InP2_block10:
nop
InN2_block10:

             jr $ra
             nop
         exit10:
         
             j entrance11
             nop
         entrance11:
             jal block11
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit11
         block11:
             subu $1 $23 $19
addu $1 $1 $1
sw $1 188($0)
InP0_block11:
nop
InN0_block11:
subu $1 $16 $18
nop
addu $1 $1 $1
sw $1 192($0)
InP1_block11:
nop
InN1_block11:
subu $1 $16 $22
nop
nop
addu $1 $1 $1
sw $1 196($0)
InP2_block11:
nop
InN2_block11:

             jr $ra
             nop
         exit11:
         
             j entrance12
             nop
         entrance12:
             jal block12
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit12
         block12:
             subu $1 $17 $16
subu $1 $1 $1
sw $1 200($0)
InP0_block12:
nop
InN0_block12:
subu $1 $18 $21
nop
subu $1 $1 $1
sw $1 204($0)
InP1_block12:
nop
InN1_block12:
subu $1 $19 $16
nop
nop
subu $1 $1 $1
sw $1 208($0)
InP2_block12:
nop
InN2_block12:

             jr $ra
             nop
         exit12:
         
             j entrance13
             nop
         entrance13:
             jal block13
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit13
         block13:
             subu $1 $20 $17
ori $18 $1 3141
sw $18 212($0)
InP0_block13:
nop
InN0_block13:
subu $1 $19 $21
nop
ori $17 $1 3535
sw $17 216($0)
InP1_block13:
nop
InN1_block13:
subu $1 $20 $16
nop
nop
ori $22 $1 1086
sw $22 220($0)
InP2_block13:
nop
InN2_block13:

             jr $ra
             nop
         exit13:
         
             j entrance14
             nop
         entrance14:
             jal block14
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit14
         block14:
             subu $1 $17 $20
beq $1 $1 InN0_block14
InP0_block14:
nop
InN0_block14:
subu $1 $21 $18
nop
beq $1 $1 InN1_block14
InP1_block14:
nop
InN1_block14:
subu $1 $23 $19
nop
nop
beq $1 $1 InN2_block14
InP2_block14:
nop
InN2_block14:

             jr $ra
             nop
         exit14:
         
             j entrance15
             nop
         entrance15:
             jal block15
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit15
         block15:
             subu $1 $22 $22
lw $23 220($0)
sw $23 224($0)
InP0_block15:
nop
InN0_block15:
subu $1 $20 $20
nop
lw $17 224($0)
sw $17 228($0)
InP1_block15:
nop
InN1_block15:
subu $1 $17 $20
nop
nop
lw $16 228($0)
sw $16 232($0)
InP2_block15:
nop
InN2_block15:

             jr $ra
             nop
         exit15:
         
             j entrance16
             nop
         entrance16:
             jal block16
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit16
         block16:
             subu $1 $21 $23
sw $1 232($0)
InP0_block16:
nop
InN0_block16:
subu $1 $18 $18
nop
sw $1 184($0)
InP1_block16:
nop
InN1_block16:
subu $1 $20 $18
nop
nop
sw $1 232($0)
InP2_block16:
nop
InN2_block16:

             jr $ra
             nop
         exit16:
         
             j entrance17
             nop
         entrance17:
             jal block17
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit17
         block17:
             ori $1 $22 3396
addu $1 $1 $1
sw $1 236($0)
InP0_block17:
nop
InN0_block17:
ori $1 $23 2639
nop
addu $1 $1 $1
sw $1 240($0)
InP1_block17:
nop
InN1_block17:
ori $1 $21 3087
nop
nop
addu $1 $1 $1
sw $1 244($0)
InP2_block17:
nop
InN2_block17:

             jr $ra
             nop
         exit17:
         
             j entrance18
             nop
         entrance18:
             jal block18
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit18
         block18:
             ori $1 $21 116
subu $1 $1 $1
sw $1 248($0)
InP0_block18:
nop
InN0_block18:
ori $1 $22 1249
nop
subu $1 $1 $1
sw $1 252($0)
InP1_block18:
nop
InN1_block18:
ori $1 $16 3665
nop
nop
subu $1 $1 $1
sw $1 256($0)
InP2_block18:
nop
InN2_block18:

             jr $ra
             nop
         exit18:
         
             j entrance19
             nop
         entrance19:
             jal block19
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit19
         block19:
             ori $1 $16 3315
ori $20 $1 2347
sw $20 260($0)
InP0_block19:
nop
InN0_block19:
ori $1 $16 1535
nop
ori $22 $1 1216
sw $22 264($0)
InP1_block19:
nop
InN1_block19:
ori $1 $20 4068
nop
nop
ori $23 $1 3926
sw $23 268($0)
InP2_block19:
nop
InN2_block19:

             jr $ra
             nop
         exit19:
         
             j entrance20
             nop
         entrance20:
             jal block20
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit20
         block20:
             ori $1 $23 2834
beq $1 $1 InN0_block20
InP0_block20:
nop
InN0_block20:
ori $1 $20 4040
nop
beq $1 $1 InN1_block20
InP1_block20:
nop
InN1_block20:
ori $1 $16 2734
nop
nop
beq $1 $1 InN2_block20
InP2_block20:
nop
InN2_block20:

             jr $ra
             nop
         exit20:
         
             j entrance21
             nop
         entrance21:
             jal block21
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit21
         block21:
             ori $1 $19 257
lw $17 268($0)
sw $17 272($0)
InP0_block21:
nop
InN0_block21:
ori $1 $17 551
nop
lw $20 272($0)
sw $20 276($0)
InP1_block21:
nop
InN1_block21:
ori $1 $20 227
nop
nop
lw $23 276($0)
sw $23 280($0)
InP2_block21:
nop
InN2_block21:

             jr $ra
             nop
         exit21:
         
             j entrance22
             nop
         entrance22:
             jal block22
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit22
         block22:
             ori $1 $19 2314
sw $1 280($0)
InP0_block22:
nop
InN0_block22:
ori $1 $23 2040
nop
sw $1 280($0)
InP1_block22:
nop
InN1_block22:
ori $1 $19 1967
nop
nop
sw $1 280($0)
InP2_block22:
nop
InN2_block22:

             jr $ra
             nop
         exit22:
         
             j entrance23
             nop
         entrance23:
             jal block23
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit23
         block23:
             lui $1 2350
addu $1 $1 $1
sw $1 284($0)
InP0_block23:
nop
InN0_block23:
lui $1 3270
nop
addu $1 $1 $1
sw $1 288($0)
InP1_block23:
nop
InN1_block23:
lui $1 2052
nop
nop
addu $1 $1 $1
sw $1 292($0)
InP2_block23:
nop
InN2_block23:

             jr $ra
             nop
         exit23:
         
             j entrance24
             nop
         entrance24:
             jal block24
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit24
         block24:
             lui $1 667
subu $1 $1 $1
sw $1 296($0)
InP0_block24:
nop
InN0_block24:
lui $1 890
nop
subu $1 $1 $1
sw $1 300($0)
InP1_block24:
nop
InN1_block24:
lui $1 2140
nop
nop
subu $1 $1 $1
sw $1 304($0)
InP2_block24:
nop
InN2_block24:

             jr $ra
             nop
         exit24:
         
             j entrance25
             nop
         entrance25:
             jal block25
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit25
         block25:
             lui $1 1809
ori $21 $1 3922
sw $21 308($0)
InP0_block25:
nop
InN0_block25:
lui $1 1520
nop
ori $18 $1 3635
sw $18 312($0)
InP1_block25:
nop
InN1_block25:
lui $1 2343
nop
nop
ori $19 $1 2797
sw $19 316($0)
InP2_block25:
nop
InN2_block25:

             jr $ra
             nop
         exit25:
         
             j entrance26
             nop
         entrance26:
             jal block26
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit26
         block26:
             lui $1 2777
beq $1 $1 InN0_block26
InP0_block26:
nop
InN0_block26:
lui $1 948
nop
beq $1 $1 InN1_block26
InP1_block26:
nop
InN1_block26:
lui $1 176
nop
nop
beq $1 $1 InN2_block26
InP2_block26:
nop
InN2_block26:

             jr $ra
             nop
         exit26:
         
             j entrance27
             nop
         entrance27:
             jal block27
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit27
         block27:
             lui $1 2
lw $16 316($0)
sw $16 320($0)
InP0_block27:
nop
InN0_block27:
lui $1 1969
nop
lw $21 320($0)
sw $21 324($0)
InP1_block27:
nop
InN1_block27:
lui $1 2272
nop
nop
lw $21 324($0)
sw $21 328($0)
InP2_block27:
nop
InN2_block27:

             jr $ra
             nop
         exit27:
         
             j entrance28
             nop
         entrance28:
             jal block28
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit28
         block28:
             lui $1 3439
sw $1 328($0)
InP0_block28:
nop
InN0_block28:
lui $1 975
nop
sw $1 328($0)
InP1_block28:
nop
InN1_block28:
lui $1 3979
nop
nop
sw $1 328($0)
InP2_block28:
nop
InN2_block28:

             jr $ra
             nop
         exit28:
         
             j entrance29
             nop
         entrance29:
             jal block29
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit29
         block29:
             lw $1 328($0)
addu $1 $1 $1
sw $1 332($0)
InP0_block29:
nop
InN0_block29:
lw $1 332($0)
nop
addu $1 $1 $1
sw $1 336($0)
InP1_block29:
nop
InN1_block29:
lw $1 336($0)
nop
nop
addu $1 $1 $1
sw $1 340($0)
InP2_block29:
nop
InN2_block29:

             jr $ra
             nop
         exit29:
         
             j entrance30
             nop
         entrance30:
             jal block30
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit30
         block30:
             lw $1 340($0)
subu $1 $1 $1
sw $1 344($0)
InP0_block30:
nop
InN0_block30:
lw $1 344($0)
nop
subu $1 $1 $1
sw $1 348($0)
InP1_block30:
nop
InN1_block30:
lw $1 348($0)
nop
nop
subu $1 $1 $1
sw $1 352($0)
InP2_block30:
nop
InN2_block30:

             jr $ra
             nop
         exit30:
         
             j entrance31
             nop
         entrance31:
             jal block31
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit31
         block31:
             lw $1 352($0)
ori $20 $1 1284
sw $20 356($0)
InP0_block31:
nop
InN0_block31:
lw $1 356($0)
nop
ori $21 $1 2100
sw $21 360($0)
InP1_block31:
nop
InN1_block31:
lw $1 360($0)
nop
nop
ori $21 $1 763
sw $21 364($0)
InP2_block31:
nop
InN2_block31:

             jr $ra
             nop
         exit31:
         
             j entrance32
             nop
         entrance32:
             jal block32
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit32
         block32:
             lw $1 364($0)
beq $1 $1 InN0_block32
InP0_block32:
nop
InN0_block32:
lw $1 364($0)
nop
beq $1 $1 InN1_block32
InP1_block32:
nop
InN1_block32:
lw $1 364($0)
nop
nop
beq $1 $1 InN2_block32
InP2_block32:
nop
InN2_block32:

             jr $ra
             nop
         exit32:
         
             j entrance33
             nop
         entrance33:
             jal block33
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit33
         block33:
             lw $1 364($0)
lw $16 364($0)
sw $16 368($0)
InP0_block33:
nop
InN0_block33:
lw $1 368($0)
nop
lw $20 368($0)
sw $20 372($0)
InP1_block33:
nop
InN1_block33:
lw $1 372($0)
nop
nop
lw $18 372($0)
sw $18 376($0)
InP2_block33:
nop
InN2_block33:

             jr $ra
             nop
         exit33:
         
             j entrance34
             nop
         entrance34:
             jal block34
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit34
         block34:
             lw $1 376($0)
sw $1 376($0)
InP0_block34:
nop
InN0_block34:
lw $1 376($0)
nop
sw $1 376($0)
InP1_block34:
nop
InN1_block34:
lw $1 376($0)
nop
nop
sw $1 376($0)
InP2_block34:
nop
InN2_block34:

             jr $ra
             nop
         exit34:
         nop
