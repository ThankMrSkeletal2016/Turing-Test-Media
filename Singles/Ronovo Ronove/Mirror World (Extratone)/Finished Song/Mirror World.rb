##MIRROR WORLD
##FIRST EXTRATONE SONG IN SONIC PI
##OVER 1000 BPM

##SET YOUR ROOT OR OR THE CODE WON'T WORK
samplelocation = "*ROOT*/Turing-Test-Media/Singles/Ronovo Ronove/Mirror World (Extratone)"
intro = samplelocation + "/intro.wav"
laugh = samplelocation + "/laugh.wav"

drumlocation = samplelocation + "/Industrial_Waste_I/Engage Blue - Industrial Waste I"
kick1 = drumlocation + "/170bpm_Destructo Noctavia.wav"
kick2 = drumlocation + "/170bpm_Precision Hardcore.wav"


with_fx :reverb, room: 1 do
  ##| intro
  intro intro
  
  ##| Build
  1.times do
    4.times do
      in_thread do
        slowdown laugh
      end
      kick kick1
      kick2 kick1
      kick3 kick1
      kick4 kick1
      kick4 kick2
    end
  end
  
  ##| First Blast
  125.times do
    use_bpm 1000
    kick kick1
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
    with_fx :distortion, distort: 0.7 do
      use_bpm 60
      full intro, laugh
    end
  end
  90.times do
    use_bpm 1100
    kick kick1
    kick4 kick1
    kick2 kick2
    kick3 kick1
  end
  30.times do
    use_bpm 500
    kick kick1
    kick kick2
    kick kick1
    kick kick2
    kick kick1
    kick kick1
    kick kick1
    kick kick1
  end
  
  #Second Blast
  110.times do
    use_bpm 1000
    kick kick2
  end
end
