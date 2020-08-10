class Dev
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end 
#returns a unique array of all the devs who received freebie(s) from the company
  def dev
    Freebie.all.select do |dev_instance|
      dev_instance.item_name == self
      binding.pry
    end 
  end 

  def dev_freebies
    Freebie.all.select do |freebie_instance|
        freebie_instance.dev == self
        binding.pry
    end 
  end 

  #should return the Dev instance for this freebie
  def dev_instance
    Freebie.all.find do |freebie_instance|
      freebie_instance.dev == self
    end 
  end 

  #accepts an item_name (string) and returns true if any of the freebies associated #with the dev has that item_name, otherwise returns false
  def received_one?(item_name)
    Freebie.all.map do |freebie_instance|
      if freebie_instance.dev == self
        return true
      else
        return false
        binding.pry
      end 
    end 
  end 
#accepts a Dev instance and a Freebie instance, changes the freebie's dev to be the given dev
  def give_away(dev, freebie)
    Freebie.all.find do |freebie_instance|
      freebie_instance.dev == self
      binding.pry
    end 
  end 

  #returns a unique array of all the companies that the dev received freebie(s) from
  def dev_companies
    Freebie.all.select do |freebie_instance|
      freebie_instance.company == self
    end 
  end 

  #returns one dev instance for the dev who owns the most amount of freebies
  def self.hoarder
    Freebie.all.map do |freebie_instance|
      freebie_instance
    end 
  end 

end
