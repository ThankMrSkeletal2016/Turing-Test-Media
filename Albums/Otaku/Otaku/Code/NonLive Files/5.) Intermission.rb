#*******
#Track : Intermission
#Original Artist : Ronovo Ronove
#Album : O T A K U
#Sample Source : Random Mecha I will Fill In Later
#Track Number : 5
#Remix by: ?
#*******

############Change To Your Sample Directory, or you will cause an error#########
repoLocation = "C:/Users/MrSkeletal/Documents/GitHub"
inter = repoLocation + "/RonovoRonove/Otaku/Samples/Intermission/inter.wav"

with_fx :reverb, room: 0.5 do
  1.times do
    sample inter, amp: 2, rate: 1, hpf: 20
    sleep sample_duration(inter) / 1
  end
end


