require_relative "stepable.rb"

class Knight < Piece
    include Stepable
    def symbol
        if self.color == :white
            "♘".white
        else
            "♘".red
        end
    end

    def move_diffs
        [[- 2,- 1], [-2, 1],
        [-1,-2], [-1, 2],
        [1, -2], [1, 2],
        [2, -1], [2, 1]]
    end
end