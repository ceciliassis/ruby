# def calculate_fuel(args)
#   hours, velocity = args.map(&:to_i)
#   format '%.3f', (hours * velocity) / 12.0
# end

# puts calculate_fuel(gets.chomp.split)

hours    = gets.to_i
velocity = gets.to_i
puts format '%.3f', (hours * velocity) / 12.0