from insFormats import *
from insType import *
from insGenerator import *
addu = Instruction('addu', calRegFormat, cal_r)
subu = Instruction('subu', calRegFormat, cal_r)
ori = Instruction('ori', calImmFormat, cal_i)
lui = Instruction('lui', luiFormat, cal_i)
j = Instruction('j', jumpFormat, j_o) # originaly jump
jal = Instruction('jal', jumpFormat, link)
jr = Instruction('jr', jumpRegFormat, j_r)
lw = Instruction('lw', loadStoreFormat, load)
sw = Instruction('sw', loadStoreFormat, store)
beq = Instruction('beq', bTypeFormat, b_type)
