require 'pry'

class Freebie

    attr_accessor :item_name, :company, :dev
    @@all = []


    def initialize(item_name, company, dev)
        @item_name = item_name
        @company = company 
        @dev = dev

        self.class.all << self
    end

    ##changed name to my_dev instead of dev got stack level too deep error with same name
    ## think is referencing @dev variable and dev method at the same time

    ##find method did follow if, ask nick or ian about map, select, and find following conditionals
    def my_dev 
        my_dev = []
        Freebie.all.find do |individual_freebie|
            if(individual_freebie == self)
                my_dev << individual_freebie.dev
            end
        end
        my_dev
    end

    ##did same thing with company method
    def my_company
        my_company = []
        Freebie.all.each do |individual_freebie|
            if(individual_freebie == self)
                my_company << individual_freebie.company
            end
        end
        my_company
    end


    def print_details
        "#{self.dev.name} owns a #{self.item_name} from #{self.company.name}"
    end

    def self.all
        @@all
    end

end
