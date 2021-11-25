#reading of the DipInCodeFirstService
#for csvs larger than 10 mbs use the for reach


require 'csv'

#naming the Dataset DipInCode and going to read the file
Dip = CSV.parse(File.read("C:/Colorscape/DipInCode/SonicPi_CodeBase/Model/DipInCode_FirstService.csv"), headers: true)

#Getting the Ingredients
Merlot = Dip[24]

#Dip[foodname][column].to_f , need to.f as it is to float

with_fx :vowel do
  live_loop :Merlot1 do
    use_bpm Merlot["Red"].to_f
    sample :sn_dub, rate: dice(Merlot["Yellow"].to_f/Merlot["Key"].to_f)  if spread(Merlot["Blue%"].to_f,Merlot["Green%"].to_f).tick
    sample :ambi_dark_woosh,rate: rrand(Merlot["y2"].to_f,Merlot["Red"].to_f/Merlot["Blue"].to_f)  if spread(Merlot["H-Lab1"].to_f,Merlot["CIE-L"].to_f).reverse.mirror
    sleep [Merlot["x2"].to_f,Merlot["Yellow"].to_f/Merlot["Mangeta"].to_f,Merlot["Saturation2"].to_f/Merlot["Lightness"].to_f].choose
  end
end

with_fx :ixi_techno do
  live_loop :Merlot2 do
    use_bpm Merlot["Blue"].to_f
    with_fx :reverb do
      sample :ambi_choir, rate: rrand(Merlot["y2"].to_f,Merlot["Red"].to_f/Merlot["Blue"].to_f) if spread(Merlot["H-Lab1"].to_f,Merlot["CIE-L"].to_f).reverse.mirror
      sleep [Merlot["x2"].to_f,Merlot["Green%"].to_f/Merlot["Blue%"].to_f].choose
    end
  end
end

with_fx :gverb do
  live_loop :Merlot3 do
    use_bpm Merlot["Green"].to_f
    sample :elec_blip, rate: dice(Merlot["Yellow"].to_f/Merlot["Key"].to_f)  if spread(Merlot["Blue%"].to_f,Merlot["Green%"].to_f).tick
    sample :ambi_dark_woosh,rate: rrand(Merlot["y2"].to_f,Merlot["Red"].to_f/Merlot["Blue"].to_f)  if spread(Merlot["H-Lab1"].to_f,Merlot["CIE-L"].to_f).reverse.mirror
    sleep [Merlot["x2"].to_f,Merlot["Yellow"].to_f/Merlot["Mangeta"].to_f,Merlot["Saturation2"].to_f/Merlot["Lightness"].to_f].choose
  end
end

with_fx :distortion do
  live_loop :Merlot4 do
    use_bpm Merlot["Red"].to_f
    with_fx :reverb do
      sample :ambi_choir, rate: rrand(Merlot["y2"].to_f,Merlot["Red"].to_f/Merlot["Blue"].to_f) if spread(Merlot["H-Lab1"].to_f,Merlot["CIE-L"].to_f).reverse.mirror
      sleep [Merlot["x2"].to_f,Merlot["Green%"].to_f/Merlot["Blue%"].to_f].choose
    end
  end
end
