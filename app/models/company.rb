class Company
  attr_reader :name, :founding_year

  @@all = []

  def initialize(name, founding_year)
    @name = name
    @founding_year = founding_year

    @@all << self
  end

  def freebies
    Freebie.all.select do |instance|
      instance.company == self
    end
  end

  def devs
    devs = []
    self.freebies.map do |instance|
      devs << instance.dev
    end
    devs.uniq
  end

  def give_freebie(dev, item_name)
    Freebie.new(item_name, self, dev)
  end

  def self.oldest_company
    self.all.min_by do |instance|
      instance.founding_year
    end
  end

  def self.most_distributed
    Freebie.all.max_by do |instance|
    end
  end

  def self.all
    @@all
  end

end

# tesla = Company.new("Tesla", 1990)
# mcdonalds = Company.new("McDonalds", 1950)
# apple = Company.new("Apple", 1985)

# matthew = Dev.new("Matthew")
# joanna = Dev.new("JoAnna")
# natalia = Dev.new("Natalia")

# freebie1 = Freebie.new("Business Card", apple, matthew)
# freebie2 = Freebie.new("Sticker", mcdonalds, matthew)
# freebie3 = Freebie.new("Free Vacation", tesla, natalia)
# freebie4 = Freebie.new("Job Interview", apple, joanna)

# X `Company#initialize(name, founding_year)`
#   - should initialize with a name (string) and founding_year (integer)
# X `Company#name`
#   - should return the name of the company
# X `Company#founding_year`
#   - should return the founding_year
# X `Company.all`
#   - Returns an array of all Company instances
