ori $16 $0 1052
ori $17 $0 157
ori $18 $0 38
ori $19 $0 65
ori $20 $0 982
ori $21 $0 726
ori $22 $0 2956
ori $23 $0 3048

j entrance0
nop
entrance0:
jal block0
nop
ori $3 $0 1
subu $3 $3 $3
beq $3 $0 exit0
nop
block0:

mfc0 $1 $14
lb $17 0($0)
sw $17 0($0)

mfc0 $1 $14
nop
lb $20 0($0)
sw $20 4($0)

mfc0 $1 $14
nop
nop
lb $16 4($0)
sw $16 8($0)

jr $ra
nop
exit0:


j entrance1
nop
entrance1:
jal block1
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit1
nop
block1:

mfc0 $10 $14
lbu $21 8($0)
sw $21 12($0)

mfc0 $10 $14
nop
lbu $20 12($0)
sw $20 16($0)

mfc0 $10 $14
nop
nop
lbu $21 16($0)
sw $21 20($0)

jalr $11, $ra
nop
exit1:


j entrance2
nop
entrance2:
jal block2
nop
ori $23 $0 1
subu $23 $23 $23
beq $23 $0 exit2
nop
block2:

mfc0 $8 $14
lh $22 20($0)
sw $22 24($0)

mfc0 $8 $14
nop
lh $22 24($0)
sw $22 28($0)

mfc0 $8 $14
nop
nop
lh $16 28($0)
sw $16 32($0)

jr $ra
nop
exit2:


j entrance3
nop
entrance3:
jal block3
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit3
nop
block3:

mfc0 $14 $14
lhu $23 32($0)
sw $23 36($0)

mfc0 $14 $14
nop
lhu $17 36($0)
sw $17 40($0)

mfc0 $14 $14
nop
nop
lhu $22 40($0)
sw $22 44($0)

jr $ra
nop
exit3:


j entrance4
nop
entrance4:
jal block4
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit4
nop
block4:

mfc0 $6 $14
lw $20 44($0)
sw $20 48($0)

mfc0 $6 $14
nop
lw $17 48($0)
sw $17 52($0)

mfc0 $6 $14
nop
nop
lw $18 52($0)
sw $18 56($0)

jr $ra
nop
exit4:


j entrance5
nop
entrance5:
jal block5
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit5
nop
block5:

mfc0 $3 $14
add $1 $3 $3
sw $1 60($0)

mfc0 $3 $14
nop
add $1 $3 $3
sw $1 64($0)

mfc0 $3 $14
nop
nop
add $1 $3 $3
sw $1 68($0)

jr $ra
nop
exit5:


j entrance6
nop
entrance6:
jal block6
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit6
nop
block6:

mfc0 $14 $14
addu $1 $14 $14
sw $1 72($0)

mfc0 $14 $14
nop
addu $1 $14 $14
sw $1 76($0)

mfc0 $14 $14
nop
nop
addu $1 $14 $14
sw $1 80($0)

jr $ra
nop
exit6:


j entrance7
nop
entrance7:
jal block7
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit7
nop
block7:

mfc0 $12 $14
sub $1 $12 $12
sw $1 84($0)

mfc0 $12 $14
nop
sub $1 $12 $12
sw $1 88($0)

mfc0 $12 $14
nop
nop
sub $1 $12 $12
sw $1 92($0)

jalr $11, $ra
nop
exit7:


j entrance8
nop
entrance8:
jal block8
nop
ori $24 $0 1
subu $24 $24 $24
beq $24 $0 exit8
nop
block8:

mfc0 $6 $14
subu $1 $6 $6
sw $1 96($0)

mfc0 $6 $14
nop
subu $1 $6 $6
sw $1 100($0)

mfc0 $6 $14
nop
nop
subu $1 $6 $6
sw $1 104($0)

jr $ra
nop
exit8:


j entrance9
nop
entrance9:
jal block9
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit9
nop
block9:

mfc0 $4 $14
mult $4 $4
sw $4 108($0)

mfc0 $4 $14
nop
mult $4 $4
sw $4 112($0)

mfc0 $4 $14
nop
nop
mult $4 $4
sw $4 116($0)

jalr $20, $ra
nop
exit9:


j entrance10
nop
entrance10:
jal block10
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit10
nop
block10:

mfc0 $1 $14
multu $1 $1
sw $1 120($0)

mfc0 $1 $14
nop
multu $1 $1
sw $1 124($0)

mfc0 $1 $14
nop
nop
multu $1 $1
sw $1 128($0)

jr $ra
nop
exit10:


j entrance11
nop
entrance11:
jal block11
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit11
nop
block11:

mfc0 $6 $14
div $6 $6
sw $6 132($0)

mfc0 $6 $14
nop
div $6 $6
sw $6 136($0)

