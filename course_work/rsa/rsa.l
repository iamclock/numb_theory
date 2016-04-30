main(/)
	
	
	*** *EuclAlg_test(/)
	*** *dih_bar_test(/)
	*** *degree_tset(/)
	*** *extEuclAlg_test2(/)
	*** *extEuclAlg_rowTest(/)
	*rsaGen_test(/)
	*** *ttt(/)
**


*** возможна проблема, если числа будут отрицательными в rsaGen
*** в powBN_bar L1;L3=L5 не заменяется на barmod(...)


***********************************************************
*********************    Алгоритмы    *********************
***********************************************************



*** поиск обратного числа, основан на алгоритме Евклида,
*** только возвращает меньше значений и присваивает
*** переменной обратного элемента ноль, если числа не
*** взаимнопросты
*** L1 - число a для которого ищется обратный элемент
*** L2 - модуль m
*** L3 = y: a*y = 1 mod m (L1*L3 = 1 mod L2)
*** L4 - c - Наибольший общий делитель L1, L2
BNinvElement(L1, L2/L3, L4)
	@+L6(1000) OQ6 *** c
	@+L7(1000) OQ7 *** d
	@+L8(1000) OQ8 *** y
	@+L9(1000) OQ9 *** w
	@+L10(1000) OQ10 *** q
	@+L11(1000) OQ11 *** r
	@+L12(1000) OQ12 *** t
	Of=L8.0+1=L9.0=Q8=Q9=Q12 0=L12.0 L1=L6 L2=L7 *BN_neq(L1, L12/a) ?(a=1)1 ∆L8.0 L2=L5 ?=4
	P1
		∆f;2=f 1=Q12 OL12.0 *BN_eq(L7, L12/a) ?(a=1)2
		L6/L7=L10 Q10+Q7=l
		*karatsuba(L10, L7/L11)
		L6-L11=L11 *cutZerosBN(L11/L11)
		*karatsuba(L10, L9/L12)
		Q8+1=l ?(Q8>Q12)5 Q12+1=l
	P5
		*optimize(L8, l/L8)
		L8+L12=L8 *cutZerosBN(L8/L8)
		L7=L6 L11=L7 L9=L12 L8=L9 L12=L8 ?=1
	P2
		1=Q3=Q10=L10.0-1=L3.0 *BN_gr(L6, L10/a) ?(a>0)4
		*karatsuba(L2, L8/L12)
		?(f>0)3
		L12-L6/L1=L3 L2-L3=L3
		*cutZerosBN(L3/L3) ?=4
	P3
		Q12=i Q12+1=Q12 OL12i L12+L6/L1=L3 *** проверить мощность L3 и L12 до и после увеличения на 1
	P4
		L6=L4
**



ttt(/)
	@+L1(1000)
	@+L2(1000)
	@+F3(1000)
	
	OQ3 @'0x2'>F3 *inputBN_2(L1, F3/L1)
	OQ3 @'0x3777BF4446C2C4159FF940DAF0135123FE4641C05A0171C1A31E6776E848A96F21A72B7C7DC75FAD6F253B52096FBFFBBDAAD8780B7199D9F413386F'>F3 *inputBN_2(L2, F3/L2)
	
	*HprintfBN(L1/) /'\n'>C
	*HprintfBN(L2/) /'\n'>C
	
	
	/'1\nQ1 = '>C *printf(Q1/) /'\n'>C
	/'Q2 = '>C *printf(Q2/) /'\n'>C
	L1;L2=L2
	
	/'2\nQ1 = '>C *printf(Q1/) /'\n'>C
	/'Q2 = '>C *printf(Q2/) /'\n'>C
	*HprintfBN(L2/) /'\n'>C
	
**


