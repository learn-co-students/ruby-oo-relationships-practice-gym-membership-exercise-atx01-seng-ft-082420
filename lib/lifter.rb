class Lifter
  attr_reader :name, :lift_total
@@all = []


def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    @@all << self.all
  end

def self.all
  @@all
  end

  def gyms
    
    self.memberships.collect do | membership |
      membership.gym
    end
end
             
def self.average_gains

  sum = self.all.sum{|lifter| lifter.lift_total}
lift_total = self.all.count
sum / total_count
end

def total_cost

  cost = self.memberships.sum do |membership|
  membership.cost
end

new_member(gym, cost)
Membership.new(gym, self, cost)
end


end
