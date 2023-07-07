require "./lib/node"

describe Node do
    it "exists" do 
        node1 = Node.new("plop")

        expect(node1).to be_an_instance_of(Node)
    end



end