mfc0 $6 $14
nop
nop
div $6 $6
sw $6 140($0)

jalr $1, $ra
nop
exit11:


j entrance12
nop
entrance12:
jal block12
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit12
nop
block12:

mfc0 $7 $14
divu $7 $7
sw $7 144($0)

mfc0 $7 $14
nop
divu $7 $7
sw $7 148($0)

mfc0 $7 $14
nop
nop
divu $7 $7
sw $7 152($0)

jr $ra
nop
exit12:


j entrance13
nop
entrance13:
jal block13
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit13
nop
block13:

mfc0 $14 $14
sll $14 $22 25
sw $1 156($0)

mfc0 $14 $14
nop
sll $14 $23 8
sw $1 160($0)

mfc0 $14 $14
nop
nop
sll $14 $23 15
sw $1 164($0)

jr $ra
nop
exit13:


j entrance14
nop
entrance14:
jal block14
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit14
nop
block14:

mfc0 $8 $14
srl $8 $16 20
sw $1 168($0)

mfc0 $8 $14
nop
srl $8 $16 9
sw $1 172($0)

mfc0 $8 $14
nop
nop
srl $8 $17 22
sw $1 176($0)

jalr $13, $ra
nop
exit14:


j entrance15
nop
entrance15:
jal block15
nop
ori $5 $0 1
subu $5 $5 $5
beq $5 $0 exit15
nop
block15:

mfc0 $9 $14
sra $9 $19 25
sw $1 180($0)

mfc0 $9 $14
nop
sra $9 $17 19
sw $1 184($0)

mfc0 $9 $14
nop
nop
sra $9 $21 3
sw $1 188($0)

jr $ra
nop
exit15:


j entrance16
nop
entrance16:
jal block16
nop
ori $20 $0 1
subu $20 $20 $20
beq $20 $0 exit16
nop
block16:

mfc0 $4 $14
sllv $1 $4 $4
sw $1 192($0)

mfc0 $4 $14
nop
sllv $1 $4 $4
sw $1 196($0)

mfc0 $4 $14
nop
nop
sllv $1 $4 $4
sw $1 200($0)

jalr $20, $ra
nop
exit16:


j entrance17
nop
entrance17:
jal block17
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit17
nop
block17:

mfc0 $10 $14
srlv $1 $10 $10
sw $1 204($0)

mfc0 $10 $14
nop
srlv $1 $10 $10
sw $1 208($0)

mfc0 $10 $14
nop
nop
srlv $1 $10 $10
sw $1 212($0)

jr $ra
nop
exit17:


j entrance18
nop
entrance18:
jal block18
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit18
nop
block18:

mfc0 $3 $14
srav $1 $3 $3
sw $1 216($0)

mfc0 $3 $14
nop
srav $1 $3 $3
sw $1 220($0)

mfc0 $3 $14
nop
nop
srav $1 $3 $3
sw $1 224($0)

jr $ra
nop
exit18:


j entrance19
nop
entrance19:
jal block19
nop
ori $29 $0 1
subu $29 $29 $29
beq $29 $0 exit19
nop
block19:

mfc0 $7 $14
and $1 $7 $7
sw $1 228($0)

mfc0 $7 $14
nop
and $1 $7 $7
sw $1 232($0)

mfc0 $7 $14
nop
nop
and $1 $7 $7
sw $1 236($0)

jr $ra
nop
exit19:


j entrance20
nop
entrance20:
jal block20
nop
ori $15 $0 1
subu $15 $15 $15
beq $15 $0 exit20
nop
block20:

mfc0 $3 $14
or $1 $3 $3
sw $1 240($0)

mfc0 $3 $14
nop
or $1 $3 $3
sw $1 244($0)

mfc0 $3 $14
nop
nop
or $1 $3 $3
sw $1 248($0)

jr $ra
nop
exit20:


j entrance21
nop
entrance21:
jal block21
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit21
nop
block21:

mfc0 $4 $14
xor $1 $4 $4
sw $1 252($0)

mfc0 $4 $14
nop
xor $1 $4 $4
sw $1 256($0)

mfc0 $4 $14
nop
nop
xor $1 $4 $4
sw $1 260($0)

jalr $7, $ra
nop
exit21:


j entrance22
nop
entrance22:
jal block22
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit22
nop
block22:

mfc0 $14 $14
nor $1 $14 $14
sw $1 264($0)

mfc0 $14 $14
nop
nor $1 $14 $14
sw $1 268($0)

mfc0 $14 $14
nop
nop
nor $1 $14 $14
sw $1 272($0)

jalr $28, $ra
nop
exit22:


j entrance23
nop
entrance23:
jal block23
nop
ori $1 $0 1
subu $1 $1 $1
beq $1 $0 exit23
nop
block23:

mfc0 $14 $14
addi $18 $14 505
sw $18 276($0)

