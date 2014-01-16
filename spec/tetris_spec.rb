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

  context "#next_piece" do
    it "creates a new instance of Piece and assigns it to @current_piece" do
      @tetris.next_piece
      @tetris.current_piece.should be_an_instance_of Piece
    end
  end

  context "#rows" do
    it "reflects the specified constant BOARD_HEIGHT" do
      @tetris.rows.length.should eql 12
    end

    it "reflects the specified constant BOARD_WIDTH" do
      @tetris.rows.first.length.should eql 8
    end
  end
end