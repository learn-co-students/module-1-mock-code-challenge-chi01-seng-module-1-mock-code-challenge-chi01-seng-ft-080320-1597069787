class Freebie
    attr_reader :item_name, :company, :dev

    @@all = []

    def initialize(item_name, company, dev)
        @item_name = item_name
        @company = company
        @dev = dev

        @@all << self

    end 

    def freebies
        Freebie.all.select do |freebie_instance|
            freebie_instance.item_name == self
            binding.pry
        end 
    end 



    #should return the Dev instance for this freebie
    def dev_instance
        self.dev_freebies.find do |freebie_instance|
            freebie_instance.dev 
        end 
    end 

    def print_details
        "#{Dev.name} owns a #{self.item_name} from #{Company.name}"
        binding.pry
    end 

    def self.all
        @@all
    end 
end
