#! /usr/bin/python3




import random


def dihotom(x, y, m):
	q = x
	z = 1
	while y:
		if (y&1):
			z = z*q % m
		y = y >> 1
		q = q*q % m
	return z



#i = 7
for i in range (1, 63):
	string = str(i)+".dat"
	file_dat = open(string, "wt")
	string = string[0:-4]
	string = string+".ans"
	file_ans = open(string, "wt")
	
	rand_val1 = random.getrandbits(i+35)
	rand_val2 = random.getrandbits(i+12)
	"""
	rand_module = 0
	while rand_module == 0:
		rand_module = random.getrandbits(17)
	
	
	
	print(hex(rand_val1))
	print(hex(rand_val2))
	print(hex(rand_module))
	"""
	rand_val1 = rand_val1 + rand_val2
	file_dat.write(str(hex(rand_val1))+'\n'+str(hex(rand_val2))+'\n'+str(hex(rand_module)))
	
	#rand_val1 = rand_val1**rand_val2 % rand_module
	rand_val1 = dihotom(rand_val1, rand_val2, rand_module)
	print(hex(rand_val1))
	
	file_ans.write(str(hex(rand_val1))+'\n')
	
	string = string[0:-len(str(i))]
	file_dat.close()
	file_ans.close()
