int = gets.to_i

array = (1..10_000).find_all { |x| x % int == 2 }

array.each { |x| puts x }
