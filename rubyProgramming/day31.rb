# yield

candy = [2, 4, 6, 8]

# retorna uma copia do array pós processamento do bloco
candy_times_three = candy.map { |num| num * 3 }

puts candy_times_three

puts '----------------------------------'

def triple
  puts 'we are in the method'
  # o bloco vai vir aqui
  yield
  puts 'we\'re back in the method'
end

# o que esta no bloco sera executado no lugar yield
triple { puts 'excuse me, block coming through' }

puts '----------------------------------'

def intro(name)
  yield name
  puts 'Nice to meet you!'
  yield 'Amanda'
  yield name
  yield 'Jonh'
end

# o uso dos parenteses aqui eh obrigatorio!
intro('Cecilia') { |n| puts 'My name is ' + n + '!' }
