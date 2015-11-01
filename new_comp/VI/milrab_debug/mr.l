main(/)
	
	@+L1(100)
	@+L2(100)
	@+L3(100)
	
	OQ3 @'0xFF443 0xFF443'>F3
	
	OQ1=Q2=i
	*big_int_input(L1, F3, i/L1, i)
	*big_int_input(L2, F3, i/L2, i)
	
	*** *BN_eq(L1, L2/b) ?(b>0)1 ?=4
	*** *BN_gr(L1, L2/b) ?(b>0)3 ?=4
	 *BN_less(L1, L2/b) ?(b>0)2 ?=4
	P1 /'Equals\n'>C ?=4
	P2 /'Less\n'>C ?=4
	P3 /'Greater\n'>C
	
	P4
**


BN_eq(L1, L2/b)
	Ob=i
	?(Q1<Q2)2 ?(Q2<Q1)2 Q1=n
	P1 ?(L1i#L2i)2 Di ?(i<n)1 Db
	P2
**


BN_gr(L1, L2/b)
	Ob=i
	?(Q1<Q2)2 Db ?(Q2<Q1)2 Ob Q1=n
	P1 ?(L1i<L2i)2 Db ?(L2i<L1i)2 Ob Di ?(i<n)1
	P2
**


BN_less(L1, L2/b)
	Ob=i
	?(Q1>Q2)2 Db ?(Q2>Q1)2 Ob Q1=n
	P1 ?(L1i>L2i)2 Db ?(L2i>L1i)2 Ob Di ?(i<n)1
	P2
**