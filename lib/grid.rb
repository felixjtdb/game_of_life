require_relative 'tile'
# a class for Grid that formed of tiles
class Grid
  attr_reader :tiles, :gridsize
  def initialize(gridsize = 24)
    @tiles = generate_grid(gridsize)
    @gridsize = gridsize
  end

  def get_neighbours(coordinates)
    neighbours = 0
    neighbours += 1 if within_grid?(coordinates[:x] - 1, coordinates[:y]) && @tiles[coordinates[:x] - 1][coordinates[:y]].alive
    neighbours += 1 if within_grid?(coordinates[:x] + 1, coordinates[:y]) && @tiles[coordinates[:x] + 1][coordinates[:y]].alive
    neighbours += 1 if within_grid?(coordinates[:x], coordinates[:y] - 1) && @tiles[coordinates[:x]][coordinates[:y] - 1].alive
    neighbours += 1 if within_grid?(coordinates[:x], coordinates[:y] + 1) && @tiles[coordinates[:x]][coordinates[:y] + 1].alive
  end

  private

  def generate_grid(gridsize)
    Array.new(gridsize) { Array.new(gridsize) { Tile.new } }
  end

  def within_grid?(x_coordinate, y_coordinate)
    x_coordinate > 0 || x_coordinate < @gridsize || y_coordinate > 0 || y_coordinate < @gridsize ? true : false
  end
end
