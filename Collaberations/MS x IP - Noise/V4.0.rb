#Noise V4
#Illest Preacha
 
with_fx :reverb, room: 1 do
  live_loop :time do
    with_fx [:whammy,:echo,:vowel].choose do
      with_fx :bitcrusher, bits: rrand(0,16) do
        with_fx :slicer, phase: rrand(0,16) do
          notes = (scale :e7, :minor_pentatonic, num_octaves: 3)
          with_synth :gnoise do
            play notes.choose, attack: 2, release: 2, cutoff: 90, amp: 3,pan: 0.5
            sleep [1,2].choose
          end
        end
      end
    end
  end
 
  live_loop :noise2 do
    with_fx [:wobble,:flanger,:ixi_techno].choose, mix: 0.95, phase: 2 do
      with_fx :distortion, distort: rrand(0.2,0.7) do
        with_synth :cnoise do
          notes = (scale :e5, :aeolian, num_octaves: 3)
          play notes.choose, release: 4, cutoff: 90, amp: 3, pitch: rrand(1,12), pan: rrand(-0.5,0.5)
          sleep [1,10,5,2,3,9].choose
        end
      end
    end
  end
end
 
live_loop :noise3 do
  with_fx [:whammy,:echo,:compressor].choose do
    with_fx :bitcrusher, bits: rrand(0,16) do
      with_fx :slicer, phase: rrand(0,16) do
        notes = (scale :e3, :minor_pentatonic, num_octaves: 3)
        with_synth :bnoise do
          play notes.choose, attack: 1, release: 1, cutoff: 80, amp: dice(3) ,pan: -0.5
          sleep [4,2].choose
        end
      end
    end
  end
end