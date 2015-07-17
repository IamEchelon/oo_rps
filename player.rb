class Player
  attr_accessor :player_name, :player_choice

  def initialize
    @player_name
    @player_choice
  end
end

class Human < Player
  def set_player_name
    print "Please enter your name: "
    name = gets.chomp
    @player_name = name
    puts "Hello #{@player_name}! Let's Play!"
  end

  def set_hand
    begin
      puts "Choose Rock, Paper, or Scissors"
      @player_choice = gets.chomp
    end until Hand::CHOICES.include?(@player_choice)
  end
end

class Computer < Player
  def initialize(player_name)
    @player_name = player_name
    @player_choice
  end

  def computer_logic
    @player_choice = Hand::CHOICES.sample
    puts "Computer chose #{@player_choice}"
  end
end
