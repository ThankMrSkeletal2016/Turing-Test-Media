#*******
#Track : Outro
#Original Artist : Ronovo Ronove
#Album : O T A K U
#Sample Source : Clannad
#Track Number : 9
#Remix by: ?
#*******

############Change To Your Sample Directory, or you will cause an error#########
repoLocation = "C:/Users/Pc/Documents/GitHub/Turing-Test-Media/Albums/Otaku/Otaku/Samples"
out = repoLocation + "/Outro/out.wav"

with_fx :reverb, room: 0.5 do
  1.times do
    sample out, amp: 2, rate: 1, hpf: 0
    sleep sample_duration(out) / 1
  end
end


