class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def self.names
    arr =[]
    self.all.select do |lifter| 
      # binding.pry   
      arr << lifter.name
    end
    arr
  end

  def self.average_gainz
     sum = self.all.sum {|lifter| lifter.lift_total}
     sum/(self.all.length)
  end 

  def gyms 
   gym =[] 
   Membership.all.select do |member|
      if member.lifter == self
        gym << member.gym.name
      end
   end
  gym
  end

  def cost(gym)
    Membership.all.select do | member |
      if member.lifter == self && member.gym == gym
        return member.cost
      end
    end
  end

end


# **Lifter**
#   - Get a list of all lifters
#   - Get a list of all the memberships that a specific lifter has
#   - Get a list of all the gyms that a specific lifter has memberships to
#   - Get the average lift total of all lifters
#   - Get the total cost of a specific lifter's gym memberships
#   - Given a gym and a membership cost, sign a specific lifter up for a new gym