main(/)
	
	*** для числа 0x312AEEE94005ACBF корень 7
	*** в числе 0x206883E6ACFCF49F пропускается значение 145903 из за шага +2/+4
	*proot_test(/)
	*** *chastniy_test(/)
	
**

*** http://www.wolframalpha.com/input/?i=primitive+root+%280x27923DDAF02F3223%29

proot_test(/)
	@+L1(100)
	5⇒n Oi
	P1
		 100⇒Q1 *randPrimeBN(62/L1)
		 /'rand prime = '>C *HprintfBN(L1/) /'\n'>C
		 *primrootBN(L1/t)
		 /'primitive root = '>C *printf(t/) /'\n'>C
		 Di ?(i<n)1
**

@+L3(100)
@+L4(100)
OQ1 @'0x3'>F1
*inputBN(L3, F1, 0/L3, i)
OQ1 @'0x1063A4F86AAC8EEA'>F1
*inputBN(L4, F1, 0/L4, i)

/'L3 = '>C *HprintfBN(L3/) /'\n'>C
/'L4 = '>C *HprintfBN(L4/) /'\n'>C
*powBN(L3, L4, L2/L3)
/'L3 = '>C *HprintfBN(L3/) /'\n'>C


chastniy_test(/)
	@+F1(100)
	@+L2(100)
	OQ1 @'0x312AEEE94005ACBF'>F1
	*inputBN(L2, F1, 0/L2, i)
	/'L2 = '>C *HprintfBN(L2/) /'\n'>C
	
	*primrootBN(L2/r)
	/'primitive root = '>C *printf(r/) /'\n'>C
	
**


*** Поиск первообразного корня
*** m - модуль
*** L2 - разложение числа на простые сомножители (функция эйлера)
*** r - первообразный корень
*** /'L3 = '>C *HprintfBN(L3/) /'\n'>C
*** /'j = '>C *printf(j/) /'\n'>C
primrootBN(L1/r)
	Or
	@+L2(100) @+L3(100) @+L4(100) @+L5(100) @+L6(100)
	OL2=L3=L5 OQ2=Q3=Q5
	Q1=Q4 OL4 1=L4.0=Q5=Q6 1=r L1-L4=L4 *tdmBN(L4/L2, L3, L5)
	*** *print_complex(L2/) /' '>C *HprintfBN(L3/) /'\n'>C *** вывод всех полученных сомножителей L1-1
	P1 Dr=L5.0 Oj=f OL6 1=Q6 L2j=L6.0 
	P2 Q4=Q5 OL5 L4/L6=L5
		 Q5=Q6 L5=L6 1=Q5 r=L5.0 *cutZerosBN(L6/L6)
			 *powBN(L5, L6, L1/L6)
			 1=L5.0 *BN_eq(L6, L5/b) r=L5.0
			 ?(b=1)1 Dj ?(j>=Q2)4 OL6 1=Q6 L2j=L6.0 ?=2
		P4 ?(f#0)5 1=f ?(Q3=0)5 Q3=Q6 L3=L6 ?=2
	P5
**
