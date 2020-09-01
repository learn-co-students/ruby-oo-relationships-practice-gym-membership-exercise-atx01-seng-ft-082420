class Membership
  attr_reader :cost, :name, :lifter, :gym

  @@all = []

  def initialize(cost, name, lifter, gym)
    @cost = cost
    @name = name
    @lifter = lifter
    @gym = gym
    
    @@all << self
  end

  def self.all
    @@all
  end

end
