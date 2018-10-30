# PHASE 2
def convert_to_int(str)
  Integer(str)
  rescue ArgumentError => e
    p "Invalid input, got an #{e}."
    nil
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]
#COFFEE = false

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit == "coffee"
    #COFFEE = true
    p "You have pleased the monster! You may feed me another fruit."
    feed_me_a_fruit
  #elsif COFFEE == true && !FRUITS.include?(maybe_fruit)
  #  raise PostCoffeeNoFruitError
  else
    raise CoffeeError
  
  end
end

def feed_me_a_fruit

  puts "Hello, I am a friendly monster. :)"

  begin
    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp
    reaction(maybe_fruit)
  rescue CoffeeError => e
    p e.message
    retry
    #p "I'm full, leave me alone."
  rescue PostCoffeeNoFruitError => a
    p a.message
  end
  
end  

class CoffeeError < StandardError
  def message
    "Give me coffee rawr xd"
  end
end

class PostCoffeeNoFruitError < StandardError
  def message
    "You have angered the gods."
  end
end

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


