# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end
#company 
apple = Company.new("Apple", 1995)
sony = Company.new("Sony", 2000)
microsoft = Company.new("Microsoft", 1995)
nintendo = Company.new("Nintendo", 2000)
uber = Company.new("Uber", 2012)

#dev

josue = Dev.new("Josue")
isaac = Dev.new("Isaac")
andrew = Dev.new("Andrew")
ruben = Dev.new("Ruben")
ian = Dev.new("Ian")

#freebie
toy = Freebie.new("Toy car", uber, josue)
laptop = Freebie.new("Laptop", apple, isaac)
microsoft = Freebie.new("Tablet", microsoft, andrew)
switch = Freebie.new("Switch", nintendo, ruben)
playstation = Freebie.new("Playstation 5", sony, ian)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
