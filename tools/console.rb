# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

stronks = Gym.new("Stronks Gym")
golds = Gym.new("Gold's Gym")
sonics = Gym.new("Sonic's Drive - Thru")
upscale = Gym.new("Upscale Gym - Think Expensive! ;)")

john = Lifter.new("John Conetree", 30)
mcgraw = Lifter.new("McGraw the Crime Dog", 400)
don = Lifter.new("Don Corleone", 80)
link = Lifter.new("Link Zelda", 150)
mario = Lifter.new("Marlo... Mario", 1000)

bronze = Membership.new(20, "Stronk Bronze", don, stronks)
sliver = Membership.new(35, "Stronk Silver", link, stronks)
gold = Membership.new(60, "Get Stronk Bro", mcgraw, stronks)
basic = Membership.new(30, "You Basic", john, golds)
premium = Membership.new(70, "Premo Supremo", mario, golds)
hotdog = Membership.new(5, "Hotdog Meal", john, sonics)
burger = Membership.new(8, "Hamburger Meal", don, sonics)
foot_long = Membership.new(9, "12-in Hotdog Meal", mario, sonics)
posh = Membership.new(100, "Posh Member", link, upscale)
ritzy = Membership.new(250, "Ritzy Mitzy", mcgraw, upscale)
gatsby = Membership.new(1000, "Great Gatsby", mario, upscale)

binding.pry

puts "Gains!"
