# hash and symbols

# hash = { 'Jackson' => 17, 'Sarah' => 19,
#          'Johnson' => 25, 'Mike' => 75 }

# puts hash['Jackson']

# symbols are immutable
# hash = { :Jackson => 17, :Sarah => 19,
#          :Johnson => 25, :Mike => 75 }

# puts hash[:Jackson]

# nova syntax
hash = { Jackson: 17, Sarah: 19,
         Johnson: 25, Mike: 75 }

# old_enough = hash.select { |_key, value| value > 21 }
# puts old_enough

hash.each_key { |key| puts key }

hash.each_value { |val| puts val }
