# ruby assumes that the division's result between two integers is another integer

PI = 3.14159
r = gets.to_f
puts format 'VOLUME = %.3f', ((4.0 / 3) * PI * r**3)
