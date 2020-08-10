# x `Company#initialize(name, founding_year)`
#   x should initialize with a name (string) and founding_year (integer)
# x `Company#name`
#   - should return the name of the company
# - `Company#founding_year`
#   - should return the founding_year
# - `Company.all`
#   - Returns an array of all Company instances

# - `Company#freebies`
#   - returns an array of all the freebies given out by the company
# - `Company#devs`
#   - returns a **unique** array of all the devs who received freebie(s) from the company



class Company
  attr_reader :name, :founding_year

  def initialize(name, founding_year)
    @name = name
    @founding_year = founding_year
  end

  def self
    self.all
  end

  def freebies
    array.new["bagpack", "water bottle"]
  end


end
