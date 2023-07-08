require "rspec"
require "./lib/linked_list"
require "./lib/node"


describe LinkedList do
    describe "#initialize" do
        it "exists" do 
            list = LinkedList.new

            expect(list).to be_an_instance_of(LinkedList)
        end
    end


    describe "#head" do
        it "exists" do 
            list = LinkedList.new

            expect(list.head).to be(nil)
        end
    end

    
    describe "#append" do
        it "adds to the list" do 
            list = LinkedList.new

            expect(list.append).to be("doop")
        end
    end


end