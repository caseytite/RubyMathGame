class Game 
  def initialize()
    puts "Game started!"
    puts "------------"
    @@player1 = Player.new(1) 
    @@player2 = Player.new(2) 
    @@active_player = @@player1
    generate_question
  end

  def generate_question
    num1 = 1 + rand(20)
    num2 = 1 + rand(20)
    puts "#{@@active_player.name}: what is #{num1} plus #{num2}?"
    correct_answer = num1 + num2
    answer = gets.chomp
    puts answer.to_i == correct_answer.to_i ? "#{@@active_player.name}: You are correct" : "#{@@active_player.name} Wrong!"
    
    if answer.to_i == correct_answer.to_i 
      switch_turns
    elsif answer.to_i != correct_answer.to_i
      update_score 
    end
  end

  def update_score
    @@active_player.score -= 1
    switch_turns
  end

  def switch_turns
    puts  "P1: #{@@player1.score}/3 vs P2: #{@@player2.score}/3"
    puts "------- NEW TURN ------"
    if (@@active_player.score > 0)
      @@active_player.name == "Player 1" ? @@active_player = @@player2 : @@active_player = @@player1
      generate_question
    elsif (@@active_player.score == 0)
      game_over
    end
  end
    
  def game_over
    @@active_player.name == "Player 1" ? @@active_player = @@player2 : @@active_player = @@player1
    puts "#{@@active_player.name} wins with a score of #{@@active_player.score}/3"
    puts "------ GAME OVER -------"
    puts "goodbye!"
  end

end

