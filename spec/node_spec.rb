require "rspec"
require "./lib/node"


describe Node do
    describe "#initialize" do
        it "exists" do 
            node1 = Node.new("plop")

            expect(node1).to be_an_instance_of(Node)
        end
    end


    xdescribe "#data" do
        it "can print the data inside of the node" do 
            node1 = Node.new("plop")

            expect(node.data).to eq("plop") 
        end
    end

    xdescribe "next_node" do 
        it "can move us to the nil node" do 
            node1 = Node.new("plop")
            node2 = Node.new("pah")

            expect(node.next_node).to be(nil)
        end
    end
end