main(/)
	
	
	
	10=b
	1234=x
	20=m
	On=k
	m=t
	
	
	P1 ?(t=0)2 t/b=t Dk ?=1
	P2
	*** /'k = '>C *printf(k/) /'\n'>C
	2*k=t
	*dihotom2(b, t/z)
	z/m=z
	
	*** /'z = '>C *printf(z/) /'\n'>C
	
	*barret_alg(x, m, b, z/r)
	
	*** /'r = '>C *printf(r/) /'\n'>C
**






*** сделан не правильно
*** не должно быть делений или сведение их к минимуму
*** основание системы счисления не передавать аргументом
barret_alg(x, m, b, z/r)
	?(4>b)5 Ok=r m=t
	
	P1 ?(t=0)2 t/b=t Dk ?=1
	P2
	k-1=t
	*dihotom2(b, t/t)
	x/t*z=q k+1=p
	*dihotom2(b, p/t)
	q/p=q x;t=e q*m;t=w
	?(e>=w)3 e-w=r ?=4
	P3 t+e-w=r
	P4 ?(r<m)6 r-m=r ?=4
	P5 /'ERROR: Третий аргумент должен быть больше 3'>C /'\n'>C
	P6
**