require_relative "piece.rb"

class Rook < Piece
    def symbol
        if self.color == :white
            "♖".white
        else
            "♖".red
        end
    end

    def move_dirs
        hor_vert_dir
    end
end

