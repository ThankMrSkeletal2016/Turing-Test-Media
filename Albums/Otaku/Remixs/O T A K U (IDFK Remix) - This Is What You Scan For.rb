#*******
#Track :  O T A K U (IDFK REMIX)
#Original Artist : Ronovo Ronove
#Album : O T A K U
#Sample Source : Otaku (1994 Documentry)
#Track Number : 2
#Remix by: THIS IS WHAT YOU SCAN FOR
#*******

##| s = 0.0988
##| f = 0.0515
############Change To Your Sample Directory, or you will cause an error#########
repoLocation = "C:/Users/Pc/Documents/GitHub/Turing-Test-Media"
oM = repoLocation + "/Singles/4-5-2018/Sample/01.wav"

r = 0.8

##| s = 0.032
##| f = 0.0988
s = 0.022
f = 0.0488

live_loop :main do
  with_fx :reverb, room: 1 do
    with_fx :pitch_shift, pitch: 10, time_dis: 0.95, window_size: 1 do
      sample oM, start: s, finish: f, amp: 1.5, rate: r, lpf: 100
      sleep sample_duration(oM, start: s, finish: f) / r
    end
  end
end
