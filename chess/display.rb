require "colorize"
require_relative "cursor"
require_relative "board"

class Display
    attr_reader :rows, :board, :cursor
    def initialize(board)
        @board = board
        @cursor = Cursor.new([0, 0], board)
    end
    
    def render 
        for i in 0..7
            output = ""
            for j in 0..7
                pos = [i, j]
                if cursor.cursor_pos == pos
                    output << board[pos].name.red
                else
                    output << board[pos].name.blue
                end
            end
            puts output
        end
        # rows[cursor_pos].colorize(:blue)
        # make_grid.each { |row| puts row.join }
    end
    
    def move_cursor
        while true
            self.render
            cursor.get_input
        end
    end
    
    def make_grid
        @board.rows.map.with_index do |row, i|
            build_row(row, i)
        end
    end
    
    # def build_row(row, i)
    #     row.map.with_index do |piece, j|
    
    #     end
    # end
    
    
    
    
    
end
