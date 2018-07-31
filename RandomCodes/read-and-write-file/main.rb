# encoding: UTF-8
# coding: UTF-8
# -*- coding: UTF-8 -*-

rang = (0..24)
file = File.open('sample.log', 'w+')

File.foreach('poem.txt') do |line|
  line.force_encoding('utf-8')
  file.puts "2018-07-31T%02d:00:00+00:00 #{line}" % rand(rang)
end

file.close


#r - reading
#a – appending to a files
#w - writing to a file
#w+ – reading a writing
#a+ – open a file for reading and appending
#r+  – opening a file for updating both reading and writing