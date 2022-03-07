class Game 
  def initialize(name)
    @name = name
    puts "Player 1 please enter a name: "
    print "> "
    @player1_name = $stdin.gets.chomp
    puts "Player 2 please enter a name: "
    print "> "
    @player2_name = $stdin.gets.chomp
    @player_1 = Player.new(@player1_name)
    @player_2 = Player.new(@player2_name)
  end

  def start
    puts "New game initialized. Welcome to the thunderdome #{@player_1.name} and #{@player_2.name}."
    turn
  end

  def show_lives_remaining
    puts "#{@player_1.name}: #{@player_1.lives}/3 vs. #{@player_2.name}: #{@player_2.lives}/3"
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