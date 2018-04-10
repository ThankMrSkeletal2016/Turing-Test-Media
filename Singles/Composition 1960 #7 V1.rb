#Composition 1960 #7 V1.1
#Composed by LA Monte Young
#Arranged and Performed by Ronovo

#This composition is made by
#"A b3 and a f#4"
#"To be held for a long time"

#More Info Here
#https://en.wikipedia.org/wiki/Compositions_1960##7

with_fx :reverb, room: 0.9 do
  with_synth :dark_ambience do
    with_fx :ixi_techno, phase_offset: 0.5, phase: 50 do
      play :b3, amp: 1, attack: 25, release: 1000, pan: -0.75
      play :fs4, amp: 1, attack: 25, release: 1000, pan: 0.75
    end
  end
end