#reading of the DipInCodeFirstService
#for csvs larger than 10 mbs use the for reach


require 'csv'

#naming the Dataset DipInCode and going to read the file
Dip = CSV.parse(File.read("C:/Colorscape/DipInCode/SonicPi_CodeBase/Model/DipInCode_FirstService.csv"), headers: true)

#Getting the Ingredients
Burgundy = Dip[6]
Wine = Dip[7]
#Dip[foodname][column].to_f , need to.f as it is to float
#0s and other ratios might have to be switch out to give flow to that track and make it run

with_fx [:whammy,:ixi_techno,:flanger].choose do
  live_loop :Burgundy1 do
    use_bpm Burgundy["Red"].to_f
    sample :ambi_choir, rate: dice(Burgundy["Yellow"].to_f/Burgundy["Hue"].to_f)  if spread(Burgundy["Blue%"].to_f,Burgundy["Red%"].to_f).tick
    sample :perc_snap2,rate: rrand(Burgundy["y2"].to_f,Burgundy["Red"].to_f/Burgundy["Blue"].to_f)  if spread(Burgundy["H-Lab1"].to_f,Burgundy["CIE-L"].to_f).reverse.mirror
    sleep [Burgundy["x2"].to_f,Burgundy["Yellow"].to_f/Burgundy["Mangeta"].to_f,Burgundy["Saturation2"].to_f/Burgundy["Lightness"].to_f].choose
  end
end

with_fx [:krush,:ping_pong,:distortion].choose, mix: Wine["x2"].to_f  do
  live_loop :Wine2 do
    use_bpm Wine["Blue"].to_f
    with_fx :reverb do
      sample :perc_snap2, rate: rrand(Wine["y2"].to_f,Wine["Red"].to_f/Wine["Blue"].to_f) if spread(Wine["H-Lab1"].to_f,Wine["CIE-L"].to_f).reverse.mirror
      sleep [Wine["x2"].to_f,Wine["Green%"].to_f/Wine["Blue%"].to_f].choose
    end
  end
end

with_fx :ping_pong do
  live_loop :Wine3 do
    use_bpm Wine["Green"].to_f
    sample :drum_bass_soft, rate: dice(Wine["Yellow"].to_f/Wine["Hue"].to_f)  if spread(Wine["Blue%"].to_f,Wine["Green%"].to_f).tick
    sample :ambi_choir, decay: Wine["H-Lab2"].to_f, rate: rrand(Wine["y2"].to_f,Wine["Red"].to_f/Wine["Blue"].to_f)  if spread(Wine["H-Lab1"].to_f,Wine["CIE-L"].to_f).reverse.mirror
    sleep [Wine["x2"].to_f,Wine["Yellow"].to_f/Wine["Mangeta"].to_f,Wine["Saturation2"].to_f/Wine["Lightness"].to_f].choose
  end
end

#.ceil to round up

with_fx :vowel,voice: dice(Burgundy["Z"].to_f.ceil()) do
  live_loop :Burgundy4 do
    use_bpm Burgundy["Red"].to_f
    with_fx :reverb do
      sample :perc_snap2, rate: rrand(Burgundy["y2"].to_f,Burgundy["Red"].to_f/Burgundy["Blue"].to_f) if spread(Burgundy["H-Lab1"].to_f,Burgundy["CIE-L"].to_f).reverse.mirror
      sample :ambi_choir, rate: dice(Burgundy["Yellow"].to_f/Burgundy["Hue"].to_f)  if spread(Burgundy["Blue%"].to_f,Burgundy["Red%"].to_f).tick
      sleep [Burgundy["x2"].to_f,Burgundy["Red%"].to_f/Burgundy["Blue%"].to_f].choose
    end
  end
end