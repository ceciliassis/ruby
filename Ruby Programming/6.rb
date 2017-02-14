# Modules are made up of methods and variables, but they can't be instantiated
# They are used to add functionality to a class

# Allows you access to the Human module (Ruby 2+)
require_relative "human"
require_relative "smart"

module Animal
  def make_sound
    puts "Grrrrrr"
  end
end

# You can inherit a modules methods with prepend or include
# You can inherit from numerous methods instead of one class

class Dog
  include Animal
end

rover = Dog.new
rover.make_sound

class Scientist
  include Human
  prepend Smart # Any methods in Smart will superseed those in the class

  def act_smart
    return "E = mc^2"
  end

end

einstein = Scientist.new

einstein.name = "Albert"

puts einstein.name

einstein.run

puts einstein.name + " says " + einstein.act_smart

# --------------- POLYMORPHISM ---------------

class Bird
  def tweet(bird_type)
    bird_type.tweet
  end
end

class Cardinal < Bird
  def tweet
    puts "Tweet tweet"
  end
end

class Parrot < Bird
  def tweet
    puts "Squawk"
  end
end

# Statically typed languages use duck typing to achieve polymorphism
# Ruby pays less attention to the class type versus the methods that can
# be called on it

generic_bird = Bird.new

generic_bird.tweet(Cardinal.new)
generic_bird.tweet(Parrot.new)
