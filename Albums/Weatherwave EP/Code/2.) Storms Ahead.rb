gitLocation = #Github Repo Location
#EXAMPLE:"C:/Users/Pc/Documents/GitHub/"
sampleLocation = gitLocation + "Turing-Test-Media/Albums/Weatherwave EP/Samples/"
x = sampleLocation + "movie.wav"

y = 0.002
z = 0.0064
rate = 1.5
amp = 2.5
f = 100

##| ##| ##| Method that samples the song
##| ##| ##| All of the values above are used in the equation
##| ##| ##| tl;dr play snippet of sample at given rate with a given rate and volume
define :sampleSongL do
  sample x, start: y, finish: z, amp: amp, rate: rate, lpf: f
  sleep sample_duration(x, start: y, finish: z) / rate
end

define :sampleSongH do
  sample x, start: y, finish: z, amp: amp, rate: rate, hpf: f
  sleep sample_duration(x, start: y, finish: z) / rate
end

define :sampleSong do
  sample x, start: y, finish: z, amp: amp, rate: rate
  sleep sample_duration(x, start: y, finish: z) / rate
end

with_fx :compressor do
  with_fx :reverb, room: 0.9 do
    4.times do
      sampleSongH
      rate = rate - 0.05
      f = f - 25
    end
    f = 25
    rate = 1.25
    z = 0.0095
    sampleSongH
    with_fx :echo, phase: 1.25 do
      2.times do
        rate = rate - 0.25
        sampleSongH
      end
    end
    with_fx :ixi_techno, phase: 8, cutoff_min: 90 do
      with_fx :whammy do
        a = 1.5
        f = 100
        z = 0.075
        sampleSongL
      end
    end
  end
end