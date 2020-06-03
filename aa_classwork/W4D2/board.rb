
require_relative "piece.rb"

class Board

    attr_reader :grid
    def initialize
        @grid = Array.new(8) { Array.new(8) }
        populate_board
    end

    
    def populate_board
        # debugger
        @grid.each_with_index do |r, i|
            @grid.each_with_index do |c, j|
                if [0, 1, 6, 7].include?(i)
                    @grid[i][j] = Piece.new([i, j])
                else
                    @grid[i][j] = NullPiece.new
                end
            end
        end
    end

    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @grid[row][col] = val
    end

    def valid_start_pos?(pos)
        !self[pos].ia_a?(NullPiece)
    end

    def move_piece(start_pos, end_pos)
        pos = start_pos + end_pos
        pos.each {|ele| raise "Pos out of bounds" if !(0..7).include? ele}
        raise "No piece at start pos" if !valid_start_pos?(start_pos)
        self[end_pos] = self[start_pos]
        self[start_pos] = NullPiece.new
    end
end

board = Board.new()

board.grid.each {|row| p row}
puts
puts

p board.grid[1][3].diag_dir
# board.move_piece([1, 1], [3,3])

# board.grid.each {|row| p row}
# p board.grid


#    0   1   2    3   4   5   6   7    
# 0. [], [], [], [], [], [], [], []

# 1. [], [], [], [], [], [], [], []

# 2. [], [], [], [], [], [], [], []

# 3. [], [], [], [], [], [], [], []

# 4. [], [], [], [], [], [], [], []

# 5. [], [], [], [], [], [], [], []

# 6. [], [], [], [], [], [], [], []

# 7. [], [], [], [], [], [], [], []


# [nil, P, P, P, P, P, P, P]
# [P, P, P, P, P, P, P, P]
# [nil, P, nil, nil, nil, nil, nil, nil]
# [nil, nil, nil, nil, nil, nil, nil, nil]
# [nil, nil, nil, nil, nil, nil, nil, nil]
# [nil, nil, nil, nil, nil, nil, nil, nil]
# [P, P, P, P, P, P, P, P]
# [P, P, P, P, P, P, P, P]