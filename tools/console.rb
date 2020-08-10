# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

class Company
  attr_reader :name, :founding_year 
  @@all = []

  def initialize(name, founding_year)
    @name = name
    @founding_year = founding_year
    @@all << self 
  end

  def self.all 
    @@all 
 end 

end

google = Company.new("google", 1998)




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
