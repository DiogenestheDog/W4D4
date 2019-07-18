require "uniq.rb"

describe Array do 
  let(:test_arr) { [1, 2, 2, 3] }

  describe "#my_uniq" do 
    it "does not raise an error" do
      expect { test_arr.my_uniq }.to_not raise_error
    end

    it "returns an array" do
      expect(test_arr.my_uniq.class).to be(Array)
    end

    it "correctly gives distinct values" do
      expect(test_arr.my_uniq).to eq([1,2,3])
    end

  end

  describe "#two_sum" do
    it "returns an array" do
      expect(test_arr.two_sum(4).class).to be(Array)
    end
    it "returns arr of 2 length arrs" do
      expect(test_arr.two_sum(4).all? { |el| el.length == 2}).to be(true)
    end
    it "receives 1 argument" do
      expect{test_arr.two_sum(4)}.to_not raise_error
    end
    it "correctly gets two sums in correct order" do
      expect(test_arr.two_sum(4)).to eq([ [0,3], [1,2] ])
    end

    describe "#my_transpose" do

      let(:grid) { 
        [
          [0, 1, 2],
          [3, 4, 5],
          [6, 7, 8]
        ]
      } 

      it "returns an array" do 
        expect(grid.my_transpose.class).to be(Array)
      end
      it "returns an array with the correct demensions" do
        expect(grid.my_transpose.all? { |el| grid.length == el.length }).to eq(true)
      end
      it "transposes an array" do 
        expect(grid.my_transpose).to eq([
          [0, 3, 6],
          [1, 4, 7],
          [2, 5, 8]
        ])
      end
    end
  end
end