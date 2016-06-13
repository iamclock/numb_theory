main(/)
	@+L1(1000) OQ1
	@+L2(1000) OQ2
	@+L3(1000) OQ3
	@+L4(1000) OQ4
	@+F5(100)
	/F5<C
	*s2n(F5, 10/n)
	*** *EuclAlg_test(/)
	*** *dih_bar_test(/)
	*** *degree_tset(/)
	*** *extEuclAlg_test2(/)
	*** *extEuclAlg_rowTest(/)
	*** *rsaGen_test(/)
	*** 1024=n
	*** P1
	*printf(n/) /'\n'>C
	*rsaEncrypt_test(n/L1, L2, L3, L4)
	
	T=t
	*rsaDecrypt_test(L4, L3, L1, L2/)
	T-t=t
	/'n = '>C *printf(n/) /'\n'>C
	/'Время?\n'>C *printf(t/) /'\n'>C
	/'\n**************************************************\n'>C
	*** ?(n<10)2
	*** n-10=n
	*** ?=1
	*** *ttt(/)
	P2
**


*** echo -n > rsa_encr.txt > rsa_decr.txt && ./rsa_ | tee output.txt

*** возможна проблема, если числа будут отрицательными в rsaGen
*** в powBN_bar L1;L3=L5 не заменяется на barmod(...)


***********************************************************
*********************    Алгоритмы    *********************
***********************************************************


emptyShot(n/)
	Oi
	P1
		X X X X X X X X X X X X
		X X X X X X X X X X X X
		X X X X X X X X X X X X
		X X X X X X X X X X X X
		X X X X X X X X X X X X
		X X X X X X X X X X X X
		X X X X X X X X X X X X
		X X X X X X X X X X X X
		X X X X X X X X X X X X
		X X X X X X X X X X X X
		X X X X X X X X X X X X
		Di ?(i<n)1
	P2
**




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



*** L2 - закрытый ключ, d
*** L3 - закрытый ключ, n
*** L4 - открытый ключ, p
*** L5 - закрытый ключ, q
rsaDecrypt_test(L2, L3, L4, L5/)
	@+F1(1000) OQ1
	255=n
	*** /'p = '>C *HprintfBN(L4/) /'\n'>C
	*** /'q = '>C *HprintfBN(L5/) /'\n'>C
	*** /'n = '>C *HprintfBN(L3/) /'\n'>C
	*** /'d = '>C *HprintfBN(L2/) /'\n'>C
	/'		RSA Decrypt Algorithm\n		You`re Welcome!\n'>C
	
	OQ1 @'rsa_encr.txt'>F1
	*fopen(F1, 0/a)
	OQ1 @'rsa_decr.txt'>F1
	*fopen(F1, 1/b)
	*** /'descriptor a = '>C *printf(a/) /'\n'>C
	*** /'descriptor b = '>C *printf(b/) /'\n'>C
	
	*** *countBits(L3/n)
	Q3*4=n
	P1
	*** /'bytsDec = '>C *printf(n/) /'\n'>C
	*BNrsaDecrypt(n, a, b, L2, L3, L4, L5/e)
	*fclose(a/)
	*fclose(b/)
	*** /'L2 = '>C *HprintfBN(L2/) /'\n'>C
**



*** 
*** 
*** 
*** 
rsaGarnersAlgorithm()
	
	
	
	
	
**


*** 
*** 
*** 
rsaChinRemAlg(L1, L2, L3, L4/L5)
	@+L6(1000) *** M
	@+L7(1000) *** M^(-1)p
	@+L8(1000) *** M^(-1)q
	*** /'\n\nrsaChinRemAlg:\n'>C
	
	
	*BNinvElement(L4, L3/L7, L6)
	*** /'L6 = '>C *HprintfBN(L6/) /'\n\n'>C
	*** /'L7 = '>C *HprintfBN(L7/) /'\n\n'>C
	*BNinvElement(L3, L4/L8, L6)
	*** /'L6 = '>C *HprintfBN(L6/) /'\n\n'>C
	*** /'L8 = '>C *HprintfBN(L8/) /'\n\n'>C
	*karatsuba(L3, L4/L6) *** L6 = M
	*** /'L6 = '>C *HprintfBN(L6/) /'\n\n'>C
	*karatsuba(L7, L4/L7)
	*** /'L7 = '>C *HprintfBN(L7/) /'\n\n'>C
	*karatsuba(L7, L1/L7)
	*** /'L7 = '>C *HprintfBN(L7/) /'\n\n'>C
	*karatsuba(L8, L3/L8)
	*** /'L8 = '>C *HprintfBN(L8/) /'\n\n'>C
	*karatsuba(L8, L2/L8)
	*** /'L8 = '>C *HprintfBN(L8/) /'\n\n'>C
	*** /'Q7 = '>C *printf(Q7/) /'\n'>C
	*** /'Q8 = '>C *printf(Q8/) /'\n'>C
	*** /'L7 = '>C *HprintfBN(L7/) /'\n\n'>C
	*** /'L8 = '>C *HprintfBN(L8/) /'\n\n'>C
	*** ?(Q7>Q8)2
	*** P1
	Q7+Q8=l *optimize(L8, l/L8)
	L8+L7;L6=L8 *** ?=3
	*** P2
		*** L7+L8;L6=L8
	*** P3
		Q6=Q8
	*** /'L8 = '>C *HprintfBN(L8/) /'\n'>C
	L8=L5
