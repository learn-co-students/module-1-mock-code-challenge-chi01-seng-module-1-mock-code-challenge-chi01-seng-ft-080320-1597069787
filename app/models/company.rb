class Company
  attr_reader :name, :founding_year
  @@all = []
  def initialize(name, founding_year)
    @name = name
    @founding_year = founding_year
    @freebies = []
    @devs = []
  end
  def founding_year
    @founding_year
  end
  def self.all
    @@all << @name
  end


   def add_freebies(item_name)
    @freebies << item_name
   end
   def freebies
    @freebies
   end

   def add_dev(dev_name)
    @devs << dev_name
   end

   def devs
    @devs.uniq
   end






end
