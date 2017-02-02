int = gets.to_i

1.upto(int) { |x| puts x if (int % x).zero? }
