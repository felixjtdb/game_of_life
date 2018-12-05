require 'grid'

describe Grid do
  before do
    allow(Tile).to receive(:new).and_return(true)
    @grid = Grid.new(9)
  end

  it 'a new grid contains a 2d array of tile' do
    expect(@grid.tiles[0][0]).to eq true
  end
end
