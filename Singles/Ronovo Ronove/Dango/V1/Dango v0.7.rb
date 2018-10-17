##V0.7
##INTRO : DONE
##MAIN : DONE
##OUTRO : LAST 2 SECTIONS LEFT!
##Ending2 WIP (May need to redo)

define :intro do
  play :f6
  play :f7
  sleep 0.3
  play :ds6
  play :ds7
  sleep 0.3
  play :gs6
  play :gs7
  sleep 0.6
  play :gs6
  play :gs7
  sleep 0.6
  play :as6
  play :as7
  sleep 0.6
  play :as6
  play :as7
  sleep 0.6
  play :c7
  sleep 0.6
  play :gs6
  play :gs7
  sleep 0.6
  play :ds6
  play :ds7
  sleep 0.6
  play :f6
  play :f7
  sleep 0.3
  play :ds6
  play :ds7
  sleep 0.3
  play :gs6
  play :gs7
  sleep 0.6
  play :gs6
  play :gs7
  sleep 0.6
  play :as6
  play :as7
  sleep 0.3
  play :as6
  sleep 0.3
  play :gs6, sustain: 4, release: 2
  play :gs7, sustain: 4, release: 2
  sleep 2
end

define :part1 do
  play :f4
  play :f5
  play :cs4, sustain: 4, release: 1
  sleep 0.3
  play :ds4
  play :ds5
  sleep 0.3
  play :gs5
  play :gs4
  sleep 0.6
  play :gs5
  play :gs4
  play :f4, sustain: 4, release: 1
  sleep 0.6
  play :as5
  play :as4
  sleep 0.6
  play :as5
  play :as4
  play :c4, sustain: 4, release: 1
  sleep 0.6
  play :c5
  play :c6
  sleep 0.6
  play :gs4
  play :gs5
  play :f4, sustain: 4, release: 1
  sleep 0.6
  play :ds4
  play :ds5
  sleep 0.6
end

define :part1var1 do
  play :f5
  play :f4
  play :cs4, sustain: 4, release: 1
  sleep 0.3
  play :ds5
  play :ds4
  sleep 0.3
  play :gs5
  play :gs4
  sleep 0.6
  play :gs5
  play :gs4
  play :f4, sustain: 4, release: 1
  sleep 0.6
  play :as5
  play :as4
  sleep 0.6
  play :as5
  play :as4
  play :c4, sustain: 4, release: 1
  sleep 0.6
  play :c6
  play :c5
  sleep 0.6
  play :as5, sustain: 4, release: 4
  play :as4, sustain: 4, release: 4
  play :g4, sustain: 4, release: 4
  sleep 1.2
end

define :part1var2 do
  play :f5
  play :f4
  play :cs4, sustain: 4, release: 1
  sleep 0.3
  play :ds4
  play :ds5
  sleep 0.3
  play :gs4
  play :gs5
  sleep 0.6
  play :gs4
  play :gs5
  play :f4, sustain: 4, release: 1
  sleep 0.6
  play :as4
  play :as5
  sleep 0.6
  play :gs5, sustain: 8, release: 8
  play :gs4, sustain: 2, release: 2
  play :gs3
  sleep 0.6
  play :ds4
  sleep 0.6
  play :gs4, sustain: 4, release: 2
  sleep 1
end

define :part2 do
  play :cs6
  play :fs4, sustain: 4, release: 2
  sleep 0.3
  play :c6
  sleep 0.3
  play :gs5
  play :cs4, sustain: 2, release: 2
  sleep 0.3
  play :f5, sustain: 2, release: 2
  sleep 0.3
  play :as4, sustain: 4, release: 2
  sleep 0.3
  play :gs5
  sleep 0.3
  play :as5
  sleep 0.3
  play :f5
  sleep 0.3
  play :gs5
  play :gs4, sustain: 2, release: 2
  play :gs3
  sleep 0.6
  play :ds5
  sleep 0.6
  play :f5
  play :ds4, sustain: 2, release: 2
  sleep 0.6
  play :gs5
  sleep 0.6
end

define :part2var do
  play :cs6
  play :fs4, sustain: 4, release: 2
  play :cs4, sustain: 2, release: 2
  sleep 0.3
  play :c6
  sleep 0.3
  play :gs5
  sleep 0.3
  play :f5
  sleep 0.3
  play :gs4
  sleep 0.3
  play :gs5, sustain: 4, release: 2
  sleep 0.3
  play :as5
  sleep 0.3
  play :f5
  sleep 0.3
  play :gs5
  play :gs4, sustain: 6, release: 4
  sleep 0.6
  play :ds4
  sleep 0.6
  play :f4
  sleep 0.6
  play :gs4
  sleep 0.6
