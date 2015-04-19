main(/)
	@+F1(100)
	@+L2(100)
	/F1<C
	*big_int_input(L2, F1, 0/L2, i)
	*** *printf(Q2/) /'\n'>C
	*** *printf(L2.8/) /'\n'>C
	*print_big_hex(L2/)
	**

big_int_input(L2, F1, i/L2, i)
	Oj Ol
	↑(Q1=0)6
	↑(F1i≠'0')7 ∆i ↑(F1i≠'x')7 ∆i⇒l
	
	§10 ↑(F1l=10)11 ↑(F1l=' ')11 ∆l →10
	§11 l-i⇒l l/8⇒t t⇒Q2 l;8⇒t Q2-1⇒l ↑(t=0)1 ∆l l+1⇒Q2
	§1 ↑(F1i=10)8 ↑(F1i=' ')8
		↑(F1i<'0')7 ↑(F1i>'9')2 F1i-'0'⇒x  L2l∨x⇒L2l →4
	§2
		↑(F1i<'A')7 ↑(F1i>'F')3 F1i-'A'+10⇒x L2l∨x⇒L2l →4
	§3
		↑(F1i<'a')7 ↑(F1i>'f')7 F1i-'a'+10⇒x L2l∨x⇒L2l
	§4
		∆i ↑(i≥Q1)8 ∆j ↑(j≥8)5 L2l<4⇒L2l →1
	§5
		∇l Oj →1
	§6
		/'F1 is empty\n'>C →8
	§7
		/'ERROR: Not hexadecimal number\n'>C OQ2
	§8 ***8-j-1⇒j j<2⇒j L2l<j⇒L2l
	§9 ∆i **