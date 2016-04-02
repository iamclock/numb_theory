main(/)
	
	
	*** *EuclAlg_test(/)
	*dih_bar_test(/)
	*** *degree_tset(/)
	
**


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
	*HprintfBN(L4/)
	
**

*** Дихотомический алг-тм возведения в степень
*** L1 - число возводимое в степень, L2 - степень этого числа, L3 - модуль
*** L5 - q, L4 - z
*** 01.11.2015 операции над большими числами не изменяют мощность комплексов
powBN_bar(L1, L2, L3/L4)
	@+L5(1000)
	@+L6(1000)
	
	
	Q3*2⇒Q4 OL4
	Q4⇒k+1⇒Q4 1⇒L4k L4/L3⇒L4 *** L4 = z
	
	1⇒Q6⇒Q5⇒L6.0⇒i Oj⇒s
	L1⇒L5
	§1
		 ↑(s≥32)3 i&L2j↪2 Q5+Q6⇒l *optimize(L6, l/L6)
		 *barmod(L6, L3, L4/L6)
		 *** L6*L5;L3⇒L6 Q3⇒Q6
	   /'L6= '>C *HprintfBN(L6/) /'\n'>C
	§2
		 Q5+Q5⇒l *optimize(L5, l/L5)
		 *barmod(L5, L3, L4/L6) *** L5*L5;L3⇒L5 Q3⇒Q5
	   /'L5= '>C *HprintfBN(L5/) /'\n'>C
	 ∆s i<1⇒i →1
	§3 ∆j ↑(j≥Q2)4 1⇒i Os →1
	§4 Q6⇒Q4 L6⇒L4
		 *cutZerosBN(L4/L4)
**




rsaGEN_test(/)
	
	
	
	
	
	
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
	*** *EuclAlg_bar(L1, L2/L3) не работает(зацикливается)
	/'L3 = '>C *HprintfBN(L3/) /'\n'>C
	
**


*** https://ru.wikipedia.org/wiki/RSA#.D0.9F.D1.80.D0.B8.D0.BC.D0.B5.D1.80
*** генерация ключей для алгоритма RSA
*** L1 - открытый ключ, p
*** L2 - закрытый ключ, q
rsaGen(k/L1, L2)
	@+L3(100) *** q-1, n = p*q
	@+L4(100) *** p-1, Ф(n)
	*randPrimeBN(k/L1)
	*randPrimeBN(k/L2)
	1=Q4=L4.0 L1-L4=L4 *** p-1
	1=Q3=L3.0 L2-L3=L3 *** q-1
	Q3+Q4=l *optimize(L4, l/L4) L4*L3=L4 *** *karatsuba(L3, L4/L4)
	Q2+Q1=l 1=Q3=L3.0 *optimize(L3, l/L3) L3*L1*L2=L3 *** *karatsuba(L1, L2/L3)
	
	
	
**

rsaCipher(L1, F2/F3)
	
	
	
	
**

rsaDecipher(L1, F2/F3)
	
	
	
**

*** Алгоритм Евклида https://ru.wikipedia.org/wiki/%D0%90%D0%BB%D0%B3%D0%BE%D1%80%D0%B8%D1%82%D0%BC_%D0%95%D0%B2%D0%BA%D0%BB%D0%B8%D0%B4%D0%B0
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
	
	*BN_gr(L1, L2/a) ?(a>0)1 Q2=Q4 L2=L4 Q1=Q5 L1=L5 ?=2
	P1
		Q1=Q4 L1=L4 Q2=Q5 L2=L5
	
	P2
		*barmod(L4, L5/L6)
		/'qq\n'>C
		/'Q6 = '>C *printf(Q6/) /'\n'>C
		/'Q5 = '>C *printf(Q5/) /'\n'>C
		/'Q4 = '>C *printf(Q4/) /'\n'>C
		*** *cutZerosBN(L6/L6)
		*BN_gr(L6, L7/a) ?(a<1)3 Q5=Q4 L5=L4 Q6=Q5 L6=L5 ?=2
	P3
		Q5=Q3 L5=L3
**


*** Расширенный алгоритм Евклида https://ru.wikipedia.org/wiki/%D0%90%D0%BB%D0%B3%D0%BE%D1%80%D0%B8%D1%82%D0%BC_%D0%95%D0%B2%D0%BA%D0%BB%D0%B8%D0%B4%D0%B0#.D0.A0.D0.B0.D1.81.D1.88.D0.B8.D1.80.D0.B5.D0.BD.D0.BD.D1.8B.D0.B9_.D0.B0.D0.BB.D0.B3.D0.BE.D1.80.D0.B8.D1.82.D0.BC_.D0.95.D0.B2.D0.BA.D0.BB.D0.B8.D0.B4.D0.B0_.D0.B8_.D1.81.D0.BE.D0.BE.D1.82.D0.BD.D0.BE.D1.88.D0.B5.D0.BD.D0.B8.D0.B5_.D0.91.D0.B5.D0.B7.D1.83
extEuclAlg(/)
	
	
	
**






