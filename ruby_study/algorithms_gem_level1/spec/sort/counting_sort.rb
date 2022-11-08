require './lib/sort/counting_sort'

RSpec.describe Asort::CountingSort do
    it "Sorted Array" do
        arr = [1, 4, 1, 2, 7, 5, 2]
        counting_sort = Asort::CountingSort.new.counting_sort arr

        expect(counting_sort).to eql [1,1,2,2,4,5,7]
    end

    it "Sorted Array with zero" do
        arr = [5, 9, 0, 3, 8, 5, 1, 9]
        counting_sort = Asort::CountingSort.new.counting_sort arr

        expect(counting_sort).to eql [0,1,3,5,5,8,9,9]
    end
end