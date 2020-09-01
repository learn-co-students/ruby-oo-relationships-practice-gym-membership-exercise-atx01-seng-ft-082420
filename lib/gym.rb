class Gym
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.gym_names
    arr=[]
    self.all.select {|gym| arr << gym.name}
    return arr
  end

  def memberships
    arr=[]
    Membership.all.select do |member| 
      if member.gym == self
        arr << member
      end
    end
    return arr
  end

  def members 
    arr = []
    Membership.all.select do |member|
      if member.gym == self
        arr << member.lifter.name
      end
    end
    return arr
  end

  def total_lift
    sum = 0
    Membership.all.each do |member|
      #binding.pry
      if member.gym == self
        sum += member.lifter.lift_total
      end
    end
    sum
  end
end
