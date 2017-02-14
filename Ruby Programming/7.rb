# --------------- SYMBOLS ---------------

# Symbols are strings that can't be changed
# You use them to conserve memory and to speed string comparisons
# A symbol is a way to pass string data if:
# The string value won't change
# The string doesn't need access to string methods

:derek

puts :derek
puts :derek.to_s
puts :derek.class
puts :derek.object_id

# Many core Ruby methods take symbols as arguments such as
# attr_accessor :name, :height, :weight that we used earlier

# Symbols are also used as keys for hashes
