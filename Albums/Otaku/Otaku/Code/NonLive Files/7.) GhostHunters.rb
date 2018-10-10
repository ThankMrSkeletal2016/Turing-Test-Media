#*******
#Track : Ghost Hunters
#Original Artist : Ronovo Ronove
#Album : O T A K U
#Sample Source : Yu Yu Hakusho
#Track Number : 7
#Remix by: ?
#*******

############Change To Your Sample Directory, or you will cause an error#########
repoLocation = "C:/Users/Pc/Documents/GitHub/Turing-Test-Media/Albums/Otaku/Otaku/Samples"
gh0 = repoLocation + "/GhostHunter/gh0.wav"
gh1 = repoLocation + "/GhostHunter/gh1.wav"
gh2 = repoLocation + "/GhostHunter/gh2.wav"
gh3 = repoLocation + "/GhostHunter/gh3.wav"
gh4 = repoLocation + "/GhostHunter/gh4.wav"

with_fx :reverb, room: 1 do
  1.times do #Intro
    sample gh0, amp: 4, rate: 1, hpf: 25
    sleep sample_duration(gh0) / 1
  end
  2.times do #Main Sample 2x
    sample gh1, amp: 5, rate: 1, hpf: 10
    sleep sample_duration(gh1)
  end
  1.times do #Transition
    sample gh2, amp: 5, rate: 1, hpf: 0
    sleep sample_duration(gh2) / 1
  end
  1.times do #First Solo
    sample gh3, amp: 5, rate: 1, hpf: 0
    sleep sample_duration(gh3) / 1
  end
  3.times do #Main 3x.
    sample gh1, amp: 5, rate: 1, hpf: 0
    sleep sample_duration(gh1)
  end
  1.times do #Transition
    sample gh2, amp: 5, rate: 1, hpf: 0
    sleep sample_duration(gh2) / 1
  end
  1.times do #Second Solo
    sample gh4, amp: 5, rate: 1, hpf: 0
    sleep sample_duration(gh4) / 1
  end
  2.times do #Last 4 are outro
    sample gh1, amp: 5, rate: 0.95, lpf: 100
    sleep sample_duration(gh1) / 0.95
  end
  1.times do
    sample gh1, amp: 5, rate: 0.90, lpf: 90
    sleep sample_duration(gh1) / 0.90
  end
  1.times do
    sample gh1, amp: 5, rate: 0.80, lpf: 80
    sleep sample_duration(gh1) / 0.80
  end
end
