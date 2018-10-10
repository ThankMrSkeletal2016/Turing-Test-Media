#*******
#Track : Wicked City
#Original Artist : Ronovo Ronove
#Album : O T A K U
#Sample Source : Wicked City
#Track Number : 3
#Remix by: ?
#*******

############Change To Your Sample Directory, or you will cause an error#########
repoLocation = "C:/Users/Pc/Documents/GitHub/Turing-Test-Media/Albums/Otaku/Otaku/Samples"
w1 = repoLocation + "/WickedCity/wc1.wav"
w2 = repoLocation + "/WickedCity/wc2.wav"
w3 = repoLocation + "/WickedCity/wc3.wav"

with_fx :reverb, room: 1 do
  1.times do #Next 4 are the Intro with a High Pass Filter and Volume Automation
    sample w1, amp: 3, rate: 1, hpf: 75
    sleep sample_duration(w1) / 1
  end
  1.times do
    sample w1, amp: 4, rate: 1, hpf: 50
    sleep sample_duration(w1)
  end
  1.times do
    sample w1, amp: 5, rate: 1, hpf: 25
    sleep sample_duration(w1) / 1
  end
  1.times do
    sample w1, amp: 5, rate: 1, hpf: 0
    sleep sample_duration(w1) / 1
  end
  1.times do #Main
    sample w2, amp: 5, rate: 1, hpf: 0
    sleep sample_duration(w2)
  end
  1.times do #Main w/ Bass
    sample w3, amp: 5, rate: 1, hpf: 0
    sleep sample_duration(w3) / 1
  end
  1.times do #Next 4 are the Outro, with a Low Pass Filter and Slowed Down
    sample w1, amp: 5, rate: 0.95, lpf: 100
    sleep sample_duration(w1) / 0.95
  end
  1.times do
    sample w1, amp: 4, rate: 0.90, lpf: 90
    sleep sample_duration(w1) / 0.90
  end
  1.times do 
    sample w1, amp: 3, rate: 0.85, lpf: 85
    sleep sample_duration(w1) / 0.85
  end
  1.times do 
    sample w1, amp: 2, rate: 0.80, hpf: 80
    sleep sample_duration(w1) / 0.80
  end
end
