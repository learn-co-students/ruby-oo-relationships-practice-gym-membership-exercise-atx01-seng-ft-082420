class Gym
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|m_ship| m_ship.gym == self}
  end

  def list_of_memberships
    memberships.collect {|l| l.lifter}
  end
  def lifters_name
    memberships.collect {|l| l.lifter.name}
  end

  def total_lift
    memberships.sum {|t_lift| t_lift.lifter.lift_total}
  end
end