mfc0 $14 $14
nop
addi $17 $14 2237
sw $17 280($0)

mfc0 $14 $14
nop
nop
addi $17 $14 3612
sw $17 284($0)

jalr $1, $ra
nop
exit23:


j entrance24
nop
entrance24:
jal block24
nop
ori $6 $0 1
subu $6 $6 $6
beq $6 $0 exit24
nop
block24:

mfc0 $4 $14
addiu $18 $4 60
sw $18 288($0)

mfc0 $4 $14
nop
addiu $22 $4 2697
sw $22 292($0)

mfc0 $4 $14
nop
nop
addiu $17 $4 3893
sw $17 296($0)

jr $ra
nop
exit24:


j entrance25
nop
entrance25:
jal block25
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit25
nop
block25:

mfc0 $13 $14
andi $16 $13 1202
sw $16 300($0)

mfc0 $13 $14
nop
andi $19 $13 2733
sw $19 304($0)

mfc0 $13 $14
nop
nop
andi $20 $13 3698
sw $20 308($0)

jr $ra
nop
exit25:


j entrance26
nop
entrance26:
jal block26
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit26
nop
block26:

mfc0 $3 $14
ori $16 $3 1545
sw $16 312($0)

mfc0 $3 $14
nop
ori $22 $3 2380
sw $22 316($0)

mfc0 $3 $14
nop
nop
ori $18 $3 3243
sw $18 320($0)

jr $ra
nop
exit26:


j entrance27
nop
entrance27:
jal block27
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit27
nop
block27:

mfc0 $4 $14
xori $23 $4 1996
sw $23 324($0)

mfc0 $4 $14
nop
xori $20 $4 2271
sw $20 328($0)

mfc0 $4 $14
nop
nop
xori $17 $4 1666
sw $17 332($0)

jalr $10, $ra
nop
exit27:


j entrance28
nop
entrance28:
jal block28
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit28
nop
block28:

mfc0 $11 $14
lui $18 2177
sw $18 336($0)

mfc0 $11 $14
nop
lui $21 3258
sw $21 340($0)

mfc0 $11 $14
nop
nop
lui $19 797
sw $19 344($0)

jalr $17, $ra
nop
exit28:


j entrance29
nop
entrance29:
jal block29
nop
ori $11 $0 1
subu $11 $11 $11
beq $11 $0 exit29
nop
block29:

mfc0 $2 $14
slt $1 $2 $2
sw $1 348($0)

mfc0 $2 $14
nop
slt $1 $2 $2
sw $1 352($0)

mfc0 $2 $14
nop
nop
slt $1 $2 $2
sw $1 356($0)

jr $ra
nop
exit29:


j entrance30
nop
entrance30:
jal block30
nop
ori $26 $0 1
subu $26 $26 $26
beq $26 $0 exit30
nop
block30:

mfc0 $4 $14
slti $20 $4 3676
sw $20 360($0)

mfc0 $4 $14
nop
slti $18 $4 1508
sw $18 364($0)

mfc0 $4 $14
nop
nop
slti $16 $4 1814
sw $16 368($0)

jr $ra
nop
exit30:


j entrance31
nop
entrance31:
jal block31
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit31
nop
block31:

mfc0 $3 $14
sltiu $16 $3 3375
sw $16 372($0)

mfc0 $3 $14
nop
sltiu $21 $3 522
sw $21 376($0)

mfc0 $3 $14
nop
nop
sltiu $22 $3 2308
sw $22 380($0)

jalr $12, $ra
nop
exit31:


j entrance32
nop
entrance32:
jal block32
nop
ori $7 $0 1
subu $7 $7 $7
beq $7 $0 exit32
nop
block32:

mfc0 $13 $14
sltu $1 $13 $13
sw $1 384($0)

mfc0 $13 $14
nop
sltu $1 $13 $13
sw $1 388($0)

mfc0 $13 $14
nop
nop
sltu $1 $13 $13
sw $1 392($0)

jr $ra
nop
exit32:


j entrance33
nop
entrance33:
jal block33
nop
ori $28 $0 1
subu $28 $28 $28
beq $28 $0 exit33
nop
block33:

mfc0 $1 $14
mthi $1
sw $1 396($0)

mfc0 $1 $14
nop
mthi $1
sw $1 400($0)

mfc0 $1 $14
nop
nop
mthi $1
sw $1 404($0)

jalr $28, $ra
nop
exit33:


j entrance34
nop
entrance34:
jal block34
nop
ori $4 $0 1
subu $4 $4 $4
beq $4 $0 exit34
nop
block34:

mfc0 $3 $14
mtlo $3
sw $3 408($0)

mfc0 $3 $14
nop
mtlo $3
sw $3 412($0)

mfc0 $3 $14
nop
nop
mtlo $3
sw $3 416($0)

jalr $4, $ra
nop
exit34:

