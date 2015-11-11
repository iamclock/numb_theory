#! /usr/bin/python3




import random


def dihotom(x, y, m):
	q = x
	z = 1
	if y&1:
		z = x
	y >>= 1
	j = 1
	while y:
		#print("j= "+str(j))
		q = q*q % m
		print("L6= "+str(hex(q))[:2]+str(hex(q))[2:].upper())
		if y&1:
			z = z*q % m
			print("L5= "+str(hex(z))[:2]+str(hex(z))[2:].upper())
		y = y >> 1
		j += 1
		#print("L6= "+str(hex(q))[:2]+str(hex(q))[2:].upper())
	return z


x = 2
y = 0x7ffffffffffffffffffffffffff#2147483647 #536870911


_z = dihotom(x,y,y)

print("x = "+str(hex(x))[:2]+str(hex(x))[2:].upper())
print("y = "+str(hex(y))[:2]+str(hex(y))[2:].upper())
print("z = "+str(hex(_z))[:2]+str(hex(_z))[2:].upper())
