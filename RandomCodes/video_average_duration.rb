require 'streamio-ffmpeg'

sum = 0
dir = Dir['*.mp4']
dir.each do |f|
  sum += FFMPEG::Movie.new(f).duration
end
p sum / dir.size
