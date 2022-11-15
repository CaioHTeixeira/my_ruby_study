require './lib/sort/merge_sort'

RSpec.describe Asort::MergeSort do
    it "Array sorted" do
        arr = [38, 27, 43, 3, 9, 82, 10]
        merge_sort = Asort::MergeSort.new.sort arr, 0, arr.length - 1

        expect(merge_sort).to eql [3, 9, 10, 27, 38, 43, 82]
    end
end