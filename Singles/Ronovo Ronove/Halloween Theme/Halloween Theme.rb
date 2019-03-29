use_bpm 132
 
#Arpeggios and Note Methods
define :intro do
  introNotes = [:cs6,:fs5,:fs5,:cs6,:fs5,:fs5,:cs6,:fs5, :d6, :fs5]
  x = 0
  #Sleep 5 total
  10.times do
    play introNotes[x]
    x = x + 1
    sleep 0.5
  end
end
 
define :introdownstep do
  introNotes = [:c6,:f5,:f5,:c6,:f5,:f5,:c6,:f5, :cs6, :f5]
  x = 0
  #Sleep 5 total
  10.times do
    play introNotes[x]
    x = x + 1
    sleep 0.5
  end
end
 
define :introdownstep2 do
  introNotes = [:b5,:e5,:e5,:b5,:e5,:e5,:b5,:e5, :c6, :e5]
  x = 0
  #Sleep 5 total
  10.times do
    play introNotes[x]
    x = x + 1
    sleep 0.5
  end
end
 
define :introdownstep3 do
  introNotes = [:as5,:ds5,:ds5,:as5,:ds5,:ds5,:as5,:ds5, :b5, :ds5]
  x = 0
  #Sleep 5 total
  10.times do
    play introNotes[x]
    x = x + 1
    sleep 0.5
  end
end
 
define :introfulldownstep do
  introNotes = [:fs5,:b4,:b4,:fs5,:b4,:b4,:fs5,:b4,:g5,:b4]
  x = 0
  #Sleep 5 total
  10.times do
    play introNotes[x]
    x = x + 1
    sleep 0.5
  end
end
 
define :windStart do
  play :fs2, sustain: 7, release: 5
  sleep 5
  play :a2, sustain: 7, release: 5
  sleep 5
  play :as2, sustain: 7, release: 5
  play :f2, sustain: 7, release: 5
  sleep 10
end
 
define :introdark do
  play :fs2, release: 4
  sleep 5
  play :a2, release: 4
  sleep 5
  play :as2, sustain: 4, release: 4
  play :f2, sustain: 4,release: 4
  sleep 10
end
 
define :firstlow do
  play :fs2, sustain: 8, release: 8, amp: 2
  sleep 5
  play :a2, sustain: 8, release: 8, amp: 2
  sleep 5
  play :as2, sustain: 10, release: 8, amp: 1.5
  play :f2, sustain: 10, release: 8, amp: 1.5
  sleep 10
end
 
define :firstlowbass do
  play :fs3, attack: 0, release: 6, amp: 1
  sleep 5
  play :a3, attack: 0, release: 6, amp: 1
  sleep 5
  play :as3, attack: 0, release: 8, amp: 0.7
  play :f3, attack: 0, release: 8, amp: 0.7
  sleep 10
end
 
define :secondlow do
  play :fs2, sustain: 8, release: 8
  sleep 5
  play :a2, sustain: 8, release: 8
  sleep 5
  play :as2, sustain: 8, release: 8
  play :f2, sustain: 8, release: 8
  sleep 10
end
 
define :secondlowbass do
  play :fs2, attack: 0, release: 6, amp: 1
  sleep 5
  play :a2, attack: 0, release: 6, amp: 1
  sleep 5
  play :as2, attack: 0, release: 8, amp: 0.7
  play :f2, attack: 0, release: 8, amp: 0.7
  sleep 10
end
 
define :mainlow do
  play :b2, sustain: 8, release: 8, amp: 1
  play :b3, sustain: 16, release: 16, amp: 2
  sleep 5
  play :d2, sustain: 8, release: 8
  sleep 5
  play :e2, sustain: 8, release: 8
  sleep 5
  play :fs2, sustain: 8, release: 8
  sleep 5
end
 
define :mainlowbass do
  play :b3, attack: 0, release: 28, amp: 0.7
  sleep 5
  play :d2, attack: 0, release: 5, amp: 0.8
  sleep 5
  play :e2, attack: 0, release: 5, amp: 0.8
  sleep 5
  play :fs2, attack: 0, release: 5, amp: 0.8
  sleep 5
end
 
 
define :mainlowx do
  play :b4, sustain: 16, release: 16, amp: 2
  sleep 5
  play :b5, sustain: 16, release: 16
  sleep 5
  play :d4, sustain: 8, release: 8
  sleep 5
  play :fs4, sustain: 8, release: 8
  sleep 5
  play :b5, sustain: 8, release: 8
  sleep 5
  play :e5, sustain: 8, release: 8
  sleep 5
  play :fs5, sustain: 8, release: 8
  sleep 5
end
 
define :mainlowbassx do
  play :b3, attack: 0, release: 28, amp: 0.7
  sleep 5
  play :b3, attack: 0, release: 8, amp: 0.7
  sleep 5
  play :d3, attack: 0, release: 5, amp: 0.7
  sleep 5
  play :fs4, attack: 0, release: 5, amp: 0.8
  sleep 5
  play :b5, attack: 0, release: 5, amp: 0.8
  sleep 5
  play :e5, attack: 0, release: 5, amp: 0.8
  sleep 5
end
 
 
 
#Song Structure Methods
define :songStart do
  3.times do
    in_thread do
      with_synth :dark_ambience do
        windStart
      end
    end
    with_synth :piano do
      intro
    end
  end
  4.times do
    in_thread do
      with_synth :dark_ambience do
        introdark
      end
    end
    with_synth :piano do
      intro
    end
  end
end
 
 
define :lowNoteStart do
  2.times do
    in_thread do
      with_synth :piano do
        2.times do
          intro
        end
        2.times do
          introdownstep
        end
      end
    end
    in_thread do
      with_synth :piano do
        firstlow
      end
    end
    with_synth :growl do
      firstlowbass
    end
  end
end
 
define :downstep do
  2.times do
    in_thread do
      with_synth :piano do
        2.times do
          introdownstep2
        end
        2.times do
          introdownstep3
        end
      end
    end
    in_thread do
      with_synth :piano do
        secondlow
      end
    end
    with_synth :growl do
      firstlowbass
    end
  end
end
 
define :fulldownstep do
  in_thread do
    with_synth :piano do
      9.times do
        introfulldownstep
      end
    end
  end
  2.times do
    in_thread do
      with_synth :piano do
        mainlow
      end
    end
    with_synth :growl do
      mainlowbass
    end
  end
end
 
define :mainfull do
  in_thread do
    with_synth :piano do
      10.times do
        introfulldownstep
      end
    end
  end
  in_thread do
    with_synth :piano do
      in_thread do
        mainlow
      end
      sleep 5
      mainlowx
    end
  end
  with_synth :growl do
    mainlowbass2
    mainlowbassx
  end
end
 
 
with_fx :compressor do
  with_fx :reverb, room: 0.9 do
    songStart
    lowNoteStart
    downstep
    fulldownstep
    sleep 5
    songStart
    lowNoteStart
    downstep
    mainfull
    sleep 5
    with_synth :piano do
      4.times do
        intro
      end
    end
  end
end