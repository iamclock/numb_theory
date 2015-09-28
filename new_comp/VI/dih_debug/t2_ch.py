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
		print("L6= "+str(hex(q))[:2]+str(hex(q))[2:].upper())
		if y&1:
			z = z*q % m
			print("L5= "+str(hex(z))[:2]+str(hex(z))[2:].upper())
		y = y >> 1
		#print("L6= "+str(hex(q))[:2]+str(hex(q))[2:].upper())
	return z


x = 0xE92593C7D74C93B4
y = 0x1ffffffffffffffffffffff
#z = dihotom(x,y,y)

#z = 0x1C681D5039DB64C1E40B99C * 0x136D49B73FB874345ADC506
z = 0x227daaf754ed6ae027534acec12a8455894a8fec565a8
print("начальное значение z = "+hex(z))

z = z / 0x1ffffffffffffffffffffff
print("частное z = "+float.hex(z))

z = 0x227daaf754ed6ae027534acec12a8455894a8fec565a8
z = (int)(z / 0x1ffffffffffffffffffffff)
print("частное z = "+hex(z))

z = 0x227daaf754ed6ae027534acec12a8455894a8fec565a8
z = z % 0x1ffffffffffffffffffffff
print("остаток z = "+hex(z))


#_z = str(hex(z))

#print(_z[:2]+_z[2:].upper())
