#Seasons Change
#By Ronovo Ronove and This Is What You Scan For

sampleLocation = #Folder Sample Is Located
love = sampleLocation + #Perfect Blue - 10 Season Sample Here
r = 1.25

a = 0
b = 0.02
f = 100

define :playSample do
  sample love, rate: r, start: a, finish: b, amp: 1.5, hpf: f
  sleep sample_duration(love, start: a, finish: b) / r
end

with_fx :compressor do
  with_fx :reverb, room: 0.5 do
    with_fx :distortion, distort: 0.3 do
      r = 0.85
      playSample
      f = 75
      r = 1
      playSample
      f = 35
      r = 1.25
      sample love, rate: r, start: a, finish: b, amp: 2
      sleep sample_duration(love, start: a, finish: b) / r
      f = 0
      r = 1.35
      f = 0
      a = 0
      b = 0.4
      playSample
      a = 0.4
      b = 0.3
      playSample
      a = 0
      b = 0.02
      playSample
      r = 1.15
      playSample
      f = 0
      r = 0.75
      a = 0
      b = 0.05
      playSample
      sample :vinyl_rewind
      sleep sample_duration(:vinyl_rewind) - 1
      r = 0.5
      a = 0
      b = 0.02
      2.times do
        playSample
        r = r + 0.25
      end
      r = 1.3
      a = 0
      b = 0.1
      playSample
      f = 75
      r = 0.25
      a = 0.5925
      b = 0.5675
      playSample
      r = 1.25
      playSample
    end
    with_fx :distortion, distort: 0.5 do
      f = 25
      sample :vinyl_scratch
      sleep sample_duration(:vinyl_scratch)
      a = 0.8125
      b = 1
      playSample
    end
  end
  ##| end
end
#Thank you for watching!
#Message me with feedback, however you watch this <3








##| ##I Make Nightcore Now
##| #By Ronovo Ronove

##| sampleLocation = "C:/Users/Pc/Desktop/VND/"
##| x = sampleLocation + "angel of love.wav"
##| #Cut this intro noise by a bit
##| o = sampleLocation + "otaku/idol.wav"

##| ##| Rate(Duh)
##| rate = 1.25
##| ##| Filter Value (Low Pass)
##| f = 75
##| ##| Sound Level
##| amp = 4
##| ##| Sample Start Value
##| y = 0
##| ##| Sample Finish Value
##| z = 0.09

##| ##| Method that samples the song
##| ##| All of the values above are used in the equation
##| ##| tl;dr play snippet of sample at given rate with a given rate and volume
##| define :sampleSongL do
##|   sample x, start: y, finish: z, amp: amp, rate: rate, lpf: f
##|   sleep sample_duration(x, start: y, finish: z) / rate
##| end

##| define :sampleSongH do
##|   sample x, start: y, finish: z, amp: amp, rate: rate, hpf: f
##|   sleep sample_duration(x, start: y, finish: z) / rate
##| end

##| with_fx :compressor do
##|   with_fx :reverb, room: 0.75 do
##|     sample o
##|     sleep sample_duration(o)
##|     with_fx :distortion, distort: 0.4 do
##|       sampleSongH
##|     end
##|     with_fx :distortion, distort: 0.25 do
##|       with_fx :reverb, room: 0.75 do
##|         f = 50
##|         amp = 3
##|         rate = 1.3
##|         y = 0.009
##|         z = 0.09
##|         sampleSongH
##|         f = 25
##|         rate = 1.35
##|         y = 0.24
##|         z = 0.33
##|         sampleSongH
##|         y = 0.01
##|         z = 0.09
##|         rate = 1.75
##|         sampleSongH
##|         rate = 1

##|       end
##|     end
##|     with_fx :distortion, distort: 0.1 do
##|       #It's Supposed to sound like that
##|       f = 100
##|       y = 0.0007
##|       z = 0.096
##|       rate = 0.75
##|       sampleSongL
##|       f = 90
##|       y = 0.009
##|       z = 0.096
##|       sampleSongL
##|     end
##|   end
##| end
