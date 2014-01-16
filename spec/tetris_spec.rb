require_relative '../tetris'

describe Tetris do
  before :each do
    @tetris = Tetris.new 
  end

  context "#new" do
    it "creates a new Tetris object" do
      @tetris.should be_an_instance_of Tetris
    end
  end

  context "#drop" do
    it "creates a new Piece object" do
      @tetris.drop.should be_an_instance_of Piece
    end
  end
end