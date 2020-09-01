class Gym

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name

    self.class.all << self
  end

  def self.all
    @@all
  end

  def new_membership(cost, lifter)
    Membership.new(cost, lifter, self)
  end

  def memberships
    Membership.all.select{|membership| membership.gym == self}
  end

  def lifters
    memberships.map{|membership| membership.lifter}
  end

  def lifter_names
    lifters.map{|lifter| lifter.name}
  end

  def lifter_totals
    lifters.map{|lifter| lifter.lift_total}
  end
end
