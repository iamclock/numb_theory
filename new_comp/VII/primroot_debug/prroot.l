main(/)
	
	
	
	*proot_test(/)
	
	
	
**





proot_test(/)
	
	
	
	*primroot(47/t)
	
	
**


print_trtr(L1,L2/)
	Oi
	*** P99 *printf(L1i/) /'^'>C *printf(L2i/) Di /' '>C ?(i<Q1)99 /'\n'>C
	P100 *printf(L1i/) Di /' '>C ?(i<Q1)100 /'\n'>C
	
**


primroot_check(n,d/b)
	Ob
	*pow(n,d/b)
**


*** m - модуль
*** L1 - показатели функции эйлера
primroot(m/r)
	Or
	@+L1(100)
	@+L2(100)
	*** @+L3(100)
	*trial_division_method(m/L1,L2)
	*print_trtr(L1,L2/)
	?(L1.0#m)1 m-1=n *trial_division_method(n/L1,L2) Q1=f 1=t *** *printf(n/) /'\n'>C *print_trtr(L1,L2/)
	P1 t+1=t *NOD(t,m/b) /'NOD = '>C *printf(b/) /' '>C *printf(t/) /'\n'>C ?(b=0)1
		 n/L1.0=d *pow(t,d,m/b) /'b = '>C *printf(b/) /'\n'>C ?(b=1)1
		 n/L1.1=d *pow(t,d,m/b) /'b = '>C *printf(b/) /'\n'>C ?(b=1)1
		 t=L2i Yf Di=Q2 ?(f=0)2 ?=1
	P2 *print_trtr(L2,L1/)
**





NOD(a,b/b)
	P1 OZ a:b=q b=a Z=b ?(b>1)1
**