require 'grid'

describe Grid do
  let(:grid) { Grid.new(9) }
  
  it 'a new grid contains a 2d array of tile' do
    allow(Tile).to receive(:new).and_return(true)
    expect(grid.tiles[0][0]).to eq true
  end
end
