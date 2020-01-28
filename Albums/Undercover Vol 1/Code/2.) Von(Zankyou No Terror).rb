#Von from Zankyou No Terror
#Music from a Cold Land.
#I love this song and anime so much.
#I also decided to do an easy one after that crazy Saw one.
#Enjoy <3

#Only 200 something lines. Not bad at all.  I could cut down
#By using a variable for bpm instead of loops, but :shrug:

define :parseChord do |notes, n, s, t|
  x = 0
  t.times do
    play notes[x], sustain: n, release: n
    x = x + 1
  end
  sleep s
end

#new Method I created today!
#allows me to play with the velocity of the chords.
define :parseChordVel do |notes, n, s, t,v|
  x = 0
  t.times do
    play notes[x], sustain: n, release: n, vel: v
    x = x + 1
  end
  sleep s
end

define :parseOffset do |notes, n, s, t, o|
  x = 0
  t.times do
    play notes[x], sustain: n, release: n
    x = x + 1
    sleep o
    s = s - o
  end
  sleep s
end

define :randomVelocity do |v, a, b|
  v = rrand(a,b)
end
#####
#Intro Methods
#####
define :introLH1 do
  listOfNotes = [:b2,:gs2,:b3,:gs2]
  x = 0
  v = 0
  4.times do
    v = randomVelocity v, 0.21, 0.22
    in_thread do
      with_synth :growl do
        play listOfNotes[x], sustain: 6, release: 6, amp: 0.05, vel: v
      end
    end
    
    play listOfNotes[x], sustain: 32, release: 32, vel: v
    x = x + 1
    sleep 8
  end
end

define :introLH2 do
  listOfNotes = [:b2,:gs2,:b3,:gs2]
  x = 0
  v = 0
  4.times do
    v = randomVelocity v, 0.21, 0.22
    play listOfNotes[x], sustain: 32, release: 32, vel: v
    x = x + 1
    sleep 8
  end
end

define :introRH1 do
  listOfNotes = [:ds5,:e4].ring
  v = 0
  2.times do
    x = 0
    9.times do
      v = randomVelocity v, 0.18, 0.195
      play listOfNotes[x], vel: v, sustain: 2, release: 2
      if(x == 3) or (x == 5)
        sleep 0.5
      else
        sleep 1
      end
      x = x + 1
    end
  end
end

define :introRH2 do
  x = 0
  sleep 1.5
  play :e5
  sleep 7
  play :cs5
  sleep 1.5
  play :ds5
  sleep 6
  play :as5
  sleep 1
  play :b5
  sleep 6.5
  play :gs5
  sleep 1.5
  play :as5
end

define :intro do
  with_bpm 88 do
    play :b4, sustain: 4, release: 4
    sleep 1.25
    play :cs5, sustain: 4, release: 4
    sleep 2
    in_thread do
      2.times do
        introRH1
      end
    end
    introLH1
  end
  with_bpm 91 do
    in_thread do
      in_thread do
        introRH2
      end
      2.times do
        introRH1
      end
    end
    introLH1
  end
  with_bpm 94 do
    in_thread do
      in_thread do
        introRH2
      end
      2.times do
        introRH1
      end
    end
    introLH1
  end
  with_bpm 97 do
    in_thread do
      introRH2
    end
    in_thread do
      introLH2
    end
    introLH1
  end
  with_bpm 105 do
    in_thread do
      in_thread do
        introRH2
      end
      2.times do
        introRH1
      end
    end
    introLH2
  end
  with_bpm 97 do
    in_thread do
      introRH2
    end
    in_thread do
      introLH2
    end
    introLH1
  end
  v = 0
  v = randomVelocity v, 0.21, 0.22
  in_thread do
    with_synth :growl do
      play :b2, sustain: 6, release: 6, amp: 0.05, vel: v
    end
  end
  
  play :b2, sustain: 32, release: 32, vel: v
end


with_synth :piano do
  with_fx :lpf, cutoff: 75 do
    with_fx :reverb, room: 0.97 do
      intro
    end
  end
end