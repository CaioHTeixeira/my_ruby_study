require './lib/sort/select_sort'

RSpec.describe Asort::SelectSort do
    it "array sorted" do
        arr = [64, 25, 12, 22, 11]
        select_sort = Asort::SelectSort.new.select_sort arr

        expect(select_sort).to eql [11, 12, 22, 25, 64]
    end
end