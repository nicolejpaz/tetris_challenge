class Piece
  def block
    "\u2588"
  end

  def create
    @piece = []
    2.times { @piece << block }

    [@piece, @piece]
  end
end