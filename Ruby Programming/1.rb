# Ruby is a dynamic, interpreted, object oriented language
# Everything is an object and all of those objects can be overwritten
# Ruby is one of the easiest languages to read and with Rails it may be
# the best web development option period

# print prints the string to screen without a newline
print "Enter a Value: "

# Variables start with a lowercase letter or _ and may contain numbers
# gets stores input from the user and to_i turns it into an integer
first_num = gets.to_i

print "Enter Another Value: "

second_num = gets.to_i

# puts prints output plus a newline, to_s converts the variable into a
# string, you can combine values using +
puts first_num.to_s + " + " + second_num.to_s + " = " +
  (first_num + second_num).to_s

# Arithmetic Operators
puts "6 + 4 = " + (6+4).to_s
puts "6 - 4 = " + (6-4).to_s
puts "6 * 4 = " + (6*4).to_s
puts "6 / 4 = " + (6/4).to_s
puts "6 % 4 = " + (6%4).to_s

# Integers or Fixnums can store extremely large numbers
# They can go well beyond 4,611,686,018,427,387,903

numOne = 1.000

# You must put a 0 before your floats
num99 = 0.999

# Floating point calculations tend to be accurate
puts numOne.to_s + " - " + num99.to_s + " = " + (numOne - num99).to_s

# 14 Digits of accuracy is the norm
big_float = 1.12345678901234
puts (big_float + 0.00000000000005).to_s

# Everything is an object
puts 1.class
puts 1.234.class
puts "A String".class

# A Constant starts with an uppercase letter and if you try to change the
# value you will be warned

A_CONSTANT = 3.14
A_CONSTANT = 1.6
puts A_CONSTANT

# Returns a File object for writing
write_handler = File.new("yourSum.out", "w")

# Puts the text in the file
write_handler.puts("Random Text").to_s

# Closes the file
write_handler.close

# Read data from the defined file
data_from_file = File.read("yourSum.out")

puts "Data From File : " + data_from_file

# Use load to execute the code in another Ruby file
load "rubyOrNotRuby2.rb"
