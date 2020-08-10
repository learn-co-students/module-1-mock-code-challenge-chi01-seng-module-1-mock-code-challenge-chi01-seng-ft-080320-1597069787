class Company

  #initialize with name and founding year
  #keep track of all instances of company
  attr_reader :name, :founding_year
  @@all = []

  def initialize(name, founding_year)
    @name = name
    @founding_year = founding_year

    self.class.all << self 
  end

  def self.all 
    @@all 
  end
  #instance method for returning array of all freebies given out by company
  def freebies
    Freebie.all.select {|freebie_instance| freebie_instance.company == self}
  end

  #instance method for finding unique array of all devs who receive freebie from company
  def devs 
    devs = self.freebies.map {|freebie| freebie.dev}
    devs.uniq 
  end

  #instance method to give a new freebie to a dev
  def give_freebie(dev, item_name)
    Freebie.new(item_name, self, dev)
  end

  #class constructor to find company with earliest founding year
  def self.oldest_company
    self.all.min_by {|company_instance| company_instance.founding_year}
  end

  #class constructor to find out which company gave away most items
  def self.most_distributed
    self.all.max_by {|company_instance| company_instance.freebies.count}
  end 


end #of Company class
