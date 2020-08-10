# `Dev#initialize(name)`
# x should initialize with a name (string)
# x`Dev#name`
# - should return the name of the dev
# - `Dev.all`
# - Returns an array of all Dev instances


class Dev
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self
    self.all
  end

end
