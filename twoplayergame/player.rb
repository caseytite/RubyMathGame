require './game.rb'
class Player
  attr_accessor :score, :name
  def initialize(id)
    @id = id
    @score = 3
    @name = "Player #{id}"
  end
end

