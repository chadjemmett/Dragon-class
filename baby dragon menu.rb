#baby dragon interactive menu.

def text_menu #a method to implement the text menu over and over. It also ignores anything that isn't on the menu.
  input = ''
  while input != 'q'
  
    puts "what do you want to do for Goobert the dragon?"
    puts "(F)eed, (W)alk, (B)edtime, (T)oss, (R)ock, (C)hange diaper, (Q)uit."
    input = gets.chomp.downcase
    valid_options = [ "f", "w", "b", "t", "r", "c", "q"]
    unless valid_options.include?(input)
      puts "Can't understand you."
    end #end of unless loop.
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
  end #end of the while loop.
  
end #end of text_menu method