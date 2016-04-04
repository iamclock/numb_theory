main(/)
	
	
	*** *EuclAlg_test(/)
	*** *dih_bar_test(/)
	*** *degree_tset(/)
	*** extEuclAlg_test(/)
	*rsaGen_test(/)
**


*** возможна проблема, если числа будут отрицательными в rsaGen
*** в powBN_bar L1;L3=L5 не заменяется на barmod(...)


***********************************************************
*********************    Алгоритмы    *********************
***********************************************************


*** Дихотомический алг-тм возведения в степень
*** L1 - число возводимое в степень, L2 - степень этого числа, L3 - модуль
*** L5 - q, L4 - z
*** 01.11.2015 операции над большими числами не изменяют мощность комплексов
powBN_bar(L1, L2, L3/L4)
	@+L5(1000)
	@+L6(1000)
	@+L7(1000)
	
	Q3*2⇒Q7 OL7
	Q7⇒k+1⇒Q7 1⇒L7k L7/L3⇒L7 *** L7 = z
	
	1⇒Q6⇒Q5⇒L6.0⇒i Oj⇒s
	*** L1;L3=L5 не заменяется на baarmod(...)
	L1;L3⇒L5 Q3+Q3=l *optimize(L6, l/L6) *optimize(L5, l/L5) *** *barmod(L1, L3, L7/L5)
	§1
		 ↑(s≥32)3 i&L2j↪2 Q5+Q6⇒l *optimize(L6, l/L6)
		 L6*L5⇒L6 *barmod(L6, L3, L7/L6) *** Q3⇒Q6
	   *** /'L6= '>C *HprintfBN(L6/) /'\n'>C
	§2
		 Q5+Q5⇒l *optimize(L5, l/L5)
		 L5*L5⇒L5 *barmod(L5, L3, L7/L5) *** Q3⇒Q5
	   *** /'L5= '>C *HprintfBN(L5/) /'\n'>C
	 ∆s i<1⇒i →1
	§3 ∆j ↑(j≥Q2)4 1⇒i Os →1
	§4 Q6⇒Q4 L6⇒L4
		 *cutZerosBN(L4/L4)
**



*** https://ru.wikipedia.org/wiki/RSA#.D0.9F.D1.80.D0.B8.D0.BC.D0.B5.D1.80
*** генерация ключей для алгоритма RSA
*** L1 - открытый ключ, p
*** L2 - закрытый ключ, q
rsaGen(k/L1, L2)
	@+L3(1000) *** q-1, n = p*q
	@+L4(1000) *** p-1, Ф(n)
	@+L5(1000)
	?(k<33)10
	X=c
	X;c X=t c;t=t
	/'c = '>C *printf(c/) /'\n'>C
	/'t = '>C *printf(t/) /'\n'>C
	
	*** возможна проблема, если числа будут отрицательными
	OZ k:32=q Z=s-1=e s;e=s
	q+s=Q1=Q2
	/'Q1 = '>C *printf(Q1/) /'\n'>C
	/'Q2 = '>C *printf(Q2/) /'\n'>C
	*randPrimeBN(k/L1)
	*randPrimeBN(k/L2)
	/'L1 = '>C *HprintfBN(L1/) /'\n'>C
	/'Q1 = '>C *printf(Q1/) /'\n'>C
	/'L2 = '>C *HprintfBN(L2/) /'\n'>C
	/'Q2 = '>C *printf(Q2/) /'\n'>C
	
	1=Q4=L4.0=Q3=L3.0
	L1-L4=L4 *** p-1
	L2-L3=L3 *** q-1
	Q3+Q4=l *optimize(L4, l/L4) L4*L3=L4 *** *karatsuba(L3, L4/L4)
	Q2+Q1=l 1=Q3=L3.0 *optimize(L3, l/L3) L3*L1*L2=L3 *** *karatsuba(L1, L2/L3)
	/'qq\n'>C
	*randPrimeBN(t/L5)
	P10
		
	
	P99
