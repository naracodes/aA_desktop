

module Stepable

    def moves(cur_pos)

        directions = move_diffs
        moves = []
        directions.each do |direction|
            moves << direction if direction.is_valid(direction[0], direction[1])
        end
    end


    def is_valid?(pos_x, pos_y)
        (@board[pos_x, pos_y].is_a(NullPiece) || @board[pos_x, pos_y].color != @color) && pos_x > -1
        && pos_x < 8 && pos_y > -1 && pos_y < 8 
    end


    def move_diffs
        nil
    end
end
