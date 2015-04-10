#! /usr/bin/python3





def dihotom(x, y, m):
	q = x
	z = 1
	if (y%2):
		z = x
	while y:
		if (y%2):
			z = z*q % m
		y = y > 1
		q = q*q % m
	return z








x = int(input(), 16)
#print(x)
y = int(input(), 16)
#print(y)
m = int(input(), 16)
#print(m)
x = dihotom(x, y, m)
print(hex(x))