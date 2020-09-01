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

  def memberships
    Membership.all.select do |m|
      m.gym == self
    end
  end

  def members
    self.memberships.collect do |mem|
      mem.lifter
    end
  end

  def member_names
    self.members.collect do |mn|
      mn.name
    end
  end

  def lift_total
    self.memberships.sum do |mem|
      mem.lifter.lift_total
    end
  end

end
