#The Nightmare You Can Never Escape
#By This Is What You Scan For

sampleLocation = #Folder Sample Is Located
x = sampleLocation + #Perfect Blue - Nightmare sample goes here
d = sampleLocation + #Perfect Blue - Virtua Mima sample goes here
#Timing
#y = start
#z = end
y = 0
z = 1
#Rate
rate = 1
#Offset
o = 0

a = 0
b = 0.1
f = 25
r = 0.85
aS = 2
aN = 0.5

define :randomseed do |a|
  use_random_seed a
  puts a
end

define :picksample do
  x = sl + samples.choose
end

define :picktime do |ymin,ymax,zmin,zmax|
  y = rrand(ymin,ymax)
  z = rrand(zmin,zmax)
end

define :pickrate do |rmin,rmax|
  r = rrand(rmin,rmax)
end

define :playNightmare do |a, pan|
  randomseed a
  #picksample
  picktime 0.1, 0.3, 0.5, 0.6
  r = 1
  sample x, start: y, finish: z, rate: r, amp: aN
  
  sleep sample_duration(x, start: y, finish: z) / (r+0.1)
end

define :playSample do
  sample d, rate: r, start: a, finish: b, amp: aS, hpf: f
  sleep sample_duration(d, start: a, finish: b) / r
end

with_fx :compressor do
  with_fx :reverb, room: 0.9 do
    with_fx :distortion, distort: 0.3 do
      a = 0.01
      b = 0.03
      f = 50
      r = 0.85
      playSample
    end
  end
end
in_thread do
  with_fx :distortion, distort: 0.5 do
    with_fx :reverb do
      playNightmare 100, 0
      aN = 1
      playNightmare 105, 0
      playNightmare 210, 0
    end
  end
end
with_fx :compressor do
  with_fx :reverb, room: 0.5 do
    with_fx :distortion, distort: 0.3 do
      a = 0.03
      b = 0.1
      f = 25
      r = 0.75
      playSample
    end
  end
end
with_fx :compressor do
  with_fx :reverb, room: 0.8 do
    with_fx :distortion, distort: 0.5 do
      a = 0.1
      b = 0.04
      f = 25
      r = 0.65
      playSample
    end
  end
end
with_fx :compressor do
  with_fx :reverb, room: 0.8 do
    with_fx :distortion, distort: 0.3 do
      a = 0
      b = 0.6
      f = 0
      r = 0.95
      playSample
      aS = 1
      a = 0.6
      b = 0.4
      f = 50
      r = 0.75
    end
  end
end
