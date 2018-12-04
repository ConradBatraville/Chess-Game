require 'singleton'

class Piece
  attr_accessor :pos

  def initialize(color, name, pos)
    @color = color
    @name = name
    @pos = pos
  end 
end

class NullPiece < Piece
  include Singleton
  
  def initialize
  end

  
end


