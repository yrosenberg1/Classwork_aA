require "tdd_exercise"

describe "my_uniq" do
    let(:array) {[1, 2, 1, 3, 3]}
    it "accepts an array as an argument" do
        expect{my_uniq(array)}.not_to raise_error
    end

    it "returns a new array of the unique elements in the same order of the original array" do
        expect(my_uniq(array)).to eq([1, 2, 3])
        expect(my_uniq(array)).not_to be(array)
    end
end

describe "two_sum" do
   let(:array) {[-1, 0, 2, -2, 1]}

    it "accepts an array as an argument" do
        expect{two_sum(array)}.not_to raise_error
    end

    it "finds all indexes of the pairs of positions where the elements sum equals zero" do
        expect(two_sum(array)).to eq([[0, 4], [2, 3]])
    end

    it "returns [] when no pair is found" do
        expect(two_sum([1, 2, 3, 4])).to eq([])
    end
end
    
describe "my_transpose" do
        let(:array1) { [0, 1, 2] }
        let(:array2) { [3, 4, 5] }
        let(:array3) { [6, 7, 8] }

    it "should accept any number of arrays as an argument" do
        expect{my_transpose(array1)}.not_to raise_error
        expect{my_transpose(array1, array2)}.not_to raise_error
        expect{my_transpose(array1, array2, array3)}.not_to raise_error
    end

    it "should convert our arrays to a 2D array whose subarrays index correspond to our orginal elements index" do
        expect(my_transpose(array1, array2, array3)).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
    end
end


describe "stock_picker" do
    let(:array1) {[100, 350, 1000, 700, 0, 20, 400]}
    let(:array2) {[1500, 0, 400, 90, 275, 600, 1000, 200]}

    it "should accept an array as an argument" do
        expect{stock_picker(array1)}.not_to raise_error
    end

    it "should return an array of the days which would be most profitable to buy and sell" do
        expect(stock_picker(array1)).to eq([0, 2])
        expect(stock_picker(array2)).to eq([1, 6])
    end

    it "should return those days in the proper order of buy and then sell" do
       expect(stock_picker(array1)).not_to eq([2, 4])
       expect(stock_picker(array2)).not_to eq([1, 0])
    end
end