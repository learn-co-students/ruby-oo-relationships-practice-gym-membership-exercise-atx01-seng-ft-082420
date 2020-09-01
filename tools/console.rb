# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
jake = Lifter.new("Jake", 920)
frank = Lifter.new("Frank", 1000)
steven = Lifter.new("steven", 750)

g1 = Gym.new("Golds")
g2 = Gym.new("24hr fitness")
g3 = Gym.new("Ufc gym")

m1 = Membership.new(29.99, jake, g3)
m2 = Membership.new(29.99, jake, g1)
m3 = Membership.new(39.99, frank, g3)
m4 = Membership.new(29.99, steven, g2)

binding.pry

puts "Gains!"
