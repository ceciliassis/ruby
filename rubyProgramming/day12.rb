def factors_to_three(n)
  if n % 3 == 0
    puts 'your number is a fator of 3'
  else
    puts "your number ISN'T a factor of 3"
  end
end

def factors_to_three(n) # não é legal
  if n % 3 == 0
    return true
  else
    return false
  end
end

def factors_to_three(n)
  if n % 3 == 0
    true
  else
    false
  end
end

################################ let's play
def factors_to_three(n)
  if (n % 3).zero?
    true
  else
    false
  end
end

def factors_to_three(n)
  n % 3 == 0
end

def factors_to_three(n)
  (n % 3).zero?
end

print 'Type a number: '
if factors_to_three gets.to_i
  puts '3 factor'
else
  puts 'not 3 factor'
end
