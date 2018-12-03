require_relative "CoffeeError"
require_relative "YearsKnownError"
require_relative "PasttimeError"
require_relative "BestieNameError"

# PHASE 2
def convert_to_int(str)
  begin
  Integer(str)
  
    rescue ArgumentError => error
      # puts error.message
      nil
  end
end 

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  
  if FRUITS.include? maybe_fruit
      puts "OMG, thanks so much for the #{maybe_fruit}!"
  else
      raise StandardError
  end 
end

def feed_me_a_fruit
  begin 
  puts "Hello, I am a friendly monster. :)"

  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
  raise CoffeeError if maybe_fruit == "coffee"
  rescue CoffeeError => error 
    retry 
  end
  reaction(maybe_fruit) 
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)

    begin
      @name = name
      if name.length == 0
        puts "Your best friend needs a name!"
        raise BestieNameError
      end

      @yrs_known = yrs_known
      if @yrs_known < 5
        puts "You can't be besties if you've known each other for less than 5 years!"
        raise YearsKnownError 
      end

    
      @fav_pastime = fav_pastime
      if fav_pastime.length == 0
        puts "You left your hobby behind!"
        raise PasttimeError
      end
    end
    
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

p BestFriend.new("", 10 , "")