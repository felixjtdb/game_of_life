require_relative 'tile'
# a class for Grid that formed of tiles
class Grid
  attr_reader :tiles
  def initialize(gridsize)
    @tiles = generate_grid(gridsize)
  end

  private

  def generate_grid(gridsize)
    temp_tiles = []
    for i in 0..gridsize do
      row = []
      for j in 0..gridsize do
        row.push(Tile.new(j, i))
      end
      temp_tiles.push(row)
    end
    return temp_tiles
  end
end
