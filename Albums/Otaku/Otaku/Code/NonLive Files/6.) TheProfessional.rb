#*******
#Track : The Professional
#Original Artist : Ronovo Ronove
#Album : O T A K U
#Sample Source : Golgo 13
#Track Number : 6
#Remix by: ?
#*******

############Change To Your Sample Directory, or you will cause an error#########
repoLocation = "C:/Users/Pc/Documents/GitHub/Turing-Test-Media/Albums/Otaku/Otaku/Samples"
p0 = repoLocation + "/Professional/p0.wav"
p1 = repoLocation + "/Professional/p1.wav"
p2 = repoLocation + "/Professional/p2.wav"
p3 = repoLocation + "/Professional/p3.wav"
p4 = repoLocation + "/Professional/p4.wav"

with_fx :reverb, room: 0.5 do
  1.times do #Drum roll intro
    sample p0, amp: 2.5, rate: 1, hpf: 25
    sleep sample_duration(p0) / 1
  end
  2.times do #Main Sample 2x
    sample p1, amp: 2.5, rate: 1, hpf: 10
    sleep sample_duration(p1)
  end
  1.times do #Transition
    sample p2, amp: 2.5, rate: 1, hpf: 0
    sleep sample_duration(p2) / 1
  end
  1.times do #First Solo
    sample p3, amp: 2.5, rate: 1, hpf: 0
    sleep sample_duration(p3) / 1
  end
  3.times do #Main 3x.
    sample p1, amp: 2.5, rate: 1, hpf: 0
    sleep sample_duration(p1)
  end
  1.times do #Transition
    sample p2, amp: 2.5, rate: 1, hpf: 0
    sleep sample_duration(p2) / 1
  end
  1.times do #Second Solo and Outro
    sample p4, amp: 2, rate: 1, hpf: 0
    sleep sample_duration(p4) / 1
  end
end
