require "./lib/node"


class LinkedList
    attr_accessor :head, :data, :next_node


    def initialize
        @head = nil         
        @next_node = nil    
        @data = data
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

        return node if !node.next_node      #
        return node if !node.next_node while (node = node.next_node)        

    end


    def count              
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


    def to_string           
        if @head == nil     
            nil
        else 
            current_node = @head            

            until current_node.next_node == nil do      
                string = "#{string} #{current_node.data}"
                current_node = current_node.next_node
            end

            string = "#{string} #{current_node.data}"
            string.strip

        end
    end


    def prepend(data)           
        if is_empty? == true            
            @head = Node.new(data)
        else 
            current_head = Node.new(data)       
            current_head.next_node = @head     
            @head = current_head                
        end
    end


    def insert(index, data)     
        node = Node.new(data)
        if index == 0           
            node.next_node = @head      
            @head = node                
        else
            current_head = @head        
            (index - 1).times {current_head = current.next_node}        
            node.next_node = current_head.next_node             
            current_head.next_node = node
        end
    end


    def find(start_position, num_elements)      
        return [] if start_position < 0 || num_elements <= 0 || @head.nil?     
      
        result = []                
        current = @head             
        count = 0
      
        while current && count < start_position + num_elements          
          result << current.data if count >= start_position             
          current = current.next_node                                   
          count += 1
        end
      
        result
    end


    def includes?(value)                
        return false if @head.nil?      
      
        current = @head                
      
        while current
          return true if current.data == value          
          current = current.next_node                   
        end
      
        false                          
    end


    def pop                             
        if @head.next_node.nil?         
            popped_node = @head
            @head = nil
            popped_node
        end

        current_node = @head            
        until current_node.next_node.next_node.nil?         
            current_node = current_node.next_node
        end

        popped_node = current_node.next_node                
        current_node.next_node = nil                       
        popped_node
    end
end