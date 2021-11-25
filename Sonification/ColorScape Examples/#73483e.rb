//#73483e.rb


with_fx :distortion do
  use_bpm 28.2
  live_loop :scaled_sample do
    sample :ambi_piano, rpitch: (scale [11.3/8.8628,17.11/8.628,5.682,35.258/13.676,13.676].choose, [:gong, :whole,:chromatic].choose).tick
    sleep [10.929/9.092,35.258/29.312].choose
  end
end

with_fx :ping_pong do
  use_bpm 28.2
  live_loop :scaled_sample2 do
    sample :drum_bass_hard, rpitch: (scale [46.1/45.1,17.11/8.628,5.682,35.258/13.676,35.258].reverse, :hex_aeolian).tick
    sleep [35.258/29.312,29.312/10.929,10.929/8.628].choose
  end
end



with_fx :slicer do
  use_bpm 28.2
  live_loop :scaled_sample3 do
    sample :elec_chime, rpitch: (scale [37,11.3,29.9,45.1].choose, [:shang, :egyptian, :gong].choose).tick
    sleep [0.418,0.351,0.418 *8.628].choose
  end
end




