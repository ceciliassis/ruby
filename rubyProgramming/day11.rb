# Loops
# concat with day  14
array = ['first line', 'second line', 'third line']

for item in array # cria uma variavel local
  puts item
end

puts item

puts

for item in array.reverse #each is better
  puts item
end

counter = 1

array.each do |thing| # variavel do loop, pode ser uma ou varias
  puts "#{counter} : #{thing}"
  # counter -= 1
  counter += 1
end

counter = 1

array.each { |e| puts "#{e}" } # loop de bloco, bom para linha unica

array.each_with_index do |line, index|
  puts "#{line}: #{index}"
end

############################ let's play
array.each_index { |i| puts i }
array.reverse.each { |e| puts e.to_s } # loop de bloco, bom para linha unica
