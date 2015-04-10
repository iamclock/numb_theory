main(/)
	@+L1(100)
	@+L2(100)
	@+L3(100)
	@+F4(100)
	
	/'a= '>C *printf(a/) /'\n'>C
	/'b= '>C *printf(b/) /'\n'>C
	
	§1
		 X;20+1⇒Q1⇒a
		 X;20+1⇒Q2⇒b
		 
		 *big_int_rand(L1/)
		 *big_int_rand(L2/)
		
		
			ffffh⇒L1
		 *print_big_hex(L1/)
		 *print_big_hex(L2/)
		
		 *** *div_mul_test(L1, L2/L3)
		 
		 *** *dihotom(L1, , 1/)
		 ***L1&L2⇒L3
		 *** *print_big_hex(L3/)
		 
		 ↑(L1≠L3)3
	§2 /'Ok!\n'>C →4
	§3 /'Error: a!=c\n'>C
	§4 **
	
	
	
	
div_mul_test(L1, L2/L3)
	@+L4(100)
	L1⇒L3⇒L4
	L1/L2 *** *print_big_hex(L4/)
	L4;L2 *** *print_big_hex(L3/)
	L1*L2+L4 *** *print_big_hex(L3/)
	
	
	
	
	
	**


*** Дихотомический алг-тм возведения в степень
*** x - число возводимое в степень, y - степень этого числа, m - модуль
dihotom(L1, y, L2/L3)
	@+L3(100)
	@+L4(100)
	*** Костыль
	↑(L1=0)6 ↑(m=0)6 ↑(L2=0)7
	***	Костыль
	
	L1⇒L3 y&1⇒z ↑(z=1)1 1⇒z →2
	§1	L1⇒L4
	§2	2⇒i
	§3	↑(i>y)5 L3*L3 L3;m i&y⇒t i<1⇒i ↑(t=0)3 L4*L3 →3
	§6	/'ERROR: число и/или модуль равны(ен) нулю\n'>C 2⇒L4 z⇒m →5
	§7	3⇒z 2⇒m
	§5	L4;m L4⇒L3
	
**





div_mul_test(a, b/c)
	a/b⇒c a;b⇒d b*c⇒c c+d⇒c
	**




print_hex(a/)
	@+F1(100)
	Oi 15⇒y Of
	§1 ↑(i≥8)4
			i+1*4⇒s
			16<1-s⇒s *** *printf(s/) /'\n'>C
			a>s⇒x x&y⇒x *** *printf(x/) /'\n'>C
			↑(x=0)2 1⇒f
	§2 ↑(x<10)3 ∆i x-10+'A'@>F1 →1
	§3 ∆i ↑(f=0)1 x+'0'@>F1 →1
	§4 /F1>C /'\n'>C **



print_big_hex(L1/)
	@+F2(100)
	Oi Q1⇒j 15⇒y Of
	§1 ↑(i≥8)4
			i+1*4⇒s
			16<1-s⇒s *** *printf(s/) /'\n'>C
			L1j>s⇒x x&y⇒x *** *printf(x/) /'\n'>C
			x↪2 1⇒f
	§2 ↑(x<10)3 ∆i x-10+'A'@>F2 →1
	§3 ∆i ↑(f=0)1 x+'0'@>F2 →1
	§4 j↪5 ∇j Oi →1
	§5 /F2>C /'\n'>C **


big_int_rand(L1/)
	Q1⇒i X
	§1 i↪2 ∇i X⇒L1i →1
	§2 **



big_int_equ(L1, a/L1)
	a⇒L1.1
**



big_int_sum(L1, a/L1)
	***
	Q1⇒l Oi Ox 15⇒y Ot Os FFFFFFF0h⇒m
	a⇒t
	§1 
		 i*4⇒q
		 L1l>q&y+t⇒s sum&y<q⇒t m<q&L1l+t⇒L1l
		 ↑(L1l<ffffffffh)
	
	
	
	
	
**




big_int_equ(L1, F2/L1, l)
	*** 
	1⇒l 1⇒Q1 Oi Ox 15⇒y Ot Os
	F2i-'0'⇒t
	§1 
		 i*4⇒q
		 t⇒s
		 
	
	
	
	
	
**