#*******
#Track :  O T A K U
#Original Artist : Ronovo Ronove
#Album : O T A K U
#Sample Source : Otaku (1994 Documentry)
#Track Number : 2
#Remix by: ?
#*******

############Change To Your Sample Directory, or you will cause an error#########
repoLocation = "C:/Users/Pc/Documents/GitHub/Turing-Test-Media/Albums/Otaku/Otaku/Samples"
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


