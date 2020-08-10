# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Company.new("Google", 1990)
c2 = Company.new("Apple", 1980)
c3 = Company.new("Quickbook", 1995)

d1 = Dev.new("John")
d2 = Dev.new("Tim")
d3 = Dev.new("Tom")
d4 = Dev.new("Matt")

f1 = Freebie.new("ball", c1, d1)
f2 = Freebie.new("pen", c1, d1)
f3 = Freebie.new("clicker", c1, d2)
f4 = Freebie.new("ball", c2, d2)
f5 = Freebie.new("pencil", c2, d2)
f6 = Freebie.new("sticker", c3, d2)
f7 = Freebie.new("pencil", c3, d3)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
