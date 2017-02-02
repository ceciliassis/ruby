books = {
  wheel_of_time: 4,
  mistborn: 4,
  alchemist: 7
}

puts 'what would you like to do? Options: (add) (update) (delete) (list)'

choice = gets.chomp
case choice
when 'add'
  puts 'what book would like to add to your hash?'
  title = gets.chomp.to_sym
  # title = gets.chomp.gsub(/\s+/, '_').to_sym
  # if books.has_key title
  # end
  #
  # OR
  #
  if books[title].nil?
    puts 'what rating do you give this book? Between 1 and 10'
    rating = gets.to_i
    books[title] = rating
    puts "#{title} has been added with rating #{rating}"
  else
    puts 'that\'s already in your hash'
  end

when 'update'
  puts books
  puts 'what book\'s rating would you like to change?'
  # title = gets.chomp.gsub(/\s+/, '_').to_sym
  title = gets.chomp.to_sym
  if books[title].nil?
    puts 'ERROR! this book doesn\'t exist'
  else
    puts 'what new rating would you give it?'
    rating = gets.to_i
    books[title] = rating
    puts "your rating for #{title} has been updated to #{rating}"
  end

when 'delete'
  puts books
  puts 'what title would you like removed?'
  title = gets.chomp.to_sym
  if books[title].nil?
    puts 'that title doesn\'t exist anyways'
  else books.delete title
  end

when 'list'
  books.each do |book, ratiing|
    puts "#{book}: #{ratiing}"
  end

else puts 'Error! You\'ve broken something :( '
end

puts books
