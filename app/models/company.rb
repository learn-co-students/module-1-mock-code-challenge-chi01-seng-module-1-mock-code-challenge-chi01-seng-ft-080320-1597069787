class Company
  attr_reader :name, :founding_year
  
  @@all = []
  
  def initialize(name, founding_year)
    @name = name
    @founding_year = founding_year

    @@all << self
  end
#returns an array of all the freebies given out by the company
  def freebie_company
    Freebie.all.select do |freebie_instance|
      freebie_instance.company == self
    end 
  end 

  #Company#give_freebie(dev, item_name)
#takes a dev (an instance of the Dev class) and an item_name (string) as arguments, and creates a new Freebie instance associated with this company and the given dev

  def give_freebie(dev, item_name)
    Freebie.new(dev, item_name, self)
  end 
#returns the Company instance with the earliest founding year
  def self.oldest_company
    oldest = []
    self.all.find do |company_instance|
      oldest << company_instance.founding_year.min
    end 
    oldest
  end 
  
  
  
  def self.all
    @@all
  end 










end
