# Hip Hop Beat
# Original Mehackit 2016
# http://sonic-pi.mehackit.org/exercises/en/11-templates/05-hip-hop-beat.html
# Living Breathing Trap Remix by Ronovo Ronove

with_bpm 66 do
  with_fx :reverb do
    live_loop :beat do
      sample :bd_ada, rate: 1, amp: 4
      sleep 1
      sample :elec_hi_snare, amp: 1
      sleep 1
      sample :bd_ada, rate: 1, amp: 4
      sleep 0.5
      sample :bd_ada, rate: 1, amp: 4
      sleep 0.5
      sample :elec_hi_snare, amp: 1, pan: 1
      sleep 0.25
      sample :elec_hi_snare, amp: 1, pan: 0
      sleep 0.5
      sample :elec_hi_snare, amp: 1, pan: -1
      sleep 0.25
    end
    
    live_loop :breath do
      sample :loop_breakbeat, beat_stretch: 16
      sleep 4
    end
    
    live_loop :hihat do
      16.times do
        sample :drum_cymbal_pedal, start: 0.05, finish: 0.4, rate: 3, amp: 0.5 + rrand(-0.1, 0.1), pan: rrand(1,0)
        sleep 0.125
      end
      4.times do
        sample :drum_cymbal_pedal, start: 0.05, finish: 0.6, rate: 3, amp: 0.5 + rrand(-0.1, 0.1), pan: rrand(1,-1)
        sleep 0.25
      end
      16.times do
        sample :drum_cymbal_pedal, start: 0.1, finish: 0.3, rate: 3, amp: 0.5 + rrand(-0.1, 0.1), pan: rrand(0,-1)
        sleep 0.0625
      end
      
    end
    
    live_loop :synth do
      with_fx :distortion, distort: 0.9 do
        
        with_synth :tb303 do
          n = (ring :e1, :a2, :c3, :b3).tick
          play n, release: 1, cutoff: 100, res: 0.8, wave: 0, amp: 0.03
          sleep 1
        end
      end
    end
  end
end