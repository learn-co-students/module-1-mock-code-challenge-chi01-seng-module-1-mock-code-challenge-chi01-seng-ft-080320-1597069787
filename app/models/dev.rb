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
    Freebie.all.select {|freebie| freebie.dev == self }
  end 

  def companies 
    def devs 
      Freebie.all.uniq {|freebie| freebie.dev == self} 
    end 
  end 

end
