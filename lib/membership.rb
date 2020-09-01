class Membership
  attr_reader :cost

  @@all = []
  
  def initialize(cost)
    @cost = cost
    @lifter = lifter

    @@all << self.all
  end
end
