class Dev
  attr_reader :name

  @@all = []
  
  def initialize(name)
    @name = name

    @@all << self
  end

  def freebies
    Freebie.all.select do |freebie_instance|
      freebie_instance.dev == self
    end
  end

  def companies
    self.freebies.map do |freebie_instance|
      freebie_instance.company
    end
  end


  def self.all
    @@all
  end

end
