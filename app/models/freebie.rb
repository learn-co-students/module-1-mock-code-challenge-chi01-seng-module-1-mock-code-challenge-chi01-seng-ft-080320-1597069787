class Freebie

    attr_accessor :item_name, :company, :dev

    @@all = []

    def initialize(item_name, company, dev)
        @item_name = item_name
        @company = company
        @dev =  dev
        @@all << self
    end

    def item_name 
        @item_name
    end 

    def self.all 
        @@all 
    end 

    def dev
        
    end 

end