end

define :transition do
  play :f4, sustain: 8, release: 8
  play :ds5, sustain: 4, release: 4
  sleep 0.6
  play :gs5
  sleep 0.3
  play :cs5, sustain: 4, release: 4
  sleep 0.6
  play :cs5
  sleep 0.3
  play :ds5
  sleep 0.3
  play :cs5
  sleep 0.3
  play :ds5
  sleep 0.3
  play :cs5
  sleep 0.3
  play :as4
  play :as3
  play :g2, sustain: 6, release: 6
  sleep 0.3
  play :ds5
  play :ds4
  sleep 0.3
  play :gs5
  play :gs4
  sleep 0.3
  play :as5
  play :as4
  sleep 0.3
end

define :main do
  play :as5, sustain: 2, release: 2
  play :as4, sustain: 2, release: 2
  play :cs3, sustain: 6, release: 6
  play :cs2, sustain: 6, release: 6
  sleep 0.6
  play :gs5
  play :gs4
  sleep 0.3
  play :f5, sustain: 2, release: 2
  play :f4, sustain: 2, release: 2
  sleep 0.3
  play :cs4, sustain: 2, release: 2
  sleep 0.3
  play :gs5
  play :gs4
  play :gs3, sustain: 2, release: 2
  sleep 0.3
  play :as5
  play :as4
  sleep 0.3
  play :c5
  play :c6
  sleep 0.3
  play :ds6
  play :ds5
  play :cs3, sustain: 6, release: 6
  play :cs2, sustain: 6, release: 6
  sleep 0.3
  play :as5
  play :as4
  sleep 0.3
  play :c6, sustain: 2, release: 2
  play :c5, sustain: 2, release: 2
  sleep 0.6
  play :gs5
  play :gs4
  sleep 0.3
  play :ds5
  play :ds4
  sleep 0.3
  play :gs5
  play :gs4
  play :gs3, sustain: 2, release: 2
  sleep 0.3
  play :as5
  play :as4
  sleep 0.3
end

define :main2 do
  play :as5, sustain: 2, release: 2
  play :as4, sustain: 2, release: 2
  play :cs3, sustain: 6, release: 6
  play :cs2, sustain: 6, release: 6
  sleep 0.6
  play :gs5
  play :gs4
  sleep 0.3
  play :f5, sustain: 2, release: 2
  play :f4, sustain: 2, release: 2
  sleep 0.3
  play :cs4, sustain: 2, release: 2
  sleep 0.3
  play :as5
  play :as4
  sleep 0.3
  play :gs5
  play :gs4
  play :gs3, sustain: 2, release: 2
  sleep 0.3
  play :ds5
  play :ds6
  sleep 0.3
  play :c6
  play :c5
  play :f3, sustain: 6, release: 6
  play :f2, sustain: 6, release: 6
  sleep 0.9
  play :as4
  play :as3
  play :g3, sustain: 2, release: 2
  play :g2, sustain: 2, release: 2
  sleep 0.3
  play :d4
  play :d5
  sleep 0.6
  play :gs5
  play :gs4
  sleep 0.3
  play :ds5
  play :ds4
  sleep 0.3
  play :gs5
  play :gs4
  play :gs3, sustain: 2, release: 2
  sleep 0.3
  play :as5
  play :as4
  sleep 0.3
end

define :main3 do
  play :as5, sustain: 2, release: 2
  play :as4, sustain: 2, release: 2
  play :cs3, sustain: 2, release: 2
  play :cs2, sustain: 2, release: 2
  sleep 0.6
  play :gs5
  play :gs4
  play :gs3, sustain: 2, release: 2
  sleep 0.3
  play :f5, sustain: 2, release: 2
  play :f4, sustain: 2, release: 2
  sleep 0.3
  play :cs4, sustain: 2, release: 2
  sleep 0.3
  play :gs5
  play :gs4
  sleep 0.3
  play :as5
  play :as4
  play :gs3, sustain: 2, release: 2
  sleep 0.3
  play :c5
  play :c6
  sleep 0.3
  play :ds6
  play :ds5
  play :c3, sustain: 2, release: 2
  sleep 0.3
  play :as5
  play :as4
  sleep 0.3
  play :c6, sustain: 2, release: 2
  play :c5, sustain: 2, release: 2
  play :gs3, sustain: 2, release: 2
  sleep 0.6
  play :gs5, sustain: 2, release: 2
  play :gs4, sustain: 2, release: 2
  play :ds4, sustain: 2, release: 2
  sleep 0.6
  play :g5, sustain: 2, release: 2
  play :g4, sustain: 2, release: 2
  play :gs3, sustain: 2, release: 2
  sleep 0.6
