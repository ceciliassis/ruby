# day 33
# lambdas

our_proc = proc { |x| puts x + 5 }

our_proc.call(7)

our_proc = proc { |x, y| puts x + y }

our_proc.call(7, 6)

# pode ser colocada outra variavel e nada acontecera

# nao bom, segundo o guia de boas praticas
# our_lamb = lambda { |x, y| puts x + y }
# or
our_lamb = ->(x, y) { puts x + y }

# isso nao funcionara porque tem mais de um argumento, nem mais nem menos, deve
# ser exato

# our_lamb.call(7,6,9)
our_lamb.call(7, 6)

def tree
  # como aqui ta retornando, o lambda vai sair do troco e ir para o proximo
  # return.
  # se tirar o ultimo return, dai o que esta em lambda sera retornado
  leaf = -> { return 'im blowing in the wind' }
  leaf.call
  'im standing still'
end

puts tree

def tree2
  leaf = proc { return 'im blowing in the wind' }
  leaf.call
  'im standing still'
end

puts tree2
