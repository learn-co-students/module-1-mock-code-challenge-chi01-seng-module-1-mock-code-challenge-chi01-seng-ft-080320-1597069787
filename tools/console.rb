# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#Company instances
google = Company.new("google", "1998")
apple = Company.new("apple", "1976")



#freebie instances
freebie_one = Freebie.new("bagpack", Company, Dev)
freebie_two = Freebie.new("water bottle", Company, Dev)



#dev instances

roman = Dev.new("Roman")
scout = Dev.new("Scout")





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
