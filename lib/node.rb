
class Node 
    attr_accessor :data, :next
    
    def initialize(data)
        @data = data
        @next = nil
    end

    def data
        @data
    end

    def next_node
        @next = nil
    end


end

