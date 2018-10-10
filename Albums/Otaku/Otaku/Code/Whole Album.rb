#*******
#Track : Whole Album
#Original Artist : Ronovo Ronove
#Album : O T A K U
#Total Tracks : 9
#Remix by: ?
#*******

############Change To Your Sample Directory, or you will cause an error#########
repoLocation = "C:/Users/Pc/Documents/GitHub/Turing-Test-Media/Albums/Otaku/Otaku/Samples"
intro = repoLocation + "/Intro/intro.wav"
#Introduction
with_fx :reverb, room: 0.5 do
  1.times do
    sample intro, amp: 2, rate: 1, hpf: 0
    sleep sample_duration(intro) / 1
  end
end
#Otaku
oM = repoLocation + "/Otaku/o0.wav"
o2 = repoLocation + "/Otaku/o2.wav"
o1 = repoLocation + "/Otaku/o1.wav"

with_fx :reverb, room: 0.5 do
  1.times do
    sample oM, amp: 1.75, rate: 1, hpf: 20
    sample o2, amp: 2, rate: 1, hpf: 0
    sleep sample_duration(o2) / 1
  end
  1.times do
    sample o1, amp: 3, rate: 1, hpf: 0
    sleep sample_duration(o1) / 1
  end
end
#Wicked City
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
#Lonely Nights
ln0 = repoLocation + "/LonelyNights/ln0.wav"
ln1 = repoLocation + "/LonelyNights/ln1.wav"
ln2 = repoLocation + "/LonelyNights/ln2.wav"
ln3 = repoLocation + "/LonelyNights/ln3.wav"
ln4 = repoLocation + "/LonelyNights/ln4.wav"

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
    sample ln2, amp: 2, rate: 1, hpf: 10
    sleep sample_duration(ln2) / 1
  end
  2.times do #Main 2x.
    sample ln1, amp: 2, rate: 1, hpf: 10
    sleep sample_duration(ln1)
  end
  1.times do #Transition
    sample ln2, amp: 2, rate: 1, hpf: 10
    sleep sample_duration(ln2) / 1
  end
  1.times do #Solo
    sample ln4, amp: 2, rate: 1, hpf: 10
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
#Intermission
#2 Minute Break Loop
#Stretch Out For A Bit!
inter = repoLocation + "/Intermission/inter.wav"

with_fx :reverb, room: 0.5 do
  1.times do
    sample inter, amp: 2, rate: 1, hpf: 20
    sleep sample_duration(inter) / 1
  end
end
#The Professional
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
#Ghost Hunters
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
#Too Late To Cry (Ford Loves Anime EP Version)
t1 = repoLocation + "/2Late2Cry/t1.wav"
t2 = repoLocation + "/2Late2Cry/t2.wav"

with_fx :reverb, room: 0.5 do
  1.times do
    sample t1, amp: 2, rate: 1, lpf: 90
    sleep sample_duration(t1) / 1
  end
  1.times do
    sample t2, amp: 2, rate: 1, lpf: 90
    sleep sample_duration(t2) / 1
  end
end
#Outro
out = repoLocation + "/Outro/out.wav"

with_fx :reverb, room: 0.5 do
  1.times do
    sample out, amp: 2, rate: 1, hpf: 0
    sleep sample_duration(out) / 1
  end
end