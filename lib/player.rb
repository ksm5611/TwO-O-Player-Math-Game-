# In this file we define the methods to help player class

class Player
  def initialize(lives, name)
    @current_lives = lives
    @total_lives = lives
    @name = name
  end

  def lose_lives()
    @current_lives = @current_lives - 1
  end

  def get_lives() 
    return "#{@current_lives}/#{@total_lives}"
  end

  def current_lives()
    return @current_lives
  end

  def name() 
    return @name
  end 

end