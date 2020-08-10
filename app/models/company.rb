class Company
  attr_reader :name, :founding_year

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, founding_year)
    @name = name
    @founding_year = founding_year

    @@all << self
  end

  def freebies
    Freebie.all.filter do |freebie_instance|
      freebie_instance.company.name == self.name
    end
  end

  def devs
    dev_names = Freebie.all.map do |finder|
      if finder.company.name == self.name
        finder.dev.name
      end
    end
    dev_names.compact.uniq
  end

  def give_freebie(dev,item_name)
    Freebie.new(item_name,self,dev)
  end

  def self.oldest_company
    old_boys = Company.all.map do |old_company_instance|
      old_company_instance.founding_year
      end
      Company.all.map do |company|
       if company.founding_year == old_boys.max
        return company
       end
      end
  end

  def self.most_distributed
    Freebie.all.map #can't remember how to only get specific info from the whole array trying to get only company name and the item
     count_hash = Freebie.all.each_with_object(Hash.new(0)) do |key,value| #this would take all of the companies, and all of the items
      value[key] += 1
      # binding.pry
      # 0
    end
    count_hash #this would return the key and point to how many of each there is
    binding.pry
    0
  end#I would end it by just returning the company with the highest count


end#end of company class


# - `Company.most_distributed`
#   - should return an instance of `Company` which has the most freebies given out to devs
