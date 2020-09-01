# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

max = Lifter.new("max", 500)
john = Lifter.new("john", 750)
jane = Lifter.new("jane", 350)

globo = Gym.new("globo gym")
average_joes = Gym.new("average joe's gym")
golds = Gym.new("golds gym")

max_mem1 = Membership.new(200, max, globo)
max_mem2 = Membership.new(50, max, average_joes)
john_mem1 = Membership.new(200, john, globo)
john_mem2 = Membership.new(50, john, average_joes)
john_mem3 = Membership.new(100, john, golds)
jane_mem1 = Membership.new(50, jane, average_joes)

binding.pry

puts "Gains!"
