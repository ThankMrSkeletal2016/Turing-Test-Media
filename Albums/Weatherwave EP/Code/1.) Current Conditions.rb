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