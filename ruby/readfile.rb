line_num = 0
phrase = ARGV[0];

text = File.open('example.txt').read

text.each_line do |line|
	line_num += 1
	if (line =~ /(#{phrase})/)
		print "#{line_num} #{line}"
	end
end
print "\n"


# line.include?(phrase)