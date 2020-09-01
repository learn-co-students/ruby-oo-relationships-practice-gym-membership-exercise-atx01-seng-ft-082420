class Gym
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    self.class.all << self 
  end

  def list_memberships
    Membership.all.select do |m|
      m.gym == self 
    end 
  end 

  def list_lifters 
    self.list_memberships.collect do |g|
      g.lifter 
    end 
  end 

  def list_names
    self.list_lifters.collect do |n|
      n.name 
    end 
  end 

  def total_lift 
    lift = self.list_lifters.collect do |l| 
       l.lift_total 
    end 
    lift.sum 
   end 

  def self.all 
    @@all 
  end 
end
