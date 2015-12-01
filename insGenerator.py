import functools
import random
from insFormats import *
from insType import *
from instructions import *
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
    ori = Instruction('ori', calImmFormat, cal_i)
    for i in range(15):
        p = {"rt": "$%d" % i, "rs":"$0", 'imm' : str(random.randint(-22231,449120))}
        result += ori.buildCode(p)
    return result

def bulidISA():
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

    def __init__(self, keyword, insformat, instype):
        self.keyword = keyword
        self.insformat = insformat
        self.instype =  instype
    def buildCode(self, parameters): # bulid the code line using parameters
        parameters['keyword'] = self.keyword
        return replaceLine(self.insformat, parameters) + newline

    def getKeyword(self):
        return self.keyword

    def getFormat(self):
        return self.insformat

    def getInstype(self):
        return self.instype

class TestCode(object):
    '''
    bulid testcase and save the result to dm.
    using j/jr/jal/beq to control the logic.
    testing other hazard.
    '''
    def __init__(self):
        self.saveOffset = 0
        self.text = ""
        self.index = 0

    def randomInitial(self):
        '''
         set values to $s0 ~ $s7
        '''
        result = ""
        ori = Instruction('ori', calImmFormat, cal_i)
        for i in range(16,24):
            p = {"rt": "$%d" % i, "rs":"$0", 'imm' : str(random.randint(0,4491))}
            result += ori.buildCode(p)
        self.text += result
        return result

    def saveLine(self, target):
        '''
         save the target to next free word space.
        '''
        sp = {"rt":target, "base":"$0", "offset":str(self.saveOffset)}
        self.saveOffset += 4
        return sw.buildCode(sp)

    def functionTest(self, ins):
        inss = ""
        if ins.getInstype() == cal_r:
            for i in range(16,23):
                p = {"rs": "$%d" % i, "rd":"$1", "rt":"$%d" % (i+1)}
                inss += ins.buildCode(p)
                inss += self.saveLine(p["rd"])
        if ins.getInstype() == cal_i:
            for i in range(16,23):
                p = {"rs": "$%d" % i, "rt":"$1", 'imm' : str(random.randint(0,4491))}
                inss += ins.buildCode(p)
                inss += self.saveLine(p["rt"])
        if ins.getInstype() == load:
            for i in range(16,23):
                p = {"base": "$0", "rt":"$1",
                     'offset' : str(min(4 * random.randint(0, 1999), self.saveOffset-4))}
                inss += ins.buildCode(p)
                inss += self.saveLine(p["rt"])
        template = """
            j entrance{index}
            nop
        entrance{index}:
            jal block{index}
            ori $1 $0 1
            subu $1 $1 $1
            beq $1 $0 exit{index}
        block{index}:
            {inss}
            jr $ra
        exit{index}:
        """
        d = {'index': str(self.index), 'inss':inss}
        self.index += 1
        self.text += replaceLine(template, d)
        return replaceLine(template, d)

    def hazardTest(self, prevIns, nextIns):
         inss = ""
         assert prevIns.getInstype()['new'] != {}
         assert nextIns.getInstype()['use'] != {}
         hazardPReg = list(prevIns.getInstype()['new']['E'].keys())[0] # the first output
         hazardNRegs = list(nextIns.getInstype()['use'].keys())
         if list(nextIns.getInstype()['new'].keys()):
             result = list(nextIns.getInstype()['new']['E'].keys())
         else:
             result = None
         # using $1 as hazard register
         for i in range(3):
             prevP = {"rs": "$%d" % random.randint(16,23),
                      "rt": "$%d" % random.randint(16,23),
                      "rd": "$%d" % 1,
                      "imm":str(random.randint(0,4123)),
                      "sa":str(random.randint(0,32)),
                      "base":"$0",
                      "offset":str(min(4 * random.randint(0, 1999), self.saveOffset-4)),
                      "label":"InP%d_block{index}" % i
                     }
             nextP = {"rs": "$%d" % random.randint(16,23),
                     "rt": "$%d" % random.randint(16,23),
                     "rd": "$%d" % 1,
                     "imm":str(random.randint(0,4123)),
                     "sa":str(random.randint(0,32)),
                     "base":"$0",
                     "offset":str(min(4 * random.randint(0, 1999), self.saveOffset-4)),
                     "label":"InN%d_block{index}" % i
                     }
             prevP[hazardPReg] = "$1"
             for reg in hazardNRegs:
                 nextP[reg] = "$1"
             if nextIns.getInstype() == store:
                 nextP['base'] = "$0"
             if prevIns.getInstype() == link:
                 for reg in hazardNRegs:
                     nextP[reg] = "$ra"
             inss += prevIns.buildCode(prevP)
             for j in range(i):
                 inss += "nop" + newline
             inss += nextIns.buildCode(nextP)
             if result:
                 inss += self.saveLine(nextP[result[0]])
             inss += "InP%d_block{index}:" % i + newline
             inss += "nop" + newline
             inss += "InN%d_block{index}:" % i + newline


         template = """
             j entrance{index}
             nop
         entrance{index}:
             jal block{index}
             ori $1 $0 1
             subu $1 $1 $1
             beq $1 $0 exit{index}
         block{index}:
             {inss}
             jr $ra
             nop
         exit{index}:
         """

         d = {'index': str(self.index), 'inss':inss.format(**{'index':str(self.index)})}
         self.index += 1
         self.text += replaceLine(template, d)
         return replaceLine(template, d)
    def finish(self):
        self.text += "nop" + newline
        return "nop" + newline
    def getText(self):
        return self.text

if __name__ == '__main__':
    code = open("test.asm", "w")
    a = TestCode()
    testList = [addu, subu, ori, lui, lw]
    useList = [addu, subu, ori, beq, lw, sw]
    newList = [addu, subu, ori, lui, lw]
    a.randomInitial()
    for ins in testList:
        a.functionTest(ins)
    for prevIns in newList:
        for nextIns in useList:
            a.hazardTest(prevIns=prevIns, nextIns=nextIns)
    a.finish()
    code.write(a.getText())
    code.close()
