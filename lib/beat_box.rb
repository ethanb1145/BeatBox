require_relative 'linked_list'


class BeatBox
    attr_accessor :linked_list, :head

    def initialize
        @linked_list = LinkedList.new
        @head = nil
    end


    def list
        puts @linked_list
    end


    def head
        if @linked_list.head.nil?
            nil
        else 
            puts {list.head.data}
        end
    end


    def append(data)
        @linked_list.append(data)
    end


    def count
        @linked_list.count
    end




end