beq_template = """
j entrance{index}
nop
entrance{index}:
jal block{index}
nop
ori ${r} $0 1
subu ${r} ${r} ${r}
beq ${r} $0 exit{index}
nop
block{index}:

{inss}jalr ${r}, $ra
nop
exit{index}:

"""
jalr_template = """
j entrance{index}
nop
entrance{index}:
jal block{index}
nop
ori ${r} $0 1
subu ${r} ${r} ${r}
beq ${r} $0 exit{index}
nop
block{index}:

{inss}jr $ra
nop
exit{index}:

"""
jal_template = """
j entrance{index}
nop
entrance{index}:
jal block{index}
nop
ori ${r} $0 1
subu ${r} ${r} ${r}
beq ${r} $0 exit{index}
nop
block{index}:

{inss}jr $ra
nop
exit{index}:

"""
bgez_template = """
j entrance{index}
nop
entrance{index}:
jal block{index}
nop
ori ${r} $0 1
addu ${r} ${r} ${r}
bgez ${r} exit{index}
nop
block{index}:

{inss}jr $ra
nop
exit{index}:

"""

bne_template = """
j entrance{index}
nop
entrance{index}:
jal block{index}
nop
ori ${r} $0 1
addu ${r} ${r} ${r}
bne ${r} $0 exit{index}
nop
block{index}:

{inss}jr $ra
nop
exit{index}:

"""

bltz_template = """
j entrance{index}
nop
entrance{index}:
jal block{index}
nop
ori ${r} $0 1
addu ${r} ${r} ${r}
bltz ${r} exit{index}
nop
blez $0 exit{index}

nop
block{index}:
{inss}jr $ra
nop
exit{index}:

"""
bgtz_template = """
j entrance{index}
nop
entrance{index}:
jal block{index}
nop
ori ${r} $0 1
addi ${r} ${r} -100 
bgtz ${r} exit{index}
nop
blez ${r} exit{index}

nop
block{index}:
{inss}jr $ra
nop
exit{index}:

"""

template_list = [beq_template, jalr_template, jal_template, bgez_template, bne_template, bltz_template, bgtz_template]
template_list = [beq_template, jalr_template, jal_template]