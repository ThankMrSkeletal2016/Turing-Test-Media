##Amonojaku v1

##SET YOUR ROOT OR OR THE CODE WON'T WORK
samplelocation = "C:/Users/Pc/Documents/Github/Turing-Test-Media/WIP-Snippet/Ghost Stories EP/Amonojaku"
intro = samplelocation + "/intro.wav"
big = samplelocation + "/bigger.wav"
name = samplelocation + "/name.wav"
laugh = samplelocation + "/laugh.wav"
theend = samplelocation + "/end.wav"

extratonedrums = samplelocation + "/industrial"
kick1 = extratonedrums + "/190bpm_Extermination.wav"
kick2 = extratonedrums + "/175bpm_Superhot.wav"
kick3 = extratonedrums + "/170bpm_Future Imperfect.wav"
kick4 = extratonedrums + "/175bpm_Gestalt.wav"


with_fx :reverb, room: 1 do
  with_fx :distortion, distort: 0.6 do
    ##| sample intro, amp: 0.75, rate: 1.1
    ##| sleep sample_duration(intro) - 2
    sample kick1, rate: 0.8
    sleep sample_duration(kick1) / 1
    32.times do
      use_bpm 220
      if one_in(2)
        kick3 kick2
        kick3 kick2
        kick3 kick2
      else
        kick kick2
      end
    end
    in_thread do
      sample big, amp: 2
    end
    sample kick1, rate: 0.6
    sleep sample_duration(kick1) / 0.6
    in_thread do
      use_bpm 750
      150.times do
        if one_in(2)
          kick4 kick2
          kick4 kick2
          kick4 kick2
        else
          in_thread do
            use_bpm 60
            sample laugh
            sleep sample_duration(laugh) / 2
          end
        end
      end
    end
    use_bpm 60
    sample name, amp: 1.2
    in_thread do
      sleep 8
      sample kick1, rate: 0.5, amp: 0.75
      sleep sample_duration(kick1) / 0.5
      sample kick1, rate: 0.6, amp: 0.75
      sleep sample_duration(kick1) / 0.6
      sample kick1, rate: 0.5, amp: 0.75
      sleep sample_duration(kick1) / 0.5
    end
    sample_duration(name)
    sample theend, amp: 2
    with_fx :hpf, cutoff: 20 do
      10.times do
        use_bpm 1000 if one_in(1)
        use_bpm 900 if one_in(2)
        use_bpm 1100 if one_in(3)
        sample kick1
        sleep sample_duration(kick1)
      end
    end
  end
end
