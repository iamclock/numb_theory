main(/)
	@+L1(20)
	@+L2(20)
	
	*** 0=L1.0 L1.0-1=L1.0=L2.0 1=Q1=Q2
	*** /'L1.0 = '>C *Hprintf(L1.0/) /'\n'>C
	*** /'L2.0 = '>C *Hprintf(L2.0/) /'\n'>C
	
	*** L1+L2=L1
	*** /'L1.0 = '>C *Hprintf(L1.0/) /'\n'>C
	*** /'L1.1 = '>C *Hprintf(L1.1/) /'\n'>C
	
	*** *testcz(/)
	*** *testmr(/)
	*** *testmrBN(/)
	*** *testpow(/)
	*testMul(/)
	
	
	
**


testMul(/)
	@+L1(100)
	@+L2(100)
	@+L4(100)
	@+F3(100)
	OQ3 @'0x10000000000000000'>F3
	*inputBN(L1, F3, 0/L1, i)
	OQ3 @'0x8000000000000000'>F3
	*inputBN(L2, F3, 0/L2, i)
	OQ3 @'0x1ffffffffffffffffffffff'>F3
	*inputBN(L4, F3, 0/L4, i)
	/'L1 = '>C *HprintfBN(L1/) /'\n'>C
	/'L2 = '>C *HprintfBN(L2/) /'\n'>C
	/'L4 = '>C *HprintfBN(L4/) /'\n'>C
	*** 50=Q1 L1*L2=L1;L4=L1
	L2;L4=L1
	
	/'L1 = '>C *HprintfBN(L1/) /'\n'>C
	
**


testpow(/)
	@+L1(100)
	@+L2(100)
	@+L3(100)
	@+L4(100)
	@+F5(100)
	
	*** OQ5 @'0x7ffffffffffffffffffffffffff'>F5
	OQ5 @'0x1ffffffffffffffffffffff'>F5
	*** OQ5 @''>F5
	*inputBN(L2, F5, 0/L2, i)
	
	OQ5 @'0x2'>F5
	*inputBN(L1, F5, 0/L1, i)
	*** /'Q1 = '>C *printf(Q1/) /'\n'>C
	
	*** *powBN_t(L1, L2, L2/L3)
	*dihotom_big_int(L1, L2, L2/L3)
	
	
	/'L3 = '>C *HprintfBN(L3/) /'\n'>C
	
	
**

powBN_t(L1, L2, L3/L4)
	@+L5(100)
	
	1⇒Q4⇒Q5 Oj
	L1⇒L5 Q3+Q3⇒l *optimize(L5, 50/L5) *optimize(L4, 50/L4) 1⇒L4.0⇒i⇒s i<1⇒i L2j&1↪1 L1⇒L4 *optimize(L4, 50/L4)
	§1 ↑(s≥32)3 L5*L5;L3⇒L5
	   *** /'L5= '>C *HprintfBN(L5/) /'\n'>C
	   *** /'Q5 = '>C *printf(Q5/) /'\n'>C
		 i&L2j↪2 L5*L4;L3⇒L4
	   *** /'L4= '>C *HprintfBN(L4/) /'\n'>C
	§2 ∆s i<1⇒i →1
	§3 ∆j ↑(j≥Q2)4 Os 1⇒i →1
	§4 *cutZerosBN(L4/L4)
**

dihotom_big_int(L1, L2, L3/L5)
	@+L6(100)
	@+L4(100)
	
	1=Q5=Q6=Q4=L4.0 Oj
	L1⇒L6 Q3+Q3=l *optimize(L6, l/L6) *optimize(L5, l/L5) 1⇒L5.0⇒i=s i<1⇒i L2j&1↪3 L1⇒L5 *optimize(L5, l/L5)
	§3 ↑(s>=32)4
		 /'[before] L6= '>C *HprintfBN(L6/) /'\n'>C
		 L6*L6;L3⇒L6
	   /'L6= '>C *HprintfBN(L6/) /'\n'>C
	   /'L5= '>C *HprintfBN(L5/) /'\n'>C
	i&L2j↪6 L6*L5;L3⇒L5
	   /'L5= '>C *HprintfBN(L5/) /'\n'>C
	P6 Ds i<1⇒i →3
	P4 Dj ?(j>=Q2)5 Os 1=i →3
	§5 *cutZerosBN(L5/L5) *** *big_int_cut_zeros(L5/L5)
