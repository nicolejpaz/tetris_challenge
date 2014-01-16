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
      2.times do |index|
        @tetris.rows[4+index][11+index].should eql "\u2588"
      end
    end
  end

  context "#move_left!" do
    it "moves the piece to the left" do
      @tetris.move_left!
      @tetris.piece_position.should eql [3,11]
    end
  end

  context "#move_right!" do
    it "moves the piece to the right" do
      @tetris.move_right!
      @tetris.piece_position.should eql [5,11]
    end
  end

  context "#move_down!" do
    it "moves the piece down" do
      @tetris.move_down!
      @tetris.piece_position.should eql [4,10]
    end
  end

  context "#clear_left?" do
    it "checks if the space to the left is clear" do
      @tetris.clear_left?.should eql true
    end
  end

  context "#clear_right?" do
    it "checks if the space to the right is clear" do
      @tetris.clear_right?.should eql true
    end
  end

  context "#clear_down?" do
    it "checks if the space below is clear" do
      @tetris.clear_down?.should eql true
    end
  end

  context "#reset_position" do
    it "resets the piece position to the starting position" do
      @tetris.move_down!
      @tetris.reset_piece_position
      @tetris.piece_position.should eql [4,11]
    end
  end
end