require_relative 'grid'
# a class called Game that controlls the game, changing the grid, etc.
class Game
  attr_reader :grid

  def initialize(grid = Grid.new)
    @grid = grid
  end

  def tile_alive(coodinates)
    @grid.tiles[coodinates[:x]][coodinates[:y]].birth
  end

  def prompt_for_coordinates
    puts 'enter coodinate for a cell you want to start as alive (seperated by a comma eg. 12,3)'
    input
  end

  def input(nasty_xy = gets.chomp)
    coordinates = nasty_xy.split(',')
    { x: coordinates[0].to_i, y: coordinates[1].to_i }
  end
end
