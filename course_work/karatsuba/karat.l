main(/)
	@+F1(100)
	@+L2(100)
	@+L3(100)
	@+L4(100)
	
	
	/F1<C
	
	
	*big_int_input(L2, F1, 0/L2, i)
	*print_big_hex(L2/)
	*big_int_input(L3, F1, i/L3, i)
	*print_big_hex(L3/)
	*karatsuba(L2, L3, L4/L4)
	
**








karatsuba(L1, L2, L3/L3)
	@+L4(100)
	@+L5(100) *** для сохранения границ первого комплекса
	@+L6(100)
	@+L7(100)
	@+L8(100)
	
	
	16=q Ol Q1=m Q2=n
	P1 m=g ?(m>n)2 n=g
	P2 ?(g<=1)5 g=L5l Dl g/2=k g⊕m↦3 k=m ?=4
	P3 k=n
	P4 g;2?-1 Dg
	P5
	k=Q6
	
	
	
	
	1=Q4 q=L4.0
	
	L4<q*2*k=x
	
	*print_big_hex(L4/)
	
	
	
	
	
	L6*L7*q*x=L8
	
	*print_big_hex(L8/)
	
	
	
	
	
	
	
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