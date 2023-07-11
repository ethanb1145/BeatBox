require_relative 'linked_list'

class BeatBox
    attr_accessor :list

    def initialize
        @list = LinkedList.new
    end


    def append(data)
        data.split.each {|element| @list.append(element)}
    end


    def count
        @list.count
    end




end