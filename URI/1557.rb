loop do
  num = gets.to_i

  break if num.zero?

  count = 1 # multiplo
  arr = [1] # array
  (num - 1).times { arr << count *= 2 }
  big = (num + 3) / 2
  
  big -= 1 if ((1..5).cover? num) || (num == 7) || (num == 9)

  # p big

  num.times do
    arr.each do |x|
      if x == arr.last
        printf "%#{big}s", x
      else
        printf "%#{big}s ", x
      end
    end
    arr.map! { |i| i * 2 }
    puts
  end
  puts
end
