# find and replace

puts 'Paste your document here:'
document = gets.strip

puts 'What word would you like removed?'
remove = gets.strip

puts 'Choose the replacement word?'
replace = gets.strip

target_words = document.split(' ')

target_words.each do |word|
  if word != remove
    print word + ' '
  else
    print replace
  end
end

########################## let's play

puts 'Paste your document here:'
document = gets.strip

puts 'What word would you like removed?'
remove = gets.strip

puts 'Choose the replacement word?'
replace = gets.strip

# gsub procura por todos os padroes do primeiro parametor e
# substutui pelo segundo
puts document.gsub remove, replace
