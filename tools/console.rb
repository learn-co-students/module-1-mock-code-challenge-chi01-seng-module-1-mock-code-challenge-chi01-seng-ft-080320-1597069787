# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

company1 = Company.new("Apple", "1989")
company2 = Company.new("Microsoft", "1970")
company3 = Company.new("Yeti", "2005")
company4 = Company.new("Uber", "2007")

dev1 = Dev.new("Kimberlyn")
dev2 = Dev.new("Christopher")
dev3 = Dev.new("Kyle")

freebie1 = Freebie.new("Mouse", company1, dev1)
freebie2 = Freebie.new("Sweatshirt", company2, dev1)
freebie3 = Freebie.new("Cup", company3, dev2)
freebie4 = Freebie.new("Cup", company3, dev1)
freebie5 = Freebie.new("Cooler", company3, dev1)




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
