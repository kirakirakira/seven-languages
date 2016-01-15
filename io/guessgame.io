num := Random value(99) round

"Hey user, give me a number between 0 and 99" println

guess := File standardInput readLine asNumber

while(guess != num, "guess again" println)



