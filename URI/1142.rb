i = gets.to_i

# 1.upto(i * 4) { |num| print "#{num.to_s + ' ' unless (num % 4).zero?}#{"PUM\n" if (num % 4).zero?}" }

1.upto(i * 4) do |num|
  if (num % 4).zero?
    print "PUM\n"
  else
    print num.to_s + ' '
  end
end
