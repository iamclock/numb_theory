main(/)
	@+L1(100) @+L2(100) @+L3(100) @+L4(100) @+L5(100) 
	10⇒t 5⇒m
§1 ∇t X;m+1⇒r *rand(r/L1) X;m+1⇒r *rand(r/L2)
***	*print_big_hex(L1/)
***	*print_big_hex(L2/) 
  L1/L2⇒L3 L1;L2⇒L4 
***	*print_big_hex(L3/)
***	*print_big_hex(L4/)
  *rasshirenie(Q1/L2)
  L2*L3+L4⇒L5 
	*print_big_hex(L1/)
	*print_big_hex(L5/)
§2 /'\n'>C t↦1 
§3 **	
	
print_big_hex(L1/)
	Q1<3⇒n @+F2(n)
	Q1⇒j 
§1 j↪5 ∇j L1j⇒x 32⇒s
§2 s↪1 s-4⇒s x>s&15⇒c ↑(c<10)3 c-10+'A'@>F2 →2
§3 c+'0'@>F2 →2
§5 /F2>C /'\n'>C **

rand(r/L1)
	r⇒Q1 	
§1 ∇r X⇒L1r r↦1 **

rasshirenie(q/L1)
	↑(Q1≥q)1 Q1⇒i q⇒Q1
§2	OL1i ∆i⊕Q1↦2
§1	**	

