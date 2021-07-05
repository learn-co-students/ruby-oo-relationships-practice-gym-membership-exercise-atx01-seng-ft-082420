class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @gym = gym

@@all << self.all
  end

  def self.all
    @@all
  end

end

def memberships
Membership.all.select {|membership| membership.gym == self}
end

def lifters
  self.memberships.collect {|membership| membership.lifter}
end

def lifter_names
  self.lifters.collect {|lifter| lifter.name}
end

def lift_total
  self.lifters.sum { |lifter|lifter.lift_total}
end
  
end
