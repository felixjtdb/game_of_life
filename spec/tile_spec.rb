require 'tile'

describe Tile do
  let(:tile) { Tile.new }
  it 'a new tile is not alive when created' do
    expect(tile.alive).to eq false
  end
  it 'birth() sets alive to true' do
    tile.birth
    expect(tile.alive).to eq true
  end
end
