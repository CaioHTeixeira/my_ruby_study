require './lib/sort/bubble_sort'

RSpec.describe Asort::BubbleSort do
    it "array sorted" do
        arr = [5, 1, 4, 2, 8]
        bubble_sort = Asort::BubbleSort.new.bubble_sort arr

        expect(bubble_sort).to eql [1,2,4,5,8]
    end

    it "negative array sorted" do
        arr = [-1, -3]
        bubble_sort = Asort::BubbleSort.new.bubble_sort arr

        expect(bubble_sort).to eql [-3,-1]
    end
end