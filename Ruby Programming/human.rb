module Human
  # Creates setter and getter methods
  attr_accessor :name, :height, :weight

  def run

    # self provides this specific objects value for a variable

    puts self.name + " runs"
  end

end
