class Lifter
  attr_reader :name, :lift_total
  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    self.class.all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|membership| membership.lifter == self}
  end

  def gyms
    memberships.collect {|gyms| gyms.gym.name}
  end

  def self.avg_lift
    total = Lifter.all.sum {|t_lift| t_lift.lift_total}
    total / Lifter.all.count
  end

  def total_cost
    memberships.sum {|t_cost| t_cost.cost}
  end

  def new_membership(cost,gym)
    Membership.new(cost, self, gym)
  end
end
