require_relative 'piece'

class Tetris
  BOARD_HEIGHT = 12
  BOARD_WIDTH = 8
  STARTING_POSITION = [4,11]

  attr_reader :current_piece, :rows, :piece_position

  def initialize
    @rows = []
    create_board_rows!
    create_board_columns!

    next_piece
  end

  def reset_piece_position
    @piece_position = STARTING_POSITION
  end

  def next_piece
    piece = Piece.new
    @current_piece = piece
    reset_piece_position
  end

  def x_coordinate_of_piece
    @piece_position.first
  end

  def y_coordinate_of_piece
    @piece_position.last
  end

  def any_board_pieces_in_the_way?
    2.times do |y|
      @rows[x_coordinate_of_piece][y_coordinate_of_piece-y].nil?
    end
    clear_right?
  end

  def clear_left?
    @rows[x_coordinate_of_piece-1][y_coordinate_of_piece].nil?
  end

  def clear_right?
    @rows[x_coordinate_of_piece+1][y_coordinate_of_piece].nil?
  end

  def clear_down?
    @rows[x_coordinate_of_piece][y_coordinate_of_piece-1].nil?
    @rows[x_coordinate_of_piece+1][y_coordinate_of_piece-1].nil?
  end

  def drop_piece
    2.times do |x|
      2.times do |y|
        @rows[x_coordinate_of_piece+x][y_coordinate_of_piece+y] = @current_piece.block
      end
    end
    next_piece
  end

  def move_left!
    if clear_left?
      @piece_position = [x_coordinate_of_piece-1, y_coordinate_of_piece]
    end
  end

  def move_right!
    if clear_right?
      @piece_position = [x_coordinate_of_piece+1, y_coordinate_of_piece]
    end
  end

  def advance_piece!
    if clear_down?
      @piece_position = [x_coordinate_of_piece, y_coordinate_of_piece-1]
    else
      drop_piece
    end
  end

  private

  def create_board_rows!
    BOARD_HEIGHT.times { @rows << [] }
  end

  def create_board_columns!
    @rows.each do |row|
      BOARD_WIDTH.times { row << [] }
    end
  end
end