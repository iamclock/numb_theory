#! /usr/bin/python3




import random


def dihotom(x, y, m):
	q = x
	z = 1
	if y&1:
		z = x
	y >>= 1
	while y:
		q = q*q % m
		#print("L6= "+str(hex(q))[:2]+str(hex(q))[2:].upper())
		if y&1:
			z = z*q % m
			#print("L5= "+str(hex(z))[:2]+str(hex(z))[2:].upper())
		y = y >> 1
		#print("L6= "+str(hex(q))[:2]+str(hex(q))[2:].upper())
	return z


x = 0xE92593C7D74C93B4
y = 0x1ffffffffffffffffffffff


_z = dihotom(x,y,y)

print("x = "+str(hex(x))[:2]+str(hex(x))[2:].upper())
print("z = "+str(hex(_z))[:2]+str(hex(_z))[2:].upper())
