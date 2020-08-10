class Freebie
    attr_accessor :item_name
    @@all = []
    def initialize(item_name, company, dev)
        @item_name = item_name
        @company = company
        @dev = dev
    end
    def item_name
        @item_name
    end 
    def item_name
        item_name = item_name
    end

    # rewiev

    def self.all
        @@all << @item_name  
    end




    def 
    end
end
