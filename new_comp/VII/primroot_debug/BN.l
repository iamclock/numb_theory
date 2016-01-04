main(/)
	
	*** для числа 0x312AEEE94005ACBF корень 7
	*proot_test(/)
	
**

*** http://www.wolframalpha.com/input/?i=primitive+root+%280x27923DDAF02F3223%29

proot_test(/)
	@+L1(100)
	5⇒n Oi
	P1
		 100⇒Q1 *randPrimeBN(62/L1)
		 /'rand prime = '>C *HprintfBN(L1/) /'\n'>C
		 *primroot(L1/t)
		 /'primitive root = '>C *printf(t/) /'\n'>C
		 Di ?(i<n)1
**


*** Поиск первообразного корня
*** m - модуль
*** L2 - разложение числа на простые сомножители (функция эйлера)
*** r - первообразный корень
primroot(L1/r)
	Or
	@+L2(100) @+L3(100) @+L4(100) @+L5(100) @+L6(100)
	OL2=L3=L5 OQ2=Q3=Q5
	Q1=Q4 OL4 1=L4.0=Q5=Q6=r L1-L4=L4 *tdmBN(L4/L2, L3, L5) *** *printf(n/) /' '>C *print_trtr(L2,L3/) /'\n'>C
	P1 Dr=L5.0 Oj *** *printf(r/) /'\n'>C
		P2 L2j=L6.0 L4/L6=L6
			 /'L3 = '>C *HprintfBN(L3/) /'\n'>C
			 /'Q3 = '>C *printf(Q3/) /'\n'>C
			 *** /'L6 = '>C *HprintfBN(L6/) /'\n'>C
			 *powBN(L5, L6, L1/L6)
			 *** /'j = '>C *printf(j/) /'\n'>C
			 *** /'L6 = '>C *HprintfBN(L6/) /'\n'>C
			 1=L5.0 *BN_eq(L6, L5/b) r=L5.0 
			 *** /'b = '>C *printf(b/) /'\n'>C
			 ?(b=1)1 Dj ?(j>=Q2)4 ?=2
	P4
**
