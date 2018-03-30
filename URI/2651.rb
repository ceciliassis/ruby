string = gets.chomp.downcase
if string.size < 5
  puts 'Link Tranquilo'
else
  puts "#{(string =~ /zelda/).nil? ? 'Link Tranquilo' : 'Link Bolado'}"
end