**



*** расшифрование блока зашифрованного сообщения
*** методом китайской теоремы об остатках
*** L1 - число p из разложения числа N = p*q
*** L2 - число q из разложения числа N = p*q
*** L3 - число d секретная экспонента
*** L4 - число C - зашифрованное значение
crt_decrypt(L1, L2, L3, L4/L10)
	@+L5(1000) OQ5 *** d mod (p-1), C^(d mod(p-1)), mp
	@+L6(1000) OQ6 *** d mod (q-1), C^(d mod(q-1)), mq
	@+L7(1000) OQ7 *** вспомогательное слагаемое для алгоритма баррета z
	@+L8(1000) OQ8 *** 1
	*** /'\n\ncrt_decrypt:\n'>C
	*** /'p = '>C *HprintfBN(L1/) /'\n'>C
	*** /'q = '>C *HprintfBN(L2/) /'\n'>C
	*** /'d = '>C *HprintfBN(L3/) /'\n'>C
	*** /'C = '>C *HprintfBN(L4/) /'\n'>C
	
	1=Q8=L8.0
	L1-L8=L5 *** L5 = p-1
	L2-L8=L6 *** L6 = q-1
	*** /'Q1 = '>C *printf(Q1/) /'\n'>C
	*** /'Q2 = '>C *printf(Q2/) /'\n'>C
	*** /'Q5 = '>C *printf(Q5/) /'\n'>C
	*** /'Q6 = '>C *printf(Q6/) /'\n'>C
	
	*** /'p-1 = '>C *HprintfBN(L5/) /'\n'>C
	*** /'q-1 = '>C *HprintfBN(L6/) /'\n'>C
	
	
	Q5*2⇒Q7 OL7
	Q7⇒k+1⇒Q7 1⇒L7k L7/L5⇒L7
	*** *barmod(L3, L5, L7/L5) *** L5 = d mod (p-1)
	Q5=t L3;L5=L5 t=Q5 *** L5 = d mod (p-1)
	
	Q6*2⇒Q7 OL7
	Q7⇒k+1⇒Q7 1⇒L7k L7/L6⇒L7
	*** *barmod(L3, L6, L7/L6) *** L6 = d mod (q-1)
	Q6=t L3;L6=L6 t=Q6 *** L6 = d mod (q-1)
	
	*** /'dp = '>C *HprintfBN(L5/) /'\n\n'>C
	*** /'dq = '>C *HprintfBN(L6/) /'\n\n'>C
	
	*powBN_karat(L4, L5, L1/L5) *** L5 = C^(d mod(p-1)) mod p
	*powBN_karat(L4, L6, L2/L6) *** L6 = C^(d mod(q-1)) mod q
	
	*** /'Cp = '>C *HprintfBN(L5/) /'\n\n'>C
	*** /'Cq = '>C *HprintfBN(L6/) /'\n\n'>C
	
	*rsaChinRemAlg(L5, L6, L1, L2/L6)
	*** /'result = '>C *HprintfBN(L6/) /'\n'>C
	
	L6=L10
	
**



*** преобразование блока чисел в логическом комплексе
*** в символы в символьном комплексе без учёта нулевых
*** символов
*** требуется для алгоритма rsa в расшифровании
*** e - признак ошибки
blockToStr_forDecrypt(L1, F2/F2, e)
	Oe=j Q1*4-1=Q2
	Q1-1=i 24=s
	P1
		L1i>s=F2j ?(F2j=0)2 Dj
	P2
		s-8=s ?(s>24)3 ?=1
	P3
		Yi 24=s ?(i<Q1)1
		*** /'j = '>C *printf(j/) /'\n'>C
		j=Q2
**


