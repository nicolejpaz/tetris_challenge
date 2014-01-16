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

  context "#x_coordinate_of_piece" do
    it "reflects the x coordinate for the current piece" do
      @tetris.x_coordinate_of_piece.should eql 4
    end
  end

  context "#y_coordinate_of_piece" do
    it "reflects the y coordinate for the current piece" do
      @tetris.y_coordinate_of_piece.should eql 11
    end
  end

  context "#collision_imminent?" do
    it "should return true if there are not any pieces to the left, right or bottom" do
      @tetris.collision_imminent?.should eql true
    end
  end

  context "#drop_piece" do
    it "adds current piece to rows" do
      @tetris.drop_piece
      @tetris.rows[4][11].should eql "\u2588"
      @tetris.rows[5][12].should eql "\u2588"
    end
  end
end