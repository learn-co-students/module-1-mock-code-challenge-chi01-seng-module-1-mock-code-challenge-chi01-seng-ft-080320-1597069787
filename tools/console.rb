# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

dunder = Company.new("Dunder Mifflin", 2000)
staples = Company.new("Staples", 2020)
ve = Company.new("Vertical endeavors", 1924)
# company (name, founding_year)
ignas = Dev.new("Ignas")
anthony = Dev.new("Anthony")
lee = Dev.new("Lee")
klud = Dev.new("Klud")
# dev (name)

stickers = Freebie.new("stickers",staples,ignas)
frisby = Freebie.new("frisby",dunder,lee)
mug = Freebie.new("mug",dunder,anthony)
flashlight = Freebie.new("flashlight",ve,ignas)

# (item_name, company, dev)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
