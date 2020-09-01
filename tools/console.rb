# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
twentyfour = Gym.new("24")
anytime =Gym.new("Anytime")
crunch = Gym.new("Crunch")
bally = Gym.new("Bally Total Fitness")
la = Gym.new("LA Fitness")
golds = Gym.new("Golds Gym")

greg = Lifter.new("Greg", 100)
sally = Lifter.new("Sally", 150)
jake = Lifter.new("Jake", 200)
bianca = Lifter.new("Bianca",  175)
mountain = Lifter.new("The Mountain", 800)

Membership.new(15, greg, crunch)
Membership.new(20, greg, anytime)
Membership.new(20, sally, anytime)
Membership.new(45, jake, twentyfour)
Membership.new(35, bianca, bally)
Membership.new(50, bianca, la)
Membership.new(400, mountain, golds)
Membership.new(100, mountain, twentyfour)


binding.pry
puts "Gains!"
