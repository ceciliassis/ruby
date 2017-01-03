books = ['Ta td mundo mal', 'Biblia Sagrada', 'Independence Day',
         'As 5 linguagens do amor']

# books.sort! # ordem alfabetica

# puts books

# <=> presents 3 possible answers *equal, less than, greater than
#                                   0       -1            1

books.sort! { |a, b|   a <=> b }
puts books

puts

books = ['the a', 'the b', 'the z', 'the c']

books.sort! { |a, b|   b <=> a }
puts books
