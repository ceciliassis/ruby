days   = gets.to_i
ages   = days/400
months = days % 365 / 30
days2  = days % 365 - (months * 30)
puts "#{ages} ano(s)","#{months} mes(es)","#{days2} dia(s)" 
