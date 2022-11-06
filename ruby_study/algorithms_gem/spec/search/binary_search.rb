require './lib/search/binary_search'

RSpec.describe Asearch::BinarySearch do
    arr = [10, 20, 30, 50, 60, 80, 110, 130, 140, 170]
    array_length = arr.length
    
    it "item found" do
        value = 110
        binary_search = Asearch::BinarySearch.new
            .binary_search arr, 0, array_length - 1, value
        
        expect(binary_search).to eql 6
    end

    it "item not found" do
        value = 114
        binary_search = Asearch::BinarySearch.new
            .binary_search arr, 0, array_length - 1, value
        
        expect(binary_search).to eql -1
    end
end