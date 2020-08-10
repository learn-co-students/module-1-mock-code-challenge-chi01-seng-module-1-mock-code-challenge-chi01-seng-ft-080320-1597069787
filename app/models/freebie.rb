class Freebie
    attr_accessor :item_name, :company, :dev 

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

    

end


=begin
- `Freebie#dev`
  - should return the `Dev` instance for this freebie
- `Freebie#company`
  - should return the `Company` instance for this freebie
=end 