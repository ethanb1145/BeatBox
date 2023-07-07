require "./lib/node"

describe Node do
    it "exists" do 
        node1 = Node.new("plop")

        expect(node1).to be_an_instance_of(Node)
    end

    it "can print the data inside of the node" do 
        node1 = Node.new("plop")

        expect(node.data).to eq("plop") 
    end

    it "can move us to the next node" do 
        node1 = Node.new("plop")
        node2 = Node.new("pah")

        expect(node.next_node).to eq 
    end




end