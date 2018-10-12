##INTRO V0.1

##SET YOUR ROOT OR OR THE CODE WON'T WORK
samplelocation = "C:/Users/Pc/Documents/Github/Turing-Test-Media/WIP-Snippet/Ghost Stories EP/Intro"
intro = samplelocation + "/intro.wav"
music = samplelocation + "/intro loop.wav"

extratonedrums = samplelocation + "/industrial"
kick1 = extratonedrums + "/190bpm_Extermination.wav"
kick2 = extratonedrums + "/170bpm_Precision Hardcore.wav"
kick3 = extratonedrums + "/170bpm_Future Imperfect.wav"

with_fx :reverb, room: 1 do
  with_fx :distortion, distort: 0.8 do
    ##| Intro
    sample intro, amp: 0.75, rate: 1.1
    in_thread do
      sleep 2
      sample kick3, amp: 2, rate: 0.2
      sleep 7
      sample kick1, amp: 2, rate: 0.6
      sleep 10
      10.times do
        sample kick2, amp: 2, rate: 2
        sleep 0.1
      end
      sleep 3
      100.times do
        sample kick3, amp: 2, rate: 3
        sleep 0.05
      end
      sleep 10
      in_thread do
        use_bpm 2000
        100.times do
          sample kick3, amp: 2, rate: 1
          sleep 0.2
        end
      end
    end
  end
end