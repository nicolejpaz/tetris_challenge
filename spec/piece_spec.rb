require_relative "../piece"

describe Piece do
  before :each do
    @piece = Piece.new
  end

  context "#new" do
    it "creates a new instance of a Piece" do
      @piece.should be_an_instance_of Piece
    end
  end
end