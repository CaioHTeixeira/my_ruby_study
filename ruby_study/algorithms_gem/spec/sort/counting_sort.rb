require './lib/sort/counting_sort'

RSpec.describe Asort::CountingSort do
    it "Sorted Array" do
        arr = [1, 4, 1, 2, 7, 5, 2]
        counting_sort = Asort::CountingSort.new.counting_sort arr

        expect(counting_sort).to eql [1,1,2,2,4,5,7]
    end
end