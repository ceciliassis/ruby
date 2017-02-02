line = gets.split

line.each_with_index { |w, i| line[i] = w.to_f }

puts "#{line.max.round} eh o maior"
