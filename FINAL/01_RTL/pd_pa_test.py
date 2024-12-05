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
    def __init__(self, X: 'number', Y: 'number', Z: 'number'):
        self.X = X
        self.Y = Y
        self.Z = Z

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

        A = self.Z * self.Z * number(2)  # A = 2 * Z1^2
        B = self.X + self.Y              # B = X1 + Y1
        C = self.X * self.X              # C = X1^2
        D = self.Y * self.Y              # D = Y1^2
        E = p - (C + D)                  # E = p - (C + D)
        F = C - D                        # F = C - D
        J = F - A                        # J = F - A
        K = (B * B) + E                  # K = B^2 + E

        X2 = J * K                       # X2 = J * K
        Y2 = F * E                       # Y2 = F * E
        Z2 = F * J                       # Z2 = F * J
        print("A", A.value)
        print("B", B.value)
        print("C", C.value)
        print("D", D.value)
        print("E", E.value)
        print("F", F.value)
        print("J", J.value)
        print("K", K.value)
        print("X2", X2.value)
        print("Y2", Y2.value)
        print("Z2", Z2.value)
        return point(X2, Y2, Z2)


    def __add__(self, other: 'point') -> 'point':
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
        print("d", d.value)
        print("X1", X1.value)
        print("Y1", Y1.value)
        print("Z1", Z1.value)
        print("X2", other.X.value)
        print("Y2", other.Y.value)
        print("Z2", other.Z.value)
        print("B", B.value)
        print("C", C.value)
        print("D", D.value)
        print("E", E.value)
        print("F", F.value)
        print("G", G.value)
        print("H", H.value)
        print("I", I.value)
        print("J", J.value)
        print("K", K.value)
        print("X3", X3.value)
        print("Y3", Y3.value)
        print("Z3", Z3.value)
        return point(X3, Y3, Z3)
# Test the fixed implementation with an example point
X1 = number(0x321)
Y1 = number(0x111)
Z1 = number(1)

P = point(X1, Y1, Z1)
P2 = P.double()  # Perform point doubling
P3 = P + P2