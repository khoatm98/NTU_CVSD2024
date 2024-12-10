import random
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

		if(r>=q):
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
			print(i)
			print("{:064x}\n".format(r.value))
			if(q_minus_2_in_bin[i]=="1"):
				r = r*other
				print("{:064x}\n".format(r.value))
		#calculate value1/value2 mod p
		r = self*r
		return r
	
	def __eq__(self, other: 'number') -> bool: 	# used for debug
		return self.value==other.value
	
d = number(0x52036cee2b6ffe738cc740797779e89800700a4d4141d8ab75eb4dca135978a3)

class point:
    def __init__(self, number_X: number, number_Y: number, number_Z: number = number(1)):
        self.X = number_X
        self.Y = number_Y
        self.Z = number_Z
    def double(self) -> 'point':
        """
        Perform point doubling on the curve using the given formula:
        A = 2 * Z1^2
        B = X1 + Y1
        C = X1^2
        D = Y1^2
        E = p - (C + D)
        F = C - D
        J = F - A
        K = B^2 + E
        X2 = J * K
        Y2 = F * E
        Z2 = F * J
        """
        p = number(pow(2, 255) - 19)  # Prime field size as a `number`
        X = self.X
        Y = self.Y
        Z = self.Z
        
        C = X
        X = X+Y
        Y = Y*Y
        #print("round 0 \n X: {:064x}\n".format(X.value) + "Y: {:064x}\n".format(Y.value) + "Z: {:064x}\n".format(Z.value) + "C: {:064x}\n".format(C.value))
        C = C*C
        #print("round 1 \n X: {:064x}\n".format(X.value) + "Y: {:064x}\n".format(Y.value) + "Z: {:064x}\n".format(Z.value) + "C: {:064x}\n".format(C.value))
        X = X*X
        D = Y
        Y = Y+C 
        #print("round 2 \n X: {:064x}\n".format(X.value) + "Y: {:064x}\n".format(Y.value) + "Z: {:064x}\n".format(Z.value) + "C: {:064x}\n".format(C.value) + "D: {:064x}\n".format(D.value))
        Y = p - Y
        #print("round 3 \n X: {:064x}\n".format(X.value) + "Y: {:064x}\n".format(Y.value) + "Z: {:064x}\n".format(Z.value) + "C: {:064x}\n".format(C.value) + "D: {:064x}\n".format(D.value))
        D = C - D 
        #print("round 4 \n X: {:064x}\n".format(X.value) + "Y: {:064x}\n".format(Y.value) + "Z: {:064x}\n".format(Z.value) + "C: {:064x}\n".format(C.value) + "D: {:064x}\n".format(D.value))
        X = X + Y
        Z = Z*Z 
        #print("round 5 \n X: {:064x}\n".format(X.value) + "Y: {:064x}\n".format(Y.value) + "Z: {:064x}\n".format(Z.value) + "C: {:064x}\n".format(C.value) + "D: {:064x}\n".format(D.value))
        Z = Z + Z 
        #print("round 6 \n X: {:064x}\n".format(X.value) + "Y: {:064x}\n".format(Y.value) + "Z: {:064x}\n".format(Z.value) + "C: {:064x}\n".format(C.value) + "D: {:064x}\n".format(D.value))
        Z = Z + D 
        Y = Y*D 
        #print("round 7 \n X: {:064x}\n".format(X.value) + "Y: {:064x}\n".format(Y.value) + "Z: {:064x}\n".format(Z.value) + "C: {:064x}\n".format(C.value) + "D: {:064x}\n".format(D.value))
        X = X*Z 
        #print("round 8 \n X: {:064x}\n".format(X.value) + "Y: {:064x}\n".format(Y.value) + "Z: {:064x}\n".format(Z.value) + "C: {:064x}\n".format(C.value) + "D: {:064x}\n".format(D.value))
        Z = D*Z
        #print("round 9 \n X: {:064x}\n".format(X.value) + "Y: {:064x}\n".format(Y.value) + "Z: {:064x}\n".format(Z.value) + "C: {:064x}\n".format(C.value) + "D: {:064x}\n".format(D.value))
        X2 = X                      # X2 = J * K
        Y2 = Y                      # Y2 = F * E
        Z2 = Z                       # Z2 = F * J
        
        #print(point(X2, Y2, Z2).is_on_curve())
        #print("X: {:064x}\n".format(X.value) + "Y: {:064x}\n".format(Y.value) + "Z: {:064x}\n".format(Z.value))
        return point(X2, Y2, Z2)


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
            p = r + r
            #print(i)
            r = p
            if(M_in_bin[i]=="1"):
                p = r + self
                r = p
                #print("add")
            ##print(M_in_bin)
            #print(r)
            
        return r
    def is_on_curve(self): # require self.Z=1
        return (self.Y*self.Y-self.X*self.X)*self.Z*self.Z == self.Z*self.Z*self.Z*self.Z + d * self.X*self.X*self.Y*self.Y
    def add(self, other: 'point') -> 'point':
        """
        Perform point addition on the curve using the provided formula:
        B = Z2^2
        C = X1 * X2
        D = Y1 * Y2
        E = d * C * D
        F = B - E
        G = B + E
        H = (X1 + Y1) * (X2 + Y2)
        I = H - (C + D)
        J = F * Z2
        K = G * Z2
        X3 = J * I
        Y3 = K * (C + D)
        Z3 = F * G
        """
        d = number(0x52036cee2b6ffe738cc740797779e89800700a4d4141d8ab75eb4dca135978a3)  # Curve constant `d` as a `number`
        if(self.is_on_curve() == 0):
            text = "Invalid point"
        X1 = self.X
        Y1 = self.Y
        X2 = other.X
        Y2 = other.Y
        Z2 = other.Z
        A = number(0x0)
        B = number(0x0)
        C = number(0x0)
        D = number(0x0)
        
        B  = Y2+X2
        X2 = X1*X2           # B = Z2^2
        #print("round 0 \n X: {:064x}\n".format(X2.value) + "Y: {:064x}\n".format(Y2.value) + "Z: {:064x}\n".format(Z2.value) + "A: {:064x}\n".format(A.value) + "B: {:064x}\n".format(B.value) + "C: {:064x}\n".format(C.value) + "D: {:064x}\n".format(D.value))
        C  = Y1+X1 
        Y2 = Y2 * Y1 
        #print("round 1 \n X: {:064x}\n".format(X2.value) + "Y: {:064x}\n".format(Y2.value) + "Z: {:064x}\n".format(Z2.value) + "A: {:064x}\n".format(A.value) + "B: {:064x}\n".format(B.value) + "C: {:064x}\n".format(C.value) + "D: {:064x}\n".format(D.value))

        A = Z2*Z2 
        D = Y2 
        Y2 = Y2 + X2 
        
        #print("round 2 \n X: {:064x}\n".format(X2.value) + "Y: {:064x}\n".format(Y2.value) + "Z: {:064x}\n".format(Z2.value) + "A: {:064x}\n".format(A.value) + "B: {:064x}\n".format(B.value) + "C: {:064x}\n".format(C.value) + "D: {:064x}\n".format(D.value))

        D = X2*D 
        #print("round 3 \n X: {:064x}\n".format(X2.value) + "Y: {:064x}\n".format(Y2.value) + "Z: {:064x}\n".format(Z2.value) + "A: {:064x}\n".format(A.value) + "B: {:064x}\n".format(B.value) + "C: {:064x}\n".format(C.value) + "D: {:064x}\n".format(D.value))

        D = d*D 
        #print("round 4 \n X: {:064x}\n".format(X2.value) + "Y: {:064x}\n".format(Y2.value) + "Z: {:064x}\n".format(Z2.value) + "A: {:064x}\n".format(A.value) + "B: {:064x}\n".format(B.value) + "C: {:064x}\n".format(C.value) + "D: {:064x}\n".format(D.value))

        B = C*B 
        C = D + A 
        #print("round 5 \n X: {:064x}\n".format(X2.value) + "Y: {:064x}\n".format(Y2.value) + "Z: {:064x}\n".format(Z2.value) + "A: {:064x}\n".format(A.value) + "B: {:064x}\n".format(B.value) + "C: {:064x}\n".format(C.value) + "D: {:064x}\n".format(D.value))

        D = A - D 
        #print("round 6 \n X: {:064x}\n".format(X2.value) + "Y: {:064x}\n".format(Y2.value) + "Z: {:064x}\n".format(Z2.value) + "A: {:064x}\n".format(A.value) + "B: {:064x}\n".format(B.value) + "C: {:064x}\n".format(C.value) + "D: {:064x}\n".format(D.value))

        A = Z2 * D 
        B = B - Y2 
        #print("round 7 \n X: {:064x}\n".format(X2.value) + "Y: {:064x}\n".format(Y2.value) + "Z: {:064x}\n".format(Z2.value) + "A: {:064x}\n".format(A.value) + "B: {:064x}\n".format(B.value) + "C: {:064x}\n".format(C.value) + "D: {:064x}\n".format(D.value))

        Z2 = Z2*C
        #print("round 8 \n X: {:064x}\n".format(X2.value) + "Y: {:064x}\n".format(Y2.value) + "Z: {:064x}\n".format(Z2.value) + "A: {:064x}\n".format(A.value) + "B: {:064x}\n".format(B.value) + "C: {:064x}\n".format(C.value) + "D: {:064x}\n".format(D.value))

        G = Z2
        Z2 = D * C
        C = G 
        #print("round 9 \n X: {:064x}\n".format(X2.value) + "Y: {:064x}\n".format(Y2.value) + "Z: {:064x}\n".format(Z2.value) + "A: {:064x}\n".format(A.value) + "B: {:064x}\n".format(B.value) + "C: {:064x}\n".format(C.value) + "D: {:064x}\n".format(D.value))

        X2 = A*B
        #print("round 10 \n X: {:064x}\n".format(X2.value) + "Y: {:064x}\n".format(Y2.value) + "Z: {:064x}\n".format(Z2.value) + "A: {:064x}\n".format(A.value) + "B: {:064x}\n".format(B.value) + "C: {:064x}\n".format(C.value) + "D: {:064x}\n".format(D.value))

        Y2 = G*Y2
        #print("round 11 \n X: {:064x}\n".format(X2.value) + "Y: {:064x}\n".format(Y2.value) + "Z: {:064x}\n".format(Z2.value) + "A: {:064x}\n".format(A.value) + "B: {:064x}\n".format(B.value) + "C: {:064x}\n".format(C.value) + "D: {:064x}\n".format(D.value))
        
        Z2 = Z2
        #print("round 12 \n X: {:064x}\n".format(X2.value) + "Y: {:064x}\n".format(Y2.value) + "Z: {:064x}\n".format(Z2.value) + "A: {:064x}\n".format(A.value) + "B: {:064x}\n".format(B.value) + "C: {:064x}\n".format(C.value) + "D: {:064x}\n".format(D.value))
        
     
        
        
        return point(X2, Y2, Z2)
    def reduce(self) -> 'point':
        x = self.X/self.Z
        y = self.Y/self.Z
        if(x.value%2==1): x.value = q-x.value
        if(y.value%2==1): y.value = q-y.value
        return point(x, y)
    def __str__(self): # used for debug
        # if(self.is_on_curve()):
            # text = "X: {:064x}\n".format(self.X.value) + "Y: {:064x}\n".format(self.Y.value) + "Z: {:064x}\n".format(self.Z.value)
        # else:
            # text = "Invalid point"
        text = "X: {:064x}\n".format(self.X.value) + "Y: {:064x}\n".format(self.Y.value) + "Z: {:064x}\n".format(self.Z.value)
        return text
