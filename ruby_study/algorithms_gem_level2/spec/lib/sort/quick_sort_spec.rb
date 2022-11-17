require './lib/sort/quick_sort'

RSpec.describe Asort::QuickSort do
    it "Array Sorted" do
        arr = [10, 80, 30, 90, 40, 50, 70]
        quick_sort = Asort::QuickSort.new.quick_sort arr

        expect(quick_sort).to eql [10, 30, 40, 50, 70, 80, 90]
    end
end