# In this file we define the methods to help game class
require "pp"
class Game 
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
  end

  def create_game()
    loop do  
      num1 = rand(1..20)
      num2 = rand(1..20)
      puts "#{@current_player.name()}: What does #{num1} plus #{num2} equal?"
      answer = gets.chomp
      if num1 + num2 == answer.to_i
        puts "YES! You are correct."
      else 
        puts "Seriously? No!"
        @current_player.lose_lives();
      end
      
      puts "P1: #{@player1.get_lives()} vs P2: #{@player2.get_lives()}"
      puts "----- NEW TRUN -----"
      if @current_player == @player2
        @current_player = @player1
      else
        @current_player = @player2
      end  
    end
  end
end