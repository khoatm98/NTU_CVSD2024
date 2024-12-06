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

       
        #level 1 
        A = self.X + self.Y              
        B = self.Z * self.Z              
        
        #level 2 
        A = A*A    #(x+y)2
        
        #level 3 
        C = self.X * self.Y 
        #level 4 
        D = C + C #(2xy)
        #level 5 
        A = A - D  #(x2+y2)
        D = B * D  #z2(2xy)
        
        #level 6 
        A = B * A  #z2(x2+y2)
        #level 7 
        C = C * C  #x2y2
        #level 8
        C = C * d  #dx2y2
        #level 9
        E = B * B  #z4
        #level 10
        B = E - C  #z4
        C = E + C   #z4
        
        #level 10
        X2 = B*D #z4
        Y2 = C*A #z4
        Z2 = C*B #z4
        
        #print("X2", X2.value)
        #print("Y2", Y2.value)
        #print("Z2", Z2.value)
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
            r = r + r
            if(M_in_bin[i]=="1"):
                r = r + self
        return r
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

        B = other.Z * other.Z          # B = Z2^2
        C = self.X * other.X           # C = X1 * X2
        D = self.Y * other.Y           # D = Y1 * Y2
        E = d * C * D                  # E = d * C * D
        F = B - E                      # F = B - E
        G = B + E                      # G = B + E
        H = (self.X + self.Y) * (other.X + other.Y)  # H = (X1 + Y1) * (X2 + Y2)
        I = H - (C + D)                # I = H - (C + D)
        J = F * other.Z                # J = F * Z2
        K = G * other.Z                # K = G * Z2

        X3 = J * I                     # X3 = J * I
        Y3 = K * (C + D)               # Y3 = K * (C + D)
        Z3 = F * G                     # Z3 = F * G
        return point(X3, Y3, Z3)
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
X1 = number(0x0213a2a9da05bdaa1fa87c871ab1639ac8d09aabdd48647236545d78833e8b05)
Y1 = number(0x0e7052766ed413741cc448c4a4c39e3231637854f325858968f5ece490d47bc8)
Z1 = number(0x1)

P1 = point(X1, Y1, Z1)

X2 = number(0x0ef3bf337846b32b5b9996c3a9a1e1d19aa9b8e755b09bbed0bf325aa41f76e7)
Y2 = number(0x5f954fcb59a73b56103b452621716b448130118193debd3540fc40dfb260c422)
Z2 = number(0x5a77322f6e1a748f50499e7e2df04f2e4583ff663c2f3067585bf5d5472e1ade)

P2 = point(X2, Y2, Z2)

P3 = (P2 + P2)
print("point P3:")
print(P3)

P4 = P2.double()  # Perform point doubling
print("point P4:")
print(P4)

#P3 = P + P2