# In an object oriented language we model real world objects using classes
# Every object has attributes (instance variables) and capabilities (methods)

class Animal

  # Called when an Animal object is created
  # You should set default values here
  def initialize
    puts "Creating a New Animal"
  end

  def set_name(new_name)

    # Sets the value for an instance variable
    @name = new_name

  end

  def get_name
    @name
  end

  # Provides another way to get the value for name
  def name
    @name
  end

  # Provides another way to set the value for name
  def name=(new_name)

    # We can eliminate bad input in our setters
    if new_name.is_a?(Numeric)
      puts "Name Can't Be a Number"
    else
      @name = new_name
    end
  end

end

# Creates a new Animal object
cat = Animal.new

# Sets the Animals name
cat.set_name("Peekaboo")

# get_name returns the value of name
puts cat.get_name

# Using the alternative way of getting the name value
puts cat.name

# Using the alternative way of setting a value for name
cat.name = "Sophie"
puts cat.name

class Dog

  # Shortcut for creating all getter functions
  attr_reader :name, :height, :weight

  # Shortcut for creating all setter functions
  attr_writer :name, :height, :weight

  # Creates setter and getter methods (Use this One)
  attr_accessor :name, :height, :weight

  def bark
    return "Generic Bark"
  end
end

rover = Dog.new

rover.name = "Rover"

puts rover.name

puts rover.bark

# When you inherit from another class you get all its methods and variables
# You can only inherit from one class

class GermanShepard < Dog

  # You can overwrite methods as you need

  def bark
    return "Loud Bark"
  end
end

max = GermanShepard.new

max.name = "Max"

printf "%s goes %s \n", max.name, max.bark()
