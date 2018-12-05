require 'tile'

describe Tile do
  it 'a new tile takes its coordinates upon creation' do
    expect(Tile).to respond_to(:new).with(2).arguments
  end
end
