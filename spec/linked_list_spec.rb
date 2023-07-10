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
        it "makes empty data/nil into the head of the linked list" do 
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


    describe "#list" do 
        it "can list all data in the linked list" do 
            list = LinkedList.new
            list.append("doop")

            expect(list).to eq(list)
        end
    end


    describe "#head.next_node" do
        it "if head is the only data, it can output the next nil node" do
            list = LinkedList.new
            list.append("doop")

            expect(list.head.next_node).to be(nil)
        end
    end


    describe "#tail.next_node" do
        it "it can output the next nil node" do
            list = LinkedList.new
            list.append("doop")
            list.append("toop")

            expect(list.tail.next_node).to be(nil)
        end
    end


    describe "#is_empty?" do 
        it "checks if list is empty, can print true/false" do
            list = LinkedList.new

            expect(list.is_empty?).to be(true)
        end
    end


    describe "#count" do
        it "it can output the length of the linked list" do
            list = LinkedList.new
            list.append("doop")
            list.append("toop")

            expect(list.count).to eq(2)
        end
    end


    describe "to_string" do 
        it "can print the linked list as a whole string" do 
            list = LinkedList.new
            list.append("doop")
            list.append("toop")
            
            expect(list.to_string).to eq("doop toop")
        end
    end


    describe "append" do 
        it "can add data to end of linked list" do 
            list = LinkedList.new
            list.append("doop")
            
            expect(list.to_string).to eq("doop")
        end
    end


    describe "prepend" do 
        it "can add data to start of linked list" do 
            list = LinkedList.new
            list.append("doop")
            list.prepend("toop")
            
            expect(list.to_string).to eq("toop doop")
        end
    end


    describe "insert" do 
        it "can add data to an index in the linked list" do 
            list = LinkedList.new
            list.append("doop")
            list.append("toop")
            list.insert(1, "soop")
            
            expect(list.to_string).to eq("doop soop toop")
        end
    end


    describe "find" do 
        it "accepts two parameters, first is position to return, second specifies how many elements to return after index " do 
            list = LinkedList.new
            list.append("doop")
            list.append("toop")
            list.append("soop")
            list.append("bop")
            list.append("zoop")
            list.append("tzum")
            
            expect(list.find(1,2)).to eq(["toop", "soop"])
        end
    end


    describe "includes?" do
        it "can give a true/false if linked list includes a given data" do
            list = LinkedList.new
            list.append("doop")
            list.append("toop")
            list.append("soop")
            list.append("bop")
            list.append("zoop")
            list.append("tzum")

            expect(list.includes?("soop")).to be(true)
        end
    end


    describe "pop" do
        it "can remove last element of linked list" do
            list = LinkedList.new
            list.append("doop")
            list.append("toop")
            list.append("soop")
            list.append("bop")
            list.append("zoop")
            list.append("tzum")
            list.pop

            expect(list.to_string).to eq("doop toop soop bop zoop")
        end
    end


end