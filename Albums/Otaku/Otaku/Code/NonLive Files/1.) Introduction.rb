#*******
#Track : Introduction
#Original Artist : Ronovo Ronove
#Album : O T A K U
#Sample Source : City Hunter
#Track Number : 1
#Remix by: ?
#*******

############Change To Your Sample Directory, or you will cause an error#########
repoLocation = "C:/Users/Pc/Documents/GitHub/Turing-Test-Media/Albums/Otaku/Otaku/Samples"
intro = repoLocation + "/Samples/Intro/intro.wav"

with_fx :reverb, room: 0.5 do
  1.times do
    sample intro, amp: 2, rate: 1, hpf: 0
    sleep sample_duration(intro) / 1
  end
end


