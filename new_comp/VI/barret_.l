main(/)
	
	@+F1(100)
	@+L2(100)
	@+L3(100)
	@+L4(100)
	
	
	OQ2⇒Q3
	
	***/'Введите число и модуль: '>C
	***/F1<C
	
	@'0x123 0x12'>F1 *** для отладки
	
	*big_int_input(L2, F1, 0/L2, i)
	*big_int_input(L3, F1, i/L3, i)
	↑(Q3>Q2)10
	*bigint_bits_count(L2, 4/k)
	/'k= '>C *printf(k/) /'\n'>C
	*bigint_bits_count(L3, 4/l)
	/'l= '>C *printf(l/) /'\n'>C
	k*2⇒q
	↑(l>q)10
	
	
	4⇒b
	
	*** *barmod(L2, L3, b/L4)
	/'Q4= '>C *printf(Q4/)
	→21
	
	
	
	
	
	§10 /'ОШИБКА: модуль больше чем число.\n'>C →21
	§21
	**

***подсчёт битов в числе
*** L1 - большое число, b - система счисления
bigint_bits_count(L1, b/k)
	Oy⇒j b⇒t
	§4 t>1⇒t ↑(t=0)5 ∆j y<1⇒y y∨1⇒y →4
	§5
	/'j= '>C *printf(j/) /'\n'>C
	Ok⇒i Q1↪3
	Q1-1⇒i 32⇒s
	§1  y<s⇒t s⇒k L1i&t⇒x↪2 ∆k →3
	§2 s-j⇒s ↑(s<32)1
	§3 i*32+k⇒k
**



barmod(L1, L2, b/L4)
	@+L3(100) *** b -> b^2
	@+L5(100) *** b^k-1 или b^k+1
	@+L6(100) *** q
	@+L7(100) *** z
	@+L8(100) *** r1
	@+L9(100) *** r2
	@+L10(100) *** r'
	
	b⇒L3.0 1⇒Q3 /'L3= '>C *print_big_hex(L3/) *bigint_bits_count(L1/k) 1⇒Q6 k⇒L6.0 /'L6= '>C *print_big_hex(L6/) *bigint_pow(L3, L6/L5)
	L5⇒L7 L5/L3⇒L5 L7*L7⇒L7 L7/L2⇒L7 L3*L3⇒L3
	/'Q7= '>C *printf(Q7/) /'\n'>C
	/'L7= '>C *print_big_hex(L7/)
	/'Q5= '>C *printf(Q5/) /'\n'>C
	/'L5= '>C *print_big_hex(L5/)
	L1/L5⇒L6 L6*L7⇒L6 L5*L3⇒L5 L6/L5⇒L6
	
	L1;L5⇒L8
	L6*L2⇒L9 L9;L5⇒L9
	
	
	
	
	
	
	/'r2= '>C *print_big_hex(L9/)
	/'r1= '>C *print_big_hex(L8/)
	
	OL4.0
**

bigint_pow(L1, L2/L5)
	1⇒i Oj
	L1⇒L5
	§1 ↑(i≥L2j)2 ↑(j≥Q2)3 ∆i L5*L1⇒L5 *** *printf(i/) /'\n'>C /'L5= '>C  *print_big_hex(L5/)
	↑(i>0)1
	§2 Oi ∆j →1 *** возможно 1⇒i
	§3
**



*** Не работает(не может умножить 0x100000000 на само себя в L6) и программа завершается
*** Алгоритм возведения в степень
*** L1 - число возводимое в степень, L2 - степень этого числа
bigint_pow_(L1, L2/L5)
	@+L6(100)
	@+L4(100)
	
	
	1⇒Q5⇒Q6⇒Q4⇒L4.0 Oj
	L1⇒L6 1⇒L5.0⇒i⇒s i<1⇒i L2j&1↪3 L1⇒L5
	§3 ↑(s≥32)4 Q6+Q6+1⇒l *optimize(L6, l/L6) L6*L6⇒L6
	*** /'L6= '>C *print_big_hex(L6/)
	i&L2j↪6 Q5+Q6+1⇒l *optimize(L5, l/L5) L5*L6⇒L5
	*** /'L5= '>C *print_big_hex(L5/)
	§6 *** /'s= '>C *printf(s/) /'\n'>C
		 ∆s
		 *** /'i= '>C *printf(i/) /'\n'>C
		 i<1⇒i →3
	§4 ∆j ↑(j≥Q2)5 Os 1⇒i →3
	§5 /'sss'>C
**



optimize(L1, n/L1)
	Q1⇒i n⇒Q1
	§1 ↑(i>n)2 OL1i ∆i →1
	§2 
**


bigint_greater(L1, L2/b)
	Oj⇒b ∆b ↑(Q1>Q2)end ↑(Q1=Q2)1 →preend
	§1 ↑(j≥Q1)preend ↑()
	
	
	
	
	
	
	Ppreend
	Pend
**



bigint_less(L1, L2/b)
	Oj⇒b ∆b ↑(Q1<Q2)end ↑(Q1=Q2)1 Ob →end
	
	
	
	
	
	
	
	
	
	
	Pend
**



bigint_equals(L1, L2/b)
	Oj⇒b ∆b ↑(Q1=Q2)1 →2
	§1 ↑(j≥Q1)3 ↑(L1j≠L2j)2 ∆j →1
	§2 Ob
	§3
**



bigint_greq(L1, L2/b)
	
	
	
	
	
	
	
	
	
**



bigint_lesseq(L1, L2/b)
	
	
	
	
	
	
	
	
	
	
**




barmod_little(b, x, m/r)
	Oz
	↑(m=0)9 ↑(b<3)10
	80000000h⇒y Ok
	*** *printf(m/) /'\n'>C
	m⇒t
	§1 t/b⇒t ∆k ↑(t>0)1
	§2 2*k⇒t
	*dihotom2(b, t/y)
	y/m⇒z
	k-1⇒t
	dihotom2()
	⇒q
	
	
	
	
	
	
	
	
	
	→11
	
	§9 /'ОШИБКА: модуль должен быть больше нуля\n'>C →11
	§10 /'ОШИБКА: b должно быть больше 3\n'>C
	
	
	§11
	**
	
	
*** BACKU§

*** подсчёт битов в обоих числах
***↑(Q2<Q3)10 Q2-1⇒j⇒i ↑(Q2=Q3)1 Q3-1⇒i
***§1 32⇒s Oy⇒x
***§2 ∇s 1<s⇒t ↑(x=0)3 →4
***§3 L2j&t⇒x s⇒k ↑(x=0)4 ∆k
***§4 ↑(y>0)5 L3i&t⇒y s⇒l ↑(y=0)5 ∆l
***§5 ↑(s>0)2
***