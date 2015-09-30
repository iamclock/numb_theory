#! /usr/bin/python3




#import



# the trial division method
def ttd(n, trialdiv):
	if n < 3:
		print("ERROR: n must be greater than 2")
		return
	p_list = []
	t = 0
	k = 1
	while n is not 1:
		q = n / trialdiv[k-1]
		r = n % trialdiv[k-1]
		if r == 0:
			t += 1
			p_list.append(trialdiv[k-1])
			print(trialdiv[k-1], end = " ")
			n = q
		if q > trialdiv[k-1]:
			 k += 1
			 if k > len(trialdiv):
				 k = 1
		else:
			t += 1
			p_list.append(n)
			print(n, end = " ")
			print()
			return p_list
	return p_list



n = 123

trialdiv = [3,5,7]
_list = ttd(n, trialdiv)

for i in _list:
	print(i, end = " ")
print()














