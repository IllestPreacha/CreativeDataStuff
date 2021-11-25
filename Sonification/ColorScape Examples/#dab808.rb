
with_fx :distortion do
  use_bpm 96
  live_loop :r_dab808 do
    sample :bd_808, beat_stretch: 3.1, amp: dice(8), release: 8 if spread(8 - 1.895,8 + 3.1).tick
    sample :drum_bass_soft, amp: dice(3.1)
    sample :ambi_soft_buzz, beat_stretch: 1.895
    sleep [0.449,0.48,16/15].choose
  end
end





