class Piece
  def initialize(color, name, pos)
    @color = color
    @name = name
    @pos = []
  end 
end

class NullPiece < Piece
  def initialize
  end
end