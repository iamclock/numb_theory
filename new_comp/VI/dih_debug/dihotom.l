main(/)
	
**


bnpowTest(/)
	@+F1(200)
	@+L2(100)
	@+L3(100)
	@+L4(100)
	@+L5(100)
	
	***#1
	OQ1 @'0x1ffffffffffffffffffffff'>F1
	*inputBN(L3, F1, 0/L3, i)
	*** *inputBN(L2, F1, i/L2, i)
	Oi
	P1 *** X=x x;10+5=Q3 *** /'Q3= '>C *printf(Q3/) /'\n'>C /'x= '>C *printf(x/) /'\n'>C
		 X=x x;20+1=Q2 *** /'Q2= '>C *printf(Q2/) /'\n'>C /'x= '>C *printf(x/) /'\n'>C
		*randBN(L2/)
		*** *big_int_rand(L3/)
		*** /'L2= '>C *HprintfBN(L2/) /'L3= '>C *HprintfBN(L3/)
	
	***/F1<C
	
	L2;L3=L2
	Q3=Q2
	Di
	
	*** *HprintfBN(L2/)
	*** *HprintfBN(L3/)
	
	*dihotom_big_int(L2, L3, L3/L5)
	/'Experiment #'>C *printf(i/) /'\n'>C
	*** *HprintfBN(L2/)
	*** *HprintfBN(L5/)
	
	
	*** /'Q2= '>C *printf(Q2/) /'\n'>C
	*** /'Q5= '>C *printf(Q5/) /'\n'>C
	
	?(i=50000)2 ?(Q5=Q2)1
	*printf(i/) /'\n'>C
	*HprintfBN(L3/)
	*HprintfBN(L2/)
	*HprintfBN(L5/)
	***/'Q3= '>C *printf(Q3/) /'\n'>C
	P2
	
**


lnpowTest(/)

	***@+L1(100)
	***OQ1
	*** https://ru.wikipedia.org/wiki/%D0%9C%D0%B0%D0%BB%D0%B0%D1%8F_%D1%82%D0%B5%D0%BE%D1%80%D0%B5%D0%BC%D0%B0_%D0%A4%D0%B5%D1%80%D0%BC%D0%B0
	
	2147483647=p *** - простое
	*** 96557=p *** простое
	*** 96558=p *** составное
	Oi
	*** *trial_division_method(p/L1)
	
	P1 X;p=a Di
		 *pow(a, p, p/b)
		 /'#'>C *printf(i/) /'\n'>C
		 ?(i=50000)4 ?(a=b)1
	P3
		*** /'a = '>C *printf(a/) /'\n'>C
		 /'a = '>C *Hprintf(a/) /'\n'>C
		*** /'p = '>C *printf(p/) /'\n'>C
		 /'p = '>C *Hprintf(p/) /'\n'>C
		*** /'b = '>C *printf(b/) /'\n'>C
		/'b = '>C *Hprintf(b/) /'\n'>C
	P4
**



*** Дихотомический алг-тм возведения в степень
*** L1 - число возводимое в степень, L2 - степень этого числа, L3 - модуль
*** L6 - q, L5 - z 
*** 01.11.2015 операции над большими числами не изменяют мощность комплексов из-за этого происходит переполнение массива
dihotom_big_int(L1, L2, L3/L5)
	@+L6(100)
	@+L4(100)
	
	1=Q5=Q6=Q4=L4.0 Oj
	L1⇒L6 Q3+Q3=l *optimize(L6, l/L6) *optimize(L5, l/L5) 1⇒L5.0⇒i=s i<1⇒i L2j&1↪3 L1⇒L5 *optimize(L5, l/L5)
	§3 ↑(s>=32)4 L6*L6;L3⇒L6
	   *** /'L6= '>C *print_big_hex(L6/)
	i&L2j↪6 L6*L5;L3⇒L5
	   *** /'L5= '>C *print_big_hex(L5/)
	P6 Ds i<1⇒i →3
	P4 Dj ?(j>=Q2)5 Os 1=i →3
	§5 *big_int_cut_zeros(L5/L5)
**

*** /'d L5= '>C *print_big_hex(L5/)
*** /'Q5= '>C *printf(Q5/) /' '>C
*** /'d L6= '>C *print_big_hex(L6/)



optimize(L1, n/L1)
	Q1=i n=Q1
	P1 ?(i>n)2 OL1i Di ?=1
	P2 
**

*** функция отрезает лишние нули и возвращает большое число без первых нулей(изменяет мощность комплекса)
big_int_cut_zeros(L1/L1)
	Q1-1=i
	P1 ?(L1i#0)2 Q1-1=Q1 Yi ?=1
	P2
**
