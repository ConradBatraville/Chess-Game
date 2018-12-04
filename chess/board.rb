require_relative 'piece'
require 'byebug'


class Board


  def initialize
    # debugger
    @board = Array.new(8) { Array.new(8) { NullPiece.instance } }
    p populate_board
    # private
    # @sentinel = NullPiece

  end

    def move_piece(start_pos, end_pos)
      
      raise StandardError if self[start_pos] == NullPiece.instance
      raise StandardError unless valid_pos?(start_pos)
      self[end_pos] = self[start_pos]
      self[start_pos] = NullPiece.instance
      
      self[end_pos].pos = end_pos

    end

    def show_piece(pos)
      self[pos]
    end


    def [](pos)
      row, col = pos
      board[row][col]
    end
    
    def []=(pos, piece)
      row, col = pos
      board[row][col] = piece
    end

    def valid_pos?(pos)
      false
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

      @board[1][0] = Piece.new("white", "Pawn", [1, 0])
      @board[1][1] = Piece.new("white", "Pawn", [1, 1])
      @board[1][2] = Piece.new("white", "Pawn", [1, 2])
      @board[1][3] = Piece.new("white", "Pawn", [1, 3])
      @board[1][4] = Piece.new("white", "Pawn", [1, 4])
      @board[1][5] = Piece.new("white", "Pawn", [1, 5])
      @board[1][6] = Piece.new("white", "Pawn", [1, 6])
      @board[1][7] = Piece.new("white", "Pawn", [1, 7])


      @board[7][0] = Piece.new("black", "Rook", [7, 0])
      @board[7][7] = Piece.new("black", "Rook", [7, 7])

      @board[7][1] = Piece.new("black", "Knight", [7, 1])
      @board[7][6] = Piece.new("black", "Knight", [7, 6])

      @board[7][2] = Piece.new("black", "Bishop", [7, 2])
      @board[7][5] = Piece.new("black", "Bishop", [7, 5])

      @board[7][3] = Piece.new("black", "Queen", [7, 3])
      @board[7][4] = Piece.new("black", "King", [7, 4])

      @board[6][0] = Piece.new("black", "Pawn", [6, 0])
      @board[6][1] = Piece.new("black", "Pawn", [6, 1])
      @board[6][2] = Piece.new("black", "Pawn", [6, 2])
      @board[6][3] = Piece.new("black", "Pawn", [6, 3])
      @board[6][4] = Piece.new("black", "Pawn", [6, 4])
      @board[6][5] = Piece.new("black", "Pawn", [6, 5])
      @board[6][6] = Piece.new("black", "Pawn", [6, 6])
      @board[6][7] = Piece.new("black", "Pawn", [6, 7])



    end






    private

    attr_accessor :board


end