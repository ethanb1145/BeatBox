require "rspec"
require "./lib/linked_list"
require "./lib/node"
require "./lib/beat_box"


describe BeatBox do
    describe "#initialize" do
        it "exists" do 
            bb = BeatBox.new

            expect(bb).to be_an_instance_of(BeatBox)
        end
    end


    describe "#list" do
        it "prints out empty data in the list" do 
            bb = BeatBox.new

            expect(bb.list).to be(nil)
        end
    end





end