
test2(/)
	@+F1(100)
	@+L2(100)
	@+L3(100)
	@+L4(100)
	@+L5(100)
***	227DA AF754ED6 AE027534 ACEC12A8 455894A8 FEC565A8 
	OQ1 @'227DAAF754ED6AE027534ACEC12A8455894A8FEC565A8'>F1 
	*stoBN16(F1/L3)
	/'z = '>C 
        *printBN16(L3/) 
	OQ1 @'1ffffffffffffffffffffff'>F1
	*stoBN16(F1/L5)
	*** 1ffffffh⇒L5.2
	/'m = '>C *printBN16(L5/)
	L3/L5⇒L4
	/'z/m = '>C *printBN16(L4/)
	L3;L5⇒L2
	/'z;m = '>C *printBN16(L2/)
**

printBN16(L1/)
   Q1⇒i<3⇒n @+F2(n) ⁻k
§1 ↑(i=0)2 ∇i L1i⇒e 8⇒j k+8⇒k⇒s
§3 e&15⇒a e>4⇒e *n2c(a/f) f⇒F2s ∇s ∇j ↑(j>0)3 →1 
§2 n⇒Q2 /F2>C /'\n'>C **

n2c(a/b)
	a+'0'⇒b ↑(a<10)1 a-10+'A'⇒b
§1	**

stoBN16(F1/L2)
   Q1⇒i+7>3⇒Q2 Oj Ok OL2k
§1 ↑(i=0)2 ∇i *c2n(F1i/a) a<j∨L2k⇒L2k j+4⇒j ↑(j≠32)1 Oj ∆k 0⇒L2k →1
§2 ** 

c2n(a/b)
	a-'0'⇒b ↑(b<10)1 a-'A'+10⇒b ↑(a≤'Z')1  a-'a'+10⇒b
§1 	**


