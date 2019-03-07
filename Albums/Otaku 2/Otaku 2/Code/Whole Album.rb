##| ##O T A K U 2
##| ##Full Album

##| ##Tracklist
##| #1.) A L O N E
##| #2.) I make nightcore now
##| #3.) Lonely Sunset
##| #4.) Why I Stay Inside
##| #5.) No More Angels
##| #6.) Wicked Cities V2.0
##| #7.) Lisa Frank 420

##| #A L O N E
##| #by Ronovo Ronove

repoLocation = #PUT GITHUB FILE PATH HERE. FOR EXAMPLE C:/Users/PC/Documents/GitHub/"
sampleLocation = repoLocation + "Turing-Test-Media/Albums/Otaku 2/Otaku 2/Samples/"
x = sampleLocation + ##Bluew - Mr Dandy Sample goes here.
o = sampleLocation + "otaku/alone.wav"
o2 = sampleLocation + "otaku/alone2.wav"
#Rate(Duh)
rate = 0.75
#Filter Value (Low Pass)
f = 95
#Sound Level
amp = 2
#Sample Start Value
y = 0
#Sample Finish Value
z = 0.07

##| Method that samples the song
##| All of the values above are used in the equation
##| tl;dr play snippet of sample at given amp with a given rate and volume
define :sampleSongL do
  sample x, start: y, finish: z, amp: amp, rate: rate, lpf: f
  sleep sample_duration(x, start: y, finish: z) / rate
end

define :sampleSongH do
  sample x, start: y, finish: z, amp: amp, rate: rate, hpf: f
  sleep sample_duration(x, start: y, finish: z) / rate
end

with_fx :compressor do
  with_fx :reverb, room: 0.80 do
    sample o, lpf: 100
    sleep sample_duration(o) - 1.5
  end
  with_fx :reverb, room: 1 do
    sampleSongL
    f = 50
    amp = 2
    y = 0.01
    sampleSongH
    in_thread do
      sample o2, lpf: 110, amp: 2
      sleep sample_duration(o2)
    end
    f = 60
    amp = 0.5
    rate = 0.87
    sampleSongL
  end
end
sleep 2

##| ##I Make Nightcore Now
##| #By Ronovo Ronove
x = sampleLocation + #Ai no Tenshi - Angel of Love Sample Goes Here
o = sampleLocation + "otaku/idol.wav"

##| #Rate(Duh)
rate = 1.25
##| #Filter Value (Low Pass)
f = 75
##| #Sound Level
amp = 4
##| #Sample Start Value
y = 0
##| #Sample Finish Value
z = 0.09

with_fx :compressor do
  with_fx :reverb, room: 0.75 do
    sample o
    sleep sample_duration(o)
    with_fx :distortion, distort: 0.4 do
      sampleSongH
    end
    with_fx :distortion, distort: 0.25 do
      with_fx :reverb, room: 0.75 do
        f = 50
        amp = 3
        rate = 1.3
        y = 0.009
        z = 0.09
        sampleSongH
        f = 25
        rate = 1.35
        y = 0.24
        z = 0.33
        sampleSongH
        y = 0.01
        z = 0.09
        rate = 1.75
        sampleSongH
        rate = 1
        sample :vinyl_rewind
        sleep sample_duration(:vinyl_rewind)
      end
    end
    with_fx :distortion, distort: 0.1 do
      f = 100
      y = 0.0007
      z = 0.096
      rate = 0.75
      sampleSongL
      f = 90
      y = 0.009
      z = 0.096
      sampleSongL
    end
  end
end

##| #Why I Stay Inside
##| #by Ronovo Ronove
x = sampleLocation + #Miho Fujiwara - Street are Hot sample goes here
o = sampleLocation + "otaku/night.wav"
##| #Rate(Duh)
rate = 0.75
##| #Filter Value (Low Pass)
f = 85
##| #Sound Level
amp = 4
##| #Sample Start Value
y = 0
##| #Sample Finish Value
z = 0.0735

with_fx :compressor do
  with_fx :reverb, room: 0.9 do
    sample o
    sleep sample_duration(o)
    with_fx :distortion, distort: 0.2 do
      in_thread do
        3.times do
          sample :vinyl_hiss
          sleep sample_duration(:vinyl_hiss)
        end
      end
      sampleSongL
      sample :vinyl_scratch
    end
    with_fx :distortion, distort: 0.1 do
      f = 25
      y = 0.01
      z = 0.076
      sampleSongH
      f = 0
      y = 0.0761
      z = 0.105
      sampleSongH
      4.times do
        y = 0.009
        z = 0.068
        sampleSongH
        y = 0.23
        z = 0.236
        sampleSongH
      end
    end
  end
end

