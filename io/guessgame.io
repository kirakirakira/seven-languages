num := Random value(99) round
num println

"Hey user, give me a number between 0 and 99" println

10 repeat(
	guess := File standardInput readLine asNumber

	if(guess == num) then(
		"You win" println
		break
	) elseif(guess > num) then(
		"Guess lower" println
	) elseif(guess < num) (
		"Guess higher" println
	)
)

"Sorry you ran out of tries." println


