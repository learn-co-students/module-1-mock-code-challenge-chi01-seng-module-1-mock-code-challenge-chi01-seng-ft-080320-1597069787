class Dev

  #initialize with name
  #keep track of all instances of dev
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name

    self.class.all << self 
  end

  def self.all 
    @@all 
  end

  #instance method that returns array of all freebies given to dev
  def freebies
    Freebie.all.select {|freebie_instance| freebie_instance.dev == self}
  end

  #instance method that returns unique array of companies that gave freebie
  def companies 
    company = self.freebies.map {|freebie| freebie.company}
    company.uniq 
  end

  #instance method to see if they received freebie
  def received_one?(item_name)
    self.freebies.map {|freebie| freebie.item_name == item_name}
  end

  #instance method for one dev to give another their freebie
  def give_away(dev, freebie)
    freebie.dev = dev 
  end

  #class constructor finds dev who owns most amount of freebies
  def self.freebie_hoarder 
    self.all.max_by {|dev_instance| dev_instance.freebies.count}
  end

end #of Dev class
