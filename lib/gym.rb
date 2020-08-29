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

  def get_memberships
    Membership.all.select do |membership|
      membership.gym == self
    end
  end

  def get_lifters
    get_memberships.map do |membership|
      membership.lifter
    end
  end

  def get_lifter_names
    get_lifters.map do |lifter|
      lifter.name
    end
  end

  def combined_lift_of_members
    result = get_lifters.map do |lifter|
      lifter.lift_total
    end
    result.inject(0, &:+)
  end
end
