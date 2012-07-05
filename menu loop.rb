#the the menu loop for baby dragon.
require 'gems'
require 'baby dragon.rb'

menu_text1 = "what do you want to do for Goobert the dragon?"
menu_text2 = "(F)eed, (W)alk, (B)edtime, (T)oss, (R)ock, (C)hange diaper, (Q)uit."
pet = Dragon.new "Goobert"
input = ''

while input != 'q'
   puts menu_text1
   puts menu_text2
   input = gets.chomp
    if input == "f"
        pet.feed
      elsif input == "w"
        pet.walk
      elsif input == "b"
        pet.put_to_bed
      elsif input == "t"
        pet.toss
      elsif input == "r"
        pet.rock
      elsif input == "c"
        pet.change
    end #end of the if input == the menu option.
end #the while loop