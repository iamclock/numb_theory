main(/)
	
	@+L1(100)
	@+L2(100)
	@+L3(100)
	
	OQ3 @'0xFF443 0xFF443'>F3
	
	OQ1=Q2=i
	*big_int_input(L1, F3, i/L1, i)
	*big_int_input(L2, F3, i/L2, i)
	?=4
	P1 /'Equals\n'>C ?=4
	P2 /'Less\n'>C ?=4
	P3 /'Greater\n'>C
	
	P4
**


BN_eq(L1, L2/b)
	Ob
	?(Q1<Q2)end ?(Q2<Q1)end
	
	
	
	
	
	Pend
**


BN_gr(L1, L2/b)
	Ob
	?(Q1<=Q2)end 
	
	
	
	
	Pend
**


BN_less(L1, L2/b)
	Ob
	?(Q1>=Q2)end
	
	
	
	
	Pend
**