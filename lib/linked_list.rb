require "./lib/node"


class LinkedList
    attr_accessor :head, :data, :next_node


    def initialize
        @head = nil         # empty by default
        @next_node = nil    # empty by default
        @data = data
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


    def count              # checks length of data in linked list
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


    def prepend(data)           # adds given data to start of linked list
        if is_empty? == true            # head.nil? adds data to first index
            @head = Node.new(data)
        else 
            current_head = Node.new(data)       # variable accepts new data
            current_head.next_node = @head      # places it before previous head
            @head = current_head                # makes new data the new head
        end
    end


    def insert(index, data)     # adds data and given index
        node = Node.new(data)
        if index == 0           # if given index is 0, inserts new data 
            node.next_node = @head      # places data before head
            @head = node                # replaces old head 
        else
            current_head = @head        # else, head stays the same 
            (index - 1).times {current_head = current.next_node}        # .times method iterates through to find position
            node.next_node = current_head.next_node             # updates surrounding nodes 
            current_head.next_node = node
        end
    end


    def find(start_position, num_elements)      # prints data at given index and the given amount of elements after
        return [] if start_position < 0 || num_elements <= 0 || @head.nil?      # can't run if empty
      
        result = []                 # empty array to store results
        current = @head             # start position
        count = 0
      
        while current && count < start_position + num_elements          # checks for range of input
          result << current.data if count >= start_position             # result takes in data 
          current = current.next_node                                   
          count += 1
        end
      
        result
    end


    def includes?(value)                # checks if linked list includes a given value
        return false if @head.nil?      
      
        current = @head                 # starts at head
      
        while current
          return true if current.data == value          # iterates for the given value
          current = current.next_node                   
        end
      
        false                           # returns false if value is not in linked list
    end


    def pop                             # removes last element from linked list
        if @head.next_node.nil?         # removes head if it's the only data
            popped_node = @head
            @head = nil
            popped_node
        end

        current_node = @head            # starts at head
        until current_node.next_node.next_node.nil?         # stops when the last node has nil as its next node
            current_node = current_node.next_node
        end

        popped_node = current_node.next_node                # removes last node
        current_node.next_node = nil                        # turns last node into nil
        popped_node
    end


end



# TEST COMMANDS 
# =========================

# list = LinkedList.new
# list.append("doop")
# list.append("toop")
# list.append("aoop")
# list.append("roop")
# list.append("zoop")
# list
# p list.find(1,3)
# p list.to_string
# # list
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

