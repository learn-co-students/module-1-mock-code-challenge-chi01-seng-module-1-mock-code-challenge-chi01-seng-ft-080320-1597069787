class Dev

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def freebies_instance
    Freebie.all.select do |freebie_instance|
      freebie_instance.dev == self
    end
  end

  def freebies
    self.freebies_instance.map do |freebie_instance|
      freebie_instance.item_name
    end
  end

  def companies
    company_list = self.freebies_instance.map do |freebie_instance|
      freebie_instance.company.name
    end
    company_list.uniq
  end

  def received_one?(item_name)
    if self.freebies.include?(item_name)
      true
     else
      false
    end
  end

  def give_away(dev, freebie)

  end

  def freebie_counts
    self.freebies_instance.count
  end

  def self.freebie_hoarder
    self.all.max_by do |freebie_instance|
      freebie_instance.freebie_counts
      end
  end

  def self.all
    @@all
  end

end
