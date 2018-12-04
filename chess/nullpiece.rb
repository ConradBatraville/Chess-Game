class NullPiece < Piece
  include Singleton
  
  def initialize
    @name = ""
  end

  
end
