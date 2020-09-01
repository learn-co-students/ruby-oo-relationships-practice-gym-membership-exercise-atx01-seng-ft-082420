class Lifter

  @@all = []

  attr_reader :name, :lift_total

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    self.class.all << self
  end

  def self.all
    @@all
  end
  
  def new_membership(cost, gym)
    Membership.new(cost, self, gym)
  end

  def memberships
    Membership.all.select{|membership| membership.lifter == self}
  end

  def gyms
    memberships.map{|membership| membership.gym}
  end

  def self.average_lift_total
    total = Lifter.all.sum{|l_t| l_t.lift_total}
    total / Lifter.all.count
  end

  def total_cost
    memberships.map{|membership| membership.cost}.sum
  end
end
