main(/)
	
	
	
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

0xB1BE10E6 + 0xDE46DAA0
x = 0xEB796C1B
y = 0x9004EB86
Result = 0x8478D35898375F22




kar_test(/)
	@+F1(100)
	@+L2(100)
	@+L3(100)
	@+L4(100)
	
	2=Q2 2=Q3
	*randBN(L2/) *randBN(L3/)
	/'L2 = '>C *HprintfBN(L2/) /'\n'>C
	/'L3 = '>C *HprintfBN(L3/) /'\n'>C
	*karatsuba(L2, L3/L4)
	*** *karat(L2, L3/L4)
	Q4+10=Q4
	/'L4 = '>C *HprintfBN(L4/) /'\n'>C
	
**


Q2=n/2=w ?(Q2>Q1)1 Q1=n/2=w
P1
	?(w>1)2 Q1+Q2=Q3 OL3 1=L3.0 L3*L1*L2=L3 ?=8

P2
	?(Q1<=w)3 Q1-w*32=t L1>t=L4 w=Q4 L1=L5 Q1-w=Q5 ?=4
P3
	Q1=Q4 L1=L4 1=Q5 OL5
P4
	?(Q2<w)5 Q2-w*32=t L2>t=L6 w=Q6 L2=L7 Q2-w=Q7 ?=6
P5
Q2=Q6 L2=L6 1=Q7 OL5









karat(L1, L2/L3)
	@+L4(100)
	@+L5(100)
	@+L6(100)
	@+L7(100)
	
	Oi+1=j
	Q2=L4i ?(Q2>Q1)1 Q1=L4i
	
	
	P1
		i=Q4 ?(L4i<1)2 Dj L4i/2=L4j Di ?=1
	
	
	
	
**



*** Алгоритм карацубы перемножения 2ух больших чисел
*** http://samos-it.com/posts/recursive-karatsuba-multiplication-python.html
karatsuba(L1, L2/L3)
	@+L4(100) *** 1ая половина L1 b
	@+L5(100) *** 2ая половина L1 a
	@+L6(100) *** 1ая половина L2 d
	@+L7(100) *** 2ая половина L2 c
	@+L8(100) *** результат первых половин ab
	@+L9(100) *** результат вторых половин cd
	
	Q2=n/2=w ?(Q2>Q1)1 Q1=n/2=w
	P1 
		/'L1 = '>C *HprintfBN(L1/) /'\n'>C
		/'L2 = '>C *HprintfBN(L2/) /'\n'>C
		?(n>1)2 Q1+Q2=Q3 OL3 1=L3.0 L3*L1*L2=L3
		
		/'			n = '>C *printf(n/) /'\n'>C
		/'			x = '>C *HprintfBN(L1/) /'\n'>C
		/'			y = '>C *HprintfBN(L2/) /'\n'>C
		/'			Result = '>C *HprintfBN(L3/) /'\n'>C
		
		?=8
	
	P2
		/'n = '>C *printf(n/) /'\n'>C
		/'w = '>C *printf(w/) /'\n'>C
		L1=L5 Q1-w=Q5=Q4-1=t OL4t Q1-w*32=t L1>t=L4 Q5=Q4 *** ?(Q4>0)3 Q4+1=Q4 1=L4.0
		/'L4 = '>C *HprintfBN(L4/) /'\n'>C
		/'L5 = '>C *HprintfBN(L5/) /'\n'>C
	P3
		L2=L7 Q2-w=Q7=Q6-1=t OL6t Q2-w*32=t L2>t=L6 Q7=Q6 *** ?(Q6>0)6 Q6+1=Q6 1=L6.0
		/'L6 = '>C *HprintfBN(L6/) /'\n'>C
		/'L7 = '>C *HprintfBN(L7/) /'\n'>C
	
	
	
	
	P6
		/'Q4 = '>C *printf(Q4/) /'\n'>C
		/'Q5 = '>C *printf(Q5/) /'\n'>C
		/'L4 = '>C *HprintfBN(L4/) /'\n'>C
		/'L5 = '>C *HprintfBN(L5/) /'\n'>C
		
		
		*karatsuba(L4, L6/L8) *** A
		*karatsuba(L5, L7/L9) *** B
		Q4=t+1=Q4 OL4t
		Q6=t+1=Q6 OL6t
		L4+L5=L4 L6+L7=L6
		Q4-1=t ?(L4t>0)9 t=Q4
	P9
		Q6-1=t ?(L6t>0)10 t=Q6
	P10
		*karatsuba(L4, L6/L3) *** C
	P7
		/'L3 = '>C *HprintfBN(L3/) /'\n'>C
		32*w=t w+Q3=Q3 L3-L8-L9<t=L3
		/'t = '>C *printf(t/) /'\n'>C
		/'L3 = '>C *HprintfBN(L3/) /'\n'>C
		32*n=t n+Q8=Q8 L8<t=L8
		/'t = '>C *printf(t/) /'\n'>C
		L8+L3+L9=L3
		*** /'Q8 = '>C *printf(Q8/) /'\n'>C
		*** /'Q3 = '>C *printf(Q3/) /'\n'>C
		/'L8 = '>C *HprintfBN(L8/) /'\n'>C
		/'L3 = '>C *HprintfBN(L3/) /'\n'>C
	P8
