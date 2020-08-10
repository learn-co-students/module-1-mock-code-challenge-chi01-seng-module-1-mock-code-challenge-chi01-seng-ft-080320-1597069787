class Company
  attr_reader :name, :founding_year
  @@all=[]
  
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

  def dev
    arr = self.freebies.map do |freebie_instance|
      freebie_instance.dev
    end

    arr.uniq!
  end

  def give_freebie(dev, item_name)
    Freebie.new(item_name, self, dev)
  end

  def self.oldest_company
    arr = []
    @@all.map do |company_instance|
      arr << company_instance.founding_year
    end
    arr_min = arr.min 
    arr_min
  end

  def self.most_distributed

    arr = []
    @@all.map do |company_instance|
    arr << company_instance.freebies.size
    end
    max_fr = arr.max

    max_freebies_name={}
    @@all.map do |company_instance|
      if company_instance.freebies.size == max_fr
        max_freebies_name = company_instance.name
      end
      # binding.pry
    end
    max_freebies_name
  end

  def self.all
    @@all
  end

end
