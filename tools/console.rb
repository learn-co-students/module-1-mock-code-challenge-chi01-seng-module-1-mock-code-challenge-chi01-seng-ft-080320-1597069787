# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

google = Company.new("Google", 1998)
facebook = Company.new("Facebook", 2004)
amazon = Company.new("Amazon", 1995)

dev1 = Dev.new("John")
dev2 = Dev.new("Steve")

f1 = Freebie.new("Cup", facebook, dev1)
f2 = Freebie.new("Book", google, dev2)
f3 = Freebie.new("Giftcard", amazon, dev1)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
