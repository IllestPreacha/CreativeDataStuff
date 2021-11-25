#reading of the DipInCodeFirstService
#for csvs larger than 10 mbs use the for reach


require 'csv'

#naming the Dataset DipInCode and going to read the file
Dip = CSV.parse(File.read("C:/Colorscape/DipInCode/SonicPi_CodeBase/Model/DipInCode_FirstService.csv"), headers: true)

#Getting the Ingredients
AppleCrisp = Dip[5]

#Dip[foodname][column].to_f , need to.f as it is to float

with_fx :flanger do
  live_loop :AppleCrisp1 do
    use_bpm AppleCrisp["Red"].to_f
    sample :perc_swash, rate: dice(AppleCrisp["Yellow"].to_f/AppleCrisp["Key"].to_f)  if spread(AppleCrisp["Blue%"].to_f,AppleCrisp["Green%"].to_f).tick
    sample :ambi_lunar_land,rate: rrand(AppleCrisp["y2"].to_f,AppleCrisp["Red"].to_f/AppleCrisp["Blue"].to_f)  if spread(AppleCrisp["H-Lab1"].to_f,AppleCrisp["CIE-L"].to_f).reverse.mirror
    sleep [AppleCrisp["x2"].to_f,AppleCrisp["Yellow"].to_f/AppleCrisp["Mangeta"].to_f,AppleCrisp["Saturation2"].to_f/AppleCrisp["Lightness"].to_f].choose
  end
end

with_fx :ixi_techno do
  live_loop :AppleCrisp2 do
    use_bpm AppleCrisp["Blue"].to_f
    with_fx :reverb do
      sample :ambi_choir, rate: rrand(AppleCrisp["y2"].to_f,AppleCrisp["Red"].to_f/AppleCrisp["Blue"].to_f) if spread(AppleCrisp["H-Lab1"].to_f,AppleCrisp["CIE-L"].to_f).reverse.mirror
      sleep [AppleCrisp["x2"].to_f,AppleCrisp["Green%"].to_f/AppleCrisp["Blue%"].to_f].choose
    end
  end
end

with_fx :whammy do
  live_loop :AppleCrisp3 do
    use_bpm AppleCrisp["Green"].to_f
    sample :perc_swash, rate: dice(AppleCrisp["Yellow"].to_f/AppleCrisp["Key"].to_f)  if spread(AppleCrisp["Blue%"].to_f,AppleCrisp["Green%"].to_f).tick
    sample :ambi_lunar_land,rate: rrand(AppleCrisp["y2"].to_f,AppleCrisp["Red"].to_f/AppleCrisp["Blue"].to_f)  if spread(AppleCrisp["H-Lab1"].to_f,AppleCrisp["CIE-L"].to_f).reverse.mirror
    sleep [AppleCrisp["x2"].to_f,AppleCrisp["Yellow"].to_f/AppleCrisp["Mangeta"].to_f,AppleCrisp["Saturation2"].to_f/AppleCrisp["Lightness"].to_f].choose
  end
end

with_fx :ixi_techno do
  live_loop :AppleCrisp4 do
    use_bpm AppleCrisp["Red"].to_f
    with_fx :reverb do
      sample :ambi_choir, rate: rrand(AppleCrisp["y2"].to_f,AppleCrisp["Red"].to_f/AppleCrisp["Blue"].to_f) if spread(AppleCrisp["H-Lab1"].to_f,AppleCrisp["CIE-L"].to_f).reverse.mirror
      sleep [AppleCrisp["x2"].to_f,AppleCrisp["Green%"].to_f/AppleCrisp["Blue%"].to_f].choose
    end
  end
end
