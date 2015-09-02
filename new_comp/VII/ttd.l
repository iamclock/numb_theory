


main(/)
	@+L1(100)
	
	
	
	
	
	
	
	
	3=L1.0 5=L1.1 7=L1.2 11=L1.3 4=Q1
	*trial_division_method(6/)
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
**


trial_division_method(n, L1/)
	
	*** проверить n>1
	n;2=k ?(k=0)4 *** k?-4 одно и тоже с ?(k=0)4, но не работает
	Oi
	P1 n;L1i=k ?(k=0)4 Di ?=1
	
	
	P3  /'Число простое\n'>C ?=5
	P4 /'Число составное\n'>C
	P5
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














