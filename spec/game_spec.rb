require 'game'

describe Game do
  it 'a game has a grid' do
    allow(Grid).to receive(:new).and_return(true)
    expect(Game.new.grid).to eq true
  end
end
