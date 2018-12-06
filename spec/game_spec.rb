require 'game'

describe Game do
  let(:nasty_xy) { '0,0' }
  let(:coordinates) { { x: 0, y: 0 } }
  let(:tile) { double('test_tile', :birth => true) }
  let(:grid) { double(tiles: Array.new(3) { Array.new(3) { tile } }) }
  let(:game) { Game.new(grid) }

  it 'a game has a grid' do
    expect(game.grid).to eq grid
  end

  it 'prompt_for_coordinates outputs a message to console' do
    allow(game).to receive(:input).and_return true
    expect(game).to receive(:input)
    expect{ game.prompt_for_coordinates }.to output.to_stdout
  end

  it 'set_tile_alive calls tile.birth' do
    expect(game.grid.tiles[coordinates[:x]][coordinates[:y]]).to receive(:birth)
    game.set_tile_alive(coordinates)
  end

  it 'input returns hash of the input string' do
    expect(game.input(nasty_xy)).to eq(coordinates)
  end
end
