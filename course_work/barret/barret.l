main(/)
	
	*barret_test(/)
	
**

*** GLITCH не сработало сравнение ?(F1i>'9')# в libl0.l inputBN_2
*** GLITCH: в Q5 оказалось значение Q1 в barmod
*** проблема со сравнением в barmod


barret_test(/)
	@+L1(100)
	@+L2(100)
	@+L3(100)
	@+F4(100)
	
	
							*** Вариант #1
	OQ4 /F4<C  *inputBN(L1, F4, 0/L1, k)
	OQ4 /F4<C  *inputBN(L2, F4, k/L2, k)
	
							*** Вариант #2
	*** OQ4 @'0x14C74B173777BF4446C2C4159FF940DAF0135123FE4641C05A0171C1A31E6776'>F4 *inputBN_2(L1, F4/L1)
	*** OQ4 @'0x21A72B7C7DC75FAD6F253B52096FBFFBBDAAD878'>F4  *inputBN_2(L2, F4/L2)
	
							*** Вариант #3
	*** 8=Q1 5=Q2 0=Q3
	*** *randBN(L1/) *randBN(L2/)
	*** /'Q1 = '>C *printf(Q1/) /'\n'>C
	*** /'Q2 = '>C *printf(Q2/) /'\n'>C
	*** /'L1(x) = '>C *HprintfBN(L1/) /'\n'>C
	*** /'L2(m) = '>C *HprintfBN(L2/) /'\n'>C
	*barmod(L1, L2/L3)
	*** /'L3(r) = '>C *HprintfBN(L3/) /'\n'>C
	*HprintfBN(L3/)
**


yomkost_complexa(/)
	@+L1(100)
	/'L1:\n'>C
	/'Q1 = '>C *printf(Q1/) /'\n'>C
	10=Q1
	*HprintfBN(L1/) /'\n'>C
	*randBN(L1/)
	/'Q1 = '>C *printf(Q1/) /'\n'>C
	*HprintfBN(L1/) /'\n'>C /'\n'>C
	
	/'L2:\n'>C
	Q1*4=k @+L2(k) *** k требуется взять умноженное на 4 иначе резервируется меньше места
	/'S1 = '>C S1=k *printf(k/) /'\n'>C
	/'S2 = '>C S2=k *printf(k/) /'\n'>C
	Q1=Q2 L1=L2
	/'Q2 = '>C *printf(Q2/) /'\n'>C
	*HprintfBN(L2/) /'\n'>C /'\n'>C
**



*** подсчёт битов в числе
*** L1 - большое число, b - система счисления
*** сделать подсчёт битов по системе счисления 4=2 бита, 5=3 бита
bigint_bits_count(L1, b/k)
	Oy=j b=t
	P4 t>1=t ?(t=0)5 Dj y<1=y y|1=y ?=4
	P5
	/'j= '>C *printf(j/) /'\n'>C
	Ok=i Q1?-3
	Q1-1=i 32=s
	P1  y<s=t s=k L1i&t=x?-2 Dk ?=3
	P2 s-j=s ?(s<32)1
	P3 i*32+k=k
**


*** Алгоритм баррета приведения числа по модулю
*** L1 - x число
*** L2 - m модуль
*** L3 - z
*** L4 - q, r2, r(результат)
*** base = 2^32 = 0x100000000
barmod(L1, L2/L4)
	*** 32=b
	@+L3(100)
	Q2*2=Q3 OL3
	@+L5(100) *** r1
	@+L6(100) *** r'
	@+L7(100)
	
	*** L3 = [(b^2k)/L2] ~ z = [(b^2k)/m]
	Q3=k+1=Q3 1=L3k L3/L2=L3 *** L3 = z
	
	*** Если b = 0x100000000 тогда b^2k = 1^(2*(k+1)*32)?
	
	*** /'L3(z) = '>C *HprintfBN(L3/) /'\n'>C
	Q2-1*32=k *** /'k = '>C *printf(k/) /'\n'>C
	Q2+1*32=t *** /'t = '>C *printf(t/) /'\n'>C
	L1>k=L4 Q4+Q3=l *optimize(L4, l/L4) L4*L3=L4 L4>t=L4 *** L4 = q
	*** /'L4(q) = '>C *HprintfBN(L4/) /'\n'>C
	*** /'b^(k+1) = '>C *HprintfBN(L5/) /'\n'>C
	L1=L5 Q2+1=Q5 *** L5 = r1
	L4*L2=L4 Q2+1=Q4 *** L4 = r2
	*** /'Q4 = '>C *printf(Q4/) /'\n'>C
	*** /'Q5 = '>C *printf(Q5/) /'\n'>C
	*** /'L4 = '>C *HprintfBN(L4/) /'\n'>C
	*** /'L5 = '>C *HprintfBN(L5/) /'\n'>C
	
	*** GLITCH: в Q5 оказалось значение Q1
	
	
	
	*** /'L5(r1) = '>C *HprintfBN(L5/) /'\n'>C
	*** /'L4(r2) = '>C *HprintfBN(L4/) /'\n'>C
	*** /'L6(r`) = '>C *HprintfBN(L6/) /'\n'>C
	
	
	*BN_greq(L5, L4/c) ?(c=0)1 L5-L4=L6 ?=2
	P1
		L6+L5-L4=L6
	P2
		*cutZerosBN(L6/L6) *BN_greq(L6, L2/c)
		?(c=0)3 L6-L2=L6 ?=2
	P3
		*** /'L6 = '>C *HprintfBN(L6/) /'\n'>C
		Q6=Q4 L6=L4 *** L4 = r(результат)
	
	
	*** *Hprintf(L1.0/) /'\n'>C
	*** *Hprintf(L2.0/) /'\n'>C
	*** /'k = '>C *printf(k/) /'\n'>C
	*** /'L1 = '>C *HprintfBN(L1/) /'\n'>C
	*** /'L4 = '>C *HprintfBN(L4/) /'\n'>C
