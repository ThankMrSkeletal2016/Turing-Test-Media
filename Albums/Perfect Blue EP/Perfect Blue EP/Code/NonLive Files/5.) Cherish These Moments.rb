#Cherish These Memories
#By Ronovo Ronove

sampleLocation = #Folder Sample Is Located
love = sampleLocation + #Perfect Blue - Cherish These Memories Sample goes here

r = 1.25

a = 0
b = 0.02
f = 100
amp = 2

define :playSample do
  sample love, rate: r, start: a, finish: b, amp: amp, hpf: f
  sleep sample_duration(love, start: a, finish: b) / r
end

with_fx :compressor do
  with_fx :reverb, room: 0.5 do
    with_fx :distortion, distort: 0.3 do
      r = 0.85
      playSample
      f = 75
      r = 1
      playSample
      f = 35
      r = 1.25
      sample love, rate: r, start: a, finish: b, amp: 2
      sleep sample_duration(love, start: a, finish: b) / r
      f = 50
      r = 1.35
      f = 0
      a = 0
      b = 0.2
      playSample
      f = 0
      a = 0.2
      b = 0.5
      playSample
      a = 0.5
      b = 0.4
      playSample
      a = 0
      b = 0.02
      playSample
      r = 1.15
      playSample
      f = 0
      r = 0.85
      a = 0
      b = 0.05
      playSample
      r = 0.75
      a = 0
      b = 0.02
      2.times do
        playSample
        r = r + 0.25
      end
      r = 1.3
      a = 0
      b = 0.1
      playSample
      f = 75
      r = 0.4
      a = 0.5925
      b = 0.5675
      playSample
      r = 1.25
      playSample
    end
    with_fx :distortion, distort: 0.5 do
      f = 50
      sample :vinyl_scratch
      sleep sample_duration(:vinyl_scratch)
      amp = 1
      a = 0.8125
      b = 0.92
      playSample
      f = 75
      sample :vinyl_scratch
      r = 0.45
      a = 0.92
      b = 1
      amp = 1
      playSample
    end
  end
end
