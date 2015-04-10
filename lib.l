







printbv_hex(a/)
	@+F1(100)
	Oi
	P1 ?(i>=64)4
			a>4*16-i = x
	P1 ?(x<10)2 x+'A'-10=F2i ?=1
	P2 x+'0'=F2i
	P3 ?=1
	P4 /F2>C /'\n'>C **