**




*** Алгоритм баррета приведения числа по модулю
*** L1 - x число
*** L2 - m модуль
*** L3 - z
*** L4 - копия L1, результат
barmod_dinamic_complex(L1, L2/L4)
	32=b Q2*2*4=k
	/'k = '>C *printf(k/) /'\n'>C
	@+L3(k) k/4+1=Q3 OL3*** z
	S3=t
	/'S3 = '>C *printf(t/) /'\n'>C
	Q1*4=k
	@+L4(k) *** L1_copy, result
	Q1=Q4 L1=L4
	@+L5(100) *** r1
	@+L6(100) *** r2
	@+L7(100) *** r'
	@+L8(100) *** q
	@+L9(100)
	
	
	
	
	*** L3 = [(b^2k)/L2] ~ z = [(b^2k)/m]
	Q3-1=k b=L3k /'b = '>C *printf(b/) /'\n'>C
	/'L3 = '>C *HprintfBN(L3/) /'\n'>C
	L3/L2=L3
	/'L3 = '>C *HprintfBN(L3/) /'\n'>C
	
	
	
	
	
	
	*** /'L1 = '>C *HprintfBN(L1/) /'\n'>C
	*** /'L4 = '>C *HprintfBN(L4/) /'\n'>C
**


barmod_little(b, x, m/r)
	Oz
	?(m=0)9 ?(b<3)10
	80000000h=y Ok
	*** *printf(m/) /'\n'>C
	m=t
	P1 t/b=t Dk ?(t>0)1
	P2 2*k=t
	*dihotom2(b, t/y)
	y/m=z
	k-1=t
	dihotom2()
	=q
	
	
	
	
	
	
	
	
	
	?=11
	
	P9 /'ОШИБКА: модуль должен быть больше нуля\n'>C ?=11
	§10 /'ОШИБКА: b должно быть больше 3\n'>C
	
	
	§11
**
	
	
*** BACKUP

*** подсчёт битов в обоих числах
***?(Q2<Q3)10 Q2-1=j=i ?(Q2=Q3)1 Q3-1=i
***P1 32=s Oy=x
***P2 Ys 1<s=t ?(x=0)3 ?=4
***P3 L2j&t=x s=k ?(x=0)4 Dk
***P4 ?(y>0)5 L3i&t=y s=l ?(y=0)5 Dl
***P5 ?(s>0)2
***




*** Алгоритм баррета приведения числа по модулю
*** 
*** 
*** 
barmod_old(L1, L2/L4)
	@+L3(100) *** b -> b^2
	@+L5(100) *** b^k-1 или b^k+1
	@+L6(100) *** q
	@+L7(100) *** z
	@+L8(100) *** r1
	@+L9(100) *** r2
	@+L10(100) *** r'
	
	b=L3.0 1=Q3 /'L3= '>C *print_big_hex(L3/) *bigint_bits_count(L1/k) 1=Q6 k=L6.0 /'L6= '>C *print_big_hex(L6/) *bigint_pow(L3, L6/L5)
	L5=L7 L5/L3=L5 L7*L7=L7 L7/L2=L7 L3*L3=L3
	/'Q7= '>C *printf(Q7/) /'\n'>C
	/'L7= '>C *print_big_hex(L7/)
	/'Q5= '>C *printf(Q5/) /'\n'>C
	/'L5= '>C *print_big_hex(L5/)
	L1/L5=L6 L6*L7=L6 L5*L3=L5 L6/L5=L6
	
	L1;L5=L8
	L6*L2=L9 L9;L5=L9
	
	
	
	
	
	
	/'r2= '>C *print_big_hex(L9/)
	/'r1= '>C *print_big_hex(L8/)
	
	OL4.0
**
