require_relative 'grid'

# a class called Game that controlls the game, changing the grid, etc.
class Game
  attr_reader :grid

  def initialize(grid = Grid.new)
    @grid = grid
  end
end
