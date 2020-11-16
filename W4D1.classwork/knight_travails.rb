require_relative "polytreenode/polytreenode"
    require "byebug"
class KnightPathFinder
    def self.valid_moves(pos)
        possible_moves = [[1, 2], [1, -2], [-1, 2], [-1, -2], [2, 1], [-2, 1], [2, -1], [-2, -1]]
        valid_moves = []
        possible_moves.each do |move|
            x = move[0] + pos[0]
            y = move[1] + pos[1]
            if (x > 0 && x < 8) && (y > 0 && y < 8)
                valid_moves << [x, y] 
            end
        end
        valid_moves #1,2 and 2,1
    end

    attr_accessor :root, :root_node, :considered_positions, :valid_move
    def initialize(pos)
        # @valid_move = KnightPathFinder.valid_moves(pos)
        @root = pos
        @root_node = PolyTreeNode.new(root)
        @considered_positions = [root]
    end   

    def new_move_positions(position) 
        new_moves = []
       KnightPathFinder.valid_moves(position).each do |position|
         unless @considered_positions.include?(position)
            new_moves << position
            @considered_positions << position
         end
       end
       new_moves
    end

    def build_move_tree
        queue = [root_node]
        until queue.empty?
            next_node = queue.shift
            new_move_positions(next_node.value).each do |move|
                child = PolyTreeNode.new(move)
                next_node.add_child(child)
                queue << child
            end
        end
    end 
    
    def find_path(end_pos)
        last_node = root_node.dfs(end_pos)
        trace_path_back(last_node)
    end

    def trace_path_back(last_node)
        found_node = last_node
        path_arr = [found_node]
        until path_arr.last == root_node 
            path_arr << path_arr.last.parent
        end
        path = []
        path_arr.each do |value|
            path << value.value
        end
        path.reverse
    end
end


