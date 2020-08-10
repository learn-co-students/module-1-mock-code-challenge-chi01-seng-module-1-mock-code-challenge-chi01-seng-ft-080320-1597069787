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

  def received_one?(item_name) 
    Freebie.all.any? do |freebie_instance|
      freebie_instance.item_name == item_name
    end
  end

  # still working on this
  # accepts a Dev instance and a Freebie instance
  # # changes the freebie's dev to be the given dev
  # def give_away(dev, freebie)
  #   Freebie.all.map do |freebie_instance|
  #     dev = self 
  #   end
  # end


  def self.all
    @@all
  end

end # end of Dev class
