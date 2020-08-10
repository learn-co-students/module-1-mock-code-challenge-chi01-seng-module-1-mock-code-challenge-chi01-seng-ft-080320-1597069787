class Company
  attr_reader :name, :founding_year

  @@all = []

  def initialize(name, founding_year)
    @name = name
    @founding_year = founding_year

    self.class.all << self
  end

  def freebies
    Freebie.all.select do |individual_freebie|
      individual_freebie.company == self
    end
  end

  def devs
    my_devs = []
    Freebie.all.each do |individual_freebie|
      if(individual_freebie.company == self)
        my_devs << individual_freebie.dev
      end
    end
    my_devs.uniq
  end

  # def initialize(item_name, company, dev)

  def give_freebie(item_name, dev)
    Freebie.new(item_name, self, dev)
  end


  def self.all
    @@all
  end 


  def self.oldest_company
    oldest = nil
    age_comparison = 3000
    self.all.each do |individual_company|
      if(individual_company.founding_year < age_comparison)
        age_comparison = individual_company.founding_year
        oldest = individual_company
      end
    end
    oldest
  end


  def self.most_distributed 
    company_hash = {}
    self.all.each do |individual_company|
      freebie_counter = 0
      Freebie.all.each do |individual_freebie|
        if(individual_freebie.company == individual_company)
          freebie_counter += 1
        end
      end
      company_hash[individual_company.name] = freebie_counter
    end
    most_distributed = company_hash.sort_by{|k, v| -v}.first.first
    
    self.all.find do |company|
      company.name == most_distributed
    end
  end

end
