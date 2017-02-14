=begin
Multiline comments
=end

# --------------- IF ELSE ELSIF ---------------

age = 12

# If statements perform different actions depending on conditions
# Comparison Operators : == != < > <= >=
# Logical Operators : && || ! (and, or, not)

if (age >= 5) && (age <= 6)
  puts "You're in Kindergarten"
elsif (age >= 7) && (age <= 13)
  puts "You're in Middle School"
  puts "Yeah"
elsif (age >= 14) && (age <= 18)
  puts "You're in High School"
else
  puts "Stay Home"
end

puts "true && false = " + (true && false).to_s
puts "true && false = " + (true || false).to_s
puts "!true = " + (!true).to_s

# Comparison operator that returns 0 (equal), 1 if 1st is greater and
# -1 if 1st is less then
puts "5 <=> 10 = " + (5 <=> 10).to_s

# unless is another comparison operator

unless age > 4
  puts "No School"
else
  puts "Go to School"
end

# You can add condtions to the output that proceeds it

puts "You're Young" if age < 30

# --------------- CASE ---------------

print "Enter Greeting : "

# chomp removes /n from input

greeting = gets.chomp

# Case is used when you have a limited number of options

case greeting
when "French", "french"
  puts "Bonjour"

  # without end it would check the next condition
  exit

when "Spanish", "spanish"
  puts "Hola"
  exit

  # else is the default
else
  puts "Hello"
end

# --------------- TERNARY OPERATOR ---------------

age = 50

# Format (condition) ? "Returned if true" : "Returned if false"

puts (age >= 50) ? "Old" : "Young"

# --------------- LOOP ---------------

x = 1

# Loops until you break out of loop

loop do
  # Shortcut for x = x + 1
  x += 1

  # Slips this iteration of the loop
  next unless (x % 2) == 0
  puts x

  # Ends the looping
  break if x >= 10
end

# --------------- WHILE LOOP ---------------
# Do stuff while the condition is met

y = 1

while y <= 10
  y += 1
  next unless (y % 2) == 0
  puts y
  break if y >= 10
end

z = 1

begin
  z += 1
  next unless (z % 2) == 0
  puts z
  break if z >= 10
end while z <= 10

# --------------- UNTIL LOOP ---------------
# Do stuff until a condition is met

a = 1

until a >= 10
  a += 1
  next unless (a % 2) == 0
  puts a
end

# --------------- FOR LOOPS ---------------

# Create an array of numbers

numbers = [1, 2, 3, 4, 5]

# Cycles through every item in numbers temporarily storing them in number
# #{variable} can be used to insert values

for number in numbers
  puts "#{number}, "
end

groceries = ["bananas", "sweet potatoes", "pasta", "tomatoes"]

# Cycles through every item in groceries temporarily storing them in food

groceries.each do |food|
  puts "Get some #{food}"
end

# Cycles through numbers 0 through 5

(0..5).each do |i|
  puts "# #{i}"
end
