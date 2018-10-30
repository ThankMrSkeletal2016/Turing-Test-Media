##End of Life
##Formally Untitled Hip Hop Beat #1
##By Ronovo Ronove
##Version 1


drums = "C:/Users/Pc/Music/Lo Fi/x.shulz lofi kit/"
kick = drums + "kicks/c.wav"
hat1 = drums + "hats/hihat6.wav"
hat2 = drums + "hats/hat 2.wav"
hat3 = drums + "hats/hihat18.wav"
hat4 = drums + "hats/openhihat3.wav"
hat5 = drums + "hats/hihat3.wav"
snare = drums + "snares/dilla snare.wav"

use_bpm 160
##Piano Volume
a = 0
##Bass Volume
b = 0
##Hat Level
x = 0
##Snare Level
y = 0
##Kick Level
z = 0

##Hat Level
live_loop :levels do
  ##Piano Volume
  a = 1
  ##Bass Volume
  b = 0
  ##Kick Level
  z = 1
  ##Snare Level
  y = 1
  ##Hat Level
  x = 1
  
  sleep 8
end

##8 Bars = 8 total sleeps
with_fx :reverb, room: 1 do
  with_fx :lpf, cutoff: (range 75,65,5).mirror.tick do
    with_fx :echo, phase: 0.2 do
      with_synth :piano do
        live_loop :piano do
          with_fx :level, amp: a do
            play :f5
            play :d4, release: 4, sustain: 4
            sleep 2
            play :a4
            sleep 2
            play :d5
            play :c4, release: 4, sustain: 4
            sleep 1
            play :c5
            sleep 3
            play :d5
            play :b3, release: 4, sustain: 4
            sleep 1
            play :a5
            sleep 3
            play :a4
            play :as3, release: 4, sustain: 4
            sleep 1
            play :g5
            sleep 3
          end
        end
      end
      live_loop :bass do
        with_fx :level, amp: b do
          synth :sine, note: :d1, sustain: 3, release: 3
          sleep 4
          synth :sine, note: :c1, sustain: 4, release: 4
          sleep 4
          synth :sine, note: :b1, sustain: 3, release: 3
          sleep 4
          synth :sine, note: :as1, sustain: 4, release: 4
          sleep 4
          
        end
      end
    end
  end
  
  live_loop :kick do
    with_fx :level, amp: z do
      sample kick
      sleep 0.5
      sample kick
      sleep 3.5
      sample kick
      sleep 0.5
      sample kick
      sleep 3.5
    end
  end
  
  ##| live_loop :snare do
  ##|   sync :kick
  ##|   with_fx :level, amp: y do
  ##|     sleep 2
  ##|     sample snare
  ##|     sleep 2.5
  ##|     sample snare
  ##|     sleep 1.5
  ##|     sample snare
  ##|     sleep 2
  ##|   end
  ##| end
  
  
  ##| live_loop :hat1 do
  ##|   with_fx :pan, pan: 0.5 do
  ##|     with_fx :level, amp: x do
  ##|       sync :kick
  ##|       sample hat1
  ##|       sleep 1
  ##|       sample hat1
  ##|       sleep 2
  ##|       sample hat1
  ##|       sleep 1
  ##|       sample hat1
  ##|       sleep 1
  ##|       sample hat1
  ##|       sleep 2
  ##|       sample hat1
  ##|       sleep 1
  ##|     end
  ##|   end
  ##| end
  
  ##| live_loop :hat2 do
  ##|   with_fx :pan, pan: -0.5 do
  ##|     with_fx :level, amp: x do
  ##|       sync :kick
  ##|       sleep 1
  ##|       sample hat2
  ##|       sleep 1
  ##|       sample hat2
  ##|       sleep 1
  ##|       sample hat2
  ##|       sleep 2
  ##|       sample hat2
  ##|       sleep 1
  ##|       sample hat2
  ##|       sleep 1
  ##|       sample hat2
  ##|       sleep 1
  ##|     end
  ##|   end
  ##| end
  
  ##|   live_loop :hat3 do
  ##|     with_fx :pan, pan: -0.75 do
  ##|       with_fx :level, amp: x do
  ##|         sync :kick
  ##|         sleep 1
  ##|         sample hat3
  ##|         sleep 4
  ##|         sample hat3
  ##|         sleep 3
  ##|       end
  ##|     end
  ##|   end
  
  ##|   live_loop :hat4 do
  ##|     with_fx :pan, pan: 0.75 do
  ##|       with_fx :level, amp: x do
  ##|         sync :kick
  ##|         sleep 2.5
  ##|         sample hat4
  ##|         sleep 5
  ##|         sample hat4
  ##|         sleep 0.5
  ##|       end
  ##|     end
  ##|   end
  
  ##|   live_loop :hat5 do
  ##|     sync :kick
  ##|     with_fx :level, amp: x do
  ##|       sample hat5
  ##|       sleep 1.5
  ##|       sample hat5
  ##|       sleep 6.5
  ##|     end
  ##| end
end