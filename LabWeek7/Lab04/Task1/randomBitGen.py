import random
array_name = "Registers" ##Name of array of registers 

register_len = 64 ##size of each register in that array
file_len = 32 ## Number of registers in the array
number_systems = {2 : ["'b", 2], 8 : ["'o", 8], 10 : ["'d", 10], 16 : ["'h", 16]} ##Work in progress

selected_base = 2 ## a part of the work in progrss.


##Dont Bother with the Code Below.
for i in range(file_len):
	
	x = array_name + "[" + str(i) + "] <= " + str(register_len) + number_systems[selected_base][0]
	
	for j in range(register_len):
		temp = random.randint(0, 1000) % number_systems[selected_base][1]
		if i == 0:
			temp = 0
		x += str(temp)
	x += ";"
	print(x)
