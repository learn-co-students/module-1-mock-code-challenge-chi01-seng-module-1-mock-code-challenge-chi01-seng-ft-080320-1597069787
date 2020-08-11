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
    freebie_array = self.freebies.map do |freebie_instance|
      freebie_instance.dev
    end
    freebie_array.uniq
  end

  def give_freebie(dev, item_name)
    Freebie.new(item_name, self, dev)
  end

  def self.oldest_company
    Company.all.min_by do |company_instance|
    company_instance.founding_year
    end
  end

  def self.most_distributed
    Company.all.max_by do |company_instance|
      company_instance.freebies.count
  end
end

  def self.all
    @@all
  end

end
