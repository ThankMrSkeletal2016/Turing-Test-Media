live_loop :bass do
  ##with_fx :echo do
  with_fx :level, amp: 1 do
    ##with_fx :bitcrusher, bits: 128 do
    ##with_fx :reverb, room: 0.25 do
    ## with_fx :distortion do
    use_synth :prophet
    play choose([:b1, :d1, :a2]), release: 1, sustain: 1, res: 0.9
    #play choose([:e2, :c2, :b1]), release: 2, sustain: 2, res: 0, amp: 0.25
    sleep 3
    ##| play choose([:e2, :c2, :b1]), release: 2, sustain: 2, res: 0
    ##| sleep 2
    ##end
    ##end
    ##end
    #end
  end
end