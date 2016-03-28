main(/)
	
	
	*** *test2(/)
	*** *test(/)
	*kar_test(/)
	*** *shift_test(/)
	*** *for_testing(/)
	
	
**



for_testing(/)
	@+L1(1000)
	@+L2(1000)
	@+F3(1000)
	@+L4(1000)
	
	OQ3 /F3<C *inputBN(L1, F3, 0/L1, k)
	OQ3 /F3<C *inputBN(L2, F3, k/L2, k)
	*** /'L1 = '>C *HprintfBN(L1/) /'\n'>C
	*** /'L2 = '>C *HprintfBN(L2/) /'\n'>C
	*karatsuba(L1, L2/L4)
	*** /'L4 = '>C
	*HprintfBN(L4/)
	*** /'\n'>C
**

test(/)
	@+L1(100)
	@+L2(100)
	@+F3(100)
	
	OQ3 @'0xB1BE10E6'>F3 *inputBN_2(L1, F3/L1)
	OQ3 @'0xDE46DAA0'>F3 *inputBN_2(L2, F3/L2)
	
	*** Q1+1=Q1
	L1+L2=L1
	
	/'Q1 = '>C *printf(Q1/) /'\n'>C
	/'L1 = '>C *HprintfBN(L1/) /'\n'>C
**


shift_test(/)
	
	@+L1(100)
	8=Q1
	*randBN(L1/)
	/'L1 = '>C *HprintfBN(L1/) /'\n'>C
	*** 32*2*Q1=t 2*Q1+Q1=Q1 L1<t=L1
	*** Q1/2*32=t L1>t<t=L1
	/'L1 = '>C *HprintfBN(L1/) /'\n'>C
	
**


test2(/)
	@+L1(100)
	@+L2(100)
	@+F3(100)
	@+L4(100)
	OQ3 @'0x340472C76AEFAA4C'>F3
	*inputBN_2(L1, F3/L1)
	OQ3 @'0x5AEC1A50836D8D00'>F3
	*inputBN_2(L2, F3/L2)
	OQ3 @'0x11BE0EC564745ED50'>F3
	*inputBN_2(L4, F3/L4)
	*** /'L1 = '>C *HprintfBN(L1/) /'\n'>C
	*** /'L2 = '>C *HprintfBN(L2/) /'\n'>C
	/'Q1 = '>C *printf(Q1/) /'\n'>C
	L4-L2-L1=L4
	*** Q4-1=Q4
	/'Q4 = '>C *printf(Q4/) /'\n'>C
	/'L4 = '>C *HprintfBN(L4/) /'\n'>C
	
	
**

kar_test(/)
	@+F1(100)
	@+L2(100)
	@+L3(100)
	@+L4(100)
	
	2=Q2 8=Q3
	*randBN(L2/) *randBN(L3/)
	/'L2 = '>C *HprintfBN(L2/) /'\n'>C
	/'L3 = '>C *HprintfBN(L3/) /'\n'>C
	*karatsuba(L2, L3/L4)
	Q4+10=Q4
	/'L4 = '>C *HprintfBN(L4/) /'\n'>C
	
**


