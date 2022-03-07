class Player 
  attr_reader :name, :lives
  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def game_over
    @lives == 0
  end

  def new_q
    new_q = Question.new
    new_q.ask_q(name)
    print "> "
    @user_answer = $stdin.gets.chomp
    if new_q.validate_a?(@user_answer.to_i)
      puts "NAILED IT! You are a math genius!"
    else 
      puts "Seriously? This is first grade math... Figure it out."
      lose_life
    end
  end
end