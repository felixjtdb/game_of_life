require 'tile'

describe Tile do
  it 'a new tile is not alive when created' do
    tile = Tile.new
    expect(tile.alive).to eq false
  end
end