**

rsaCipher(L1, F2/F3)
	
	
	
	
**

rsaDecipher(L1, F2/F3)
	
	
	
**

*** Алгоритм Евклида
*** https://ru.wikipedia.org/wiki/%D0%90%D0%BB%D0%B3%D0%BE%D1%80%D0%B8%D1%82%D0%BC_%D0%95%D0%B2%D0%BA%D0%BB%D0%B8%D0%B4%D0%B0
EuclAlg(L1, L2/L3)
	@+L4(1000)
	@+L5(1000)
	@+L6(1000)
	@+L7(1) 1=Q7 OL7.0
	*BN_gr(L1, L2/a) ?(a>0)1 Q2=Q4 L2=L4 Q1=Q5 L1=L5 ?=2
	P1
		Q1=Q4 L1=L4 Q2=Q5 L2=L5
	P2
		L4;L5=L6 Q5=Q6 *cutZerosBN(L6/L6) *BN_gr(L6, L7/a) ?(a<1)3 Q5=Q4 L5=L4 Q6=Q5 L6=L5 ?=2
	P3
		Q5=Q3 L5=L3
**

*** Алгоритм Евклида с приведением числа по модулю методом баррета
*** не работает(зацикливается)
EuclAlg_bar(L1, L2/L3)
	@+L4(1000)
	@+L5(1000)
	@+L6(1000)
	@+L7(1) 1=Q7 OL7.0
	@+L8(100)
	
	
	
	*BN_gr(L1, L2/a) ?(a>0)1
	L2;L1=L4 Q1=Q4 Q1=Q5 L1=L5 ?=2
	/'ww\n'>C
	Q1*2⇒Q8 OL8
	Q8⇒k+1⇒Q8 1⇒L8k L8/L1⇒L8 *** L8 = z
	P1
		
		L1;L2=L4 Q2=Q4 Q2=Q5 L2=L5
		Q2*2⇒Q8 OL8
		Q8⇒k+1⇒Q8 1⇒L8k L8/L2⇒L8 *** L8 = z
	
	P2
		*barmod(L4, L5, L8/L6)
		/'qq\n'>C
		/'Q6 = '>C *printf(Q6/) /'\n'>C
		/'Q5 = '>C *printf(Q5/) /'\n'>C
		/'Q4 = '>C *printf(Q4/) /'\n'>C
		*** *cutZerosBN(L6/L6)
		*BN_gr(L6, L7/a) ?(a<1)3 Q5=Q4 L5=L4 Q6=Q5 L6=L5 ?=2
	P3
		Q5=Q3 L5=L3
**


*** Расширенный алгоритм Евклида
*** https://ru.wikipedia.org/wiki/%D0%90%D0%BB%D0%B3%D0%BE%D1%80%D0%B8%D1%82%D0%BC_%D0%95%D0%B2%D0%BA%D0%BB%D0%B8%D0%B4%D0%B0#.D0.A0.D0.B0.D1.81.D1.88.D0.B8.D1.80.D0.B5.D0.BD.D0.BD.D1.8B.D0.B9_.D0.B0.D0.BB.D0.B3.D0.BE.D1.80.D0.B8.D1.82.D0.BC_.D0.95.D0.B2.D0.BA.D0.BB.D0.B8.D0.B4.D0.B0_.D0.B8_.D1.81.D0.BE.D0.BE.D1.82.D0.BD.D0.BE.D1.88.D0.B5.D0.BD.D0.B8.D0.B5_.D0.91.D0.B5.D0.B7.D1.83
extEuclAlg(/)
	
	
	
	
	
**


