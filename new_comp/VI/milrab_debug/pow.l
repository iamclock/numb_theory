
*** что то не так с pow2
main(/)
	@+L1(100)
	@+L2(100)
	@+L3(100)
	OQ1=Q2
	*** https://ru.wikipedia.org/wiki/%D0%9C%D0%B0%D0%BB%D0%B0%D1%8F_%D1%82%D0%B5%D0%BE%D1%80%D0%B5%D0%BC%D0%B0_%D0%A4%D0%B5%D1%80%D0%BC%D0%B0
	
	*** 2147483647
	*** 536870911
	2147483647=p Oi
	*trial_division_method(p/L1)
	
	
	P1 1183550335=a a=L1.0 p=L2.0 1=Q2=Q1 ***X;p=a
	*powBN1(L1, p, L2/L3) Di L3.0=b
	*** ?(i=50000)4 ?(a=b)1
	P3 /'#'>C *printf(i/) /'\n'>C
		*** /'a = '>C *printf(a/) /'\n'>C
		 /'a = '>C *Hprintf(a/) /'\n'>C
		*** /'p = '>C *printf(p/) /'\n'>C
		 /'p = '>C *Hprintf(p/) /'\n'>C
		*** /'b = '>C *printf(b/) /'\n'>C
		/'b = '>C *Hprintf(b/) /'\n'>C
	P4
	
**