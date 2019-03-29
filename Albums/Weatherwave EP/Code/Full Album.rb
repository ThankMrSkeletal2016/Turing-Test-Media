sampleLocation = "C:/Users/PC/Music/weather/"
xo = sampleLocation + "song one.wav"
tv = sampleLocation + "TV On.wav"
x = tv
#TV Parameters
y = 0.1
z = 0.4
amp = 3
rate = 0.75
f = 75

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
  with_fx :distortion do
    with_fx :reverb, room: 0.8 do
      sampleSongH
    end
  end
  with_fx :reverb, room: 1 do
    with_fx :distortion, distort: 0.4 do
      x = xo
      y = 0
      z = 0.179
      rate = 0.6
      amp = 1.5
      f = 50
      sampleSongH
      amp = 2
      y = 0.179
      z = 0.2875
      f = 25
      3.times do
        sampleSongH
      end
      y = 0.2875
      z = 0.39
      sampleSongH
      rate = 0.75
      amp = 1.5
      y = 0.39
      z = 0.41
      f = 110
      sampleSongL
      y = 0.179
      z = 0.2875
      rate = 0.6
      sampleSongL
    end
    with_fx :distortion, distort: 0.2 do
      4.times do
        sampleSongL
        amp = amp - 0.25
        f = f - 10
      end
    end
  end
end

sampleLocation = "C:/Users/PC/Music/weather/"
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

sampleLocation = "C:/Users/PC/Music/weather/"
x = sampleLocation + "movie.wav"

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



