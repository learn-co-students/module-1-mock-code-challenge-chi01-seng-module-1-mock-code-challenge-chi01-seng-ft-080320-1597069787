# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Company.new("Amazon", 1995)
c2 = Company.new("Microsoft", 1984)
c3 = Company.new("Apple", 1980)

d1 = Dev.new("Lawrence")
d2 = Dev.new("Andre")
d3 = Dev.new("Tanya")

f1 = Freebie.new("Hat", c1, d1)
f2 = Freebie.new("Phone Charger", c3, d2)
f3 = Freebie.new("Water Bottle", c2, d3)
f4 = Freebie.new("Frisbee", c2, d1)
f5 = Freebie.new("Coffee Mug", c1, d1)





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
