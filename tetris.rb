require_relative 'piece'

class Tetris
  BOARD_HEIGHT = 12
  BOARD_WIDTH = 8

  attr_reader :current_piece, :rows

  def initialize
    @rows = []
    create_board_rows
    create_board_columns

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
    @current_piece = Piece.new
  end
end