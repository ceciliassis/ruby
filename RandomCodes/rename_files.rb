# docs : https://ruby-doc.org/core-2.4.2/Dir.html | https://stackoverflow.com/questions/1755665/get-names-of-all-files-from-a-folder-with-ruby

def rename_file(file)
  file_name = file.dup
  file_name.gsub!(' ', '')
  file_name.gsub!(/(?<num>\d{1,})/, '\k<num> ')
  file_name.downcase!
  if File.file? file
  	File.rename(file, file_name) 
  end
end

Dir["*.mp4"].each do |f|
  rename_file(f)
end