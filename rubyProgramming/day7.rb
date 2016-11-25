# Hashes
# dizer os casos que estao errados
# @see http://stackoverflow.com/questions/8675206/is-there-any-difference-between-the-key-value-and-key-value-hash-no/8675314#8675314
# @see http://stackoverflow.com/questions/10004158/is-hash-rocket-deprecated/10004344#10004344

hash = {
  'topping1' => 'sour cream',
  'topping2' => 'butter',
  'topping3' => 'salt',
  'topping4' => 'ketchup'
}

puts hash
puts hash['topping2']
##################################### lets play
#
# hash = {
#   :topping1 => 'sour cream',
#   :topping2 => 'butter',
#   :topping4 => 'ketchup'
# }
# puts hash

hash = {
  topping1: 'sour cream', # must be index: ':' togther
  topping2: 'butter',
  topping3: 'salt',
  topping4: 'ketchup'
}
puts hash

puts hash[:topping1]

# hashes retornan nil para chaves sem valor
# para definir um valor default fazemos

hash = Hash.new 0 # o valor default sera zero
puts hash['oi']
puts hash.default

hash = Hash['a', 100, 'b', 20]
puts hash

hash = Hash['a' => 10, 'b' => 5]
puts hash
puts hash.keys

hash.delete 'a'
puts hash
puts hash.length

hash.clear
puts hash

hash = { 1 => 'oi', 2 => '3', 7 => 35 }
hash2 = { 2 => '3', 7 => 35, 1 => 'oi' }

puts hash
puts hash == hash2 # true , um hash eh igual a outro quando suas
# chaves e valores sao iguais
puts hash.key('oi') # 1

hash = { 1 => ['oi', 'ei', 3], 2 => '3', 7 => 35 }
puts hash

hash = { ['oi', 'ei', 3] => 1, 2 => '3', 7 => 35 }
puts hash

h1 = { 'a' => 100, 'b' => 200, :c => 'c' }
p h1 # explain later http://stackoverflow.com/questions/1255324/p-vs-puts-in-ruby