*** Расширенный алгоритм Евклида
*** https://ru.wikipedia.org/wiki/%D0%90%D0%BB%D0%B3%D0%BE%D1%80%D0%B8%D1%82%D0%BC_%D0%95%D0%B2%D0%BA%D0%BB%D0%B8%D0%B4%D0%B0#.D0.A0.D0.B0.D1.81.D1.88.D0.B8.D1.80.D0.B5.D0.BD.D0.BD.D1.8B.D0.B9_.D0.B0.D0.BB.D0.B3.D0.BE.D1.80.D0.B8.D1.82.D0.BC_.D0.95.D0.B2.D0.BA.D0.BB.D0.B8.D0.B4.D0.B0_.D0.B8_.D1.81.D0.BE.D0.BE.D1.82.D0.BD.D0.BE.D1.88.D0.B5.D0.BD.D0.B8.D0.B5_.D0.91.D0.B5.D0.B7.D1.83
*** L3 - x - коэффициент при L1
*** L4 - y - коэффициент при L2
*** L5 - наибольший общий делитель L1 и L2
*** f - признак отрицательного числа L3 или L4
BNextEuclAlg(L1, L2/L3, L4, L5, f)
	@+L6(1000) OQ6 *** c
	@+L7(1000) OQ7 *** d
	@+L8(1000) OQ8 *** y
	@+L9(1000) OQ9 *** w
	@+L10(1000) OQ10 *** q
	@+L11(1000) OQ11 *** r
	@+L12(1000) OQ12 *** t
	
	Of=L8.0+1=L9.0=Q8=Q9=Q12 0=L12.0 L1=L6 L2=L7 *BN_neq(L1, L12/a) ?(a=1)1 ∆L8.0 L2=L5 ?=4
	P1
		∆f;2=f 1=Q12 OL12.0 *BN_eq(L7, L12/a) ?(a=1)2
		L6/L7=L10 Q10+Q7=l
		*karatsuba(L10, L7/L11)
		L6-L11=L11 *cutZerosBN(L11/L11)
		*karatsuba(L10, L9/L12)
		Q8+1=l ?(Q8>Q12)5 Q12+1=l
		
	P5
		*optimize(L8, l/L8)
		L8+L12=L8 *cutZerosBN(L8/L8)
		L7=L6 L11=L7 L9=L12 L8=L9 L12=L8 ?=1
	P2
		
		*karatsuba(L2, L8/L12)
		?(f>0)3
		L12-L6/L1=L3 ?=4
	P3
		Q12=i Q12+1=Q12 OL12i L12+L6/L1=L3 *** проверить мощность L3 и L12 до и после увеличения на 1
	P4
		*cutZerosBN(L3/L3)
		L8=L4
		L6=L5
**

*** Q2+Q8=l *optimize(L12, l/L12) 1=L12.0 L12*L2*L8=L12


*** Дихотомический алг-тм возведения в степень с методом баррета взятия по модулю
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
	*** L1;L3=L5 не заменяется на barmod(...)
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

rsaGen_test(/)
	@+L1(1000)
	@+L2(1000)
	@+L3(1000)
	@+L4(1000)
	@+L5(1000)
	
	
	*BNrsaGen(1024/L1, L2, L3, L4, L5)
	
**


