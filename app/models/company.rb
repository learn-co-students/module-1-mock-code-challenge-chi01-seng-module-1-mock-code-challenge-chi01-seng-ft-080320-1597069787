class Company
  attr_reader :name, :founding_year

  @@all = []

  def initialize(name, founding_year)
    @name = name
    @founding_year = founding_year

    @@all << self
  end

  def freebies
    Freebie.all.select do |freebie_instance|
      freebie_instance.company == self
    end
  end

  def devs
    my_devs = []
    self.freebies.map do |freebie_instance|
      if(freebie_instance.company == self)
        my_devs << freebie_instance.dev
    end
    end
  my_devs.uniq
  end

  def give_freebie(dev= "dev1", item_name= "Laptop")
    Freebie.new(item_name, self, dev)
  end

  def self.most_distributed
    self.all.select do |with_most_freebies|
      with_most_freebies.freebies == true
    end
    binding.pry
  end

  def self.all
    @@all
  end

end
