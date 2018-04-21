#*******
#Track :  O T A K U
#Original Artist : Ronovo Ronove
#Album : O T A K U
#Sample Source : Sailor Moon/Ford Ad
#Track Number : 8
#Remix by: ?
#*******

############Change To Your Sample Directory, or you will cause an error#########
repoLocation = "C:/Users/Pc/Documents/GitHub/Turing-Test-Media/Albums/Otaku/Otaku/Samples"
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



