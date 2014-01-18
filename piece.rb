class Piece
  CONSTITUENT_BLOCK = "\u2588"
  
  def block
    CONSTITUENT_BLOCK
  end

  def create
    @piece = []
    2.times { @piece << block }

    [@piece, @piece]
  end
end