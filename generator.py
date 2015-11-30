import functools
import random
from insFormats import *
newline = '\n'
##########################
def replaceLine(line, parameters):
    return line.format(**parameters)

def randomRegDistribution():
    # Randomly decide the rs/rt/rd for Instruction.
    p = {}
    p['rs'] =  "$" + str(random.randint(0,31))
    p['rt'] =  "$" + str(random.randint(0,31))
    p['rd'] =  "$" + str(random.randint(0,31))
    p['base'] = p['rs']
    p['offset'] = str(random.randint(0,1) * 4)
    p['label'] = 'block' + str(random.randint(0,1))
    p['imm'] = str(random.randint(232,9020))
    p['sa'] = str(random.randint(0,31))
    return p


def randomInitial():
    result = ""
    ori = Instruction('ori', calImmFormat)
    for i in range(15):
        p = {"rt": "$%d" % i, "rs":"$0", 'imm' : str(random.randint(-22231,449120))}
        result += ori.buildCode(p)
    return result

def bulidISA():
    addu = Instruction('addu', calRegFormat)
    subu = Instruction('subu', calRegFormat)
    ori = Instruction('ori', calImmFormat)
    lui = Instruction('lui', luiFormat)
    j = Instruction('j', jumpFormat)
    jal = Instruction('jal', jumpFormat)
    jr = Instruction('jr', jumpRegFormat)
    lw = Instruction('lw', loadStoreFormat)
    sw = Instruction('sw', loadStoreFormat)
    beq = Instruction('beq', bTypeFormat)
    ISA = {}
    ISA['addu'] = addu
    ISA['subu'] = subu
    ISA['ori'] = ori
    ISA['lui'] = lui
#    ISA['j'] = j
#    ISA['jal'] = jal
#    ISA['jr'] = jr
    ISA['lw'] = lw
    ISA['sw'] = sw
#    ISA['beq'] = beq
    return ISA

class Instruction(object):

    def __init__(self, keyword, insformat):
        self.keyword = keyword
        self.insformat = insformat

    def buildCode(self, parameters): # bulid the code line using parameters
        parameters['keyword'] = self.keyword
        return replaceLine(self.insformat, parameters) + newline

    def getKeyword(self):
        return self.keyword

    def getFormat(self):
        return self.insformat



if __name__ == '__main__':
    code = open("test.asm", "w")
    ISA = bulidISA()
    K = 40                      # num of Instructions
    code.write(randomInitial()) # initialization
    ISAset = list(ISA.keys())
    for i in range(K):
        ins = ISA[random.choice(ISAset)]
        p = randomRegDistribution()
        code.write(ins.buildCode(p))
    code.close()
