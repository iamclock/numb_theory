main(/)
	
	
	*** *EuclAlg_test(/)
	*** *dih_bar_test(/)
	*** *degree_tset(/)
	*** *extEuclAlg_test2(/)
	*** *extEuclAlg_rowTest(/)
	*** *rsaGen_test(/)
	*rsaEncrypt_test(/)
	*** *rsaDecrypt_test(/)
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


rsaDecrypt_test(/)
	@+F1(1000) OQ1
	@+L2(1000) OQ2 *** d
	@+L3(1000) OQ3 *** n
	@+L4(1000) OQ4 *** p
	@+L5(1000) OQ5 *** q
	255=n
	OQ1 @'0x446858CCEA8625A906BD57D2A3ED76044A01F2558A844B200C57B34F34E79EE56DD88A0914F18AC87962E6B35F02805C10DAC103E8A338C40B52CC476CA1D18059E87287B73090CEA6FDC4807C697D866BF034B0E799762BB74EE04C1B3ACEA615F70A676521693CA2DC32E5EE49ECC7EC3024544DE054F9102CF5E16FDC2E10CDC9E9B6D6D335ACB0A4DF561B13622BD44976EAED8EB81C46C787A6F9862143FB51C189D045C1AD5B380A476E67152D4766AECB33E996CFCB3F5E028CB70A9EBED4BC028F4274E3359C3DB889C277BE53225744C1A5C3550852FEC7696CFA03C5A6CD983ADF10517C37CECAA402E3B42BA18D452F9A58490BB6A12CE52B74F3'>F1
	*inputBN_2(L2, F1/L2)
	OQ1 @'0x669C85335FC9387D8A1C03BBF5E431066F02EB804FC670B012838CF6CF5B6E5824C4CF0D9F6A502CB6145A0D0E83C08A19482185DCF4D52610FC326B22F2BA4086DCABCB92C8D935FA7CA6C0BA9E3C49A1E84F095B66314192F6507228D835F920F28F9B17B21DDAF44A4C58E56EE32BE248367E74D07F75984370D227CA451A790164DD54959ED83F713E684D10BE621D263A0370DA0DB73B62E179A4F49E7F3745CBC9F67CC1C88A12E881F597F455C3360A0369C099B4B1AE1DB2A6FD2AF712DE48AEDE396989E3D2715BA1B2AB9E613944EA0595446CD05EBB8A303C1A7EA68F8A3EC2B1F79FE15A18A70544AAFF3C72561B09F475CA0C37CDD1CE027555'>F1
	*inputBN_2(L3, F1/L3)
	OQ1 @'0x9CE53A27538D159496C85AA5CF1D84AA324A5333E7750710182D83514FDEA24691984E7F66702FCC2F3CFC3DAA9BBD22F502980B67F5EBC87826D1692D89513E5E10DBD7174ED704284D4ED572A31A9A466B05E32FD0CD8090B10081B2081536A6E5422F345AEB3CC49CB26DF5967D1280CBFCBBFE118C383091709969C7CE2F'>F1
	*inputBN_2(L4, F1/L4)
	OQ1 @'0xA76D4C23BECBB8C09FB194C1555626762C6DB46F250EF27CB90A12ADDECCCA52ACB2DAFBD7A3EF785201DCD92561976EE3196BC733EC4BB488A83F45A66149CA968E52D3F006E330EB1AC5F1606BDD669E1ABC1FB34BD1ECB3313CDD60108E42573013AB360873E8E269B00919A9D85E7A340577447B65244A146B750C7977BB'>F1
	*inputBN_2(L5, F1/L5)
	
	
	
	OQ1 @'rsa_encr.txt'>F1  /F1>C /'\n'>C
	*fopen(F1, 0/a)
	OQ1 @'rsa_decr.txt'>F1  /F1>C /'\n'>C
	*fopen(F1, 1/b)
	/'descriptor a = '>C *printf(a/) /'\n'>C
	/'descriptor b = '>C *printf(b/) /'\n'>C
	
	*countBits(L3/n)
	OZ n:8=n ?(Z=0)1 Dn
	P1
		Yn /'n = '>C *printf(n/) /'\n'>C
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
	
	*BNinvElement(L4, L3/L7, L6)
	*BNinvElement(L3, L4/L8, L6)
	*karatsuba(L3, L4/L6) *** L6 = M
	*karatsuba(L7, L4/L7) *karatsuba(L7, L1/L7)
	*karatsuba(L8, L3/L8) *karatsuba(L8, L2/L8)
	L7+L8;L6=L8
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
	*** /'L1 = '>C *HprintfBN(L1/) /'\n'>C
	*** /'L2 = '>C *HprintfBN(L2/) /'\n'>C
	*** /'L3 = '>C *HprintfBN(L3/) /'\n'>C
	*** /'L4 = '>C *HprintfBN(L4/) /'\n'>C
	
	1=Q8=L8.0
	L1-L8=L5 *** L5 = p-1
	L2-L8=L6 *** L6 = q-1
	
	Q5*2⇒Q7 OL7
	Q7⇒k+1⇒Q7 1⇒L7k L7/L5⇒L7
	*** *barmod(L3, L5, L7/L5) *** L5 = d mod (p-1)
	Q5=t L3;L5=L5 t=Q5
	
	Q6*2⇒Q7 OL7
	Q7⇒k+1⇒Q7 1⇒L7k L7/L6⇒L7
	*** *barmod(L3, L6, L7/L6) *** L6 = d mod (q-1)
	Q6=t L3;L6=L6 t=Q6
	
	
	*powBN_karat(L4, L5, L1/L5) *** L5 = C^(d mod(p-1)) mod p
	*powBN_karat(L4, L6, L2/L6) *** L6 = C^(d mod(q-1)) mod q
	*rsaChinRemAlg(L5, L6, L1, L2/L6)
	L6=L10
	
