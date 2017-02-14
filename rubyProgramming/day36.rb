# fizzbuzz game

# (1..60).each do |num|
#   if (num % 15).zero?
#     puts 'fizzbuzz'
#   elsif (num % 3).zero?
#     puts 'fizz'
#   elsif (num % 5).zero?
#     puts 'buzz'
#   else
#     puts num
#   end
# end

# 1.upto 60 do |num|
#   if (num % 15).zero?
#     puts 'fizzbuzz'
#   elsif (num % 3).zero?
#     puts 'fizz'
#   elsif (num % 5).zero?
#     puts 'buzz'
#   else
#     puts num
#   end
# end

1.upto(31) { |n| puts "#{'fizz' if (n % 3).zero?}#{'buzz' if (n % 5).zero?}#{n if n % 3 != 0 && n % 5 != 0 }" }
