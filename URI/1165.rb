require 'prime'

1.upto(gets.to_i) do
  print x.to_s
  if Prime.prime? x
    puts ' eh primo'
  else puts ' nao eh primo'
  end
end