*** Алгоритм расшифрования сообщения зашифрованного методом RSA
*** n - число байт для считывания
*** r - дескриптор файла для считывания
*** w - дескриптор файла для записи
*** L1 - число d, закрытая экспонента
*** L2 - число n, модуль
*** L3 - число p, закрытая ключ
*** L4 - число q, закрытая ключ
*** e - признак ошибки
BNrsaDecrypt(n, r, w, L1, L2, L3, L4/e)
	@+F5(1000) OQ5
	@+L6(1000) OQ6
	Ok *** /'n Dec = '>C *printf(n/) /'\n'>C
	T=p 
	P1
		Ok
		*freadf(r, F5, 0, n/k)
		*** /'k = '>C *printf(k/) /'\n'>C
		?(k=0)2 k=Q5 *** /F5>C
		*** /'\n\nk = '>C *printf(k/) /'\n'>C
		*strToBlock(F5, L6/L6, e)
		*** /'\n\nQ5 = '>C *printf(Q5/) /'\n'>C
		Q6=t
		*** /'L6 encrypted:\n'>C
		*** /'L6 = '>C *HprintfBN(L6/) /'\n\n'>C
		*crt_decrypt(L3, L4, L1, L6/L6)
		*** *powBN_karat(L6, L1, L2/L6)
		*** /'L6 decrypted:\n'>C
		*** /'L6 = '>C *HprintfBN(L6/) /'\n\n'>C
		*** /'Q6 = '>C *printf(Q6/) /'\n'>C
		t=Q6
		OQ5 *blockToStr_forDecrypt(L6, F5/F5, e)
		*fwritef(w, F5, 0, Q5/k)
		*** /F5>C
		?=1
	P2
		T-p=p
		/'\np = '>C *printf(p/) /'\n'>C
**



countBits(L1/n)
	?(Q1=0)2 Q1-1=i*32=n
	32=s
	P1
		Ys ?(s>31)2 1<s&L1i?-1 s+1+n=n
	P2
**



*** k - количество бит
*** L2 - закрытый ключ, p
*** L3 - закрытый ключ, q
*** L4 - открытый ключ, n
*** L5 - открытый ключ, e
*** L6 - закрытый ключ, d
rsaEncrypt_test(k/L2, L3, L4, L6)
	@+F1(100) OQ1
	@+L5(1000) OQ5
	*BNrsaGen(k/L2, L3, L4, L5, L6)
	*** /'p = '>C *HprintfBN(L2/) /'\n'>C
	*** /'q = '>C *HprintfBN(L3/) /'\n'>C
	*** /'n = '>C *HprintfBN(L4/) /'\n'>C
	*** /'e = '>C *HprintfBN(L5/) /'\n'>C
	*** /'d = '>C *HprintfBN(L6/) /'\n'>C
	OQ1 @'text.txt'>F1
	*fopen(F1, 0/a)
	OQ1 @'rsa_encr.txt'>F1 *** /F1>C /'\n'>C
	*fopen(F1, 1/b)
	?(a=0)3 ?(b=0)3
	*** /'descriptor a = '>C *printf(a/) /'\n'>C
	*countBits(L4/n)
	?(n>8)1 2=n ?=2
	P1
		OZ n:8=n ?(Z=0)2 Dn
	P2
		Yn
		*** /'bytesEncr = '>C *printf(n/) /'\n'>C
		*BNrsaEncrypt(n, a, b, L5, L4/e)
	*fclose(a/)
	*fclose(b/) ?=4
	P3 /'ОШИБКА: Один из дескрипторов не работает\n'>C
	P4
**


