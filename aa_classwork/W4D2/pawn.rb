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
        [[1, 0], [-1, 0]
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
        
    end

end


#    0   1   2    3   4   5   6   7    
# 0. [], [], [], [], [], [], [], []

# 1. [], [], [], [], [], [], [], []

# 2. [], [], [], [], [], [], [], []

# 3. [], [], [], [], [], [], [], []

# 4. [], [], [], [], [], [], [], []

# 5. [], [], [], [], [], [], [], []

# 6. [], [], [], [], [], [], [], []

# 7. [], [], [], [], [], [], [], []