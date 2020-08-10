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
        "#{self.dev.name} owns a #{self.item_name} from #{self.company.name}"
    end

    def self.all
        @@all
    end

end
