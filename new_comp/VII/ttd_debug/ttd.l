


main(/)
	@+L2(10)
	
	
	
	
	
	
	
	752323=k
	*trial_division_method(k/L2)
	
	Oi
	P1 ?(i>=Q2)2 *printf(L2i/) Di /' '>C ?=1
	
	
	
	P2 /'\n'>C
	
	
	
	
	
	
	
	
	
**


*** на входе всегда нечётное число
*** комплекс L1 - массив d - делителей числа
*** Комплекс L2 - массив сомножителей p
*** здесь j это t, а i это k
trial_division_method(n/L2)
	
	@+L1(4)
	3=L1.0 5=L1.1 7=L1.2 11=L1.3 4=Q1
	
	?(n<2)6
	*** n;2=k ?(k=0)4 *** k?-4 одно и тоже с ?(k=0)4, но не работает
	Oi=j *** возможно придётся i присваивать 1
	P1 ?(n=1)7
	P2 n;L1i=r n/L1i=q ?(r#0)4
	P3 L1i=L2j Dj q=n ?=1
	P4 ?(L1i>=q)5
		 Di ?(i<Q1)2 Oi *recalc_efficients(L1/L1) ?=1 *** возможно придётся i присваивать 1
	P5
		 n=L2j Dj ?=7
	P6 /'Число должно быть больше 1'>C
	P7 j=Q2
**


*** l - указывает на последнее обращённое число
*** функция используется в trial_division_method на маленьком числе
recalc_efficients(L1/L1)
	Q1=t t-1=l t;2=t Oi L1l=l 4=d
	?(t#0)2
	P1 2=d
	P2 l+d=L1i=l Di d;4+2=d ?(i<Q1)2 Oi
	P3 *printf(L1i/) /' '>C Di ?(i<Q1)3 /'\n'>C
**





trial_division_method(n/)
	@+L1(4)
	
	*** проверить n>1
	
	n;2=k ?(k=0)4 *** k?-4 одно и тоже с ?(k=0)4, но не работает
	
	3=L1.0 5=L1.1 7=L1.2 11=L1.3
	4=Q1 Q1-1=j
	1=s
	
	
	P1 Oi
		 *printf(L1.0/) /'\n'>C
		 *printf(L1.1/) /'\n'>C
		 *printf(L1.2/) /'\n'>C
		 *printf(L1.3/) /'\n'>C
		 
		 
		 
	P2 
		 L1j+2=L1i i=j Di
		 L1j+4=L1i i=j Di
		 ?(i#Q1)2 Ys ?(s>0)1
	?=5
	
	
	
	
	P4
		 /'Число составное\n'>C
	
	P5
**














