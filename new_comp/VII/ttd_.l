


main(/)
	
	
	
	
	
	
	
	
	
	
	*trial_division_method(6/)
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
**


trial_division_method(n/)
	@+L1(4)
	
	n;2⇒k ↑(k=0)4 *** k↪4 одно и тоже с ↑(k=0)4, но не работает
	
	3⇒L1.0 5⇒L1.1 7⇒L1.2 11⇒L1.3
	4⇒Q1 Q1-1⇒j
	1⇒s
	
	
	§1 Oi
		 *printf(L1.0/) /'\n'>C
		 *printf(L1.1/) /'\n'>C
		 *printf(L1.2/) /'\n'>C
		 *printf(L1.3/) /'\n'>C
	§2 
		 L1j+2⇒L1i i⇒j ∆i
		 L1j+4⇒L1i i⇒j ∆i
		 ↑(i≠Q1)2 ∇s ↑(s>0)1
	→5
	
	
	
	
	§4
		 /'Число составное\n'>C
	
	§5
**