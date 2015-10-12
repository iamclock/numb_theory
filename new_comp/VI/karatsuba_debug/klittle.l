
*** http://samos-it.com/posts/recursive-karatsuba-multiplication-python.html
*** http://life-prog.ru/view_teorinfo.php?id=6

main(/)
	
	
	
	
	10=b
	1=n
	25=u
	14=v
	
	*karat(u, v, b/z)
	/'z = '>C *printf(z/) /'\n'>C
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
karat(u, v, b/z)
	Oi=j=z
	u=t v=k
	P1 ?(t=0)2 t/b=t Di ?=1 *** подсчёт длины числа u
	P2 ?(k=0)3 k/b=k Dj ?=2 *** подсчёт длины числа v
	P3 ?(i<j)4 i=n ?=5 *** присвоение n наибольшей длины
	P4 j=n
	P5
	*** /'n = '>C *printf(n/) /'\n'>C
	n/2=i
	*dihotom2(b, i/j)
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
	
	
	n;2=w
	?(w=0)6 Dn
	/'t = '>C *printf(t/) /'\n'>C
	/'k = '>C *printf(k/) /'\n'>C
	P6
	n/2=i
	
	*dihotom2(b, n/z) z*x=z
	/'z = '>C *printf(z/) /'\n'>C
	*dihotom2(b, i/w) w*m=w
	/'w = '>C *printf(w/) /'\n'>C
	z+w+y=z
	/'z = '>C *printf(z/) /'\n'>C
**
*** /' = '>C *printf(/) /'\n'>C