#! /usr/bin/env python3









def karat(u, v, b):
	
	t = u
	n1 = n2 = 0
while t is not 0:
	t = int(t/b)
	n1 += 1

t = v
while t is not 0:
	t = int(t/b)
	n2 += 1
#print("n1 = "+str(n1))
#print("n2 = "+str(n2))
	
	if n1 > n2:
		n = n1
	else:
		n = n2
	t = n / 2
	if t == 1 or t < 1:
		A = 
		B = 
	else:
		A = karat()
		B = karat()
	
	
	
	
	
	
	return res





b = 10
n = 1
u = 25
v = 14
karat(u, v)
