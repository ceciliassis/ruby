# --------------- ARRAYS ---------------

# Creating arrays

array_1 = Array.new
array_2 = Array.new(5) # Gets nil as default
array_3 = Array.new(5, "empty")
array_4 = [1,"two",3,5.5] # You can store multiple object types

puts array_1
puts array_2
puts array_3
puts array_4

# Indexes start at 0
puts array_4[2]

# Return 2 values starting at the 2nd index
puts array_4[2,2].join(", ")

# Return values in index 0, 1 and 3
puts array_4.values_at(0,1,3).join(", ")

# Add 0 at the beginning of the array
array_4.unshift(0)
puts array_4.join(", ")

# Remove the first item in the array
array_4.shift()
puts array_4.join(", ")

# Add 100 and 200 to the end of the array
array_4.push(100, 200)
puts array_4.join(", ")

# Remove item at the end of the array
array_4.pop
puts array_4.join(", ")

# Add one array to the end of another
array_4.concat([10,20,30])
puts array_4.join(", ")

# Array Methods

puts "Array Size : " + array_4.size().to_s
puts "Array Contains 100 : " + array_4.include?(100).to_s
puts "How Many 100s : " + array_4.count(100).to_s
puts "Array Empty : " + array_4.empty?.to_s

# Convert an array into a string
puts array_4.join(", ")

# Print and Inspect the array
p array_4

# Output array in loop
array_4.each do |value|
  puts value
end
