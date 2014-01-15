require_relative "../piece"

describe Piece do
  before :each do
    @piece = Piece.new
  end

  context "#new" do
    it "creates a new instance of a Piece" do
      @piece.should be_an_instance_of Piece
    end
  end

  context "create_block" do
    it "creates a single black square representing the blocks that create the Tetris piece" do
      @piece.create_block.should eql "\u2588"
    end
  end
end