*** https://ru.wikipedia.org/wiki/RSA#.D0.9F.D1.80.D0.B8.D0.BC.D0.B5.D1.80
*** генерация ключей для алгоритма RSA
*** L1 - открытый ключ, p
*** L2 - закрытый ключ, q
*** L3 - открытый ключ, n
*** L4 - открытый ключ, e
*** L5 - открытый ключ, d
BNrsaGen(k/L1, L2, L3, L4, L5)
	@+L6(1000) OQ6
	@+L7(1000) OQ7
	OQ1=Q2=Q3=Q4=Q5
	?(k<3)99
	@+L8(4) OQ8
	*** открытая экспонента может быть равна {3, 17, 257, 65537}
	4=Q8 3=L8.0+14=L8.1+240=L8.2+65280=L8.3
	*** X=c X;c X=t c;t;S5=t
	*** /'c = '>C *printf(c/) /'\n'>C
	*** /'t = '>C *printf(t/) /'\n'>C
	
	*** возможна проблема, если числа будут отрицательными
	OZ=s k:32=q Z?-100 1=s
	*** /'q = '>C *printf(q/) /'\n'>C
	*** /'s = '>C *printf(s/) /'\n'>C
	
	P100
		q+s=Q1=Q2 X X X
		*randPrimeBN(k/L1)
		X X X
		*randPrimeBN(k/L2)
		*** /'L1 = '>C *HprintfBN(L1/) /'\n'>C
		*** /'Q1 = '>C *printf(Q1/) /'\n'>C
	1=Q3=L3.0
	L1-L3=L4 *** p-1
	L2-L3=L3 *** q-1
	*** L5 = Ф(n) = (p-1)*(q-1)
	*karatsuba(L3, L4/L5)
	*** L3 = n = p*q
	*karatsuba(L1, L2/L3)
	Oj+1=Q4
	P98
		L8j=L4.0
		*BNinvElement(L4, L5/L6, L7)
		/'L4 = '>C *HprintfBN(L4/) /'\n\n'>C
		/'L5 = '>C *HprintfBN(L5/) /'\n\n'>C
		/'L6 = '>C *HprintfBN(L6/) /'\n\n'>C
		/'L7 = '>C *HprintfBN(L7/) /'\n\n'>C
		*** L4 приравниваю к 1 для сравнения с наибольшим
		*** общим делителем, чтобы не заводить новый комплекс
		*** значение, при котором был найден обратный элемент
		*** с наибольшим общим делителем равным 1 лежит в L8
		*** j-1 элементе
		Dj 1=L4.0 *BN_eq(L7, L4/a) ?(j>3)97 ?(a#1)98
	Yj L8j=L4.0
	L6=L5
	/'L5 = '>C *HprintfBN(L5/) /'\n'>C
	
	?=99
	P97 /'Ошибка: Что то не так с j в P98\n'>C *** на всякий случай, по теории, ошибки не должно быть
	P99
**

BNrsaCipher(L1, F2/F3)
	
	
	
	
**

BNrsaDecipher(L1, F2/F3)
	
	
	
**

*** Алгоритм Евклида
*** https://ru.wikipedia.org/wiki/%D0%90%D0%BB%D0%B3%D0%BE%D1%80%D0%B8%D1%82%D0%BC_%D0%95%D0%B2%D0%BA%D0%BB%D0%B8%D0%B4%D0%B0
BNEuclAlg(L1, L2/L3)
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
BNEuclAlg_bar(L1, L2/L3)
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



*** Расширенный алгоритм Евклида с алгоритмом баррета
*** https://ru.wikipedia.org/wiki/%D0%90%D0%BB%D0%B3%D0%BE%D1%80%D0%B8%D1%82%D0%BC_%D0%95%D0%B2%D0%BA%D0%BB%D0%B8%D0%B4%D0%B0#.D0.A0.D0.B0.D1.81.D1.88.D0.B8.D1.80.D0.B5.D0.BD.D0.BD.D1.8B.D0.B9_.D0.B0.D0.BB.D0.B3.D0.BE.D1.80.D0.B8.D1.82.D0.BC_.D0.95.D0.B2.D0.BA.D0.BB.D0.B8.D0.B4.D0.B0_.D0.B8_.D1.81.D0.BE.D0.BE.D1.82.D0.BD.D0.BE.D1.88.D0.B5.D0.BD.D0.B8.D0.B5_.D0.91.D0.B5.D0.B7.D1.83
extEuclAlg_bar(/)
	
	
	
**


***********************************************************
***********************    ТЕСТЫ    ***********************
***********************************************************

extEuclAlg_rowTest(/)
	@+L1(100000)
	@+L2(100000)
	@+L3(100000)
	@+L4(100000)
	@+L5(100000)
	@+F6(100000)
	
	OQ6 /F6<C *inputBN(L1, F6, 0/L1, k)
	OQ6 /F6<C *inputBN(L2, F6, k/L2, k)
	
	*BNextEuclAlg(L1, L2/L3, L4, L6, f)
	*HprintfBN(L6/) /'\n'>C
	*** ?=2
	?(f>0)1 L2-L3=L3 ?=2
	P1
		L2-L4=L4
	P2
		*** /'f = '>C *printf(f/) /'\n'>C
		*HprintfBN(L3/) /'\n'>C
		*HprintfBN(L4/) /'\n'>C
**


extEuclAlg_test(/)
	@+L1(1000)
	@+L2(1000)
	@+L3(1000)
	@+L5(1000)
	@+L6(1000)
	@+F4(100)
	0=Q1=Q2=Q3=Q5=Q6
	OQ4 @'0x2fd67fb7fef3b0b6a256dbc8a2912c25dd20d40bf7a66f35a0189cc9c5b71d2'>F4
	*inputBN_2(L1, F4/L1)
	OQ4 @'0x1603a51baf31d57a52b8e9b30826cdd122acc6140f48502728483b3ac5d649d'>F4
	*inputBN_2(L2, F4/L2)
	
	
	*BNextEuclAlg(L1, L2/L3, L5, L6, f)
	
	/'L3 = '>C *HprintfBN(L3/) /'\n'>C
	/'L5 = '>C *HprintfBN(L5/) /'\n'>C
	/'L6 = '>C *HprintfBN(L6/) /'\n'>C
	/'f = '>C *printf(f/) /'\n'>C
**



extEuclAlg_test2(/)
	@+L1(1000)
	@+L2(1000)
	@+L3(1000)
	@+L5(1000)
	@+L6(1000)
	0=Q1=Q2=Q3=Q5=Q6
	
	?=99
	
	1=Q1=Q2
	3=L1.0
	9167368=L2.0
	*BNextEuclAlg(L1, L2/L3, L5, L6, f)
	/'L3.0 = '>C *printf(L3.0/) /'\n'>C
	/'L5.0 = '>C *printf(L5.0/) /'\n'>C
	/'L6.0 = '>C *printf(L6.0/) /'\n'>C
	/'f = '>C *printf(f/) /'\n'>C
	?(f>0)100
	L2-L3=L3
	/'L3.0 = '>C *printf(L3.0/) /'\n'>C
	
	
	/'L3 = '>C *HprintfBN(L3/) /'\n'>C ?=100
	
	
	P99
		3=a
		9167368=b
		*** 14=a
		*** 88=b
		*Extended_Euclidean_Algorithm(a, b/x, y, c, f)
		
		/'x = '>C *printf(x/) /'\n'>C
		/'y = '>C *printf(y/) /'\n'>C
		/'c = '>C *printf(c/) /'\n'>C
		/'f = '>C *printf(f/) /'\n'>C
	
	
	P100
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
	*HprintfBN(L4/) /'\n'>C
	
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
	
	*** *BNEuclAlg(L1, L2/L3)
	*BNEuclAlg_bar(L1, L2/L3) *** не работает(зацикливается)
	/'L3 = '>C *HprintfBN(L3/) /'\n'>C
	
**