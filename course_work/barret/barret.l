main(/)
	@+L1(100)
	@+L2(100)
	@+L3(100)
	10=Q1 5=Q2 0=Q3
	*randBN(L1/) *randBN(L2/)
	 /'L1 = '>C *HprintfBN(L1/) /'\n'>C
	 /'L2 = '>C *HprintfBN(L2/) /'\n'>C
	*barmod(L1, L2/L3)
	
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
*** L4 - копия L1, результат
barmod(L1, L2/L4)
	32=b Q2*2*4=k
	/'k = '>C *printf(k/) /'\n'>C
	@+L3(k) k/4=Q3 OL3*** z
	Q1*4=k
	@+L4(k) *** L1_copy, result
	Q1=Q4 L1=L4
	@+L5(100) *** r1
	@+L6(100) *** r2
	@+L7(100) *** r'
	@+L8(100) *** q
	
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