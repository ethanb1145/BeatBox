require "./lib/node"

class LinkedList
    attr_accessor :head, :data

    def initialize
        @head = nil
    end

    # def head
    #     @head = nil
    # end

    def append(data)
        if @head
            tail.next_node = Node.new(data)
        else
            @head = Node.new(data)

        end

    end

    def tail
        node = @head

        return node if !node.next_node
        return node if !node.next_node while (node = node.next_node)

    end


end

list = LinkedList.new
list.head
list.append(10)
p list
list.append(20)
p list