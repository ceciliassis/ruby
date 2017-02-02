puts 'How are you feeling'
feeling = gets.chomp

# then faz o when com somente uma linha, mas pode ser abaixo do
# when
case feeling
when 'happy' then puts 'so glay to hear that!'
when 'sad' then puts 'i\'m sorry to hear that'
when 'tired' then puts 'you should take a nap'
else puts 'i dont understand that feeling'
end
