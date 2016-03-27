#! /usr/bin/env python


def GCD(a, b):
	#Gives greatest common divisor using Euclid's Algorithm.
	while b:
		 a, b = b, a % b
	return a


a = input()
b = input()

a = GCD(a, b)

print(a)