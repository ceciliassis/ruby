# shovel operator

my_friends = %w(Mike Troy Drew)

puts "you current have #{my_friends} in my_friends array. Add"
print " another name please \n"

new_friend = gets.chomp
my_friends << new_friend

last_friend = 'Adam'

puts "My top friends are #{my_friends.join(', ')} and " << last_friend << ' for a reason.'
# join faz com os elementos do array se juntem em uma string
# recebe enquanto parametro o que ficara entre os elementos

# puts my_friends.push(last_friend) #FINAL
# puts my_friends.unshift(last_friend) #COMECO
# puts my_friends.insert(2, last_friend) #POSICAO 2 no array
# comecando de 0
