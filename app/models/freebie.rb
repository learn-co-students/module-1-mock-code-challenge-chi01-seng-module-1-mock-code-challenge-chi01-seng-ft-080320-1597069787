#### Freebie

# - `Freebie#initialize(item_name, company, dev)`
#   - should initialize with an item name (string), company (`Company` instance) and dev (`Dev` instance)
# - `Freebie#item_name`
#   - should return the name of the item, ie. `"sticker"` or `"water bottle"`
# - `Freebie.all`
#   - Returns an array of all Freebie instances

# - `Dev#freebies`
#   - returns an array of all the freebies that the dev owns
# - `Dev#companies`
#   - returns a **unique** array of all the companies that the dev received freebie(s) from




class Freebie

    def initialize(item_name,company,dev)
        @item_name = item_name
        @company = company
        @dev = dev
    end
    def item_name
        @item_name
    end

    def self
        self.all
    end

    
end


