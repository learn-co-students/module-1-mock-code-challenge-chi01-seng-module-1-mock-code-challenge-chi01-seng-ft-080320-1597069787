class Dev
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  # returns an array of all the freebies that the dev owns
  def freebies
    Freebie.all.select do |freebie_instance|
      freebie_instance.dev == self
    end
  end

  # returns a unique array of all the companies that the dev received freebie(s) from
  def companies
    companies = freebies.map do |freebie_instance|
      freebie_instance.company
     end
     companies.uniq  
  end

  # returns true if any of the freebies associated with the dev has that item_name, otherwise returns false
  def received_one?(item_name) 
    Freebie.all.any? do |freebie_instance|
      freebie_instance.item_name == item_name
    end
  end
  
  # accepts a Dev instance and a Freebie instance
  # changes the freebie's dev to be the given dev
  def give_away(dev, freebie) 
    freebie.dev = dev
  end


  def self.all
    @@all
  end

  # returns one dev instance for the dev who owns the most amount of freebies
  def self.freebie_hoarder
    #1. find all devs
    #2. find number of freebies per dev -> use #freebies method d1.freebies
    #3. sort by number of freebies 
    #3. return dev with highest number of freebies
    self.all.max_by do |dev_instance|
      dev_instance.freebies.count
    end
  end

end # end of Dev class
