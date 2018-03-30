require 'set'

set = Set.new
while line = gets
 set << line
end

puts set.size
