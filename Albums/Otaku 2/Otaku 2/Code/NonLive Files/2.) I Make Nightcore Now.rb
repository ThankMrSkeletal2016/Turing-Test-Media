
##| ##I Make Nightcore Now
##| #By Ronovo Ronove
repoLocation = #PUT GITHUB FILE PATH HERE. FOR EXAMPLE C:/Users/PC/Documents/GitHub/"
sampleLocation = repoLocation + "Turing-Test-Media/Albums/Otaku 2/Otaku 2/Samples/"
x = sampleLocation + #Ai no Tenshi - Angel of Love Sample Goes Here
o = sampleLocation + "otaku/idol.wav"

##| #Rate(Duh)
rate = 1.25
##| #Filter Value (Low Pass)
f = 75
##| #Sound Level
amp = 4
##| #Sample Start Value
y = 0
##| #Sample Finish Value
z = 0.09

define :sampleSongL do
  sample x, start: y, finish: z, amp: amp, rate: rate, lpf: f
  sleep sample_duration(x, start: y, finish: z) / rate
end

define :sampleSongH do
  sample x, start: y, finish: z, amp: amp, rate: rate, hpf: f
  sleep sample_duration(x, start: y, finish: z) / rate
end

with_fx :compressor do
  with_fx :reverb, room: 0.75 do
    ##| sample o
    ##| sleep sample_duration(o)
    with_fx :distortion, distort: 0.4 do
      sampleSongH
    end
    with_fx :distortion, distort: 0.25 do
      with_fx :reverb, room: 0.75 do
        f = 50
        amp = 3
        rate = 1.3
        y = 0.009
        z = 0.09
        sampleSongH
        f = 25
        rate = 1.35
        y = 0.24
        z = 0.33
        sampleSongH
        y = 0.01
        z = 0.09
        rate = 1.75
        sampleSongH
        rate = 1
        sample :vinyl_rewind
        sleep sample_duration(:vinyl_rewind)
      end
    end
    with_fx :distortion, distort: 0.1 do
      f = 100
      y = 0.0007
      z = 0.096
      rate = 0.75
      sampleSongL
      f = 90
      y = 0.009
      z = 0.096
      sampleSongL
    end
  end
end
