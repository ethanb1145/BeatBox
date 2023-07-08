require "./lib/node"


class LinkedList
    attr_accessor :head, :data, :next_node


    def initialize
        @head = nil         # empty by default
        @next_node = nil    # empty by default 
    end


    def is_empty?           # checks if linked list is empty
        if @head == nil     # if the head is empty, the list is empty
            true
        else 
            false
        end
    end


    def append(data)        # adds new data to the linked list
        if @head            # if head has data, adds new data to the list 
            tail.next_node = Node.new(data)
        else
            @head = Node.new(data)      # if head has no data, adds data to the head

        end

    end


    def tail               # tail is end of the linked list
        node = @head

        return node if !node.next_node      # if there is nil for the next node, returns that node as the tail
        return node if !node.next_node while (node = node.next_node)        # returns tail once the next node is not a node / is nil

    end


    def length              # checks length of data in linked list
        if is_empty? == true
            count = 0
        else 
            count = 1
            current_node = @head
            while current_node.next_node != nil         # loops to count data and stops when the next node is nil
                current_node = current_node.next_node
                count += 1
            end

        end
        count
    end


    def to_string           # turns list into a whole string, Code Help channel reference 
        if @head == nil     # no data = no string
            nil
        else 
            current_node = @head            

            until current_node.next_node == nil do      # loops to change current data into string, stops when the next node is nil
                string = "#{string} #{current_node.data}"
                current_node = current_node.next_node
            end

            string = "#{string} #{current_node.data}"
            string.strip

        end

    end
end



# TEST COMMANDS 
# =========================

# list = LinkedList.new
# list.append("doop")
# list.append("toop")
# list
# p list.head
# p list.head.next_node
# p list.tail.next_node
# p list.length
# p list.to_string
# # # # p list.head
# # # # p list.tail
# # # # # p list
# # # # # list.append(20)
# # # # # p list
