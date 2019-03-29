gitLocation = #Github Repo Location
  #EXAMPLE:"C:/Users/Pc/Documents/GitHub/"
  sampleLocation = gitLocation + "Turing-Test-Media/Albums/Weatherwave EP/Samples/"
x = sampleLocation + "movie.wav"
tv = sampleLocation + "TV On.wav"

y = 0.002
z = 0.0064
rate = 0.88
amp = 3
f = 100

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

define :sampleSong do
  sample x, start: y, finish: z, amp: amp, rate: rate
  sleep sample_duration(x, start: y, finish: z) / rate
end

with_fx :distortion, distort: 0.4 do
  with_fx :compressor do
    with_fx :reverb, room: 1 do
      y = 0.065
      z = 0.075
      4.times do
        sampleSongH
        f = f - 25
      end
      rate = 0.80
      y = 0.075
      y = 0.198
      z = 0.2
      sampleSongH
      sleep 1
      y = 0.199
      z = 0.2
      f = 110
      rate = 0.88
      sampleSongL
      y = 0.065
      z = 0.075
      3.times do
        sampleSongL
        f = f - 5
        rate = rate + 0.25
        amp = amp - 0.5
      end
    end
    with_fx :reverb, room: 0.8 do
      x = tv
      y = 0.72
      z = 1
      amp = 3
      rate = 0.75
      f = 75
      sampleSongH
    end
  end
end



