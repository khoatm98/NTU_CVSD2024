import random
import struct

q = pow(2,255)-19
q_inv = 21330121701610878104342023554231983025602365596302209165163239159352418617883 # q*q_inv % 2^255 = 2^255-1 = -1 mod 2^255
R = pow(2,255)%q
count_add_sub = 0
count_mul = 0

class number:
    def __init__(self, value: int):
        self.value = value # 255 bit

    def __add__(self, other: 'number') -> 'number': 
        r = self.value + other.value
        if(r>q):
            r -= q
        assert r == ((self.value + other.value) % q)
        global count_add_sub
        count_add_sub += 1
        return number(r)

    def __sub__(self, other: 'number') -> 'number':
        if(self.value >= other.value):
            r = self.value - other.value
        else:
            r = q - other.value
            r += self.value
        assert r == ((self.value - other.value) % q)
        global count_add_sub
        count_add_sub += 1
        return number(r)

    def MM(self,value1: int, value2: int) -> int: # Montgomery multiplication: (value1 * value2)>>255 mod q
        r = value1 * value2
        tmp = (((r%pow(2,255))*q_inv)%pow(2,255))*q
        r = (r + tmp)>>255
        if(r>=q):
            r -= q
        global count_mul
        count_mul += 1
        return r

    def __mul__(self, other: 'number') -> 'number': # mod mul: value1 * value2 mod q
        r = self.MM(self.value,R*R%q)
        r = self.MM(r,other.value)
        assert r == ((self.value * other.value) % q)
        return number(r)

    def __truediv__(self, other: 'number') -> 'number': # mod div: value1 / value2 mod q
        #calculate value2 ^ (p-2) mod p
        q_minus_2_in_bin = "111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101011"
        r = number(1)
        for i in range(255):
            r = r*r
            if(q_minus_2_in_bin[i]=="1"):
                r = r*other
        #calculate value1/value2 mod p
        r = self*r
        return r
    
    def __eq__(self, other: 'number') -> bool:     # used for debug
        return self.value==other.value
    

d = number(0x52036cee2b6ffe738cc740797779e89800700a4d4141d8ab75eb4dca135978a3)
class point:
    def __init__(self, number_X: number, number_Y: number, number_Z: number = number(1)):
        self.X = number_X
        self.Y = number_Y
        self.Z = number_Z

    def __add__(self, other: 'point') -> 'point':
        Z1Z2 = self.Z*other.Z
        X1X2Y1Y2 = self.X*other.X*self.Y*other.Y
        X3 = Z1Z2*(self.X*other.Y+other.X*self.Y)*(Z1Z2*Z1Z2-d*X1X2Y1Y2)
        Y3 = Z1Z2*(self.Y*other.Y+self.X*other.X)*(Z1Z2*Z1Z2+d*X1X2Y1Y2)
        Z3 = (Z1Z2*Z1Z2-d*X1X2Y1Y2)*(Z1Z2*Z1Z2+d*X1X2Y1Y2)
        return point(X3,Y3,Z3)

    def __mul__(self, M: int) -> 'point':
        r = point(number(0), number(1))  # the zero point
        M_in_bin = "{:0255b}".format(M)
        for i in range(255):
            r = r + r
            if(M_in_bin[i]=="1"):
                r = r + self
        return r

    def reduce(self) -> 'point':
        x = self.X/self.Z
        y = self.Y/self.Z
        if(x.value%2==1): x.value = q-x.value
        if(y.value%2==1): y.value = q-y.value
        return point(x, y)
        
    def is_on_curve(self): # require self.Z=1
        return self.Y*self.Y-self.X*self.X == number(1) + d * self.X*self.X*self.Y*self.Y
    
    def __str__(self): # used for debug
        # if(self.is_on_curve()):
            # text = "X: {:064x}\n".format(self.X.value) + "Y: {:064x}\n".format(self.Y.value) + "Z: {:064x}\n".format(self.Z.value)
        # else:
            # text = "Invalid point"
        text = "X: {:064x}\n".format(self.X.value) + "Y: {:064x}\n".format(self.Y.value) + "Z: {:064x}\n".format(self.Z.value)
        return text

def dec_to_bin(num):
    return format(struct.unpack('!I', struct.pack('!d', num))[0], '255b')
if __name__ == "__main__":
    #testcase 1
    scalar_M = 0x03
    x = number(0x0fa4d2a95dafe3275eaf3ba907dbb1da819aba3927450d7399a270ce660d2fae)
    y = number(0x2f0fe2678dedf6671e055f1a557233b324f44fb8be4afe607e5541eb11b0bea2)

    #testcase 2
    #scalar_M = 0x17e0aa3c03983ca8ea7e9d498c778ea6eb2083e6ce164dba0ff18e0242af9fc3
    #x = number(0x2e2c9fbf00b87ab7cde15119d1c5b09aa9743b5c6fb96ec59dbf2f30209b133c)
    #y = number(0x116943db82ba4a31f240994b14a091fb55cc6edd19658a06d5f4c5805730c232)
    
    #testcase 3
    #scalar_M = 0x1759edc372ae22448b0163c1cd9d2b7d247a8333f7b0b7d2cda8056c3d15eef7
    #x = number(0x5b90ea17eaf962ef96588677a54b09c016ad982c842efa107c078796f88449a8)
    #y = number(0x6a210d43f514ec3c7a8e677567ad835b5c2e4bc5dd3480e135708e41b42c0ac6)

    # point_P = point(x, y)
    # point_M = point_P * scalar_M
    # point_G = ( point_M + point_P)
    # print("point P:")
    # print(point_P)
    # print("point G:")
    cc = number(1)/x
    print(cc.value)

    
    GEN_NUM = 10000
    
    f_a   = open("inv_I.dat", "w")
    f_inv = open("inv_O.dat", "w")
    counter = 0;
    while( counter < GEN_NUM):
        fl_a   = []
        fl_inv = []

        #point A 
        a = random.randint(0, 2**255 - 19)
        
        fl_a.append(str(f"{a:0{255}b}"))

        faString = ''.join(fl_a)

        f_a.write(faString)
        f_a.write('\n')

        b = number(1)/number(a)
        fl_inv.append(str(f"{b.value:0{255}b}"))
        fbString = ''.join(fl_inv)
        f_inv.write(fbString)
        f_inv.write('\n')
        
        counter = counter + 1
