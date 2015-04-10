#! /usr/bin/python3



x = int(input(), 16)
y = int(input(), 16)
m = int(input(), 16)
x = x**y % m
print(hex(x))