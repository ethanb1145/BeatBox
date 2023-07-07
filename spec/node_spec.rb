require "rspec"
require "./lib/node"


describe Node do
    describe "#initialize" do
        it "exists" do 
            node1 = Node.new("plop")

            expect(node1).to be_an_instance_of(Node)
        end
    end


    describe "#data" do
        it "can print the data inside of the node" do 
            node1 = Node.new("plop")

            expect(node1.data).to eq("plop") 
        end
    end

    describe "next_node" do 
        it "can move us to the nil node" do 
            node1 = Node.new("plop")

            expect(node1.next_node).to be(nil)
        end
    end
end