main(/)
	
	
	
	
	
**

rsaGEN_test(/)
	
	
	
	
	
	
**

rsaCipher_test(/)
	
	
	
**

rsaDecipher_test(/)
	
	
	
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