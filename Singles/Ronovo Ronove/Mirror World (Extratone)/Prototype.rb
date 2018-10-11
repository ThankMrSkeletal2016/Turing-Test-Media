##GABBBBBER

samplelocation = "C:/Users/Pc/Music/Gabber"
intro = samplelocation + "/intro.wav"
laugh = samplelocation + "/laugh.wav"

drumlocation = "C:/Users/Pc/Music/Gabber/Industrial_Waste_I/Engage Blue - Industrial Waste I"
kick = drumlocation + "/170bpm_Destructo Noctavia.wav"

sample intro
sleep sample_duration(intro)
sample laugh
sleep sample_duration(laugh)
sample laugh, rate: 0.75
sleep sample_duration(laugh) / 0.75
sample laugh, rate: 0.5
sleep sample_duration(laugh) / 0.5

in_thread do
  use_bpm 1000
  loop do
    16.times do
      sample kick
      sleep 1
    end
  end
end