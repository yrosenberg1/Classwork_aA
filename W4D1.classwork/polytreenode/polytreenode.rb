require "byebug"
class PolyTreeNode
    attr_reader :value, :children, :parent
    def initialize(value)
        @value = value
        @children =[] 
        @parent = nil
      end

    def parent=(dad)
      if dad == nil
        @parent = dad
      end
      if @parent != nil
        @parent.children.delete(self)
        @parent = dad
        dad.children << self
      end
      if @parent == nil && dad != nil
        @parent = dad
        dad.children << self
      end
    end

    # def inspect
    #   { 'value' => @value, 'parent_value' => @parent }.inspect
    # end

    def add_child(child)
      child.parent = self
    end

    def remove_child(child)
      if !@children.include?(child)
        raise "node is not a child"
      else 
        child.parent = nil
      end
    end

    def dfs(target_value)
      node = self
      return node if node.value == target_value
      
      node.children.each do |child|
        left = child.dfs(target_value)
        if left != nil 
          return left
        end
      end

      return nil
    end

end