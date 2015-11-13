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


def grab_children(father)
  local_list = []
  father.each_pair do |key, value| 
    local_list.push(key)
    local_list.push(grab_children(value))
  end
  return local_list
end

print grab_children({'grandpa' => {'dad' => {'child 1' => {}, 'child 2' => {} }, 'uncle' => {'child 3' => {}, 'child 4' => {} } } })