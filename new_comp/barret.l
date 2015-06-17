main(/)
	
	@+F1(100)
	@+L2(100)
	@+L3(100)
	@+L4(100)
	
	
	OQ2=Q3
	
	***/'Введите число и модуль: '>C
	***/F1<C
	
	@'0x123 0x12'>F1 *** для отладки
	
	*big_int_input(L2, F1, 0/L2, i)
	*big_int_input(L3, F1, i/L3, i)
	?(Q3>Q2)10
	*bigint_bits_count(L2/k)
	*bigint_bits_count(L3/l)
	k*2=q
	?(l>q)10
	
	
	2=b
	
	*barmod(L2, L3, b/L4)
	?=21
	
	
	
	
	
	§10 /'ОШИБКА: модуль больше чем число.\n'>C ?=21
	§21
	**

***подсчёт битов в числе
bigint_bits_count(L1/k)
	Ok=i ?(Q1=0)3
	Q1-1=i 32=s
	P1 Ys 1<s=t L1i&t=x s=k ?(x=0)2 Dk ?=3
	P2 ?(s>0)1
	P3 i*32+k=k
	**



barmod(L1, L2, b/L4)
	@+L3(100)
	@+L5(100)
	@+L6(100)
	b=L3.0 1=Q3 *print_big_hex(L3/) *bigint_bits_count(L1/k) 1=Q6 2*k=L6.0 *print_big_hex(L6/) *bigint_pow(L3, L6/L5)
	*printf(Q5/)
	/'L5= '>C *print_big_hex(L5/)
	0=L4.0 OQ4
	
	
	
	
	
	
	
	
	**



*** Алгоритм возведения в степень
*** L1 - число возводимое в степень, L2 - степень этого числа
bigint_pow(L1, L2/L5)
	@+L6(100)
	@+L4(100)
	
	1=Q5=Q6=Q4=L4.0 Oj
	L1⇒L6 1⇒L5.0⇒i=s i<1⇒i L2j&1↪3 L1⇒L5
	§3 ↑(s>=32)4 Q6+Q6+1=l *optimize(L6, l/L6) L6*L6⇒L6
	*** /'L6= '>C *print_big_hex(L6/)
	i&L2j↪6 Q5+Q6+1=l *optimize(L5, l/L5) L5*L6⇒L5
	*** /'L5= '>C *print_big_hex(L5/)
	P6 Ds i<1⇒i →3
	P4 Dj ?(j>=Q2)5 Os 1=i →3
	§5 **

*** /'d L5= '>C *print_big_hex(L5/)
*** /'Q5= '>C *printf(Q5/) /' '>C
*** /'d L6= '>C *print_big_hex(L6/)



optimize(L1, n/L1)
	Q1=i n=Q1
	P1 ?(i>n)2 OL1i Di ?=1
	P2 
	**






barmod_little(b, x, m/r)
	Oz
	?(m=0)9 ?(b<3)10
	80000000h=y Ok
	*** *printf(m/) /'\n'>C
	m=t
	P1 t/b=t Dk ?(t>0)1
	P2 2*k=t
	*dihotom2(b, t/y)
	y/m=z
	k-1=t
	dihotom2()
	=q
	
	
	
	
	
	
	
	
	
	?=11
	
	P9 /'ОШИБКА: модуль должен быть больше нуля\n'>C ?=11
	§10 /'ОШИБКА: b должно быть больше 3\n'>C
	
	
	§11
	**
	
	
*** BACKUP

*** подсчёт битов в обоих числах
***?(Q2<Q3)10 Q2-1=j=i ?(Q2=Q3)1 Q3-1=i
***P1 32=s Oy=x
***P2 Ys 1<s=t ?(x=0)3 ?=4
***P3 L2j&t=x s=k ?(x=0)4 Dk
***P4 ?(y>0)5 L3i&t=y s=l ?(y=0)5 Dl
***P5 ?(s>0)2
***