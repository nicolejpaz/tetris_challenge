require_relative '../piece'

describe Piece do
  before :each do
    @piece = Piece.new
  end

  context "#new" do
    it "creates a new instance of a Piece" do
      @piece.should be_an_instance_of Piece
    end
  end

  context "block" do
    it "is a single black square representing the blocks that create the Tetris piece" do
      @piece.block.should eql "\u2588"
    end
  end

  context "create" do
    it "creates a piece from the individual blocks" do
      @piece.create.should eql [["\u2588", "\u2588"], ["\u2588", "\u2588"]]
    end
  end
end