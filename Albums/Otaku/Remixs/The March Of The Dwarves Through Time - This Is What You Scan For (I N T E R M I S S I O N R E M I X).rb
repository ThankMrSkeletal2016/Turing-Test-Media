#*******
#Track :  The March Of The Dwarves Through Time
#Original Artist : Ronovo Ronove
#Album : O T A K U
#Track Number : 2
#Remix by: THIS IS WHAT YOU SCAN FOR
#*******
############Change To Your Sample Directory, or you will cause an error#########
repoLocation = "C:/Users/Pc/Documents/GitHub/Turing-Test-Media/Albums/Otaku/Otaku/Samples"
intermission = repoLocation + "/Intermission/inter.wav"
















with_fx :reverb, room: 1 do
  live_loop :vaporwave do
    rate = 0.5
    filter = 90
    amp = 2.5
    x = intermission
    sample x, amp: amp, rate: rate, lpf: filter
    sleep sample_duration(x) / rate
  end
end


