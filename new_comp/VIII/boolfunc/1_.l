main(/)
	
	
	
	*bool(/)
	
	
**


bool(/)
	@+L1(100)
	@+F2(100)
	*** 32⇒L1.0
	OQ1 @'0111010110101010101010101010100101010101010101010101010101101101'>F2
	*** /F2>C /'\n'>C
	*** *printf(Q2/) /'\n'>C
	*BFinput(F2/L1)
	*** *BFoutput(L1/)
	*BFweight(L1/n)
	*printf(n/) /'\n'>C
	
**


*** 
*** L1.0 - размер булевой функции
*** ввод булевой функции
BFinput(F1/L2)
	OQ2 ↑(Q1<1)5
	Q1⇒s-1&s↦5 *** проверка длины входных значений
	*** *printf(s/) /' '>C *printf(Q1/) /' '>C
	Oj⇒i⇒z⇒q Q1⇒L2.0-1 Q2+1⇒Q2 ∆j OL2j
	§1 F1i-48↦2 L2j →3
	§2 1<z⇒t L2j∨t⇒L2j ∆q
	§3 ∆z ∆i ↑(i=Q1)5 i;32↪4 →1
	§4 ∆j Oz j+1⇒Q2 OL2j →1
	§5 *printf(q/) /'\n'>C
		 *** *printf(L2.0/) /' '>C *printf(L2.1/) /' '>C *printf(L2.2/) /' '>C *printf(Q2/)  /'\n'>C
**

*** 
*** n - размер булевой функции
*** вывод булевой функции
BFoutput(L1/)
	↑(Q1<2)3
	Oz⇒c 1⇒i L1.0⇒n
	§1 1<z⇒t L1i&t>z⇒t ∆c
		 *** *printf(c/) /' '>C
		 *printf(t/) *** /'\n'>C
		 ∆z ↑(z=32)2 ↑(c=n)3 →1
	§2 Oz ∆i ↑(i=Q1)3 →1
	§3 /'\n'>C
**


BFweight(L1/n)
	↑(Q1<1)2 Oi⇒n ∆i
	§1 L1i%+n⇒n ∆i ↑(i<Q1)1
	§2
**