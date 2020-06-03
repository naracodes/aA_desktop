require "colorize"
class Pawn

    def symbol
        if self.color == :white
            "♙".white
        else
            "♟︎".red
        end
    end

    def moves
        forward_steps() + side_attacks()
    end

    def is_valid?(pos_x, pos_y)
        @board[pos_x, pos_y].is_a?(NullPiece) && pos_x > -1 && pos_x < 8 && pos_y > -1 && pos_y < 8
    end


    private
    def at_start_row?
        (self.color == :white && self.pos[0] == 6) ||
        (self.color == :black && self.pos[0] == 1)
    end

    def forward_dir #returns 1 or -1
        self.color == :white ? -1 : 1
    end

    def forward_steps
        x = self.pos[0]
        y = self.pos[1]
        dx = forward_dir
        if at_start_row?
            moves = [[x + dx, y], [x + (2 * dx), y]]
            return moves.select { |move| is_valid?(move) }
        else
            return [x + dx, y] if is_valid?([x + dx, y])
        end
    end

    def side_attacks
        x = self.pos[0]
        y = self.pos[1]
        dx, dy = forward_dir, forward_dir 
        moves = [[x+dx, y+dy], [x+dx, y-dy]].select { |move| self[move].color != self.color && pos_x > -1 && pos_x < 8 && pos_y > -1 && pos_y < 8 }
        moves
    end
end


#    0   1   2    3   4   5   6   7    
# 0. [], [], [], [], [], [], [], []

# 1. [], [], [], [], [], [], [], []

# 2. [], [], [], [], [P], [], [], []

# 3. [], [], [], [W], [], [W], [], []

# 4. [], [], [W], [], [W], [], [], []

# 5. [], [], [], [P], [], [], [], []

# 6. [], [], [], [], [], [], [], []

# 7. [], [], [], [], [], [], [], []