require './lib/array/reorder_index'

RSpec.describe PArray::ReorderIndex do
    it "array of length 3 reordered successfully" do
        input = [10, 11, 12]
        index = [1, 0, 2]

        reordered_output = PArray::ReorderIndex.new.reorder_index input, index
        index_output = PArray::ReorderIndex.new.arr_index

        expect(reordered_output).to eql [11, 10, 12]
        expect(index_output).to eql [0, 1, 2] 
    end

    it "array of length 5 reordered successfully" do
        input = [50, 40, 70, 60, 90]
        index = [3,  0,  4,  1,  2]

        reordered_output = PArray::ReorderIndex.new.reorder_index input, index
        index_output = PArray::ReorderIndex.new.arr_index

        expect(reordered_output).to eql [40, 60, 90, 50, 70]
        expect(index_output).to eql [0, 1, 2, 3, 4]
    end
end