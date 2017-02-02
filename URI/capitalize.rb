ss = gets.strip.split

ss.each do |e|
  if ss.last == e
    puts e.capitalize
  else
    print e.capitalize + ' '
  end
end
