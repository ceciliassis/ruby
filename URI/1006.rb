a = gets.to_f
b = gets.to_f
c = gets.to_f

a *= 2
b *= 3
c *= 5
media = (a + b + c) / (2 + 3 + 5)

puts format 'MEDIA = %.1f', media
