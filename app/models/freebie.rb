
class Freebie

    attr_reader :item_name, :company, :dev

  @@all = []

  def initialize(item_name, company, dev)
     @item_name = item_name
     @company = company
     @dev = dev
     
    @@all << self
  end

  def self.all
    @@all
  end

  # `Freebie#print_details`
  # should return a string formatted as follows: `{insert dev's name} owns a {insert freebie's item_name} from {insert company's name
  def print_details
    # "#{dev1.name} owns a #{free1.item_name} from #{company1.name}"
    # "#{dev1} owns a #{free1}} from #{company1}"
    #  "#{self.dev1.name} owns a #{self.free1.item_name} from #{self.company1.name}"
    binding.pry
  end
  
# !!! DON'T UNDERSTAND WHY SELF = THE BELLOW INFO !!!
#   pry(#<Freebie>)> self
# => #<Freebie:0x00007fc68a1273e0
#  @company=#<Company:0x00007fc68a127570 @founding_year=1998, @name="Google">,
#  @dev=#<Dev:0x00007fc68a1274a8 @name="Rick">,
#  @item_name="Sun Glasses">
end
