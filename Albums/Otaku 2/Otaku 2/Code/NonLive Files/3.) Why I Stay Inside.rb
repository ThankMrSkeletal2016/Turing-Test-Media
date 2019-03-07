##| #Why I Stay Inside
##| #by Ronovo Ronove
repoLocation = #PUT GITHUB FILE PATH HERE. FOR EXAMPLE C:/Users/PC/Documents/GitHub/"
sampleLocation = repoLocation + "Turing-Test-Media/Albums/Otaku 2/Otaku 2/Samples/"
x = sampleLocation + #Miho Fujiwara - Street are Hot sample goes here
o = sampleLocation + "otaku/night.wav"
##| #Rate(Duh)
rate = 0.75
##| #Filter Value (Low Pass)
f = 85
##| #Sound Level
amp = 4
##| #Sample Start Value
y = 0
##| #Sample Finish Value
z = 0.0735

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
  with_fx :reverb, room: 0.9 do
    ##| sample o
    ##| sleep sample_duration(o)
    with_fx :distortion, distort: 0.2 do
      in_thread do
        3.times do
          sample :vinyl_hiss
          sleep sample_duration(:vinyl_hiss)
        end
      end
      sampleSongL
      sample :vinyl_scratch
    end
    with_fx :distortion, distort: 0.1 do
      f = 25
      y = 0.01
      z = 0.076
      sampleSongH
      f = 0
      y = 0.0761
      z = 0.105
      sampleSongH
      4.times do
        y = 0.009
        z = 0.068
        sampleSongH
        y = 0.23
        z = 0.236
        sampleSongH
      end
    end
  end
end