class Freebie

    attr_reader  :item_name, :company_instance
    attr_accessor :dev_instance

    @@all = []

    def initialize(item_name, company_instance, dev_instance)
        @item_name = item_name
        @company_instance = company_instance
        @dev_instance = dev_instance
        @@all << self
    end

    def self.all
        @@all
    end

    def dev
        self.dev_instance
    end

    def company
        self.company_instance
    end

    def print_details
        puts "#{self.dev_instance.name} owns a #{self.item_name} from #{self.company_instance.name}."
    end

end


=begin
X- `Freebie#initialize(item_name, company, dev)`
  - should initialize with an item name (string), company (`Company` instance) and dev (`Dev` instance)
X- `Freebie#item_name`
  - should return the name of the item, ie. `"sticker"` or `"water bottle"`
X- `Freebie.all`
  - Returns an array of all Freebie instances

X- `Freebie#dev`
  - should return the `Dev` instance for this freebie
X- `Freebie#company`
  - should return the `Company` instance for this freebie

X- `Freebie#print_details`
  - should return a string formatted as follows: `{insert dev's name} owns a {insert freebie's item_name} from {insert company's name}
=end