
*** http://samos-it.com/posts/recursive-karatsuba-multiplication-python.html
*** http://life-prog.ru/view_teorinfo.php?id=6

main(/)
	@+L1(100)
	
	
	
	*** 10=b
	25=u
	14=v
	
	*karl(u, v/L1)
	*** /'z = '>C *printf(z/) /'\n'>C
	/'result = '>C *printf(L1.0/) /'\n'>C
**

*** 
*** 
*** t - u0 - a
*** k - v0 - c
*** q - u1 - b
*** p - v1 - d
*** x - ac
*** y - bd
*** m - u0 + v0, ad_bc
*** w - u1 + v1, n;2, b^(n/2)
*** q - основание системы счисления
*** r - q*(n/2)
*** L1 - b^2n
*** L2 - b^n
*** L3 - результат
karl(u, v/L3)
	@+L1(100)
	@+L2(100)
	*** @+L3(100)
	10=q On u=t
	P1 t/q=t Dn ?(t>0)1
	*** PN1 v/q=t Dn ?(t>0)N1
	n/2=t q*t=r
	u/r=a v/r=b a+b=d a*b=a
	u;r=c v;r=b c+b=e e*d=d c*b=b
	d=c Od=e
	
	*** A*q^(2n)+(C-A-B)*q^n+B
	2=Q1
	*pow1(q, n/L1) *** q^(2n)
	/'L1 = '>C *HprintfBN(L1/) /'\n'>C
	2=Q2
	*pow1(q, t/L2) *** q^(n)
	/'L2 = '>C *HprintfBN(L2/) /'\n'>C
	a=L3.0 1=Q3
	L1*L3=L1			 *** A*q^(2n)
	/'L1 = '>C *HprintfBN(L1/) /'\n'>C
	c-a-b=L3.0 L2*L3=L3 L3+L1=L3 b=L1.0 1=Q1 L3+L1=L3
	/'L3 = '>C *HprintfBN(L3/) /'\n'>C
	
**






*** 
*** 
*** t - u0 - a
*** k - v0 - c
*** q - u1 - b
*** p - v1 - d
*** x - ac
*** y - bd
*** m - u0 + v0, ad_bc
*** w - u1 + v1, n;2, b^(n/2)
*** b - система счисления
karat(u, v/z)
	10=b
	Oi=j=z
	u=t v=k
	@+L1(100)
	P1 ?(t=0)2 t/b=t Di ?=1 *** подсчёт длины числа u
	P2 ?(k=0)3 k/b=k Dj ?=2 *** подсчёт длины числа v
	P3 ?(i<j)4 i=n ?=5 *** присвоение n наибольшей длины
	P4 j=n
	P5
	*** /'n = '>C *printf(n/) /'\n'>C
	n/2=i
	?(i=0)6
	*pow1(b, i/L1)
	L1.0=j Здесь возможна ошибка
	u;j=t
	v;j=k
	u/j=q
	v/j=p
	/'t = '>C *printf(t/) /'\n'>C
	/'k = '>C *printf(k/) /'\n'>C
	/'q = '>C *printf(q/) /'\n'>C
	/'p = '>C *printf(p/) /'\n'>C
	
	
	
	*karat(t, k, b/x)
	/'x = '>C *printf(x/) /'\n'>C
	*karat(q, p, b/y)
	/'y = '>C *printf(y/) /'\n'>C
	t+q=m k+p=w
	/'m = '>C *printf(m/) /'\n'>C
	/'w = '>C *printf(w/) /'\n'>C
	*karat(m, w, b/m)
	/'m = '>C *printf(m/) /'\n'>C
	m-x-y=m
	/'m = '>C *printf(m/) /'\n'>C
	
	P6
	n;2=w
	?(w=0)7 Dn
	/'t = '>C *printf(t/) /'\n'>C
	/'k = '>C *printf(k/) /'\n'>C
	P7
	***n/2=i
	
	*dihotom2(b, n/z) z*x=z
	/'z = '>C *printf(z/) /'\n'>C
	*dihotom2(b, i/w) w*m=w
	/'w = '>C *printf(w/) /'\n'>C
	z+w+y=z
	/'z = '>C *printf(z/) /'\n'>C
**
*** /' = '>C *printf(/) /'\n'>C
