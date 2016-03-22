main(/)
	
	
	*kar_test(/)
	*** *shift_test(/)
	
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




kar_test(/)
	@+F1(100)
	@+L2(100)
	@+L3(100)
	@+L4(100)
	
	8=Q2 5=Q3
	*randBN(L2/) *randBN(L3/)
	/'L2 = '>C *HprintfBN(L2/) /'\n'>C
	/'L3 = '>C *HprintfBN(L3/) /'\n'>C
	
	
	*karatsuba(L2, L3/L4)
	
	
**






*** Алгоритм карацубы перемножения 2ух больших чисел
*** http://samos-it.com/posts/recursive-karatsuba-multiplication-python.html
karatsuba(L1, L2/L3)
	@+L4(100) *** 1ая половина L1 b
	@+L5(100) *** 2ая половина L1 a
	@+L6(100) *** 1ая половина L2 d
	@+L7(100) *** 2ая половина L2 c
	@+L8(100) *** результат первых половин
	@+L9(100) *** результат вторых половин
	
	
	Q2=n/2=w ?(Q2>Q1)1 Q1=n/2=w
	P1
		?(w>0)2 L1=L8 L2=L9 ?=3
	
	P2
		/'w = '>C *printf(w/) /'\n'>C
		Q1-w*32=t L1>t=L4 w=Q4 L1=L5 Q1-w=Q5
		/'Q4 = '>C *printf(Q4/) /'\n'>C
		/'L4 = '>C *HprintfBN(L4/) /'\n'>C
		/'Q5 = '>C *printf(Q5/) /'\n'>C
		/'L5 = '>C *HprintfBN(L5/) /'\n'>C
		Q2-w*32=t L2>t=L6 w=Q6 L2=L7 Q2-w=Q7
		/'Q6 = '>C *printf(Q6/) /'\n'>C
		/'L6 = '>C *HprintfBN(L6/) /'\n'>C
		/'Q7 = '>C *printf(Q7/) /'\n'>C
		/'L7 = '>C *HprintfBN(L7/) /'\n'>C
	
	
	
	
	
	*karatsuba(L4, L6/L8)
	*karatsuba(L5, L7/L9)
	L4+L5=L4 L6+L7=L6
	*karatsuba(L4, L6/L3)
	P3
		/'tt\n'>C L3-L8-L9=L3 
		32*2*n=t 2*n+Q8=Q8 L8<t=L8
		Q3+1=Q3 L3<32=L3
		L8+L3+L9=L3 /'qq\n'>C
	P4
**





big_int_shift(L1, n/)
	n/32=x
	?(x=0)1
	Q1=l
	Q1+x=Q1 n;32=x ?(x=0)1
	
	
	
	
	P2 Q1=i DQ1 OL1i 
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
**











karatsuba1(L1, L2, L3/L3)
	@+L4(100)
	@+L5(100) *** для сохранения границ первого комплекса
	@+L6(100) *** для сохранения границ второго комплекса
	
	
	
	16=q Ol Q1=m Q2=n
	P1 m=g ?(m>n)2 n=g
	P2 ?(g<1)5 g=L5l Dl g/2=x g⊕m↦3 x=m ?=4
	P3 x=n
	P4 g;2?-1 Dg ?=1
	
	
	
	
	P5 Oi l-1=Q5 *printf(l/) /'\n'>C
	P6 ?(i>=Q5)7 *printf(L5i/) /' '>C Di ?=6
	P7 /'\n'>C
	
	
	
	
	
	
**