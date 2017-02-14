# Classes that include the Enumerable module gain collection capabilities
# but they must define a function called each

class Menu
  include Enumerable

  # Each provides items one at a time

  def each
    yield "pizza"
    yield "spaghetti"
    yield "salad"
    yield "bread"
    yield "water"
  end
end

menu_options = Menu.new

# We can cycle through all the options

menu_options.each do |item|
  puts "Would you like : #{item}"
end

# Check to see if we have pizza
p menu_options.find {|item| item == "pizza"}

# Return items 5 letters in length
p menu_options.select {|item| item.size <= 5}

# Reject items that meet the criteria
p menu_options.reject {|item| item.size <= 5}

# Return the first item
p menu_options.first

# Return the first 2
p menu_options.take(2)

# Return the everything except the first 2
p menu_options.drop(2)

# Return the minimum item
p menu_options.min

# Return the maximum item
p menu_options.max

# Sort the items
p menu_options.sort

# Return each item in reverse order
menu_options.reverse_each {|item| puts item}
