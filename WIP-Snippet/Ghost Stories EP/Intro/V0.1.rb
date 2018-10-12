##INTRO V0.1

##SET YOUR ROOT OR OR THE CODE WON'T WORK
samplelocation = "C:/Users/Pc/Documents/Github/Turing-Test-Media/WIP-Snippet/Ghost Stories EP(Extratone-Speedcore)/Intro"
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
end