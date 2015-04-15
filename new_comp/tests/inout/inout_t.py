#! /usr/bin/python3




import random



for i in range (1, 45):
	if(i < 10):
		string = "00"
	else:
		string = "0"
	string += str(i)+".dat"
	file_dat = open(string, "wt")
	string = string[0:-4]
	string = string+".ans"
	file_ans = open(string, "wt")
	
	rand_val1 = random.getrandbits(i+20)
	
	file_dat.write(str(hex(rand_val1))+'\n')
	file_ans.write(str(hex(rand_val1))+'\n')
	
	#string = string[0:-len(str(i))]
	file_dat.close()
	file_ans.close()
