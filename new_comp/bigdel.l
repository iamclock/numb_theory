







main(/)
	@+L1(100)
	@+L2(100)
	@+L3(100)
	
	2=L1.0
	30=L2.0
	1=Q1=Q2
	L1*L2=L1
	
	***2>1=a
	*** *printf(a/) /'\n'>C
	
	
	*print_big_hex(L1/)
	*print_big_hex(L2/)
	*print_big_hex(L3/)
	
	
	
	
	
	**



*** L3 - остаток, L4 - частное
*** в зависимости от нужного, мощность комплекса
*** ставится больше нуля
*** m - mask
*** s - shift
*** 
big_div(L1, L2/L3, L4)
	
	?(L1>L2)2 ?(Q4=0)1 1=Q4 OL4.0
	P1 ?(Q3=0)?_1 L1=L3 ?=?_1
	
	P2 ?(Q2>1)4 ?(Q4=0)3 big_divbase(L1, L2.0/L3, L4)
	P3 ?(Q3=0)?_1 big_divbase(L1, L2.0/L3, L4) ?=?_1
	P4 ?(Q4=0)5 Q1-Q2+1=Q4
	P5 Os 8000h=m 
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	P?_1 **

























big_divbase(L1, x/L2, L3)
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	**