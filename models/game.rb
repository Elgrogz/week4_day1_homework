require('pry-byebug')

class Game

  def initialize(choice1, choice2)
    @choice1 = choice1.downcase
    @choice2 = choice2.downcase
  end

  def play()
    if @choice1 == "rock" && @choice2 == "scissors"
      return "Rock wins"
    elsif @choice1 == "scissors" && @choice2 == "rock"
      return "Rock wins"
    elsif @choice1 == "paper" && @choice2 == "rock"
      return "Paper wins"
    elsif @choice1 == "rock" && @choice2 == "paper"
      return "Paper wins"
    elsif @choice1 == "scissors" && @choice2 == "paper"
      return "Scissors wins"
    elsif @choice1 == "paper" && @choice2 == "scissors"
      return "Scissors wins"
    elsif @choice1 == @choice2
      return "Draw"
    else
      return "Invalid inputs"
    end
  end

end

game1 = Game.new("Rock", "Scissors")
puts game1.play


  
nil

#original effort
    #   if (@choice1 || @choice2 == "rock") && (@choice1 || @choice2 == "scissors")
    #     result = "Rock wins"
    #   elsif (@choice1 || @choice2 == "paper") && (@choice1 || @choice2 == "rock")
    #     result = "Paper wins"
    #   elsif (@choice1 || @choice2 == "scissors") && (@choice1 || @choice2 == "paper")
    #     result = "Scissors win"
    #   else 
    #     result = "Invalid Selection"
    #   end
    #   binding.pry 
    # return result 
