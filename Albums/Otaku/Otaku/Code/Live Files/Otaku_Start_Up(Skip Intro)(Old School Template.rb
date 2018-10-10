repoLocation = "C:/Users/Pc/Documents/GitHub/Turing-Test-Media/Albums/Otaku/Otaku/Samples"
intro = repoLocation + "/Intro/intro.wav"
oM = repoLocation + "/Otaku/o0.wav"
o = repoLocation + "/Otaku/o2.wav"
wc = repoLocation + "/WickedCity/wc1.wav"
ln = repoLocation + "/LonelyNights/ln0.wav"#2 amp Max
intermission = repoLocation + "/Intermission/inter.wav"
p = repoLocation + "/Professional/p0.wav"#2 on 4, 2.5 normal
gh = repoLocation + "/GhostHunter/gh0.wav"
t = repoLocation + "/2Late2Cry/t1.wav"
outro = repoLocation + "/Outro/out.wav"

#Hey Everyone!
#Welcome to my extended Vaporwave Set!
#Setlist:
#1.) Intro
#2.) Otaku
#3.) Wicked City
#4.) Lonely Nights
#5.) Intermission
#6.) The Professional
#7.) Ghost Hunter
#8.) Too Late To Cry (Ford Loves Anime EP Version)
#9.) Outro

#Enjoy The Show!

with_fx :reverb, room: 0.5 do
  live_loop :intro do
    sample oM, amp: 2, rate: 1, hpf: 20
    sample o, amp: 3, rate: 1, hpf: 0
    sleep sample_duration(o) / 1
  end
end


