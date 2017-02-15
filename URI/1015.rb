# thanks
# http://stackoverflow.com/questions/22082394/how-do-i-read-an-input-file-in-ruby-using-in-command-line

x1, y1 = gets.split(' ')
x2, y2 = gets.split(' ')

pt1 = (x2.to_f - x1.to_f)**2
pt2 = (y2.to_f - y1.to_f)**2

distance = Math.sqrt(pt1 + pt2)

puts format '%.4f', distance
