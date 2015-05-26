main(/)
	
	
	
	***1=i *printbv(i, 32/)
	***i>1=i *printbv(i, 32/)
	***i<1=i *printbv(i, 32/)
	
	
	
	
	*barmod(10, 1234, 20/r)
	
	
	
	
	
	
	
	**


barmod(b, x, m/r)
	Oz
	?(m=0)9 ?(b<3)10
	80000000h=y Ok Dk
	*** *printf(m/) /'\n'>C
	P1 m/b=t Dk ?(t>0)2 ?=1
	P2 2*k=t
	*printf(k/) /'\n'>C
	*printf(t/) /'\n'>C
	*dihotom2(b, t/y)
	*printf(y/) /'\n'>C
	y/m=z
	
	*printf(z/) /'\n'>C
	
	
	
	
	
	
	
	
	
	
	
	?=11
	
	P9 /'Ошибка: модуль должен быть больше нуля\n'>C ?=11
	§10 /'Ошибка: b должно быть больше 3\n'>C
	
	
	§11
	**