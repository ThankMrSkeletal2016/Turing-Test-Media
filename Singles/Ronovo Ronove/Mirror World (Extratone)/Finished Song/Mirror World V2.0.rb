##MIRROR WORLD V2.0
##FIRST EXTRATONE SONG IN SONIC PI
##OVER 1000 BPM

##SET YOUR ROOT OR OR THE CODE WON'T WORK
samplelocation = "C:/Users/Pc/Documents/Github/Turing-Test-Media/Singles/WIP-Snippet/Ghost Stories EP(Extratone-Speedcore)/Intro"
intro = samplelocation + "/intro.wav"
music = samplelocation + "/intro loop.wav"

extratonedrums = samplelocation + "/industrial"
kick1 = extratonedrums + "/170bpm_Destructo Noctavia.wav"
kick2 = extratonedrums + "/170bpm_Precision Hardcore.wav"
kick3 = extratonedrums + "/170bpm_Future Imperfect.wav"

with_fx :reverb, room: 1 do
  with_fx :distortion, distort: 0.8 do
    ##| Intro
    intro intro
  end
  
  ##| Build
  1.times do
    4.times do
      in_thread do
        with_fx :distortion, distort: 0.2 do
          slowdown laugh
        end
      end
      with_fx :distortion, distort: 0.5 do
        kick kick1
        kick2 kick1
        kick3 kick1
        kick4 kick1
        kick4 kick2
      end
    end
  end
  
  ##| First Blast
  with_fx :hpf, cutoff: 20 do
    125.times do
      use_bpm 1000 if one_in(1)
      use_bpm 900 if one_in(2)
      use_bpm 1100 if one_in(3)
      kick kick1
    end
  end
  
  ##| Transtion
  25.times do
    use_bpm 1000
    kick2 kick1
    kick4 kick2
  end
  sleep 15
  50.times do
    use_bpm 1200
    kick kick1
    kick3 kick2
  end
  sleep 10
  
  #Verse with intro echoed over
  in_thread do
    with_fx :lpf, cutoff: 120 do
      use_bpm 60
      full intro, laugh
    end
  end
  with_fx :level, amp: 0.8 do
    110.times do
      use_bpm 1100
      kick kick1
      kick4 kick1
      kick2 kick2
      kick3 kick1
    end
    25.times do
      use_bpm 500
      kick kick1
      kick kick2
      kick kick1
      kick kick2
      kick kick1
      kick kick1 if one_in(3)
      kick kick1
      kick kick1
    end
  end
  
  with_fx :hpf, cutoff: 20 do
    #Second Blast
    110.times do
      use_bpm 1000 if one_in(1)
      use_bpm 1500 if one_in(2)
      kick kick1
    end
    50.times do
      use_bpm 1000
      kick3 kick3
    end
  end
end
