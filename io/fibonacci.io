fib := method(n, 
	j := 1
	k := 1
	res := 1
	for(i, 3, n, 
		res = j + k
		j = k
		k = res
	)
	return res
)

fib(1) println
fib(2) println
fib(3) println