**





*** Алгоритм карацубы перемножения 2ух больших чисел
*** http://samos-it.com/posts/recursive-karatsuba-multiplication-python.html
karatsuba_orig(L1, L2/L3)
	@+L4(100) *** 1ая половина L1 b
	@+L5(100) *** 2ая половина L1 a
	@+L6(100) *** 1ая половина L2 d
	@+L7(100) *** 2ая половина L2 c
	@+L8(100) *** результат первых половин ab
	@+L9(100) *** результат вторых половин cd
	
	Q2=n/2=w ?(Q2>Q1)1 Q1=n/2=w
	P1 
		?(n>1)2 Q1+Q2=Q3 OL3 1=L3.0 L3*L1*L2=L3
		
		/'			n = '>C *printf(n/) /'\n'>C
		/'			x = '>C *HprintfBN(L1/) /'\n'>C
		/'			y = '>C *HprintfBN(L2/) /'\n'>C
		/'			Result = '>C *HprintfBN(L3/) /'\n'>C
		
		?=8
	
	P2
		Q1-w*32=t L1>t=L4 w=Q4 L1=L5 Q1-w=Q5 ?(Q5>0)3 Q5+1=Q5 1=L5.0
		*** /'L4 = '>C *HprintfBN(L4/) /'\n'>C
		*** /'L5 = '>C *HprintfBN(L5/) /'\n'>C
	P3
		Q2-w*32=t L2>t=L6 w=Q6 L2=L7 Q2-w=Q7 ?(Q7>0)6 Q7+1=Q7 1=L7.0
		*** /'L6 = '>C *HprintfBN(L6/) /'\n'>C
		*** /'L7 = '>C *HprintfBN(L7/) /'\n'>C
	
	
	P6
		
		*karatsuba(L4, L6/L8) *** A
		*karatsuba(L5, L7/L9) *** B
		*** Q4=t+1=Q4 OL4t
		*** Q6=t+1=Q4 OL6t
		L5+L4=L4 L7+L6=L6
		Q4-1=t ?(L4t>0)9 t=Q4
	P9
		Q6-1=t ?(L6t>0)10 t=Q6
	P10
		*karatsuba(L4, L6/L3) *** C
	P7
		/'L3 = '>C *HprintfBN(L3/) /'\n'>C
		32*w=t w+Q3=Q3 L3-L8-L9<t=L3
		/'L3 = '>C *HprintfBN(L3/) /'\n'>C
		32*n=t n+Q8=Q8 L8<t=L8
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