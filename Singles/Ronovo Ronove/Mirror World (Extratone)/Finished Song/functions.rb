#Full Intro Method with Echo
#Called Over the Beat Later in Song
define :full do |n, m|
  with_fx :distortion, distort: 0.6 do
    sample n, amp: 2
    sleep 0.5
    sample n, amp: 1.9
    sleep sample_duration(n)
  end
  with_fx :distortion, distort: 0.8 do
    sample m
    sleep 0.5
    sample m
    sleep sample_duration(m)
    sample m, rate: 0.75
    sleep 0.5
    sample m, rate: 0.75
    sleep sample_duration(m) / 0.75
  end
  with_fx :distortion, distort: 0.9 do
    sample m, rate: 0.5
    sleep 0.5
    sample m, rate: 0.5
    sleep sample_duration(m) / 0.5
  end
end

#Just the intro Method
define :intro do |n|
  sample n, amp: 0.75, rate: 1.1
  sleep sample_duration(n) / 1.1
end

#Laughing Slowing down method
define :slowdown do |n|
  sample n
  sleep sample_duration(n)
  sample n, rate: 0.75
  sleep sample_duration(n) / 0.75
  sample n, rate: 0.5
  sleep sample_duration(n) / 0.5
end

#Laughing speeding up method
define :speedup do |n|
  sample n, rate: 0.5
  sleep sample_duration(n) / 0.5
  sample n, rate: 0.75
  sleep sample_duration(n) / 0.75
  sample n
  sleep sample_duration(n)
end

#Laugh method
define :laugh do |n|
  sample n
  sleep sample_duration(n)
end

#Kick Drum Getting Faster
define :kick do |n|
  sample n, amp: 3
  sleep 1
end

define :kick2 do |n|
  sample n, amp: 2
  sleep 0.5
end

define :kick3 do |n|
  sample n, amp: 2
  sleep 0.25
end

define :kick4 do |n|
  sample n, amp: 2
  sleep 0.125
end
