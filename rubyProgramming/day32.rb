# blocos reusaveis

people_one = [54, 51, 3, 12, 15, 7]
people_two = [26, 44, 57, 36, 78, 53]

# over_thirty = Proc.new { |age| age > 30 }
# OR
# melhor
over_thirty = proc { |age| age > 30 }
over_twenty_one = proc { |age| age >= 21 }

# retorna os que encaixam no bloco
# group_one = people_one.select { |age| age > 30 }
group_one = people_one.select(&over_thirty)

# group_two = people_two.select { |age| age > 30 }
group_two = people_two.select(&over_twenty_one)

puts group_one
puts '--------------------'
puts group_two
