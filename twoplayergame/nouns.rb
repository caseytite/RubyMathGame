#nouns 
Game
role - masterclass, all other classes will be subclasses of this class
attr_accessor :active_player
def initialize(active)
  @active = active
end


def switch_turns #check if both players have lives left, toggle players if true
  if (player1.lives && player2.lives > 0)
    self.active_player()
  if (player1.lives || player2.lives = 0)
    self.game_over
  end
end

def game_over
  if !player1 || !player2
    puts "winning player wins with a score of their life"
    puts "---GAME OVER----"
    puts "goodbye"
end

def update_lives(player)
  # player.lives -= 1 
end
  

def active_player
  active_player = player1
  active_player == player1 ? player2 : player1
end

Module players_actions
  def prompt_for_numbers
    #gets the two numbers
  end
end

players
attr_accessor :alive
role - will store ID, lives, is__current_turn

class Player < Game
  attr_accessor :id :lives
  
  def initialize(id)
    @id = id
    @lives = 3
  end
end

player1 = Player.new(1)
player2 = Player.new(2)


turns

class Turns

end
role - will store which player is answering, will prompt for the two numbers
        will have a toggle for which player is answering the question

questions/answers
role - will generate the questions, output questions, compare answers with correct answer





pick_numbers
#this will promt for two numbers between 1 and 20

generate
#generates the question with the previous prompt

ask
#output or puts the question to terminal

answer
#takes in the answers and compares to appropriate response

program_respond
#responds/ puts to terminal response based on answer

calculate lives
#calculates the lives 

output scores





=begin

1 game starts
2 question is generated - genterate_question runs
  - generates question
  - takes in the answer and compares and spits out response
3 based off response needs to update lives
4 prints out current scores
5 prints out new turn
6 toggle player


----when game ends
7 prints winner with score 
8 when game ends prints game over



end