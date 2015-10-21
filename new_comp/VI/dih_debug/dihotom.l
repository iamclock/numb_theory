
main(/)
	*** @+F1(200)
	
	*** OQ1 @'0xE92593C7D74C93B4 0x1ffffffffffffffffffffff'>F1
	*** 5=l
	
	*** *printf(F1l/) /'\n'>C
	
	
	*** *test(/)
	
	

	***
	*main2(/)
	
	
	
	
	
	
	
	
	
**



test2(/)
	@+F1(100)
	@+L2(100)
	@+L3(100)
	@+L4(100)
	@+L5(100)
	
	OQ1 @'0x227DAAF754ED6AE027534ACEC12A8455894A8FEC565A8'>F1
	*big_int_input(L3, F1, 0/L3, i)
	***	*big_int_input(L2, F1, i/L2, i)
	*** /'z = '>C *print_big_hex(L2/)
	/'q = '>C *print_big_hex(L3/)
	OQ1 @'0x1ffffffffffffffffffffff'>F1
	*big_int_input(L5, F1, 0/L5, i)
	/'m = '>C *print_big_hex(L5/)
	
	
	
	*** Q2+Q3+1=l *optimize(L3, l/L3) L3*L2=L4
	*** /'q*z = '>C *print_big_hex(L4/)
	*** L4;L5=L4
	*** /'q*z%m = '>C *print_big_hex(L4/)
	
	L3/L5=L4
	/'z/m = '>C *print_big_hex(L4/)
	L3;L5=L4
	/'z%m = '>C *print_big_hex(L4/)
	
	
	
	
**





test(/)
	@+F1(100)
	@+L2(100)
	@+L3(100)
	@+L4(100)
	@+L5(100)
	
	OQ1 @'0x136D49B73FB874345ADC506 0x1C681D5039DB64C1E40B99C'>F1
	*big_int_input(L3, F1, 0/L3, i)
	*big_int_input(L2, F1, i/L2, i)
	/'z = '>C *print_big_hex(L2/)
	/'q = '>C *print_big_hex(L3/)
	OQ1 @'0x1ffffffffffffffffffffff'>F1
	*big_int_input(L5, F1, 0/L5, i)
	/'m = '>C *print_big_hex(L5/)
	
	
	
	Q2+Q3+1=l *optimize(L3, l/L3) L3*L2=L4
	/'q*z = '>C *print_big_hex(L4/)
	L4/L5=L4
	/'q*z/m = '>C *print_big_hex(L4/)
	
	
**







main1(/)
	@+F1(200)
	@+L2(100)
	@+L3(100)
	@+L4(100)
	@+L5(100)
	
	***#1
	OQ1 @'0x1ffffffffffffffffffffff'>F1
	*big_int_input(L3, F1, 0/L3, i)
	*** *big_int_input(L2, F1, i/L2, i)
	Oi
	P1 *** X=x x;10+5=Q3 *** /'Q3= '>C *printf(Q3/) /'\n'>C /'x= '>C *printf(x/) /'\n'>C
		 X=x x;20+1=Q2 *** /'Q2= '>C *printf(Q2/) /'\n'>C /'x= '>C *printf(x/) /'\n'>C
		*big_int_rand(L2/)
		*** *big_int_rand(L3/)
		*** /'L2= '>C *print_big_hex(L2/) /'L3= '>C *print_big_hex(L3/)
	
	***/F1<C
	
	L2;L3=L2
	Di
	
	*** *print_big_hex(L2/)
	*** *print_big_hex(L3/)
	
	*dihotom_big_int(L2, L3, L3/L5)
	/'Experiment #'>C *printf(i/) /'\n'>C
	*print_big_hex(L2/)
	*print_big_hex(L5/)
	
	?(Q5=Q2)1
	*printf(i/) /'\n'>C
	*print_big_hex(L3/)
	*print_big_hex(L2/)
	*print_big_hex(L5/)
	***/'Q3= '>C *printf(Q4/) /'\n'>C
	
	
	
	*** /'Введите степень: '>C
	*** /F1<C
	*** *scanf(F1, i, 10/b, i)
	*** /'b='>C *printf(b/)  /'\n'>C
	*** *dihotom_big_int(L2, b, L3/L3)
	*** *print_big_hex(L3/)
	
	
	
	
