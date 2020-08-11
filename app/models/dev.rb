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
    freebie_array2 = self.freebies.map do |freebie_instance|
      freebie_instance.company
    end
    freebie_array2.uniq
  end

  def received_one?(item_name)
    self.freebies.any? do |freebie_instance|
      freebie_instance.item_name == item_name
    end
  end

  def give_away(dev, freebie)
    if freebie.dev == self 
      freebie.dev = dev
    end
  end

  def self.freebie_hoarder
    Dev.all.max_by do |freebie_hoarder|
      freebie_hoarder.freebies.count
    end
  end

  def self.all
    @@all
  end

end
