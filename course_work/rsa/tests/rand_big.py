#! /usr/bin/python3




import random


def xgcd(b, n):
    x0, x1, y0, y1 = 1, 0, 0, 1
    while n != 0:
        q, b, n = b // n, n, b % n
        x0, x1 = x1, x0 - q * x1
        y0, y1 = y1, y0 - q * y1
    return  b, x0, y0



for i in range (1, 65):
	if(i < 10):
		string = "00"
	else:
		string = "0"
	string += str(i)+".dat"
	file_dat = open(string, "wt")
	string = string[0:-4]
	string = string+".ans"
	file_ans = open(string, "wt")
	
	
	
	rand_val1 = random.getrandbits(i*20+8)
	rand_val2 = random.getrandbits(i*30+12)
	"""
	rand_module = 0
	while rand_module == 0:
		rand_module = random.getrandbits(17)
	"""
	
	print(hex(rand_val1))
	print(hex(rand_val2))

	# print(hex(rand_module))
	
	file_dat.write(str(hex(rand_val1))+'\n'+str(hex(rand_val2))+'\n')
	
	b,x,y = xgcd(rand_val1, rand_val2)
	
	
	
	
	print(hex(b))
	if x < 0:
		x += max(rand_val1, rand_val2)
	print(hex(x))
	if y < 0:
		y += max(rand_val1, rand_val2)
	print(hex(y))
	
	
	file_ans.write('0'+'x'+str(hex(b))[2:].upper()+'\n'+'0'+'x'+str(hex(x))[2:].upper()+'\n'+'0'+'x'+str(hex(y))[2:].upper()+'\n')
	
	string = string[0:-len(str(i))]
	file_dat.close()
	file_ans.close()
