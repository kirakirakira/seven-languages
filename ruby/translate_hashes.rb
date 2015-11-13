# # Translate hashes to arrays

# h = { "c" => 300, "a" => 100, "d" => 400, "c" => 300  }

# h_array = h.to_a #=> [["c", 300], ["a", 100], ["d", 400]]

# puts h_array

# # Translate arrays to hashes

# h = [["c", 300], ["a", 100], ["d", 400]]

# h_hash = h.to_h

# puts h_hash

# # Iterate through a hashes

# h = { "c" => 300, "a" => 100, "d" => 400 }

# h.each_key {|key| puts key}

# h.each_value {|value| puts value}

# h.each_pair {|key, value| puts key, value}

# Print the contents of an array of 16 numbers, four numbers at a time, using just each

# b = (1..16).to_a

# b.each do |i|
# 	if i % 4 > 0
# 		print i.to_s + ","
# 	else
# 		print i.to_s + "\n"
# 	end
# end

# # Using each_slice

# (1..16).each_slice(4) {|a| p a}

# Convert nested structure of hashes to nested arrays

def ihash(h)
  n_a = [];
  h.each_pair do |k,v|
    if v.is_a?(Hash)
      puts "key: #{k} recursing..."
      ihash(v)
    else
      # MODIFY HERE! Look for what you want to find in the hash here
      print k
      n_a.push(k)
      puts "key: #{k} value: #{v}"
    end
  end
  print n_a
end

print ihash({'grandpa' => {'dad' => {'child 1' => {}, 'child 2' => {} }, 'uncle' => {'child 3' => {}, 'child 4' => {} } } })