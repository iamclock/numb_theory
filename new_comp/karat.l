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
	@+L6(100) *** для сохранения границ второго комплекса
	
	
	
	16=q Ol Q1=m Q2=n
	P1 m=g ?(m>n)2 n=g
	P2 ?(g<1)5 g=L5l Dl g/2=L5l g⊕m↦3 L5l=m Dl ?=4
	P3 L5l=n
	P4 g;2?-1 Dg ?=1
	
	
	
	
	P5 Oi l-1=Q5 *printf(l/) /'\n'>C
	P6 ?(i>=Q5)7 *printf(L5i/) /' '>C Di ?=6
	P7 /'\n'>C
	
	
	
	
	
	
	/*
	16=q Ol
	P1 Q1=n ?(Q1>Q2)2 Q2=n
	P2 n/2=L5l Dl
	
	16=q Oi=j Q1=L5i Q2=L6j
	P1 L5i=n Di ?(Q1>Q2)2 L6j=n Yi Dj
	P2 n/2=L5l Dl
	*/
	
	
	
	
**