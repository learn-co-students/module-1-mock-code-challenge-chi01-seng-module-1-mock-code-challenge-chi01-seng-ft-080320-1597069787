class Dev
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self 
  end

  def dev_owned_freebies
    Freebie.all.select do |dev_owned_freebies|
      freebie.dev == self 
    end 
  end 

  def company 
    Freebie.each do |freebie|
      freebie.company 
    end 
  end 

  def self.all 
    @@all 
  end 

end

=begin
- `Dev#freebies`
  - returns an array of all the freebies that the dev owns
- `Dev#companies`
  - returns a **unique** array of all the companies that the dev received freebie(s) from
  =end 