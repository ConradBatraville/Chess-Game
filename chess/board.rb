require_relative 'piece'
require 'byebug'

class Board

  def initialize
    # debugger
    @board = Array.new(8) { Array.new(8) }
    p populate_board
    # private
    # @sentinel = NullPiece

  end

    def move_piece(start_pos, end_pos)
      board[start_pos] = nil
      board[end_pos] = 
      raise StandardError if piece(start_pos) 
      raise StandardError unless valid_pos?(start_pos)
    end

    def [](pos)
      row, col = pos
      @board[row][col]
    end

    def []=(pos, piece)
      @board[row][col] = piece
    end


  

    def populate_board
      
      @board[0][0] = Piece.new("white", "Rook", [0, 0])
      @board[0][7] = Piece.new("white", "Rook", [0, 7])

      @board[0][1] = Piece.new("white", "Knight", [0, 1])
      @board[0][6] = Piece.new("white", "Knight", [0, 6])

      @board[0][2] = Piece.new("white", "Bishop", [0, 2])
      @board[0][5] = Piece.new("white", "Bishop", [0, 5])

      @board[0][3] = Piece.new("white", "Queen", [0, 3])
      @board[0][4] = Piece.new("white", "King", [0, 4])

      @board[1][0..7] = Piece.new("white", "Pawn", [0, 0..7])



      @board[7][0] = Piece.new("black", "Rook", [7, 0])
      @board[7][7] = Piece.new("black", "Rook", [7, 7])

      @board[7][1] = Piece.new("black", "Knight", [7, 1])
      @board[7][6] = Piece.new("black", "Knight", [7, 6])

      @board[7][2] = Piece.new("black", "Bishop", [7, 2])
      @board[7][5] = Piece.new("black", "Bishop", [7, 5])

      @board[7][3] = Piece.new("black", "Queen", [7, 3])
      @board[7][4] = Piece.new("black", "King", [7, 4])

      @board[6][0..7] = Piece.new("black", "Pawn", [6, 0..7])

      @board[2..5][0..7] = NullPiece.new

    end

end