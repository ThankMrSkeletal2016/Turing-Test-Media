#Get Down!
#By Ronovo Ronove

sampleLocation = #Folder Sample Is Located
love = sampleLocation + #Perfect Blue - Alone But At Ease Sample Goes Here

r = 1.25

a = 0.5675
b = 0.5825
f = 100
amp = 2

define :playSample do
  sample love, rate: r, start: a, finish: b, amp: amp, hpf: f
  sleep sample_duration(love, start: a, finish: b) / r
end

with_fx :compressor do
  with_fx :reverb, room: 0.5 do
    with_fx :distortion, distort: 0.3 do
      sample :vinyl_hiss, amp: 2
      sleep sample_duration(:vinyl_hiss)
      r = 0.85
      playSample
      sample :vinyl_scratch
      sleep sample_duration(:vinyl_scratch)
      f = 75
      r = 1
      playSample
      sample :vinyl_scratch
      sleep sample_duration(:vinyl_scratch)
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
      a = 0.14
      b = 0.15
      playSample
      r = 1.15
      f = 50
      playSample
      sample :vinyl_rewind
      sleep sample_duration(:vinyl_rewind) - 1
      r = 0.85
      a = 0
      b = 0.095
      playSample
      sample :vinyl_scratch
      sleep sample_duration(:vinyl_scratch)
      r = 1
      a = 0.14
      b = 0.15
      1.times do
        playSample
        r = r + 0.25
      end
      sample :vinyl_scratch
      sleep sample_duration(:vinyl_scratch)
    end
  end
  with_fx :reverb, room: 0.8 do
    with_fx :distortion, distort: 0.5 do
      f = 25
      r = 1.3
      sample :vinyl_scratch
      sleep sample_duration(:vinyl_scratch)
      a = 0.01
      b = 0.065
      playSample
      sample :vinyl_scratch
      sleep sample_duration(:vinyl_scratch)
      in_thread do
        12.times do
          sample :vinyl_hiss, amp: 3
          sleep sample_duration(:vinyl_hiss)
        end
      end
      amp = 1.75
      sleep 2
      f = 75
      r = 1.25
      a = 0.75
      b = 0.9
      playSample
      f = 90
      r = 1.25
      a = 0.9
      b = 0.95
      playSample
      amp = 1.5
      f = 100
      r = 1.25
      a = 0.95
      b = 0.8
      playSample
    end
  end
  ##| end
end