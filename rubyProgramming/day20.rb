# sort method

def sorted_list(array, reverse = false)
  if reverse
    array.sort { |a, b| b <=> a }
  else
    array.sort { |a, b| a <=> b }
  end
end

movies = ['Lion King', 'Little Mermaid', 'Lady and the Tramp',
          'Finding Nemo', 'Toy Story', 'Tangled']

puts "In reverse order #{sorted_list movies, true}"
puts "In alphabetical order #{sorted_list movies}"
