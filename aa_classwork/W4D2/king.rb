class King < Piece
    include Stepable
    def symbol
        if self.color == :white
            "♔".white
        else
            "♔".red
        end
    end

    def move_diffs
        [[-1, 0], [1, 0], 
        [0, 1], [0, -1], 
        [-1, -1], [1, 1], 
        [1, -1], [-1, 1]]
    end
end