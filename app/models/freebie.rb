class Freebie
    attr_accessor
    attr_reader :item_name, :company, :dev

    @@all = []

    def self.all
        @@all
    end

    def initialize(item_name,company,dev)
        @item_name = item_name
        @company = company
        @dev = dev

        @@all << self
    end

    def print_details
        Freebie.all.each do |finder|
            if finder.item_name == self.item_name
              return  "#{finder.dev.name} owns a #{self.item_name} from #{finder.company.name}"
            # binding.pry
            # 0
            end
        end
    end

end


# - `Freebie#print_details`
# #   - should return a string formatted as follows: `{insert dev's name} owns a {insert freebie's item_name} from {insert company's name}`