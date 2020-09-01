# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
g1 = Gym.new("Globo Gym")
g2 = Gym.new("Average Joe's")
g3 = Gym.new("Terry Crews' Muscle Palace")
l1 = Lifter.new("Blazer", 250)
l2 = Lifter.new("Patches O'Hoolihan", 35)
l3 = Lifter.new("Terry Crews", 350)
m1 = Membership.new(l1, g1, 60)
m2 = Membership.new(l2, g2, 10)
m3 = Membership.new(l3, g3, 5000)
m4 = Membership.new(l3, g1, 60)




binding.pry

puts "Gains!"
