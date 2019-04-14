import functools
import random
from insFormats import *
from insType import *
from instructions import *
from Template import template_list
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
    ISA['j'] = j
    ISA['jal'] = jal
    ISA['jr'] = jr
    ISA['lw'] = lw
    ISA['sw'] = sw
    ISA['beq'] = beq
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
    
    def textClear(self):
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
        if ins.getInstype() == cal_s:
            for i in range(16,23):
                p = {"rs": "$%d" % i ,"rt":"$1", 'shmat' : str(random.randint(0,31))}
                inss += ins.buildCode(p)
                inss += self.saveLine(p["rt"])
        if ins.getInstype() == mf_type:
            for i in range(1,15):
                p = {"rd": "$%d" % i }
                inss += ins.buildCode(p)
                inss += self.saveLine(p["rd"])
        if ins.getInstype() == mt_type:
            for i in range(16,23):
                p = {"rs": "$%d" % i }
                inss += ins.buildCode(p)
                if ins.getKeyword() == "mthi":
                    inss += mfhi.buildCode({"rd": "$%d" % (i-15)})
                if ins.getKeyword() == "mtlo":
                    inss += mflo.buildCode({"rd": "$%d" % (i-15)})
        if ins.getInstype() == md_type:
            for i in range(16,23):
                p = {"rs": "$%d" % i, "rt": "$%d" % (i+1)}
                inss += ins.buildCode(p)
                inss += mfhi.buildCode({"rd":"$%d" % (i-15)})
                inss += mflo.buildCode({"rd":"$%d" % (i-14)})
        if ins.getInstype() == load:
            for i in range(16,23):
                p = {"base": "$0", "rt":"$1",
                     'offset' : str(max(min(4 * random.randint(0, 1999), self.saveOffset-4), 0))}
                inss += ins.buildCode(p)
                inss += self.saveLine(p["rt"])
        template = template_list[random.randint(0,len(template_list)-1)]
        d = {'index': str(self.index), 'r': str(random.randint(1,30)), 'inss':inss}
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
         # using hzreg as hazard register
         hzreg = "$%d" % random.randint(1,15)
         for i in range(3):
             prevP = {"rs": "$%d" % random.randint(16,23),
                      "rt": "$%d" % random.randint(16,23),
                      "rd": "$%d" % 14,
                      "imm":str(random.randint(0,4123)),
                      "sa":str(random.randint(0,32)),
                      "shmat" : str(random.randint(0,31)),
                      "base":"$0",
                      "offset":str(max(min(4 * random.randint(0, 1999), self.saveOffset-4), 0)),
                      "label":"InP%d_block{index}" % i
                     }
             nextP = {"rs": "$%d" % random.randint(16,23),
                     "rt": "$%d" % random.randint(16,23),
                     "rd": "$%d" % 1,
                     "imm":str(random.randint(0,4123)),
                     "sa":str(random.randint(0,32)),
                     "shmat" : str(random.randint(0,31)),
                     "base":"$0",
                     "offset":str(max(min(4 * random.randint(0, 1999), self.saveOffset-4), 0)),
                     "label":"InN%d_block{index}" % i
                     }
                     
             print(hazardPReg)
             if hazardPReg == 'hi' or hazardPReg == 'lo' :
                prevP['rd'] = hzreg
                print("ok")
             else :
                prevP[hazardPReg] = hzreg
             print(hazardNRegs)
             print(hzreg)
             for reg in hazardNRegs:
                if reg == 'hi':
                    nextP['rd'] = hzreg
                elif reg == 'cp0':
                    nextP['rd'] = hzreg
                else :
                    nextP[reg] = hzreg
                    print('ok')
             if nextIns.getInstype() == store:
                 nextP['base'] = "$0"
             if prevIns.getInstype() == link:
                 for reg in hazardNRegs:
                     nextP[reg] = "$ra"
             if prevIns.getInstype() == md_type :
                inss += prevIns.buildCode(prevP)
                inss += mfhi.buildCode(prevP)
                inss += mflo.buildCode(prevP)
             else :
                inss += prevIns.buildCode(prevP)
             for j in range(i):
                 inss += "nop" + newline
             inss += nextIns.buildCode(nextP)
             if result:
                if (result[0] == 'hi' or result[0] == 'lo'):
                    inss += self.saveLine(hzreg)
                else:
                    inss += self.saveLine(nextP[result[0]])
             '''
             inss += "InP%d_block{index}:" % i + newline
             inss += "nop" + newline
             inss += "InN%d_block{index}:" % i + newline
             '''
             inss += newline
         template = template_list[random.randint(0,len(template_list)-1)]
         d = {'index': str(self.index), 'r': str(random.randint(1,30)), 'inss':inss.format(**{'index':str(self.index)})}
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
    
    
    #P5555
    newList = [add, addi, addiu, addu, sub, subu, lw, sll, srl, and_, lui, or_, ori, xor] 
    testList = [add, addi, addiu, addu, sub, subu, j, jal, jr, lw, sll, srl, and_, lui, or_, ori, xor]
    useList = [add, addi, addiu, addu, sub, subu,lw, sll, srl, and_, lui, or_, ori, xor]
    #p6666
    testList = [lb, lbu, lh, lhu, lw, sb, sh, sw, add, addu, sub,  subu,  mult,  multu,  div,  divu,  sll,  srl,  sra,  sllv, srlv, srav, and_, or_, xor, nor, addi, addiu, andi, ori, xori, lui, slt, slti, sltiu, sltu, mfhi, mflo, mthi, mtlo]
    useList = [lb, lbu, lh, lhu, lw, add, addu, sub,  subu,  mult,  multu,  div,  divu,  sll,  srl,  sra,  sllv, srlv, srav, and_, or_, xor, nor, addi, addiu, andi, ori, xori, lui, slt, slti, sltiu, sltu, mthi, mtlo]
    #newList = [lb, lbu, lh, lhu, lw, add, addu, sub,  subu,  mult,  multu,  div,  divu,  sll,  srl,  sra,  sllv, srlv, srav, and_, or_, xor, nor, addi, addiu, andi, ori, xori, lui, slt, slti, sltiu, sltu, mfhi, mflo, mthi, mtlo]
    newList = [mfc0]
    #testList = [add, addi, sub, subu, addu, ori, xor, and_, or_, sll, srl, lui, lw]
    #testList = [addu, subu, ori, lui, lw, slti, add, sub, sll, srl, sra, sllv, srlv, srav, and_, or_, xor, nor, addi, addiu, andi, xori, slt, slti, sltiu, sltu]
    ##testList = [mult, mfhi, mflo, mthi, mtlo, div, divu]
    #useList = [addu, subu, ori, lui, lw, slti, add, sub, sll, srl, sra, sllv, srlv, srav, and_, or_, xor, nor, addi, addiu, andi, xori, slt, slti, sltiu, sltu,mthi, mtlo, div, divu, mult, multu, lh, lhu, lb, lbu]
    #useList = [mthi, mtlo, div, divu, mult, multu]
    #newList = [addu, subu, ori, lui, lw, slti, add, sub, sll, srl, sra, sllv, srlv, srav, and_, or_, xor, nor, addi, addiu, andi, xori, slt, slti, sltiu, sltu,div, divu, mult, multu, mthi, mtlo, mfhi, mflo, lh, lhu, lb, lbu]
    #useList = [add, addi, addiu, sub, subu, addu, ori, xor, and_, or_, sll, srl, lui, lw]
    
    #newList = [div, divu, mult, multu, mthi, mtlo, mfhi, mflo]
    
    count = 0
    '''
    for ins in testList:
        a.randomInitial()
        a.functionTest(ins)
        if(count == 9):
            f = open("hztest/functionTestpart0.asm", "w")
            f.write(a.getText())
            f.close()
            a.textClear()
        count += 1
    f = open("hztest/functionTestpart1.asm", "w")
    f.write(a.getText())
    f.close()
    a.textClear()
    '''
    for prevIns in newList:
        a.randomInitial()
        for nextIns in useList:
            a.hazardTest(prevIns=prevIns, nextIns=nextIns)
    f = open("hztest/"+prevIns.getKeyword()+".asm", "w")
    f = open("hztest/"+'mfc0'+".asm", "w")
    f.write(a.getText())
    f.close()
    a.textClear()
    a.finish()
    code.write(a.getText())
    code.close()
