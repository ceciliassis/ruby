# --------------- HASHES ---------------

# A hash is a collection of key object pairs

number_hash = { "PI" => 3.14,
                "Golden" => 1.618,
                "e" => 2.718}

puts number_hash["PI"]

superheroes = Hash["Clark Kent", "Superman", "Bruce Wayne", "Batman"]

puts superheroes["Clark Kent"]

# Add to a hash
superheroes["Barry Allen"] = "Flash"
puts superheroes["Barry Allen"]

# Set a default key value
samp_hash = Hash.new("No Such Key")
puts samp_hash["Dog"]

superheroines = Hash["Lisa Morel", "Aquagirl", "Betty Kane", "Batgirl"]

# Combine 2 hashes in a destructive way with update or with no overwriting
# with merge

superheroes.update(superheroines)

# Print out each key and value

superheroes.each do |key, value|
  puts key.to_s + ' : ' + value
end

puts "Has Key Lisa Morel : " + superheroes.has_key?("Lisa Morel").to_s
puts "Has Value Batman : " + superheroes.has_value?("Batman").to_s
puts "Is Hash Empty : " + superheroes.empty?.to_s
puts "Size of Hash : " + superheroes.size.to_s

# Delete a key value

superheroes.delete("Barry Allen")

puts "Size of Hash : " + superheroes.size.to_s
