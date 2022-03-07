class Game 
  def initialize(name)
    @name = name
    @player_1 = Player.new('Player 1')
    @player_2 = Player.new('Player 2')
  end

  def start
    puts "New game initialized. Welcome to the thunderdome #{@player_1.name} and #{@player_2.name}."
    turn
  end

  def show_lives_remaining
    puts "P1: #{@player_1.lives}/3 vs. P2: #{@player_2.lives}/3"
  end

  def winner(player)
    puts "#{player.name} wins with #{player.lives} lives remaining!"
    puts "----- GAME OVER -----"
    puts "Good bye!"
    exit(0)
  end

  def score_analysis
    if @player_1.game_over
      winner(@player_2)
    elsif @player_2.game_over
      winner(@player_1)
    end
  end

  def turn 
    @player_1.new_q
    score_analysis
    @player_2.new_q
    score_analysis
    show_lives_remaining
    puts "----- NEW TURN -----"
    turn 
  end
end