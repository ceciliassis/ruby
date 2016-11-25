#apontar que o ruby é de tipgem forte e dinamica

var = 'Mary Kate Olson Lindsay Lohan Charlie Sheen'
puts var
puts var.split

date = '11/11/2016'
date2 = date.split '/' # an array
puts date2[0]
puts date[0..5] # inclui o 5
puts date[0...5] # nao inclui o ultimo char sengundo o indice

array = %w(brady partridge bundy) # better for strings
# array = ['brady', 'partridge', 'bundy'] #know

puts array.size # same as
puts array.length

puts array[0]
puts array[-3] # so bundy -1  ... brady -3

array = ['brady', 6, false, true, 'cordova', 6 - 1]

puts array[-1]
puts array[3].class # saida TrueClass
puts array[2].class # saida FalseClass

array = %w(brady 6 true cordova 6 - 1) # the will all be strings
# here, each element turns into a string
puts array[-1].class
puts array[4] + array[-2] + array[array.size - 1] # saida 6-1
puts 'The result is not ' + array[1]

puts "conct with #{array[0]}" # make sure you use "" (double qoutes)

########################## lets play

array += ['name', 6] # concat array

puts array
puts array[0.9] # pega a parte inteira par indice
puts array[0, 3] # 0 -> 2
puts array[1..-5] # array[1] -> array[-5]
puts array[-6..-3] # anda para 'frente'
