# puts 'Write a string: '
# text = gets.chomp

# words = text.split

# frequencies = Hash.new(0)

# words.each { |word| frequencies[word] += 1 }

# frequencies = frequencies.sort_by { |_word, amount| amount }

# frequencies.each { |word, amount| puts word + ' ' + amount.to_s }

#################################### usando lowercase
# puts 'Write a string: '
# text = gets.chomp.downcase

# words = text.split

# frequencies = Hash.new(0)

# words.each { |word| frequencies[word] += 1 }

# frequencies = frequencies.sort_by { |_word, amount| amount }

# frequencies.each { |word, amount| puts word + ' ' + amount.to_s }

################################## ordenando pelo maior

# puts 'Write a string: '
# text = gets.chomp.downcase

# words = text.split

# frequencies = Hash.new(0)

# words.each { |word| frequencies[word] += 1 }

# frequencies = frequencies.sort_by { |_word, amount| amount }
# frequencies.reverse! #  aplica o metodo na propria variavel e nao em uma copia

# frequencies.each { |word, amount| puts word + ' ' + amount.to_s }

################################## tamanho da palavra

# puts 'Write a string: '
# text = gets.chomp.downcase

# words = text.split

# frequencies = Hash.new(0)

# words.each { |word| frequencies[word] += 1 }

# frequencies = frequencies.sort_by { |word| word.length }
# #frequencies.reverse! # aplica o metodo na propria variavel e nao em uma copia

# frequencies.each { |word, amount| puts word + ' ' + amount.to_s }

################################# let's play
puts 'Write a string: '
text = gets.chomp.downcase

words = text.split

frequencies = Hash.new(0)

words.each { |word| frequencies[word] += 1 }

frequencies = frequencies.sort_by(&:length)

frequencies.each { |word, amount| puts word + ' ' + amount.to_s }
