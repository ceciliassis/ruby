# user input

print 'Say your name: '
user = gets.chomp

puts "Name: #{user}"

print 'Once again please?'
user = gets.chomp.capitalize
puts "Name: #{user}"

hash = {}

puts 'type a number'
hash[:first] = gets

p hash[:first] # p is for inspect aka debug,
p hash[:first].chomp

puts 'another one'
hash[:second] = gets.chomp.to_i # to i

p hash[:second].class
