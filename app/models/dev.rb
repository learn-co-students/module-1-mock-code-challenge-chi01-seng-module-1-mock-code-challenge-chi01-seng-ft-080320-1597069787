require 'pry'

class Dev
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name

    self.class.all << self
  end

  def freebies
    # just the freebie name or object instance?
    Freebie.all.select do |individual_freebie|
      individual_freebie.dev == self 
    end
  end

  def companies
    my_companies = []
    Freebie.all.each do |individual_freebie|
      if(individual_freebie.dev == self)
        my_companies << individual_freebie.company
      end
    end
    my_companies.uniq
  end

  def recieved_one?(item_string)
    true_or_false = false
    Freebie.all.each do |individual_freebie|
      if(individual_freebie.dev == self && individual_freebie.item_name == item_string)
        true_or_false = true
      end
    end
    true_or_false
  end

  def give_away(dev, freebie)
    given_away = nil
    Freebie.all.each do |individual_freebie|
      if(individual_freebie == freebie && individual_freebie.dev == self)
        individual_freebie.dev = dev
        given_away = individual_freebie
      end
    end
    given_away
  end

  def self.freebie_hoarder
    hoarder = nil
    freebie_hash = {}
    self.all.each do |individual_dev|
      freebie_counter = 0
      Freebie.all.each do |individual_freebie|
        if(individual_freebie.dev == individual_dev)
          freebie_counter += 1
        end
      end
      freebie_hash[individual_dev.name] = freebie_counter
    end 
    most_freebies = freebie_hash.sort_by{|k,v| -v}.first.first

    self.all.find do |dev|
      dev.name == most_freebies
    end

  end





  def self.all
    @@all
  end

end
