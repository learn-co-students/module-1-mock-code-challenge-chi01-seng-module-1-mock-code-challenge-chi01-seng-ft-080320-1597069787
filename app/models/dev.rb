class Dev

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def freebies
    freebie_array = Freebie.all.select do |freebies_instance|
      freebies_instance.dev_instance == self
    end
    freebie_array.map do |freebies_instance|
      freebies_instance.item_name
    end
  end

  def companies
    dev_array = Freebie.all.select do |freebies_instance|
      freebies_instance.dev_instance == self
    end
    company_array = dev_array.map do |freebies_instance|
      freebies_instance.company_instance.name
    end
    company_array.uniq 
  end

  def received_one(item_name)
    self.freebies.any?(item_name)
  end

  def give_away(dev_instance,freebie)
    freebie.dev_instance = self
  end

  def self.freebie_hoarder
    dev_array =Freebie.all.map do |freebies_instance|
      freebies_instance.dev_instance
    end
    dev_hash = {}
    dev_array.each do |dev_instance|
      if dev_hash[dev_instance] == nil
        dev_hash[dev_instance] = 1
      else 
        dev_hash[dev_instance] += 1
      end
    end
    dev_hash.max_by do |k,v|
      v
      return k
    end
  end
  

end

=begin
X- `Dev#initialize(name)`
  - should initialize with a name (string)
X- `Dev#name`
  - should return the name of the dev
X- `Dev.all`
  - Returns an array of all Dev instances

X- `Dev#freebies`
  - returns an array of all the freebies that the dev owns
X- `Dev#companies`
  - returns a **unique** array of all the companies that the dev received freebie(s) from

X- `Dev#received_one?(item_name)`
  - accepts an item_name (string) and returns true if any of the freebies associated with the dev has that item_name, otherwise returns false
X- `Dev#give_away(dev, freebie)`
  - accepts a `Dev` instance and a `Freebie` instance, changes the freebie's dev to be the given dev
X- `Dev.freebie_hoarder`
  - returns *one* dev instance for the dev who owns the most amount of freebies
=end