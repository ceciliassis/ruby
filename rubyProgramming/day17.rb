# prime numbers

print 'Give me two numbers and I will tell you all the numbers between then'
puts ' that are prime'

puts 'To get started, what is your starting number?'
start = gets.to_i

puts 'Excelent, and what is your endind number?'
last = gets.to_i

puts 'Here are the results:'

while start <= last
  prime_flag = true

  x = 2

  while x <= start / 2
    if (start % x).zero?
      prime_flag = false
      break
    end
    x += 1
  end

  puts start if prime_flag

  start += 1
end
########################## let's play

# https://ruby-doc.org/core-2.2.3/Enumerable.html#method-i-find
# thanks to GeOm3tRiC coment in https://www.youtube.com/watch?v=xXuEeChktdQ&list=PLMK2xMz5H5Zv8eC8b4K6tMaE1-Z9FgSOp&index=18

def prime?(n)
  res = (2..n).find { |i| (n % i).zero? }
  puts res if res == n
end

while start <= last
  prime? start
  start += 1
end

require 'prime' # biblioteca de primos do Ruby

puts 'The primes: '
start.upto(last) { |n| puts n if Prime.prime? n }

# se usar o .times aqui, nao eh necessario um numero de comeco, so um "ate"
last.times { |n| puts n if Prime.prime? n }
