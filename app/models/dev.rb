class Dev
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end


  def initialize(name)
    @name = name
  end

  def freebies
    my_stuff = Freebie.all.map do |dev_name_instance|
      if dev_name_instance.dev.name == self.name
      dev_name_instance.item_name
      # binding.pry
      # 0
      end
    end
    my_stuff.compact
  end

    def companies
      companies = Freebie.all.map do |company_instace|
        if company_instace.dev.name == self.name
          company_instace.company.name
        end
      end
      companies.compact.uniq
    end

    def received_one?(item)
      Freebie.all.find do |finder|
        if finder.item_name == item
          return true
        end
      end
      false
    end

    def give_away(dev,freebie)#unfinished confused on how to remove the object from self
      Freebie.all.
      Freebie.all.filter do |company_name|
        Freebie.new(freebie,company_name.company,dev)
        binding.pry
        0
      end
    end
  
    def self.freebie_hoarder#same problem with the company with the most amount of items given away
      Freebie.all.map do |finder|
        binding.pry
        0
      end
    end

end





# - `Dev#received_one?(item_name)`
#   - accepts an item_name (string) and returns true if any of the freebies associated with the dev has that item_name, otherwise returns false
# - `Dev#give_away(dev, freebie)`
#   - accepts a `Dev` instance and a `Freebie` instance, changes the freebie's dev to be the given dev
# - `Dev.freebie_hoarder`
#   - returns *one* dev instance for the dev who owns the most amount of freebies