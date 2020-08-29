require_relative '../config/environment.rb'

devin = Lifter.new('Devin', 205)
jeff = Lifter.new('Jeff', 240)
max = Lifter.new('Max', 165)

gym_one = Gym.new('Gym One')
gym_two = Gym.new('Gym Two')
gym_three = Gym.new('Gym Three')

membership_one = Membership.new(45, devin, gym_one)
membership_one = Membership.new(35, devin, gym_two)
membership_one = Membership.new(55, jeff, gym_three)
membership_one = Membership.new(60, max, gym_three)

binding.pry

puts "Gains!"
