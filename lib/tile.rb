# A class for Tile that will be each element in a array of grid
class Tile
  attr_reader :alive
  def initialize(alive = false)
    @alive = alive
  end

  def birth
    @alive = true
  end
end
