module Slideable

    HORIZONTAL_DIRS = [[1,0]]
    def hor_dir
        (0..7).map { |idx| [self.pos.first, idx] }
        .reject { |pos| pos == self.pos }
        
    end


    def vert_dir
        (0..7).map { |idx| [idx, self.pos.last] }
        .reject { |pos| pos == self.pos }
    end
    
    def diag_dir
        
        #right to left
        max = self.pos.inject(:-)
        right_to_left = (max..7).map { |row_i| [row_i, (row_i - max).abs] }
        .reject { |pos| pos == self.pos }
        .reject { |pos| pos.first < 0 || pos.last > 7 }
        
        #left to right
        max = self.pos.sum
        left_to_right = (0..max).map { |row_i| [row_i, (row_i - max).abs] }
        .reject { |pos| pos == self.pos }
        .reject { |pos| pos.first > 7 || pos.last > 7 }

        left_to_right + right_to_left
    end

    def moves(cur_pos)
        move_dirs
        # if self.is_a? Rook
        #     return self.hor_dir + self.vert_dir
        # elsif self.is_a? Queen
        #     return self.hor_dir + self.vert_dir + self.diag_dir
        # elsif self
    end
end

class Piece
    include Slideable
    
    attr_reader :pos
    def initialize (pos)
        @pos = pos
    end

    def inspect
        "P"
    end
end



module Stepable
    
end

class Rook < Piece
    include Slideable
end

class Bishop < Piece
    include Slideable
end

class Queen < Piece
    include Slideable

    def move_dirs
        [0,1]
    end
end




#    0   1   2    3   4   5   6   7    
# 0. [], [], [], [], [], [], [], []

# 1. [], [], [], [], [], [], [], []

# 2. [], [], [P], [], [R], [], [], []

# 3. [], [], [1,1], [], [], [], [], []

# 4. [], [], [], [], [], [], [], []

# 5. [], [], [], [], [], [], [], []

# 6. [], [], [], [], [], [], [], []

# 7. [], [], [], [], [], [], [], []

dx, dy = [1, -1]


# module Searchable
#     def dfs(target)
#         return self if self.value == target
#         p self
#         self.children.each do |child| 
#             child_result = child.dfs(target)
#             return child_result if child_result
#         end
#         return nil 
#     end

#     def bfs(target)
#         queue = [self]
#         until queue.empty?
#             ele = queue.shift
#             if ele.value == target
#                 return ele
#             else
#                 queue += ele.children
#             end
#         end
#         nil
#     end
    
# end


# class PolyTreeNode

#     include Searchable

#     attr_accessor :value, :parent, :children

#     def initialize(value)
#         @value = value
#         @parent = nil
#         @children = []
#     end

#     def parent=(node_instance)
#         if node_instance != @parent
#             self.parent.children.delete(self) if parent
#             @parent = node_instance
#             node_instance.children << self  if node_instance
#         end
#     end

#     def add_child(new_child)
#         new_child.parent=(self)
#     end

#     def remove_child(child)
#         raise "node not child" if !child.parent 
#         child.parent=(nil)
#     end

#     def inspect
#         "val: #{value}, parent: #{parent.value}, children: #{children.map {|child| child.value}}"
#     end
# end
