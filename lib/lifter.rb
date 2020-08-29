require 'pry'
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
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def gyms
    self.memberships.map do |membership|
      membership.gym
    end
  end

  def self.average_lift_total
    lift_totals = @@all.map do |lifter|
      lifter.lift_total
    end
    lift_totals.inject(0, &:+) / lift_totals.length
  end

  def cost_of_memberships
    membership_costs = self.memberships.map do |membership|
      membership.cost
    end
    membership_costs.inject(0, &:+)
  end

  def sign_new_member(gym, cost)
    Membership.new(cost, self, gym)
  end
end
