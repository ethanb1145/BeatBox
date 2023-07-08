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


    describe "#tail" do
        it "can accept last data as the tail" do
            list = LinkedList.new
            list.append("doop")
            list.append("toop")

            expect(list.tail.data).to eq("toop")
        end
    end


end


    describe "#list" do 
        it "can list all data in the linked list" do 
            list = LinkedList.new
            list.append("doop")

            expect(list).to eq(list)
        end

    end