*** Расширенный алгоритм Евклида с алгоритмом баррета
*** https://ru.wikipedia.org/wiki/%D0%90%D0%BB%D0%B3%D0%BE%D1%80%D0%B8%D1%82%D0%BC_%D0%95%D0%B2%D0%BA%D0%BB%D0%B8%D0%B4%D0%B0#.D0.A0.D0.B0.D1.81.D1.88.D0.B8.D1.80.D0.B5.D0.BD.D0.BD.D1.8B.D0.B9_.D0.B0.D0.BB.D0.B3.D0.BE.D1.80.D0.B8.D1.82.D0.BC_.D0.95.D0.B2.D0.BA.D0.BB.D0.B8.D0.B4.D0.B0_.D0.B8_.D1.81.D0.BE.D0.BE.D1.82.D0.BD.D0.BE.D1.88.D0.B5.D0.BD.D0.B8.D0.B5_.D0.91.D0.B5.D0.B7.D1.83
extEuclAlg_bar(/)
	
	
	
**


***********************************************************
***********************    ТЕСТЫ    ***********************
***********************************************************

degree_tset(/)
	@+L1(1000)
	@+L2(1000)
	@+L3(1000)
	@+F4(1000)
	
	OQ4 /F4<C
	*inputBN(L1, F4, 0/L1, k)
	*inputBN(L2, F4, k/L2, k)
	*inputBN(L3, F4, k/L3, k)
	
	*** /'L1= '>C *HprintfBN(L1/) /'\n'>C
	*** /'L2= '>C *HprintfBN(L2/) /'\n'>C
	*** /'L3= '>C *HprintfBN(L3/) /'\n'>C
	
	*powBN(L1, L2, L3/L3)
	*HprintfBN(L3/) /'\n'>C
	
**



dih_bar_test(/)
	@+L1(1000)
	@+L2(1000)
	@+L3(1000)
	@+F4(1000)
	
	OQ4 /F4<C  *inputBN(L1, F4, 0/L1, k) *inputBN(L2, F4, k/L2, k) *inputBN(L3, F4, k/L3, k)
	*powBN_bar(L1, L2, L3/L4)
	*HprintfBN(L4/) /'\n'>C
	
**


rsaGen_test(/)
	@+L1(1000)
	@+L2(1000)
	
	*rsaGen(1024/L1,L2)
	
	
**

rsaCipher_test(/)
	
	
	
**

rsaDecipher_test(/)
	
	
	
**


*** GLITCH: Infinite loop бесконечный цикл
*** OQ4 @'0xe1436e28a4cc6e1818f2383aaa5ca9ae564a4302b3f2b8005caf6051ea9eaf'>F4
*** *inputBN_2(L1, F4/L1)
*** OQ4 @'0x313b30d556529a779b28c930536a2851b5d19acf609854a3a07ceb7f277cb08'>F4


EuclAlg_test(/)
	@+L1(1000)
	@+L2(1000)
	@+L3(1000)
	@+F4(100)
	
	OQ4 @'0x2fd67fb7fef3b0b6a256dbc8a2912c25dd20d40bf7a66f35a0189cc9c5b71d2'>F4
	*inputBN_2(L1, F4/L1)
	OQ4 @'0x1603a51baf31d57a52b8e9b30826cdd122acc6140f48502728483b3ac5d649d'>F4
	*inputBN_2(L2, F4/L2)
	
	*** *EuclAlg(L1, L2/L3)
	*EuclAlg_bar(L1, L2/L3) *** не работает(зацикливается)
	/'L3 = '>C *HprintfBN(L3/) /'\n'>C
	
**


extEuclAlg_test(/)
	@+L1(1000)
	@+L2(1000)
	@+L3(1000)
	@+F4(100)
	
	OQ4 @'0x2fd67fb7fef3b0b6a256dbc8a2912c25dd20d40bf7a66f35a0189cc9c5b71d2'>F4
	*inputBN_2(L1, F4/L1)
	OQ4 @'0x1603a51baf31d57a52b8e9b30826cdd122acc6140f48502728483b3ac5d649d'>F4
	*inputBN_2(L2, F4/L2)
	
	
	/'L3 = '>C *HprintfBN(L3/) /'\n'>C
	
**


