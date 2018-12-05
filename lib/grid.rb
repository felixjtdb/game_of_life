require_relative 'tile'
# a class for Grid that formed of tiles
class Grid
  attr_reader :tiles
  def initialize(gridsize = 24)
    @tiles = generate_grid(gridsize)
  end

  private

  def generate_grid(gridsize)
    temp_tiles = []
    (0..gridsize).each do
      row = []
      (0..gridsize).each do
        row.push(Tile.new)
      end
      temp_tiles.push(row)
    end
    temp_tiles
  end
end
