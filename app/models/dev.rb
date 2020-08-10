class Dev
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def freebies
      Freebie.all.select do |freebie_instance|
      freebie_instance.dev == self
      end
  end

  def companies
    my_companies = []
    self.freebies.map do |freebie_instance|
      if (freebie_instance.dev == self)
      my_companies << freebie_instance.company
    end
  end
    my_companies.uniq
  end

  def received_one?(item_name= "Cup")
      if (item_name == self.freebies[0].item_name)
        true
      else
        false
    end
  end

  def give_away(dev= "dev2", freebie= "Cup")
    Freebie.dev = "ram"
  end

  def self.freebie_hoarder
    self.all.select do |freebie_hoarder|
      freebie_hoarder.dev == self
    end
  end

  def self.all
    @@all
  end

end