**





*** Алгоритм расшифрования сообщения зашифрованного методом RSA
*** n - число байт для считывания
*** r - дескриптор файла для считывания
*** w - дескриптор файла для записи
*** L3 - число d, закрытая экспонента
*** L4 - число n, модуль
*** e - признак ошибки
BNrsaDecrypt(n, r, w, L1, L2, L3, L4/e)
	@+F5(1000) OQ5
	@+L6(1000) OQ6
	Ok
	P1
		*freadf(r, F5, 0, n/k)
		?(k=0)2 k=Q5 *** /F5>C
		/'k = '>C *printf(k/) /'\n'>C
		*strToBlock(F5, L6/L6, e)
		*** /'L6 = '>C *HprintfBN(L6/) /'\n'>C
		/'Q6 = '>C *printf(Q6/) /'\n'>C
		*** *crt_decrypt(L3, L4, L1, L6/L6)
		*powBN_karat(L6, L1, L2/L6)
		*** /'L6 = '>C *HprintfBN(L6/) /'\n'>C
		*blockToStr(L6, F5/F5, e)
		/F5>C
		?=1
	P2
**



countBits(L1/n)
	?(Q1=0)2 Q1-1=i*32=n
	32=s
	P1
		Ys ?(s>31)2 1<s&L1i?-1 s+1+n=n
	P2
**




rsaEncrypt_test(/)
	@+F1(100) OQ1
	@+L2(1000) OQ2
	@+L3(1000) OQ3
	@+L4(1000) OQ4
	@+L5(1000) OQ5
	@+L6(1000) OQ6
	*BNrsaGen(1024/L2, L3, L4, L5, L6)
	*** /'Q4 = '>C *printf(Q4/) /'\n'>C
	OQ1 @'text.txt'>F1
	*fopen(F1, 0/a)
	OQ1 @'rsa_encr.txt'>F1  /F1>C /'\n'>C
	*fopen(F1, 1/b)
	?(a=0)2 ?(b=0)2
	*** /'descriptor a = '>C *printf(a/) /'\n'>C
	/'	*******************\n'>C
	T=t
	*countBits(L4/n)
	OZ n:8=n ?(Z=0)1 Dn
	P1
		Yn
		/'n = '>C *printf(n/) /'\n'>C
		*BNrsaEncrypt(n, a, b, L5, L4, L6, L2, L3/e)
	T-t=t /'t = '>C *printf(t/) /'\n'>C
	/'	*******************\n'>C
	*fclose(a/)
	*fclose(b/)
	P2
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
		*randPrimeBN(k/L1)
		/'tasty?\n'>C
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
		*randPrimeBN(k/L2)
		/'yeah!\n'>C
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



