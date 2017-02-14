# Conditional Assignment Operator

favorite_animal = 'cat'

favorite_animal ||= 'dog'

puts favorite_animal

# seta como o que queremos caso ainda nao tenha nada
# tipo undefined

favorite_animal = nil

favorite_animal ||= 'dog'

puts favorite_animal
