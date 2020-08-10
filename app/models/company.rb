class Company

  attr_reader :name, :founding_year

  @@all = []

  def initialize(name, founding_year)
    @name = name
    @founding_year = founding_year

    @@all << self
  end

  def freebies_instance
    Freebie.all.select do |freebie_instance|
      freebie_instance.company == self
    end
  end

  def freebies
    self.freebies_instance.map do |freebie_instance|
      freebie_instance.item_name
    end
  end

  def devs
    dev_list = self.freebies_instance.map do |freebie_instance|
      freebie_instance.dev.name
    end
    dev_list.uniq
  end

  def give_freebie(item_name, dev)
    Freebie.new(item_name, self, dev)
  end

  def self.oldest_company
    self.all.min_by do |company_instance|
      company_instance.founding_year
    end
  end

  def freebie_counts
    self.freebies_instance.count
  end

  def self.most_distributed
    self.all.max_by do |freebie_instance|
    freebie_instance.freebie_counts
    end
  end

  def self.all
    @@all
  end

end