*** перевод большого числа в символьный комплекс
*** e - признак ошибки
BNtoStr(L1, F2/F2, e)
	1=e ↑(Q1=0)6 Oe
	Oi⇒f 4⇒s Q1-1⇒j 15⇒y '0'@>F2 'x'@>F2 '0'@>F2 2⇒l+1⇒Q2
	§1 ↑(i≥8)4
			***/'j= '>C *printf(j/) /'\n'>C
			16<1-s⇒t ***/'t= '>C *printf(t/) /'\n'>C	*** 16 для оптимизации под конкретную архитектуру
			L1j>t⇒x x&y⇒x s+4⇒s *** /'x= '>C *printf(x/) /'\n'>C
			*** *Hprintf(L1j/)
			x↪2 1⇒f
	§2 ↑(x<10)3 ∆i x-10+'A'⇒F2l ∆l⇒Q2 →1 *** ∆l⇒Q2 для того, чтобы обрабатывался ноль, как 0x0
	§3 ∆i ↑(f=0)1 x+'0'⇒F2l ∆l⇒Q2 →1 *** связано с 2⇒l+1⇒Q2
	§4 ↑(j=0)5 4⇒s ∇j Oi →1 *** ↑(j≥Q1)5
	§5 ↑(Q1>1)6 *** ↑(L1.0>0)6 '0'@>F2
	§6
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
	Oi Q2-1=j OL2j 24=s ff000000h=l
	P2
		*** F1i<s=l L2j^l=L2j
		F1i<s^L2j=L2j
		Di s-8=s ?(i>=Q1)4 ?(s>24)3 ffh<s=l ?=2
	P3
		Yj OL2j 24=s ff000000h=l ?=2
	P4
		*** /'\n\n'>C
		*** /'L2j = '>C *Hprintf(L2j/) /'\n'>C
		s+8=s ffffffffh>s&L2j
**


*** преобразование блока чисел в логическом комплексе
*** в символы в символьном комплексе
*** требуется для алгоритма rsa
*** e - признак ошибки
blockToStr(L1, F2/F2, e)
	Oe=j Q1*4=Q2
	Q1-1=i 24=s
	P1
		L1i>s=F2j Dj s-8=s ?(s>24)2 ?=1
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
BNrsaEncrypt(n, r, w, L3, L4, L6, L9, L10/e)
	@+F1(1000) OQ1
	Q4*4=t
	@+F2(1000) OQ2
	@+L5(1000) OQ5
	@+L8(1000) OQ8
	@+L11(1000) OQ11
	Oe
	P1
		OQ1 *freadf(r, F1, 0, n/k)
		*** обработать случай, когда k может означать ошибку
		k=Q1 Oi ?(k=0)2
		*strToBlock(F1, L5/L5, e)
		*** *countBits(L4/p)
		*** /'p = '>C *printf(p/) /'\n'>C
		*** /'L4 = '>C *HprintfBN(L4/) /'\n'>C /'\n'>C
		*** /'L5 = '>C *HprintfBN(L5/) /'\n'>C /'\n'>C
		/'Q5 = '>C *printf(Q5/) /'\n'>C
		*powBN_karat(L5, L3, L4/L8)
		/'Q8 = '>C *printf(Q8/) /'\n'>C
		OQ2 *blockToStr(L8, F2/F2, e)
		*** /'e = '>C *printf(e/) /'\n'>C
		*** /'Q2 = '>C *printf(Q2/) /'\n'>C
		*** /'F2 = '>C /F2>C /'\n'>C
		*fwritef(w, F2, 0, Q2/k)
		*** если k меньше Q2 e = 1
		/'\n##############################\n'>C
		*crt_decrypt(L9, L10, L6, L8/L11)
		*** *powBN(L8, L6, L4/L11)
		*** /'L8 = '>C *HprintfBN(L8/) /'\n'>C
		*blockToStr(L11, F2/F2, e)
		/F2>C
		/'##############################\n\n'>C
		?=1
	P2
	*** /'Q1 = '>C *printf(Q1/) /'\n'>C
	*** /'b = '>C *printf(b/) /'\n'>C
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