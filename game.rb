require_relative 'player'
require_relative 'hand'


class Game
  def initialize
    @hand_space = Hand.new
    @player_1 = Human.new
    @computer = Computer.new("Dinklebot")
  end

  def play
    puts "Welcome to Rock, Paper, Scissors!".center(80, "*")
    @player_1.set_player_name
    puts "---------------------------------------------"
    loop do
      @player_1.set_hand
      @computer.computer_logic
      @hand_space.compare_hands(@player_1.player_choice, @computer.player_choice)
      break unless play_again == "yes"
    end
  end

  def play_again
    loop do
      puts "Play Again?(Enter Yes or No)"
      answer = gets.chomp.downcase
      return "yes" if answer == "yes"
      break if answer == "no"
    end
  end
end



Game.new.play
