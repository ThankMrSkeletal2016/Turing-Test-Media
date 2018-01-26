#*******
#Track : Lonely Nights
#Original Artist : Ronovo Ronove
#Album : O T A K U
#Sample Source : Bubblegum Crisis
#Track Number : 4
#Remix by: ?
#*******

############Change To Your Sample Directory, or you will cause an error#########
repoLocation = "C:/Users/MrSkeletal/Documents/GitHub/RonovoRonove/Otaku/"
ln0 = repoLocation + "/Samples/LonelyNights/ln0.wav"
ln1 = repoLocation + "/Samples/LonelyNights/ln1.wav"
ln2 = repoLocation + "/Samples/LonelyNights/ln2.wav"
ln3 = repoLocation + "/Samples/LonelyNights/ln3.wav"
ln4 = repoLocation + "/Samples/LonelyNights/ln4.wav"

with_fx :reverb, room: 0.5 do
  1.times do #Drum roll intro
    sample ln0, amp: 2, rate: 1, hpf: 25
    sleep sample_duration(ln0) / 1
  end
  1.times do #Main Sample
    sample ln1, amp: 2, rate: 1, hpf: 10
    sleep sample_duration(ln1) / 1
  end
  1.times do #Transition
    sample ln2, amp: 2, rate: 1, hpf: 0
    sleep sample_duration(ln2) / 1
  end
  2.times do #Main 2x.
    sample ln1, amp: 2, rate: 1, hpf: 0
    sleep sample_duration(ln1)
  end
  1.times do #Transition
    sample ln2, amp: 2, rate: 1, hpf: 0
    sleep sample_duration(ln2) / 1
  end
  1.times do #Solo
    sample ln4, amp: 2, rate: 1, hpf: 0
    sleep sample_duration(ln4) / 1
  end
  1.times do #Drum roll
    sample ln0, amp: 2, rate: 1, lpf: 100
    sleep sample_duration(ln0) / 1
  end
  1.times do #Main Sample
    sample ln1, amp: 2, rate: 0.95, lpf: 90
    sleep sample_duration(ln1) / 0.95
  end
  1.times do #Main Sample
    sample ln1, amp: 2, rate: 0.90, lpf: 80
    sleep sample_duration(ln1) / 0.90
  end
end