*** Алгоритм карацубы перемножения 2ух больших чисел
*** http://samos-it.com/posts/recursive-karatsuba-multiplication-python.html
*** f - признак нулевого комплекса - требуется восстановить значение 0
karatsuba(L1, L2/L3)
	@+L4(1000) *** 1ая половина L1 b
	@+L5(1000) *** 2ая половина L1 a
	@+L6(1000) *** 1ая половина L2 d
	@+L7(1000) *** 2ая половина L2 c
	@+L8(1000) *** результат первых половин ab
	@+L9(1000) *** результат вторых половин cd
	@+L11(1000)
	@+L12(1000)
	
	Q1=Q11 L1=L11 Q2=Q12 L2=L12
	
	*** /'L11 = '>C *HprintfBN(L11/) /'\n'>C
	*** /'L12 = '>C *HprintfBN(L12/) /'\n'>C
	
	*** Q2 сравнивается со старым значением Q1 (t)
	*** мощность одного из комплексов увеличивается до максимума n
	Q12=n/2=w ?(Q12=Q11)1 Q11=t ?(Q12>t)1 t=Q11=n/2=w
	P1
		*optimize(L11, n/L11) *optimize(L12, n/L12)
		*** /'Q11 = '>C *printf(Q11/) /'\n'>C
		*** /'Q12 = '>C *printf(Q12/) /'\n'>C
		*** /'n = '>C *printf(n/) /'\n'>C
		*** /'w = '>C *printf(w/) /'\n'>C
		?(n>1)2
		*** n-1=t L11t=q 1=L11t 1=f ?(q=0)4 q=L11t L12t=q 1=L12t 2=f ?(q=0)4 q=L12t Of
		Q11+Q12=Q3 OL3 1=L3.0 L3*L11*L12=L3
		*** /'	n = '>C *printf(n/) /'\n'>C
		*** /'	x = '>C *HprintfBN(L11/) /'\n'>C
		*** /'	y = '>C *HprintfBN(L12/) /'\n'>C
		*** /'	Result = '>C *HprintfBN(L3/) /'\n'>C
		*** ?(f=0)8 L11.0=t 0=L11.0 ?(f=1)8 t=L11.0 0=L12.0
		?=8
	
	P2
		n;2?-4 n=t+1=Q11=Q12=n/2=w OL12t OL11t
	P4
		L11=L5 Q11-w=Q5=Q4-1=t OL4t Q11-w*32=t L11>t=L4 w=Q4
		*** /'Q4 = '>C *printf(Q4/) /'\n'>C
		*** /'Q5 = '>C *printf(Q5/) /'\n'>C
		*** /'L4 = '>C *HprintfBN(L4/) /'\n'>C
		*** /'L5 = '>C *HprintfBN(L5/) /'\n'>C
	P3
		L12=L7 Q12-w=Q7=Q6-1=t OL6t Q12-w*32=t L12>t=L6 w=Q6
		*** /'Q6 = '>C *printf(Q6/) /'\n'>C
		*** /'Q7 = '>C *printf(Q7/) /'\n'>C
		*** /'L6 = '>C *HprintfBN(L6/) /'\n'>C
		*** /'L7 = '>C *HprintfBN(L7/) /'\n'>C
	P6
		*** /'*** A\n'>C
		*karatsuba(L4, L6/L8) *** A
		
		***/'A = hex('>C *HprintfBN(L4/) /' * '>C *HprintfBN(L6/) /') = '>C *HprintfBN(L8/) /'\n'>C
		
		*karatsuba(L5, L7/L9) *** B
		
		*** /'B = hex('>C *HprintfBN(L5/) /' * '>C *HprintfBN(L7/) /') = '>C *HprintfBN(L9/) /'\n'>C
		
		Q4=t+1=Q4 OL4t
		Q6=t+1=Q6 OL6t
		L4+L5=L4 L6+L7=L6
		Q4-1=t ?(L4t>0)9 t=Q4
	P9
		Q6-1=t ?(L6t>0)10 t=Q6
	P10
		*karatsuba(L4, L6/L3) *** C
		
		*** /'C = hex('>C *HprintfBN(L4/) /' * '>C *HprintfBN(L6/) /') = '>C *HprintfBN(L3/) /'\n'>C
		
	P7
		*** /'n = '>C *printf(n/) /'\n'>C
		*** /'w = '>C *printf(w/) /'\n'>C
		*** /'L8 = '>C *HprintfBN(L8/) /'\n'>C
		*** /'L9 = '>C *HprintfBN(L9/) /'\n'>C
		*** /'L3 = '>C *HprintfBN(L3/) /'\n'>C
		*** /'1.Q3 = '>C *printf(Q3/) /'\n'>C
		Q3=t+w=Q3 OL3t
		w=q*32=t
		
		*** /'(C - B - A) = hex('>C *HprintfBN(L3/) /' - '>C *HprintfBN(L8/) /' - '>C *HprintfBN(L9/) /') = '>C
		
		L3-L8-L9=L3
		
		*** /'L3 = '>C *HprintfBN(L3/) /'\n'>C
		*** /'t = '>C *printf(t/) /'\n'>C
		
		*** /'result = hex(('>C *HprintfBN(L8/) /' << ('>C *printf(n/) /'*32)) + ('>C *HprintfBN(L3/) /' << ('>C *printf(q/) /'*32)) + '>C *HprintfBN(L9/) /')\n'>C
		
		L3<t=L3
		
		32*n=t n+Q8=Q8 L8<t=L8
		*** /'t = '>C *printf(t/) /'\n'>C
		
		*** /'total = hex( '>C *HprintfBN(L8/) /' + '>C *HprintfBN(L3/) /' + '>C *HprintfBN(L9/) /') = '>C
		
		L8+L3+L9=L3
		
		*** /'L3 = '>C *HprintfBN(L3/) /'\n'>C
		*** /'Q8 = '>C *printf(Q8/) /'\n'>C
		*** /'Q3 = '>C *printf(Q3/) /'\n'>C
		*** /'L8 = '>C *HprintfBN(L8/) /'\n'>C
		*** /'L3 = '>C *HprintfBN(L3/) /'\n'>C
	P8
**

*** /'A = hex('>C *HprintfBN(L/) /' * '>C *HprintfBN(L/) /') = '>C *HprintfBN(L/) /'\n'>C


*** /'(C - B - A) = hex('>C *HprintfBN(L3/) /' - '>C *HprintfBN(L9/) /' - '>C *HprintfBN(L8/) /')\n'>C


*** /'result = hex(('>C *HprintfBN(L8/) /' << ('>C *printf(n/) /'*32)) + ('>C *HprintfBN(L3/) /' << ('>C *printf(w/) /'*32)) + '>C *HprintfBN(L9/) /')\n'>C
*** /'total = hex( '>C *HprintfBN(L8/) /' + '>C *HprintfBN(L3/) /' + '>C *HprintfBN(L9/) /')\n'>C


