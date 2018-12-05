require_relative 'tile'
# a class for Grid that formed of tiles
class Grid
  attr_reader :tiles
  def initialize(gridsize)
    @tiles = []
    for i in 0..gridsize do
      row = []
      for j in 0..gridsize do
        row.push(Tile.new(j, i))
      end
      @tiles.push(row)
    end
  end
end
