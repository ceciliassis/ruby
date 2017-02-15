n = gets.to_i

1.upto(n) do
  a, b, c = gets.split
  # puts a,b,c
  a = a.to_f
  b = b.to_f
  c = c.to_f

  media = (a * 2 + b * 3 + c * 5) / (2 + 3 + 5)
  puts format '%.1f', media
end
