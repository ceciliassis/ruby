novels = { Green_Eggs: 5, Harry_Potter: 5, Way_of_Kings: 4 }

answer = 'yes'
while answer == 'yes'
  puts 'Would you like to add another book to your hash? yes or no?'
  answer = gets.chomp

  case answer
  when 'yes'
    puts 'What book would you like to add?'
    book = gets.chomp
    puts 'What rating from 1 - 5 would you give this book?'
    rating = gets.to_i
    novels[book.to_sym] = rating
    puts "#{book} has been added to your hash with a rating of #{rating}"
  when 'no'
    puts 'Sounds good to me!'
  end
end

puts 'Here\'s what\'s in your hash now: ', novels
