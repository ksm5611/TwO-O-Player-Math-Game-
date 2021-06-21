# In this file we define the methods to help game class

class Game 
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
  end

  def create_game() 
    @player
    if @current_player == @player1
      @player = 'Player 1'
    elsif @current_player == @player2
      @player = "Player 2"
    end
    num1 = rand(1..20)
    num2 = rand(1..20)
    puts "#{@player}: What does #{num1} plus #{num2} equal?"
    answer = gets.chomp
    puts num1 + num2 
    puts answer
    if num1 + num2 == answer.to_i
      puts "YES! You are correct."
    else 
      puts "Seriously? No!"
    end

  end
end