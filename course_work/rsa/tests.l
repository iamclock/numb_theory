main(/)
	
	
	*pow_test(/)
	
	
**

pow_test(/)
	@+L1(1000)
	@+L2(1000)
	@+L3(1000)
	@+F4(1000)
	
	OQ4 /F4<C *inputBN(L1, F4, 0/L1, k)
	*inputBN(L2, F4, k/L2, k)
	*inputBN(L3, F4, k/L3, k)
	
	*** *HprintfBN(L1/) /'\n'>C /'\n'>C *HprintfBN(L2/) /'\n'>C /'\n'>C *HprintfBN(L3/) /'\n'>C /'\n'>C
	
	*powBN(L1, L2, L3/L3)
	*** *powBN_bar(L1, L2, L3/L3)
	*** *powBN_karat(L1, L2, L3/L3)
	*** *powBN_mix(L1, L2, L3/L3)
	*HprintfBN(L3/) /'\n'>C
**