class Piece
  def create_block
    "\u2588"
  end

  def create_piece
    @piece = ""
    2.times { @piece << "#{create_block} " }

    [@piece, @piece]
  end
end