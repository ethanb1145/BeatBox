require "./lib/node"

class LinkedList
    attr_accessor :head, :data, :next_node

    def initialize
        @head = nil
        @next_node = nil
    end


    def is_empty?
        if @head == nil 
            true
        else 
            false
        end
    end


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


    def length
        if is_empty? == true
            count = 0
        else 
            count = 1
            current_node = @head
            while current_node.next_node != nil
                current_node = current_node.next_node
                count += 1
            end

        end
        count
    end


end

# list = LinkedList.new
# list.append("doop")
# list.append("toop")
# list
# p list.head
# p list.head.next_node
# p list.tail.next_node
# p list.length
# # # p list.head
# # # p list.tail
# # # # p list
# # # # list.append(20)
# # # # p list
