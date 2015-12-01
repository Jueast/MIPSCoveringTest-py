ori $16 $0 3344
ori $17 $0 2190
ori $18 $0 3450
ori $19 $0 2482
ori $20 $0 3906
ori $21 $0 2443
ori $22 $0 2354
ori $23 $0 3978

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
            ori $1 $16 4115
sw $1 56($0)
ori $1 $17 194
sw $1 60($0)
ori $1 $18 298
sw $1 64($0)
ori $1 $19 1699
sw $1 68($0)
ori $1 $20 2096
sw $1 72($0)
ori $1 $21 3381
sw $1 76($0)
ori $1 $22 1481
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
            lui $1 3241
sw $1 84($0)
lui $1 2989
sw $1 88($0)
lui $1 2270
sw $1 92($0)
lui $1 4490
sw $1 96($0)
lui $1 2324
sw $1 100($0)
lui $1 1961
sw $1 104($0)
lui $1 2977
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
             addu $1 $19 $23
addu $1 $1 $1
sw $1 140($0)
InP0_block5:
nop
InN0_block5:
addu $1 $19 $23
nop
addu $1 $1 $1
sw $1 144($0)
InP1_block5:
nop
InN1_block5:
addu $1 $22 $21
nop
nop
addu $1 $1 $1
sw $1 148($0)
InP2_block5:
nop
InN2_block5:

             jr $ra
         exit5:
         
             j entrance6
             nop
         entrance6:
             jal block6
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit6
         block6:
             addu $1 $19 $18
subu $1 $1 $1
sw $1 152($0)
InP0_block6:
nop
InN0_block6:
addu $1 $17 $19
nop
subu $1 $1 $1
sw $1 156($0)
InP1_block6:
nop
InN1_block6:
addu $1 $17 $18
nop
nop
subu $1 $1 $1
sw $1 160($0)
InP2_block6:
nop
InN2_block6:

             jr $ra
         exit6:
         
             j entrance7
             nop
         entrance7:
             jal block7
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit7
         block7:
             addu $1 $18 $23
ori $22 $1 1551
sw $22 164($0)
InP0_block7:
nop
InN0_block7:
addu $1 $23 $19
nop
ori $22 $1 1095
sw $22 168($0)
InP1_block7:
nop
InN1_block7:
addu $1 $19 $18
nop
nop
ori $18 $1 3528
sw $18 172($0)
InP2_block7:
nop
InN2_block7:

             jr $ra
         exit7:
         
             j entrance8
             nop
         entrance8:
             jal block8
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit8
         block8:
             addu $1 $23 $16
beq $1 $1 InN0_block8
InP0_block8:
nop
InN0_block8:
addu $1 $23 $22
nop
beq $1 $1 InN1_block8
InP1_block8:
nop
InN1_block8:
addu $1 $18 $16
nop
nop
beq $1 $1 InN2_block8
InP2_block8:
nop
InN2_block8:

             jr $ra
         exit8:
         
             j entrance9
             nop
         entrance9:
             jal block9
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit9
         block9:
             addu $1 $18 $16
lw $23 172($0)
sw $23 176($0)
InP0_block9:
nop
InN0_block9:
addu $1 $21 $16
nop
lw $18 176($0)
sw $18 180($0)
InP1_block9:
nop
InN1_block9:
addu $1 $23 $17
nop
nop
lw $16 180($0)
sw $16 184($0)
InP2_block9:
nop
InN2_block9:

             jr $ra
         exit9:
         
             j entrance10
             nop
         entrance10:
             jal block10
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit10
         block10:
             addu $1 $23 $19
sw $1 184($0)
InP0_block10:
nop
InN0_block10:
addu $1 $23 $16
nop
sw $1 184($0)
InP1_block10:
nop
InN1_block10:
addu $1 $21 $18
nop
nop
sw $1 136($0)
InP2_block10:
nop
InN2_block10:

             jr $ra
         exit10:
         
             j entrance11
             nop
         entrance11:
             jal block11
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit11
         block11:
             subu $1 $17 $17
addu $1 $1 $1
sw $1 188($0)
InP0_block11:
nop
InN0_block11:
subu $1 $21 $16
nop
addu $1 $1 $1
sw $1 192($0)
InP1_block11:
nop
InN1_block11:
subu $1 $16 $16
nop
nop
addu $1 $1 $1
sw $1 196($0)
InP2_block11:
nop
InN2_block11:

             jr $ra
         exit11:
         
             j entrance12
             nop
         entrance12:
             jal block12
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit12
         block12:
             subu $1 $20 $22
