# A class for Tile that will be each element in a array of grid
class Tile
  def initialize(x, y, alive = false) # x and y coordinates, I shall not say coordinate at any point in this code
    @x = x
    @y = y
    @alive = alive
  end
end
