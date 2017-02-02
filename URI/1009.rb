nome = gets
sal  = gets.to_f
vendas = gets.to_f

puts format 'TOTAL = R$ %.2f', (sal + (vendas * 0.15))
