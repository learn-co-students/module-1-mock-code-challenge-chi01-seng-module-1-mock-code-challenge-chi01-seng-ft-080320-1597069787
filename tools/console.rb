# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end


#Company instances
company1 = Company.new("Google", 1998)
company2 = Company.new("Facebook", 2004)

#Dev instances
dev1 = Dev.new("Rick")
dev2 = Dev.new("Morty")

# item_name, company, dev
#Freebie instances
free1 = Freebie.new("Sun Glasses", company1, dev1)
free2 = Freebie.new("T-shirt", company2, dev2)




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
