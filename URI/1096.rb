odds   = [1, 3, 5, 7, 9]
others = [7, 6, 5]

odds.each do |o|
  others.each do |oh|
    puts "I=#{o} J=#{oh}"
  end
end
