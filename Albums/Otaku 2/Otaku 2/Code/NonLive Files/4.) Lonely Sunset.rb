##| Lonely Sunset
##| #by Ronovo Ronove
repoLocation = #PUT GITHUB FILE PATH HERE. FOR EXAMPLE C:/Users/PC/Documents/GitHub/"
sampleLocation = repoLocation + "Turing-Test-Media/Albums/Otaku 2/Otaku 2/Samples/"
x = sampleLocation + #Megazone 23 Soundtrack - Lonely Sunset Sample goes here
##| #Rate(Duh)
rate = 0.83
##| #Filter Value (High Pass)
f = 80
##| #Sound Level
amp = 5
##| #Sample Start Value
y = 0
##| #Sample Finish Value
z = 0.06

##| Method that samples the song
##| All of the values above are used in the equation
##| tl;dr play snippet of sample at given amp with a given rate and volume
define :sampleSong do
  sample x, start: y, finish: z, amp: amp, rate: rate, hpf: f
  sleep sample_duration(x, start: y, finish: z) / rate
end

with_fx :compressor do
  with_fx :reverb, room: 0.9 do
    with_fx :distortion, distort: 0.1 do
      with_fx :reverb do
        sampleSong
      end
      amp = 4
      z = 0.075
      f = 25
      sampleSong
      f = 0
      y = 0.089
      z = 0.1205
      sampleSong
      y = 0.094
      3.times do
        sampleSong
      end
      y = 0.44
      z = 0.56
      sampleSong
      f = 25
      y = 0.089
      z = 0.1215
      sampleSong
      y = 0.094
      3.times do
        f = f + 25
        sampleSong
      end
    end
  end
end