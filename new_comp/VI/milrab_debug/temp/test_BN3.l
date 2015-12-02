main(/)
	
	
	*test_BN3(/)
	
	
	
**

test_BN3(/)
	@+F1(100)
	@+L2(100)
	@+L3(100)
	OQ1 @'0x3FFFFFFFFFFFFFFFFFFFFF00000000000000000000010'>F1
	*inputBN(L2, F1, 0/L2, i)
	OQ1 @'0x1FFFFFFFFFFFFFFFFFFFFFF'>F1
	*inputBN(L3, F1, 0/L3, i)
	/'L2 = '>C *HprintfBN(L2/) /'\n'>C
	/'L3 = '>C *HprintfBN(L3/) /'\n'>C
	
	L2;L3⇒L2
	/'L2 = '>C *HprintfBN(L2/) /'\n'>C
	
	
**