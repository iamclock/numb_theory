main(/)
	
	
	*** *test2(/)
	*** *test(/)
	*kar_test(/)
	*** *shift_test(/)
	
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
	L4-L2-L1=L4 *** Q4-1=Q4
	/'Q4 = '>C *printf(Q4/) /'\n'>C
	/'L4 = '>C *HprintfBN(L4/) /'\n'>C
	
	
**



kar_test(/)
	@+F1(100)
	@+L2(100)
	@+L3(100)
	@+L4(100)
	
	3=Q2 2=Q3
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
	@+L4(100) *** 1ая половина L1 b
	@+L5(100) *** 2ая половина L1 a
	@+L6(100) *** 1ая половина L2 d
	@+L7(100) *** 2ая половина L2 c
	@+L8(100) *** результат первых половин ab
	@+L9(100) *** результат вторых половин cd
	
	/'L1 = '>C *HprintfBN(L1/) /'\n'>C
	/'L2 = '>C *HprintfBN(L2/) /'\n'>C
	
	*** Q2 сравнивается со старым значением Q1 (t)
	Q2=n/2=w ?(Q2=Q1)1 Q1=t+1=Q1 OL1t ?(Q2>t)1 t=Q1=n/2=w Q2=t+1=Q2 OL2t
	P1
		/'Q1 = '>C *printf(Q1/) /'\n'>C
		/'Q2 = '>C *printf(Q2/) /'\n'>C
		/'n = '>C *printf(n/) /'\n'>C
		/'w = '>C *printf(w/) /'\n'>C
		?(n>1)2 *** n-1=t L1t=q 1=L1t 1=f ?(q=0)4 q=L1t L2t=q 1=L2t 2=f ?(q=0)4 q=L2t Of
	P4
		Q1+Q2=Q3 OL3 1=L3.0 L3*L1*L2=L3
		/'	n = '>C *printf(n/) /'\n'>C
		/'	x = '>C *HprintfBN(L1/) /'\n'>C
		/'	y = '>C *HprintfBN(L2/) /'\n'>C
		/'	Result = '>C *HprintfBN(L3/) /'\n'>C
		*** ?(f=0)8 L1.0=t 0=L1.0 ?(f=1)8 t=L1.0 0=L2.0
		?=8
	
	P2
		L1=L5 Q1-w=Q5=Q4-1=t OL4t Q1-w*32=t L1>t=L4 w=Q4
		*** /'Q4 = '>C *printf(Q4/) /'\n'>C
		*** /'Q5 = '>C *printf(Q5/) /'\n'>C
		*** /'L4 = '>C *HprintfBN(L4/) /'\n'>C
		*** /'L5 = '>C *HprintfBN(L5/) /'\n'>C
	P3
		L2=L7 Q2-w=Q7=Q6-1=t OL6t Q2-w*32=t L2>t=L6 w=Q6
		*** /'Q6 = '>C *printf(Q6/) /'\n'>C
		*** /'Q7 = '>C *printf(Q7/) /'\n'>C
		*** /'L6 = '>C *HprintfBN(L6/) /'\n'>C
		*** /'L7 = '>C *HprintfBN(L7/) /'\n'>C
	P6
		/'*** A\n'>C 
		*karatsuba(L4, L6/L8) *** A
		/'A L8 = '>C *HprintfBN(L8/) /'\n'>C
		/'*** B\n'>C
		*karatsuba(L5, L7/L9) *** B
		/'B L9 = '>C *HprintfBN(L9/) /'\n'>C
		Q4=t+1=Q4 OL4t
		Q6=t+1=Q6 OL6t
		L4+L5=L4 L6+L7=L6
		Q4-1=t ?(L4t>0)9 t=Q4
	P9
		Q6-1=t ?(L6t>0)10 t=Q6
	P10
		/'*** C\n'>C
		*karatsuba(L4, L6/L3) *** C
		/'C L3 = '>C *HprintfBN(L3/) /'\n'>C
	P7
		*** /'n = '>C *printf(n/) /'\n'>C
		*** /'w = '>C *printf(w/) /'\n'>C
		/'L8 = '>C *HprintfBN(L8/) /'\n'>C
		/'L9 = '>C *HprintfBN(L9/) /'\n'>C
		/'L3 = '>C *HprintfBN(L3/) /'\n'>C
		/'Q3 = '>C *printf(Q3/) /'\n'>C
		Q3=t+w=Q3 OL3t
		32*w=t
		/'Q3 = '>C *printf(Q3/) /'\n'>C
		
		L3-L8-L9<t=L3
		*** /'t = '>C *printf(t/) /'\n'>C
		/'L3 = '>C *HprintfBN(L3/) /'\n'>C
		32*n=t n+Q8=Q8 L8<t=L8
		*** /'t = '>C *printf(t/) /'\n'>C
		L8+L3+L9=L3
		*** /'Q8 = '>C *printf(Q8/) /'\n'>C
		*** /'Q3 = '>C *printf(Q3/) /'\n'>C
		/'L8 = '>C *HprintfBN(L8/) /'\n'>C
		/'L3 = '>C *HprintfBN(L3/) /'\n'>C
	P8
**








0x2bb42378ea662af4b7cc33723d836f11386c5544182353f9296bf4d2ef3fc459d294fa5642128f2b7e6074b499bc1d8f5112d9de3f7d151b4efc42c47adecba

0x2BB42378EA662AF4B7CC336D8D9A1313434C16046CD10CB85924D46402C95C09D294FA5B448B1B0BC13337EA4B31D6FF5112D9DE6D7F81AB4EFC42C47ADECBA





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