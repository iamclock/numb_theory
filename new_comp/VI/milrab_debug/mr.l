main(/)
	
	@+L1(100)
	@+L2(100)
	@+L3(100)
	
	OQ3 @'0xFF443 0xFF443'>F3
	
	OQ1=Q2=i
	*big_int_input(L1, F3, i/L1, i)
	*big_int_input(L2, F3, i/L2, i)
	
	*** *BN_eq(L1, L2/b) ?(b>0)1 ?=6
	*** *BN_less(L1, L2/b) ?(b>0)2 ?=6
	*** *BN_gr(L1, L2/b) ?(b>0)3 ?=6
	*** *BN_leq(L1, L2/b) ?(b>0)4 ?=6
	*** *BN_greq(L1, L2/b) ?(b>0)5 ?=6
	P1 /'Equals\n'>C ?=6
	P2 /'Less\n'>C ?=6
	P3 /'Greater\n'>C ?=6
	P4 /'Less or Equals\n'>C ?=6
	P5 /'Greater or Equals\n'>C
	
	P6
**

*** проверка, что 2 больших числа равны
BN_eq(L1, L2/b)
	Ob=i
	?(Q1<Q2)2 ?(Q2<Q1)2 Q1=n
	P1 ?(L1i#L2i)2 Di ?(i<n)1 Db
	P2
**





*** проверка, что большое число L1 больше числа L2
BN_gr(L1, L2/b)
	Ob=i
	?(Q1<Q2)2 Db ?(Q2<Q1)2 Ob Q1=n
	P1 ?(L1i<L2i)2 Db ?(L2i<L1i)2 Ob Di ?(i<n)1
	P2
**




*** проверка, что большое число L1 меньше числа L2
BN_less(L1, L2/b)
	Ob=i
	?(Q1>Q2)2 Db ?(Q2>Q1)2 Ob Q1=n
	P1 ?(L1i>L2i)2 Db ?(L2i>L1i)2 Ob Di ?(i<n)1
	P2
**




*** проверка, что большое число L1 больше ил равно числу L2
BN_greq(L1, L2/b)
	Ob=i
	?(Q1<Q2)2 Db ?(Q2<Q1)2 Ob Q1=n
	P1 ?(L1i<L2i)2 Di ?(i<n)1 Db
	P2
**



*** проверка, что большое число L1 меньше или равно числу L2
BN_leq(L1, L2/b)
	Ob=i
	?(Q1>Q2)2 Db ?(Q2>Q1)2 Ob Q1=n
	P1 ?(L1i>L2i)2 Di ?(i<n)1 Db
	P2
**