*** https://ru.wikipedia.org/wiki/RSA#.D0.9F.D1.80.D0.B8.D0.BC.D0.B5.D1.80
*** генерация ключей для алгоритма RSA
*** L1 - закрытый ключ, p
*** L2 - закрытый ключ, q
*** L3 - открытый ключ, n
*** L4 - открытый ключ, e
*** L5 - закрытый ключ, d
BNrsaGen(k/L1, L2, L3, L4, L5)
	@+L6(1000) OQ6
	@+L7(1000) OQ7
	OQ1=Q2=Q3=Q4=Q5
	?(k<3)4
	@+L8(4) OQ8
	*** открытая экспонента может быть равна {3, 17, 257, 65537}
	4=Q8 3=L8.0+14=L8.1+240=L8.2+65280=L8.3
	*** возможна проблема, если числа будут отрицательными
	OZ=s k:32=q Z?-1 1=s
	*** /'q = '>C *printf(q/) /'\n'>C
	*** /'s = '>C *printf(s/) /'\n'>C
	P1
		q+s=Q1=Q2
		k/10=r 102-r*2+1=r
		*emptyShot(r/)
		*** T=X
		/'k = '>C *printf(k/) /'\n'>C
		/'p generates... '>C
		*randPrimeBN(k/L1)
		*emptyShot(1/)
		*** T=X
		/'\nq generates... '>C
		*randPrimeBN(k/L2)
		/'\nDone\n'>C
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
	P2
		L8j=L4.0
		*BNinvElement(L4, L5/L6, L7)
		*** /'L4 = '>C *HprintfBN(L4/) /'\n\n'>C
		*** /'L5 = '>C *HprintfBN(L5/) /'\n\n'>C
		*** /'L6 = '>C *HprintfBN(L6/) /'\n\n'>C
		*** /'L7 = '>C *HprintfBN(L7/) /'\n\n'>C
		*** L4 приравниваю к 1 для сравнения с наибольшим
		*** общим делителем, чтобы не заводить новый комплекс
		*** значение, при котором был найден обратный элемент
		*** с наибольшим общим делителем равным 1 лежит в L8
		*** j-1 элементе
		Dj 1=L4.0 *BN_eq(L7, L4/a) ?(j>3)3 ?(a#1)2
	Yj L8j=L4.0
	L6=L5
	*** /'L5 = '>C *HprintfBN(L5/) /'\n'>C
	?=4
	P3 /'Ошибка: Что то не так с j в P2\n'>C *** на всякий случай, по теории, ошибки не должно быть
	P4
**




*** преобразование блока символов в логический комплекс
*** каждый символ это два числа в шестнадцатеричной
*** системе счисления.
*** требуется для алгоритма rsa
*** e - признак ошибки
strToBlock(F1, L2/L2, e)
	OZ=e Q1:4=n ?(Z=0)1 Dn
	P1
		n=Q2
	Oj=s Q1-1=i OL2j
	P2
		*** *printf(F1i/) /'\n'>C
		F1i<s|L2j=L2j
		Yi s+8=s ?(i>=Q1)4 ?(s>24)3 ?=2
	P3
		Dj OL2j=s ?=2
	P4
		s-8=s ffffffffh>s&L2j
**


*** преобразование блока чисел в логическом комплексе
*** в символы в символьном комплексе
*** требуется для алгоритма rsa
*** e - признак ошибки
blockToStr(L1, F2/F2, e)
	Oe=j Q1-1=i+1*4=Q2
	24=s
	P1
		L1i>s=F2j
		*** *printf(F2j/) /'\n'>C
		Dj s-8=s ?(s>24)2 ?=1
	P2
		Yi 24=s ?(i<Q1)1
	P3
**


*** Алгоритм шифрования сообщения методом RSA
*** n - число байт для считывания из файла. В общей
*** сложности количество бит в этих байтах должно быть
*** меньше бит в n(модуле, тот, что L4)
*** r - дескриптор файла, с которого производить чтение
*** сообщения
*** w - дескриптор файла, в который производить запись
*** зашифрованного сообщения
*** L3 - e - открытая экспонента
*** L4 - n - модуль
*** e - признак ошибки(не то e, что выше)
BNrsaEncrypt(n, r, w, L3, L4/e)
	@+F1(1000) OQ1
	Q4*4=t
	@+F2(t) OQ2
	@+L5(1000) OQ5
	@+L8(1000) OQ8
	@+L11(1000) OQ11
	Oe *** /'n = '>C *printf(n/) /'\n'>C
	P1
		
		OQ1 *freadf(r, F1, 0, n/k)
		*** /'k = '>C *printf(k/) /'\n'>C
		*** обработать случай, когда k может означать ошибку
		k=Q1 Oi ?(k=0)2
		*** *printFComplex(F1/)
		*strToBlock(F1, L5/L5, e)
		*** /F1>C
		*** /'\n\n ##################################\n\n'>C
		*** /'\nQ4 = '>C *printf(Q4/) /'\n'>C
		Q4-1=t OL8t
		*powBN_karat(L5, L3, L4/L8)
		*** /'L4 = '>C *HprintfBN(L4/) /'\n'>C /'\n'>C
		*** /'L8 = '>C *HprintfBN(L8/) /'\n\n'>C
		*** /'L5 = '>C *HprintfBN(L5/) /'\n\n'>C
		*** /'Q8 = '>C *printf(Q8/) /'\n'>C
		Q4=Q8
		OQ2 *blockToStr(L8, F2/F2, e)
		*** /'Q2 = '>C *printf(Q2/) /'\n'>C
		*fwritef(w, F2, 0, Q2/k)
		*** /'k = '>C *printf(k/) /'\n'>C
		*** если k меньше Q2 e = 1
		?=1
	P2
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




rsaGen_test(/)
	@+L1(1000)
	@+L2(1000)
	@+L3(1000)
	@+L4(1000)
	@+L5(1000)
	
	
	*BNrsaGen(100/L1, L2, L3, L4, L5)
	/'L1(p) = '>C *HprintfBN(L1/) /'\n'>C
	/'L2(q) = '>C *HprintfBN(L2/) /'\n'>C
	/'L3(n) = '>C *HprintfBN(L3/) /'\n'>C
	/'L4(e) = '>C *HprintfBN(L4/) /'\n'>C
	/'L5(d) = '>C *HprintfBN(L5/) /'\n'>C
	
	
**


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