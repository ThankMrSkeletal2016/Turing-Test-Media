##Lisa Frank 420(Ronovo Remix) V2.1
#By Ronovo Ronove
##Shout out to Macintosh Plus.
##For being the gateway into one of my favorite genres!

repoLocation = #PUT GITHUB FILE PATH HERE. FOR EXAMPLE C:/Users/PC/Documents/GitHub/"
sampleLocation = repoLocation + "Turing-Test-Media/Albums/Otaku 2/Otaku 2/Samples/"
x = sampleLocation + #Diana Ross - It's Your Move sample goes here
o = sampleLocation + "otaku/more.wav"

#Rate(Duh)
rate = 0.75
#Filter Value (Low Pass)
f = 90
#Sound Level
amp = 0.5
#Sample Start Value
y = 0
#Sample Finish Value
z = 0.0773

##| Method that samples the song
##| All of the values above are used in the equation
##| tl;dr play snippet of sample at given rate with a given rate and volume
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
    in_thread do
      sample o
      sleep sample_duration(o)
    end
    sampleSongL
    
    with_fx :distortion, distort: 0.075 do
      f = 75
      amp = 4
      sampleSongH
      f = 25
      y = 0.0769
      z = 0.105
      sampleSongH
      y = 0.095
      z = 0.105
      3.times do
        sampleSongH
      end
      y = 0
      z = 0.0775
      sampleSongH
    end
    
    with_fx :reverb do
      y = 0.1565
      z = 0.2912
      sampleSongH
      y = 0.22
      z = 0.286
      sampleSongH
      with_fx :echo, phase: 3 do
        y = 0.278
        z = 0.286
        3.times do
          sampleSongH
        end
      end
    end
    
    with_fx :distortion, distort: 0.075 do
      with_fx :reverb, room: 0.5 do
        f = 110
        y = 0.7
        z = 0.5
        rate = 0.73
        sampleSongL
      end
    end
    with_fx :distortion, distort: 0.15 do
      f = 90
      amp = 1
      y = 0
      z = 0.0773
      sampleSongL
    end
  end
end