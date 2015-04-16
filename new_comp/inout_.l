main(/)
	@+F1(100)
	@+L2(100)
	/F1<C
	*big_int_input(L2, F1/L2)
	*** *printf(Q2/) /'\n'>C
	*print_big_hex(L2/)
	**

big_int_input(L2, F1/L2)
	Oi Oj Ol
	↑(Q1=0)6
	↑(F1.1≠'x')7 ↑(F1.0≠'0')7 2⇒i
	§1
		↑(F1i<'0')7 ↑(F1i>'9')2 F1i-'0'⇒x  L2l∨x⇒L2l →4
	§2
		↑(F1i<'A')7 ↑(F1i>'F')3 F1i-'A'+10⇒x L2l∨x⇒L2l →4
	§3
		↑(F1i<'a')7 ↑(F1i>'f')7 F1i-'a'+10⇒x L2l∨x⇒L2l
	§4
		∆i l+1⇒Q2 ↑(i≥Q1)8 ∆j ↑(j≥8)5 L2l<4⇒L2l →1
	§5
		∆l Oj →1
	§6
		/'F1 is empty\n'>C →8
	§7
		/'ERROR: Not hexadecimal number\n'>C OQ2
	§8
	**