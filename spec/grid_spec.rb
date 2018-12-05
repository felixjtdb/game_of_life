require 'grid'

describe Grid do
  let(:grid) { Grid.new(9) }
  it 'a new grid contains a 2d array of tile' do
    expect(grid.tiles[0][0]).to be_an_instance_of(Tile)
  end
end
