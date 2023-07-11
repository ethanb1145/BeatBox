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


    xdescribe "#list" do
        it "prints out data in the list" do 
            bb = BeatBox.new

            expect(bb.list).to eq("")
        end
    end


    xdescribe "#head" do
        it "prints the head data in the list" do 
            bb = BeatBox.new

            expect(bb.list.head).to be(nil)
        end
    end


    xdescribe "#append" do
        it "adds to the beat box list" do 
            bb = BeatBox.new
            bb.append("deep doo ditt")

            expect(bb.list).to eq("deep doo ditt")
        end
    end


    xdescribe "#head" do
        it "prints the head data in the list out of multiple data" do 
            bb = BeatBox.new
            bb.append("deep doo ditt")

            expect(bb.list.head.data).to eq("deep")
        end
    end


    xdescribe "#count" do
        it "counts elements as one in linked array" do 
            bb = BeatBox.new
            bb.append("zuu shii zhuu")

            expect(bb.count).to be(1)
        end
    end







end