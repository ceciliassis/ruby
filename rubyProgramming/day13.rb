print 'Height? '
h = gets.to_f # to float
print 'Widht? '
w = gets.to_f
area = 0.5 * h * w
puts "Area: #{area}"

# se o cara digitar qualquer coisa alem de numero, somente os
# numeros serao lidos

p w # inspect, mostra o que a variavel realmente tem

puts 'this is a pythagorean theorem calculator, you can find the
hypotenus of a right triangle with it.'
print 'Side a? '
a = gets.to_f
# a = gets..thing # procura por um metodo o variavel no objeto

print 'Side b? '
b = gets.to_f

c2 = (a**2) + (b**2)
puts "hypotenus: #{Math.sqrt(c2)}"
puts "hypotenus: #{Math.sqrt(c2).round}"
puts "hypotenus: #{Math.sqrt(c2).round(2)}" # numero de casas
# decimais

########################## let's play
puts "hypotenus: #{Math.sqrt(c2).round(-1)}"
# 0-4 arredonda pra 0 5-.. arrendonda pra 10
puts 34_567.89.round(-5) #=> 0
puts 34_567.89.round(-4) #=> 30000 , arredonda a partir da 4 casa
# da direita pra esquerda partindo da virgula
puts 34_567.89.round(-3) #=> 35000
puts 34_567.89.round(-2) #=> 34600
puts 34_567.89.round(-1) #=> 34570
puts 34_567.89.round(0)  #=> 34568
puts 34_567.89.round(1)  #=> 34567.9
puts 34_567.89.round(2)  #=> 34567.89
puts 34_567.89.round(3)  #=> 34567.89
