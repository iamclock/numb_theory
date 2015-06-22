
main(/)
	@+F1(100)
	@+L2(100)
	@+L3(100)
	@+L4(100)
	
	OQ1 @'0xE92593C7D74C93B4'>F1
	*big_int_input(L2, F1, 0/L2, i)
	OQ1 @'0x1ffffffffffffffffffffff'>F1
	*big_int_input(L3, F1, 0/L3, i)
	
	L2;L3=L2
	*** *print_big_hex(L2/)
	*** *print_big_hex(L3/)
	
	*dihotom_big_int(L2, L3, L3/L4)
	*** *print_big_hex(L2/)
	*** *print_big_hex(L3/)
	*print_big_hex(L4/)
	
	
	
	
	
	
	
	
	
	
	
	
**





*** Дихотомический алг-тм возведения в степень
*** L1 - число возводимое в степень, L2 - степень этого числа, L3 - модуль
	dihotom_big_int(L1, L2, L3/L5)
	@+L6(100)
	@+L4(100)
	
	1=Q5=Q6=Q4=L4.0 Oj
	L1⇒L6 1⇒L5.0⇒i=s i<1⇒i L2j&1↪3 L1⇒L5
	§3 ↑(s>=32)4 i&L2j↪7 Q5+Q6+1=l *optimize(L5, l/L5) L5*L6;L3⇒L5
	 /'L5= '>C *print_big_hex(L5/)
	§7 Q6+Q6+1=l *optimize(L6, l/L6) L6*L6;L3⇒L6
	 /'L6= '>C *print_big_hex(L6/)
	P6 Ds i<1⇒i →3
	P4 Dj ?(j>=Q2)5 Os 1=i →3
	§5
**

*** /'d L5= '>C *print_big_hex(L5/)
*** /'Q5= '>C *printf(Q5/) /' '>C
*** /'d L6= '>C *print_big_hex(L6/)



optimize(L1, n/L1)
	Q1=i n=Q1
	P1 ?(i>n)2 OL1i Di ?=1
	P2 
**