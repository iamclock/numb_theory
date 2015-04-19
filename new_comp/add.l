main(/)
	@+L1(100)
	@+L2(100)
	@+F3(100)
	/F3<C
	*big_int_input(L1, F3, 0/L1, i)
	*print_big_hex(L1/)
	
	***/F3>C /' '>C *printf(Q3/) /'\n'>C
	***OQ3
	***/F3<C
	*** *printf(i/)
	
	*big_int_input(L2, F3, i/L2, i)
	*print_big_hex(L2/)
	
	***/F3>C /' '>C *printf(Q3/) /'\n'>C
	
	L1+L2=L1
	*print_big_hex(L1/)
**