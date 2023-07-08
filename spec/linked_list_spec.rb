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




    describe "#head" do
        it "can accept first data as the head" do
            list = LinkedList.new
            list.append("doop")

            expect(list.head.data).to eq("doop")
        end
    end


end