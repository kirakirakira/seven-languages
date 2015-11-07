def guess_num
    random_num = rand(10) + 1
    puts 'Guess a number between 1 and 10'
    guess = gets.to_i
    
    while guess != random_num
        if guess > random_num
            puts 'Guess is too high, try again'
            guess = gets.to_i
        elsif guess < random_num
            puts 'Guess is too low, try again'
            guess = gets.to_i
        end
    end
    
    if guess == random_num
        puts 'You win!'
    end
end

guess_num

