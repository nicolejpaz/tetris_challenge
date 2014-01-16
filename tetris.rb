require_relative 'piece'

class Tetris
  BOARD_HEIGHT = 12
  BOARD_WIDTH = 8
  STARTING_POSITION = [4,11]

  attr_reader :current_piece, :rows

  def initialize
    @rows = []
    create_board_rows
    create_board_columns
    @piece_position = STARTING_POSITION

    next_piece
  end

  def create_board_rows
    BOARD_HEIGHT.times { @rows << [] }
  end

  def create_board_columns
    @rows.each do |row|
      BOARD_WIDTH.times { row << [] }
    end
  end

  def next_piece
    piece = Piece.new
    @current_piece = piece
  end

  def x_coordinate_of_piece
    @piece_position.first
  end

  def y_coordinate_of_piece
    @piece_position.last
  end

  def collision_imminent?
    @rows[x_coordinate_of_piece][y_coordinate_of_piece].nil?
    @rows[x_coordinate_of_piece+1][y_coordinate_of_piece].nil?
    @rows[x_coordinate_of_piece][y_coordinate_of_piece-1].nil?
  end

  def drop_piece
    @rows[x_coordinate_of_piece][y_coordinate_of_piece] = @current_piece.block
    @rows[x_coordinate_of_piece+1][y_coordinate_of_piece] = @current_piece.block
    @rows[x_coordinate_of_piece][y_coordinate_of_piece+1] = @current_piece.block
    @rows[x_coordinate_of_piece+1][y_coordinate_of_piece+1] = @current_piece.block
  end

  def occupied_space?

  end

  def move_left!

  end

  def move_right!

  end
end