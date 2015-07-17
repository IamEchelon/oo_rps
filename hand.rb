class Hand
  CHOICES = ["Rock", "Paper", "Scissors"]

  attr_reader :arena

  def initialize
    @hand_space = "Playground"
  end

  def compare_hands(choice_1, choice_2)
    if choice_1 == choice_2
      puts "Tie!"
    elsif choice_1 == "Rock" && choice_2 == "Scissors"
      puts "Player 1 Wins"
    elsif choice_1 == "Scissors" && choice_2 == "Paper"
      puts "Player 1 Wins"
    elsif choice_1 == "Paper" && choice_2 == "Rock"
      puts "Player 1 Wins"
    else
      puts "Computer Wins!"
    end
  end
end
