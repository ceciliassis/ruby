# Loops

bomb_timer = 10
while bomb_timer >= 0 # enquanto
  puts bomb_timer
  bomb_timer -= 1
end

bomb_timer = 50
until bomb_timer < 20 # ate
  puts bomb_timer
  bomb_timer -= 1
end

hp = 30
loop do # para loops infinitos
  hp -= 2
  puts "Damage done, hp remaining #{hp}"
  break if hp <= 0
end
puts 'Game over'

even = 200
loop do
  even -= 5
  next if even.odd? # == even % 2 !=0, par
  # next == continue
  puts even.to_s
  break if even <= 0
end
