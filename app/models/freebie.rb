class Freebie

    #initialize with argument item_name, company, and dev
    #keep track of all instances of Freebie

    def initialize(item_name, company, dev)
        @item_name = item_name
        @company = company
        @dev = dev 

        self.class.all << self
    end

    @@all = []
    attr_reader :item_name, :company
    attr_accessor :dev  

    def self.all
        @@all 
    end

    #instance method to print details of freebie
    def print_details
        p "#{@dev.name} owns a #{@item_name} from #{@company.name}"
    end

end #of Freebie class
