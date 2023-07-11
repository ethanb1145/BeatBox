require_relative 'linked_list'


class BeatBox
    attr_reader :linked_list

    def initialize
        @linked_list = LinkedList.new
    end


    def append(data)
        @linked_list.append(data)
    end


    def count
        @linked_list.count
    end

    


end