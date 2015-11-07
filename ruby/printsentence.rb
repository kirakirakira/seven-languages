indices = (1..10).to_a

for index in indices
    sentence = 'This is sentence number X.'
    puts sentence.sub! 'X', index.to_s
end
