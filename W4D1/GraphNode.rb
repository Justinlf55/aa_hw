class GraphNode
    attr_reader :value, :neibhors
    def initialize(value)
        @value = value
        @neighbors = []
    end

    def add_neighbor(neighbor_node)
        @neighbors << neighbor_node
    end

    def bfs(starting_node,target_value)
        queue = []
        visited = Set.new(0)

        queue << starting_node

        until queue.empty?
            current_node = queue.shift
            if !visited.include?(current_node)
                return current_node if current_node.value == target_value
                queue.concat(current_node.neighbors)
                visited.add(current_node)
            end
        end

        nil
     end
end