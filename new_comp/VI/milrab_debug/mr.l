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
	*randPrimeBN(50, 20/L1)
	/'Prime Number is '>C *HprintfBN(L1/) /'\n'>C
	
	*** *ttt(/)
	
	*** вывод списка простых чисел от 3 до 32 бит
	10=l
	*** (*) раскомменитровать
	*** *randPrimesList(3, l/L1)
	*** Oi ?(Q1<1)2
	*** P1 /'L1.'>C *printf(i/) /' = '>C *printf(L1i/) /'\n'>C Di ?(i<l)1
	*** P2
	*** (*) до сюда
	
	*** *miral(602314123, 20/b)
	*** *printf(b/) /'\n'>C
**


*** генерация простого числа
*** k - количество бит
*** l - максимально возможная длина числа (количество элементов)
*** L1 - число
randPrimeBN(k, l/L1)
	Oi⇒Q1=s=t ↑(k<2)3
	§1 k:32=t Z=s
		 ?(t>l)3 ?(s=0)2 Dt ?(t>l)3 t=Q1 *** DQ1
	§2
		*randBN(L1/)
		*** /'t = '>C *printf(t/) /'\n'>C
		*** /'s = '>C *printf(s/) /'\n'>C
		 s-1⇒c Q1-1=t
		 L1.0∨1=L1.0 L1t∨Ic=L1t 32-s=c ffffffffh>c=c L1t&c=L1t
		 *** /'t = '>C *printf(t/) /'\n'>C
		 /'Current Number: '>C *HprintfBN(L1/) /'\n'>C
		 *miralBN(L1, 5/b) *** /'b = '>C *printf(b/) /'\n'>C
		  b?-2 *** ↑(b=0)2
	§3
**


testmrBN(/)
	@+L1(100)
	@+L2(100)
	@+F3(100)
	
	*** 0x966AA219284F4DAF - простое
	*** 
	***  '0x1ffffffffffffffffffffff' - простое число
	*** OQ3 @'0x1ffffffffffffffffffffff'>F3
	*** OQ3 @'0x1ffffff12312312'>F3
	*** OQ3 @'0x7ffffffffffffffffffffffffff'>F3
	OQ3 @'0x966AA219284F4DAF'>F3
	
	OQ1=Q2=i
	*inputBN(L1, F3, i/L1, i)
	*** *inputBN(L2, F3, i/L2, i)
	
	32=L2.0 1=Q2
	
	*miralBN(L1, 5/b)
	
	?(b=0)1 ?(b=1)2 ?=3
	P1 /'Составное\n'>C ?=3
	P2 /'Вероятно простое\n'>C
	P3
**


*** miller-rabin-algorithm()
*** r - количество раундов, есть ли смысл делать большим числом?
*** может ли степень s быть больше 32 бит?
*** L1 - n простое нечётное число
*** 
*** 
*** 
*** 
miralBN(L1, r/b)
	@+L3(20) *** m = n-1 (L1-1)
	@+L4(20) *** q, потом t n = (q^2)*t+1
	*** @+L5(20) *** t
	@+L6(20) *** i, до начала индексации промежуточный комплекс
	@+L7(20) *** a
	@+L8(20) *** 1ца, 2ка для последовательности 2, 3, 5 ,7,...
	*** @+L9(20) *** 
	@+L10(100) *** x
	*** @+L11(20) *** j на случай, если степень двойки(число s) будет большим числом
	
	1=L4.0=Q6=Q4=Q3 Ob
	*BN_eq(L1, L3/c) ?(c=1)5
	Q1=Q3 OL3 1=L3.0
	L1-L3=L3 *** L3 теперь m = n-1 (L1-1)
	/'L3 = '>C *HprintfBN(L3/) /'\n'>C
	*countZeroesBN(L3/s)
	L4<s=L4
	*** /'s = '>C *printf(s/) /'\n'>C
	*** /'L4 = '>C *HprintfBN(L4/) /'\n'>C
	L3/L4=L4
	Oj=i 1=L8.0=L6.0 2=L7.0 1=Q7=Q8=Q6
	P1 ?(i>=r)4 *BN_greq(L7, L3/c) ?(c=1)4
		 *** /'L6 = '>C *HprintfBN(L6/) /'\n'>C
		 *** /'L7 = '>C *HprintfBN(L7/) /'\n'>C
		 *** /'L4 = '>C *HprintfBN(L4/) /'\n'>C
		 *** /'L1 = '>C *HprintfBN(L1/) /'\n'>C
		 *powBN(L7, L4, L1/L10)
		 *** /'L10 = '>C *HprintfBN(L10/) /'\n'>C
		 Di L7+L8=L7 1=L8.0
		 *** /'L7^L4 mod L1 = '>C *HprintfBN(L10/) /'\n'>C
		 **** /'L8 = '>C *HprintfBN(L8/) /'\n'>C
		 *** /'L3 = '>C *HprintfBN(L3/) /'\n'>C
		 
		 *BN_eq(L10, L8/c) 2=L8.0 ?(c=1)1
		 *BN_eq(L10, L3/c) ?(c=1)1
		 1=j
	P2 ?(j>=s)5
		 *** /'L10 = '>C *HprintfBN(L10/) /'\n'>C
		 *** /'L8 = '>C *HprintfBN(L8/) /'\n'>C
		 *** /'L1 = '>C *HprintfBN(L1/) /'\n'>C
		 L10*L10;L1=L10 1=L8.0
		 *** 2=L8.0 *powBN(L10, L8, L1/L10) 1=L8.0
		 *** /'L10^L8 mod L1 = '>C *HprintfBN(L10/) /'\n'>C
		 *BN_eq(L10, L8/c) 2=L8.0 ?(c=1)5 *BN_eq(L10, L3/c) ?(c=1)1 Dj ?=2
	P4 Db *** /'Вероятно простое\n'>C
	P5
**

testmr(/)
	
	@+L1(100)
	*** @+L2(100)
	*** @+F3(100)
	
	On
	*** 6679881=n *** - не простое число
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



*** Тест Миллера-Рабина
*** возвращает значение b равное 1, если вероятно простое, 0, если составное
*** выбран вариант роста a на двойку после 3ёх: 2, 3, 5, 7,....
*** также можно добавить вариант со случайным значением a он закомментирован ниже
*** n - проверяемое число, r - количество раундов
miral(n, r/b)
	*** @+L1(20)
	*** @+L2(20)
	*** @+L3(20)
	*** OQ1=Q2 ***=Q3
	n-1=m Oq=s=b Dq
	?(n=1)5
	*countZeroes(m/s) *** на этой строке считается s - степень двойки (2^s)*t+1
	q<s=q m/q=t
	*** /'q = '>C *printf(q/) /'\n'>C
	Oi=j=c Dc 2=a
	P1 ?(i>=r)4 ?(a>=m)4
		*** m-1=a X;a=a ?(a<2)1 *** поиск псевдослучайного значения от 2 до n-2
		*pow(a, t, n/x)
		*** /'a = '>C *printf(a/) /'\n'>C
		Di a+c=a 2=c
		?(x=1)1 ?(x=m)1 1=j
	P2 ?(j>=s)5
		 *** x=L1.0 n=L2.0 1=Q1=Q2
		 *** /'x = '>C *printf(x/) /'\n'>C
		 *** *pow(x, 2, n/x)
		 x*x:n Z=x
		 *** L1*L1;L2=L1 L1.0=x
		 ?(x=1)5 ?(x=m)1 Dj ?=2
	P4 Db *** /'Вероятно простое\n'>C *** иначе составное
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
