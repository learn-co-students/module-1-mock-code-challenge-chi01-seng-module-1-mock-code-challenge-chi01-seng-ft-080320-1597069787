class Freebie

    attr_reader :item_name, :company
    attr_accessor :dev

    @@all = []

    def initialize(item_name, company, dev)
        @item_name = item_name
        @company = company
        @dev = dev

        @@all << self
    end

    def print_details
        p "#{@dev.name} owns a #{@item_name} from #{@company.name}"
    end

    def self.all
        @@all
    end

end

# x `Freebie#initialize(item_name, company, dev)`
#   - should initialize with an item name (string), company (`Company` instance) and dev (`Dev` instance)
# X `Freebie#item_name`
#   - should return the name of the item, ie. `"sticker"` or `"water bottle"`
# x `Freebie.all`
#   - Returns an array of all Freebie instances