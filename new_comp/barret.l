main(/)
	
	@+F1(100)
	@+L2(100)
	@+L3(100)
	
	OQ2=Q3
	
	/'Введите число и модуль: '>C
	/F1<C
	
	*big_int_input(L2, F1, 0/L2, i)
	*big_int_input(L3, F1, i/L3, i)
	?(Q2<Q3)10 ?(Q2=Q3)1 ?=exit
	P1 Q2=j 32=s
	P2 ?(s=0)exit 1>s=t L2j&t=x L3j&t=y Ys  ?(y=0)1 s-1=y ***подсчёт битов в обоих числах
	P3
	*print_big_hex(L2/)
	*print_big_hex(L3/)
	?=11
	
	
	
	*** *barmod(10, 1234, 20/r)
	
	
	
	
	
	
	§10 /'ОШИБКА: модуль больше чем число.\n'>C
	§11
	**


barmod(b, x, m/r)
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