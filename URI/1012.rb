PI = 3.14159
line = gets.split
a = line[0].to_f
b = line[1].to_f
c = line[2].to_f

puts format 'TRIANGULO: %.3f', ((a * c) / 2)
puts format 'CIRCULO: %.3f', (PI * c**2)
puts format 'TRAPEZIO: %.3f', (((a + b) * c) / 2)
puts format 'QUADRADO: %.3f', (b**2)
puts format 'RETANGULO: %.3f', (a * b)
