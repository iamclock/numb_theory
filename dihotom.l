main(/)
	@+F1(100)
	/'Введите 3 числа(число, степень, модуль): '>C
	/F1<C
	*scanf(F1, 10/a, F1)
	/F1>C /'\n'>C
	*scanf(F1, 10/b, F1)
	/F1>C /'\n'>C
	*scanf(F1, 10/m, F1)
	/F1>C /'\n'>C
	/'a='>C *printf(a/) /'\n'>C
	/'b='>C *printf(b/) /'\n'>C
	/'m='>C *printf(m/) /'\n'>C
	*** *str2ns(F1, 10/a, b, m)
	*dihotom(a, b, m/c)
	*printf(c/) /'\n'>C
	
	
	
	
**
	
	
	
*** Дихотомический алг-тм возведения в степень
*** x - число возводимое в степень, y - степень этого числа, m - модуль
dihotom(x, y, m/z)
	
	*** Костыль
	?(x=0)6 ?(y=0)6 ?(m=0)6
	***	Костыль
	
	x=q y&1=z ?(z=1)1 1=z ?=2
	P1	x=z
	P2	2=i
	P3	?(i>y)5 q*q=q q;m=q i&y=t i<1=i ?(t=0)3 z*q=z ?=3
	
	
	P6	/'ERROR: Одно из чисел равно нулю\n'>C 2=z z=m
	P5	z;m=z
	
**



*** проект
scanf(F1, q/a, F2)
	@+F2(100)
	?(Q1=0)5
	Oi
	P1 ?(i>=Q1)4	*** может быть ошибка
  		F1i=c
  		?(c#' ')2 Di Oj Q1-i=Q2?=3
  P2
      *c2n(c/b)
      a*q+b=a
      Di ?=1
  P3	/'i='>C *printf(i/) /' '>C
			/'j='>C *printf(j/) /'\n'>C
			?(i>=Q1)4
			/'F1i='>C *printf(F1i/) /' '>C
			F1i=F2j Di Dj
			?=3
	P5	/'ERROR: Пустой массив(scanf)\n'>C
  P4	/F2>C
**






str2ns(F1, q/d, a)
	Oi Oj
	P1 ?(i>=Q1)4
  		F1i=c
  		?(j=2)3
  		?(c#' ')2 a=d Oa Di Dj ?=1
  P2
      *c2n(c/b)
      a*q+b=a
      Di ?=1
  P3	/'ERROR: Введено больше двух чисел\n'>C Oa Od
  P4
**
