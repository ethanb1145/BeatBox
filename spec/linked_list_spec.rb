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


    describe "#tail" do
        it "exists" do
            list = LinkedList.new
            list.append(10)
            list.tail

            expect(list.tail).to eq(10)
        end
    end


end