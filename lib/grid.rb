require_relative 'tile'
# a class for Grid that formed of tiles
class Grid
  attr_reader :tiles
  def initialize(gridsize = 24)
    @tiles = generate_grid(gridsize)
  end

  private

  def generate_grid(gridsize)
    Array.new(gridsize) { Array.new(gridsize) { Tile.new } }
  end
end
