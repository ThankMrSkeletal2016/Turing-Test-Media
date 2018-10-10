live_loop :main do
  
  with_fx :distortion do
    with_fx :bitcrusher, sample_rate: 1000 do
      with_fx :reverb, room: 1 do
        with_fx :echo do
          use_synth :bnoise
          play choose(scale(:c5, :minor_pentatonic)), amp: 0.1, release: 4, cutoff: 170
          sleep 3
        end
      end
    end
  end
end

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
  end
end