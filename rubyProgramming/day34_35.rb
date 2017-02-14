# classes

# Guerreiro
class Warrior
  def initialize(name, clan, strength, dexterity)
    # variaveis de instancia
    @name = name
    @clan = clan
    @strength = strength
    @dexterity = dexterity
  end

  def about
    print "#{@name} is a warrior from the #{@clan} clan. "
    puts  "Strength: #{@strength}. Dexterity: #{@dexterity}"
  end

  # variavel global
  $warrior_info = puts'A fighter. A warrior has higer than normal'\
    ' strength. They never back down, never surrender!'
end

player1 = Warrior.new('Raze', 'WhiteFox', 23, 21)
player2 = Warrior.new('Bazerk', 'RedFang', 19, 31)

player1.about
player2.about

# nao precisa disso aqui, porque vai ser chamado querendo ou nao
# pelo codigo acima
$warrior_info
