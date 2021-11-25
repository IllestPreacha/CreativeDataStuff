
live_loop :b3ac0d13_2 do
  use_bpm 58.266 + 42.422
  with_fx :whammy , mix: 0.62 do
    with_fx :vowel, mix: 0.62, pre_mix: 0.327 do
      synth :pretty_bell if spread(18.248,49.367).mirror.shuffle
      play scale([33,36.191,42.422].tick, :minor).choose
      sleep [(7.5/5.1),(92/89)].choose
      sample :bd_ada if spread(9.108,17.276).reverse.tick
      sample :bd_haus if spread(36.191,85.9).mirror.tick
      sleep [(0.327/0.62),(0.62/0.92)].choose
    end
  end
end