subu $1 $1 $1
sw $1 200($0)
InP0_block12:
nop
InN0_block12:
subu $1 $19 $19
nop
subu $1 $1 $1
sw $1 204($0)
InP1_block12:
nop
InN1_block12:
subu $1 $16 $20
nop
nop
subu $1 $1 $1
sw $1 208($0)
InP2_block12:
nop
InN2_block12:

             jr $ra
         exit12:
         
             j entrance13
             nop
         entrance13:
             jal block13
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit13
         block13:
             subu $1 $18 $22
ori $17 $1 40
sw $17 212($0)
InP0_block13:
nop
InN0_block13:
subu $1 $20 $18
nop
ori $23 $1 2063
sw $23 216($0)
InP1_block13:
nop
InN1_block13:
subu $1 $23 $23
nop
nop
ori $16 $1 828
sw $16 220($0)
InP2_block13:
nop
InN2_block13:

             jr $ra
         exit13:
         
             j entrance14
             nop
         entrance14:
             jal block14
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit14
         block14:
             subu $1 $19 $23
beq $1 $1 InN0_block14
InP0_block14:
nop
InN0_block14:
subu $1 $21 $19
nop
beq $1 $1 InN1_block14
InP1_block14:
nop
InN1_block14:
subu $1 $21 $16
nop
nop
beq $1 $1 InN2_block14
InP2_block14:
nop
InN2_block14:

             jr $ra
         exit14:
         
             j entrance15
             nop
         entrance15:
             jal block15
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit15
         block15:
             subu $1 $16 $19
lw $20 220($0)
sw $20 224($0)
InP0_block15:
nop
InN0_block15:
subu $1 $19 $23
nop
lw $18 224($0)
sw $18 228($0)
InP1_block15:
nop
InN1_block15:
subu $1 $18 $21
nop
nop
lw $21 228($0)
sw $21 232($0)
InP2_block15:
nop
InN2_block15:

             jr $ra
         exit15:
         
             j entrance16
             nop
         entrance16:
             jal block16
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit16
         block16:
             subu $1 $22 $22
sw $1 232($0)
InP0_block16:
nop
InN0_block16:
subu $1 $19 $22
nop
sw $1 232($0)
InP1_block16:
nop
InN1_block16:
subu $1 $17 $20
nop
nop
sw $1 232($0)
InP2_block16:
nop
InN2_block16:

             jr $ra
         exit16:
         
             j entrance17
             nop
         entrance17:
             jal block17
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit17
         block17:
             ori $1 $22 967
addu $1 $1 $1
sw $1 236($0)
InP0_block17:
nop
InN0_block17:
ori $1 $18 2358
nop
addu $1 $1 $1
sw $1 240($0)
InP1_block17:
nop
InN1_block17:
ori $1 $16 386
nop
nop
addu $1 $1 $1
sw $1 244($0)
InP2_block17:
nop
InN2_block17:

             jr $ra
         exit17:
         
             j entrance18
             nop
         entrance18:
             jal block18
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit18
         block18:
             ori $1 $18 1952
subu $1 $1 $1
sw $1 248($0)
InP0_block18:
nop
InN0_block18:
ori $1 $18 359
nop
subu $1 $1 $1
sw $1 252($0)
InP1_block18:
nop
InN1_block18:
ori $1 $22 3341
nop
nop
subu $1 $1 $1
sw $1 256($0)
InP2_block18:
nop
InN2_block18:

             jr $ra
         exit18:
         
             j entrance19
             nop
         entrance19:
             jal block19
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit19
         block19:
             ori $1 $18 3080
ori $22 $1 3359
sw $22 260($0)
InP0_block19:
nop
InN0_block19:
ori $1 $20 2708
nop
ori $23 $1 2342
sw $23 264($0)
InP1_block19:
nop
InN1_block19:
ori $1 $23 3824
nop
nop
ori $17 $1 2639
sw $17 268($0)
InP2_block19:
nop
InN2_block19:

             jr $ra
         exit19:
         
             j entrance20
             nop
         entrance20:
             jal block20
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit20
         block20:
             ori $1 $16 4021
beq $1 $1 InN0_block20
InP0_block20:
nop
InN0_block20:
ori $1 $21 2560
nop
beq $1 $1 InN1_block20
InP1_block20:
nop
InN1_block20:
ori $1 $19 567
nop
nop
beq $1 $1 InN2_block20
InP2_block20:
nop
InN2_block20:

             jr $ra
         exit20:
         
             j entrance21
             nop
         entrance21:
             jal block21
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit21
         block21:
             ori $1 $19 2903
