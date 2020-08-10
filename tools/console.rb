# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# DEV INSTANCES 
charlie_dev = Dev.new("Charlie")
paola_dev = Dev.new("Paola")
barry_dev = Dev.new("Barry")


# COMPANY INSTANCES 
microsoft = Company.new('Microsoft', 1995)
google = Company.new('Google', 1990)
amazon = Company.new('Amazon', 1988)


# FREEBIE INSTANCES 
# def initialize(item_name, company, dev)

hoodie = Freebie.new('hoodie', microsoft, charlie_dev)
hoodie2 = Freebie.new('hoodie', microsoft, paola_dev)
t_shirt = Freebie.new('t-shirt', google, paola_dev)
headphones = Freebie.new('headphones', amazon, barry_dev)
notebook = Freebie.new('notebook', google, charlie_dev)
laptop_case = Freebie.new('Lap case', amazon, paola_dev)
yeti = Freebie.new('yeti', google, charlie_dev)











# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
