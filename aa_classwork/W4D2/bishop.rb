class Bishop < Piece
    include Slideable

    def symbol
        if self.color == :white
            "♗".white
        else
            "♗".red
        end
    end

    def move_dirs
        diag_dir
    end
end
