# --------------- FUNCTIONS ---------------

# Functions start with def, function name, parameters if any
# They can return, or not a value

def add_nums(num_1, num_2)
  return num_1.to_i + num_2.to_i
end

puts add_nums(3,4)

# Variables are passed by value so the'r value can't be changed in a function

x = 1

def change_x(x)
  x = 4
end

change_x(x)

puts "x = #{x}"

# --------------- EXCEPTIONS ---------------

# We catch exceptions with begin and rescue

print "Enter a number : "

first_num = gets.to_i

print "Enter Another : "

second_num = gets.to_i

begin
  answer = first_num / second_num

rescue # You could use rescue ZeroDivisionError
  puts "You can't divide by zero"
  exit
end

puts "#{first_num} / #{second_num} = #{answer}"

# You can throw your own exceptions with raise

def check_age(age)
  raise ArgumentError, "Enter Positive Number" unless age > 0
end

# You catch them with rescue

begin
  check_age(-1)
rescue ArgumentError
  puts "That is an impossible age"
end
