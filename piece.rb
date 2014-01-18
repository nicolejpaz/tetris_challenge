class Piece
  CONSTITUENT_BLOCK = "\u2588"

  attr_reader :representation

  def initialize
    @representation = build_representation
  end

  def block
    CONSTITUENT_BLOCK
  end

  private

  def build_representation
    [
      [CONSTITUENT_BLOCK, CONSTITUENT_BLOCK],
      [CONSTITUENT_BLOCK, CONSTITUENT_BLOCK]
    ]
  end
end