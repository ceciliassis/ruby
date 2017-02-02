total = 0
lines = 2

unitl lines.zero? do
  line = gets.split
  total += (line[1].to_i * line[2].to_f)
  lines -= 1
end

puts format 'VALOR A PAGAR: R$ %.2f', total
