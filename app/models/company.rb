class Company
  attr_reader :name, :founding_year

  @@all = []

  def initialize(name, founding_year)
    @name = name
    @founding_year = founding_year

    @@all << self
  end

  # returns an array of all the freebies given out by the company
  def freebies
    # 1. find all Freebie instances (Freebie.all)
    # 2. select the ones that belong to given company
    # 3. return array with matching Freebie instances
    Freebie.all.select do |freebie_instance|
      freebie_instance.company == self
    end
  end
  
  # returns a unique array of all the devs who received freebie(s) from the company
  def devs 
   devs = freebies.map do |freebie_instance|
    freebie_instance.dev
   end
   devs.uniq
  end

  def give_freebie(dev, item_name)
    Freebie.new(item_name, self, dev)
  end


  def self.all
    @@all
  end

  # returns the Company instance with the earliest founding year
  def self.oldest_company
    self.all.min_by do |company_instance|
      company_instance.founding_year
    end
  end

  # should return an instance of Company which has the most freebies given out to devs
  def self.most_distributed
    # 1. find all Company instances
    # 2. find number of freebies given per company -> #freebies ex: c1.freebies
    # 3. sort by number of freebies and return company instance with highest number (first/last element in array)
    companies_array = self.all.sort_by do |company_instance|
      company_instance.freebies.count
    end
    companies_array.last
  end

end # end of Company class