# Test the fixed implementation with an example point
scalar_M = 0x259f4329e6f4590b9a164106cf6a659eb4862b21fb97d43588561712e8e5216a
x = number(0x0fa4d2a95dafe3275eaf3ba907dbb1da819aba3927450d7399a270ce660d2fae)
y  = number(0x2f0fe2678dedf6671e055f1a557233b324f44fb8be4afe607e5541eb11b0bea2)
mx = number(-1)*x
my = number(-1)*y
print(mx)
print(my)
X1 =  number(0x5ca8_2910_c5e3_09fd_31fa_3dfd_b540_c957_e14c_ed49_f7bf_cb3f_6cd4_d5a3_8264_cc41)
Y1 =  number(0x32c6_be10_0598_8fa5_5959_b5d0_3a4d_b3cb_5833_fb03_9976_bf8e_b76a_3b84_b649_40a7)
Z1 =  number(0x570b_acc0_1d04_49d4_1dc8_130e_7abc_823f_dc56_907d_eefd_fd8a_091e_b67d_39b7_f867)
point_M = point(X1,Y1,Z1)
point_P = point(x, y)
print("point P:")
print(point_M.reduce())
point_G = point_P * scalar_M
print("point G:")
print(point_G)

t= number(1)/point_G.Z
a = 0x4ee126d0105401b8d213e390e4a3f92eae724f4d2ab96700a5b061839e2cc1db
b = 0x3af4e2d44bf64b1fbfa2431eae14145991437239a914b3efd85d012375f7578b;
print("X: {:064x}\n".format(a*b))


#testcase 1
scalar_M = 0x259f4329e6f4590b9a164106cf6a659eb4862b21fb97d43588561712e8e5216a
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

#P3 = P + P2