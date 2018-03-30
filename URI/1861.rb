# TLE e RTE
require 'set'
map = Hash.new(0)
murdereds = Set.new
while line = gets
  murder, murdered = line.chomp.split
  murdereds << murdered
  map[murder] += 1
end

puts 'HALL OF MURDERERS'
map.each { |key, elem| puts "#{key} #{elem}" unless murdereds.include? key }
