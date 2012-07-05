# May 15, 2012
#the baby dragon class exercise from learn to program
class Dragon
  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly = 10
    @stuff_in_guts = 0
    @energy = 20
    
    puts @name + " is born!"
  end
  
  def feed
  #we need to check if the dragon is hungry and awake.
    if @asleep == true
      puts "You can't feed #{@name}. He's asleep right now."
    end #ends the check for sleeping.
    
    
    #then we check to see if baby dragon is full.
    if hungry?
    puts "You feed " + @name + "."
    @stuff_in_belly = 10
    else
       puts "#{@name} isn't hungry right now."
    passage_of_time
    @energy = @energy - 2
      end #end of checking if dragon is full. if not, we feed the dragon.
  end# of feed method.
  
  def walk
    puts "You walk " + @name + "."
    #@stuff_in_guts = 0
    passage_of_time
    @energy = @energy - 5
  end #end of walk method.
  
  def put_to_bed
    puts "You put " + @name + " to bed."
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep 
        puts @name + " snores, filling the room with smoke."
      end
    end
    if @asleep == false
      puts @name + " wakes up slowly."
    end
    @energy = 20
  end #end of put to bed method.
  
  def toss
    puts "You toss " + @name + " up in the air. \n He giggles, which singes your eyebrows."
    passage_of_time
    @energy = @energy - 5
  end
  
  def rock
    puts "You rock " + @name + " gently."
    @asleep = true
    puts "He briefly dozes off..."
    passage_of_time
    if @asleep == false
      puts "...but wakes up when you stop."
    end
  end
  
#added a diaper change method.
  def change
      if @stuff_in_guts >= 7
         puts " you change " + @name + "'s messy diaper"
    @stuff_in_guts = 0
    else
      puts "The diaper is clean."
    end
    passage_of_time
    @energy = @energy -3
  end
  
  def status
    puts "alseep?"
    puts @asleep
    puts "number of stuff in guts"
    puts @stuff_in_guts
    puts "number of stuff in belly"
    puts @stuff_in_belly
  end #end of status 
  
  
private
  
  def hungry?
    @stuff_in_belly <= 2
  end
  
  def poopy?
    @stuff_in_guts >= 8
  end
  
  #check to see how much energy
  def tired?
    @energy < 8
  end #end of tired method.
  
  def passage_of_time
    #this changes the status of the dragon's guts.
    if @stuff_in_belly > 0 
        @stuff_in_belly  = @stuff_in_belly - 1
        @stuff_in_guts = @stuff_in_guts + 1
      else
        if @asleep == true
          @asleep = false
          puts "He wakes up suddenly."
        end
        puts @name + " is starving! In desparation , he ate you!"
        exit
    end
    
    if @stuff_in_guts >= 10
      @stuff_in_guts = 0
      puts "Whoops! " + @name + " had an accident..."
    end
    
    if hungry?
      if  @asleep == true
        @asleep = false
        puts "He wakes up suddenly."
      end
        puts @name + "'s stomach grumbles..."
    end
    
    if poopy?
      if @asleep == true
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts @name + " does the potty dance."
    end
    #we check the dragon's energy level if it reaches zero he falls asleep.
    if tired? #check to see if tired.
      puts "#{@name} is cranky and tired."
    end #end of tired check.
    
    if @energy == 0 #check if tired.
      puts "#{@name} is so tired and cranky. He ate you!"
      exit
    end
    
    
    
    if @asleep == true
      random_awake = rand(10)
        if random_awake == 0
        puts "#{@name} wakes up crying."
        end #end of random awake check.
    end #of checking for asleep and checking random awake status.
  end #end of passage of time.












end #this is the end of the class



menu_text1 = "what do you want to do for Goobert the dragon?"
menu_text2 = "(F)eed, (W)alk, (B)edtime, (T)oss, (R)ock, (C)hange diaper, (Q)uit."
pet = Dragon.new "Goobert"
input = ''
  #this is kind of  a mess of a menu system. too much if elsif :(
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