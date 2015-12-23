main(/)
	
	
	
	*proot_test(/)
	
	
	
**

proot_test(/)
	@+L1(100)
	5=n Oi
	P1
		 *randPrime(32/p) /'prime = '>C *printf(p/) /'\n'>C
		 *primroot(p/t) *primroots(p/L1)
		 /'primitive root = '>C *printf(t/) /'\n'>C
		 *print_complex(L1/) /'\n'>C Di ?(i<5)1
**


print_trtr(L1,L2/)
	Oi
	P99 *printf(L1i/) /'^'>C *printf(L2i/) Di /' '>C ?(i<Q1)99
**


*** Поиск первообразного корня
*** m - модуль
*** L1 - разложение числа на простые сомножители (функция эйлера)
*** r - первообразный корень
primroot(m/r)
	Or
	@+L1(100)
	@+L2(100)
	*** @+L3(100)
	*trial_division_method(m/L1,L2)
	*** *print_complex(L1,L2/)
	?(L1.0#m)4 m-1=n *trial_division_method(n/L1,L2) 1=r *** *printf(n/) /' '>C *print_trtr(L1,L2/) /'\n'>C
	P1 r+1=r Oj *** *printf(r/) /'\n'>C
		P2 n/L1j=d *pow(r,d,m/b)
			 *** /'j = '>C *printf(j/) /'\n'>C
			 ?(b=1)1 Dj ?(j>=Q1)4 ?=2
	P4
**


*** Поиск первообразных корней
*** m - модуль
*** L1 - разложение числа на простые сомножители (функция эйлера)
*** r - первообразный корень
primroots(m/L2)
	@+L1(100)
	*trial_division_method(m/L1,L2)
	*** *print_complex(L1/)
	OQ2=i ?(L1.0#m)4 m-1=n *trial_division_method(n/L1,L2) 1=r *** *printf(n/) /' '>C *print_trtr(L1,L2/) /'\n'>C
	*numbOfCoprimes(L1,n/f) f;100=f *** /'f = '>C *printf(f/) /'\n'>C
	P1 r+1=r Oj *** *printf(r/) /'\n'>C
		P2 n/L1j=d *pow(r,d,m/b)
			 *** /'b = '>C *printf(b/) /'\n'>C
			 ?(b=1)1 Dj ?(j>=Q1)3 ?=2
			P3 r=L2i Yf Di=Q2 ?(f=0)4 ?=1
	P4 *** *print_complex(L2/)
**





GCD(a,b/b)
	P1 OZ a:b=q b=a Z=b ?(b>1)1
**