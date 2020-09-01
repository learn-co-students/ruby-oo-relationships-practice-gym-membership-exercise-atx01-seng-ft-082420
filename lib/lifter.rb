class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total=0)
    @name = name
    @lift_total = lift_total

    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |m|
      m.lifter == self
    end
  end

  def gym_memberships
    self.memberships.collect do |memberships|
      memberships.gym
    end
  end

  def self.lift_average
    total_lift = self.all.sum {|lifter| lifter.lift_total}
    total_lift /= self.all.length
  end

  def total_cost
    self.memberships.sum do |memberships|
      memberships.cost
    end
  end

  def sign_up(cost, gym, mem_name)
    Membership.new(cost, mem_name, self, gym)
  end

end
