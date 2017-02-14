# The class File provides for file manipulation

# Create a file for writing
file = File.new("authors.out", "w")

# Add lines
file.puts "William Shakespeare"
file.puts "Agatha Christie"
file.puts "Barbara Cartland"

# Close file
file.close

# Output everything in the file
puts File.read("authors.out")

# Open file for appending
file = File.new("authors.out", "a")
file.puts "Danielle Steel"
file.close
puts File.read("authors.out")

# Create another file containing data separated by commas
file = File.new("author_info.out", "w")
file.puts "William Shakespeare,English,plays and poetry,4 billion"
file.puts "Agatha Christie,English,who done its,4 billion"
file.puts "Barbara Cartland,English,romance novels,1 billion"
file.puts "Danielle Steel,English,romance novels,800 million"
file.close

# Cycle through the data to write a sentence
File.open("author_info.out") do |record|
  record.each do |item|

    # Split each line into 4 parts based on commas
    name, lang, specialty, sales = item.chomp.split(',')
    puts "#{name} was an #{lang} author that specialized in #{specialty}. They sold over #{sales} books."
  end
end
