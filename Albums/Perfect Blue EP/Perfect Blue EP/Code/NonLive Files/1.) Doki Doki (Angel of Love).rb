#Doki Doki (Angel of Love)
#By Ronovo Ronove

sampleLocation = #Folder Sample Is Located
love = sampleLocation + #Ai no Tenshi - Angel of Love Sample Goes Here

r = 1.25

a = 0.5675
b = 0.5925
f = 100

define :playSample do
  sample love, rate: r, start: a, finish: b, amp: 2, hpf: f
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
      b = 0.59
      sample love, rate: r, start: a, finish: b, amp: 2
      sleep sample_duration(love, start: a, finish: b) / r - 0.8
      f = 0
      r = 1.3
      a = 0
      b = 0.32
      playSample
      
      a = 0.5675
      b = 0.5925
      playSample
      r = 1.15
      a = 0.5675
      b = 0.5925
      playSample
      sample :vinyl_rewind
      sleep sample_duration(:vinyl_rewind) - 1
      r = 0.85
      a = 0
      b = 0.095
      playSample
      sample :vinyl_scratch
      sleep sample_duration(:vinyl_scratch)
      r = 0.75
      a = 0.5675
      b = 0.5925
      3.times do
        playSample
        r = r + 0.25
      end
      
      r = 1.3
      a = 0.5675
      b = 0.805
      playSample
      a = 0.5675
      b = 0.5925
      playSample
      r = 1.25
      playSample
    end
    with_fx :distortion, distort: 0.5 do
      f = 25
      sample :vinyl_scratch
      sleep sample_duration(:vinyl_scratch)
      a = 0.8125
      b = 1
      playSample
    end
  end
end