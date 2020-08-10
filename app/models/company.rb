class Company

  attr_reader :name, :founding_year

  @@all = []

  def initialize(name, founding_year)
    @name = name
    @founding_year = founding_year
    @@all << self
  end

  def self.all
    @@all
  end

  def freebies
    freebie_array = Freebie.all.select do |freebies_instance|
      freebies_instance.company_instance == self
    end
    freebie_array.map do |freebies_instance|
      freebies_instance.item_name
    end
  end

  def devs
    freebie_array = Freebie.all.select do |freebies_instance|
      freebies_instance.company_instance == self
    end
    dev_array = freebie_array.map do |freebies_instance|
      freebies_instance.dev_instance.name
    end
    dev_array.uniq 
  end

  def give_freebie(dev, item_name)
    Freebie.new(item_name, self, dev)
  end

  #returns the `Company` instance with the earliest founding year
  # def self.oldest_company
  #   founding_year_array = []
  #   Company.all.each do |company_instance|
  #     founding_year_array << company_instance.founding_year
  #   end
  #     founding_year.min
  #     binding.pry
  #     #if founding_year_array.min 

  #     #end
  #   end
  # end

  def self.most_distributed
    company_array =Freebie.all.map do |freebies_instance|
      freebies_instance.company_instance
    end
    company_hash = {}
    company_array.each do |company_instance|
      if company_hash[company_instance] == nil
        company_hash[company_instance] = 1
      else 
        company_hash[company_instance] += 1
      end
    end
    company_hash.max_by do |k,v|
    v
    return k
    end
  end
    
end

=begin
X- `Company#initialize(name, founding_year)`
  - should initialize with a name (string) and founding_year (integer)
X- `Company#name`
  - should return the name of the company
X- `Company#founding_year`
  - should return the founding_year
X- `Company.all`
  - Returns an array of all Company instances

X- `Company#freebies`
  - returns an array of all the freebies given out by the company
X- `Company#devs`
  - returns a **unique** array of all the devs who received freebie(s) from the company
  
X- `Company#give_freebie(dev, item_name)`
  - takes a `dev` (an instance of the `Dev` class) and an `item_name` (string) as arguments, and creates a new `Freebie` instance associated with this company and the given dev
????- `Company.oldest_company`
  - returns the `Company` instance with the earliest founding year
X- `Company.most_distributed`
  - should return an instance of `Company` which has the most freebies given out to devs
=end