**


testcz(/)
	@+L1(100)
	@+L2(100)
	@+F3(100)
	
	OQ3=Q1=i
	*** @'0x'>F3
	*** @'0x'>F3
	*** @'0x'>F3
	*** @'0x'>F3
	*** @'0x'>F3
	
	*** *inputBN(L1, F3, i/L1, i)
	/'Q1 = '>C *printf(Q1/) /'\n'>C
	*countZeroesBN(L1/s)
	/'s = '>C *printf(s/) /'\n'>C
	
	
**



testmrBN(/)
	@+L1(100)
	@+L2(100)
	@+F3(100)
	
	*** '0x1ffffffffffffffffffffff' - простое число
	*** OQ3 @'0x1ffffffffffffffffffffff'>F3
	*** OQ3 @'0x1ffffff12312312'>F3
	OQ3 @'0x7ffffffffffffffffffffffffff'>F3
	
	OQ1=Q2=i
	*inputBN(L1, F3, i/L1, i)
	*** *inputBN(L2, F3, i/L2, i)
	
	32=L2.0 1=Q2
	
	*miralBN(L1, L2/b)
	
	?(b=0)1 ?(b=1)2 ?=3
	P1 /'Составное\n'>C ?=3
	P2 /'Вероятно простое\n'>C
	P3
**



testmr(/)
	
	@+L1(100)
	*** @+L2(100)
	*** @+F3(100)
	
	On
	6679881=n *** - не простое число
	*** 96558=n *** - не простое число
	*** 524287=n *** - простое число
	*** 2147483647=n *** - простое число
	*** 1073676287=n *** - простое число
	
	OQ1
	*trial_division_method(n/L1)
	/'Q1 = '>C *printf(Q1/) /'\n'>C
	
	*miral(n, 32/b)
	
	?(b=1)2 ?(b=0)1 ?=3
	
	P1 /'Составное\n'>C ?=3
	P2 /'Вероятно простое\n'>C
	P3 
	
**


*** miller-rabin-algorithm()
*** L2 - количество раундов, есть ли смысл делать большим числом?
*** может ли степень s быть больше 32 бит?
*** L1 - n простое нечётное число
*** 
*** 
*** 
*** 
miralBN(L1, L2/b)
	@+L3(20) *** m = n-1 (L1-1)
	@+L4(20) *** q, потом t
	*** @+L5(20) *** t
	@+L6(20) *** i, до начала индексации промежуточный комплекс
	@+L7(20) *** a
	@+L8(20) *** 2ка и 1ца
	*** @+L9(20) *** 
	@+L10(20) *** x
	*** @+L11(20) *** j на случай, если степень двойки(число s) будет большим числом
	
	
	1=L3.0 2=L6.0=L4.0 1=Q6=Q4 Ob
	Q1=Q3 L1-L3=L3 *** L3 теперь m = n-1 (L1-1)
	*countZeroesBN(L3/s) 
	*** /'s = '>C *printf(s/) /'\n'>C
	*powBN2(L4, L6/L4) L3/L4=L4
	OL6.0=j=L7.0 1=Q7=Q8
	P1 2=L8.0 *BN_greq(L6, L2/c) ?(c=1)4 L7+L8=L7
		 /'L6 = '>C *HprintfBN(L6/) /'\n'>C
		 /'L7 = '>C *HprintfBN(L7/) /'\n'>C
		 /'L4 = '>C *HprintfBN(L4/) /'\n'>C
		 /'L1 = '>C *HprintfBN(L1/) /'\n'>C
		 *powBN(L7, L4, L1/L10) 1=L8.0 L6+L8=L6
		 /'L7^L4 mod L1 = '>C *HprintfBN(L10/) /'\n'>C
		 **** /'L8 = '>C *HprintfBN(L8/) /'\n'>C
		 *** /'L3 = '>C *HprintfBN(L3/) /'\n'>C
		 *BN_eq(L10, L8/c) ?(c=1)1 1=j
		 *BN_eq(L10, L3/c) ?(c=1)1
	P2 ?(j>=s)3
		 /'L10 = '>C *HprintfBN(L10/) /'\n'>C
		 /'L8 = '>C *HprintfBN(L8/) /'\n'>C
		 /'L1 = '>C *HprintfBN(L1/) /'\n'>C
		 2=L8.0 *powBN(L10, L8, L1/L10) 1=L8.0
		 /'L10^L8 mod L1 = '>C *HprintfBN(L10/) /'\n'>C
		 *BN_eq(L10, L8/c) ?(c=1)3 Dj *BN_eq(L10, L3/c) ?(c=1)4 ?=2
	P3 ?=5 *** /'Составное\n'>C ?=5
	P4 Db *** /'Вероятно простое\n'>C
	P5
