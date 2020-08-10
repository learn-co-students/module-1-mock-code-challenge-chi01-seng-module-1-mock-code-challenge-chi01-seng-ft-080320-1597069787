
class Company

  attr_reader :name, :founding_year

  @@all = []

  def initialize(name, founding_year)
    @name = name
    @founding_year = founding_year

    @@all << self
  end

  def self.all
    @@all
  end

  def freebies
    Freebie.all.select do |freebie|
      freebie.company == self
    end
  end

  # def devs
  #   Dev.all.select do |dev|    <----- for `Company#devs` returns a **unique** array of all the devs who received freebie(s) from the company
  #     dev.freebie == self                !! Not Working !!
  #   end
  # end
end # end of class.
