import random

x = "Registers"
bitlen = 5

for i in range(32):
	x += "[" + str(i) + "] <= " + str(bitlen) + "'b"
	for j in range(bitlen):

		a = (random.randint(0, 10000000)) % 2
		if i == 0:
			a = 0
		x += str(a)
	x += ";"
	print(x)
	x = "Registers"
