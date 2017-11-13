require './theory.rb'
#
# create doc that can be processed by node to create midi
key = "Am" # G for major, Gm for G minor, G#m, G#, etc
progression1 = "i ii iii iv v vi vii" #TODO: case sensitive
progression2 = "i-7 ii-7 iii-7 iv-7 v-7 vi-7 vii-7" #TODO: case insensitive

puts Theory.new.progression(progression1, Theory.new.scale(key))
puts Theory.new.progression(progression2, Theory.new.scale(key))

#for generator, specify how many segments to generate
#other segments will have a probability that something is in common and to what degree/how dynamic, keep in balance
#each degree should have probability of starting and following each other
#how much to normalize, 0-100 0 is regular, 100 is as much notes in common to root as possible on a chord by chord basis

#generate in format transferable to midi node

#(-5, -aug, -dim, -min, -maj, sus2, -sus4) (-7, -6, -9, -add9)  (Bass Note:) (-1-11)

# https://www.justinguitar.com/en/IM-136-BuildingMelodicPatterns.php + my own patterns, and ones form fave songs

