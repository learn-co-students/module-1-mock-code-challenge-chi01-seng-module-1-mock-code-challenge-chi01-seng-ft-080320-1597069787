class Dev
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    
    @@all << self
  end

  def freebies
    Freebie.all.select do |instance|
      instance.dev == self
    end
  end

  def companies
    companies = []
    self.freebies.map do |instance|
      companies << instance.company
    end
    companies.uniq
  end

  def received_one?(item_name)
    self.freebies.find do |freebie|
      freebie.item_name == item_name
    end
  end

  def give_away(dev, freebie)
    freebie.dev = dev
  end

  def freebie_hoarder
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

# X `Dev#initialize(name)`
#   - should initialize with a name (string)
# X `Dev#name`
#   - should return the name of the dev
# X `Dev.all`
#   - Returns an array of all Dev instances