**




main2(/)
	@+F1(200)
	@+L2(100)
	@+L3(100)
	@+L4(100)
	@+L5(100)
	@+L6(100)
	
	***#1
	OQ1 @'0xE92593C7D74C93B4 0x1ffffffffffffffffffffff'>F1
	
	
	
	
	*big_int_input(L3, F1, 0/L3, i)
	*big_int_input(L2, F1, i/L2, i)
	Oi
	P1 *** X=x x;10+5=Q3 *** /'Q3= '>C *printf(Q3/) /'\n'>C /'x= '>C *printf(x/) /'\n'>C
		*** X=x x;20+1=Q2 *** /'Q2= '>C *printf(Q2/) /'\n'>C /'x= '>C *printf(x/) /'\n'>C
		*** *big_int_rand(L2/)
		*** *big_int_rand(L3/)
		/'L2= '>C *print_big_hex(L2/) /'L3= '>C *print_big_hex(L3/)
	
	***/F1<C
	
	L3;L2=L3
	Di
	
	*** *print_big_hex(L2/)
	*** *print_big_hex(L3/)
	
	L2=L6
	
	*dihotom_big_int(L3, L2, L6/L5)
	/'Experiment #'>C *printf(i/) /'\n'>C
	*print_big_hex(L2/)
	*print_big_hex(L5/)
	
	
	*** ?(Q5=Q2)1
	*printf(i/) /'\n'>C
	*print_big_hex(L3/)
	*print_big_hex(L2/)
	*print_big_hex(L5/)
	/'Q3= '>C *printf(Q4/) /'\n'>C
	
	
	
	*** /'Введите степень: '>C
	*** /F1<C
	*** *scanf(F1, i, 10/b, i)
	*** /'b='>C *printf(b/)  /'\n'>C
	*** *dihotom_big_int(L2, b, L3/L3)
	*** *print_big_hex(L3/)
	
	
	
	
**
	
	
	
*** Дихотомический алг-тм возведения в степень
*** L1 - число возводимое в степень, L2 - степень этого числа, L3 - модуль
*** L6 - q, L5 - z 
*** убрать optimize, сделать, чтобы не было больше 2ух модулей
*** операции над большими числами не изменяют мощность комплексов из-за этого происходит переполнение массива
	dihotom_big_int(L1, L2, L3/L5)
	2*Q3=w
	@+L6(w)
	@+L4(100)
	*** /'Function Dihotom:\n'>C
	
	1=Q5=Q6=Q4=L4.0 Oj
	L1⇒L6 1⇒L5.0⇒i=s i<1⇒i L2j&1↪3 L1⇒L5
	§3 ↑(s>=32)4 Q6+Q6+1=l *** *optimize(L6, l/L6)
		 L6*L6;L3⇒L6
	   /'L6= '>C *print_big_hex(L6/)
	i&L2j↪6 Q5+Q6+1=l
		 *printf(l/) /'\n'>C
		 *printf(L3.0/) *printf(L3.1/) *printf(L3.2/) /'\n'>C
		 *optimize(L5, l/L5)
		 /'HERE\n'>C
		 /'L5= '>C *print_big_hex(L5/)
		 /'L6= '>C *print_big_hex(L6/)
		 /'Q3 = '>C *printf(Q3/) /'\n'>C
		 
		 /'L3= '>C *print_big_hex(L3/)
		 L6*L5;L3⇒L5
	   /'L5= '>C *print_big_hex(L5/)
	P6 Ds i<1⇒i →3
	P4 Dj ?(j>=Q2)5 Os 1=i →3
	§5 *** /'L1= '>C *print_big_hex(L1/) 
		***  /'L2= '>C *print_big_hex(L2/)
		*** /'L3= '>C *print_big_hex(L3/)
		*** /'L4= '>C *print_big_hex(L4/)
		*** /'L5= '>C *print_big_hex(L5/)
	
	**

*** /'d L5= '>C *print_big_hex(L5/)
*** /'Q5= '>C *printf(Q5/) /' '>C
*** /'d L6= '>C *print_big_hex(L6/)



optimize(L1, n/L1)
	*** /'L1= '>C *print_big_hex(L1/)
	Q1=i n=Q1
	P1 ?(i>n)2 OL1i Di ?=1
	P2 
	**

