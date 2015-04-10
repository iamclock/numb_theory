main(/)
	@+F1(100)
	@+L2(100)
	@+L3(100)
	
	X⇒x x;10+5⇒Q3 *** /'Q3= '>C *printf(Q3/) /'\n'>C /'x= '>C *printf(x/) /'\n'>C
	X⇒x x;20+1⇒Q2 *** /'Q2= '>C *printf(Q2/) /'\n'>C /'x= '>C *printf(x/) /'\n'>C
	*big_int_rand(L2/)
	*big_int_rand(L3/)
	/'L2= '>C *print_big_hex(L2/) /'L3= '>C *print_big_hex(L3/)
	
	
	*dihotom_big_int(L2, L3, L4/L4)
	*print_big_hex(L4/)
	/'Q3= '>C *printf(Q4/) /'\n'>C
	
	
	***/'Введите степень: '>C
	***/F1<C
	*** *scanf(F1, i, 10/b, i)
	***/'b='>C *printf(b/)  /'\n'>C
	*** *dihotom_big_int(L2, b, L3/L3)
	*** *print_big_hex(L3/)
	
	
	
	
**
	
	
	
*** Дихотомический алг-тм возведения в степень
*** L1 - число возводимое в степень, L2 - степень этого числа, L2 - модуль
	dihotom_big_int(L1, L2, L3/L3)
	@+L5(100)
	@+L6(100)
	@+L4(100)
	
	1⇒Q5⇒Q6⇒Q4⇒L4.0 Oj
	L1⇒L6 1⇒L5.0⇒i /'d L6= '>C *print_big_hex(L6/) L2j&1↪3 L1⇒L5 *** /'d L5= '>C *print_big_hex(L5/)
	§3 i<1⇒i ↑(i>L2j)4 Q6+Q6+1⇒Q4 L4*L6*L6;L3⇒L6 i&L2j↪3 Q5+Q6+1⇒Q4 L4*L5*L6;L3⇒L5 /'d L5= '>C *print_big_hex(L5/) →3
	§4 ∆j ↑(j≥Q2)5 1⇒i i>1⇒i
	§5 L5⇒L3 **
	
	