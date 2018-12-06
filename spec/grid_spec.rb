require 'grid'

describe Grid do
  let(:coordinates){ { x: 1, y: 1 } }
  let(:dead_tile) { double('Tile', alive: false) }
  let(:live_tile) { double('Tile', alive: true) }
  let(:preset_grid) {
    [[dead_tile, live_tile, dead_tile],
    [live_tile, dead_tile, live_tile],
    [dead_tile, live_tile, dead_tile]]
  }     


  before do
    allow_any_instance_of(Grid).to receive(:generate_grid).and_return(preset_grid)
    allow(Tile).to receive(:new).and_return(dead_tile)
    @grid = Grid.new(2)
  end

  it 'a new grid contains a 2d array of tile' do
    expect(@grid.tiles[0][0].alive).to eq false
  end

  describe '#neighbours' do
    it '4 living neighbours' do
      expect(@grid.get_neighbours(coordinates)).to eq 4
    end
  end
end
