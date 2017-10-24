require './theory.rb'
#
# create doc that can be processed by node to create midi
key = "Am" # G for major, Gm for G minor, G#m, G#, etc
progression1 = "i ii iii iv v vi vii" #case independent
progression2 = "i-7 ii-7 iii-7 iv-7 v-7 vi-7 vii-7" #case independent

puts Theory.new.progression(progression1, Theory.new.scale(key))
puts Theory.new.progression(progression2, Theory.new.scale(key))

#for generator, specify how many segments to generate
#other segments will have a probability that something is in common and to what degree/how dynamic, keep in balance
#each degree should have probability of starting and following each other

#TODO: scale getter lib to return array.. based on formula WWHWWHW, etc
#TODO: reimplement lib to get chords for scale and progression,
#how much to normalize, 0-100 0 is regular, 100 is as much notes in common to root as possible on a chord by chord basis
