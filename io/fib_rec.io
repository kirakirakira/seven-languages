fib := method(n, 
	if(n < 3) then(return 1) else(return fib(n-1) + fib(n-2))
)

fib(1) println
fib(2) println
fib(3) println
fib(7) println