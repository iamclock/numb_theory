main(/)
	@+F1(100)
	@+L2(100)
	@+L3(100)
	@+L4(100)
	
	*** X=x x;10+5=Q3 *** /'Q3= '>C *printf(Q3/) /'\n'>C /'x= '>C *printf(x/) /'\n'>C
	*** X=x x;20+1=Q2 *** /'Q2= '>C *printf(Q2/) /'\n'>C /'x= '>C *printf(x/) /'\n'>C
	*** *big_int_rand(L2/)
	*** *big_int_rand(L3/)
	*** /'L2= '>C *print_big_hex(L2/) /'L3= '>C *print_big_hex(L3/)
	
	/F1<C
	
	*big_int_input(L2, F1, i/L2, i)
	*** *print_big_hex(L2/)
	*big_int_input(L3, F1, i/L3, i)
	*** *print_big_hex(L3/)
	*** /'i= '>C *printf(i/)  /'\n'>C
	*big_int_input(L4, F1, i/L4, i)
	*** *print_big_hex(L4/)
	
	*dihotom_big_int(L2, L3, L4/L4)
	*print_big_hex(L4/)
	*** /'Q3= '>C *printf(Q4/) /'\n'>C
	
	
	
	*** /'Введите степень: '>C
	*** /F1<C
	*** *scanf(F1, i, 10/b, i)
	*** /'b='>C *printf(b/)  /'\n'>C
	*** *dihotom_big_int(L2, b, L3/L3)
	*** *print_big_hex(L3/)
	
	
	
	
**
	
	
	
*** Дихотомический алг-тм возведения в степень
*** L1 - число возводимое в степень, L2 - степень этого числа, L2 - модуль
	dihotom_big_int(L1, L2, L3/L3)
	@+L5(100)
	@+L6(100)
	@+L4(100)
	
	1=Q5=Q6=Q4=L4.0 Oj
	L1⇒L6 1⇒L5.0⇒i L2j&1↪3 L1⇒L5 *** /'d L5= '>C *print_big_hex(L5/)
	§3 i<1⇒i ↑(i>L2j)4 Q6+Q6+1=l *optimize(L6, l/L6) L6*L6;L3⇒L6 i&L2j↪3 Q5+Q6+1=l *optimize(L5, l/L5) L5*L6;L3⇒L5 →3
	P4 Dj ?(j>=Q2)5 1=i i>1=i
	§5 L5=L3 **

*** /'d L5= '>C *print_big_hex(L5/)
*** /'Q5= '>C *printf(Q5/) /' '>C
*** /'d L6= '>C *print_big_hex(L6/)



optimize(L1, n/L1)
	Q1=i n=Q1
	P1 ?(i>=n)2 OL1i Di
	P2 
	
	
	
	**

