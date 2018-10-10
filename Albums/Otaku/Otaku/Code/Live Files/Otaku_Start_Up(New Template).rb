############Change To Your Sample Directory, or you will cause an error#########
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













with_fx :reverb, room: 0.5 do
  live_loop :intro do
    rate = 1
    f = 0
    amp = 2
    x = intro
    sample x, amp: amp, rate: rate, hpf: f
    sleep sample_duration(x) / rate
  end
end


