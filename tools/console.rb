# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
c1 = Company.new("Google", 1979)
c2 = Company.new("Amazon", 1986)

d1 = Dev.new("Billy")
d2 = Dev.new("Jackie")

f1 = Freebie.new("Hat", c1, d1)
f2 = Freebie.new("Jacket", c1, d2)
f3 = Freebie.new("Cards", c2, d1)
f4 = Freebie.new("Pens", c2, d2)




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
