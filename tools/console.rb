# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# COMPANY INSTANCES (name, founding_year)
c1 = Company.new('Pear', 1990)
c2 = Company.new('Nile', 2000)
c3 = Company.new('Palm', 2002)

# DEV INSTANCES (name)
d1 = Dev.new('Natalia')
d2 = Dev.new('Bruce')
d3 = Dev.new('Matilda')

# FREEBIE INSTANCES (item_name, company, each_dev)
f1 = Freebie.new('watch', c1, d1)
f2 = Freebie.new('stickers', c3, d3)
f3 = Freebie.new('water bottle', c3, d3)
f4 = Freebie.new('t-shirt', c3, d2)

# COMPANY INSTANCE METHODS
# p c3.freebies 
# p c2.devs
# p c1.give_freebie(f1, "hoodie")

# COMPANY CLASS METHODS
# Company.oldest_company
# p Company.most_distributed

# DEV INSTANCE METHODS
# p d3.freebies 
# p d1.companies 
# p d1.received_one?('watch')
# p d1.give_away(d2, f3)

# DEV CLASS METHODS
# Dev.freebie_hoarder

# FREEBIE INSTANCE METHODS
# p f1.dev 
# p f1.company 
# p f1.print_details


# NOTES
# Company -< Freebie >- Dev
# Freebie is the joiner

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
# binding.pry
# 0
