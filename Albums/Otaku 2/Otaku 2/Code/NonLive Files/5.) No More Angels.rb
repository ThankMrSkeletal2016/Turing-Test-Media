##| #No More Angels
##| #by Ronovo Ronove
repoLocation = #PUT GITHUB FILE PATH HERE. FOR EXAMPLE C:/Users/PC/Documents/GitHub/"
sampleLocation = repoLocation + "Turing-Test-Media/Albums/Otaku 2/Otaku 2/Samples/"
x = sampleLocation + #Ninja Senshi Tobikage - Isseikime no Angel Sample Goes Here
o = "C:/Users/PC/Desktop/VND/otaku/angels.wav"
##| #Rate(Duh)
rate = 0.83
##| #Filter Value (High Pass)
f = 75
##| #Sound Level
amp = 5
##| #Sample Start Value
y = 0
##| #Sample Finish Value
z = 0.07

define :sampleSong do
  sample x, start: y, finish: z, amp: amp, rate: rate, hpf: f
  sleep sample_duration(x, start: y, finish: z) / rate
end

with_fx :compressor do
  with_fx :reverb, room: 0.9 do
    with_fx :distortion, distort: 0.1 do
      sample o
      sleep sample_duration(o)
      sampleSong
      y = 0.015
      z = 0.059
      f = 5
      sampleSong
      y = 0.031
      2.times do
        sampleSong
      end
      z = 0.069
      sampleSong
      rate = 0.75
      f = 5
      y = 0.47
      z = 0.545
      sampleSong
      rate = 0.80
      y = 0.015
      z = 0.059
      f = 25
      sampleSong
      f = 75
      y = 0.031
      f = 85
      z = 0.07
      sampleSong
    end
  end
end

sleep 2