lw $21 268($0)
sw $21 272($0)
InP0_block21:
nop
InN0_block21:
ori $1 $22 2636
nop
lw $18 272($0)
sw $18 276($0)
InP1_block21:
nop
InN1_block21:
ori $1 $22 1338
nop
nop
lw $20 276($0)
sw $20 280($0)
InP2_block21:
nop
InN2_block21:

             jr $ra
         exit21:
         
             j entrance22
             nop
         entrance22:
             jal block22
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit22
         block22:
             ori $1 $16 1812
sw $1 280($0)
InP0_block22:
nop
InN0_block22:
ori $1 $18 150
nop
sw $1 280($0)
InP1_block22:
nop
InN1_block22:
ori $1 $21 887
nop
nop
sw $1 280($0)
InP2_block22:
nop
InN2_block22:

             jr $ra
         exit22:
         
             j entrance23
             nop
         entrance23:
             jal block23
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit23
         block23:
             lui $1 3822
addu $1 $1 $1
sw $1 284($0)
InP0_block23:
nop
InN0_block23:
lui $1 822
nop
addu $1 $1 $1
sw $1 288($0)
InP1_block23:
nop
InN1_block23:
lui $1 2792
nop
nop
addu $1 $1 $1
sw $1 292($0)
InP2_block23:
nop
InN2_block23:

             jr $ra
         exit23:
         
             j entrance24
             nop
         entrance24:
             jal block24
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit24
         block24:
             lui $1 428
subu $1 $1 $1
sw $1 296($0)
InP0_block24:
nop
InN0_block24:
lui $1 3040
nop
subu $1 $1 $1
sw $1 300($0)
InP1_block24:
nop
InN1_block24:
lui $1 3416
nop
nop
subu $1 $1 $1
sw $1 304($0)
InP2_block24:
nop
InN2_block24:

             jr $ra
         exit24:
         
             j entrance25
             nop
         entrance25:
             jal block25
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit25
         block25:
             lui $1 874
ori $17 $1 3162
sw $17 308($0)
InP0_block25:
nop
InN0_block25:
lui $1 193
nop
ori $21 $1 968
sw $21 312($0)
InP1_block25:
nop
InN1_block25:
lui $1 3975
nop
nop
ori $19 $1 185
sw $19 316($0)
InP2_block25:
nop
InN2_block25:

             jr $ra
         exit25:
         
             j entrance26
             nop
         entrance26:
             jal block26
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit26
         block26:
             lui $1 3901
beq $1 $1 InN0_block26
InP0_block26:
nop
InN0_block26:
lui $1 79
nop
beq $1 $1 InN1_block26
InP1_block26:
nop
InN1_block26:
lui $1 1206
nop
nop
beq $1 $1 InN2_block26
InP2_block26:
nop
InN2_block26:

             jr $ra
         exit26:
         
             j entrance27
             nop
         entrance27:
             jal block27
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit27
         block27:
             lui $1 3300
lw $20 316($0)
sw $20 320($0)
InP0_block27:
nop
InN0_block27:
lui $1 3392
nop
lw $18 320($0)
sw $18 324($0)
InP1_block27:
nop
InN1_block27:
lui $1 524
nop
nop
lw $23 96($0)
sw $23 328($0)
InP2_block27:
nop
InN2_block27:

             jr $ra
         exit27:
         
             j entrance28
             nop
         entrance28:
             jal block28
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit28
         block28:
             lui $1 383
sw $1 328($0)
InP0_block28:
nop
InN0_block28:
lui $1 2066
nop
sw $1 328($0)
InP1_block28:
nop
InN1_block28:
lui $1 1968
nop
nop
sw $1 328($0)
InP2_block28:
nop
InN2_block28:

             jr $ra
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
ori $23 $1 3584
sw $23 356($0)
InP0_block31:
nop
InN0_block31:
lw $1 356($0)
nop
ori $16 $1 3119
sw $16 360($0)
InP1_block31:
nop
InN1_block31:
lw $1 360($0)
nop
nop
ori $19 $1 3722
sw $19 364($0)
InP2_block31:
nop
InN2_block31:

             jr $ra
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
lw $19 364($0)
sw $19 368($0)
InP0_block33:
nop
InN0_block33:
lw $1 368($0)
nop
lw $21 368($0)
sw $21 372($0)
InP1_block33:
nop
InN1_block33:
lw $1 372($0)
nop
nop
lw $17 372($0)
sw $17 376($0)
InP2_block33:
nop
InN2_block33:

             jr $ra
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
         exit34:
         nop
