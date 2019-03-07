##| #A L O N E
##| #by Ronovo Ronove
repoLocation = #PUT GITHUB FILE PATH HERE. FOR EXAMPLE C:/Users/PC/Documents/GitHub/"
sampleLocation = repoLocation + "Turing-Test-Media/Albums/Otaku 2/Otaku 2/Samples/"
x = sampleLocation + ##Bluew - Mr Dandy Sample goes here.x = sampleLocation + "dandy.wav"
o = sampleLocation + "otaku/alone.wav"
o2 = sampleLocation + "otaku/alone2.wav"
#Rate(Duh)
rate = 0.75
#Filter Value (Low Pass)
f = 95
#Sound Level
amp = 2
#Sample Start Value
y = 0
#Sample Finish Value
z = 0.07

##| Method that samples the song
##| All of the values above are used in the equation
##| tl;dr play snippet of sample at given amp with a given rate and volume
define :sampleSongL do
  sample x, start: y, finish: z, amp: amp, rate: rate, lpf: f
  sleep sample_duration(x, start: y, finish: z) / rate
end

define :sampleSongH do
  sample x, start: y, finish: z, amp: amp, rate: rate, hpf: f
  sleep sample_duration(x, start: y, finish: z) / rate
end

with_fx :compressor do
  with_fx :reverb, room: 0.80 do
    ##| sample o, lpf: 100
    ##| sleep sample_duration(o) - 1.5
  end
  with_fx :reverb, room: 1 do
    sampleSongL
    f = 50
    amp = 2
    y = 0.01
    sampleSongH
    in_thread do
      sample o2, lpf: 110, amp: 2
      sleep sample_duration(o2)
    end
    f = 60
    amp = 0.5
    rate = 0.87
    sampleSongL
  end
end
sleep 2