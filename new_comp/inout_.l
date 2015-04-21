main(/)
	@+F1(100)
	@+L2(100)
	@'0xEBC3CA5A2\n'>F1
	/F1>C
	*second_big_int_input(L2, F1, 0/L2, i)
	*** *printf(Q2/) /'\n'>C
	*** *printf(L2.8/) /'\n'>C
	*second_print_big_hex(L2/)
	**



*** ввод большого числа // второй вариант. [Добавить обработку нуля!!!]
second_big_int_input(L2, F1, i/L2, i)
	Oj Ol OL2l
	↑(Q1=0)6
	↑(F1i≠'0')7 ∆i ↑(F1i≠'x')7 ∆i⇒l
	
	§10 ↑(F1l=10)11 ↑(F1l=' ')11 ∆l →10
	§11 l-i⇒l⇒i ∆i l/8⇒t t⇒Q2 l;8⇒t Q2-1⇒l ↑(t=0)1 ∆l l+1⇒Q2 Ol

	§1 *** ↑(F1i=10)8 ↑(F1i=' ')8
		↑(F1i<'0')7 ↑(F1i>'9')2 F1i-'0'⇒x →4
	§2
		↑(F1i<'A')7 ↑(F1i>'F')3 F1i-'A'+10⇒x →4
	§3
		↑(F1i<'a')7 ↑(F1i>'f')7 F1i-'a'+10⇒x
	§4
		x<4*j⇒x  L2l∨x⇒L2l ∇i ↑(i<3)8 ∆j ↑(j≥8)5 →1
	§5
		∆l OL2l Oj →1
	§6
		/'F1 is empty\n'>C →8
	§7
		/'ERROR: Not hexadecimal number\n'>C OQ2
	§8 ***8-j-1⇒j j<2⇒j L2l<j⇒L2l
	§9 ∆i **



*** вывод большого числа в шестнадцатеричном виде // второй вариант
second_print_big_hex(L1/)
	@+F2(100)
	↑(Q1=0)6
	Oi Q1-1⇒j Of 15⇒y '0'@>F2 'x'@>F2
	§1 ↑(i≥8)4
			i+1*4⇒s
			16<1-s⇒s *** *printf(s/) /'\n'>C
			L1j>s⇒x x&y⇒x *** *printf(x/) /'\n'>C
			x↪2 1⇒f
	§2 ↑(x<10)3 ∆i x-10+'A'@>F2 →1
	§3 ∆i ↑(f=0)1 x+'0'@>F2 →1
	***§7 32-s-4⇒t L1j<t⇒t↪4 x+'0'@>F2 →1 *** проверка на последние символы нуля
	§4 ∇j ↑(j≥Q1)5 Oi →1
	§5 /F2>C /'\n'>C
	§6 **

