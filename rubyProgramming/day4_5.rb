# Basic formatting adn string

my_name = 'ceciliassis'

puts my_name.capitalize # primeira letra maiuscula
puts my_name.upcase # todas maicusculas
puts my_name.downcase # todas minusculas
puts my_name.reverse # ao contrario
puts my_name.length # quantidade de letras na string

star_wars_seven = 'Jar Jar Binks Han Solo Luke lens flare'
puts star_wars_seven[14..26] # vetor normal, comecando de zero
puts star_wars_seven[15] # somente uma posicao no vetor

puts star_wars_seven['Jar']
puts star_wars_seven * 2
puts star_wars_seven['Lea'] # blank

################################ let's play
stirg = 'Oi' 'como' 'vai' # implicit string concatention
puts stirg

stirg = 'Oi' << 'como' << 'vai' # implicit string concatention
puts stirg

stirg = 'oi'.concat('como').concat('vai')
puts stirg
puts stirg.index('oi')

var = 'Mary Kate Olson Lindsay Lohan Charlie Sheen'
puts var
puts var.split

date = '11/11/2016'
date2 = date.split '/' # an array
puts date2[0]
puts date[0..5] # inclui o 5
puts date[0...5] # nao inclui o ultimo char sengundo o indice
