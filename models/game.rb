require('pry-byebug')

class Game

  attr_accessor :choice1, :choice2

  def initialize(choice1, choice2)
    @choice1 = choice1.downcase
    @choice2 = choice2.downcase
  end

  def play()
      if (@choice1 || @choice2 == "rock") && (@choice1 || @choice2 == "scissors")
        result = "Rock wins"
      elsif (@choice1 || @choice2 == "paper") && (@choice1 || @choice2 == "rock")
        result = "Paper wins"
      elsif (@choice1 || @choice2 == "scissors") && (@choice1 || @choice2 == "paper")
        result = "Scissors win"
      else 
        result = "Invalid Selection"
      end
    return result  
  end

end

game1 = Game.new("scissors", "paper")
puts game1.play


    
binding.pry
nil

