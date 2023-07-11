require_relative 'linked_list'

class BeatBox
    attr_accessor :list, :head, :next_node, :list_head

    def initialize
        @list = LinkedList.new
        @list_head = @list.head
        @next_node = @list.next_node
    end

    def head
        @head = @list_head
    end


    def append(data)
        @list.append(data)
    end


    def count
        @list.count
    end




end