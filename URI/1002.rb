# thanks http://stackoverflow.com/questions/1933958/set-the-display-precision-of-a-float-in-ruby

PI = 3.14159
r = gets.to_f
a = PI * (r**2)
print format("A=%.4f\n", a)