end

define :main4 do
  play :f5, sustain: 2, release: 2
  play :f4, sustain: 2, release: 2
  play :as2
  sleep 0.3
  play :f3
  sleep 0.3
  play :as3, sustain: 2, release: 2
  sleep 0.3
  play :f5
  play :f4
  sleep 0.3
  play :g5, sustain: 2, release: 2
  play :g4, sustain: 2, release: 2
  play :ds3
  sleep 0.3
  play :as3
  sleep 0.3
  play :ds4, sustain: 2, release: 2
  play :gs4
  play :gs5
  sleep 0.3
  play :g5, sustain: 2, release: 2
  play :g4, sustain: 2, release: 2
  sleep 0.3
  play :gs2, sustain: 2, release: 2
  sleep 0.3
  play :gs5, sustain: 3, release: 3
  play :gs4, sustain: 3, release: 3
  sleep 0.3
  play :ds4
  play :c4
  sleep 0.3
  play :gs3
  sleep 0.3
  play :as3
  play :as4
  play :g2, sustain: 2, release: 2
  sleep 0.3
  play :ds4
  play :ds5
  sleep 0.3
  play :ds4
  play :gs4
  play :gs5
  sleep 0.3
  play :g4
  play :as4
  play :as5
  sleep 0.3
end

define :ending do
  play :as5, sustain: 2, release: 2
  play :as4, sustain: 2, release: 2
  play :cs3, sustain: 6, release: 6
  play :cs2, sustain: 6, release: 6
  sleep 0.6
  play :gs5
  play :gs4
  play :gs3, sustain: 2, release: 2
  sleep 0.3
  play :f5, sustain: 2, release: 2
  play :f4, sustain: 2, release: 2
  sleep 0.3
  play :cs4, sustain: 2, release: 2
  play :gs3, sustain: 2, release: 2
  sleep 0.3
  play :as5
  play :as4
  sleep 0.3
  play :gs5
  play :gs4
  play :gs3, sustain: 2, release: 2
  sleep 0.3
  play :ds5
  play :ds6
  sleep 0.3
  play :c6, sustain: 4, release: 4
  play :c5, sustain: 4, release: 4
  play :f3, sustain: 2, release: 2
  sleep 0.6
  play :c4, sustain: 2, release: 2
  play :gs4, sustain: 2, release: 2
  sleep 0.6
  play :ds4, sustain: 2, release: 2
  play :g4, sustain: 2, release: 2
  play :as4
  play :as5
  sleep 0.3
  play :ds6
  play :ds5
  sleep 0.3
  play :gs6
  play :gs5
  play :ds4, sustain: 2, release: 2
  play :as3, sustain: 2, release: 2
  sleep 0.6
end

####WIP
define :ending2 do
  play :as6, sustain: 2, release: 2
  play :as5, sustain: 2, release: 2
  play :cs3, sustain: 2, release: 2
  play :cs2, sustain: 2, release: 2
  sleep 0.6
  play :gs5
  play :gs4
  play :gs3, sustain: 2, release: 2
  sleep 0.3
  play :f5, sustain: 2, release: 2
  play :f4, sustain: 2, release: 2
  sleep 0.3
  play :cs4, sustain: 2, release: 2
  play :gs3, sustain: 2, release: 2
  sleep 0.3
  play :as4
  play :as5
  sleep 0.3
  play :gs4
  play :gs5
  play :gs3, sustain: 2, release: 2
  sleep 0.3
  play :ds4
  play :ds5
  sleep 0.3
  play :c6, sustain: 2, release: 2
  play :c5, sustain: 2, release: 2
  play :f4, sustain: 2, release: 2
  sleep 0.6
  play :c4, sustain: 2, release: 2
  play :gs4, sustain: 2, release: 2
  sleep 0.6
  play :as5
  play :as4
  play :g4, sustain: 2, release: 2
  play :ds4, sustain: 2, release: 2
  sleep 0.3
  play :ds5
  play :ds6
  sleep 0.3
  play :gs6
  play :gs5
  play :ds4, sustain: 2, release: 2
  play :as3, sustain: 2, release: 2
  sleep 0.3
  play :as5
  sleep 0.3
end

with_fx :reverb, room: 1 do
  with_synth :piano do
    ##| INTRO SECTION
    with_fx :lpf, cutoff: 100 do
      intro
    end
    part1
    part1var1
    part1
    part1var2
    part2
    part2var
    part2
    transition
    main
    main2
    main3
    main4
    main
    ending
    #ending2 WIP
  end
end