**



*** Тест Миллера-Рабина
*** возвращает значение b равное 1, если вероятно простое, 0, если составное
*** n - проверяемое число, r - количество раундов
miral(n, r/b)
	*** @+L1(20)
	*** @+L2(20)
	*** @+L3(20)
	*** OQ1=Q2 ***=Q3
	n-1=m Oq=s=b Dq
	*countZeroes(m/s) *** на этой строке считается s - степень двойки (2^s)*t+1
	q<s=q m/q=t
	*** /'q = '>C *printf(q/) /'\n'>C
	*** /'s = '>C *printf(s/) /'\n'>C
	*** /'t = '>C *printf(t/) /'\n'>C
	Oi=j=a
	P1 ?(i>=r)4 a+2=a
		 *** m-1=a X;a=a ?(a<2)1 *** поиск псевдослучайного значения от 2 до n-2
		 *** /'i = '>C *printf(i/) /'\n'>C
		 *** /'a = '>C *printf(a/) /'\n'>C
		 *pow(a, t, n/x) Di
		 ?(x=1)1 1=j ?(x=m)1
	P2 ?(j>=s)3
		 *** x=L1.0 n=L2.0 1=Q1=Q2
		 *** /'x = '>C *printf(x/) /'\n'>C
		 *** /'m = '>C *printf(m/) /'\n'>C
		 *pow(x, 2, n/x)
		 *** L1*L1;L2=L1 L1.0=x
		 ?(x=1)3 Dj ?(x=m)4 ?=2
	P3 ?=5 *** /'Составное\n'>C ?=5
	P4 Db *** /'Вероятно простое\n'>C
	P5
**


*** возможно ли, что степень двойки будет большим числом?
*** проблема - может прийти комплекс с мощностью больше 1, но равный нулю
countZeroesBN(L1/s)
	?(Q1=0)4 Oi=s ?(Q1>1)1 ?(L1.0=0)5
	P1 ?(i>=Q1)3 ?(L1i#0)2 s+32=s Di ?=1
	P2 *countZeroes(L1i/b) *** /'czs = '>C *printf(s/) /'\n'>C
		 *** /'b = '>C *printf(b/) /'\n'>C
		 s+b=s
		 *** /'s = '>C *printf(s/) /'\n'>C
		 *** /'i = '>C *printf(i/) /'\n'>C
	P3 s/Q1=t s;Q1=l t+l=l ?(l=32)5 ?=6
	P4 /'ОШИБКА: Мощность комплекса равна нулю\n'>C
	P5 Os /'ОШИБКА: Комплекс полностью из нулей\n'>C
	P6
**


countZeroes(x/s)
	Os ?(x=0)2 1=t t&x=a
	P1 ?(a#0)2 Ds t<1=t t&x=a ?=1
	P2
**


*** проверка, что 2 больших числа равны
*** BN_eq(L1, L2/b)

*** проверка, что большое число L1 больше числа L2
*** BN_gr(L1, L2/b)

*** проверка, что большое число L1 меньше числа L2
*** BN_less(L1, L2/b)

*** проверка, что большое число L1 больше или равно числу L2
*** BN_greq(L1, L2/b)

*** проверка, что большое число L1 меньше или равно числу L2
*** BN_leq(L1, L2/b)

*** проверка, что 2 больших числа не равны
*** BN_neq(L1, L2/b)
