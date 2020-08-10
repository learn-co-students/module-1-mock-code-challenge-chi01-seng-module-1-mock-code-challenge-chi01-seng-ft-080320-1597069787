# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Company.new("Abbott", 1960)
c2 = Company.new("Greenlee", 1980)
c3 = Company.new("Groupon", 1980)
c4 = Company.new("McDonald's", 1940)
c5 = Company.new("United Airlines", 1950)

d1 = Dev.new("Joe")
d2 = Dev.new("Bob")
d3 = Dev.new("Monica")
d4 = Dev.new("Barbara")
d5 = Dev.new("Kris")

f1 = Freebie.new("water bottle", c1, d5)
f2 = Freebie.new("pen", c1, d5)
f3 = Freebie.new("magnet", c2, d3)
f4 = Freebie.new("sticker", c3, d1)
f5 = Freebie.new("bag", c5, d2)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
