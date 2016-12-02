num_array = [1, 2, 3, 4, [5, 6, 7, 8]]
stg_array = %w(Fred Jerem Frank James)

# puts num_array
puts num_array [0]
puts num_array[4][0]
puts stg_array[2][0] # pega so a letra

num_array = [[1, 2, 3, 4], [5, 6, 7, 8]]
puts num_array[0][1]

stg_array = [%w(Fref Tim), %w(Isac Kail)]
puts stg_array[0][0][0] # => F
puts stg_array[0][0][0] * 3 # => FFF

stg_array.each { |x| x.each { |e| puts e } }
stg_array.each { |x| x.each { |e| puts e[0] } }

stg_array.each { |e| p e }

########################### let's play!

puts Matrix[[25, 93], [-1, 66]]
