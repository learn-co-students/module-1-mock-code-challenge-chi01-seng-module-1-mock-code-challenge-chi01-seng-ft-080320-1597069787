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

  def freebies
    Freebie.all.select {|freebie| freebie.company == self }
  end 

  def devs 
    Freebie.all.uniq {|freebie| freebie.company == self} 
  end 



end
