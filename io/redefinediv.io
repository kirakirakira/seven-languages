Number old_div := Number getSlot("/")

Number / = method(n, 
	if(n == 0) then(return "Can't divide by zero") else(return self old_div(n))
)

(3/0) println