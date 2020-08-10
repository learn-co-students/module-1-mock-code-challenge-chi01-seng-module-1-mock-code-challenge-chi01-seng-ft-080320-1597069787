class Company
  attr_reader :name, :founding_year

  @@all = []

  def initialize(name, founding_year)
    @name = name
    @founding_year = founding_year

    @@all << self 
  end

  def freebie
    Freebie.all.select do |freebie|
      freebie.company == self 
    end 
  end 

  def self.received_freebie(freebie)
    self.find(freebie) 
  end 

  def self.all 
    @@all 
  end 

end

=begin
- `Company#devs`
  - returns a **unique** array of all the devs who received freebie(s) from the company
  =end 