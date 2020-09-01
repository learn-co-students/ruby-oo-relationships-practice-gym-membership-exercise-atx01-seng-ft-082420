class Lifter
  attr_reader :name, :lift_total
  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    self.class.all << self 
  end

  def list_memberships
    Membership.all.select do |m|
      m.lifter == self 
    end 
  end 

  def list_gyms 
    self.list_memberships.collect do |g|
      g.gym 
    end 
  end 

  def self.average_lift 
    lift = self.all.sum do |lt|
      lt.lift_total 
    end 
    lift / self.all.count 
  end  

  def total_cost 
   cost = self.list_memberships.collect do |c| 
      c.cost 
   end 
   cost.sum 
  end 

  def new_membership(gym, cost)
    Membership.new(self, gym, cost)
  end 

  def self.all 
    @@all 
  end 

end
