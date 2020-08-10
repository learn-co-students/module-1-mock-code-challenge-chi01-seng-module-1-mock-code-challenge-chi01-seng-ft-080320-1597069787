# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#x `Freebie#initialize(item_name, company, dev)`
# X `Dev#initialize(name)`
# X `Company#initialize(name, founding_year)`

tesla = Company.new("Tesla", 1990)
mcdonalds = Company.new("McDonalds", 1950)
apple = Company.new("Apple", 1985)

matthew = Dev.new("Matthew")
joanna = Dev.new("JoAnna")
natalia = Dev.new("Natalia")

freebie1 = Freebie.new("Business Card", apple, matthew)
freebie2 = Freebie.new("Sticker", mcdonalds, matthew)
freebie3 = Freebie.new("Free Vacation", tesla, natalia)
freebie4 = Freebie.new("Job Interview", apple, joanna)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
