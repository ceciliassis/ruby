par = []
impar = []
while x = gets
  x = x.to_i
  if x.even?
    par << x
  else
    impar << x
  end
  if par.size == 5
    par.each_with_index { |e, i| puts "par[#{i}] = #{e}" }
    par = []
  end
  if impar.size == 5
    impar.each_with_index { |e, i| puts "impar[#{i}] = #{e}" }
    impar = []
  end
end
impar.each_with_index { |e, i| puts "impar[#{i}] = #{e}" }
par.each_with_index { |e, i| puts "par[#{i}] = #{e}" }
