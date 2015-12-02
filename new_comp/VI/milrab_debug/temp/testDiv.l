main(/)
	
	
	
	*testDiv(/)
	
	
	
	
	
**

testDiv(/)
	@+L1(100)
	@+L2(100)
	@+L4(100)
	@+F3(100)
	OQ3 @'0x10000000000000000'>F3
	*inputBN(L1, F3, 0/L1, i)
	OQ3 @'0x8000000000000000'>F3
	*inputBN(L2, F3, 0/L2, i)
	OQ3 @'0x1ffffffffffffffffffffff'>F3
	*inputBN(L4, F3, 0/L4, i)
	/'L1 = '>C *HprintfBN(L1/) /'\n'>C
	/'L2 = '>C *HprintfBN(L2/) /'\n'>C
	/'L4 = '>C *HprintfBN(L4/) /'\n'>C
	50⇒Q1 L1*L2⇒L1;L4⇒L1
	*** L2;L4⇒L1
	
	/'L1 = '>C *HprintfBN(L1/) /'\n'>C
	
**