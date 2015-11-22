# Print the contents of an array of 16 numbers, four numbers at a time, using just each

b = (20..36).to_a

b.each_with_index do |num, index|
	if (index+1) % 4 > 0
		print num.to_s + ","
	else
		print num.to_s + "\n"
	end
end