##| Lonely Sunset
##| #by Ronovo Ronove
x = sampleLocation + #Megazone 23 Soundtrack - Lonely Sunset Sample goes here
##| #Rate(Duh)
rate = 0.83
##| #Filter Value (High Pass)
f = 80
##| #Sound Level
amp = 5
##| #Sample Start Value
y = 0
##| #Sample Finish Value
z = 0.06

##| Method that samples the song
##| All of the values above are used in the equation
##| tl;dr play snippet of sample at given amp with a given rate and volume
define :sampleSong do
  sample x, start: y, finish: z, amp: amp, rate: rate, hpf: f
  sleep sample_duration(x, start: y, finish: z) / rate
end

with_fx :compressor do
  with_fx :reverb, room: 0.9 do
    with_fx :distortion, distort: 0.1 do
      with_fx :reverb do
        sampleSong
      end
      amp = 4
      z = 0.075
      f = 25
      sampleSong
      f = 0
      y = 0.089
      z = 0.1205
      sampleSong
      y = 0.094
      3.times do
        sampleSong
      end
      y = 0.44
      z = 0.56
      sampleSong
      f = 25
      y = 0.089
      z = 0.1215
      sampleSong
      y = 0.094
      3.times do
        f = f + 25
        sampleSong
      end
    end
  end
end

##| #No More Angels
##| #by Ronovo Ronove
x = sampleLocation + ##Ninja Senshi Tobikage - Isseikime no Angel
o = sampleLocation + "/otaku/angels.wav"
##| #Rate(Duh)
rate = 0.83
##| #Filter Value (High Pass)
f = 75
##| #Sound Level
amp = 5
##| #Sample Start Value
y = 0
##| #Sample Finish Value
z = 0.07

with_fx :compressor do
  with_fx :reverb, room: 0.9 do
    with_fx :distortion, distort: 0.1 do
      sample o
      sleep sample_duration(o)
      sampleSong
      y = 0.015
      z = 0.059
      f = 5
      sampleSong
      y = 0.031
      2.times do
        sampleSong
      end
      z = 0.069
      sampleSong
      rate = 0.75
      f = 5
      y = 0.47
      z = 0.545
      sampleSong
      rate = 0.80
      y = 0.015
      z = 0.059
      f = 25
      sampleSong
      f = 75
      y = 0.031
      f = 85
      z = 0.07
      sampleSong
    end
  end
end

sleep 2

#See NonLive Files/6.) OUTRO for the outro track.
#It is not sampled, and the functions would take up too much space here.

##Lisa Frank420(Ronovo Remix) V2.1
#By Ronovo Ronove
##Shout out to Macintosh Plus.
##For being the gateway into one of my favorite genres!

x = sampleLocation + ##Diana Ross - It's Your Move Sample Here
o = sampleLocation + "otaku/more.wav"

#Rate(Duh)
rate = 0.75
#Filter Value (Low Pass)
f = 90
#Sound Level
amp = 0.5
#Sample Start Value
y = 0
#Sample Finish Value
z = 0.0773

#I can play the last song real quick
##| Method that samples the song
##| All of the values above are used in the equation
##| tl;dr play snippet of sample at given rate with a given rate and volume
define :sampleSongL do
  sample x, start: y, finish: z, amp: amp, rate: rate, lpf: f
  sleep sample_duration(x, start: y, finish: z) / rate
end

define :sampleSongH do
  sample x, start: y, finish: z, amp: amp, rate: rate, hpf: f
  sleep sample_duration(x, start: y, finish: z) / rate
end

with_fx :compressor do
  with_fx :reverb, room: 0.9 do
    in_thread do
      sample o
      sleep sample_duration(o)
    end
    sampleSongL
    
    with_fx :distortion, distort: 0.075 do
      f = 75
      amp = 4
      sampleSongH
      f = 25
      y = 0.0769
      z = 0.105
      sampleSongH
      y = 0.095
      z = 0.105
      3.times do
        sampleSongH
      end
      y = 0
      z = 0.0775
      sampleSongH
    end
    
    with_fx :reverb do
      y = 0.1565
      z = 0.2912
      sampleSongH
      y = 0.22
      z = 0.286
      sampleSongH
      with_fx :echo, phase: 3 do
        y = 0.278
        z = 0.286
        3.times do
          sampleSongH
        end
      end
    end
    
    with_fx :distortion, distort: 0.075 do
      with_fx :reverb, room: 0.5 do
        f = 110
        y = 0.7
        z = 0.5
        rate = 0.73
        sampleSongL
      end
    end
    with_fx :distortion, distort: 0.15 do
      f = 90
      amp = 1
      y = 0
      z = 0.0773
      sampleSongL
    end
  end
end

#This is the album!
#all this code