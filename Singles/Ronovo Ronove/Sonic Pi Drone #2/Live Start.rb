live_loop :bass do
  with_fx :level, amp: 1 do
    ##| with_fx :echo do
    ##|   with_fx :distortion do
    ##|     with_fx :reverb, room: 1 do
          use_synth :pluck
          play choose([:as2, :ds2, :bs2]), release: 1, sustain: 1, res: 0.5
          sleep 3
          ##| play choose([:as4, :cs3, :bs4]), release: 4, sustain: 4, res: 0.5
          ##| sleep 1
          ##| play choose([:fs4, :ds4, :as3]), release: 6, sustain: 6, res: 0.125
          ##| sleep 0.5
    ##|     end
    ##|   end
    ##| end
  end
end
